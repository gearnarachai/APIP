<?php
class ExecSQL{
    private $conn;
    public function __construct($str_conn){
        $this->conn =$str_conn;
     }

     public function readAttend($condition){
        $sql =" SELECT  attend_activity.regis_code,created_date,created_time,activities.name  , CONCAT (initial.initial_name,' ',registration.name,' ',registration.lastname) as nameRe , registration.position,registration.org_name
        FROM attend_activity
        LEFT JOIN  activities
        ON activities.activity_code = attend_activity.activity_code
        LEFT JOIN registration
        ON registration.regis_code = attend_activity.regis_code
        LEFT JOIN initial
        ON initial.initial_id = registration.initial_id ";  
       if($condition != null)
       {
           $sql .= $condition;
       } 
       return $this->read($sql);
    }

     public function read($sql){
        $stmt = $this->conn->prepare($sql);
        $stmt->execute();
        return $stmt;
     }

     public function insert($tablename,$field,$value){
        $stmt = $this->conn->prepare(" INSERT INTO $tablename ($field) VALUES ($value) ");
        return $this->checkExe($stmt);
      
     }

     private function checkExe($stmt){
        if($stmt->execute())
        {
            return true;
        }else{
            return false;
        }
     }
}
?>
