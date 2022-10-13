puts "Seeding service ...."

manicure= Service.create!(service_type:"Manicure", pricing:1000, image:"https://i.pinimg.com/originals/88/2f/1e/882f1e54a9931c26ce88d17c0de876d8.png")

pedicure = Service.create!(service_type:"Pedicure", pricing:1000, image:"https://i.etsystatic.com/22331060/r/il/2df399/2886898454/il_570xN.2886898454_onk4.jpg")

facial = Service.create!(service_type:"Facial", pricing:1500, image:"https://image.shutterstock.com/image-photo/lifestyle-african-american-woman-having-260nw-34687603.jpg")

braiding = Service.create!(service_type:"Braiding", pricing:2000, image:"https://www.socialbeautyclub.com/wp-content/uploads/2021/09/Box-Braid-Hairstyle-27.png")

puts "Seeding service_provider ..."

service_provider1= ServiceProvider.create!(name:"Lucy Atieno", gender:"Female",email: "lucyatiesh@gmail.com",password:"lucyatieno")
service_provider2= ServiceProvider.create!(name:"Grace Wambui", gender:"Female",email:"gracewambui@gmail.com",password:"gracewambui")
service_provider3= ServiceProvider.create!(name:"John Wafula", gender:"Male",email:"johnwafula@gmail.com",password:"johnwafula")
service_provider4= ServiceProvider.create!(name:"Mike Onyango", gender:"Male",email:"mikeonyango@gmail.com",password:"mikeonyango")

puts "Seeding bookings ..."

booking1= Booking.create!(client: "Janet Njeri", service_provider_id:1, service_id:1, date: "11/12/2022")
booking2= Booking.create!(client: "Mary Mwende", service_provider_id:2, service_id:2, date: "11/12/2022")

booking3= Booking.create!(client: "Olive Chebet", service_provider_id:3, service_id:3, date: "12/12/2022")

booking4= Booking.create!(client: "Anastacia Wanjiru", service_provider_id:4, service_id:4, date: "11/11/2022")

puts "Done seeding ..."