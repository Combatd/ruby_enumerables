class Array


    def my_each
        array = self

        index = 0
            
        while(index < array.length)
            yield(array[index])
            index += 1
        end

        array # return the array
    end

end