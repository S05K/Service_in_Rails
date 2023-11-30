class UsersController < ApplicationController

include MyConcern

  def index
    res1 = UserCreator.new(user_params)
    ans = res1.list
    render json: ans
  end

    def create
        user = UserCreator.new(user_params)
        result = user.call

        if result[:success]
            render json: { user: result[:user] }, status: :created
        else
            render json: { errors: result[:errors] }, status: :unprocessable_entity
        end
    end

	
    private
    def user_params
        params.require(:user).permit(:name, :email)
    end

end
