<?php
require "widgets/IconWidget.php";
require "widgets/TextBoxAsideWidget.php";
require "widgets/TextBoxFooterWidget.php";
require "widgets/CategoriesListWidget.php";
require "widgets/GalleryWidget.php";
require "widgets/SimpleStringWidget.php";
require "widgets/HabitatWalkerNavMenu.php";

function habitat_widgets_load()
{
    register_widget('IconsWidget');
    register_widget('TextBoxAsideWidget');
    register_widget('TextBoxFooterWidget');
    register_widget('CategoriesListWidget');
    register_widget('GalleryWidget');
    register_widget('SimpleStringWidget');
}


function register_new_sidebars()
{
    register_sidebar([
        'name' => 'Top',
        'id' => 'top-contacts',
        'description' => 'This sidebar is designed only to show phone & email.',
    ]);
    register_sidebar([
        'name' => 'Icons',
        'id' => 'icons',
        'description' => 'This sidebar is designed only to show widgets and icons in the bottom of slider.',
        'before_widget' => '<div id="%1$s" class="widget %2$s">',
        'after_widget' => '</div>'
    ]);
    register_sidebar([
        'name' => 'Sidebar on the page',
        'id' => 'box_aside',
        'description' => 'This sidebar is designed to show information aside e.g. Contacts or About us Information Boxes.',
    ]);
    register_sidebar([
        'name' => 'Gallery place',
        'id' => 'gallery',
        'description' => 'Place here only gallery widget!',
    ]);
    register_sidebar([
        'name' => 'Footer',
        'id' => 'footer',
        'description' => 'Footer of each page on this website',
]);
}

add_theme_support('menus');
register_nav_menus(['top' => 'Main menu']);

add_action('widgets_init', 'register_new_sidebars');
add_action('widgets_init', 'habitat_widgets_load');