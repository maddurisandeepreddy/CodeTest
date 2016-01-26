require 'test_helper'

class DoctorsControllerTest < ActionController::TestCase
  
  def valid_params
    {
      :name => "Bob",
      :city => "NYC",
      :state => "NY"
    }
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:doctors)
  end

  test "should get new" do
    get :new
    assert_response :success
    assert_not_nil assigns(:doctor)
  end

  test "should get create" do
    get :create , :doctor => valid_params
    assert_response :redirect
  end

end
