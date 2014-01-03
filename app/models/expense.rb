class Expense < ActiveRecord::Base
  has_attached_file :file, :path => ":rails_root/system/:attachment/:id/:filename"
  default_scope { order('"date" desc') }
end
