require 'date'

puts "Cleaning the Fixr database"
User.destroy_all
Shop.destroy_all
Job.destroy_all
Service.destroy_all
Booking.destroy_all
Review.destroy_all

puts "Creating some cool Fixr stuff..."


puts 'Creating users'

users_attributes = [

  {
    first_name: "Charlie",
    last_name: "Watson",
    email: "charlie@bricklanebikes.com",
    password: "charlie"
  },

    {
    first_name: "Yasmin",
    last_name: "Jones-Sheehan",
    email: "yasmin@sbcycles.com",
    password: "yasmin"
  },

    {
    first_name: "Csaba",
    last_name: "Krisztan",
    email: "csaba@fixr.com",
    password: "csaba1"
  },

  {
    first_name: "Charlotte",
    last_name: "Waller",
    email: "charlotte@demoday.com",
    password: "charlotte"
  },

]

User.create!(users_attributes)

puts 'Users created'

puts 'Creating shops'

shops_attributes = [

  {
    user_id: 1,
    name: "Brick Lane Bikes",
    address: "118 Bethnal Green Road, Shoreditch, London, E2 6DG",
    open_hours: "Monday to Friday: 9am, Saturday to Sunday: 10am",
    close_hours: "Monday to Friday: 6pm, Saturday to Sunday: 4pm"
  },

  {
    user_id: 2,
    name: "SBC Cycles",
    address: "41 Cropley Street, Hoxton, London, N1 7HT",
    open_hours: "Monday to Friday: 11am, Saturday:1 10am, Sunday: 11am",
    close_hours: "Monday to Friday: 7pm, Saturday: 5pm, Sunday: 4pm"

  },

  {
    user_id: 3,
    name: "Bikefix",
    address: "48 Lamb's Conduit Street, Holborn, London, WC1N 3LH",
    open_hours: "Monday to Friday: 9am, Saturday to Sunday: 10am",
    close_hours: "Monday to Friday: 6pm, Saturday to Sunday: 4pm"

  },

  {
    user_id: 4,
    name: "Condor Cycles",
    address: "49-53 Gray's Inn Road, Holborn, London, WC1X 8PP",
    open_hours: "Monday to Friday: 7.30am, Saturday to Sunday: 9am",
    close_hours: "Monday to Friday: 5.30pm, Saturday to Sunday: 5pm"

  },

  {
    user_id: 4,
    name: "Brixton Cycles",
    address: "296-298 Brixton Road, Ferndale, London, SW9 6AG",
    open_hours: "Monday to Friday: 9.30am, Saturday to Sunday: 11am",
    close_hours: "Monday to Friday: 5.30pm, Saturday to Sunday: 4pm"

  },

  {
    user_id: 1,
    name: "Cloud 9 Cycles",
    address: "38 Store Street, Bloomsbury, London, WC1E 7DB",
    open_hours: "Monday to Friday: 9am, Saturday to Sunday: 9am",
    close_hours: "Monday to Friday: 5pm, Saturday to Sunday: 5pm"

  },

  {
    user_id: 2,
    name: "Fully Charged Electric Bike Shop",
    address: "37 Bermondsey Street, Bermondsey, London, SE1 3JW",
    open_hours: "Monday to Friday: 10am, Saturday to Sunday: 10.30am",
    close_hours: "Monday to Friday: 5.30pm, Saturday to Sunday: 4.30pm"

  },

  {
    user_id: 3,
    name: "London Bike Kitchen",
    address: "28 Whitmore Road, London, N1 5QA",
    open_hours: "Monday to Friday: 10am, Saturday to Sunday: 12am",
    close_hours: "Monday to Friday: 6pm, Saturday to Sunday: 3pm"

  },

  {
    user_id: 3,
    name: "Cycle Surgery Bishops Square",
    address: "12-13 Bishops Square, Spitalfields, London, E1 6EG",
    open_hours: "Monday to Friday: 9am, Saturday to Sunday: 11am",
    close_hours: "Monday to Friday: 6pm, Saturday to Sunday: 4pm"

  },

  {
    user_id: 4,
    name: "Sargent and Co",
    address: "74 Mountgrove Road, Finsbury Park, London, N5 2LT",
    open_hours: "Monday to Friday: 9am, Saturday to Sunday: 10.30am",
    close_hours: "Monday to Friday: 5.30pm, Saturday to Sunday: 4.30pm"

  },
]

