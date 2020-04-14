require 'pry'

def nyc_pigeon_organizer(data)
  names_hash = {}
  data.each do |key, value|
    value.each do |k, v|
      v.each do |name|
        if !names_hash[name]
          names_hash[name] = {}
        end
        if !names_hash[name][key]
          names_hash[name][key] = []
        end
        names_hash[name][key] << "#{k}"
      end
    end
  end
  names_hash
end

 

 






  
#   data.reduce({}) do |memo, (key, value)|
#   p memo
#   p key = name_keys
#   p value
#   memo
#   end
# end


# firstmost_name = bands.reduce(nil) do |memo, (key, value)|
  # On the first pass, we don't have a name, so just grab the first one.
  # memo = value[0] if !memo
 
  # Sort that array of names
  # sorted_names = value.sort
 
  # If string comparison says the sorted name of the array is earlier than
  # the memo, it becomes the new memo.
  # memo = sorted_names[0] if sorted_names[0] <= memo
 
  # Return the memo as per reduce rules
  # (Try adding 'p' in front of memo to see how it changes as the enumerate the
  # pair of the hash!)
  # memo
# end
# p firstmost_name
 
# "andy"

# sorted_member_list =  bands.reduce({}) do |memo, (key, value)|
#   memo[key] = value.sort
#   memo
# end
 
# p bands
# p sorted_member_list


# bands.reduce({}) do |memo, (key, value)|
#   p memo # First block parameter
#   p key # Second block parameter
#   p value # Second block parameter
#   memo # Return value for the block, becomes the memo in the next go-round
# end

