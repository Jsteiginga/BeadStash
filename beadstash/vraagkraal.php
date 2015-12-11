<?php
    $db_host = 'localhost:3306';
    $db_user = 'projectgroep';
    $db_name = 'projectbead_stash';
    $db_pass = '@ProjectGroep123';
	
	$kleurKeuze = null;
	$typeKeuze = null;

    if (isset($_GET['kleurKeuze'])) {
    	$kleurKeuze = $_GET['kleurKeuze'];
	}
	if(isset($_GET['typeKeuze'])){
		$typeKeuze = $_GET['typeKeuze'];
	}
    $output = [];
	
    try {
        $dsn = "mysql:dbname=$db_name;host=$db_host";
        $db = new PDO($dsn, $db_user, $db_pass);
      	
		$sql = 'SELECT naam_kraal,img_url FROM Kralen';
		
		// deze if statement vind ik nog niet mooi en netjes. even navragen of dit niet beter kan.
		$where = ($kleurKeuze != '' || $typeKeuze != '' ? ' WHERE ' : '');
		$and = ($kleurKeuze != '' && $typeKeuze != '' ? ' AND ' : '');
		
		if($kleurKeuze != ''){
			$sql .= $where."kleur_kraal = :kleurKeuze";
			$executeArray[':kleurKeuze'] = $kleurKeuze;
		}
		if($typeKeuze != ''){
			$sql .= ($kleurKeuze != '' ? $and : $where)."type_kraal = :typeKeuze";
			$executeArray[':typeKeuze'] = $typeKeuze;
		}

        $dbs = $db->prepare($sql . ' LIMIT 100');
        $dbs->execute($executeArray);
        $output = $dbs->fetchAll();

    } catch (PDOException $e) {
        $output['error_msg'] = $e->getMessage();
    }
    echo json_encode($output);