Shop.create!(shops_attributes)

puts 'Shops created'

puts 'Creating jobs'

jobs_attributes = [

  {
    name: "Puncture Repair",
    description: "Puncture repairs (including tube)",
    price: 15,
    service_id: 1
  },

  {
    name: "Gear Service",
    description: "Full gear service for road and racing bikes",
    price: 20,
    service_id: 2
  },

  {
    name: "Brake Service",
    description: "Does
     not include parts, priced per brake",
    price: 25,
    service_id: 3
  },

  {
    name: "Basic Service",
    description: "Tune up: Brakes, gears, wheels, tyres and chains covered",
    price: 45,
    service_id: 2
  },

  {
    name: "Bike Build",
    description: "Complete build or frame shop",
    price: 140,
    service_id: 2
  },

  {
    name: "Hourly Rate",
    description: "Bespoke fixes at an hourly price. Final costs estimated only",
    price: 60,
    service_id: 5
  },

  {
    name: "Frame Alignment",
    description: "Adjustment service for full frame alignment",
    price: 20,
    service_id: 7
  },

  {
    name: "Rack Fitting",
    description: "Build and fit of bike racks",
    price: 10,
    service_id: 9
  },

  {
    name: "Enhanced Service",
    description: "Pads, cables. wheels, frame, fork, chains, brakes, brackets and headset covered",
    price: 110,
    service_id: 1
  },

  {
    name: "Full Monty Service",
    description: "Complete strip down and rebuild of cycle - replace of items if necessary",
    price: 180,
    service_id: 3
  },

]

Job.create!(jobs_attributes)

puts 'Jobs created'


puts 'Creating services'

services_attributes = [

  {
    shop_id: 1,
  },


  {
    shop_id: 2,
  },


  {
    shop_id: 3,
  },


  {
    shop_id: 4,
  },


  {
    shop_id: 5,
  },


  {
    shop_id: 6,
  },


  {
    shop_id: 7,
  },


  {
    shop_id: 8,
  },


  {
    shop_id: 9,
  },


  {
    shop_id: 10,
  },

]

Service.create!(services_attributes)

puts 'Services created'


puts 'Creating bookings'

bookings_attributes = [

  {
    date: Date.new(2020,3,5),
    user_id: 1,
    service_id: 1
  },

  {
    date: Date.new(2020,2,3),
    user_id: 2,
    service_id: 1
  },

  {
    date: Date.new(2020,12,7),
    user_id: 1,
    service_id: 1
  },

  {
    date: Date.new(2020,3,25),
    user_id: 1,
    service_id: 1
  },

  {
    date: Date.new(2020,6,12),
    user_id: 1,
    service_id: 1
  },

  {
    date: Date.new(2020,12,3),
    user_id: 2,
    service_id: 1
  },

  {
    date: Date.new(2020,6,17),
    user_id: 3,
    service_id: 1
  },

  {
    date: Date.new(2020,6,1),
    user_id: 4,
    service_id: 1
  },

  {
    date: Date.new(2020,7,14),
    user_id: 4,
    service_id: 1
  },

]

Booking.create!(bookings_attributes)

puts 'Bookings created'

puts 'Creating reviews'

reviews_attributes = [

  {

    description: "Put my bike in for its annual service. Quick, responsive and did a great job",
    rating: 5,
    user_id: 1,
    shop_id: 1

  },

  {

    description: "Quite slow but now my brakes are as good as new = no more squeaking!",
    rating: 4,
    user_id: 1,
    shop_id: 1

  },

  {

    description: "Didn't actually fix my bike!!",
    rating: 2,
    user_id: 3,
    shop_id: 2

  },

  {

    description: "Stole my bike... not ideal. Would not recommend",
    rating: 1,
    user_id: 2,
    shop_id: 5

  },

  {

    description: "Cost less than I thought and could pay before I brought in my bike",
    rating: 5,
    user_id: 2,
    shop_id: 4

  },

  {

    description: "It looks like brand new!!",
    rating: 4,
    user_id: 1,
    shop_id: 2

  },

  {

    description: "Fixed and cleaned - superb service",
    rating: 5,
    user_id: 3,
    shop_id: 3

  },

]

Review.create!(reviews_attributes)

puts 'Reviews created'

puts "All done!"



