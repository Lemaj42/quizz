<?php
session_start();

require_once '../../connection/connection.php';


$insertscore = $connexion->prepare("INSERT INTO score (score, `user-id`) VALUES (?,?)");
        $insertscore->execute([

            $_SESSION['score'],
            $_SESSION['id']
        ]);

$_SESSION['score'] = 0;
header('Location: ../../quiz.php');
exit();
?>