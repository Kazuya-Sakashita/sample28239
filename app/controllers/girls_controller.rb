class GirlsController < ApplicationController
  def index
    @girls = Girl.includes(:schedules).order(:id).all
    @girls.each do |girl|
      girl.schedules = girl.schedules.sort_by(&:date)
    end
  end
end
