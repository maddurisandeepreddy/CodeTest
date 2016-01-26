require 'test_helper'

class AppointmentsControllerTest < ActionController::TestCase

  def setup
    @c = Customer.create({:name => "Customer one"})
    @d = Doctor.create({:name => "Mr. Doctor1"})
    @valid_params = {
      customer_id: "#{@c.id}",
      doctor_id: "#{@d.id}",
      pet: "Dog",
      visit_date: "#{(Time.now+1.day).strftime("%F %T")}" ,
      send_remider: false,
      reason: "my reason",
    }
  end

  test "should get create" do
    get :create , appointment: @valid_params
    assert_response :redirect
  end

  test "should get show" do
    appointment = appointments(:one)
    get :show , id: appointment.id
    assert_response :success
    assert_not_nil assigns(:appointment)
  end

end
