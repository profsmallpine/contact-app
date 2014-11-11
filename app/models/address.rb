class Address < ActiveRecord::Base
  has_many :address_contacts
  has_many :addresses, through: :address_contacts

  validates :address_type, :street, :city, :state, :zip_code, presence: true
  validates :zip_code, length: { is: 5 }
end
