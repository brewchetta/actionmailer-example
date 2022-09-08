class LinkViewsController < ApplicationController
  include ActionView::Layouts
  include ActionController::Rendering

  def validate_email
    @user = User.find_by(id: params[:id])
    @user.update(validate_email: true)
    render "validate_email"
  end

end
