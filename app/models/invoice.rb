class Invoice < ActiveRecord::Base
  belongs_to :client
  belongs_to :invoice_status
  has_many :invoice_items
  validates_presence_of :client_id, :date, :due_date, :invoice_number, :user_address, :invoice_status
  accepts_nested_attributes_for :invoice_items, allow_destroy: true
  after_initialize :set_invoice_number
  belongs_to :user_address, class_name: Address, foreign_key: :address_id
  default_scope { order('"date" desc') }

  def set_invoice_number
    return unless self.new_record?
    prev = Invoice.order('created_at desc').first
    if prev.nil?
      self.invoice_number ||= 1
    else
      self.invoice_number = prev.invoice_number.gsub(/\d+/){|m| m.to_i+1}
    end
  end

  def total
    total = 0
    invoice_items.each do |item|
      total += item.price * item.quantity
    end
    total
  end
end
