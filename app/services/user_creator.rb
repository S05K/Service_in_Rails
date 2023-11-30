class UserCreator
    def initialize(user_params)
       @user_params  = user_params
    end
        
    def list
        @users = User.all
    end


    def call
        @user = User.new(@user_params) 
        if @user.save
            return { success: true, user: @user }
        else
            return { success: false, errors: @user.errors.full_messages }
        end
    end
end