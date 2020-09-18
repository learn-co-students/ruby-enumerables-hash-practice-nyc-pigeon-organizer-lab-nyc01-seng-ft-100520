require 'pry'

def nyc_pigeon_organizer(data)
  
  final_results = data.each_with_object({}) do |(key, value), pigeons|
    value.each do |inner_key, names|
      names.each do |name|
        if !pigeons[name]
          pigeons[name] = {}
        end
        if !pigeons[name][key]
          pigeons[name][key] = []
        end
        pigeons[name][key].push(inner_key.to_s)
      end
    end
  end
end


#This lab was difficult at first to figure out how to iterate through each level. However, watching the video that accompanied it taught me how to actually use pry. Pry is essential when dealing with so many nested hashes/array, becaues it gives you a moment to see exactly what value is being returned. 
