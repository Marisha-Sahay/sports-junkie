class CreateMemberTeamAggs < ActiveRecord::Migration[5.0]
  def change
    create_table :member_team_aggs do |t|
      t.integer :team_id
      t.integer :member_id
      t.date :last_match_played
      t.date :first_match_played
      t.integer :no_of_matches_played
      t.timestamps :duration_in_mins
    end
  end
end
