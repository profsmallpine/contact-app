class CompanyContact < ActiveRecord::Base
  belongs_to :company
  belongs_to :contact

  validates :company_id, :contact_id, presence: true
end
