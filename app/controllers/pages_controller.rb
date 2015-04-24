class PagesController < ApplicationController
  def index
    if user_signed_in?
      if current_user.admin?
        redirect_to users_path
      elsif current_user.teacher?
      else
      end
    else
      redirect_to new_user_session_path
    end
  end
end
