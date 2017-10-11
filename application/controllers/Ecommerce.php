<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Ecommerce extends AUTH_Controller {
	public function __construct() {
		parent::__construct();
		$this->load->model('M_ecommerce');
		$this->load->model('M_posisi');
		$this->load->model('M_kota');
	}

	public function index() {
             
         
		$data['userdata'] = $this->userdata;
             
		$data['dataEcom'] = $this->M_ecommerce->select_all();
                
               // var_dump($data['dataEcom'] )or die();
                //              echo "<pre>";
//                print_r($data);
//                die();
               
		$data['dataPosisi'] = $this->M_posisi->select_all();
		$data['dataKota'] = $this->M_kota->select_all();

		$data['page'] = "Ecom";
		$data['judul'] = "Data Ecom";
		$data['deskripsi'] = "Manage Ecom";

		$data['modal_tambah_pegawai'] = show_my_modal('modals/modal_tambah_pegawai', 'tambah-pegawai', $data);

		$this->template->views('ecommerce/home', $data);
	}

	public function tampil() {
           
		$data['dataEcom'] = $this->M_ecommerce->select_all_ecom();
                $this->load->view('ecommerce/list_data', $data);
	}

	public function prosesTambah() {
		
	}

	public function update() {
		
	}

	public function prosesUpdate() {
		
	}

	public function delete() {
            $id = $_POST['ORDER_SN'];
		$result = $this->M_ecommerce->delete($id);
           

		if ($result > 0) {
			echo show_succ_msg('Data Pegawai Berhasil dihapus', '20px');
		} else {
			echo show_err_msg('Data Pegawai Gagal dihapus', '20px');
		}
		
	}

	public function export() {
		error_reporting(E_ALL);
    
		include_once './assets/phpexcel/Classes/PHPExcel.php';
		$objPHPExcel = new PHPExcel();

		$data = $this->M_ecommerce->select_all_pegawai();

		$objPHPExcel = new PHPExcel(); 
		$objPHPExcel->setActiveSheetIndex(0); 
		$rowCount = 1; 
                /*
                tbl_ecom.ORDER_SN,
                tbl_ecom.PRODUCT_ID,
                tbl_ecom.SKU_FOR_PRODUCT_ID,
                tbl_ecom.MODEL_ID,
                tbl_ecom.NO_INDUK_FOR_MODEL_ID,
                tbl_ecom.ITEM_NAME,
                tbl_ecom.MODEL_NAME,
                tbl_ecom.QTY,
                  */
		$objPHPExcel->getActiveSheet()->SetCellValue('A'.$rowCount, "ORDER_SN");
		$objPHPExcel->getActiveSheet()->SetCellValue('B'.$rowCount, "PRODUCT_ID");
		$objPHPExcel->getActiveSheet()->SetCellValue('C'.$rowCount, "SKU_FOR_PRODUCT_ID");
		$objPHPExcel->getActiveSheet()->SetCellValue('D'.$rowCount, "MODEL_ID");
		$objPHPExcel->getActiveSheet()->SetCellValue('E'.$rowCount, "NO_INDUK_FOR_MODEL_ID");
		$objPHPExcel->getActiveSheet()->SetCellValue('F'.$rowCount, "ITEM_NAME");
		$objPHPExcel->getActiveSheet()->SetCellValue('G'.$rowCount, "MODEL_NAME");
		$rowCount++;

		foreach($data as $value){
		    $objPHPExcel->getActiveSheet()->SetCellValue('A'.$rowCount, $value->ORDER_SN); 
		    $objPHPExcel->getActiveSheet()->SetCellValue('B'.$rowCount, $value->PRODUCT_ID); 
		    $objPHPExcel->getActiveSheet()->setCellValueExplicit('C'.$rowCount, $value->ITEM_NAME, PHPExcel_Cell_DataType::TYPE_STRING);
		    $objPHPExcel->getActiveSheet()->SetCellValue('D'.$rowCount, $value->ITEM_NAME); 
		    $objPHPExcel->getActiveSheet()->SetCellValue('E'.$rowCount, $value->ITEM_NAME); 
		    $objPHPExcel->getActiveSheet()->SetCellValue('F'.$rowCount, $value->ITEM_NAME); 
		    $objPHPExcel->getActiveSheet()->SetCellValue('G'.$rowCount, $value->ITEM_NAME); 
		    $rowCount++; 
		} 

		$objWriter = new PHPExcel_Writer_Excel2007($objPHPExcel); 
		$objWriter->save('./assets/excel/Data ecom.xlsx'); 

		$this->load->helper('download');
		force_download('./assets/excel/Data ecom.xlsx', NULL);
	}

	public function import() {
		$this->form_validation->set_rules('excel', 'File', 'trim|required');

		if ($_FILES['excel']['name'] == '') {
			$this->session->set_flashdata('msg', 'File harus diisi');
		} else {
			$config['upload_path'] = './assets/excel/';
			$config['allowed_types'] = 'xls|xlsx';
			
			$this->load->library('upload', $config);
			
			if ( ! $this->upload->do_upload('excel')){
				$error = array('error' => $this->upload->display_errors());
			}
			else{
				$data = $this->upload->data();
				
				error_reporting(E_ALL);
				date_default_timezone_set('Asia/Jakarta');

				include './assets/phpexcel/Classes/PHPExcel/IOFactory.php';

				$inputFileName = './assets/excel/' .$data['file_name'];
				$objPHPExcel = PHPExcel_IOFactory::load($inputFileName);
				$sheetData = $objPHPExcel->getActiveSheet()->toArray(null,true,true,true);

				$index = 0;
				foreach ($sheetData as $key => $value) {
					if ($key != 1) {
						$id = md5(DATE('ymdhms').rand());
						$check = $this->M_pegawai->check_nama($value['B']);

						if ($check != 1) {
							$resultData[$index]['id'] = $id;
							$resultData[$index]['nama'] = ucwords($value['B']);
							$resultData[$index]['telp'] = $value['C'];
							$resultData[$index]['id_kota'] = $value['D'];
							$resultData[$index]['id_kelamin'] = $value['E'];
							$resultData[$index]['id_posisi'] = $value['F'];
							$resultData[$index]['status'] = $value['G'];
						}
					}
					$index++;
				}

				unlink('./assets/excel/' .$data['file_name']);

				if (count($resultData) != 0) {
					$result = $this->M_pegawai->insert_batch($resultData);
					if ($result > 0) {
						$this->session->set_flashdata('msg', show_succ_msg('Data Pegawai Berhasil diimport ke database'));
						redirect('Pegawai');
					}
				} else {
					$this->session->set_flashdata('msg', show_msg('Data Pegawai Gagal diimport ke database (Data Sudah terupdate)', 'warning', 'fa-warning'));
					redirect('Pegawai');
				}

			}
		}
	}
}

/* End of file Pegawai.php */
/* Location: ./application/controllers/Pegawai.php */