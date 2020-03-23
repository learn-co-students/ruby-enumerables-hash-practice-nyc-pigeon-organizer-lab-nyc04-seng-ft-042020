def nyc_pigeon_organizer(data)
  new_hash = Hash.new
  data.each do |color_gender_lives, values|
    values.each do |value, array|
      array.each do |name|
        if new_hash[name] == nil
        new_hash[name] = {}
        new_hash[name][color_gender_lives] = []
        else
          new_hash[name][color_gender_lives] = []
        end #if 
      end #array
    end #values
  end #data
  
  new_hash.each do |name, values|
    values.each do |hashvalue, array|
      data.each do |color_gender_lives, values|
        values.each do |value, array|
          array.each do |element|
            if element == name && hashvalue == color_gender_lives
              new_hash[name][hashvalue] << value.to_s
            end #if-element
          end #array-dos
        end #values-dos
      end #data-dos
    end #values-dos
  end #new_hash
  new_hash
end