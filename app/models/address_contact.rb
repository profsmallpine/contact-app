class AddressContact < ActiveRecord::Base
  belongs_to :contact
  belongs_to :address
end
