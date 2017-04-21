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
  {first_name: "Mark", last_name:"Davidson", email: "mark.d@gmail.com", height: "170cm", weight: "110lb", privat: false, turned_pro: "2015-04-20"},
  {first_name: "Drea", last_name:"Afable", email: "drea.a@gmail.com", height: "150cm", weight: "120lb", privat: false, turned_pro: "2017-01-01"},
  {first_name: "Liam", last_name:"Willey", email: "liam.willey@gmail.com", height: "180cm", weight: "130lb", privat: false, turned_pro: "2016-04-25"},
  {first_name: "Steen", last_name:"Chris", email: "steen.c@gmail.com", height: "160cm", weight: "125lb", privat: true, turned_pro: "2010-03-05"},
  {first_name: "O'Hoon", last_name:"D", email: "o.hoon.d@gmail.com", height: "175cm", weight: "130lb", privat: false, turned_pro: "2012-03-14"},
  {first_name: "Bhanu", last_name:"Shruti", email: "bhanu.shruti@gmail.com", height: "175cm", weight: "130lb", privat: true, turned_pro: "2011-09-12"},
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
#Data for member and team aggregate
MemberTeamAgg.create!([
  {team_id:1, member_id:1, last_match_played:"2017-01-20", first_match_played:"2015-03-11", no_of_matches_played:5, team_name: "American football"}, 
  {team_id:2, member_id:1, last_match_played:"2017-02-20", first_match_played:"2015-03-11", no_of_matches_played:6, team_name: "Basketball"}, 
  {team_id:3, member_id:1, last_match_played:"2017-03-20", first_match_played:"2015-03-11", no_of_matches_played:4, team_name: "Baseball"}, 
  {team_id:4, member_id:1, last_match_played:"2017-04-20", first_match_played:"2016-03-11", no_of_matches_played:3, team_name: "Soccer"}, 
  {team_id:1, member_id:2, last_match_played:"2017-03-10", first_match_played:"2016-03-11", no_of_matches_played:3, team_name: "American football"}, 
  {team_id:4, member_id:2, last_match_played:"2017-03-11", first_match_played:"2016-03-11", no_of_matches_played:7, team_name: "Soccer"}, 
  {team_id:1, member_id:3, last_match_played:"2017-02-11", first_match_played:"2016-03-11", no_of_matches_played:7, team_name: "American football"}, 
  {team_id:2, member_id:3, last_match_played:"2017-01-11", first_match_played:"2016-03-11", no_of_matches_played:1, team_name: "Basketball"}, 
  {team_id:3, member_id:4, last_match_played:"2017-03-11", first_match_played:"2016-03-11", no_of_matches_played:9, team_name: "Baseball"}, 
  {team_id:1, member_id:5, last_match_played:"2017-03-11", first_match_played:"2016-03-11", no_of_matches_played:1, team_name: "American football"}, 
  {team_id:2, member_id:5, last_match_played:"2017-03-11", first_match_played:"2016-03-11", no_of_matches_played:2, team_name: "Basketball"}, 
  {team_id:4, member_id:5, last_match_played:"2017-03-11", first_match_played:"2016-03-11", no_of_matches_played:3, team_name: "Soccer"}, 
  {team_id:5, member_id:5, last_match_played:"2017-03-11", first_match_played:"2016-03-11", no_of_matches_played:4, team_name: "Ice hockey"}
  ])

#
Match.create!([
  {team_id: 1, date_of_match: "2017-01-20", won: "won" , opponent: "Oakland sports"},
  {team_id: 1, date_of_match: "2016-12-20", won: "lost" , opponent: "Palo Alto sports"},
  {team_id: 1, date_of_match: "2017-01-01", won: "won" , opponent: "San Mateo sports"},
  {team_id: 1, date_of_match: "2016-10-20", won: "won" , opponent: "Oakland sports"},
  {team_id: 2, date_of_match: "2017-01-20", won: "lost" , opponent: "San Jose sports"},
  {team_id: 2, date_of_match: "2016-12-20", won: "won" , opponent: "San Jose sports"},
  {team_id: 2, date_of_match: "2017-01-01", won: "lost" , opponent: "Santa Clara sports"},
  {team_id: 2, date_of_match: "2016-10-20", won: "won" , opponent: "San Jose sports"},
  {team_id: 3, date_of_match: "2017-01-20", won: "won" , opponent: "Oakland sports"},
  {team_id: 3, date_of_match: "2016-12-20", won: "lost" , opponent: "Palo Alto sports"},
  {team_id: 3, date_of_match: "2017-01-01", won: "won" , opponent: "San Mateo sports"},
  {team_id: 3, date_of_match: "2016-10-20", won: "won" , opponent: "Oakland sports"},
  {team_id: 3, date_of_match: "2017-01-20", won: "lost" , opponent: "San Jose sports"},
  {team_id: 3, date_of_match: "2016-12-20", won: "won" , opponent: "San Jose sports"},
  {team_id: 3, date_of_match: "2017-01-01", won: "lost" , opponent: "Santa Clara sports"},
  {team_id: 3, date_of_match: "2016-10-20", won: "won" , opponent: "San Jose sports"},
  {team_id: 4, date_of_match: "2017-01-20", won: "won" , opponent: "Oakland sports"},
  {team_id: 4, date_of_match: "2016-12-20", won: "lost" , opponent: "Palo Alto sports"},
  {team_id: 4, date_of_match: "2017-01-01", won: "won" , opponent: "San Mateo sports"},
  {team_id: 4, date_of_match: "2016-10-20", won: "won" , opponent: "Oakland sports"},
  {team_id: 4, date_of_match: "2017-01-20", won: "lost" , opponent: "San Jose sports"},
  {team_id: 4, date_of_match: "2016-12-20", won: "won" , opponent: "San Jose sports"},
  {team_id: 4, date_of_match: "2017-01-01", won: "lost" , opponent: "Santa Clara sports"},
  {team_id: 4, date_of_match: "2016-10-20", won: "won" , opponent: "San Jose sports"},
  {team_id: 5, date_of_match: "2016-10-20", won: "won" , opponent: "Oakland sports"},
  {team_id: 5, date_of_match: "2017-01-20", won: "lost" , opponent: "San Jose sports"},
  {team_id: 5, date_of_match: "2016-12-20", won: "won" , opponent: "San Jose sports"},
  {team_id: 5, date_of_match: "2017-01-01", won: "lost" , opponent: "Santa Clara sports"},
  {team_id: 5, date_of_match: "2016-10-20", won: "won" , opponent: "San Jose sports"},
  {team_id: 5, date_of_match: "2017-01-20", won: "won" , opponent: "Oakland sports"},
  {team_id: 5, date_of_match: "2016-12-20", won: "lost" , opponent: "Palo Alto sports"},
  {team_id: 5, date_of_match: "2017-01-01", won: "won" , opponent: "San Mateo sports"},
  {team_id: 5, date_of_match: "2016-10-20", won: "won" , opponent: "Oakland sports"},
])



