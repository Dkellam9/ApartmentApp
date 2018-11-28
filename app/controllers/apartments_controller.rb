class ApartmentsController < ApplicationController
  before_action :authenticate_user!, only: [:create, :update, :destroy]
  before_action :set_apt, only: [:show, :update, :destroy]

  def index
    apartments = Apartment.all
    render json: apartments
  end

  private
  def set_apt
    @apartment = Apartment.find(params[:id])
  end
end
