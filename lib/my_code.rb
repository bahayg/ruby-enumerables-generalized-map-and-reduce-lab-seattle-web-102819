# Your Code Here
def map(source_array)
  new = []
  i = 0 
  while i < source_array.length do
    new.push(yield(source_array[i]))
    i += 1 
  end
  new
end

def reduce(source_array, starting_point=0)
  if starting_point
    total = starting_point
    i = 0
  else 
    total = source_array[0]
    i = 1
  while i < source_array.length 
    total = yield(total, source_array[i])
    i += 1
  end 
  total
end
    
#     def reduce(s, sp=nil)
#   if sp
#     accum = sp
#     i = 0
#   else
#     accum = s[0]
#     i = 1
#   end
#   while i < s.length
#     accum = yield(accum, s[i])
#     i += 1
#   end
#   accum
# end