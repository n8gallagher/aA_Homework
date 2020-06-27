#anagrams, two-sum, lcs
#write different algos in O(n) time

#two_sum, given an array of numbers should return an array
# of pairs of indices that sum to zero

# def two_sum(arr, target_sum)
#     hash = Hash.new {|h, k| h[k] = []}

# end

# def two_sum?(arr, target_sum)
#     compliments = {}

#     arr.each do |num|
#         return true if compliments.include?(target_sum - num)
#         compliments[num] = true
#     end

#     false
# end

def two_sum(arr, target_sum)
    complements = {}
    results = []

    arr.each_with_index do |num, idx|
        stored_num = target_sum - num
        results << [complements[stored_num], idx] if complements[stored_num]
        complements[num] = idx
      end
      results
end

arr1 = [1, 5, 3, -1, 12, 3]
p two_sum(arr1, 6) #=> [[0,1], [2,5]]