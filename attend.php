<?PHP
 include("config/db.php");
 include("cmd/exec.php");
 
 $db = new Database();
 $strConn = $db->getConnection();
 $strExe = new ExecSQL($strConn);
 $action = $_GET['cmd'];

if ($action == "select"){
    if(isset($_GET['id'])){
        $id = $_GET['id'];
        $condition =" WHERE code = '$id' ";
    }else{
        $condition="";
    }

    $stmt = $strExe->readAttend($condition);
    $num_row = $strExe->rowCount("attend_activity");

    $data_arr['rs'] = array();
    
    $totalRow = array(
        'จำนวนคนเข้างาน'=>$num_row        
    );
    array_push($data_arr['rs'] ,$totalRow);

    foreach($stmt as $row){
        $item = array(
            'regisCode'=>$row['regis_code'],
            'createDate'=>$row['created_date'],
            'createTime'=>$row['created_time'],
            'NameAttend'=>$row['name'],
            'Name'=>$row['nameRe'],
            'Position'=>$row['position'],
            'OrgName'=>$row['org_name']

        );
        
        array_push($data_arr['rs'] ,$item);
    }
    echo json_encode($data_arr);
}

else if ($action == "insert"){

    $regisCode = $_GET['regiscode'];
    $activityCode = $_GET['activitycode'];

    date_default_timezone_set("Asia/Bangkok");
    $result = date('Y/m/d');
    $date = date('d/m/Y', strtotime($result));
    $time = date('H:i:s');

    $stmt = $strExe->insert("attend_activity"," regis_code, created_time, created_date, activity_code ",
                            " '$regisCode','$time','$date','$activityCode' ");
    }

?>