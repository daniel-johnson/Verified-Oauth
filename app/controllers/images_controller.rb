class ImagesController < ApplicationController
  before_action :authorize

  def main_id
    user = current_user
    user.remove_main_id!
    user.save
    redirect_to edit_user_path
  end

  def supporting_id
    result = current_user.supporting_ids[params[:id].to_i].try(:purge)
    if result
      redirect_to edit_user_path
    else
      redirect_to edit_user_path, alert: "Error deleting supporting id"
    end
  end

  def serious_photo
    user = current_user
    user.remove_serious_photo!
    user.save
    redirect_to edit_user_path
  end

  def silly_photo
    user = current_user
    user.remove_silly_photo!
    user.save
    redirect_to edit_user_path
  end

  def intro_video
    user = current_user
    user.remove_intro_video!
    user.save
    redirect_to edit_user_path
  end


  def supporting_ids(id)
    if id == "all"
      flash[:notice] = "All Supporting Id Photo Deleted"
      redirect_to( user_edit_path )
    else
      current_user.supporting_ids.find(id).destroy
      redirect_to( :edit )
    end
  rescue
    flash[:warning] = "Deletion not successful. Photo doesn't appear to exist."
    redirect_to user_edit_path
  end
end
