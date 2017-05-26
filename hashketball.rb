# Write your code here!
require 'pry'
def game_hash

game_hash = {home:
              {team_name: "Brooklyn Nets",
               colors: ["Black", "White"]},
             away:
              {team_name: "Charlotte Hornets",
               colors: ["Turquoise", "Purple"]}}
# binding.pry
game_hash[:home][:players] = {}
game_hash[:away][:players] = {}

game_hash[:home][:players]["Alan Anderson"]= {number: 0,
                                              shoe: 16,
                                              points: 22,
                                              rebounds: 12,
                                              assists: 12,
                                              steals: 3,
                                              blocks: 1,
                                              slam_dunks: 1}
game_hash[:home][:players]["Reggie Evans"]= {number: 30,
                                              shoe: 14,
                                              points: 12,
                                              rebounds: 12,
                                              assists: 12,
                                              steals: 12,
                                              blocks: 12,
                                              slam_dunks: 7}
game_hash[:home][:players]["Brook Lopez"]= {number: 11,
                                              shoe: 17,
                                              points: 17,
                                              rebounds: 19,
                                              assists: 10,
                                              steals: 3,
                                              blocks: 1,
                                              slam_dunks: 15}
game_hash[:home][:players]["Mason Plumlee"]= {number: 1,
                                              shoe: 19,
                                              points: 26,
                                              rebounds: 12,
                                              assists: 6,
                                              steals: 3,
                                              blocks: 8,
                                              slam_dunks: 5}
game_hash[:home][:players]["Jason Terry"]= {number: 31,
                                              shoe: 15,
                                              points: 19,
                                              rebounds: 2,
                                              assists: 2,
                                              steals: 4,
                                              blocks: 11,
                                              slam_dunks: 1}



game_hash[:away][:players]["Jeff Adrien"]= {number: 4,
                                              shoe: 18,
                                              points: 10,
                                              rebounds: 1,
                                              assists: 1,
                                              steals: 2,
                                              blocks: 7,
                                              slam_dunks: 2}
game_hash[:away][:players]["Bismak Biyombo"]= {number: 0,
                                              shoe: 16,
                                              points: 12,
                                              rebounds: 4,
                                              assists: 7,
                                              steals: 7,
                                              blocks: 15,
                                              slam_dunks: 10}
game_hash[:away][:players]["DeSagna Diop"]= {number: 2,
                                              shoe: 14,
                                              points: 24,
                                              rebounds: 12,
                                              assists: 12,
                                              steals: 4,
                                              blocks: 5,
                                              slam_dunks: 5}
game_hash[:away][:players]["Ben Gordon"]= {number: 8,
                                              shoe: 15,
                                              points: 33,
                                              rebounds: 3,
                                              assists: 2,
                                              steals: 1,
                                              blocks: 1,
                                              slam_dunks: 0}
game_hash[:away][:players]["Brendan Haywood"]= {number: 33,
                                              shoe: 15,
                                              points: 6,
                                              rebounds: 12,
                                              assists: 12,
                                              steals: 22,
                                              blocks: 5,
                                              slam_dunks: 12}

# binding.pry
game_hash
end

def good_practices
  game_hash.each do |location, team_data|
    #are you ABSOLUTELY SURE what 'location' and 'team data' are? use binding.pry to find out!
    binding.pry
      team_data.each do |attribute, data|
        #are you ABSOLUTELY SURE what 'attribute' and 'team data' are? use binding.pry to find out!
        binding.pry

        #what is 'data' at each loop through out .each block? when will the following line of code work and when will it break?
        data.each do |data_item|
            binding.pry
      end
    end
  end
end

# good_practices

def num_points_scored (player_name)
  # game_hash = game_hash
  game_hash.each do |location, team_data|
    team_data.each do |attribute, data|
      if attribute == :players
        data.each do |name, stats|
#binding.pry
          if name == player_name
            return stats[:points]
          end
        end

        end
      end

    #  binding.pry

    end

  end

  def shoe_size(player_name)
    game_hash.each do |location, team_data|
      team_data.each do |attribute, data|
        if attribute == :players
          data.each do |name, stats|
  #binding.pry
            if name == player_name
              return stats[:shoe]
            end
          end

          end
        end

      #  binding.pry

      end

  end

  def team_colors(team_name)
    game_hash.each do |location, team_data|
      team_data.each do |attribute, data|
        if attribute == :team_name && data == team_name
        #    binding.pry
            return team_data[:colors]
          end
        end

      #  binding.pry

      end

  end

def team_names
  teams_array = []
game_hash.each do |location, team_data|
  team_data.each do |attribute, data|
    if attribute == :team_name
      teams_array << data
    end

  end

end
  teams_array
end

def player_numbers(team_name)

  def get_location(team_name)
    game_hash.each do |location, team_data|
      team_data.each do |attribute, data|
        if attribute == :team_name && data == team_name
          return location
        end
      end
    end
  end

my_loc = get_location(team_name)
jersey_numbers = []

game_hash[my_loc][:players].each do |player_name, attributes|
  jersey_numbers << game_hash[my_loc][:players][player_name][:number]
end

# binding.pry
jersey_numbers

end


def player_stats(player_name)
  game_hash.each do |location, team_data|
    team_data.each do |attribute, data|
      if attribute == :players
        data.each do |name, stats|
#binding.pry
          if name == player_name
            return stats
          end
        end

        end
      end
    end
nil
end

def big_shoe_rebounds

shoe_sizes_hash = {}
game_hash[:home][:players].each do |player_name, attributes|
  shoe_sizes_hash[player_name]= attributes[:shoe]
end
game_hash[:away][:players].each do |player_name, attributes|
  shoe_sizes_hash[player_name]= attributes[:shoe]
end

star_player = shoe_sizes_hash.key(shoe_sizes_hash.values.max)

# Now find the number of rebounds

game_hash.each do |location, team_data|
  team_data.each do |attribute, data|
    if attribute == :players
      data.each do |name, stats|
#binding.pry
        if name == star_player
          return stats[:rebounds]
        end
      end

      end
    end
  end

end
