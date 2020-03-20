require 'date'
require 'open-uri'

puts "Cleaning the Fixr database"
User.destroy_all
Shop.destroy_all
Job.destroy_all
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

    first_name: "Bradley",
    last_name: "Wiggins",
    email: "brad@wiggins.com",
    password: "bradley"

]

User.create!(users_attributes)

puts 'Users created'

puts 'Creating shops'


file = URI.open('https://res.cloudinary.com/nationwide/image/upload/v1583443504/S8kRDygRyNHLjd7nbHYstgKo.jpg')
shop = Shop.new(
  user_id: 5,
  name: "Brick Lane Bikes",
  address: "118 Bethnal Green Rd, Shoreditch, London E2 6DG",
  open_hours: "Mon - Fri: 9am-6pm,       Sat / Sun: 10am-4pm",
  email: "info@bricklanebikes.co.uk",
  phone: '02073336666')
shop.photo.attach(io: file, filename: 'new-bike.jpg', content_type: 'image/jpg')
shop.save!


file = URI.open('https://res.cloudinary.com/nationwide/image/upload/v1583049318/1cDjkYnsrF3iAcMuy1S9XNj1.jpg')
shop = Shop.new(
  user_id: 5,
  name: "SBC Cycles",
  address: "41 Cropley Street, Hoxton, London, N1 7HT",
  open_hours: "Mon - Fri: 11am-7pm,        Sat / Sun: 11am-4pm",
  email: "info@sbc-cycles.co.uk",
  phone: '02075558888')
shop.photo.attach(io: file, filename: 'new-bike.jpg', content_type: 'image/jpg')
shop.save!


file = URI.open('https://res.cloudinary.com/nationwide/image/upload/v1582975939/Fixr/cool-shop-2_thmf5x.jpg')
shop = Shop.new(
  user_id: 1,
  name: "Bikefix",
  address: "48 Lamb's Conduit Street, Holborn, London, WC1N 3LH",
  open_hours: "Mon - Fri: 9am-6pm,        Sat / Sun: 10am-4pm",
  email: "info@bikefix.com",
  phone: '02074449999')
shop.photo.attach(io: file, filename: 'new-bike.jpg', content_type: 'image/jpg')
shop.save!


file = URI.open('https://res.cloudinary.com/nationwide/image/upload/v1582975939/Fixr/cool-shop-1_kjbbh7.jpg')
shop = Shop.new(
  user_id: 1,
  name: "Condor Cycles",
  address: "49-53 Gray's Inn Road, Holborn, London, WC1X 8PP",
  open_hours: "Mon - Fri: 7.30am-5.30pm,        Sat / Sun: 9am-5pm",
  email: "info@condor-cycles.com",
  phone: '02074447777')
shop.photo.attach(io: file, filename: 'new-bike.jpg', content_type: 'image/jpg')
shop.save!


file = URI.open('https://res.cloudinary.com/nationwide/image/upload/v1582975939/Fixr/cool-shop-1_kjbbh7.jpg')
shop = Shop.new(
  user_id: 1,
  name: "Brixton Cycles",
  address: "296-298 Brixton Road, Ferndale, London, SW9 6AG",
  open_hours: "Mon - Fri: 9.30am-5.30pm,        Sat / Sun: 11am-4pm",
  email: "info@brixtoncycles.co.uk",
  phone: '02072225555')
shop.photo.attach(io: file, filename: 'new-bike.jpg', content_type: 'image/jpg')
shop.save!


file = URI.open('https://res.cloudinary.com/nationwide/image/upload/v1582974684/Fixr/dEcy9s9jouGmVdaxXjuvHtgF.jpg')
shop = Shop.new(
  user_id: 1,
  name: "Cloud 9 Cycles",
  address: "38 Store Street, Bloomsbury, London, WC1E 7DB",
  open_hours: "Mon - Fri: 9am-5pm,         Sat / Sun: 9am-5pm",
  email: "info@cloud9bikes.co.uk",
  phone: '02072223333')
shop.photo.attach(io: file, filename: 'new-bike.jpg', content_type: 'image/jpg')
shop.save!


file = URI.open('https://res.cloudinary.com/nationwide/image/upload/v1582972390/Fixr/M82mVT7RzL4L74JNnT14um4w.jpg')
shop = Shop.new(
  user_id: 1,
  name: "Electric Bikes",
  address: "37 Bermondsey Street, Bermondsey, London, SE1 3JW",
  open_hours: "Mon - Fri: 10am-5.30pm,
  Sat / Sun: 10.30am-4.30pm",
  email: "info@fullychargedbikes.co.uk",
  phone: '02071112222')
