<?php

require APPPATH. 'libraries/Rest_Controller.php';
class Tarea extends REST_Controller{
    public function __construct(){
        parent::__construct("rest");
        header('Access-Control-Allow-Origin: *');
        header("Access-Control-Allow-Headers: X-API-KEY, Origin, X-Requested-With, Content-Type, Accept, Access-Control-Request-Method");
        header("Access-Control-Allow-Methods: GET, POST, OPTIONS, PUT, DELETE");
        header("Allow: GET, POST, OPTIONS, PUT, DELETE");
    }

    public function index_options(){
        return $this->response(NULL,REST_Controller::HTTP_OK);
    }


    //METODO GET
    public function index_get($id=null){
        if(!empty($id)){
            $data=$this->db->get_where("tarea",['id'=>$id])->row_array();
            if($data==null){
                $this->response(["El registro con ID $id no existe"],REST_Controller::HTTP_NOT_FOUND);
            }
        }else{
            $data=$this->db->get("tarea")->result();
        }
        $this->response($data,REST_Controller::HTTP_OK);
    }

    //METODO POST
    public function index_post(){
        $data=[
            'nombre'=>$this->post('nombre'),
            'descripcion'=>$this->post('descripcion'),
            'duracion'=>$this->post('duracion'),
            'estado'=>$this->post('estado')
        ];

        $this->db->insert('tarea',$data);
        $this->db->select_max('id');
        $this->db->from('tarea');
        $query=$this->db->get()->row_array();
        $query=$this->db->get_where("tarea",['id'=>$query['id']])->result();
        $this->response($query,REST_Controller::HTTP_CREATED);
    }

    //METODO PUT

    public function index_put($id){
        $data=$this->put();
        $this->db->update('tarea',$data,array('id'=>$id));
        $this->response("Registro Actualizado",REST_Controller::HTTP_OK);
    }

    //METODO DELETE
    public function index_delete($id){
        $this->db->delete('tarea',array('id'=>$id));
        $this->response("Registro Eliminado",REST_Controller::HTTP_OK);
    }
}

?>