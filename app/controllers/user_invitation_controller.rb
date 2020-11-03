class UserInvitationController < ApplicationController

  def create
    flash[:notice] = "Invitation sent successfully"
  end
  
end
