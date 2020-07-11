class Api::PlayersController < ApplicationController
  def index
    @players = Player.all
    render 'index.json.jb'
  end

  def show
    @player = Player.find_by(id: params[:id])
    render 'show.json.jb'
  end

  def create
    @player = Player.new(
      full_name: params[:full_name],
      age: params[:age],
      team: params[:team],
      position: params[:position],
      college: params[:college]
    )
    @player.save
    render 'show.json.jb'
  end

  def update
    @player = Player.find_by(id: params[:id])
    @player.update(
      full_name: params[:full_name] || @player.full_name,
      age: params[:age] || @player.age,
      team: params[:team] || @player.team,
      position: params[:position] || @player.position,
      college: params[:college] || @player.college
    )
    @player.save
    render 'show.json.jb'
  end
end
