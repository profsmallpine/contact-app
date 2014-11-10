class Relationship < ActiveRecord::Base
  validates :contact1, :contact2, :type, presence: true
end
