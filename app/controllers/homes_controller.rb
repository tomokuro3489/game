class HomesController < ApplicationController
    def index
        @register = Register.all.sort {|a,b| b.liked_users.count <=> a.liked_users.count}.first(3)
      end 
 
      def show
        @register = Register.find(params[:id])
      end
end
