class Expense < ActiveRecord::Base
  has_attached_file :file, :path => ":rails_root/system/:attachment/:id/:filename"
  do_not_validate_attachment_file_type :file

  default_scope { order('"date" desc') }
end
