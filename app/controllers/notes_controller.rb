class NotesController < ApplicationController

  def index
    @card = Card.find(params[:card_id])
    @notes = @card.notes
  end

  def new
    @card = Card.find(params[:card_id])
    @note = Note.new
  end

  def create
    @card = Card.find(params[:card_id])
    @note = Note.new(permitted_params)
    @note.card = @card
    @note.doctor = Doctor.first
    if @note.save
      redirect_to card_notes_path(@card)
    else
      render :new
    end
  end

  private

  def permitted_params
    params.require(:note).permit(:note)
  end

end