shop.photo.attach(io: file, filename: 'new-bike.jpg', content_type: 'image/jpg')
shop.save!


file = URI.open('https://res.cloudinary.com/nationwide/image/upload/v1582976118/Fixr/cool-shop-4_rmxhae.jpg')
shop = Shop.new(
  user_id: 4,
  name: "London Bike Kitchen",
  address: "28 Whitmore Road, London, N1 5QA",
  open_hours: "Mon - Fri: 10am-6pm,
  Sat / Sun: 12am-3pm",
  email: "info@londonbikekitchen.co.uk",
  phone: '02075469795')
shop.photo.attach(io: file, filename: 'new-bike.jpg', content_type: 'image/jpg')
shop.save!


#   {
#     user_id: 3,
#     name: "Cycle Surgery Bishops Square",
#     address: "12-13 Bishops Square, Spitalfields, London, E1 6EG",
#     open_hours: "Monday to Friday: 9am, Saturday to Sunday: 11am",
#     close_hours: "Monday to Friday: 6pm, Saturday to Sunday: 4pm",
#     photo: open("https://res.cloudinary.com/nationwide/image/upload/v1582386953/t1mmjhngcq6g6qabdrtj.jpg")

#   },

#   {
#     user_id: 4,
#     name: "Sargent and Co",
#     address: "74 Mountgrove Road, Finsbury Park, London, N5 2LT",
#     open_hours: "Monday to Friday: 9am, Saturday to Sunday: 10.30am",
#     close_hours: "Monday to Friday: 5.30pm, Saturday to Sunday: 4.30pm",
#     photo: open("https://res.cloudinary.com/nationwide/image/upload/v1582386953/t1mmjhngcq6g6qabdrtj.jpg")

#   },
# ]

# Shop.create!(shops_attributes)

# puts 'Shops created'


puts 'Creating jobs'

