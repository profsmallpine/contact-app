class Contact < ActiveRecord::Base
  has_many :phone_number_contacts
  has_many :phone_numbers, through: :phone_number_contacts

  has_many :company_contacts
  has_many :companies, through: :company_contacts

  has_many :address_contacts
  has_many :addresses, through: :address_contacts

  has_many :relationships, foreign_key: :contact1
end
