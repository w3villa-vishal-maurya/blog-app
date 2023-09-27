class LoginsController < ApplicationController
    def index
    end

    def new
    end

    def create
        user = authenticate(params[:email], params[:password])

        if user != nil
            log_in user
            redirect_to users_path
        else
            redirect_to signin_path
        end        
    end
end
