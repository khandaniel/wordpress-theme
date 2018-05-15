<?php

class GalleryWidget extends WP_Widget_Media_Gallery
{
public function widget($args, $instance)
{ ?>
<div id="slideshow" class="bottom-border-shadow">
    <div class="container no-padding background-white bottom-border">
        <div class="row">
            <!-- Carousel Slideshow -->
            <div id="carousel-example" class="carousel slide" data-ride="carousel">
                <!-- Carousel Indicators -->
                <ol class="carousel-indicators">
                    <?php for ($i = 0; $i < count($instance['ids']); $i++): ?>
                    <li data-target="#carousel-example" data-slide-to="<?= $i ?>"<?php if ($i == 0):?> class="active"<?php endif;?>></li>
                    <?php endfor; ?>
                </ol>
                <div class="clearfix"></div>
                <!-- End Carousel Indicators -->
                <!-- Carousel Images -->
                <div class="carousel-inner">
                    <?php
                    foreach ($instance['ids'] as $id):
                        $image_post = get_post($id);
                        ?>
                        <div class="item <?php if ($id == $instance['ids'][0]) :?>active<?php endif; ?>">
                            <img src="<?= $image_post->guid ?>">
                        </div>
                    <?php
                    endforeach; ?>
                </div>
                <!-- End Carousel Images -->
                <!-- Carousel Controls -->
                <a class="left carousel-control" href="#carousel-example" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left"></span>
                </a>
                <a class="right carousel-control" href="#carousel-example" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right"></span>
                </a>
                <!-- End Carousel Controls -->
            </div>
            <!-- End Carousel Slideshow -->
        </div>
    </div>
</div>
<?php
}
}