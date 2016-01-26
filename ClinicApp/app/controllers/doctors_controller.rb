class DoctorsController < ApplicationController
  def new
    @doctor = Doctor.new
    @doctor.profile = Profile.new
  end

  def create
    @doctor = Doctor.new(doctor_params)
    if @doctor.save
      redirect_to doctors_path
    else
      render :new
    end
  end

  def index
    @doctors = Doctor.includes(:profile).all
  end

  private
  def doctor_params
    params.require(:doctor).permit(:name, profile_attributes: [:address, :city , :zip])
  end
end
