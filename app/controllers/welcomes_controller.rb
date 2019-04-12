class WelcomesController < ApplicationController
  before_action :authenticate_user! 

  def edit
    @profile = current_user.profile
  end

  def update
    debugger
    if current_user.profile.update(profile_params)
      redirect_to root_path
    else
      redirect_to edit_welcome_path(current_user.profile)
    end
  end

  private
  def profile_params
    params.require(:profile).permit(:first_name, :last_name, :age, :about, :email, :gender, :avatar, hobbies: [])
  end
end
