class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :title, limit: 64
      t.string :description, limit: 256
      t.text :ingredient_list
      t.text :instruction

      t.timestamps
    end
  end
end
