Deface::Override.new :virtual_path  => "spree/users/show",
  :insert_before => "[data-hook='account_my_orders']",
  :partial => 'users/affiliate'
