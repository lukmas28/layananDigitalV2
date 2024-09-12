<?php

namespace App\Http\Controllers;

use App\Models\MobileMasterKksModel;
use App\Models\MobileMasterMasyarakatModel;
use App\Models\PengajuanModel;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\DB;
use FPDF;
use Illuminate\Http\Request;

class PdfController extends Controller
{
    public function generatePDF(Request $request, $id)
    {
        $pdf = new FPDF();
        $pdf->AddPage();

        $pengajuan = new PengajuanModel();
        $data = $pengajuan->pengajuan()->where('pengajuan_surats.id_pengajuan', '=', $id)->get();

        foreach ($data as $user) {
            $nomorSurat = $user->nomor_surat;
            $kodeKecamatan = $user->kode_kecamatan;
            $nomossurattambahan = $user->nomor_surat_tambahan;
            $tahunSekarang = date('Y');
            $nomorKelurahan = $nomorSurat .'/'. $nomossurattambahan .'/' . $kodeKecamatan . '/' . $tahunSekarang; // Menambahkan spasi di antara nomor dan kode
            $surat = $user->nama_surat;
            if ($surat == 'KENAL LAHIR') {
                $data = MobileMasterMasyarakatModel::where('id_masyarakat', '=', $user->id_masyarakat)
                    ->select('id')
                    ->get();
                foreach ($data as $id) {
                    $keluarga = MobileMasterKksModel::join('master_masyarakats', 'master_masyarakats.id', 'master_kks.id')
                        ->where('status_keluarga', 'Kepala Keluarga')
                        ->where('master_kks.id', $id->id)->get();

                    $pdf->Image('image/logohp.png', 18, 27, 43, 0, 'PNG');
                    // $pdf->SetFont('Arial','B',12);
                    $pdf->SetFont('Times', '', 12);
                    $pdf->SetXY(30, 24);

                    // Add a multi-line cell with a left indentation of 20mm
                    foreach ($keluarga as $value) {

                        $pdf->MultiCell(
                            0,
                            6,
                            '
    P E M E R I N T A H   K A B U P A T E N  L U M A J A N G
    KECAMATAN LUMAJANG
    KELURAHAN KEPUHARJO
    Jl. Langsep No. 18 Telp. (0334) 888243
    L U M A J A N G

                            ',
                            0,
                            'C',
                            false,
                            20
                        );

                        $pdf->SetFont('Times', 'B', 14);
                        $pdf->SetXY(20, 66);

                        // Add a multi-line cell with a left indentation of 20mm
                        $pdf->MultiCell(
                            0,
                            6,
                            "SURAT KETERANGAN $user->nama_surat
                            ",
                            0,
                            'C',
                            false,
                            20
                        );

                        $pdf->SetFont('Times', '', 12);
                        $pdf->SetXY(20, 72);

                        // Add a multi-line cell with a left indentation of 20mm
                        $pdf->MultiCell(
                            0,
                            6,
                            "NOMOR $user->nomor_surat
                            ",
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
                            '             Yang bertanda tangan di bawah ini kami Lurah Kelurahan kepuharjo Kecamatan Lumajang  Kabupaten Lumajang menerangkan bahwa : ',
                            0,
                            'L',
                            false,
                            20
                        );
                        $pdf->SetXY(42, 102);
                        $pdf->MultiCell(
                            0,
                            6,
                            "
    Nama                            : $user->nama_lengkap
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
                        $pdf->Image('image/stempel.png', 120, 226, 33, 0, 'PNG');
                        $pdf->Image('image/ttd.png', 110, 230, 40, 0, 'PNG');
                        $pdf->SetXY(20, 154);
                        $pdf->MultiCell(
                            0,
                            6,
                            "
                            Kelurahan Kepuharjo Kecamatan Lumajang Adalah benar - benar anak dari :

                        A Y A H                                                                                         I B U
    N a m a : $value->nama_lengkap                                             N a m a : (NAMA_IBU)
    U m u r :                                        U m u r : (UMUR1)
    Bangsa/Agama :                       Bangsa/Agama : (KEBANGSAANAGAMA)
    Pekerjaan :                                Pekerjaan : (PEKERJAAN2)
    Alamat  :                       Alamat :


                                                                                        Lumajang, $user->created_at
                                                                                        LURAH KEPUHARJO




                                                                                        MUHAMMAD SAIFUL,S.AP
                                                                                        NIP. 19720202 199803 1 010
                                                ",
                            0,
                            'L',
                            false,
                            20
                        );
                        $pdf->Output($user->nama_lengkap . '_' . $user->nik . '_' . $user->nama_surat . '.pdf', 'D');
                        exit;
                    }
                }
            } elseif ($surat == 'Surat belum jadi') {
                $pdf->Image('image/logohp.png', 18, 27, 43, 0, 'PNG');
                $pdf->SetFont('Arial', 'B', 12);
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
                $posisiTengahX = (310 - $panjangTeks) / 2; // 210 adalah lebar halaman standar A4, sesuaikan jika menggunakan ukuran halaman yang berbeda
                $posisiAwalX = $posisiTengahX - ($panjangTeks / 2); // Posisi awal garis
                $posisiAkhirX = $posisiTengahX + ($panjangTeks / 2); // Posisi akhir garis

                // Gambar garis horizontal dimulai dari posisi awal X hingga posisi akhir X
                $garisY = $pdf->GetY() + 2; // Atur posisi Y untuk garis horizontal
                $pdf->Line($posisiAwalX, $garisY, $posisiAkhirX, $garisY); // Gambar garis horizontal

                // MultiCell untuk menampilkan nomor surat di bawah garis horizontal
                $pdf->SetFont('Times', '', 12); // Atur font untuk nomor surat
                $pdf->SetXY(20, $garisY + 3); // Atur posisi X dan Y untuk nomor surat
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
                    '             Yang bertanda tangan di bawah ini kami Lurah Kelurahan kepuharjo Kecamatan Lumajang  Kabupaten Lumajang menerangkan bahwa :

                        ----------------------------- (NAMA_ALMARHUM) -------------------------

                        Adalah benar bahwa pada saat hidupnya pernah tercatat sebagai penduduk kami, dan berdasarkan pengakuan (SAKSI_KEMATIAN) (HUBUNGAN) bahwa almarhum telah meninggal dunia pada : ',
                    0,
                    'L',
                    false,
                    20
                );

                $pdf->SetXY(42, 130);
                $pdf->MultiCell(
                    0,
                    6,
                    '            Hari 	                               :	(HARI)
            Tanggal / Bulan / Tahun	:	(TANGAL)
            Alamat terakhir 	             :	(ALAMAT)
                                                    Kelurahan Kepuharjo Kec. Lumajang.
            NIK	                                :  (NIK)
            Penyebab kematian 	       :	 (PENYEBAB_KEMATIAN)
            ',
                    0,
                    'L',
                    false,
                    20
                );
                $pdf->Image('image/tompokersan.png', 130, 215, 30, 30, 'PNG');
                $pdf->SetXY(20, 170);
                $pdf->MultiCell(
                    0,
                    6,
                    "            Surat Keterangan ini dipergunakan untuk (DIPERGUNAKAN_UNTUK).
            Demikian surat keterangan ini kami buat untuk dapat dipergunakan sebagaimana mestinya.



                                                                                                Lumajang, $user->created_at
                                                                                                LURAH KEPUHARJO




                                                                                                MUHAMMAD SAIFUL,S.AP
                                                                                                NIP. 19720202 199803 1 010

                    ",
                    0,
                    'L',
                    false,
                    20
                );
               
                $pdf->Output($user->nama_lengkap . '_' . $user->nik . '_' . '_' . $id . '.pdf', 'I');
                exit;
            } else {
                $pdf->Image('image/logohp.png', 18, 27, 43, 0, 'PNG');
                // $pdf->SetFont('Arial','B',12);
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
                $pdf->Output($user->nama_lengkap . '_' . $user->nik . '_' . $user->nama_surat . '.pdf', 'D');
                exit;
            }
        }
        // dd($data->pengajuan->nama_surat);
        foreach ($data as $user) {
            $pdf->Image('image/logohp.png', 18, 27, 43, 0, 'PNG');
            // $pdf->SetFont('Arial','B',12);
            $pdf->SetFont('Times', '', 12);
            $pdf->SetXY(30, 24);

            // Add a multi-line cell with a left indentation of 20mm
            $pdf->MultiCell(
                0,
                6,
                '
            P E M E R I N T A H   K A B U P A T E N  L U M A J A N G
            KECAMATAN LUMAJANG
            KELURAHAN KEPUHARJO
            Jl. Langsep No. 18 Telp. (0334) 888243
            L U M A J A N G

            ',
                0,
                'C',
                false,
                20
            );

            $pdf->SetFont('Times', 'B', 14);
            $pdf->SetXY(20, 66);

            // Add a multi-line cell with a left indentation of 20mm
            $pdf->MultiCell(
                0,
                6,
                "SURAT KETERANGAN $user->nama_surat
            ",
                0,
                'C',
                false,
                20
            );

            $pdf->SetFont('Times', '', 12);
            $pdf->SetXY(20, 72);

            // Add a multi-line cell with a left indentation of 20mm
            $pdf->MultiCell(
                0,
                6,
                'NOMOR :
            ',
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
                '             Yang bertanda tangan di bawah ini kami Lurah Kepuharjo Kecamatan Lumajang Kabupaten Lumajang menerangkan bahwa : ',
                0,
                'L',
                false,
                20
            );

            $pdf->SetXY(42, 102);
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
            $pdf->Image('image/stempel.png', 120, 216, 33, 0, 'PNG');
            $pdf->Image('image/ttd.png', 110, 220, 40, 0, 'PNG');
            $pdf->SetXY(20, 156);
            $pdf->MultiCell(
                0,
                6,
                "             Kelurahan Kepuharjo Kecamatan Lumajang

                        Adalah benar sampai dengan saat ini warga kami dan berdasarkan Surat pengantar Nomer. ((nomor Surat))   Tanggal, ((Tgl Surat)) dan pengakuannya. Bahwa nama yang tersebut diatas benar keluarga tidak mampu. Surat keterangan ini hanya dipergunakan untuk

                        Demikian surat keterangan ini kami buat untuk dapat dipergunakan sebagaimana mestinnya.


                                                                                                Lumajang, $user->created_at
                                                                                                LURAH KEPUHARJO




                                                                                                MUHAMMAD SAIFUL,S.AP
                                                                                                NIP. 19720202 199803 1 010

                    ",
                0,
                'L',
                false,
                20
            );
            $pdf->Output($user->nama_lengkap . '_' . $user->nik . '_' . $user->nama_surat . '.pdf', 'D');
            exit;
        }

        // $pdf->Output('I', 'example.pdf');
        // $pdf->Output();
        // $pdf->Output(public_path('example.pdf'), 'F');
    }
    public function showPengantarRT($id)
{
    $pdfPath = storage_path('app/public/pdfs/' . $id . '_pengantar_rt.pdf');
    if (!file_exists($pdfPath)) {
        abort(404, 'File tidak ditemukan.');
    }
    return response()->file($pdfPath);
}

public function showPengantarRW($id)
{
    $pdfPath = storage_path('app/public/pdfs/' . $id . '_pengantar_rw.pdf');
    if (!file_exists($pdfPath)) {
        abort(404, 'File tidak ditemukan.');
    }
    return response()->file($pdfPath);
}

    public function download($filename)
    {
        // Tentukan path ke folder penyimpanan PDF Anda
        $path = storage_path('app/public/' . $filename);

        // Cek apakah file ada
        if (!file_exists($path)) {
            return response()->json(['error' => 'File not found'], 404);
        }

        // Kembalikan file sebagai respons unduhan
        return response()->download($path);
    }
    
// public function download($filename)
// {
//     // Tentukan path ke folder penyimpanan PDF Anda
//     $path = storage_path('app/public/pdfs/' . $filename);

//     // Cek apakah file ada
//     if (!file_exists($path)) {
//         return response()->json(['error' => 'File not found'], 404);
//     }

//     // Kembalikan file sebagai respons unduhan
//     return response()->download($path);
// }
}

