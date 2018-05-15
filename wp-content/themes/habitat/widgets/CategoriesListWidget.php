<?php

class CategoriesListWidget extends WP_Widget
{
    public $options = [
        'Posts quantity',
        'Name'
    ];
    public $order_readable = [
      'count',
      'name'
    ];

    public function __construct()
    {
        parent::__construct('categories_list', 'Categories List', ['description' => 'Displays the list of categories']);
    }

    public function widget($args, $instance)
    {
        extract($instance);
        $params = [];
        $params['orderby'] = $this->order_readable[$order];
        $params['hide_empty'] = ($hide_empty == 'on') ? 1 : 0;
        $params['order'] = 'DESC';
        $params['number'] = $quantity;
        ?>
        <div class="col-md-4 margin-bottom-20">
            <h3 class="margin-bottom-10"><?php echo $title ?></h3>
            <ul class="menu">
                <?php foreach (get_categories($params) as $category) : ?>
                    <li>
                        <a href="<?= get_category_link($category) ?>"><?= $category->name ?> </a>
                    </li>
                <?php endforeach; ?>
            </ul>
            <div class="clearfix"></div>
        </div>
        <?php
    }

    public function form($instance)
    {
        extract($instance);
        ?>
        <p><label for="<?php echo $this->get_field_id('title'); ?>">Title:</label>
            <input type="text" class="widefat"
                   id="<?php echo $this->get_field_id('title'); ?>"
                   name="<?php echo $this->get_field_name('title'); ?>"
                   value="<?php echo ($title) ? esc_attr($title) : 'Categories'; ?>"/>
        </p>
        <p><label for="<?php echo $this->get_field_id('quantity'); ?>">Quantity of categories: </label>
            <input type="number"
                   id="<?php echo $this->get_field_id('quantity'); ?>"
                   name="<?php echo $this->get_field_name('quantity'); ?>"
                   value="<?php echo ($quantity) ? esc_attr($quantity) : 4; ?>"/>
        </p>
        <p>
            <label for="">Order by: </label>
            <select name="<?php echo $this->get_field_name('order'); ?>"
                    id="<?php echo $this->get_field_id('order'); ?>">
                <?php foreach ($this->options as $val => $option)  : ?>
                <option value="<?php echo $val; ?>" <?php if ($order == $val) : ?>selected<?php endif;?> ><?php echo $option; ?></option>
                <?php endforeach; ?>
            </select>
        </p>
        <p>
            <label for="<?php echo $this->get_field_id('hide_empty'); ?>">Hide empty: </label>
            <input type="checkbox" name="<?php echo $this->get_field_name('hide_empty'); ?>"
                   id="<?php echo $this->get_field_id('hide_empty'); ?>"
                   <?php if ($hide_empty == 'on') : ?>checked<?php endif; ?> />
        </p>

        <?php
    }

    public function update($new_instance, $old_instance)
    {
        $instance = [];
        $instance['title'] = (!empty($new_instance['title'])) ? strip_tags($new_instance['title']) : 'Categories';
        $instance['quantity'] = (is_numeric($new_instance['quantity'])) ? $new_instance['quantity'] : '4';
        $instance['order'] = ($new_instance['order']) ? $new_instance['order'] : '0';
        $instance['hide_empty'] = ($new_instance['hide_empty']) ? $new_instance['hide_empty'] : 'off';
        return $instance;
    }
}