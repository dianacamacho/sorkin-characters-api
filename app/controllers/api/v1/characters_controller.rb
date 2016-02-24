class Api::V1::CharactersController < ApplicationController
  def index
    @characters = Character.all
  end

  def create
    @character = Character.create(
      first_name: params[:first_name],
      last_name: params[:last_name],
      job_title: params[:job_title], 
      actor_first_name: params[:actor_first_name],
      actor_last_name: params[:actor_last_name],
      show: params[:show])

      render :show
  end

  
  def show 
    @character = Character.find(params[:id])
  end

  def update
    @character = Character.find(params[:id])

    @character.update(
      first_name: params[:first_name],
      last_name: params[:last_name],
      job_title: params[:job_title], 
      actor_first_name: params[:actor_first_name],
      actor_last_name: params[:actor_last_name],
      show: params[:show])

      render :show
  end

  def destroy
    @character = Character.find(params[:id])
    @character.destroy

    render json: {message: "Character deleted"}
  end


end
