class TrainingsCreate < ActiveRecord::Migration[5.1]
  def change
    create_table :trainings do |t|
      t.string :name
      t.datetime :dateoftraining
      t.integer :distance_meters
      t.integer :trainingtime_minutes
      t.integer :intensitylevel
      t.timestamps
    end
  end
end
