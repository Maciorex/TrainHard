class PlaceTable < ActiveRecord::Migration[5.1]
  def change
    create_table :placetable do |t|
      t.string :country, null: false, default: ""
      t.string :city, null: false, default: ""
      t.string :resort, null: false, default: ""
      t.string :otherPlace, null: false, default: ""
      t.string :gpsCoordinates, null: false, default: ""
  end
end
end
