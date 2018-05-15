<!-- Side Column -->
<div class="col-md-3">
    <!-- Recent Posts -->
    <?php if (get_post_type() == 'page'):
        get_template_part('template-parts/page/page', 'sidebar');
        if (is_active_sidebar('box_aside')):
            dynamic_sidebar('box_aside');
        endif;
    else:
        get_template_part('template-parts/page/posts-list', 'sidebar');
    endif; ?>
    <!-- End recent Posts -->
</div>
<!-- End Side Column -->