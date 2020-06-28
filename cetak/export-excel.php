<?php
	//Gunakan Koneksi
	include("../koneksi.php");

	$bobot = array(0.2, 0.1, 0.45, 0.25);

	//Cari Max atau min dari tiap kolom Matrik
	$crMax = mysqli_query($koneksi, "SELECT 
		max(kriteria1_absensi) as maxK1, 
		max(kriteria2_extrakulikuler) as maxK2,
		max(kriteria3_mapel) as maxK3,
		max(kriteria4_perilaku) as maxK4
		FROM tbl_matrik");
	$max = mysqli_fetch_array($crMax);
	//Buat fungsi tampilkan nama
	function getNama($id){
		include("../koneksi.php");
		$q =mysqli_query($koneksi, "SELECT * FROm tbl_santri where nik='$id' AND status='0'");
		$d = mysqli_fetch_array($q);
		return $d['nama'];
	}

	function getKelas($id){
		include("../koneksi.php");
		$k =mysqli_query($koneksi, "SELECT * FROm tbl_santri where nik='$id' AND status='0'");
		$kls = mysqli_fetch_array($k);
		return $kls['kelas'];
	}

	function getTh_ajaran($id){
		include("../koneksi.php");
		$l =mysqli_query($koneksi, "SELECT * FROm tbl_santri where nik='$id' AND status='0'");
		$th = mysqli_fetch_array($l);
		return $th['th_ajaran'];
	}


?>

<html>
<head>
	<title>EXPORT EXCEL</title>
	<style type="text/css">
		body{
			font-family: sans-serif;
			font-size: 14px;
		}
		table{
			margin: 20px auto;
			border-collapse: collapse;
		}

		table th, table td{
			border: 1px solid #3c3c3c;
			padding: 3px 8px;
	 
		}
	</style>

</head>
<body>
	<div id="content" align="center">
		<div class="body">
			<div class="header">
				<div class="tengah">
				<br>

				<?php
					header("Content-type: application/vnd-ms-excel");
					header("Content-Disposition: attachment; filename=Data Santri.xls");
				?>

				<h4> HASIL PERANGKINGAN PRESTASI SANTRI</h4>
				<table class='display' cellspacing='0' width='100%'>
					<thead>
						<tr align='center'>
							<td>No</td>
							<td>Nama</td>
							<td>Kelas</td>
							<td>Th. Ajaran</td>
							<td>Absensi Kelas</td>
							<td>Nilai Extra Kulikuler</td>
							<td>Nilai MaPel</td>
							<td>Perilaku</td>
							<td>Total</td>
						</tr>
					</thead>

				<?php
				$no = 1;
				//Proses perangkingan dengan rumus langkah 3
				$sql3 = mysqli_query($koneksi, "SELECT * FROM tbl_matrik WHERE status='0'");	

				//Kita gunakan rumus (Normalisasi x bobot)
				while($dt3 = mysqli_fetch_array($sql3)){
					$nilai1 = ($dt3['kriteria1_absensi']/$max['maxK1'])*$bobot[0];
					$nilai2 = ($dt3['kriteria2_extrakulikuler']/$max['maxK2'])*$bobot[1];
					$nilai3 = ($dt3['kriteria3_mapel']/$max['maxK3'])*$bobot[2];
					$nilai4 = ($dt3['kriteria4_perilaku']/$max['maxK4'])*$bobot[3];

					$rangking = round(($nilai1 + $nilai2 + $nilai3 + $nilai4), 3); ?>
		
					<tr>
						<td align='center'><?= $no++; ?></td>
						<td><?= getNama($dt3['nik']); ?></td>
						<td align='center'><?= getKelas($dt3['nik']); ?></td>
						<td align='center'><?= getTh_ajaran($dt3['nik']); ?></td>
						<td align='center'><?= $nilai1; ?></td>
						<td align='center'><?= $nilai2; ?></td>
						<td align='center'><?= $nilai3; ?></td>
						<td align='center'><?= $nilai4; ?></td>
						<td align='center'><?= $rangking; ?></td>
					</tr>
			
				<?php				
				}	
			?>

			</table>
		</div>
	</div>
</div>

<script>
    $(document).ready(function() {
	   $('#example').DataTable();
	} );
</script>
</body>
</html>