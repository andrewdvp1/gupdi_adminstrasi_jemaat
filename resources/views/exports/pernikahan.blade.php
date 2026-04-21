<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Data Pernikahan {{ $tahun }}</title>
    <style>
        @page {
            size: A4 landscape;
        }
        body {
            font-family: Arial, sans-serif;
            font-size: 11px;
            color: #333;
            margin: 20px;
        }
        .header {
            text-align: center;
            margin-bottom: 16px;
        }
        .header .church-name {
            font-size: 13px;
            font-weight: bold;
        }
        .header .doc-title {
            font-size: 14px;
            font-weight: bold;
            margin-top: 4px;
        }
        .header .doc-year {
            font-size: 11px;
            margin-top: 2px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            table-layout: fixed;
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
            word-wrap: break-word;
            overflow-wrap: break-word;
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
    <div class="header">
        <div class="church-name">{{ $pengaturan->nama_gereja ?? 'GUPDI' }}</div>
        <div class="doc-title">Data Pernikahan</div>
        <div class="doc-year">Tahun {{ $tahun }}</div>
    </div>

    @if($data->isEmpty())
        <p class="no-data">Tidak ada data</p>
    @else
        <table>
            <colgroup>
                <col style="width: 13%">
                <col style="width: 10%">
                <col style="width: 13%">
                <col style="width: 8%">
                <col style="width: 26%">
                <col style="width: 15%">
                <col style="width: 15%">
            </colgroup>
            <thead>
                <tr>
                    <th>No. Surat</th>
                    <th>Hari</th>
                    <th>Tanggal</th>
                    <th>Jam</th>
                    <th>Gereja</th>
                    <th>Nama Pria</th>
                    <th>Nama Wanita</th>
                </tr>
            </thead>
            <tbody>
                @foreach($data as $row)
                    <tr>
                        <td>{{ $row->nomor_surat }}</td>
                        <td>{{ $row->hari }}</td>
                        <td>{{ $row->tanggal }}</td>
                        <td>{{ $row->jam }}</td>
                        <td>{{ $row->gereja }}</td>
                        <td>{{ $row->nama_pria }}</td>
                        <td>{{ $row->nama_wanita }}</td>
                    </tr>
                @endforeach
            </tbody>
        </table>
    @endif
</body>
</html>
