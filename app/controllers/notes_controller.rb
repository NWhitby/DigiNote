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

 get '/notes/:id/edit' do
   redirect_if_not_logged_in
   @note = Note.find_by(id: params[:id])
   if @note && @note.user == current_user
     erb :'/notes/edit'
   else
     redirect to '/notes'
   end
 end

 patch '/notes/:id' do
 redirect_if_not_logged_in
   if params["note"]["title"] == "" || params["note"]["content"] == ""
     redirect to '/notes/:id/edit'
   else
     @note = Note.find_by(id: params[:id])
     if @note && @note.user == current_user
       if @note.update(title: params["note"]["title"], content: params["note"]["content"])
         redirect to '/notes'
       else
         redirect to '/notes'
       end
     end
   end
 end

 delete '/notes/:id/delete' do
   redirect_if_not_logged_in
   @note = Note.find_by(id: params["id"])
     if @note && @note.user == current_user
       @note.destroy
     end
   redirect to '/notes'
 end

 delete '/notes/:id/delete' do
   redirect_if_not_logged_in
   @note = Note.find_by(id: params["id"])
     if @note && @note.user == current_user
       @note.destroy
     end   
   redirect to '/notes'
 end

end
