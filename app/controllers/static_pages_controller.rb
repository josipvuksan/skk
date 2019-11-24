class StaticPagesController < ApplicationController
    def home
        @trip=current_user.trips.build if logged_in?
    end
  
    def about
    end


end
