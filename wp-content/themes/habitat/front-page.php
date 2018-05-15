<?php
get_header();?>

<!-- === BEGIN CONTENT === -->
    <?php if (is_active_sidebar('gallery')):
        dynamic_sidebar('gallery');
    endif; ?>

    <div id="icons" class="bottom-border-shadow">
        <div class="container background-grey bottom-border">
            <div class="row padding-vert-60">
                <!-- Icons -->
                <?php if (is_active_sidebar('icons')): dynamic_sidebar('icons'); endif; ?>
                <!-- End Icons -->
            </div>
        </div>
    </div>
    <div id="content" class="bottom-border-shadow">
        <div class="container background-white bottom-border">
            <div class="row margin-vert-30">
                <!-- Main Text -->
                <?php if (have_posts()) : while (have_posts()) : the_post(); ?>
                    <div class="col-md-6">
                        <h2><?= the_title(); ?></h2>
                        <?= the_content(); ?>
                    </div>
                <?php endwhile; endif; ?>

                <!-- End Main Text -->
                <div class="col-md-6">
                    <h3 class="padding-vert-10">Key Features</h3>
                    <p>Duis sit amet orci et lectus dictum auctor a nec enim. Donec suscipit fringilla elementum.
                        Suspendisse nec justo ut felis ornare tincidunt vitae et lectus.</p>
                    <ul class="tick animate fadeInRight">
                        <li>Responsive Design</li>
                        <li>Built with LESS</li>
                        <li>Font Choosers</li>
                        <li>Replaceable Background Image</li>
                        <li>Custom Module Widths</li>
                        <li>All Module Extensions Included</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <?php get_template_part('template-parts/page/front-page', 'bottom'); ?>

    <!-- === END CONTENT === -->

<?php get_footer();