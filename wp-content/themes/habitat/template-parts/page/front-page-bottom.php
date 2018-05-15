<!-- Portfolio -->
<div id="portfolio" class="bottom-border-shadow">
    <div class="container bottom-border">
        <div class="row padding-top-40">
            <ul class="portfolio-group">
                <?php
                $counter = 0;
                foreach (get_categories('hide_empty=0') as $category) :
                    $counter++;
                    $fadeSide = $counter % 3;
                    switch ($fadeSide) :
                        case 0:
                            $fadeSide = 'Right';
                            break;
                        case 1:
                            $fadeSide = 'Left';
                            break;
                        case 2:
                            $fadeSide = '';
                            break;
                    endswitch;
                    ?>
                    <!-- Portfolio Item -->
                    <li class="portfolio-item col-sm-4 col-xs-6 margin-bottom-40">
                        <a href="<?= get_category_link($category) ?>">
                            <figure class="animate fadeIn<?= $fadeSide ?>">
                                <img alt="Thumbnail for category &laquo;<?= $category->name ?>&raquo;"
                                     src="<?php the_field('thumbnail', $category); ?>">
                                <figcaption>
                                    <h3>&laquo;<?= $category->name ?>&raquo;</h3>
                                    <span><?= $category->description ?></span>
                                </figcaption>
                            </figure>
                        </a>
                    </li>
                    <!-- //Portfolio Item// -->
                <?php endforeach; ?>
            </ul>
        </div>
    </div>
</div>
<!-- End Portfolio -->