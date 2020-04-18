class ChildrensPrice
  def charge(days_rented)
    result = 1.5
    result+= (days_rented-3)*1.5 if days_rented > 3
  end

  def frequent_renter_points(days_rented)
   1
  end
end
