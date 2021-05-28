class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @animals = Animal.all
    @location = User.pluck(:address).uniq
    @species = Animal.pluck(:species).uniq
    render layout: 'home'
  end
end
