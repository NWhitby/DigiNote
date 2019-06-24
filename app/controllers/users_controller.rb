class UsersController < ApplicationController

 get '/login' do
   if !logged_in?
     erb :'/users/login'
   else
     redirect to '/notes'
   end
 end

 post '/login' do
   user = User.find_by(username: params[:username])
   if user && user.authenticate(params[:password])
     session[:user_id] = user.id
     redirect to '/notes'
   else
     redirect to '/login'
   end
 end


end
