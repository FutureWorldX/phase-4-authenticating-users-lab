class SessionsController < ApplicationController

    # method to create a new session for a user (login)
    def create 
        user = User.find_by(username: params[:username])
        session[:user_id] = user.id # sets the user ID in the session
        render json: user # returns the logged in user
    end

    # method to destroy/delete/close the session for the logged in user (logout)
    def destroy 
        session.delete :user_id # deletes the user ID from the session
        head :no_content # returns no content
    end

end
