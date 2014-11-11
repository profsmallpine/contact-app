class Company < ActiveRecord::Base
  has_many :company_contacts
  has_many :contacts, through: :company_contacts

  has_one :sister_company, class_name: "Company"

  validates :name, presence: true
end
