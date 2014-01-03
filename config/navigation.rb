# -*- coding: utf-8 -*-
# Configures your navigation
SimpleNavigation::Configuration.run do |navigation|
  # Specify a custom renderer if needed.
  # The default renderer is SimpleNavigation::Renderer::List which renders HTML lists.
  # The renderer can also be specified as option in the render_navigation call.
  # navigation.renderer = Your::Custom::Renderer

  # Specify the class that will be applied to active navigation items. Defaults to 'selected'
  # navigation.selected_class = 'your_selected_class'

  # Specify the class that will be applied to the current leaf of
  # active navigation items. Defaults to 'simple-navigation-active-leaf'
  # navigation.active_leaf_class = 'your_active_leaf_class'

  # Item keys are normally added to list items as id.
  # This setting turns that off
  # navigation.autogenerate_item_ids = false

  # You can override the default logic that is used to autogenerate the item ids.
  # To do this, define a Proc which takes the key of the current item as argument.
  # The example below would add a prefix to each key.
  # navigation.id_generator = Proc.new {|key| "my-prefix-#{key}"}

  # If you need to add custom html around item names, you can define a proc that will be called with the name you pass in to the navigation.
  # The example below shows how to wrap items spans.
  # navigation.name_generator = Proc.new {|name| "<span>#{name}</span>"}

  # The auto highlight feature is turned on by default.
  # This turns it off globally (for the whole plugin)
  # navigation.auto_highlight = false

  # Define the primary navigation
  navigation.items do |primary|
    # Add an item to the primary navigation. The following params apply:
    # key - a symbol which uniquely defines your navigation item in the scope of the primary_navigation
    # name - will be displayed in the rendered navigation. This can also be a call to your I18n-framework.
    # url - the address that the generated item links to. You can also use url_helpers (named routes, restful routes helper, url_for etc.)
    # options - can be used to specify attributes that will be included in the rendered navigation item (e.g. id, class etc.)
    #           some special options that can be set:
    #           :if - Specifies a proc to call to determine if the item should
    #                 be rendered (e.g. <tt>:if => Proc.new { current_user.admin? }</tt>). The
    #                 proc should evaluate to a true or false value and is evaluated in the context of the view.
    #           :unless - Specifies a proc to call to determine if the item should not
    #                     be rendered (e.g. <tt>:unless => Proc.new { current_user.admin? }</tt>). The
    #                     proc should evaluate to a true or false value and is evaluated in the context of the view.
    #           :method - Specifies the http-method for the generated link - default is :get.
    #           :highlights_on - if autohighlighting is turned off and/or you want to explicitly specify
    #                            when the item should be highlighted, you can set a regexp which is matched
    #                            against the current URI.  You may also use a proc, or the symbol <tt>:subpath</tt>.
    #
    primary.item :home, 'Home', root_path

    primary.item :clients, 'Clients <b class="caret"></b>', '#', class: 'dropdown', if: -> { current_user }, :link => {:class => 'dropdown-toggle', 'data-toggle' => 'dropdown'} do |sub_nav|
      sub_nav.item :clients, 'List', clients_path
      sub_nav.item :create_client, 'Add new', new_client_path
      sub_nav.dom_class = 'dropdown-menu'
    end

    primary.item :invoices, 'Invoices <b class="caret"></b>', '#', class: 'dropdown', if: -> { current_user }, :link => {:class => 'dropdown-toggle', 'data-toggle' => 'dropdown'} do |sub_nav|
      sub_nav.item :invoices, 'List', invoices_path
      sub_nav.item :create_invoice, 'Create', new_invoice_path
      sub_nav.item :reports, 'Reports', reports_invoices_path
      sub_nav.dom_class = 'dropdown-menu'
    end

    primary.item :expenses, 'Expenses <b class="caret"></b>', '#', class: 'dropdown', if: -> { current_user }, :link => {:class => 'dropdown-toggle', 'data-toggle' => 'dropdown'} do |sub_nav|
      sub_nav.item :expenses, 'List', expenses_path
      sub_nav.item :create_expense, 'Create', new_expense_path
      sub_nav.dom_class = 'dropdown-menu'
    end

    primary.item :settings, 'Settings <b class="caret"></b>', '#', class: 'dropdown', if: -> { current_user },  link: {:class => 'dropdown-toggle', 'data-toggle' => 'dropdown'} do |sub_nav|
      sub_nav.item :account, 'Account', edit_user_path(current_user)
      sub_nav.item :addresses, 'Addresses', user_addresses_path(current_user)
      sub_nav.item :tax_rates, 'Tax rates', tax_rates_path
      sub_nav.dom_class = 'dropdown-menu'
    end

    # you can also specify a css id or class to attach to this particular level
    # works for all levels of the menu
    # primary.dom_id = 'menu-id'
    primary.dom_class = 'nav navbar-nav'

    # You can turn off auto highlighting for a specific level
    # primary.auto_highlight = false

  end

end
