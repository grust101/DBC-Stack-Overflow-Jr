class CreateResponses < ActiveRecord::Migration
  def change
     create_table :responses do |t|
      t.string :content, :null => false
      t.integer :comment_id, :null => false


      t.timestamps(null: false)
  end
end
