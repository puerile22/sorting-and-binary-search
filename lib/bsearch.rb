require 'pry-byebug'

def bsearch(arr,num,i = 0,j = arr.length-1)
  return (i+j)/2 if num == arr[(i+j)/2]
  return i+1 if arr[i..j].length == 1 && num>arr[i..j][0]
  return i if arr[i..j].length == 1 && num<arr[i..j][0]
  if num > arr[i..j][arr[i..j].length/2]
    # j = arr[i..j].length
    i+=arr[i..j].length/2
    # arr=arr[arr.length/2...arr.length]
    bsearch(arr,num,i,j)
    #binding.pry
    # puts i
  else
    # arr = arr[0...arr.length/2]
    j = i + arr[i..j].length/2-1
    bsearch(arr,num,i,j)
  end
  # bsearch(arr,num,i)
end

def ibsearch(arr,num)
  i = arr.length
  j = 0
  k = arr.length
  while(i!=1)
    return (j+k)/2 if num == arr[(j+k)/2]
    if num > arr[j..k][arr[j..k].length/2]
      j+=arr[j..k].length/2
      # arr=arr[arr.length/2...arr.length]
    else
      k = j + arr[j..k].length/2-1
      # arr = arr[0...arr.length/2]
    end
    i = arr[j..k].length
  end
  return j+1 if num>arr[0]
  return j if num<arr[0]
end