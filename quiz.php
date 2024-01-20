<?php
    session_start();
include "./connection/debug.php";
     
    if(empty($_SESSION['id'])){
        header('Location: ./connexion.php');
        die;
    }
    require_once './connection/connection.php';

    $preparedRequest = $connexion->prepare('SELECT * FROM question ORDER BY RAND() LIMIT 1');
    $preparedRequest->execute();
    $question = $preparedRequest->fetch(PDO::FETCH_ASSOC);

    // $question_id = implode(".", $_SESSION['question_id']);  AND question.id NOT IN '?' 
    $preparedRequest = $connexion->prepare("SELECT * FROM answer WHERE question_id = ?  ORDER BY RAND()");
    $preparedRequest->execute([
        $question['id'],
        // $question_id['1']
    ]);
    $answers = $preparedRequest->fetchAll(PDO::FETCH_ASSOC);
?>
<?php include './partials/header.php'; ?>


<section class="container p-4">
    <h1 class="text-center texte1couleur2 mt-5">Quiz</h1>
</section>


<section class="container p-3">
    <h2 class="text-police text-center texte1couleur1 mt-3"> <?= $question['question'] ?></h2>
    <form action="./process/quizz/process_response_quizz.php" method="post">
        <div class="d-flex justify-content-center">
            <?php foreach ($answers as $answer) { ?>
                <button class="btn btn-warning m-3" type="submit" value="<?= $answer['id'] ?>" name='reponse'><?= $answer['reponse']?></button>
            <?php } ?>
        </div>
    </form>
</section>