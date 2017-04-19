# Data for teams
Team.create!([
  {sport_name: "American football"},
  {sport_name: "Basketball"},
  {sport_name: "Baseball"},
  {sport_name: "Soccer"},
  {sport_name: "Ice hockey"},
])
#Data for members
Member.create!([
  {first_name: "Mark", last_name:"Davidson", email: "mark.d@gmail.com", password_digest: "", height: "170cm", weight: "110lb"},
  {first_name: "Drea", last_name:"Afable", email: "drea.a@gmail.com", password_digest: "", height: "150cm", weight: "120lb"},
  {first_name: "Liam", last_name:"Willey", email: "liam.willey@gmail.com", password_digest: "", height: "180cm", weight: "130lb"},
  {first_name: "Steen", last_name:"Chris", email: "steen.c@gmail.com", password_digest: "", height: "160cm", weight: "125lb"},
  {first_name: "O'Hoon", last_name:"D", email: "o.hoon.d@gmail.com", password_digest: "", height: "175cm", weight: "130lb"},
  {first_name: "Bhanu", last_name:"Shruti", email: "bhanu.shruti@gmail.com", password_digest: "", height: "175cm", weight: "130lb"},
])
#data for which member is interested in which sport
InterestedSport.create!([
  {team_id:1 ,member_id:1},
  {team_id:2 ,member_id:1},
  {team_id:3 ,member_id:1},
  {team_id:1 ,member_id:2},
  {team_id:1 ,member_id:3},
  {team_id:2 ,member_id:3},
  {team_id:3 ,member_id:4},
  {team_id:4 ,member_id:1},
  {team_id:4 ,member_id:2},
  {team_id:1 ,member_id:5},
  {team_id:2 ,member_id:5},
  {team_id:4 ,member_id:5},
  {team_id:5 ,member_id:5},
  ])