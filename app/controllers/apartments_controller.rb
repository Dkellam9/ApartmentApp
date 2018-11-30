class ApartmentsController < ApplicationController
  before_action :authenticate_user!, only: [:update, :destroy]
  before_action :set_apt, only: [:show, :update, :destroy]

  def index
    apartments = Apartment.all
    render json: apartments
  end

  def show
    render json: @apartment
  end

  def create
    @apartment = Apartment.new(apartment_params)
    if @apartment.valid?
      @apartment.save
      render json: @apartment, status: :created
    else
      render json: @apartment.errors, status: :unprocessable_entity
    end
  end

  private
  def set_apt
    @apartment = Apartment.find(params[:id])
  end

  def apartment_params
    params.require(:apartment).permit(:address1, :address2, :city, :state, :postalcode, :managername, :managerphone, :managerhours, :user_id)
  end
end
