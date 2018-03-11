class Equilibrium
  def equi(arr_obj)

    arr_obj.compact!

    idx_pos = arr_obj.length-1
    len   = arr_obj.length-1
    while idx_pos > 0
      lhs  = arr_obj[0..idx_pos-1].reduce(:+)
      rhs = arr_obj[idx_pos+1..len].reduce(:+)
      if lhs == rhs
        return idx_pos
      end
      idx_pos -= 1
    end
    nil
  end
end
