# coding: utf-8
cod = IO.read('cod.txt')
cod.class
methods = IO.read('methods.txt')
methods.class
d=0
mas_m = methods.split(",")
(0..mas_m.size-1).each do |i|
  if (cod.include?(mas_m[i].to_s))
    puts "Код содержит запрещенные методы"
    d=1
    break
  end
end
if d==0
  eval(cod)
  puts "Код выполнен успешно"
end