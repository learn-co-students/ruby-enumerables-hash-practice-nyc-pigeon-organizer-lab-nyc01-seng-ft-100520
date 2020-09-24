require 'pry'

def nyc_pigeon_organizer(data)
  
  data2 = data.each_with_object({}) do |(outer_key, outer_value), new_data|
    outer_value.each do |inner_key, names|
      names.each do |name|
        if !new_data[name]
          new_data[name] = {}
        end
        if !new_data[name][outer_key]
          new_data[name][outer_key] = []
        end
        new_data[name][outer_key] << inner_key.to_s
      end
    end
  end
  
  data2
end
