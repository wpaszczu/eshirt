class PagesController < ApplicationController
  def home
    if current_user
    redirect_to shirts_path
    end
  end

  def dashboard
    @shirts = current_user.shirts
  end


end
