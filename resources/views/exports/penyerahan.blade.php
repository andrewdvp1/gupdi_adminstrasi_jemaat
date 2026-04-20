<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Data Penyerahan Anak {{ $tahun }}</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            font-size: 11px;
            color: #333;
            margin: 20px;
        }
        h2 {
            text-align: center;
            font-size: 14px;
            margin-bottom: 16px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
        }
        th {
            background-color: #4a7c59;
            color: #fff;
            padding: 6px 8px;
            text-align: left;
            border: 1px solid #ccc;
        }
        td {
            padding: 5px 8px;
            border: 1px solid #ccc;
            vertical-align: top;
        }
        tr:nth-child(even) td {
            background-color: #f5f5f5;
        }
        .no-data {
            text-align: center;
            padding: 16px;
            color: #888;
        }
    </style>
</head>
<body>
    <h2>Data Penyerahan Anak {{ $tahun }}</h2>

    @if($data->isEmpty())
        <p class="no-data">Tidak ada data</p>
    @else
        <table>
            <thead>
                <tr>
                    <th>No. Penyerahan</th>
                    <th>Nama Anak</th>
                    <th>Tempat Lahir</th>
                    <th>Tanggal Lahir</th>
                    <th>Nama Ayah</th>
                    <th>Nama Ibu</th>
                    <th>Alamat</th>
                </tr>
            </thead>
            <tbody>
                @foreach($data as $row)
                    <tr>
                        <td>{{ $row->nomor_penyerahan }}</td>
                        <td>{{ $row->nama_anak }}</td>
                        <td>{{ $row->tempat_lahir }}</td>
                        <td>{{ $row->tanggal_lahir }}</td>
                        <td>{{ $row->nama_ayah }}</td>
                        <td>{{ $row->nama_ibu }}</td>
                        <td>{{ $row->alamat }}</td>
                    </tr>
                @endforeach
            </tbody>
        </table>
    @endif
</body>
</html>
