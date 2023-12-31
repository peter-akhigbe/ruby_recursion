def fibs(num)
    array = [0, 1]

    loop do
        array << array[-1] + array[-2]
        break if array.length >= num
    end

    array.take(num)
end

def fibs_rec(num, array = [0, 1])
    return [] if num <= 0
    return [0] if num == 1
    return array if num == 2

    array << array[-1] + array[-2]
    fibs_rec(num - 1, array)
end

num = 10

p fibs(num)
p fibs_rec(num)
