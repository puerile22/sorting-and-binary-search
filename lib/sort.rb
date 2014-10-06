class Sorting
  def sort(arr) 
    (1...arr.length).each do |i|
      (i+1..arr.length).each do |j|
        arr[-i],arr[-j] = arr[-j],arr[-i] if arr[-i]<arr[-j]
      end
    end
    return arr
  end

  def mergesort(arr)
    arr2=[]
    split(arr,0,arr.length-1,arr2)
    return arr2
  end
  def copy(arr1,i,j,arr2)
    (i..j).each do |k|
      arr2[k] = arr1[k]
    end
  end
  def split(arr1,i,j,arr2)
    return if j-i<1
    k = (j+i)/2
    split(arr1,i,k,arr2)
    split(arr1,k+1,j,arr2)
    merge(arr1,i,j,k,arr2)
    copy(arr2,i,j,arr1)
  end
  def merge(arr1,i,j,k,arr2)
    a,b = i,k+1
    (i..j).each do |c|
      if a<k+1 && (b>j || arr1[a]<arr1[b])
        arr2[c] = arr1[a]
        a+=1
      else
        arr2[c] = arr1[b]
        b+=1
      end
    end
  end
end