<?php include 'partial/sidebar.php'; ?>

<div class="col">
    <div class="container">
    

            <h2>Add Category</h2>
            <div class="card card-body bg-light mt-4 mb-5">
            <form action="<?php echo URL; ?>dashboard/addCategory" method="POST">

                <div class="form-group">
                    <label for="title">Category: <sup>*</sup></label>
                    <input type="text" name="category" class="form-control form-control-lg" value="">
                    <label for="icon">Icon: <sup>*</sup></label>
                    <a href="https://fontawesome.com/v4.7.0/icons/" target="_blank">check for icons</a>
                    <input type="text" name="icon" class="form-control form-control-lg" value="">
                </div>

                <input type="submit" class="btn btn-success" value="Add">
            </form>
            
        </div>
    </div>
</div>








