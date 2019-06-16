class SessionsController < ApplicationController 
    def index
    end

    def new
    end

    def create
        session[:name] = params[:name]
        if session[:name] == ''
            redirect_to '/login'
        elsif session[:name] == nil
            redirect_to '/login'
        else
            redirect_to '/'
        end
    end

    def destroy
        session.delete :name
    end

end