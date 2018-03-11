class RenameTable < ActiveRecord::Migration[5.1]
  def change
    rename_table :placetable, :plases
  end
end
