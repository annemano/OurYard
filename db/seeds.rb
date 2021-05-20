require "open-uri"

Listing.destroy_all
Booking.destroy_all

# Listings Seeds
file1 = URI.open('https://images.unsplash.com/photo-1602537675897-1285bfbcd014?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1460&q=80')
listing1 = Listing.create!(
  title: 'Retreat in Plateau',
  description: "Cozy escape!",
  address: '306 Fleury Ouest, Montreal',
  price_per_hour: 32,
  avg_rating: 4.3,
  user_id: 1)
listing1.photos.attach(io: file1, filename: 'yard1.jpg', content_type: 'image/jpg')

# file2 = URI.open('https://assets-news.housing.com/news/wp-content/uploads/2021/03/24164622/Tips-to-set-up-your-own-backyard-garden-FB-1200x700-compressed.jpg')
# listing2 = Listing.create!(
#   title: 'Best yard in Outremont',
#   description: "For up to 20 people",
#   address: '176 Saint Viateur West Street, Montreal',
#   price_per_hour: 25,
#   avg_rating: 3.9,
#   user_id: 1)
# listing2.photos.attach(io: file2, filename: 'yard2.jpg', content_type: 'image/jpg')

file3 = URI.open('https://i.pinimg.com/originals/76/73/33/767333553e8b6ff80cf69649b76675dc.jpg')
listing3 = Listing.create!(
  title: 'Oasis in Little Italy',
  description: "Outdoor fridge to keep your drinks cool!",
  address: '104 Avenue Laurier O, Montreal',
  price_per_hour: 26,
  avg_rating: 4.7,
  user_id: 1)
listing3.photos.attach(io: file3, filename: 'yard3.jpg', content_type: 'image/jpg')

file4 = URI.open('https://i.pinimg.com/originals/17/38/05/173805f409c73655094241a0ddb844e7.jpg')
listing4 = Listing.create!(
  title: 'Yard with pool',
  description: "Swim with your friends!",
  address: '6230 St Hubert St, Montreal',
  price_per_hour: 32,
  avg_rating: 4.2,
  user_id: 1)
listing4.photos.attach(io: file4, filename: 'yard4.jpg', content_type: 'image/jpg')

file5 = URI.open('https://lh3.googleusercontent.com/proxy/MpXwo1r-rqHgqjFto55ZMk2ue9So0U_5rV8WDvNuZRQGBY3peBq5FezpIm0ZB549RPF2XHJf9oP6rhWRBES6wr5iivPMLu0DH1KeLaOSaJZ0u0VMNyY')
listing5 = Listing.create!(
  title: 'Perfect date spot',
  description: "This quiet space is perfect for a romantic dinner",
  address: '5201 St Laurent Blvd, Montreal',
  price_per_hour: 50,
  avg_rating: 4.8,
  user_id: 1)
listing5.photos.attach(io: file5, filename: 'yard5.jpg', content_type: 'image/jpg')

file6 = URI.open("https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F37%2F2020%2F07%2F16%2FLiu-family-sitting-in-back-garden-august-2020-magazine.jpg")
listing6 = Listing.create!(
  title: 'Mile end retreat',
  description: "Relax in the center of it all!",
  address: '5357 Park Ave, Montreal',
  price_per_hour: 39,
  avg_rating: 4.0,
  user_id: 1)
listing6.photos.attach(io: file6, filename: 'yard6.jpg', content_type: 'image/jpg')

file7 = URI.open("https://unilock.com/wp-content/uploads/2020/07/Patio_0797-1300x649.jpg")
listing7 = Listing.create!(
  title: 'Luxury BBQ backyard',
  description: "Grill, Laugh & Enjoy!",
  address: '1326 Ontario St E, Montreal',
  price_per_hour: 31,
  avg_rating: 4.6,
  user_id: 1)
listing7.photos.attach(io: file7, filename: 'yard7.jpg', content_type: 'image/jpg')

file8 = URI.open("https://i.pinimg.com/564x/46/95/2a/46952a854f27e039c95c5add38692b94.jpg")
listing8 = Listing.create!(
  title: 'Fireplace Paradise',
  description: "Host a party with big field and a custom fireplace",
  address: '1550 Ave Papinea, Montreal',
  price_per_hour: 38,
  avg_rating: 4.1,
  user_id: 1)
listing8.photos.attach(io: file8, filename: 'yard8.jpg', content_type: 'image/jpg')

file9 = URI.open("https://i2.wp.com/www.gardeningchannel.com/wp-content/uploads/2020/09/gardeningchannel-backyard-patio-ideas.jpg?fit=730%2C400&ssl=1")
listing9 = Listing.create!(
  title: 'Romance the night away...',
  description: "Beautiful night patio for any special romantic dates",
  address: '5550 Rue Fullum, Montreal',
  price_per_hour: 38,
  avg_rating: 4.1,
  user_id: 1)
listing9.photos.attach(io: file9, filename: 'yard9.jpg', content_type: 'image/jpg')

file10 = URI.open("https://cdn.onekindesign.com/wp-content/uploads/2018/05/Patio-Ideas-for-Outdoor-Living-Entertaining-03-1-Kindesign.jpg")
listing10 = Listing.create!(
  title: 'Enjoy own SPA!!',
  description: "Enjoy the wooden patio chairs with your own spa",
  address: '6789 1ere Ave, Montreal',
  price_per_hour: 50,
  avg_rating: 4.7,
  user_id: 1)
listing10.photos.attach(io: file10, filename: 'yard10.jpg', content_type: 'image/jpg')

file11 = URI.open("https://hgtvhome.sndimg.com/content/dam/images/hgtv/fullset/2018/1/12/0/OA18-Surrounds-Landscape-Architecture_Heated-Cabana-Koi-Pond_1.jpg.rend.hgtvcom.966.644.suffix/1515774719745.jpeg")
listing11 = Listing.create!(
  title: 'Magical Backyard',
  description: "Welcome to your magical forest",
  address: '6790 1ere Ave, Montreal',
  price_per_hour: 55,
  avg_rating: 4.9,
  user_id: 1)
listing11.photos.attach(io: file11, filename: 'yard11.jpg', content_type: 'image/jpg')

file12 = URI.open("https://i2.wp.com/www.gardeningchannel.com/wp-content/uploads/2020/09/gardeningchannel-dine-al-fresco.jpg?resize=600%2C595&ssl=1")
listing12 = Listing.create!(
  title: 'Grill Patio Dream',
  description: "Host the best party in town...outside!",
  address: '66769 2e Av., Montreal',
  price_per_hour: 55,
  avg_rating: 4.9,
  user_id: 1)
listing12.photos.attach(io: file12, filename: 'yard12.jpg', content_type: 'image/jpg')









