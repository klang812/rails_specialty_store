class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :name
      t.integer :cost
      t.string :country_of_origin

      t.timestamps
    end
  end
end
