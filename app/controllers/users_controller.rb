    class UsersController < ApplicationController  
      def index  
	  #@user = User.find(params[:user_id])
       @users = User.all(:include => :posts, :order => "created_at DESC")

      end  
      
      def show  
        @user = User.find(params[:id]) 
      end  
        
    end  