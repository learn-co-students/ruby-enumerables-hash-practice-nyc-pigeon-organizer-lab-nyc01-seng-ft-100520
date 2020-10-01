def nyc_pigeon_organizer(data)
  # write your code here!

  hash_names = Hash.new 
  
#iterates thru outer hash with second inner hash
data.each do |cgl, hsubcat|
  #iterates thru second inner hash with array
  hsubcat.each do |hsubcat, spec|
    #iterates thru innest array
    spec.each do |name|
      #if name does not already exist in new hash,
      #make name key and assign it to HoA
      #H is the subcategory and A is empty atm
      if hash_names[name]==NIL
        hash_names[name]={}
        hash_names[name][cgl] = []
      else
        hash_names[name][cgl]=[]
      end
    end
  end
end

#iterates through outter names key and category values hash
hash_names.each do |names, hsubcat|
  #category values hash and array values
  hsubcat.each do |subcat, array|
    data.each do |cgl, h_sub|
      h_sub.each do |value, array|
        array.each do |element|
      if element == names && subcat == cgl
        hash_names[names][subcat] << value.to_s
      end
    end
 end
end
end
end

  
  hash_names
  
end
