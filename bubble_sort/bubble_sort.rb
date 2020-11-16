def bubble_sort(numbers)
  sorted = false
  until sorted
    sorted = true
    numbers.each_with_index do |number, index|
      break if index.next >= numbers.length
      puts "comparing #{number} with #{numbers[index.next]}"
      if number > numbers[index.next]
        puts "swaped"
        numbers[index], numbers[index.next] = numbers[index.next], numbers[index]
        sorted = false
      end
    end
  end
  numbers
end