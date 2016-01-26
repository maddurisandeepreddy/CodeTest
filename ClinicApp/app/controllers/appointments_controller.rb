class AppointmentsController < ApplicationController
  before_filter :doctors
  before_filter :customers

  def index
    @appointments = Appointment.all
  end

  def new
    @appointment = Appointment.new()
  end

  def create
    @appointment = Appointment.new(permited_params)
    if @appointment.save
      redirect_to appointments_path
    else
      render :new
    end
  end

  def show
    @appointment = Appointment.find(params[:id])
  end

  private
  def permited_params
    params.require(:appointment).permit(:customer_id, :doctor_id, :pet, :send_remider, :reason, :visit_date)
  end

  def doctors
    @doctors = Doctor.all
  end
  def customers
    @customers = Customer.all
  end

end
