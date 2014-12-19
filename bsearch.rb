require 'pry-byebug'

def bsearch(arr,num,i=0)
  return i+arr.length/2 if num == arr[arr.length/2]
  return i+1 if arr.length == 1 && num>arr[0]
  return i if arr.length == 1 && num<arr[0]
  if num > arr[arr.length/2]
    i += arr.length/2
    arr = arr[arr.length/2...arr.length]
    puts i
  else
    arr = arr[0...arr.length/2]
  end
  bsearch(arr,num,i)
end

def ibsearch(arr,num)
  i = arr.length
  j = 0
  while(i != 1)
    return j + arr.length/2 if num == arr[arr.length/2]
    if num > arr[arr.length/2]
      j += arr.length/2
      arr = arr[arr.length/2...arr.length]
    else
      arr = arr[0...arr.length/2]
    end
    i = arr.length
  end
  return j + arr.length/2 if num == arr[arr.length/2]
  return j + 1 if num > arr[0]
  return j if num < arr[0]
end