class CreateNotes < ActiveRecord::Migration
  def change
   create_table :notes do |t|
     t.string :title
     t.string :content
     t.integer :user_id
   end
 end
end
