class RenameTable1 < ActiveRecord::Migration[5.1]
  def change
    rename_table :plases, :places
  end
end
