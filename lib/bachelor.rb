def get_first_name_of_season_winner(data, season)
  data.each do |season_number, contestant_info|
    if season_number == season
      contestant_info.each do |contestant|
        if contestant["status"] == "Winner"
         return contestant["name"].split(" ")[0]
        end
      end
    end
  end
end 

def get_contestant_name(data, occupation)
  data.each do |season, season_array|
    season_array.each do |contestant_info|
      if contestant_info["occupation"] == occupation
        return contestant_info["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
    data.each do |season, season_array|
      season_array.each do |contestant_info|
       if contestant_info["hometown"] == hometown
        counter += 1
      end 
    end 
  end
  return counter
end 

def get_occupation(data, hometown)
  data.each do |season, season_array|
    season_array.each do |contestant| 
      if contestant["hometown"] == hometown
        return contestant["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  age = 0 
  data.each do |seasons, season_array|
    if seasons == season 
      season_array.each do |contestant|
        age += contestant["age"].to_f
      end
      return(age / season_array.length).round
    end
  end 
end