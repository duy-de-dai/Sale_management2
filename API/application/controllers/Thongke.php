<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Thongke extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model('Thongke_model');
	}

	public function addDienthoai()
	{

		$name = $this->input->post('name');
		$image = $this->input->post('image');
		$gia_nhap = $this->input->post('gia_nhap');
		$gia_ban = $this->input->post('gia_ban');
		$da_ban = $this->input->post('da_ban');
		$ton_kho = $this->input->post('ton_kho');

		$dulieu = array(
			'name' => $name,
			'image' => $image,
			'gia_nhap' => $gia_nhap,
			'gia_ban' => $gia_ban,
			'da_ban' => $da_ban,
			'ton_kho' => $ton_kho
		);
		
		if ($this->Thongke_model->insert($dulieu))
			echo 1;
		else
			echo 0;

	}
	public function APIgetData()
	{
		$dl = $this->Thongke_model->get();
		$mangmoi = array();
		foreach ($dl as $motphantu) {
			$motphantu['createdate'] = date('d/m/Y', $motphantu['createdate']);

			$motphantu['loi_nhuan'] = $motphantu['da_ban'] * ($motphantu['gia_ban'] - $motphantu['gia_nhap']);
			array_push($mangmoi, $motphantu);
		}
		echo json_encode($mangmoi);
	}


}

/* End of file Thongke.php */
/* Location: ./application/controllers/Thongke.php */