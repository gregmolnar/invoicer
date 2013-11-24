class InvoiceItemsController < ApplicationController
  def index
    @invoice_items = InvoiceItem.where("name like ?", "%#{params[:term]}%").select(:name, :price, :unit, :description).group([:name, :price, :unit, :description])
  end
end
