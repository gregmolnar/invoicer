class Client < ActiveRecord::Base
  has_many :addresses, dependent: :destroy
end
