<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Dienthoai extends CI_Controller
{

	public function __construct()
	{
		parent::__construct();

	}

	public function addDienthoai()
	{
		$this->load->model('Dienthoai_model');

		$name = $this->input->post('name');
		$cost = $this->input->post('cost');
		$image = $this->input->post('image');
		$size = $this->input->post('size');
		$storage = $this->input->post('storage');
		$details = $this->input->post('details');

		$dulieu = array(
			'name' => $name,
			'cost' => $cost,
			'image' => $image,
			'size' => $size,
			'storage' => $storage,
			'details' => $details
		);
		//echo 1111;
		//console.log($dulieu);
		if ($this->Dienthoai_model->insert($dulieu))
			echo 1;
		else
			echo 0;

	}
	public function APIgetData()
	{
		$this->load->model('Dienthoai_model');
		$dl = $this->Dienthoai_model->get();
		$mangmoi = array();
		foreach ($dl as $motphantu) {
			$motphantu['createdate'] = date('d/m/Y', $motphantu['createdate']);
			array_push($mangmoi, $motphantu);
		}
		echo json_encode($mangmoi);
	}

	public function ApiLogin()
	{
		// nhan ve du lieu
		$username = $this->input->post('username');
		$password = $this->input->post('password');
		//$password = md5($password);
		//nguoi dung nhap vao


		$array = array(
			'emailnguoidung' => '',
			'level' => ''
		);

		$this->session->set_userdata($array);

		$this->db->select('*');
		$this->db->where('username', $username);
		$dulieu = $this->db->get('user')->result_array();
		$matkhautrongdulieu = $dulieu[0]['password']; // tim dc trong csdl


		// echo "<pre>";
		// var_dump($dulieu);
		// echo "</pre>";
		// die();

		if ($password == $matkhautrongdulieu) {
			if ($dulieu[0]['level'] == 1) {
				$this->session->set_userdata('emailnguoidung', $username);
				$this->session->set_userdata('level', 1);
				$dulieu = array(
					'trangthai' => 'dntc',
					'level' => 1
				);
			} else if ($dulieu[0]['level'] == 2) {
				$dulieu = array(
					'trangthai' => 'dntc',
					'level' => 2
				);
			}
			echo json_encode($dulieu);

		}
	}

	public function APIupdateData()
	{
		$this->load->model('Dienthoai_model');

		$id = $this->input->post('id');
		$name = $this->input->post('name');
		$cost = $this->input->post('cost');
		$image = $this->input->post('image');
		$size = $this->input->post('size');
		$storage = $this->input->post('storage');
		$details = $this->input->post('details');

		$mangdl = array(

			'name' => $name,
			'cost' => $cost,
			'image' => $image,
			'size' => $size,
			'storage' => $storage,
			'details' => $details

		);
		$dieukien = array('id' => $id);
		echo $this->Dienthoai_model->update($mangdl, $dieukien);

		// echo $id;
		// echo $username;
		// echo $level;
	}

	public function deleteData()
	{
		$this->load->model('Dienthoai_model');
		$id = $this->input->post('id');
		$result = $this->Dienthoai_model->delete(array('id' => $id));
		if ($result > 0) {
			echo "Record with ID $id was deleted.";
		} else {
			echo "Failed to delete record with ID $id.";
		}
	}

}

/* End of file Dienthoai.php */
/* Location: ./application/controllers/Dienthoai.php */