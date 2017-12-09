# Car Gallery Inventory & Sales Application

- An auto dealer website and application to track inventory, sales and provide a online showroom of available cars for customers.

## APP OVERVIEW
A dealer application and website allowing users to sign up for an account to manage inventory and sales.  Users add, edit, delete autos to the delear inventory, manage sales data and track sales and inventory over time. The auto inventor is searchable on the dealers showroom site.

### Features
- User account page so users can edit and change information
- Dealer Dashboard providing an overview of critical information needed to easily track sales and inventory
- Dealer Showroom Site gives an easy way to make sales to customers 
- Customers can easily find the car they want in their price range.
- Inventory console give mastery over inventory details so the right car can be quickly sold to the right customer
- Dealer Console makes it easy to update dealer showroom site with essential information to make car sales 

## GETTING STARTED
- Clone repository: ```git clone https://github.com/YOUR-USERNAME/YOUR-REPOSITORY```
- Install gems ```bundle install --without production```
  - "--without production" skips the PostgreSQL gem (pg) in development and use SQLite for development and testing.
- Migrate database ```rails db:migrate```
- Verify app is working correctly by running tests: ```rails test```
- If tests pass, run rails server ```rails server```
- Use browser to open ```127.0.0.1:3000/cargallery```


## Test
- Test the password validation in the models, run:  ```rails test:models```



## REFERENCES
