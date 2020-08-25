class LandingController < ApplicationController
  def index
    @questions = Question.joins(:answers).all
  end
end
