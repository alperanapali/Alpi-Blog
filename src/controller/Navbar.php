<?php

class Navbar extends Controller {
    public function initCategories() {
        $categories = $this->model->getAllCategories();
        $newCategories = array();
        $categoryIcons = array();

        foreach($categories as $category) {
            $newCategories[$category['id']] = $category['category_name'];
            $categoryIcons[$category['category_name']] = $category['icon_name'];
        }

        Session::set('categories', $newCategories);
        Session::set('category_icons', $categoryIcons);

        Session::set('activeCategory', 'null');
    }
    
    public function index () {
        // Nothing to do here
    }
}