<?php
// 1 Connexion à la base de données avec PDO :
try {
    $connexion = new PDO('mysql:host=127.0.0.1;port=3306;dbname=Appli_jeux;charset=utf8', 'root', '', [
        PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION
    ]);
    
// 2 Gestion des erreurs :
} catch (\Throwable $th) {
    die('erreur db');
}
