<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_ecommerce extends CI_Model {
	public function select_all_ecom() {
		$sql = "SELECT * FROM tbl_ecom";

		$data = $this->db->query($sql);

		return $data->result();
	}

	public function select_all() {
		$sql = " SELECT
tbl_ecom.ORDER_SN,tbl_ecom.PRODUCT_ID,
tbl_ecom.SKU_FOR_PRODUCT_ID,tbl_ecom.MODEL_ID,
tbl_ecom.NO_INDUK_FOR_MODEL_ID,tbl_ecom.ITEM_NAME,
tbl_ecom.MODEL_NAME,
tbl_ecom.QTY,
tbl_ecom.ORDER_VALUE,
tbl_ecom.SHIPPING_OPTION,
tbl_ecom.SHIPPING_PAID_BY_BUYER,
tbl_ecom.BUYER_USER_ID,
tbl_ecom.BUYER_USER_NAME,
tbl_ecom.BUYER_REAL_NAME,
tbl_ecom.TEL_BUYER,
tbl_ecom.BUYER_ADDRES,
tbl_ecom.BUYER_NOTE,
tbl_ecom.PURCHASED_DATE,
tbl_ecom.SPESIFIC_PURCHASE_TIME,
tbl_ecom.PAY_DATE,
tbl_ecom.SPECIFIC_PAY_TIME,
tbl_ecom.ORDER_STATUS,
tbl_ecom.SHIPPING_PAID_BY_SHOPEE
FROM
tbl_ecom
";

              
		$data = $this->db->query($sql);

		return $data->result();
	}

	public function select_by_id($id) {
		$sql = "SELECT pegawai.id AS id_pegawai, pegawai.nama AS nama_pegawai, pegawai.id_kota, pegawai.id_kelamin, pegawai.id_posisi, pegawai.telp AS telp, kota.nama AS kota, kelamin.nama AS kelamin, posisi.nama AS posisi FROM pegawai, kota, kelamin, posisi WHERE pegawai.id_kota = kota.id AND pegawai.id_kelamin = kelamin.id AND pegawai.id_posisi = posisi.id AND pegawai.id = '{$id}'";

		$data = $this->db->query($sql);

		return $data->row();
	}

	public function select_by_posisi($id) {
		$sql = "SELECT COUNT(*) AS jml FROM pegawai WHERE id_posisi = {$id}";

		$data = $this->db->query($sql);

		return $data->row();
	}

	public function select_by_kota($id) {
		$sql = "SELECT COUNT(*) AS jml FROM pegawai WHERE id_kota = {$id}";

		$data = $this->db->query($sql);

		return $data->row();
	}

	public function update($data) {
		$sql = "UPDATE pegawai SET nama='" .$data['nama'] ."', telp='" .$data['telp'] ."', id_kota=" .$data['kota'] .", id_kelamin=" .$data['jk'] .", id_posisi=" .$data['posisi'] ." WHERE id='" .$data['id'] ."'";

		$this->db->query($sql);

		return $this->db->affected_rows();
	}

	public function delete($id) {
		$sql = "DELETE FROM pegawai WHERE id='" .$id ."'";

		$this->db->query($sql);

		return $this->db->affected_rows();
	}

	public function insert($data) {
		$id = md5(DATE('ymdhms').rand());
		$sql = "INSERT INTO pegawai VALUES('{$id}','" .$data['nama'] ."','" .$data['telp'] ."'," .$data['kota'] ."," .$data['jk'] ."," .$data['posisi'] .",1)";

		$this->db->query($sql);

		return $this->db->affected_rows();
	}

	public function insert_batch($data) {
		$this->db->insert_batch('pegawai', $data);
		
		return $this->db->affected_rows();
	}

	public function check_nama($nama) {
		$this->db->where('nama', $nama);
		$data = $this->db->get('pegawai');

		return $data->num_rows();
	}

	public function total_rows() {
		$data = $this->db->get('pegawai');

		return $data->num_rows();
	}
}

/* End of file M_pegawai.php */
/* Location: ./application/models/M_pegawai.php */