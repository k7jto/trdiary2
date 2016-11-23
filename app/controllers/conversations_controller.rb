class ConversationsController < ApplicationController
    def index
        @conversations = Conversation.all
    end
    
    def show
        @conversation = Conversation.find(params[:id])
    end
    
    def new
        @uuid = SecureRandom.uuid
        @conversation = Conversation.new
    end
    
    def create
        @conversation = Conversation.new(conversation_params)
        
        if @conversation.save
            redirect_to @conversation
        else
            @uuid = SecureRandom.uuid
            render 'new'
        end
    end
    
    private
        def conversation_params
            params.require(:conversation).permit(:uuid)
        end
end
