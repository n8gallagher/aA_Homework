#write different algos in O(n) time

#two_sum, given an array of numbers should return an array
# of pairs of indices that sum to zero

def two_sum(arr)
    hash = Hash.new {|h, k| h[k] = []}
    
end

arr1 = [1, 5, -3, -1, 12, 3]
p two_sum(arr1) #=> [[0,3], [2,5]]