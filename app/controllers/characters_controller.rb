class CharactersController < ApplicationController
  def index
    @characters = Character.all
  end

  def show
    @character = Character.find(params[:id])
  end

  def new
    @character = Character.new
  end

  def create
    @character = Character.new

    if @character.save
      redirect_to @character
    else
      render :new
    end
  end

  private

  def character_params
    params.require(:character).permit(
      :name,
      :char_class,
      :level,
      :race,
      :background,
      :alignment,
      :experience_points,
      :languages,
      :equipment,
      :features,
      :character_details,
      :copper,
      :silver,
      :gold,
      :platinum,
      :treasure
    )
  end
end
