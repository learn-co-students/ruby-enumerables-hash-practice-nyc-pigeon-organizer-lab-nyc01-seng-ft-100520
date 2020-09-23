require 'pry'

def nyc_pigeon_organizer(data)
  data.each_with_object({}) do |(key, value), hash|
    value.each do |inner_key, name|
      name.each do |pigeon_name|
        if hash[pigeon_name] == nil
          hash[pigeon_name] = {}
        end
        if hash[pigeon_name][key] == nil
          hash[pigeon_name][key] = []
        end
        hash[pigeon_name][key] << inner_key.to_s
      end
    end
  end
end 

