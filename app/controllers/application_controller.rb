class ApplicationController < ActionController::Base
  def verify_authentication
    return if current_user

    respond_to do |format|
      format.html { redirect_to root_path, notice: 'Please sign in first' }
      format.json { render json: {message: 'Please sing in first'} && return }
    end
  end


  def authroized(resource: nil)
    return if current_user.id.eql?(resource.user_id)

    respond_to do |format|
      format.html { redirect_to root_path, notice: 'Not Authorized' }
      format.json { render json: {message: 'Not Authorized'} && return }
    end
  end
end
