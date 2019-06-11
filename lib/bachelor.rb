require 'pry'

def get_first_name_of_season_winner(data, season)
      data[season].each do |contestant|
            if contestant.values.include?("Winner")
             return contestant["name"].split.first
           end 
      end 
 end 
  
def get_contestant_name(data, occupation)
  data.values.each do |contestant|
    contestant.each do |info|
      if info.values.include?(occupation)
        return info["name"]
      end 
    end 
  end 
end

def count_contestants_by_hometown(data, hometown)
  count = 0
  data.values.each do |contestant|
    contestant.each do |info|
      if info.values.include?(hometown)
        count += 1
      end
    end 
  end 
  return count
end

def get_occupation(data, hometown)
    data.values.each do |contestant|
      contestant.each do |info|
        if info.values.include?(hometown)
          return info["occupation"]
        end 
      end
    end 
end

def get_average_age_for_season(data, season)
  contestant_number=0
  count=0
  data[season].each do |contestant|
    count += contestant["age"].to_i
    contestant_number +=1
  end
  return ((count.to_f)/contestant_number).round
end
