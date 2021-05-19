require "open-uri"

Listing.destroy_all

# Listings Seeds
file1 = URI.open('https://images.unsplash.com/photo-1602537675897-1285bfbcd014?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1460&q=80')
listing1 = Listing.create!(
  title: 'Retreat in Plateau',
  description: "Cozy escape!",
  address: '306 Fleury Ouest, Montreal',
  price_per_hour: 32,
  avg_rating: 4.3,
  user_id: 1)
listing1.photo.attach(io: file1, filename: 'yard1.jpg', content_type: 'image/jpg')

# file2 = URI.open('https://assets-news.housing.com/news/wp-content/uploads/2021/03/24164622/Tips-to-set-up-your-own-backyard-garden-FB-1200x700-compressed.jpg')
# listing2 = Listing.create!(
#   title: 'Best yard in Outremont',
#   description: "For up to 20 people",
#   address: '176 Saint Viateur West Street, Montreal',
#   price_per_hour: 25,
#   avg_rating: 3.9,
#   user_id: 1)
# listing2.photo.attach(io: file2, filename: 'yard2.jpg', content_type: 'image/jpg')

file3 = URI.open('https://i.pinimg.com/originals/76/73/33/767333553e8b6ff80cf69649b76675dc.jpg')
listing3 = Listing.create!(
  title: 'Oasis in Little Italy',
  description: "Outdoor fridge to keep your drinks cool!",
  address: '104 Avenue Laurier O, Montreal',
  price_per_hour: 26,
  avg_rating: 4.7,
  user_id: 1)
listing3.photo.attach(io: file3, filename: 'yard3.jpg', content_type: 'image/jpg')

file4 = URI.open('https://i.pinimg.com/originals/17/38/05/173805f409c73655094241a0ddb844e7.jpg')
listing4 = Listing.create!(
  title: 'Yard with pool',
  description: "Swim with your friends!",
  address: '6230 St Hubert St, Montreal',
  price_per_hour: 32,
  avg_rating: 4.2,
  user_id: 1)
listing4.photo.attach(io: file4, filename: 'yard4.jpg', content_type: 'image/jpg')

file5 = URI.open('https://lh3.googleusercontent.com/proxy/MpXwo1r-rqHgqjFto55ZMk2ue9So0U_5rV8WDvNuZRQGBY3peBq5FezpIm0ZB549RPF2XHJf9oP6rhWRBES6wr5iivPMLu0DH1KeLaOSaJZ0u0VMNyY')
listing5 = Listing.create!(
  title: 'Perfect date spot',
  description: "This quiet space is perfect for a romantic dinner",
  address: '5201 St Laurent Blvd, Montreal',
  price_per_hour: 50,
  avg_rating: 4.8,
  user_id: 1)
listing5.photo.attach(io: file5, filename: 'yard5.jpg', content_type: 'image/jpg')

file6 = URI.open("https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F37%2F2020%2F07%2F16%2FLiu-family-sitting-in-back-garden-august-2020-magazine.jpg")
listing6 = Listing.create!(
  title: 'Mile end retreat',
  description: "Relax in the center of it all!",
  address: '5357 Park Ave, Montreal',
  price_per_hour: 39,
  avg_rating: 4.0,
  user_id: 1)
listing6.photo.attach(io: file6, filename: 'yard6.jpg', content_type: 'image/jpg')

