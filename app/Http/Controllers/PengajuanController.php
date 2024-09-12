<?php

namespace App\Http\Controllers;

use App\Models\PengajuanModel;
use App\Models\UpdateStatusModel;
use App\Http\Requests\PengajuanRequest;
use FPDF;
use Illuminate\Support\Facades\Cache;

class PengajuanController extends Controller
{
    protected $pengajuan;
    protected $updateStatus;

    public function __construct(PengajuanModel $pengajuan, UpdateStatusModel $updateStatus)
    {
        $this->pengajuan = $pengajuan;
        $this->updateStatus = $updateStatus;
    }

     public function surat_masuk()
    {
        $data = $this->pengajuan->pengajuan()
            ->where('pengajuan_surats.status', '=', 'Disetujui RW')
            ->get();

        // Calculate new nomor_surat for the form
        $nomorSuratBaru = $this->getNextNomorSurat();

        return view('surat_masuk', compact('data', 'nomorSuratBaru'));
    }



    public function showSuratMasuk()
    {
        $data = PengajuanModel::all();
        $akses = session()->get('hak_akses');

        // Calculate new nomor_surat for the form
        $nomorSuratBaru = $this->getNextNomorSurat();

        return view('surat_masuk', compact('data', 'akses', 'nomorSuratBaru'));
    }

    private function getNextNomorSurat()
    {
        $lastSurat = PengajuanModel::orderBy('nomor_surat', 'desc')->first();
        if ($lastSurat) {
            $lastNumber = $lastSurat->nomor_surat;
            $parts = explode('.', $lastNumber);

            // Increment last part
            if (is_numeric(end($parts))) {
                $lastPart = (int)end($parts);
                $incrementedPart = $lastPart + 1;
                $parts[count($parts) - 1] = (string)$incrementedPart; // Remove str_pad
            } else {
                $parts[] = '1';
            }

            $nomorSuratBaru = implode('.', $parts);
        } else {
            $nomorSuratBaru = '407.1.1';
        }

        return $nomorSuratBaru;
    }

    private function incrementNomorSurat()
    {
        $lastSurat = PengajuanModel::orderBy('nomor_surat', 'desc')->first();
        if ($lastSurat) {
            $lastNumber = $lastSurat->nomor_surat;
            $parts = explode('.', $lastNumber);

            if (is_numeric(end($parts))) {
                $lastPart = (int)end($parts);
                $incrementedPart = $lastPart + 1;
                $parts[count($parts) - 1] = (string)$incrementedPart;
            } else {
                $parts[] = '1';
            }

            $nomorSuratBaru = implode('.', $parts);
            // Optionally update the database if needed
            return $nomorSuratBaru;
        }
        return '407.1.1';
    }

