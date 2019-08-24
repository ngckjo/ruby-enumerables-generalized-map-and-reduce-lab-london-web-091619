# Your Code Here

def map(source_array)
  new = []
  i = 0
  while i < source_array.length do
    new.push(yield(source_array[i]))
    i += 1
  end
  return new
end


def reduce(source_array, starting_point = 0)
  new = 0
  i = 0
  while i < source_array.length do
    if yield(source_array[i])
      new = new + 1
    end
    i += 1
  end
  return new + starting_point
end