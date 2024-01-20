<?php
    session_start();

     
    if(empty($_SESSION['id'])){
        header('Location: ./connexion.php');
        die;
    }

include './partials/header.php';

require_once './connection/connection.php';


$preparedRequest =  $connexion->prepare(
            "SELECT pseudo FROM user INNER JOIN score ON user.id = score.id
            
            ");
$preparedRequest->execute();
$pseudos = $preparedRequest->fetchAll(PDO::FETCH_ASSOC);

?>




<section class="container">
    <table class="table">
        <thead>
            <tr>
                <th class="text-danger" scope="col">#</th>
                <th class="text-danger" scope="col">pseudo</th>

            </tr>
        </thead>
        <tbody>
            <?php foreach ($pseudos as $pseudo) {?>
                <tr>
                    <th><?= $pseudo['id'] ?></th>
                    <th><?= $pseudo['pseudo'] ?></th>
                </tr>
            <?php } ?>
        </tbody>
    </table>
</section>