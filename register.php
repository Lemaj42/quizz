<?php include './partials/header.php'; ?>

<section>
    <h1 class="text-center">Creating an account</h1>
</section>


<section class="container">
    <form action="./process/authentication/process_register.php" method="post">
        <div class="mb-3">
            <label for="pseudo" class="form-label">Pseudo</label>
            <input type="text" name="pseudo" class="form-control" id="pseudo">
        </div>
        <div class="mb-3">
            <label for="password" class="form-label">Password</label>
            <input type="password" name="password" class="form-control" id="password">
        </div>
        <button type="submit" class="btn btn-primary">Create your account</button>
    </form>
</section>
