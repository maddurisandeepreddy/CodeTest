class CustomersController < ApplicationController

  def index
    @customers = Customer.includes(:appointments).all
  end

  def new
    @customer =Customer.new
  end
  
  def create
    @customer = Customer.new(permited_params)
    if @customer.save
      redirect_to customers_path
    else
      render :new
    end
  end

  private
  def permited_params
    params.require(:customer).permit(:name)
  end
end
