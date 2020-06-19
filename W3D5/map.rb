class Map
    def initialize
        @map = Array.new {Array.new}
    end

    def set(key, value)
        has_key = false
        key_idx = nil
        @map.each_with_index do |pair, i|
            if pair[0] == key
                has_key = true
                key_idx = i
            end
        end
        if has_key
            @map[key_idx][1] = value
        else
            @map << [key, value]
        end
    end

    def get(key)
       @map.each do |pair| 
        if pair[0] == key
            return pair
        end
       end
       puts "no key found in map"
       false
    end

    def delete(key)
        @map.each_with_index do |pair, i| 
            if pair[0] == key
                @map.delete_at(i)
            end
           end
    end

    def show
        @map
    end

end