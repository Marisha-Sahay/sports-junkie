class AddColumnToMember < ActiveRecord::Migration[5.0]
  def change
    add_column :members, :privat, :boolean
    add_column :members, :turned_pro, :date
  end
end
