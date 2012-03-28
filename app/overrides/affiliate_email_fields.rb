Deface::Override.new :virtual_path  => "spree/email_sender/send_mail",
  :replace => "[data-hook='send_mail_fields']",
  :partial => 'email_sender/fields'
