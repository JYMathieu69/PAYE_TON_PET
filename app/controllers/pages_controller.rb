class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @animals = Animal.all
    @location = User.pluck(:address).uniq
    @species = Animal.pluck(:species).uniq
    @date1 = Time.now + 1.days
    render layout: 'home'
  end
end
