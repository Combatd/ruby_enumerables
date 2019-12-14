require "pry"

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

    def my_flatten
        return self if !self.is_a?(Array)
        result = []
        self.each do |ele|
            result += ele
        end

        result
    end

    def my_zip(*elements)
       index = 0
       result = []

       while (index < self.length)
        temporary_array = self.map do |ele|
            ele += 1
        end
        result << temporary_array
       end

       result
    end

    def my_rotate(number)
        self.rotate(number)
    end

    def my_join(character)
        joined_array = self.map |ele| { ele += character }
        joined_array # return the new array
    end

    def my_reverse
        reversed_array = []
        i = 0
        j = self.length - 1
        while (i < self.length)
            reversed_array << self[j]
            i += 1
            j -= 1
        end
        
        reversed_array
    end

end # end class array