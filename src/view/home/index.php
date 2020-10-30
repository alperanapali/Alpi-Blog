<!-- Header -->
<header class="masthead">
    <div class="container">
        <div class="intro-text">
            <h4 class="text-uppercase">Check out some tasty food</h4>
            <div class="intro-heading">Let us know about your amazing recipes </br> Be careful if you are not full</div>
            <a class="btn btn-xl text-white text-uppercase" href="<?=URL?>category/showCategory/12">Read More</a><i class="fa fa-angle-right"></i>
        </div>
    </div>
</header>


<!-- Here comes the main content -->
<div class="container"> <!-- START: div#content -->

<!-- Content Cards -->
<section>

<div class="card-columns">

<?php foreach($this->post as $item) : ?>
        <div class="card" width="300px" height="400px">
            <a href="<?= URL; ?>category/show/<?= $item->slug; ?>">
                <img class="card-img-top"  src="<?= $item->image ?>" alt="Card image cap">
            </a>
            <div class="card-body">
                    
                <p class="card-text mb-0 text-muted"><small><?= $item->category_name ?></small></p>
                    
                <h5 class="card-title"><?= $item->header ?></h5>
                <p class="card-text"><?= substr($item->content, 0, 50) ?>...<a href="<?= URL; ?>category/show/<?= $item->slug; ?>"> read more</a></p>
                <div class="row">
                    <div class="col">
                        <p class="card-text"><small class="text-muted"><?= $item->timestamp ?></small></p>
                    </div>

                    <div class="col">
                        <p class="card-text pull-right"><small class="text-muted">Posted by: </br><?= $item->firstname . ' ' . $item->lastname?></small></p>
                    </div>
                </div>
            </div>
        </div>
    
<?php endforeach; ?>
</div>


    <!-- Pagination start -->
    <div class="mt-5">
        <nav aria-label="Page navigation example">
            <ul class="pagination justify-content-center" id="cardPagination">

            </ul>
        </nav>
    </div>
</section>
<script>
    let activePage = <?= ACTIVE_PAGE ?>;
    let cardsPerPage = <?= CARDS_PER_PAGE ?>;
</script>

<script src="<?= URL . "public/js/pagination.js" ?>"></script>