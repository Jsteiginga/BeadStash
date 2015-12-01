
<?php
$db_host = 'localhost';
$db_user = 'root';
$db_name = 'currency';
$db_pass = '';
$id = null;
$idEnd = null;

if (isset($_GET['id'])) {
    $id = $_GET['id'];
}

if (isset($_GET['idend'])) {
    $idEnd = $_GET['idend'];
}

$output = [];

try {
    $dsn = "mysql:dbname=$db_name;host=$db_host";
    $db = new PDO($dsn, $db_user, $db_pass);

    if ($id != null) {
            $dbs = $db->prepare('SELECT * from currency WHERE id = :id');
            $dbs->execute([ ':id' => $id]);
        }
//    else {
//            $dbs = $dbh->prepare('SELECT * FROM currency WHERE id BETWEEN :id AND :idend');
//            $dbs->execute([
//                ':id' => $id,
//                ':idend' => $idEnd
//            ]);
//        }
     else {
        $dbs = $db->prepare('SELECT * from currency');
        $dbs->execute();
    }
    $output = $dbs->fetchAll();
} catch(PDOException $e) {
    $output['error_msg'] = $e->getMessage();
}

echo json_encode($output);
