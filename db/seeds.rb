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
]

Shop.create!(shops_attributes)

puts 'Shops created'

puts 'Creating jobs'

jobs_attributes = [

  {
    name: "Puncture Repair",
    description: "Puncture repairs (including tube)",
    price: 15
  },

  {
    name: "Gear Service",
    description: "Full gear service for road and racing bikes",
    price: 20
  },

  {
    name: "Brake Service",
    description: "Does not include parts, priced per brake",
    price: 25
  },

  {
    name: "Full Service",
    description: "Tune up: Brakes, gears, wheels, tyres and chains covered",
    price: 45
  },

  {
    name: "Bike Build",
    description: "Complete build or frame shop",
    price: 140
  },

]

Job.create!(jobs_attributes)

puts 'Jobs created'


puts 'Creating services'

services_attributes = [

  {
    shop_id: 1,
    job_id: 1
  },


  {
    shop_id: 2,
    job_id: 2
  },


  {
    shop_id: 3,
    job_id: 3
  },


  {
    shop_id: 4,
    job_id: 4
  },


  {
    shop_id: 5,
    job_id: 5
  },

]

Service.create!(services_attributes)

puts 'Services created'


puts 'Creating bookings'

bookings_attributes = [

  {
    date: Time.now,
    user_id: 1,
    service_id: 1
  },

  # {
  #   date: 03-26-2020,
  #   user_id: 2,
  #   service_id: 1
  # },

  # {
  #   date: 04-03-2020,
  #   user_id: 3,
  #   service_id: 1
  # },

  # {
  #   date: 04-03-2020,
  #   user_id: 4,
  #   service_id: 2
  # },

  # {
  #   date: 11-24-2020,
  #   user_id: 4,
  #   service_id: 3
  # },

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
    user_id: 2,
    shop_id: 1

  },

  {

    description: "Didn't actually fix my bike!!",
    rating: 2,
    user_id: 3,
    shop_id: 2

  },

]

Review.create!(reviews_attributes)

puts 'Reviews created'

puts "All done!"



