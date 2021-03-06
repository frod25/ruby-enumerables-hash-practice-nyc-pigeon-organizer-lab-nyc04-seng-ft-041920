require 'pry'

raw_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}

def nyc_pigeon_organizer(data)
  pigeons = {}
  data.each_pair do |attributes, values|
    values.each_pair do |attribute, value|
      value.each do |bird|
        if pigeons[bird] == nil || pigeons[bird] == {}
          pigeons[bird] = {}
          pigeons[bird][attributes] = []
        elsif pigeons[bird][attributes] == nil
          pigeons[bird][attributes] = []
        end
      end
    end
  end

  data.each_pair do |attributes, values|
    values.each_pair do |attribute, value|
      pigeons.each_pair do |bird, info|
        if value.include?(bird)
          pigeons[bird][attributes] << attribute.to_s
        end
      end
    end
  end
  pigeons
end

nyc_pigeon_organizer(raw_data)
