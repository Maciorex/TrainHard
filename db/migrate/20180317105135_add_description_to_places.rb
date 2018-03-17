class AddDescriptionToPlaces < ActiveRecord::Migration[5.1]
  def change
  	create_table :places do |t|
      t.string :city
      t.string :street
      t.string :where 
      t.datetime :dateoftraining
      t.integer :time
      t.timestamps
    end
  end
end
