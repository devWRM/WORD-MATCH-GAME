class GameboardsController < ApplicationController
  before_action :set_gameboard, only: [:show, :update, :destroy]

  # GET /gameboards
  def index
    @gameboards = Gameboard.all

    render json: @gameboards
  end

  # GET /gameboards/1
  def show
    render json: @gameboard
  end

  # POST /gameboards
  def create
    @gameboard = Gameboard.new(gameboard_params)

    if @gameboard.save
      render json: @gameboard, status: :created, location: @gameboard
    else
      render json: @gameboard.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /gameboards/1
  def update
    if @gameboard.update(gameboard_params)
      render json: @gameboard
    else
      render json: @gameboard.errors, status: :unprocessable_entity
    end
  end

  # DELETE /gameboards/1
  def destroy
    @gameboard.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gameboard
      @gameboard = Gameboard.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def gameboard_params
      params.fetch(:gameboard, {})
    end
end
