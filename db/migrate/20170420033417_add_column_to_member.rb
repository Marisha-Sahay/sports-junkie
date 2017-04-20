class AddColumnToMember < ActiveRecord::Migration[5.0]
  def change
    add_column :members, :private, :boolean
    add_column :members, :date_participation, :date
    add_column :members, :sport_participation, :string
    add_column :members, :duration_of_participation, :string
  end
end
