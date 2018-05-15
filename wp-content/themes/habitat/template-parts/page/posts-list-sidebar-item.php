<li>
    <div class="recent-post">
        <a href="<?= get_the_permalink() ;?>">
            <img class="pull-left" width="64" src="<?= the_field('image'); ?>" alt="Thumbnail for <?= $post->post_title ?>">
        </a>
        <a href="<?= get_the_permalink() ;?>" class="posts-list-title"><?= $post->post_title ?></a>
        <br>
        <span class="recent-post-date"> <?= date('F d, Y', strtotime($post->post_date));?> </span>
    </div>
    <div class="clearfix"></div>
</li>