jobs_attributes = [

  {
    name: "Puncture Repair",
    description: "Puncture repairs (including tube)",
    price: 15,
    shop_id: 1
  },

  {
    name: "Gear Service",
    description: "Full gear service for road and racing bikes",
    price: 20,
    shop_id: 1
  },

  {
    name: "Brake Service",
    description: "Does
     not include parts, priced per brake",
    price: 25,
    shop_id: 1
  },

  {
    name: "Basic Service",
    description: "Tune up: Brakes, gears, wheels, tyres and chains covered",
    price: 45,
    shop_id: 1
  },

  {
    name: "Bike Build",
    description: "Complete build or frame shop",
    price: 140,
    shop_id: 1
  },

  {
    name: "Wheel rebuild",
    description: "Bespoke wheel construction service and wheel trueing",
    price: 60,
    shop_id:1
  },

  {
    name: "Frame Alignment",
    description: "Adjustment service for full frame alignment",
    price: 20,
    shop_id: 1
  },

  {
    name: "Rack Fitting",
    description: "Build and fit of bike racks",
    price: 10,
    shop_id: 1
  },

  {
    name: "Enhanced Service",
    description: "Pads, cables. wheels, frame, fork, chains, brakes, brackets and headset covered",
    price: 110,
    shop_id: 1
  },

  {
    name: "Full Monty Service",
    description: "Complete strip down and rebuild of cycle - replace of items if necessary",
    price: 180,
    shop_id: 1
  },

  {
    name: "Puncture Repair",
    description: "Puncture repairs (including tube)",
    price: 15,
    shop_id: 2
  },

  {
    name: "Gear Service",
    description: "Full gear service for road and racing bikes",
    price: 20,
    shop_id: 2
  },

  {
    name: "Brake Service",
    description: "Does not include parts, priced per brake",
    price: 25,
    shop_id: 2
  },

  {
    name: "Basic Service",
    description: "Tune up: Brakes, gears, wheels, tyres and chains covered",
    price: 45,
    shop_id: 2
  },

  {
    name: "Bike Build",
    description: "Complete build or frame shop",
    price: 140,
    shop_id: 2
  },

  {
    name: "Wheel rebuild",
    description: "Bespoke wheel construction service and wheel trueing",
    price: 60,
    shop_id:2
  },

  {
    name: "Frame Alignment",
    description: "Adjustment service for full frame alignment",
    price: 20,
    shop_id: 2
  },

  {
    name: "Rack Fitting",
    description: "Build and fit of bike racks",
    price: 10,
    shop_id: 2
  },

  {
    name: "Enhanced Service",
    description: "Pads, cables. wheels, frame, fork, chains, brakes, brackets and headset covered",
    price: 110,
    shop_id: 2
  },

  {
    name: "Full Monty Service",
    description: "Complete strip down and rebuild of cycle - replace of items if necessary",
    price: 180,
    shop_id: 2
  },

  {
    name: "Puncture Repair",
    description: "Puncture repairs (including tube)",
    price: 15,
    shop_id: 3
  },

  {
    name: "Gear Service",
    description: "Full gear service for road and racing bikes",
    price: 20,
    shop_id: 3
  },

  {
    name: "Brake Service",
    description: "Does
     not include parts, priced per brake",
    price: 25,
    shop_id: 3
  },

  {
    name: "Basic Service",
    description: "Tune up: Brakes, gears, wheels, tyres and chains covered",
    price: 45,
    shop_id: 3
  },

  {
    name: "Bike Build",
    description: "Complete build or frame shop",
    price: 140,
    shop_id: 3
  },

  {
    name: "Wheel rebuild",
    description: "Bespoke wheel construction service and wheel trueing",
    price: 60,
    shop_id:3
  },

  {
    name: "Frame Alignment",
    description: "Adjustment service for full frame alignment",
    price: 20,
    shop_id: 3
  },

  {
    name: "Rack Fitting",
    description: "Build and fit of bike racks",
    price: 10,
    shop_id: 3
  },

  {
    name: "Enhanced Service",
    description: "Pads, cables. wheels, frame, fork, chains, brakes, brackets and headset covered",
    price: 110,
    shop_id: 3
  },

  {
    name: "Full Monty Service",
    description: "Complete strip down and rebuild of cycle - replace of items if necessary",
    price: 180,
    shop_id: 3
  },

{
    name: "Full Monty Service",
    description: "Complete strip down and rebuild of cycle - replace of items if necessary",
    price: 180,
    shop_id: 2
  },

  {
    name: "Puncture Repair",
    description: "Puncture repairs (including tube)",
    price: 15,
    shop_id: 3
  },

  {
    name: "Gear Service",
    description: "Full gear service for road and racing bikes",
    price: 20,
    shop_id: 4
  },

  {
    name: "Brake Service",
    description: "Does
     not include parts, priced per brake",
    price: 25,
    shop_id: 8
  },

  {
    name: "Basic Service",
    description: "Tune up: Brakes, gears, wheels, tyres and chains covered",
    price: 45,
    shop_id: 8
  },

  {
    name: "Bike Build",
    description: "Complete build or frame shop",
    price: 140,
    shop_id: 8
  },

  {
    name: "Wheel rebuild",
    description: "Bespoke wheel construction service and wheel trueing",
    price: 60,
    shop_id:8
  },

  {
    name: "Frame Alignment",
    description: "Adjustment service for full frame alignment",
    price: 20,
    shop_id: 8
  },

  {
    name: "Rack Fitting",
    description: "Build and fit of bike racks",
    price: 10,
    shop_id: 8
  },

  {
    name: "Enhanced Service",
    description: "Pads, cables. wheels, frame, fork, chains, brakes, brackets and headset covered",
    price: 110,
    shop_id: 8
  },

  {
    name: "Full Monty Service",
    description: "Complete strip down and rebuild of cycle - replace of items if necessary",
    price: 180,
    shop_id: 8
  },

  {
    name: "Puncture Repair",
    description: "Puncture repairs (including tube)",
    price: 15,
    shop_id: 4
  },

  {
    name: "Gear Service",
    description: "Full gear service for road and racing bikes",
    price: 20,
    shop_id: 4
  },

  {
    name: "Brake Service",
    description: "Does not include parts, priced per brake",
    price: 25,
    shop_id: 4
  },

  {
    name: "Basic Service",
    description: "Tune up: Brakes, gears, wheels, tyres and chains covered",
    price: 45,
    shop_id: 4
  },

  {
    name: "Bike Build",
    description: "Complete build or frame shop",
    price: 140,
    shop_id: 4
  },

  {
    name: "Wheel rebuild",
    description: "Bespoke wheel construction service and wheel trueing",
    price: 60,
    shop_id:4
  },

  {
    name: "Frame Alignment",
    description: "Adjustment service for full frame alignment",
    price: 20,
    shop_id: 4
  },

  {
    name: "Rack Fitting",
    description: "Build and fit of bike racks",
    price: 10,
    shop_id: 4
  },

  {
    name: "Enhanced Service",
    description: "Pads, cables. wheels, frame, fork, chains, brakes, brackets and headset covered",
    price: 110,
    shop_id: 4
  },


  {
    name: "Puncture Repair",
    description: "Puncture repairs (including tube)",
    price: 15,
    shop_id: 5
  },

  {
    name: "Gear Service",
    description: "Full gear service for road and racing bikes",
    price: 20,
    shop_id: 5
  },

  {
    name: "Brake Service",
    description: "Does
     not include parts, priced per brake",
    price: 25,
    shop_id: 5
  },

  {
    name: "Basic Service",
    description: "Tune up: Brakes, gears, wheels, tyres and chains covered",
    price: 45,
    shop_id: 5
  },

  {
    name: "Bike Build",
    description: "Complete build or frame shop",
    price: 140,
    shop_id: 5
  },

  {
    name: "Wheel rebuild",
    description: "Bespoke wheel construction service and wheel trueing",
    price: 60,
    shop_id: 5
  },

  {
    name: "Frame Alignment",
    description: "Adjustment service for full frame alignment",
    price: 20,
    shop_id: 5
  },

  {
    name: "Rack Fitting",
    description: "Build and fit of bike racks",
    price: 10,
    shop_id: 5
  },

  {
    name: "Enhanced Service",
    description: "Pads, cables. wheels, frame, fork, chains, brakes, brackets and headset covered",
    price: 110,
    shop_id: 5
  },


  {
    name: "Puncture Repair",
    description: "Puncture repairs (including tube)",
    price: 15,
    shop_id: 6
  },

  {
    name: "Gear Service",
    description: "Full gear service for road and racing bikes",
    price: 20,
    shop_id: 6
  },

  {
    name: "Brake Service",
    description: "Does
     not include parts, priced per brake",
    price: 25,
    shop_id: 6
  },

  {
    name: "Basic Service",
    description: "Tune up: Brakes, gears, wheels, tyres and chains covered",
    price: 45,
    shop_id: 6
  },

  {
    name: "Bike Build",
    description: "Complete build or frame shop",
    price: 140,
    shop_id: 6
  },

  {
    name: "Wheel rebuild",
    description: "Bespoke wheel construction service and wheel trueing",
    price: 60,
    shop_id: 6
  },

  {
    name: "Frame Alignment",
    description: "Adjustment service for full frame alignment",
    price: 20,
    shop_id: 6
  },

  {
    name: "Rack Fitting",
    description: "Build and fit of bike racks",
    price: 10,
    shop_id: 6
  },

  {
    name: "Enhanced Service",
    description: "Pads, cables. wheels, frame, fork, chains, brakes, brackets and headset covered",
    price: 110,
    shop_id: 6
  },


  {
    name: "Puncture Repair",
    description: "Puncture repairs (including tube)",
    price: 15,
    shop_id: 6
  },

  {
    name: "Gear Service",
    description: "Full gear service for road and racing bikes",
    price: 20,
    shop_id: 6
  },

  {
    name: "Brake Service",
    description: "Does
     not include parts, priced per brake",
    price: 25,
    shop_id: 7
  },

  {
    name: "Basic Service",
    description: "Tune up: Brakes, gears, wheels, tyres and chains covered",
    price: 45,
    shop_id: 7
  },

  {
    name: "Bike Build",
    description: "Complete build or frame shop",
    price: 140,
    shop_id: 7
  },

  {
    name: "Wheel rebuild",
    description: "Bespoke wheel construction service and wheel trueing",
    price: 60,
    shop_id: 7
  },

  {
    name: "Frame Alignment",
    description: "Adjustment service for full frame alignment",
    price: 20,
    shop_id: 7
  },

  {
    name: "Rack Fitting",
    description: "Build and fit of bike racks",
    price: 10,
    shop_id: 7
  },

  {
    name: "Enhanced Service",
    description: "Pads, cables. wheels, frame, fork, chains, brakes, brackets and headset covered",
    price: 110,
    shop_id: 7
  },
]

