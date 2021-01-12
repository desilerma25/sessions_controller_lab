class SessionsController < ApplicationController

    def new

    end

    def create
        if params[:name] && params[:name] != "" #if name is NOT nil or empty
            session[:name] = params[:name] # set session
            redirect_to '/' 
        else
            redirect_to '/login'
        end
    end

    def destroy
        session.destroy
        redirect_to '/'
    end
end
