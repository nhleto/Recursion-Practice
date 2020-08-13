def fibo(num)
  if num.zero?
    [0]
  elsif num == 1
    [0, 1]
  else
    arr = [0, 1]
    until num == 1
      arr << (arr[-1] + arr[-2])
      num -= 1
    end
    arr
  end
end

p fibo(10)

def fibs_rec(num)
  return [0, 1] if num < 2

  fibs_seq = fibs_rec(num - 1)
  fibs_seq << fibs_seq[-1] + fibs_seq[-2]
end
p fibs(10)