    public function update_status(PengajuanRequest $request, $id, $akses)
    {
        $status = 'Selesai';
        $validated = $request->validated();
        $pdf = new FPDF();
        $pdf->AddPage();
        $pengajuan = new PengajuanModel;
        $data = $pengajuan->pengajuan()
            ->where('pengajuan_surats.id_pengajuan', $id)->get();
        foreach ($data as $user) {
            $kodeKecamatan = $validated['kode_kecamatan'];
            $nomorSuratTambahan = $validated['nomor_surat_tambahan'];
            $tahunSekarang = date('Y');
            $nomorKelurahan = $request->nomor_surat . '/' . $nomorSuratTambahan . '/' . $kodeKecamatan . '/' . $tahunSekarang;
            $pdf->Image('image/logohp.png', 18, 27, 43, 0, 'PNG');
            $pdf->SetFont('Times', '', 12);
            $pdf->SetXY(30, 24);

            // Add a multi-line cell with a left indentation of 20mm
            $pdf->MultiCell(
                0,
                6,
                '
        P E M E R I N T A H   K A B U P A T E N  L U M A J A N G
        KECAMATAN LUMAJANG
        KELURAHAN TOMPOKERSAN
        Jl. Basuki Rahmat Telp. (0334) 881940 email:kel.tompokersan123@gmail.com
        LUMAJANG - 67311

            ',
                0,
                'C',
                false,
                20
            );

            $pdf->SetFont('Times', 'B', 14);
            $pdf->SetXY(20, 66);

            // Teks "SURAT KETERANGAN"
            $teksSurat = "SURAT KETERANGAN";
            $pdf->MultiCell(
                0,
                6,
                $teksSurat,
                0,
                'C',
                false,
                20
            );

            // Hitung panjang teks "SURAT KETERANGAN"
            $panjangTeks = $pdf->GetStringWidth($teksSurat);

            // Hitung posisi awal X dan posisi akhir X garis horizontal
            $posisiTengahX = (273 - $panjangTeks) / 2; // 210 adalah lebar halaman standar A4, sesuaikan jika menggunakan ukuran halaman yang berbeda
            $posisiAwalX = $posisiTengahX - ($panjangTeks / 2); // Posisi awal garis
            $posisiAkhirX = $posisiTengahX + ($panjangTeks / 2); // Posisi akhir garis

            // Gambar garis horizontal dimulai dari posisi awal X hingga posisi akhir X
            $garisY = $pdf->GetY() + 2; // Atur posisi Y untuk garis horizontal
            $pdf->Line($posisiAwalX, $garisY, $posisiAkhirX, $garisY); // Gambar garis horizontal

            // MultiCell untuk menampilkan nomor surat di bawah garis horizontal
            $pdf->SetFont('Times', '', 12); // Atur font untuk nomor surat
            $pdf->SetXY(20, $garisY + 1); // Atur posisi X dan Y untuk nomor surat
            $pdf->MultiCell(
                0,
                6,
                "Nomor Surat: $nomorKelurahan",
                0,
                'C',
                false,
                20
            );

            $pdf->SetFont('Times', '', 12);
            $pdf->SetXY(20, 84);
            $pdf->MultiCell(
                0,
                6,
                '             Bertandatangan di bawah ini untuk dan atas nama Lurah Tompokersan Kecamatan Lumajang Kabupaten Lumajang menerangkan dengan sebenarnya bahwa : ',
                0,
                'L',
                false,
                20
            );

            $pdf->SetXY(8, 102);
            $pdf->MultiCell(
                0,
                6,
                "            Nama                            : $user->nama_lengkap
            Tempat,Tgl Lahir         : $user->tempat_lahir ,$user->tgl_lahir
            Jenis Kelamin               : $user->jenis_kelamin
            Kebangsaan / Agama    : $user->kewarganegaraan , $user->agama
            Status 	                          : $user->status_perkawinan
            Pekerjaan 	                    : $user->pekerjaan
            NIK	                              : $user->nik
            Alamat 	                        : $user->alamat
            ",
                0,
                'L',
                false,
                20
            );
            $pdf->Image('image/tompokersan.png', 145, 222, 30, 30, 'PNG');
            $pdf->SetXY(21, 150);
            $pdf->MultiCell(
                0,
                6,
                "  

            Orang tersebut di atas benar-benar penduduk kelurahan Tompokersan Kecamatan Lumajang Kabupaten Lumajang dan domisili di alamat tersebut di atas serta sepengetahuan kami orang tersebut berkelakuan baik. Surat keterangan ini diberikan untuk memenuhi salah satu persyaratan pembuatan $user->nama_surat

                        Demikian surat keterangan ini kami buat untuk dapat dipergunakan sebagaimana mestinnya.

                          ",
                0,
                'L',
                false,
                20
            );
            $pdf->SetXY(35, 198);
            $pdf->MultiCell(
                0,
                6,
                "  

                                                                                                Lumajang, " . date('d-m-Y', strtotime($user->created_at)) . "
                                                                                                LURAH TOMPOKERSAN





                                                                                                JOKO SETIYO,S.Kom.MM.
                                                                                                NIP. 19830607 201101 1 010

                     ",
                0,
                'L',
                false,
                20
            );
            $pdf->Output(public_path('pdf/' . $user->nama_lengkap . '_' . $user->nik . '_' . $user->nama_surat . '_' . $id . '.pdf'), 'F');
            $updatestatus = new UpdateStatusModel();
            $data = $updatestatus->where('id_pengajuan', $id)
                ->update([
                    'nomor_surat' => $validated['nomor_surat'],
                    'kode_kecamatan' => $validated['kode_kecamatan'],
                    'nomor_surat_tambahan' => $validated['nomor_surat_tambahan'],
                    'status' => $status,
                    'info' => 'non_active',
                    'file_pdf' => $user->nama_lengkap . '_' . $user->nik . '_' . $user->nama_surat . '_' . $id . '.pdf'
                ]);

            $this->incrementNomorSurat();

            return redirect('/suratmasuk')->with('successedit', '');
        }
    }
    
     public function status_setuju(Request $request, $id_pengajuan)
{
    $noPengantar = $request->input('no_pengantar');

    // Ambil data pengajuan
    $pengajuan = PengajuanModel::find($id_pengajuan);

    if (!$pengajuan) {
        return response()->json(['success' => false, 'message' => 'Pengajuan tidak ditemukan']);
    }

    // Generate PDF
    $pdf = new FPDF();
    $pdf->AddPage();
    $pdf->SetFont('Arial', 'B', 16);
    $pdf->Cell(40, 10, 'Pengantar Surat');
    $pdf->Ln();
    $pdf->SetFont('Arial', '', 12);
    $pdf->Cell(0, 10, 'No Pengantar: ' . $noPengantar);
    $pdf->Ln();
    $pdf->Cell(0, 10, 'Detail Pengajuan:');
    $pdf->Ln();
    $pdf->Cell(0, 10, 'Nama: ' . $pengajuan->nama);
    // Tambahkan detail lainnya sesuai kebutuhan

    $filePath = 'pdfs/' . $id_pengajuan . '_rt.pdf';
    $pdf->Output(storage_path('app/public/' . $filePath), 'F');

    // Update kolom di database dengan path file PDF
    $pengajuan->pengantar_rt = $filePath;
    $pengajuan->save();

    return response()->json(['success' => true]);
}

public function showDetailSurat($id_pengajuan)
{
    // Mengambil data pengajuan yang sesuai dengan id_pengajuan
    $item = PengajuanModel::where('id_pengajuan', $id_pengajuan)->first();

    if (!$item) {
        return redirect()->back()->with('error', 'Data tidak ditemukan');
    }

    // Mengirimkan data ke view
    return view('detail_surat', compact('item'));
}

    public function surat_selesai()
    {
        if (session('hak_akses') == 'admin') {
            $pengajuan = new PengajuanModel();
            $data = $pengajuan->pengajuan()
                ->where('pengajuan_surats.status', '=', 'Selesai')
                ->get();
        }
        return view('surat_selesai', compact('data'));
    }
    
// YourController.php

}
