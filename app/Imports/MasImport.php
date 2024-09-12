<?php

namespace App\Imports;

use Carbon\Carbon;
use App\Models\MobileMasterKksModel;
use App\Models\MobileMasterMasyarakatModel;
use Illuminate\Support\Collection;
use Maatwebsite\Excel\Concerns\ToCollection;

class MasImport implements ToCollection
{
    protected $lastIdMasyarakat;

    public function __construct()
    {
        // Mengambil ID masyarakat terakhir untuk referensi
        $this->lastIdMasyarakat = MobileMasterMasyarakatModel::max('id_masyarakat') ?? 0;
    }

    /**
     * @param Collection $collection
     */
    public function collection(Collection $collection)
    {
        $indexKe = 1;
        $currentIdKk = null;
    
        foreach ($collection as $row) {
            $status = !empty($row[6]) ? $row[6] : null;
    
            if ($indexKe > 1) {
                if ($status === 'KK') {
                    $noKk = !empty($row[2]) ? $row[2] : null;
    
                    $existingKk = MobileMasterKksModel::where('no_kk', $noKk)->first();
    
                    if ($existingKk) {
                        $currentIdKk = $existingKk->id_kk;
                    } else {
                        $currentIdKk = null; 
                    }
                } elseif ($status === 'ANGGOTA' && $currentIdKk !== null) {
                    try {
                        // dd($row);
                        $tanggalLahirExcel = !empty($row[8]) ? $row[8] : null;
                        $tanggalLahir = $tanggalLahirExcel ? $this->convertExcelDateToDate($tanggalLahirExcel) : null;
    
                        MobileMasterMasyarakatModel::create([
                            'id_kk'            => $currentIdKk,
                            'nik'              => !empty($row[1]) ? $row[1] : null,
                            'nama_lengkap'     => !empty($row[3]) ? $row[3] : null,
                            'jenis_kelamin'    => !empty($row[5]) ? $row[5] : null,
                            'tempat_lahir'     => !empty($row[7]) ? $row[7] : null,
                            'tgl_lahir'        => $tanggalLahir, 
                            'agama'            => null,
                            'pendidikan'       => null,
                            'pekerjaan'        => null, 
                            'golongan_darah'   => null, 
                            'status_perkawinan'=> null, 
                            'tgl_perkawinan'   => null, 
                            'status_keluarga'  => 'Anggota', 
                            'kewarganegaraan'  => null, 
                            'no_paspor'        => null, 
                            'no_kitap'         => null, 
                            'nama_ayah'        => null, 
                            'nama_ibu'         => null, 
                            'created_at'       => now(),
                            'updated_at'       => now(),
                        ]);
    
                    } catch (\Exception $e) {
                        dd($e->getMessage()); 
                    }
                }
            }
    
            $indexKe++;
        }
    }

    private function convertExcelDateToDate($excelDate)
    {
        // Tanggal epoch Excel
        $excelEpoch = Carbon::create(1899, 12, 30);

        // Excel menghitung tanggal mulai dari 1, bukan 0
        $date = $excelEpoch->addDays($excelDate - 1);

        return $date->format('Y-m-d');
    }
}