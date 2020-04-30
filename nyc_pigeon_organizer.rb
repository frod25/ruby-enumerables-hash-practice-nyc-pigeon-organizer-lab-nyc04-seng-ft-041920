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
  data.each_pair do |keys, values|
    values.each_pair do |key, value|
      value.each do |bird|
        binding.pry
        if pigeons[bird] = nil
binding.pry
          pigeons[bird] = {}
          binding.pry
        end
      end
    end
  end
end

nyc_pigeon_organizer(raw_data)
