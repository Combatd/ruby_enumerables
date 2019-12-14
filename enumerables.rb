class Array # begin class Array


    def my_each
        array = self

        index = 0
            
        while(index < array.length)
            yield(array[index])
            index += 1
        end

        array # return the array
    end


    def my_select
        array = self
        new_array = []
        new_array.concat(my_each(array))
    end

    def my_reject
        array = self
        filtered_array = []
        
        index = 0
        while(index < array.length)
            filtered_array << array[index if (yield(array[index]))
            index += 1
        end

        filtered_array
    end

    def my_any?
        self.each do |ele, idx|
            return true if (yield(ele))
        end
        return false
    end

    def my_all?
        self.each do |ele, idx|
            return false if (yield(ele))
        end
        return true
    end


end # end class array