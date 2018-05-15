<!-- Blog Post -->
<div class="blog-post padding-bottom-20">
    <!-- Blog Item Header -->
    <div class="blog-item-header">
        <!-- Title -->
        <h2>
            <a href="<?php echo get_the_permalink(); ?>"><?php the_title(); ?></a>
        </h2>
        <div class="clearfix"></div>
        <!-- End Title -->
        <!-- Date -->
        <div class="blog-post-date">
            <a href="#"><?= the_date('dS M, Y'); ?></a>
        </div>
        <!-- End Date -->
    </div>
    <!-- End Blog Item Header -->
    <!-- Blog Item Details -->
    <div class="blog-post-details">
        <?php if (has_tag()) : ?>
            <!-- Tags -->
            <div class="blog-post-details-item blog-post-details-item-left blog-post-details-tags">
                <i class="fa fa-tag color-gray-light"></i>
                <?php foreach ($tags = get_the_tags() as $tag) : ?>
                    <a href="<?= get_tag_link($tag->term_id); ?>"><?= $tag->name?></a><?php if ($tag !== end($tags)) : ?>,<?php endif; ?>
                <?php endforeach; ?>
            </div>
            <!-- End Tags -->
        <?php endif; ?>
        <!-- # of Comments -->
        <div class="blog-post-details-item blog-post-details-item-left blog-post-details-item-last">
            <a href="<?= get_comments_link(); ?>">
                <i class="fa fa-comments color-gray-light"></i>
                <?php echo get_comments_number(); ?>
                <?php if (get_comments_number() !== '1') : ?>
                    Comments
                <?php else: ?>
                    Comment
                <?php endif; ?>
            </a>
        </div>
        <!-- End # of Comments -->
    </div>
    <!-- End Blog Item Details -->
    <!-- Blog Item Body -->
    <div class="blog">
        <div class="clearfix"></div>
        <div class="blog-post-body row margin-top-15">
            <?php if (get_field('image')) : ?>
                <div class="col-md-5">
                    <img class="margin-bottom-20" src="<?= the_field('image'); ?>"
                         alt="Thumbnail for post <?= the_title(); ?>">
                </div>
            <?php endif; ?>
            <div class="col-md-7">
                <?= the_excerpt(); ?>
                <!-- Read More -->
                <a href="<?php echo get_the_permalink(); ?>" class="btn btn-primary">
                    Read More
                    <i class="icon-chevron-right readmore-icon"></i>
                </a>
                <!-- End Read More -->
            </div>
        </div>
    </div>
    <!-- End Blog Item Body -->
</div>
<!-- End Blog Item -->