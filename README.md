### PHASE 4 RAILS BACKEND PROJECT

#### Salon API

###### [API link](https://thawing-journey-77356.herokuapp.com/)


#### By Group 4: 
       * Janet Njeri
       * Daniel Obare
       * Daniel Sobit
       * Billy Otieno
       * Vinson Steve
     
      

## Description

- This API show cases the different beauty services offered by the various service providers.
- As a user, one can view all the services rendered by different professionals, and also book an appointment with the preferred service provider.

-The user is restricted to viewing the services only.

-The service provider is the only one authorized to create a service.
___
### All Routes For the API
___

#### Sign Up 

* A Service Provider can sign up and below is the specific route.
###### [Sign Up endpoint](https://thawing-journey-77356.herokuapp.com/provider)

#### Log In

* A service provider can login after signing up
###### [Login endpoint](https://thawing-journey-77356.herokuapp.com/provider/login)

#### Provider to stay logged in

* A service provider can stay logged in via this endpoint
###### [Login endpoint](https://thawing-journey-77356.herokuapp.com/provider/stay_loggedIn)


#### Log Out
* A service provider can logout after signing up
###### [Logout endpoint](https://thawing-journey-77356.herokuapp.com/provider/logout)
___

#### Creating a service
* The only person authorized to create a service is the services provider only after he or she signs up
* Below is the route for creating a service
###### [Creating a service endpoint](https://thawing-journey-77356.herokuapp.com/service)

#####  Updating the service
* Below is the route that will update the service.
###### [Updating the service endpoint](https://thawing-journey-77356.herokuapp.com/services/:id)

#### Deleting a service
* Below is the route that will delete the service.
###### [Delete service endpoint](https://thawing-journey-77356.herokuapp.com/services/:id)

#### Displaying the services
* Below is the route that will display all the services
###### [Display service endpoint](https://thawing-journey-77356.herokuapp.com/services)

#### Displaying each service
- Below is the route that get each service individually by id
###### [Display a service at a time endpoint](https://thawing-journey-77356.herokuapp.com/services)

___

### User

* As a user I can:
  * Book an appointment
  * Edit the appointment
  * Delete the appointment
___

#### User creating the service
* Below is the route that will let a user create a booking
###### [Display service endpoint](https://thawing-journey-77356.herokuapp.com/booking)

#### Displaying all bookings
* Below is the route that will display all booking appointments
###### [Display booking endpoint](https://thawing-journey-77356.herokuapp.com/bookings)

#### Displaying each booking at a time
* Below is the route that will display all the services
###### [Display each booking endpoint](https://thawing-journey-77356.herokuapp.com/booking/:id)

#### Updating a booking
* Below is the route that will let a user update a booking
###### [Update a booking endpoint](https://thawing-journey-77356.herokuapp.com/booking/:id)

#### Deleting a booking
* Below is the route that will delete a client's appointment
###### [Deleting booking endpoint](https://thawing-journey-77356.herokuapp.com/booking/:id)







