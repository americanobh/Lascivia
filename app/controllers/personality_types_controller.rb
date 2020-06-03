class PersonalityTypesController < ApplicationController
    skip_before_action :authenticate_user!, only: [:show, :valente]
    before_action :find_personality, only: %i[show]

  def index
    @personalities = PersonalityType.all
  end


  def show; end

  def valente; end


  private

  def personality_params
    params.require(:personality_type).permit(:name, :description)
  end

  def find_personality
    @personality = PersonalityType.first
  end
end
