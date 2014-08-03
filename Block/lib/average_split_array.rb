def split_array(array, num)
    result = Array.new

    i=0
    while (i < num) do
      array_part = Array.new
      array.each_index { |index|
        if index%num == i
          array_part.push(array[index])
        end
      }
      result.push(array_part)
      i += 1
    end

    result
end
