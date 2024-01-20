<?php 
session_start();
require_once '../../connection/connection.php';

if (isset($_POST['reponse'])) {
  

    $preparedRequest = $connexion->prepare(
        "SELECT * FROM answer 
        WHERE answer.id = ? 
        ");
    $preparedRequest->execute([
        $_POST['reponse']
    ]);
    
    $answer = $preparedRequest->fetch(PDO::FETCH_ASSOC);
    $_SESSION['nrb_question']++;
  

    if ($answer['right_answer'])
    {
        // J'ajoute les points
        $_SESSION['score'] = $_SESSION['score'] + 1;
       
    }  


    if($_SESSION['nrb_question'] -= 9){
        header('Location: ./process_score.php');
        die;
    }else{
        header('Location: ../../quiz.php');
        die;
    }
    
  
}