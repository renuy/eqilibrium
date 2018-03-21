class Equilibrium
  def process(ip_arr)
    eq_arr=[]
    puts ip_arr.length
    arr_last_index = ip_arr.length - 1
    (0..arr_last_index).each do |i|
      arr1 = ip_arr[0,i]
      arr2 = ip_arr[i+1,arr_last_index]
      puts "#{arr1}"
      puts "#{arr2}"

      puts "#{arr1.sum}==#{arr2.sum}"
      if arr1.sum == arr2.sum then
        eq_arr.push(i)
      end
    end
    eq_arr
  end

end
