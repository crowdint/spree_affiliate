Spree::AppConfiguration.class_eval do
	preference :sender_credit_on_register_amount, :integer
	preference :recipient_credit_on_register_amount, :integer
	preference :sender_credit_on_purchase_amount, :integer
	preference :recipient_credit_on_purchase_amount, :integer
end