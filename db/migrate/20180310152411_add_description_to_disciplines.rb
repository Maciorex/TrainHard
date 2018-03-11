class AddDescriptionToDisciplines < ActiveRecord::Migration[5.1]
  def change
    add_column :disciplines, :description, :text
  end
end
