Spree::User.class_eval do

  has_many :affiliates, :foreign_key => "partner_id"
  has_one :affiliate_partner, :class_name => "Affiliate", :foreign_key => "user_id"

  def partner
    affiliate_partner.partner
  end

  def find_or_create_affiliate
    Spree::Affiliate.where(:partner_id => self.id, :affiliate_email => nil).first ||
      Spree::Affiliate.create(:partner => self)
  end
end
