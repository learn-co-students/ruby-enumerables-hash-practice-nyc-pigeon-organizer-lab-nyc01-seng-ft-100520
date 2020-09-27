def nyc_pigeon_organizer(data)
  
  people = []
new_hash = {}

data.each do |key1,value1|
  value1.each do |key2,value2|
   value2.each do |value3|
     
    if !people.include?(value3)
        people.push(value3)
        new_hash[value3] = {}
     end

     if !new_hash[value3].key?(key1)
         new_hash[value3].merge!({key1 => [] })
     end
     
     new_hash[value3][key1] << key2.to_s
     
   end
  end
end
  
  
  new_hash 
  # write your code here!
end
