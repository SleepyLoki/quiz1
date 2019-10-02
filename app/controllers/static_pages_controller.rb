class StaticPagesController < ApplicationController
  def index
    @country = Country.order("RANDOM()").first
  end
end
