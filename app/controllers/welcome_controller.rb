class WelcomeController < ApplicationController
  def index
  	@environment_variable_test = ENV['TEST']
  end
end
