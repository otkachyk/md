class CardsController < ApplicationController

def index
  @patient = Patient.find(params[:patient_id])
  @cards = Card.where(patient_id: @patient.id)
end

def show
  @card = Card.find(params[:id])
end
end
