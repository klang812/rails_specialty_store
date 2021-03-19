class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :cost
      t.string :country_of_origin
  
      t.timestamps
    end
  end

  def drop
    drop_table :projects
  end
end

