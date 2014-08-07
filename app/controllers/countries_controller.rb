class CountriesController < ApplicationController

  def index
    @countries = Country.all
  end

  def show
    @country = Country.find_by(id: params[:id])
  end

  def new
  end

  def create
    @country = Country.new
    @country.title = params[:title]
    @country.image = params[:image]
    @country.gdp = params[:gdp]
    @country.unemployment_rate = params[:unemployment_rate]
    @country.literacy_rate = params[:literacy_rate]
    @country.minimum_wage = params[:minimum_wage]
    @country.average_age = params[:average_age]
    @country.average_income = params[:average_income]
    @country.government_type = params[:government_type]
    @country.head_of_state = params[:head_of_state]
    @country.debt = params[:debt]
    

    if @country.save
      redirect_to "/countries/#{ @country.id }"
    else
      render 'new'
    end
  end

  def edit
    @country = Country.find_by(id: params[:id])
  end

  def update
    @country = Country.find_by(id: params[:id])
    @country.title = params[:title]
    @country.image = params[:image]
     @country.gdp = params[:gdp]
    @country.unemployment_rate = params[:unemployment_rate]
    @country.literacy_rate = params[:literacy_rate]
    @country.military_budget = params[:military_budget]
    @country.minimum_wage = params[:minimum_wage]
    @country.average_age = params[:average_age]
    @country.average_income = params[:average_income]
    @country.government_type = params[:government_type]
    @country.head_of_state = params[:head_of_state]
    @country.debt = params[:debt]

    if @country.save
      redirect_to "/countries/#{ @country.id }"
    else
      render 'edit'
    end
  end

  def destroy
    @country = Country.find_by(id: params[:id])
    @country.destroy


    redirect_to "/countries"
  end
end
