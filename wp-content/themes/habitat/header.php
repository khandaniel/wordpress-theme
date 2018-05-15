<!-- === BEGIN HEADER === -->
<!DOCTYPE html>
<!--[if IE 8]>
<html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]>
<html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<head>
    <!-- Title -->
    <title>Habitat - A Professional Bootstrap Template</title>
    <!-- Meta -->
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <meta name="description" content="">
    <meta name="author" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
    <!-- Favicon -->
    <link href="favicon.ico" rel="shortcut icon">
    <!-- Bootstrap Core CSS -->
    <link rel="stylesheet" href="<?php bloginfo('template_directory'); ?>/css/bootstrap.css" rel="stylesheet">
    <!-- Template CSS -->
    <link rel="stylesheet" href="<?php bloginfo('template_directory'); ?>/css/animate.css" rel="stylesheet">
    <link rel="stylesheet" href="<?php bloginfo('template_directory'); ?>/css/font-awesome.css" rel="stylesheet">
    <link rel="stylesheet" href="<?php bloginfo('template_directory'); ?>/css/nexus.css" rel="stylesheet">
    <link rel="stylesheet" href="<?php bloginfo('template_directory'); ?>/css/responsive.css" rel="stylesheet">
    <link rel="stylesheet" href="<?php bloginfo('template_directory'); ?>/css/custom.css" rel="stylesheet">
    <!-- Google Fonts-->
    <link href="http://fonts.googleapis.com/css?family=Roboto+Condensed:400,300" rel="stylesheet" type="text/css">
</head>
<body>
<div id="body-bg">
    <!-- Phone/Email -->
    <?php if (is_active_sidebar('top-contacts')): ?>
        <div id="pre-header" class="background-gray-lighter">
            <div class="container no-padding">
                <div class="row hidden-xs">
                    <?php dynamic_sidebar('top-contacts'); ?>
                </div>
            </div>
        </div>
    <?php endif; ?>

    <!-- End Phone/Email -->
    <!-- Header -->
    <div id="header">
        <div class="container">
            <div class="row">
                <!-- Logo -->
                <div class="logo">
                    <a href="/" title="">
                        <img src="<?php bloginfo('template_directory'); ?>/img/logo.png" alt="Logo"/>
                    </a>
                </div>
                <!-- End Logo -->
            </div>
        </div>
    </div>
    <!-- End Header -->
    <?php get_template_part('template-parts/navigation/navigation', 'top-menu'); ?>
    <!-- === END HEADER === -->