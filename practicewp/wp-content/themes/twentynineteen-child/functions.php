<?php
//Child Theme Functions File
add_action( 'wp_enqueue_scripts', 'enqueue_wp_child_theme' );
function enqueue_wp_child_theme() 
{
    if((esc_attr(get_option('childthemewpdotcom_setting_x')) != "Yes")) 
    {
		//This is your parent stylesheet you can choose to include or exclude this by going to your Child Theme Settings under the "Settings" in your WP Dashboard
		wp_enqueue_style('parent-css', get_template_directory_uri().'/style.css' );
    }

	//This is your child theme stylesheet = style.css
	wp_enqueue_style('child-css', get_stylesheet_uri());

	//This is your child theme js file = js/script.js
	wp_enqueue_script('child-js', get_stylesheet_directory_uri() . '/js/script.js', array( 'jquery' ), '1.0', true );
}
 
 /******************************/
function wcr_category_fields($term) {
    // we check the name of the action because we need to have different output
    // if you have other taxonomy name, replace category with the name of your taxonomy. ex: book_add_form_fields, book_edit_form_fields
    if (current_filter() == 'category_edit_form_fields') {
        $category_icon = get_term_meta($term->term_id, 'category_icon', true);
        $category_feature_img = get_term_meta($term->term_id, 'category_feature_img', true);
        ?>
        <tr class="form-field">
            <th valign="top" scope="row"><label for="term_fields[category_icon]"><?php _e('Category Before Icon'); ?></label></th>
            <td>
                <input type="text" placeholder="htttp://" class="large-text" id="term_fields[category_icon]" name="term_fields[category_icon]" value="<?php if(!empty($category_icon)){ echo $category_icon; } ?>"><br/>
                <span class="description"><?php _e('Please Image Icon URL'); ?></span>
            </td>
        </tr> 
        <tr class="form-field">
            <th valign="top" scope="row"><label for="term_fields[category_feature_img]"><?php _e('Category Feature Image'); ?></label></th>
            <td>
                <input type="text" placeholder="htttp://" class="large-text" id="term_fields[category_feature_img]" name="term_fields[category_feature_img]" value="<?php if(!empty($category_feature_img)){ echo $category_feature_img; } ?>"><br/>
                <span class="description"><?php _e('Please Feature Image URL'); ?></span>
            </td>
        </tr>  
	<?php } elseif (current_filter() == 'category_add_form_fields') {
        ?>
        <div class="form-field">
            <label for="term_fields[category_icon]"><?php _e('Category Before Icon'); ?></label>
            <input type="text"  placeholder="htttp://" id="term_fields[category_icon]" name="term_fields[category_icon]" />
            <p class="description"><?php _e('Please Image Icon URL'); ?></p>
        </div>
         <div class="form-field">
            <label for="term_fields[category_feature_img]"><?php _e('Category Feature Image'); ?></label>
            <input type="text" placeholder="htttp://" id="term_fields[category_feature_img]" name="term_fields[category_feature_img]" />
            <p class="description"><?php _e('Please enter Feature Image URL'); ?></p>
        </div>         
    <?php
    }
}

// Add the fields, using our callback function  
// if you have other taxonomy name, replace category with the name of your taxonomy. ex: book_add_form_fields, book_edit_form_fields
add_action('category_add_form_fields', 'wcr_category_fields', 10, 2);
add_action('category_edit_form_fields', 'wcr_category_fields', 10, 2);

function wcr_save_category_fields($term_id) {
    if (!isset($_POST['term_fields'])) {
        return;
    }

    foreach ($_POST['term_fields'] as $key => $value) {
        update_term_meta($term_id, $key, sanitize_text_field($value));
    }
}

// Save the fields values, using our callback function
// if you have other taxonomy name, replace category with the name of your taxonomy. ex: edited_book, create_book
add_action('edited_category', 'wcr_save_category_fields', 10, 2);
add_action('create_category', 'wcr_save_category_fields', 10, 2);