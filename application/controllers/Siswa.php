<?php
defined('BASEPATH') OR exit("No direct script allowed");

class Siswa extends CI_Controller{
//akses untuk ke halaman siswa
	function form_login(){
		$this->load->view('siswa/login');
	}

	function dashboard(){
		$this->load->view('siswa/v_dashboard');
		$this->load->view('siswa/v_home_dashboard');
	}

	function login(){
		$user = $this->input->post('username',true);
		$pass = $this->input->post('password',true);
		$cek  = $this->siswa_model->loginProses($user,$pass);
	}
	function logout(){
		$this->session->sess_destroy();
		redirect('home','refresh');
	}

	function nilai(){
		$kelas 				= $this->input->post('kelas');
		$pelajaran 			= $this->input->post('pelajaran');
		$tahun 				= $this->input->post('tahun');
		$semester 			= $this->input->post('semester');
		$data['kelas'] 		= $this->db->query('SELECT * FROM tbl_kelas ORDER BY nama_kelas DESC');
		$data['pelajaran'] 	= $this->db->query('SELECT * FROM tbl_pelajaran ORDER BY nama_pelajaran');
		$data['tahun'] 		= $this->db->get('tbl_tahun_ajaran');
		$data['nilai'] 		= $this->siswa_model->getNilai($kelas,$pelajaran,$tahun,$semester);
		$this->load->view('siswa/v_dashboard');
		$this->load->view('siswa/v_nilai',$data);
	}

	function biodata(){
		$this->load->view('siswa/v_dashboard');
		$this->load->view('siswa/v_biodata');
	}

	function materi_pelajaran(){
		$data['pelajaran'] 	= $this->db->query('SELECT * FROM tbl_pelajaran ORDER BY nama_pelajaran');
		$data['kelas'] 		= $this->db->query('SELECT * FROM tbl_kelas ORDER BY nama_kelas');
		$data['materi'] 	= $this->siswa_model->getListMateri();
		$this->load->view('siswa/v_dashboard');
		$this->load->view('siswa/v_materi',$data);
	}

//akses untuk semua pengunjung

	function buku_induk_siswa(){
		$data['profil']		= $this->home_model->getProfil();
		$data['mulai'] 		= intval($this->input->get('start'));
        $data['pengumuman'] = $this->home_model->getPengumuman();
        $data['baner']      = $this->home_model->getBaner();
        $data['galeri']     = $this->home_model->getNewGaleri();
        $data['kelas'] 		= $this->home_model->getKelas();
		$id 				= $this->input->post('kelas',true);
		$data['siswa'] 		= $this->home_model->getSiswa($id);
		$this->load->view('front/layout/head');
		$this->load->view('front/layout/header');
		$this->load->view('front/kesiswaan/body',$data);
		$this->load->view('front/layout/footer');
	}

	function kegiatan_siswa(){
		$data['profil']		= $this->home_model->getProfil();
        $data['pengumuman'] = $this->home_model->getPengumuman();
        $data['baner']      = $this->home_model->getBaner();
        $data['galeri']     = $this->home_model->getNewGaleri();
        $data['berita']		= $this->home_model->getKegiatan();
		$this->load->view('front/layout/head');
		$this->load->view('front/layout/header');
		$this->load->view('front/kesiswaan/kegiatan-siswa',$data);
		$this->load->view('front/layout/footer');
	}

	function ekstrakulikuler(){
		$data['profil']				= $this->home_model->getProfil();
		$data['ekstrakulikuler'] 	= $this->home_model->getEkstrakulikuler();
        $data['pengumuman'] 		= $this->home_model->getPengumuman();
        $data['baner']      		= $this->home_model->getBaner();
        $data['galeri']     		= $this->home_model->getNewGaleri();
        $this->load->view('front/layout/head');
		$this->load->view('front/layout/header');
		$this->load->view('front/kesiswaan/ekstrakulikuler',$data);
		$this->load->view('front/layout/footer');
	}

	function alumni(){
		$data['profil']				= $this->home_model->getProfil();
		$data['ekstrakulikuler'] 	= $this->home_model->getEkstrakulikuler();
        $data['pengumuman'] 		= $this->home_model->getPengumuman();
        $data['baner']      		= $this->home_model->getBaner();
        $data['galeri']     		= $this->home_model->getNewGaleri();
        $this->load->view('front/layout/head');
		$this->load->view('front/layout/header');
		$this->load->view('front/alumni/body',$data);
		$this->load->view('front/layout/footer');
	}
}