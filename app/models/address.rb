class Address < ActiveRecord::Base
  has_many :address_contacts
  has_many :addresses, through: :address_contacts
end
