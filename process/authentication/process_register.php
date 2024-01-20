<?php
session_start();
date_default_timezone_set('Europe/Paris');

if (!empty($_POST['pseudo']) && !empty($_POST['password'])) {

    require_once '../../connection/connection.php';


    $preparedRequest = $connexion->prepare("SELECT * FROM user WHERE pseudo = ?");
    $preparedRequest->execute([
        $_POST['pseudo']
    ]);
    $user = $preparedRequest->fetch(PDO::FETCH_ASSOC);
    if($user){
        header('Location: ../../register.php?error=Pseudo déja choisi');
        die;
    }

    $hashedPassword = password_hash($_POST['password'], PASSWORD_DEFAULT);
    $preparedRequest = $connexion->prepare("INSERT INTO user (pseudo, password) VALUES (?,?)");
    $preparedRequest->execute([
        $_POST['pseudo'],
        $hashedPassword
    ]);


    $_SESSION['id'] = $connexion->lastInsertId();
    $_SESSION['pseudo'] = $_POST['pseudo'];
    $_SESSION['score'] = 0;

    header('Location: ../../index.php?success=Votre compte a bien été créé !');

}else{
    header('Location: ../../register.php?error=Remplis le formulaire&id=toto');
}