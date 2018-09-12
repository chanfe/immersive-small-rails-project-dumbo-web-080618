class CreateCards < ActiveRecord::Migration[5.2]
  def change
    create_table :cards do |t|
      t.string :name
      t.string :description
      t.integer :mana_cost
      t.integer :theme_set_id
      t.string :pic_url
      t.integer :att
      t.integer :def
      

      t.timestamps
    end
  end
end
