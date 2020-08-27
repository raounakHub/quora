class LandingController < ApplicationController
  def index
    @questions = Question.includes(:answers).all
  end
end
