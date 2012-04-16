class Spree::Affiliate < ActiveRecord::Base
  belongs_to :partner, :class_name => "User", :foreign_key => :partner_id
  belongs_to :user
  has_many :events, :class_name => "AffiliateEvent"
  
  scope :joined, where("user_id IS NOT null")

  def name
    I18n.t(:affiliate_program)
  end

  def ref_id
    partner ? partner.ref_id : ''
  end
end
