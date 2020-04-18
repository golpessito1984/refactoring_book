#RMV
- rvm 2.6.5@refactor --create
- rvm use 2.6.5@refactor
- rvm gemset list

# Refactoring 1 Step

- Extract Method
'Extract case logic from Customer class to amount_for(rental) and frequent_renter_points to frequent_renter_points(rental, my_points)'

- Move Method
'Move Method amount_for(rental) and frequent_renter_points to Rental class'

- Removing Temps
'Remove total_amount, frequent_renter_points to total_amount and frequent_renter_points methods'
