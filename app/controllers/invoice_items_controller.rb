class InvoiceItemsController < ApplicationController
  def index
    @invoice_items = InvoiceItem.where("name like ?", "%#{params[:term]}%")
  end
end
