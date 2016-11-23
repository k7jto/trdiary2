class ThreadsController < ApplicationController
    def new
        @threadUUID = SecureRandom.uuid
    end
    
    def create
        render plain: params[:thread].inspect
    end
end
