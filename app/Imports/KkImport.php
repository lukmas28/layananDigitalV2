<?php

namespace App\Imports;

use App\Models\MobileMasterKksModel;
use App\Models\MobileMasterMasyarakatModel;
use Illuminate\Support\Collection;
use Maatwebsite\Excel\Concerns\ToCollection;

class KkImport implements ToCollection
{
    protected $lastIdKk;

    public function __construct()
    {
        $this->lastIdKk = MobileMasterKksModel::max('id_kk') ?? 0;
    }

    /**
     * @param Collection $collection
     */
    public function collection(Collection $collection)
    {
        $indexKe = 1;

        foreach ($collection as $row) {
            $status = !empty($row[6]) ? $row[6] : null;

            if ($indexKe > 1 && $status === 'KK') {

                $this->lastIdKk++;
                $dataKks = [
                    'id_kk'      => $this->lastIdKk,
                    'no_kk'      => !empty($row[2]) ? $row[2] : null,
                    'alamat'     => !empty($row[4]) ? $row[4] : null,
                    'rt'         => '2',
                    'rw'         => '3',
                    'kode_pos'   => '67316',
                    'kelurahan'  => 'Tompokersan',
                    'provinsi'   => 'Jawa Timur',
                    'kabupaten'  => 'Lumajang',
                    'kecamatan'  => 'Lumajang',
                    'kk_tgl'     => now(),
                ];

                try {
                    MobileMasterKksModel::create($dataKks);

                    $nik = !empty($row[1]) ? $row[1] : null;
                    $namaLengkap = !empty($row[3]) ? $row[3] : null;

                    MobileMasterMasyarakatModel::create([
                        'id_kk' => $this->lastIdKk,
                        'nik' => $nik,
                        'nama_lengkap' => $namaLengkap,
                        'status_keluarga' => 'Kepala Keluarga',
                        'created_at' => now(),
                        'updated_at' => now(),
                    ]);
                } catch (\Exception $e) {
                    dd($e->getMessage());
                }
            }

            $indexKe++;
        }
    }
}
