User.destroy_all
User.create!(email: "gltrmt@gmail.com", password: "123456", first_name: "Gaulthier", last_name: "Rémusat", phone_number: "0635771779", bio: "Salut, je suis Gaulthier, le gars qui transforme les mariages en événements inoubliables ! Avec mes blagues qui font mouche et mes talents d'improvisation, je suis là pour m'assurer que votre grand jour soit à la fois épique et sans stress. Que ce soit pour écrire un discours qui vous fera pleurer de rire ou pour empêcher votre oncle excentrique de monopoliser le micro, je suis votre homme. Préparez-vous à vivre un mariage dont tout le monde parlera encore dans 50 ans !")

Witness.destroy_all
Witness.create!(price_per_day: 500, address: "12 rue de la Paix, 75002 Paris", name: "Jean-Pierre", user_id: User.first.id, gender: "homme")
