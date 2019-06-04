
require 'pry'
# Shortcuts 
# Commenting - CMD + / 


def game_hash

 {
   home: {
     team_name: "Brooklyn Nets",
     colors: ["Black", "White"],
     players: [
       {
         player_name: "Alan Anderson",
         number: 0,
         shoe: 16,
         points: 22,
         rebounds: 12,
         assists: 12,
         steals: 3,
         blocks: 1,
         slam_dunks: 1
       }, {
         player_name: "Reggie Evans",
         number: 30,
         shoe: 14,
         points: 12,
         rebounds: 12,
         assists: 12,
         steals: 12,
         blocks: 12,
         slam_dunks: 7
       }, {
         player_name: "Brook Lopez",
         number: 11,
         shoe: 17,
         points: 17,
         rebounds: 19,
         assists: 10,
         steals: 3,
         blocks: 1,
         slam_dunks: 15
       }, {
         player_name: "Mason Plumlee",
         number: 1,
         shoe: 19,
         points: 26,
         rebounds: 12,
         assists: 6,
         steals: 3,
         blocks: 8,
         slam_dunks: 5
       }, {
         player_name: "Jason Terry",
         number: 31,
         shoe: 15,
         points: 19,
         rebounds: 2,
         assists: 2,
         steals: 4,
         blocks: 11,
         slam_dunks: 1
       }
     ]
   },
   away: {
     team_name: "Charlotte Hornets",
     colors: ["Turquoise", "Purple"],
     players: [
       {
         player_name: "Jeff Adrien",
         number: 4,
         shoe: 18,
         points: 10,
         rebounds: 1,
         assists: 1,
         steals: 2,
         blocks: 7,
         slam_dunks: 2
       }, {
         player_name: "Bismak Biyombo",
         number: 0,
         shoe: 16,
         points: 12,
         rebounds: 4,
         assists: 7,
         steals: 7,
         blocks: 15,
         slam_dunks: 10
       }, {
         player_name: "DeSagna Diop",
         number: 2,
         shoe: 14,
         points: 24,
         rebounds: 12,
         assists: 12,
         steals: 4,
         blocks: 5,
         slam_dunks: 5
       }, {
         player_name: "Ben Gordon",
         number: 8,
         shoe: 15,
         points: 33,
         rebounds: 3,
         assists: 2,
         steals: 1,
         blocks: 1,
         slam_dunks: 0
       }, {
         player_name: "Brendan Haywood",
         number: 33,
         shoe: 15,
         points: 6,
         rebounds: 12,
         assists: 12,
         steals: 22,
         blocks: 5,
         slam_dunks: 12
       }
     ]
   },

 }
end

#go into home hash and away hash and get the players from both
#go to each team and ask them for their list of players 
#collect all the names and put them into a single list

#how do we do this in code?

#we can iterate over the hashes store in home and away
#iterate again through the values of each player detatils and grab the players name
#navigate to the location of our arrays with our data structure using the correct keys

# valid solution for finding players 
# better if you have a lot of hashes you need to access
# in our case we only have two and we know the names of those keys 
# so we are going to access those keys directly
# game_hash[:home][:players]
# game_hash.each do |key, value|
#     puts key
#     puts value
# end


# save the players into a variable 
home_players = game_hash[:home][:players]
away_players = game_hash[:away][:players]

#push it into an array
#concate / add arrays
#map/collect/each
    #push into new array
#user reduce with initial array as first value 

#if you don't have any ideas how to do this... google!

#creates new variable which points to array of all players
#all_players = home_players.concat(away_players)
#however this alters the orginal home_players array and we do not want that


all_players = home_players + away_players

def num_points_scored (player_name)
    #iterate through the hash to get the desired points value
    #iterate through the all_players to get to the desired point value
    #checking that the player name matches the name passed in as an argument
    home_players = game_hash[:home][:players]
    away_players = game_hash[:away][:players]

    all_players = home_players + away_players

    #use each to iterate through all players
    # all_players.each do |player|
    #     if(player[:player_name] == player_name)
    #         return player[:points]
    #     end
    # end
    #use map
    #use find
    found_player = all_players.find do |player|
        player[:player_name] == player_name
    end
    
    return found_player

    #user select
end

def team_colors

def team_names |team_name|
  team.map do |team|
    team.find(:team_name)
  end
end
# puts "hello world"
binding.pry

# each
def num_points_scored (player_name)
  home_players = game_hash[:home][:players]
away_players = game_hash[:away][:players]
  all_players = home_players + away_players

  all_players.each do |player|
    if(player[:player_name] == player_name)
      return player[:points]
    end
  end
end


#find
def shoe_size(player_name)
  home_players = game_hash[:home][:players]
  away_players = game_hash[:away][:players]
    all_players = home_players + away_players
    
    found_shoe_size = all_players.find do |player|
      player[:player_name] == player_name
    end
    return found_shoe_size[:shoe]
end

#fetch
def team_colors(team_name)
  if game_hash[:home][:team_name] == team_name
    return game_hash[:home].fetch(:colors)
  else 
    game_hash[:away].fetch(:colors)
  end

  end

  #map
  #map
def player_numbers(team)
  
  if team == game_hash[:home][:team_name]
    team_hash = game_hash[:home]
  else
    team_hash = game_hash[:away]
  end

  team_hash[:players].map do |player|
    player = player[:number]
  end
 
end