class NotesController < ApplicationController

  get '/notes' do
   redirect_if_not_logged_in
   @notes = Note.all
   erb :'/notes/notes'
 end

 get '/notes/new' do
   redirect_if_not_logged_in
   erb :'/notes/new'
 end

 post '/notes' do
   if logged_in?
     if params["note"]["title"] == "" || params["note"]["content"] == ""       
       redirect to '/notes/new'
     else
       @user = current_user
       @note = Note.create(title: params["note"]["title"], content: params["note"]["content"], user_id: session[:user_id])
       if @note.save
         @user.notes << @note
         redirect to '/notes'
       else
         redirect to '/notes/new'
       end
     end
   else
     redirect to '/login'
   end
 end


end
