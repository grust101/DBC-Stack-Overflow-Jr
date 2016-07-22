class CreateResponses < ActiveRecord::Migration
	def change
		create_table :responses do |t|
			t.string :content, :null => false
			t.integer :user_id, null: false
			t.integer :respondable_id
			t.string :respondable_type



			t.timestamps(null: false)
		end
		add_index :responses, [:respondable_id, :respondable_type]
	end
end
