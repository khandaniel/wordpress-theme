<?php

class TextBoxAsideWidget extends WP_Widget_Text
{
    public function __construct()
    {
        WP_Widget::__construct(
                'box_aside', 'Box Aside', ['description' => 'Text-Box aside on each page']
        );
    }

    public
    function widget($args, $instance)
    {
        extract($instance); ?>
        <div class="panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title"><?php echo $title; ?></h3>
            </div>
            <div class="panel-body">
                <?php echo $text; ?>
            </div>
        </div>

        <?php
    }


}