<?php

class TextBoxFooterWidget extends WP_Widget_Text
{
    public function __construct()
    {
        WP_Widget::__construct(
                'box_footer', 'Box Footer', ['description' => 'Text-Box column in footer.']
        );
    }

    public
    function widget($args, $instance)
    {
        extract($instance); ?>
        <div class="col-md-4">
        <h3 class="class margin-bottom-10"><?php echo $title; ?></h3>
        <?= $text ?>
        </div>
        <?php
    }


}