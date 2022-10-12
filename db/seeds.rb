puts "Seeding service ...."

manicure= Service.create!(service_type:"Manicure", pricing:1000, image:"https://i.pinimg.com/originals/88/2f/1e/882f1e54a9931c26ce88d17c0de876d8.png")

pedicure = Service.create!(service_type:"Pedicure", pricing:1000, image:"https://i.etsystatic.com/22331060/r/il/2df399/2886898454/il_570xN.2886898454_onk4.jpg")

facial = Service.create!(service_type:"Facial", pricing:1500, image:"https://image.shutterstock.com/image-photo/lifestyle-african-american-woman-having-260nw-34687603.jpg")

braiding = Service.create!(service_type:"Braiding", pricing:2000, image:"https://www.socialbeautyclub.com/wp-content/uploads/2021/09/Box-Braid-Hairstyle-27.png")

puts "Done seeding ..."