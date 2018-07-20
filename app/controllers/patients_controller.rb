class PatientsController < ApplicationController
  before_action :set_patient, only: :show

  def index
    @patients = Patient.all
  end

  def show
    @card = @patient.cards
  end

  def create
    @patient = Patient.new(permitted_params)

    if @patient.save
      Card.create(patient_id: @patient.id)
      redirect_to root_path
    else
      render :new
    end
  end

  def new
    @patient = Patient.new
  end

  private

  def permitted_params
    params.require(:patient).permit(:first_name, :last_name, :middle_name, :gender, :birth_date, :telephone, :living_place)
  end

  def set_patient
    @patient = Patient.find(params[:id])
  end
end
