<div class="content-wrapper">
    <section class="content center">
      <div class="row">
          <div class="col-md-8" style="margin-left: 15%;">
            <div class="box box-success">
                <div class="box-header with-border">
                <h3 class="box-title">INPUT NILAI SEMESTER SISWA</h3>
                </div>
            <div class="form-horizontal">
            <div class="box-body">
            <form action="<?php echo base_url().'guru/proses_input' ?>" method="POST"> 
              <table class="table table-bordered">
                <tr><td>KELAS</td>
                    <td>
                      <select name="kelas" class="form-control" >
                      
                      <option>Pilih Kelas</option>
                      <?php foreach($kelas->result() as $row){ ?>
                      <option value="<?php echo $row->id_kelas ?>"><?php echo $row->nama_kelas ?></option>
                      <?php } ?>
                    </select>
                    </td>
                </tr>
                 <tr><td>NAMA SISWA</td>
                    <td>
                      <select name="siswa" class="form-control" >
                      
                      <option>Pilih Siswa</option>
                      <?php foreach($siswa->result() as $row){ ?>
                      <option value="<?php echo $row->id_siswa ?>"><?php echo $row->nama_siswa ?></option>
                      <?php } ?>
                    </select>
                    </td>
                </tr>
                <tr><td>PELAJARAN</td>
                    <td>
                    <select name="pelajaran" class="form-control">
                      <option>Pilih Mata Pelajaran</option>
                      <?php foreach($pelajaran->result() as $row) { ?>
                      <option value="<?php echo $row->id_pelajaran ?>"><?php echo $row->nama_pelajaran ?></option>
                      <?php } ?>
                    </select>    
                    </td>
                </tr>
                <tr><td>TAHUN AJARAN & SEMESTER</td>
                    <td>
                      <select name="tahun" class="form-control">
                      <?php foreach($tahun->result() as $row) { ?>
                        <option value="<?php echo $row->id ?>"><?php echo $row->tahun_ajaran ?></option>
                      <?php } ?>
                      </select>
                    </td>
                    <td>
                      <select name="semester" class="form-control">
                        <option>Semester</option>
                        <option value="Genap">Genap</option>
                        <option value="Ganjil">Ganjil</option>
                      </select>
                    </td>
                </tr>
                <tr><td>NILAI UAS</td>
                    <td>
                      <input name="nilai" type="text" placeholder="Nilai" class="form-control">
                    <td>
                      <select name="keterangan" class="form-control">
                        <option>KETERANGAN</option>
                        <option value="Baik Sekali">Baik Sekali</option>
                        <option value="Baik">Baik</option>
                        <option value="Cukup">Cukup</option>
                        <option value="Remidi">Remidi</option>
                      </select>
                    </td>
                </tr>

              </table>
              <button class="btn btn-primary pull-right" type="submit"><i class="fa fa-check"></i> Simpan</button>
            </form>

