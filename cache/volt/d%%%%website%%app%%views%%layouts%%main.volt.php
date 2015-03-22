<!-- <div class="container">
    <?php echo $this->flash->output(); ?>
    <hr>
</div> -->
<?php echo $this->getContent(); ?>
<div class="container" id='nav-bar'>
    <nav class="navbar navbar-default navbar-inverse nav-bar" role="navigation">
        <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">NAKED</a>
            </div>
            <?php echo $this->elements->getMenu(); ?>
        </div>
    </nav>
</div>
<!-- <footer>
    <p>&copy; Company 2014</p>
</footer> -->