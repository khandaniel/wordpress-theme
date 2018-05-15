<?php get_header(); ?>
    <!-- === BEGIN CONTENT === -->
    <div id="content">
        <div class="container background-white">
            <div class="row margin-vert-30">
                <!-- Main Column -->
                <div class="col-md-9">
                    <?php

                    if (have_posts()) :
                        while (have_posts()) :
                            the_post(); ?>
                            <!-- Main Content -->
                            <div class="headline">
                                <h2><?= the_title(); ?></h2>
                            </div>
                            <?= the_content() ?>
                            <br>
                            <!-- End Main Content -->
                        <?php
                        endwhile;
                    endif;
                    if ($wp_query->max_num_pages > 1) : // Count
                        get_template_part('template-parts/navigation/nav', 'pagination');
                    endif; ?>
                </div>
                <!-- End Main Column -->
                <?php if (get_post_type() == 'page'): get_sidebar();
                else: get_template_part('template-parts/page/posts-list', 'sidebar'); endif; ?>
            </div>
        </div>
    </div>
<?php get_footer();