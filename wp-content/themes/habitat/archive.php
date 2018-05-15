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
                            the_post();
                            if (get_post_type() == 'page'):
                                get_template_part('template-parts/page/page', 'content');
                            elseif (is_single()):
                                get_template_part('template-parts/page/post', 'single');
                            else:
                                get_template_part('template-parts/page/post', 'desc');
                            endif;
                        endwhile;
                    endif;
                    if ($wp_query->max_num_pages > 1) : // Count
                        get_template_part('template-parts/navigation/nav', 'pagination');
                    endif; ?>
                </div>
                <!-- End Main Column -->
                <?php get_sidebar(); ?>
            </div>
        </div>
    </div>
<?php get_footer();