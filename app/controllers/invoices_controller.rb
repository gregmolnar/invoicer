class InvoicesController < ApplicationController
  inherit_resources
  respond_to :pdf, only: :show

  def new
    @invoice = Invoice.new
    super
  end

  def create
    @invoice = Invoice.new(permitted_params)
    @invoice.user_address = current_user.default_address
    create!
  end

  def show
    super do |format|
      @address = []
      [:address, :address2, :city, :county, :country, :postcode, :phone, :fax, :mobile, :website].each do |field|
        value = @invoice.user_address.send(field)
        @address<< value unless value.blank?
      end
      @bill_to = []
      [:name, :address, :address2, :city, :county, :country, :postcode].each do |field|
        value = @invoice.send(field)
        @bill_to<< value unless value.blank?
      end
      format.pdf { render pdf: "invoice##{@invoice.invoice_number}", layout: 'pdf.html' }
    end
  end

  private
    def permitted_params
      params.require(:invoice).permit([:date, :client_id, :invoice_number, :due_date ,:name ,:address ,:address2 ,:city ,:county ,:country ,:tax_number, :invoice_status_id, :invoice_items_attributes => [:name, :description, :tax_rate_id, :quantity, :unit, :price, :_destroy, :id], :invoice_items => [:name, :description, :tax_rate_id, :quantity, :unit, :price, :_destroy]])
    end
end
