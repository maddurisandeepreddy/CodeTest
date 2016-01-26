require 'test_helper'

class CustomersControllerTest < ActionController::TestCase

  def setup 
    @customer= Customer.create(:name => "New Customer")
  end

  test "should get show" do
    get :show , :id => @customer.id
    assert_response :success 
  end

  test "should get index" do
    get :index
    assert_response :success
  end

end
