class CreateOrgSports < ActiveRecord::Migration[5.0]
  def change
    create_table :org_sports do |t|
      t.integer :team_id
      t.integer :organization_id
      t.timestamps
    end
  end
end
