<?php

class IconsWidget extends WP_Widget
{
    function __construct()
    {
        parent::__construct(
            'icon_widget',
            'Icons Widget',
            array('description' => 'Shows icon and text aside.')
        );
    }
    public function widget($args, $instance)
    {
        extract($instance);
        $title = apply_filters('widget_title', $title);
        $text_after = apply_filters('widget_text_content', $text_after);

        echo $args['before_widget']; ?>
        <div class="col-md-4 text-center">
            <i class="fa-<?= $icon ?> fa-4x color-primary animate fadeIn"></i>
            <h2 class="padding-top-10 animate fadeIn"><?= $title ?></h2>
            <p class="animate fadeIn"><?= $text_after ?></p>
        </div>
        <?php echo $args['after_widget'];
    }

    /*
     * бэкэнд виджета
     */
    public function form($instance)
    {
        extract($instance);
        ?>
        <p>
            <label for="<?php echo $this->get_field_id('icon'); ?>">Icon class:</label>
            <input class="widefat" id="<?php echo $this->get_field_id('icon'); ?>"
                   name="<?php echo $this->get_field_name('icon'); ?>" type="text"
                   value="<?php echo esc_attr($icon); ?>"/>
        </p>
        <p>
            <label for="<?php echo $this->get_field_id('title'); ?>">Title:</label>
            <input class="widefat" id="<?php echo $this->get_field_id('title'); ?>"
                   name="<?php echo $this->get_field_name('title'); ?>" type="text"
                    value="<?php echo esc_attr($title); ?>" />
        </p>
        <p>
            <label for="<?php echo $this->get_field_id('text_after'); ?>">Text after icon:</label><br/>
            <textarea class="widefat" id="<?php echo $this->get_field_id('text_after'); ?>"
                      name="<?php echo $this->get_field_name('text_after'); ?>"><?php echo ($text_after) ? $text_after : ''; ?></textarea>
        </p>
        <?php
    }

    public function update($new_instance, $old_instance)
    {
        $instance = array();
        $instance['icon'] = (!empty($new_instance['icon'])) ? strip_tags($new_instance['icon']) : '';
        $instance['title'] = (!empty($new_instance['title'])) ? strip_tags($new_instance['title']) : '';
        $instance['text_after'] = (!empty($new_instance['text_after'])) ? $new_instance['text_after'] : ''; // по умолчанию выводятся 5 постов
        return $instance;
    }
}