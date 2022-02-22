class EventsController < ApplicationController
    before_action :authenticate_user, only: [:index]
    def index
        params[:event_array] = Event.all
        
    end
    
    def show
        
    end
    
    def new
                                      
    end

    def create
        
        @event = Event.new(
                'start_date' => params[:start_date],
                'duration' => params[:duration],
                'title' => params[:title],
                'description' => params[:description],
                'price' => params[:price],
                'location' => params[:location],
        )
        #@event.admin_id = current_user.id
                #'user_id' => User.find_by(id: session[:user_id]).id)
               
             if @event.save
                puts "c'est sauvegardé"
                redirect_to event_path
             else
                puts "error"
                render 'new'
             end
    end
    
    
    def edit
    end
    
    def update
    end
    
    def destroy
    end
    
    def authenticate_user

    end
    
end