Job.create!(jobs_attributes)

puts 'Jobs created'


puts 'Creating bookings'

bookings_attributes = [

  {
    date: Date.new(2020,3,5),
    user_id: 2,
    job_id: 1,
    job_complete: false

  },

  {
    date: Date.new(2020,2,4),
    user_id: 2,
    job_id: 2,
    job_complete: false
  },

  {
    date: Date.new(2020,2,7),
    user_id: 2,
    job_id: 3,
    job_complete: false
  },

  {
    date: Date.new(2020,3,25),
    user_id: 2,
    job_id: 8,
    job_complete: false
  },

  {
    date: Date.new(2020,3,12),
    user_id: 2,
    job_id: 9,
    job_complete: false
  },

  {
    date: Date.new(2020,2,4),
    user_id: 2,
    job_id: 10,
    job_complete: false
  },

  {
    date: Date.new(2020,3,17),
    user_id: 4,
    job_id: 11,
    job_complete: false
  },

  {
    date: Date.new(2020,2,1),
    user_id: 4,
    job_id: 29,
    job_complete: false
  },

  {
    date: Date.new(2020,3,14),
    user_id: 4,
    job_id: 34,
    job_complete: false
  },

    {
    date: Date.new(2020,3,5),
    user_id: 2,
    job_id: 15,
    job_complete: false

  },

  {
    date: Date.new(2020,2,4),
    user_id: 2,
    job_id: 15,
    job_complete: false
  },

  {
    date: Date.new(2020,2,7),
    user_id: 2,
    job_id: 17,
    job_complete: false
  },

  {
    date: Date.new(2020,2,25),
    user_id: 2,
    job_id: 18,
    job_complete: false
  },

  {
    date: Date.new(2020,2,12),
    user_id: 2,
    job_id: 21,
    job_complete: false
  },

  {
    date: Date.new(2020,3,4),
    user_id: 2,
    job_id: 23,
    job_complete: false
  },

  {
    date: Date.new(2020,3,17),
    user_id: 4,
    job_id: 35,
    job_complete: false
  },

  {
    date: Date.new(2020,2,1),
    user_id: 4,
    job_id: 1,
    job_complete: false
  },

  {
    date: Date.new(2020,4,14),
    user_id: 3,
    job_id: 44,
    job_complete: false
  },

      {
    date: Date.new(2020,3,5),
    user_id: 2,
    job_id: 15,
    job_complete: false

  },

  {
    date: Date.new(2020,2,4),
    user_id: 2,
    job_id: 15,
    job_complete: false
  },

  {
    date: Date.new(2020,2,7),
    user_id: 2,
    job_id: 17,
    job_complete: false
  },

  {
    date: Date.new(2020,1,12),
    user_id: 4,
    job_id: 18,
    job_complete: false
  },

  {
    date: Date.new(2020,2,1),
    user_id: 3,
    job_id: 21,
    job_complete: false
  },

  {
    date: Date.new(2020,3,1),
    user_id: 3,
    job_id: 23,
    job_complete: false
  },

  {
    date: Date.new(2020,3,1),
    user_id: 3,
    job_id: 35,
    job_complete: false
  },

  {
    date: Date.new(2020,2,1),
    user_id: 2,
    job_id: 1,
    job_complete: false
  },

  {
    date: Date.new(2020,1,14),
    user_id: 3,
    job_id: 44,
    job_complete: false
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
    shop_id: 2

  },

  {

    description: "Didn't actually fix my bike!!",
    rating: 2,
    user_id: 4,
    shop_id: 3

  },

  {

    description: "Expensive and made the problem worse. Bad experience",
    rating: 1,
    user_id: 2,
    shop_id: 4

  },

  {

    description: "Cost less than I thought and could pay before I brought in my bike",
    rating: 5,
    user_id: 2,
    shop_id: 5

  },

  {

    description: "It looks like brand new!!",
    rating: 4,
    user_id: 1,
    shop_id: 6

  },

  {

    description: "Fixed and cleaned - superb service",
    rating: 5,
    user_id: 3,
    shop_id: 7

  },

    {

    description: "Ran over a screw. Got puncture...shop fixed it really fast. Very pleased.",
    rating: 5,
    user_id: 1,
    shop_id: 8

  },

   {

    description: "Reliable service, quick and reasonalbe",
    rating: 3,
    user_id: 3,
    shop_id: 3

  },

     {

    description: "They know what they're doing, good service",
    rating: 5,
    user_id: 4,
    shop_id: 6

  },

     {

    description: "Overpriced and rude",
    rating: 1,
    user_id: 2,
    shop_id: 7

  },

     {

    description: "Love this shop, always take my bike here and friendly service",
    rating: 5,
    user_id: 3,
    shop_id: 2

  },

     {

    description: "Nice and easy, brought my bike in and fixed same day",
    rating: 4,
    user_id: 4,
    shop_id: 5

  },

     {

    description: "Flat tyre fixed on the spot, got to work on time. Win",
    rating: 5,
    user_id: 5,
    shop_id: 4

  },

     {

    description: "Good service - definitley recommend",
    rating: 4,
    user_id: 3,
    shop_id: 5

  },

     {

    description: "Reliable and reasonably priced. Nothing more to add",
    rating: 5,
    user_id: 1,
    shop_id: 4

  },

     {

    description: "Mixed experiences here but overall not a bad shop",
    rating: 3,
    user_id: 3,
    shop_id: 6

  },

     {

    description: "Lots of knowledge but pricey",
    rating: 4,
    user_id: 3,
    shop_id: 2

  },

]

Review.create!(reviews_attributes)

puts 'Reviews created'

puts "All done!"

