class AddColumnToUser < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :name, :string
    add_column :users, :gender, :integer,default:0
  end
end
