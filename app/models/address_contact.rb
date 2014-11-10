class AddressContact < ActiveRecord::Base
  belongs_to :contact
  belongs_to :address

  validates :address_id, :contact_id, presence: true
end
