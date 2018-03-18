class RenameColumnsInTrainings < ActiveRecord::Migration[5.1]
  def change
    rename_column :trainings, :dateoftraining, :date_of_training
    rename_column :trainings, :trainingtime_minutes, :time_in_minutes
  end
end
