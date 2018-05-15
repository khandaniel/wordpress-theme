<?php

class SimpleStringWidget extends WP_Widget
{
    public function __construct()
    {
        parent::__construct('simple_string', 'Simple String', ['description' => 'Use it wisely']);
    }

    public function widget($args, $instance)
    {
        extract($instance);
        ?>
        <div class="col-sm-6 <?php if (isset($align) && !empty($align)): ?>text-<?php echo $align; endif; ?> padding-vert-5">
            <strong><?php echo $title; ?></strong><?php echo $content; ?>
        </div>
        <?php
    }

    public function form($instance)
    {
        extract($instance);
        ?>
        <p>
            <label for="<?php echo $this->get_field_id('title'); ?>">Title: </label>
            <input type="text" class="widefat"
                   name="<?php echo $this->get_field_name('title'); ?>"
                   id="<?php echo $this->get_field_id('title') ?>"
                   value="<?php echo $title; ?>">
        </p>
        <p>
            <label for="<?php echo $this->get_field_id('content'); ?>">Content: </label>
            <input type="text" class="widefat"
                   name="<?php echo $this->get_field_name('content'); ?>"
                   id="<?php echo $this->get_field_id('content') ?>"
                   value="<?php echo $content; ?>">
        </p>
        <p>
            <label for="<?php echo $this->get_field_id('align') ?>">Align:</label>
            <select class="widefat"
                   name="<?php echo $this->get_field_name('align'); ?>"
                   id="<?php echo $this->get_field_id('align') ?>">
                <option value="right" <?php if ($align == 'right'): ?>selected<?php endif; ?>>Right</option>
                <option value="center" <?php if ($align == 'center'): ?>selected<?php endif; ?>>Center</option>
                <option value="left" <?php if ($align == 'left'): ?>selected<?php endif; ?>>Left</option>
            </select>
        </p>
        <?php
    }

    public function update($new_instance, $old_instance)
    {
        $instance = [];
        $instance['title'] = (!empty($new_instance['title'])) ? strip_tags($new_instance['title']) : '';
        $instance['content'] = (!empty($new_instance['content'])) ? strip_tags($new_instance['content']) : '';
        $instance['align'] = (!empty($new_instance['align'])) ? strip_tags($new_instance['align']) : '';
        return $instance;
    }

}