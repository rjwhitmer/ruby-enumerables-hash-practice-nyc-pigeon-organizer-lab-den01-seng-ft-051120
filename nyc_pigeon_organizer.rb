require 'pry'

def nyc_pigeon_organizer(data)
  # write your code here!
  #binding.pry
  
  
  test1 = data[:gender][:male]
  test2 = data[:gender][:female]
<<<<<<< HEAD
  test3 = test2 + test1
  
  
=======
  test3 = test2.concat(test1)
>>>>>>> 5a5cf0cae03ded396c9c5386143697372a3e661d

  
  
  new_hash = Hash[test3.map {|x| [x, Hash.new ]}]
  
  new_hash.each_key do |pigeon|
    new_hash[pigeon] = Hash[data.keys.map {|x| [x, Array.new ]}]

  end
  
  new_hash.each do |pigeon, attributes|
    attributes.each do |attribute, values|
      data[attribute].each do |value, pigeons|
        if pigeons.index(pigeon)
<<<<<<< HEAD
          values << String(value)
          #binding.pry
=======
          values << value
          binding.pry
>>>>>>> 5a5cf0cae03ded396c9c5386143697372a3e661d
        end
      end      
    end
  end  
    

  
<<<<<<< HEAD
  binding.pry
=======
  #binding.pry
>>>>>>> 5a5cf0cae03ded396c9c5386143697372a3e661d
  
  #new_hash.update(new_hash) { |key, value| value }

  new_hash
  
end
