<?php
defined('BASEPATH') OR exit("No dirrect script allowed!");

class Home extends CI_Controller{
	function __construct(){
		parent::__construct();
		$this->load->model('Home_model');
	}
	function index(){
		$data['profil']		= $this->Home_model->getProfil();
		$data['berita'] 	= $this->Home_model->getNewBerita();
        $data['pengumuman'] = $this->Home_model->getPengumuman();
        $data['baner']  	= $this->Home_model->getBaner();
        $data['galeri'] 	= $this->Home_model->getNewGaleri();
		$this->load->view('front/layout/head');
		$this->load->view('front/layout/header');
		$this->load->view('front/home/body',$data);
		$this->load->view('front/layout/footer',$data);
	}

	function login_siswa(){
		$this->load->view('siswa/login');
	}

	function login_admin(){
		$this->load->view('admin/login');
	}

	function login_guru(){
		$this->load->view('guru/login');
	}

}
