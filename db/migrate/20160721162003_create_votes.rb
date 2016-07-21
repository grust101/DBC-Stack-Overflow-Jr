class CreateVotes < ActiveRecord::Migration
  def change
     create_table :votes do |t|
      t.boolean :vote, :null => false
      t.integer :question_id, :null => false
      t.integer :answer_id, :null => false
      t.integer :response_id, :null => false


      t.timestamps(null: false)
  end
end
