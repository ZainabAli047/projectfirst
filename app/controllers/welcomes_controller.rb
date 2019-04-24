class WelcomesController < ApplicationController
  before_action :authenticate_user! 

  def edit
    @profile = current_user.profile
  end

  def update
    if photo_params[:pics].present?
      photo_params[:pics].each do |pic|
        current_user.profile.photos.create(pics: pic)
      end
    end

    if current_user.profile.update(profile_params)
      redirect_to root_path
    else
      redirect_to edit_welcome_path(current_user.profile)
    end
  end

  def create
    byebug
    @photo = current_user.profile.photos.new(photo_params)
    if @photo.save
      @photo.photo_params.create!()
     end 
  end


  private
  def profile_params
    params.require(:profile).permit(:first_name, :last_name, :age, :about, :email, :gender, :avatar, :my_avatar, hobbies: [])
  end

  def photo_params
    params.require(:profile).permit(pics: [])
  end
end
