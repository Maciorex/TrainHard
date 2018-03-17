class AddDisciplineidToTraining < ActiveRecord::Migration[5.1]
  def change
    add_column :trainings, :discipline_id, :integer
    add_index  :trainings, :discipline_id
  end
end
