class UsersController < ApplicationController

    # method for finding the session for the logged in user
    def show 
        user = User.find(session[:user_id]) # query/finding the session for the user_id
        
        if user
            render json: user # returning the user details within the session
        else
            render json: { error: "Not authorized"}, status: :unauthorized
            # sending an error message if the user was unauthorized
        end
        
    end

end
