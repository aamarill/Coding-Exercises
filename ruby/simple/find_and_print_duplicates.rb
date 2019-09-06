# print all duplicates
# expected: jane - 1, 7

# input
names_array = [
  {jane: "1"},
  {michelle: "2"},
  {joe: "1"},
  {jane: "7"},
  {messi: "3"}
]

# Code begins here
data = {}

names_array.each do |name_hash|

  name = name_hash.keys.first

  if data[name]
    data[name] << name_hash[name]
  else
    data[name] = [name_hash[name]]
  end
end

output_str = ""

data.each do |name, ids_array|

  if ids_array.length > 1
    output_str = "#{name} - "

    ids_array.each_with_index do |id, i|

      if i == ids_array.length - 1
        output_str << "#{id}"
      else
        output_str << "#{id}, "
      end
    end
  end
end

puts output_str
