Deface::Override.new(:virtual_path => "spree/admin/shared/_configuration_menu",
                     :name => "add_print_settings_tab",
                     :insert_bottom => "[data-hook='admin_configurations_sidebar_menu'], #admin_configurations_sidebar_menu[data-hook]",
                     :text => "<li<%== ' class=\"active\"' if controller.controller_name == 'print_settings' %>><%= link_to Spree.t(:print_settings), admin_print_settings_path %></li>")