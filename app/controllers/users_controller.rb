class UsersController < ApplicationController

  def index
    @users = User.all

    render("users/index.html.erb")
  end

def show
  @user = User.find_by(params[:id])

  render("users/show.html.erb")
end

end
