class WelcomeController < ApplicationController
  skip_before_action :login_required, only: [:mobile] 

  def index
  end

  def mobile
    render layout: 'mobile'
  end
end
