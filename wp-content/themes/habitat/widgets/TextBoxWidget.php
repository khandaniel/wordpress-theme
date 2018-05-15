<?php

class TextBoxWidget extends WP_Widget_Text
{


    public function widget($args, $instance)
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