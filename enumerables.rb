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

end # end class array