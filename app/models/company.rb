class Company < ActiveRecord::Base
  has_many :company_contacts
  has_many :contacts, through: :company_contacts

  has_many :sister_companies, class_name: "Company"

  validate :name, presence: true
end
