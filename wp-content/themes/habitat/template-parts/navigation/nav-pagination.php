<!-- Pagination -->
<div class="text-center">
    <ul class="pagination">
        <?php if ($paged !== 0): ?>
            <li><a href="<?= get_previous_posts_page_link() ?>">&laquo;</a></li>
        <?php endif; ?>
        <?php for ($page = 1; $page <= $wp_query->max_num_pages; $page++): $paged = ($paged) ? $paged : 1; $current_page = ($paged == $page)?>
            <li<?php if ($current_page): ?> class="active"<?php endif; ?>>
                <a href="<?= get_pagenum_link($page) ?>"><?= $page ?></a>
            </li>
        <?php endfor;
        if ($paged != $wp_query->max_num_pages):
            ?>
            <li><a href="<?= get_next_posts_page_link() ?>">&raquo;</a></li>
        <?php endif; ?>
    </ul>
</div>
<!-- End Pagination -->


