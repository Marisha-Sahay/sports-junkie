class AddOrgIdinMember < ActiveRecord::Migration[5.0]
  def change
    add_column :members, :organization_id, :integer
  end
end
