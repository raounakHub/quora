class LandingController < ApplicationController
  def index
    @questions = Question.all
  end
end
