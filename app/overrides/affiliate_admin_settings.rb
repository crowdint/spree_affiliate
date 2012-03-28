Deface::Override.new :virtual_path  => "spree/admin/configurations/index",
  :insert_after => "[data-hook='admin_configurations_menu']",
  :text => "#<%= configurations_menu_item(I18n.t('affiliate_settings'), admin_affiliate_settings_path, I18n.t('manage_affiliate_settings')) %>",
  :name => "affiliate_admin_settings"
#insert_after :admin_configurations_menu do
  #"<%= configurations_menu_item(I18n.t('affiliate_settings'), admin_affiliate_settings_path, I18n.t('manage_affiliate_settings')) %>"
#end
