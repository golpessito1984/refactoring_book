class RegularPrice
  def charge(days_rented)
    result = 2
    result+= (days_rented)*1.5 if days_rented > 2
    return result
  end

  def frequent_renter_points(days_rented)
   1
  end
  
end
