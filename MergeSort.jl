function merge(arr::Array, left::Integer, mid::Integer, right::Integer)
    lhs = arr[left:mid - 1]
    rhs = arr[mid:right]
    k = left;
    i = 1;
    j = 1;
  
    while i < length(lhs) + 1 && j < length(rhs) + 1
  
      if lhs[i] <= rhs[j]
        arr[k] = lhs[i]
        i += 1
       else
         arr[k] = rhs[j]
         j += 1
      end
      k += 1
    end

      while i < length(lhs) + 1
         arr[k] = lhs[i]
         i += 1
         k += 1
      end
      while j < length(rhs) + 1
        arr[k] = rhs[j]
         j += 1
         k += 1
      end
  
    
  end
  
  
  function sortmerge(to_sort::Array, left::Int64, right::Int64)
    if left >= right 
      return
    end 
    mid = ceil(Integer, (left + right) / 2)
    sortmerge(to_sort, left, mid - 1)
    sortmerge(to_sort, mid, right)
    merge(to_sort, left, mid, right)
  end
  
  input1 = [4, 3, 2, 1]
  input2 = [1,2,3,4,5, 99, 54, 33, 21, 67, 88, 9, 39, 76, 88, 89, 100001, 45, 3000, 6,867,8,10]

  sortmerge(input1, 1, length(input1))
  sortmerge(input2, 1, length(input2))

 println(input1)
 println(input2)
