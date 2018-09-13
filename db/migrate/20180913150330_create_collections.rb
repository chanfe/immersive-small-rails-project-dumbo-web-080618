class CreateCollections < ActiveRecord::Migration[5.2]
  def change
    create_table :collections do |t|
      t.integer :card_id
      t.integer :user_id 
      t.integer :amount

      t.timestamps
    end
  end
end
