class ImagesController < ApplicationController
  before_action :authorize

  def main_id
    User.find(current_user.id).update_attribute(:main_id, nil)
    flash[:notice] = "Main Id deleted."
    render "main_id"
  end

  def serious_photo
    user = current_user
    user.remove_serious_photo!
    user.save
    redirect_to edit_user_path
  end
end
