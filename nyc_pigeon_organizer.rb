require 'pry'
def nyc_pigeon_organizer(data)
 
  data.each_with_object({}) do |(keys, values), nyc_pigeon|
 values.each do |in_keys, names|
   names.each do |name|
     if !nyc_pigeon[name]
       nyc_pigeon[name] = {}
     end
     if !nyc_pigeon[name][keys]
       !nyc_pigeon[name][keys] = []
     end
  nyc_pigeon[name][keys].push(in_keys.to_s)
      end    
    end
  end
end