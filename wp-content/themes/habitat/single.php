<?php get_header(); ?>
    <!-- === BEGIN CONTENT === -->
    <div id="content">
        <div class="container background-white">
            <div class="row margin-vert-30">
                <!-- Main Column -->
                <div class="col-md-9">
                    <div class="blog-post">
                        <div class="blog-item-header">
                            <h2>
                                <a href="<?php echo get_the_permalink(); ?>">
                                    <?php the_title(); ?>
                                </a>
                            </h2>
                            <div class="clearfix"></div>
                            <!-- Date -->
                            <div class="blog-post-date">
                                <a href="#"><?= the_date('dS M, Y'); ?></a>
                            </div>
                            <!-- End Date -->
                        </div>

                        <div class="blog-post-details">
                            <?php if (has_tag()) : ?>
                                <!-- Tags -->
                                <div class="blog-post-details-item blog-post-details-item-left blog-post-details-tags">
                                    <i class="fa fa-tag color-gray-light"></i>
                                    <?php foreach ($tags = get_the_tags() as $tag) : ?>
                                        <a
                                        href="<?= get_tag_link($tag->term_id); ?>"><?= $tag->name ?></a><?php if ($tag !== end($tags)) : ?>,<?php endif; ?>
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
                        </div>
                        <!-- End # of Comments -->
                    </div>
                    <div class="blog-item">
                        <div class="clearfix"></div>
                        <div class="blog-post-body row margin-top-15">
                            <?php if (get_field('image')) : ?>
                                <div class="col-md-5">
                                    <img class="margin-bottom-20" src="<?= the_field('image'); ?>" alt="image1">
                                </div>
                            <?php endif; ?>
                            <div class="col-md-7">
                                <?= the_post(); the_content(); ?>
                            </div>
                            <div class="col-md-12">
                            </div>
                        </div>
                        <div class="clearfix"></div>
                        <div class="blog-item-footer">
                            <!-- Comments -->
                            <div class="blog-recent-comments panel panel-default margin-bottom-30">
                                <div class="panel-heading" id="comments">
                                    <h3>Comments</h3>
                                </div>
                                <ul class="list-group">
                                    <?php if (get_comments_number() > 0) :
                                        foreach (get_comments(['post_id' => $post->ID, 'order' => 'asc']) as $comment) :
                                            get_template_part('template-parts/page/post', 'comment');
                                        endforeach;
                                    endif;
                                    if ( comments_open() || get_comments_number() ) :
                                        get_comments();
                                        comments_template('/comment.php');
                                    endif;
                                    ?>
                                </ul>
                            </div>
                            <!-- End Comments -->
                        </div>
                    </div>

                </div>
                <?php get_sidebar(); ?>
            </div>
        </div>
    </div>
<?php get_footer();