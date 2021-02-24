class AddNewColumnToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :short_url, :string
  end
end
