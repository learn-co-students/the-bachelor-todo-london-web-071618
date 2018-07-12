def get_first_name_of_season_winner(data, season)
  # code here
  data[season].each do |contestant|
    #iterate through data hash to the right level
    #data["season"]["contestants"]["name"] nd ["status]"
    if contestant["status"] == "Winner"
    #string manipulation
      return contestant["name"].split(" ")[0]
      end
end 
end

def get_contestant_name(data, occupation)
            # code here
            # returns the name of the woman who has that occupation: Cruise Ship Singer, Community Organizer, Nonprofit director
 people = nil
  
            #iterate through data hash to the right level
data.each do |season_hash, contestants_array|

contestants_array.find do |contestant|
            #condition
 if contestant["occupation"] == occupation 
people = contestant["name"]
end
end 
end
people
end

  

def count_contestants_by_hometown(data, hometown)
  # code here
  # data_hash, season_hash and a hometown_string
  #return a counter = contestants integer who .. #need an empty array
  #condition # are from that hometown # if hometown..
counter = 0
  people_array=[ ]
  
  
  #nested hash level
  #push contestants from contestants_array to the empty one people_array
  
  data.each do |season_hash, contestants_array|
    contestants_array.each do |contestant|
      if contestant["hometown"] == hometown
       #people_array << season_hash
       counter +=1
  end
end 
end 
counter
#people_array.size
end

def get_occupation(data, hometown)
  # code here
         # right level in the nested hash:
         #    data["season"]["contestants"]["hometown"] and ["occupation]"
         
  people = nil
  data.each do |season_hash, contestants_array|
    contestants_array.each do |contestant|
      if contestant["hometown"] == hometown
        people = contestant["occupation"]
      end
    end
  end
  people
end

# def get_average_age_for_season(data, season)
#   # code here



def get_average_age_for_season(data, season)
  # code here
  #iterate down into the level of the hash that contains each contestant's age: data[season]=>[contestant][age]
    #to be able to add it
    #Remember that dividing integers in Ruby always rounds down. In this case though, we want the normal math sort of rounding (where .5 and higher rounds up), instead. ==> use .replace(0)=> starting from 0
#Consider the difference between to_f and to_i

  contestant_ages = data[season].collect do |contestant|
    contestant["age"].to_i
  end

  add_ages = contestant_ages.reduce(0) {|sum, age| sum += age}
  contestant_count =  contestant_ages.count.to_f
  (add_ages/contestant_count).round

#data[contestant].map{|k,v| [k,v.map(&:last).inject(:+)/v.size]}

end
