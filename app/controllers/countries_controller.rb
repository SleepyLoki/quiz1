class CountriesController < ApplicationController
  def new
    @country = Country.new
  end

  def create
    @country = Country.create(country_params)
    if @country.invalid?
      flash[:error] = '<strong>Could not save</strong> the data you entered is invalid.'
    end
    redirect_to root_path
  end

  private

  def country_params
    params.require(:country).permit(:countries)
  end
end
