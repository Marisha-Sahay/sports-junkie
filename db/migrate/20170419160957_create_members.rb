class CreateMembers < ActiveRecord::Migration[5.0]
  def change
    create_table :members do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :height
      t.string :weight
      t.timestamps
    end
  end
end
