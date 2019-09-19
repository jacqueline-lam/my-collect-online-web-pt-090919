def my_collect(array)
  i = 0
  collection = []
  while i < array.length
    collection << yield(array[i])
    i += 1
  end
  
  collection
end 

array = ["Tim Jones", "Tom Smith", "Jim Campagno"]
my_collect(array) { |name| name.split(" ").first }

collection = ['ruby', 'javascript', 'python', 'objective-c']
my_collect(collection) do |lang|
  lang.upcase
end
 
# => ["RUBY", "JAVASCRIPT", "PYTHON", "OBJECTIVE-C"]


