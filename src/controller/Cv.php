<?php


class Cv extends Controller {

    # render all posts on the start page
    public function index() {
        $this->view->render('cv/index');
    }

}