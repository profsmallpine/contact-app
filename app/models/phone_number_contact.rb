class PhoneNumberContact < ActiveRecord::Base
  belongs_to :contact
  belongs_to :phone_number

  validates :phone_number_id, :contact_id, presence: true
end
