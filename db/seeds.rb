User.destroy_all
User.create!(email: "gltrmt@gmail.com", password: "123456", first_name: "Gaulthier", last_name: "Rémusat", phone_number: "0635771779", bio: "Salut, je suis Gaulthier, le gars qui transforme les mariages en événements inoubliables ! Avec mes blagues qui font mouche et mes talents d'improvisation, je suis là pour m'assurer que votre grand jour soit à la fois épique et sans stress. Que ce soit pour écrire un discours qui vous fera pleurer de rire ou pour empêcher votre oncle excentrique de monopoliser le micro, je suis votre homme. Préparez-vous à vivre un mariage dont tout le monde parlera encore dans 50 ans !")

Witness.destroy_all

jp = Witness.create!(price_per_day: 500, address: "12 rue de la Paix, 75002 Paris", name: "Jean-Pierre", description: "Je m'appelle Jean-Pierre et je suis le témoin que vous recherchez pour votre mariage ! Avec mon humour décapant, mon sourire éblouissant, et une capacité innée à gérer les situations les plus rocambolesques, je suis prêt à rendre votre grand jour inoubliable. Que ce soit pour des discours mémorables, des danses endiablées ou des selfies légendaires, je suis votre homme ! Alors, si vous voulez un mariage rempli de rires et de moments inoubliables, faites appel à moi, Jean-Pierre, le témoin extraordinaire !", gender: "homme", user_id: User.first.id)
jp.photo.attach(io: File.open('app/assets/images/pernault.jpg'), filename: 'jean-pierre.jpg', content_type: 'image/jpg')

Booking.destroy_all
Booking.create!(wedding_date: Date.new(2024, 6, 10), wedding_address: "12 rue de la Paix, 75002 Paris", booking_status: "attente", user_id: User.first.id, witness_id: Witness.first.id)
