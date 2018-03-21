class Equilibrium
  def process_nsquare(ip_arr)
    return [] if ip_arr.empty? or ip_arr.length == 1
    eq_arr=[]
    arr_last_index = ip_arr.length - 1
    (0..arr_last_index).each do |p|
      arr1 = p == 0 ? [] : ip_arr[0, p]
      arr2 = ip_arr[p+1, arr_last_index]
      if arr1.sum == arr2.sum then
        eq_arr.push(p)
      end
    end
    eq_arr
  end


  def process_2n(ip_arr)
    eq_arr = []
    return [] if ip_arr.empty? or ip_arr.length == 1
    arr_last_index = ip_arr.length - 1
    arr1_sum = 0
    arr2_sum = ip_arr[1..arr_last_index].sum

   (0..arr_last_index).each do |p|
      if arr1_sum == arr2_sum then
        eq_arr.push(p)
      end
      arr1_sum += ip_arr[p]
      arr2_sum -= p == arr_last_index ? 0 : ip_arr[p+1]

   end
    eq_arr

  end

end
