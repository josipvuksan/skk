class UsersController < ApplicationController
  def new
    @user=User.new
  end

  def show
    @user=User.find(params[:id])
    @trips=@user.trips.paginate(page: params[:page])
  end

  def create
    @user=User.new(user_params)
    if @user.save
      log_in @user
      flash[:success]="Welcome to the SKK application. You have successfully registered!"
      redirect_to @user
    else
      render 'new'
    end
  end

  private
    def user_params
      params.require(:user).permit(:full_name, :email, :password, :password_confirmation)
    end
end
