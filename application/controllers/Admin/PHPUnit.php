<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Sign_In extends CI_Controller
{

	public function index()
	{

		$data = array();
		$data['css'] = 'SignIn';

		$this->load->view('Admin/Template/Header_V', $data);
		$this->load->view('Admin/Contents/Sign_In_V');
		$this->load->view('Admin/Template/Footer_V');
    }
    
public function index(){
    $testing = $this->  Model->Sign_In();
    $expected_result = True;
    $label = "cek isi dari database admin";
    echo $this->unit->run($testing,$expected_result,$label);

    $testing = $this->redirectSign_In();
    $expected_result = "http://localhost/Project_B-Bioskop-master/admin";
    $label = "Redirect ke halaman Login";
    echo $this->unit->run($testing[0],$expected_result,$label);

    $data = array(
        'nama' => "ujangacid",
        'email' => "Ujangacid20@gmail.com",
        'password' => "ujang123",
        );

    $testing = $this->add($data);
    $expected_result = True;
    $label = "cek input user";
    echo $this->unit->run($testing,$expected_result,$label);
}
}