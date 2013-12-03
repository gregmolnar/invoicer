class Address < ActiveRecord::Base
  belongs_to :client
  belongs_to :user
  has_many :invoices, :dependent => :restrict_with_error
end
