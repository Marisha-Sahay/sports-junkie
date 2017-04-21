class CreateMatches < ActiveRecord::Migration[5.0]
  def change
    create_table :matches do |t|
      t.integer :team_id
      t.date :date_of_match
      t.boolean :won
      t.string :opponent
      t.timestamps
    end
  end
end
