<?php get_template_part('template-parts/page/posts-list', 'tags'); ?>
    <!-- Recent Posts -->
    <div class="recent-posts">
        <h3>Recent Posts</h3>
        <ul class="posts-list margin-top-10">
            <?php foreach(get_posts(['posts_per_page' => 4,'orderby' => 'date', 'order' => 'DESC']) as $post) :
                get_template_part('template-parts/page/posts', 'list-sidebar-item');
            endforeach; ?>
        </ul>
    </div>
    <!-- End Recent Posts -->