require 'pry'

def nyc_pigeon_organizer(data)
# data is an array of strings, or names of the pigeons, that is organized by keys :color, :gender, :lives, which are hashes.
# Create a hash where the pigeon names are the keys, with each name pointing to the hash of their attributes

# Iterate over the hash, collecting each pigeon by name and insert it as the **key** of a new hash.
#Each hash should have the three attributes, :color, :gender, :lives
data.each_with_object({}) do |(key, value), final_array|
  results = value.each do |inner_key, inner_value|
    inner_value.each do |names|
      if !final_array[names]
        final_array[names] = {}
      end
      if !final_array[names][key]
        !final_array[names][key] = []
      end
      final_array[names][key].push(inner_key.to_s)
      # binding.pry
    end
end
end
#new hash with pigeon names as keys
# pigeon_names = {}
end








#   new_hash = {}
#   # write your code here!
#   nyc_pigeon_organizer.each_value do |value|
#   new_hash << value
#   end
# new_hash
# end
