def fibs(num)
  array = []
  if num <= 0
  elsif num == 1
    array = [0]
  elsif num == 2
    array = [0, 1]
  else
    array = [0, 1]
    i = 2
    while i < num
      array[i] = array[i - 1] + array[i - 2]
      i += 1
    end
  end
  return array
end

def fibs_rec(num)
  if num == 1
    [0]
  elsif num == 2
    [0, 1]
  else
    fibs_rec(num - 1) << fibs_rec(num - 1)[-1] + fibs_rec(num - 1)[-2]
  end
end

print fibs_rec(10)
