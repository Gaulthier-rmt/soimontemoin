User.destroy_all
User.create!(email: "gltrmt@gmail.com", password: "123456", first_name: "Gaulthier", last_name: "Rémusat", phone_number: "0635771779", bio: "Salut, je suis Gaulthier, le gars qui transforme les mariages en événements inoubliables ! Avec mes blagues qui font mouche et mes talents d'improvisation, je suis là pour m'assurer que votre grand jour soit à la fois épique et sans stress. Que ce soit pour écrire un discours qui vous fera pleurer de rire ou pour empêcher votre oncle excentrique de monopoliser le micro, je suis votre homme. Préparez-vous à vivre un mariage dont tout le monde parlera encore dans 50 ans !")

Witness.destroy_all

patrick = Witness.create!(price_per_day: 54000, address: "33 rue des sardines",
                name: "Patrick Sébastien",
                description: "Salut les copains ! C'est Patrick Sébastien - Votre Futur Témoin de Mariage !
Vous voulez un mariage où on s’éclate ? Ne cherchez plus, je suis là ! Moi, Patrick Sébastien, le roi des soirées endiablées, je propose de devenir votre témoin de mariage. Oui, oui, vous avez bien entendu !
Imaginez : je débarque avec mon sourire, ma bonne humeur, et mes chansons cultes. On va tous chanter Les Sardines à pleins poumons, faire la Fiesta jusqu'au bout de la nuit, et lancer un petit Petit Bonhomme en Mousse pour des fous rires garantis !
Avec moi, pas de chichis, que du bonheur et de la rigolade. Un discours marrant ? Je m’en charge ! Une ambiance de folie ? Comptez sur moi ! Je vous promets un mariage où tout le monde se lâche, se marre et danse comme des dingues.
Alors, prêts à faire de votre mariage une fête mémorable ? Allez, on se lâche et on fait péter la soirée !",
                gender: "homme", user_id: User.first.id)

                patrick.photo.attach(io: File.open('app/assets/images/patrick.jpg'), filename: 'patrick.jpg', content_type: 'image/jpg')

                manu = Witness.create!(price_per_day: 1000000, address: "Palais de L'Elysée, 75008 Paris",
                name: "Emmanuel Macron",
                description: "Moi, Emmanuel Macron, Président de la République (quand je ne suis pas témoin de mariage), je me propose pour faire de votre mariage un événement inoubliable.
Imaginez-moi, avec mon charisme et mon éloquence, prêt à vous accompagner lors de cette journée exceptionnelle. Je ferai des discours émouvants, plein de sincérité et de belles anecdotes. Vous pouvez compter sur moi pour apporter une touche d’élégance et de solennité à votre cérémonie.
Avec moi, pas de stress, juste des moments authentiques et mémorables. Un discours qui touche le cœur de tous vos invités ? Je m’en charge ! Besoin d’une présence rassurante et charismatique ? Vous pouvez compter sur moi ! Je vous promets un mariage où tout le monde se sent bien et profite de chaque instant, avec un témoin qui sait comment captiver son audience.
Alors, prêts à vivre un mariage mémorable avec un témoin qui sait comment marquer les esprits ? Allez, on se prépare à une journée extraordinaire !",
                gender: "homme", user_id: User.first.id)
                manu.photo.attach(io: File.open('app/assets/images/manu.jpg'), filename: 'manu.jpg', content_type: 'image/jpg')


               mimi = Witness.create!(price_per_day: 3000, address: "La maison des 7 nains",
                name: "Mimi Mathy",
                description: "Vous cherchez un témoin de mariage qui apporte de la joie et une touche de magie à votre grand jour ? Malgré ma petite taille, je vous promets que je serai à la hauteur de votre mariage ! Moi, Mimi Mathy, alias Joséphine, ange gardien, je me propose pour faire de votre mariage un événement inoubliable.
Imaginez-moi, avec mon sourire et ma bonne humeur, prête à vous accompagner lors de cette journée exceptionnelle. Je ferai des discours émouvants et drôles, avec des anecdotes qui vous feront sourire et peut-être même verser une petite larme de bonheur.
Avec moi, pas de stress, juste des moments authentiques et remplis de tendresse. Un discours qui touche le cœur de tous vos invités ? Je m’en charge ! Besoin d’une présence pétillante et rassurante ? Vous pouvez compter sur moi ! Je vous promets un mariage où tout le monde se sent bien et profite de chaque instant, avec un témoin qui sait comment mettre de l'ambiance.
Alors, prêts à vivre un mariage mémorable avec une témoin qui sait comment rendre chaque moment magique ? Allez, on se prépare à une journée extraordinaire !",
                gender: "femme", user_id: User.first.id)
                mimi.photo.attach(io: File.open('app/assets/images/mimi.jpg'), filename: 'mimi.jpg', content_type: 'image/jpg')


               jean = Witness.create!(price_per_day: 14000, address: "3 boulevard des stars",
                name: "Jean Pierre Pernaut",
                description: "L'homme qui a passé sa vie à vous parler de la France profonde, je me propose pour faire de votre mariage un événement inoubliable.
Imaginez-moi, avec mon ton inimitable et mon sourire chaleureux, prêt à vous accompagner lors de cette journée exceptionnelle. Je vous promets des discours aussi captivants que le journal de 13 heures, avec des anecdotes pittoresques qui feront rire et émouvoir tout le monde. Et si vous avez besoin d'une météo de dernière minute, je suis votre homme !
Avec moi, pas de tracas, juste des moments authentiques et remplis de bonne humeur. Un discours qui fait mouche et touche le cœur de tous vos invités ? Je m’en occupe ! Besoin d’une présence rassurante et un brin nostalgique ? Vous pouvez compter sur moi ! Je vous promets un mariage où tout le monde se sent bien et profite de chaque instant, avec un témoin qui sait comment captiver son audience.
Alors, prêts à vivre un mariage mémorable avec un témoin qui a l'art de rendre chaque moment spécial ? Allez, on se prépare à une journée extraordinaire !",
                gender: "homme", user_id: User.first.id)
                jean.photo.attach(io: File.open('app/assets/images/jean.jpg'), filename: 'jean.jpg', content_type: 'image/jpg')



               cyril = Witness.create!(price_per_day: 1, address: "Boulevard touche pas à mon poste",
                name: "Cyril Hanouna",
                description: "Salut les chéris, c'est Cyril Hanouna  qui va mettre le feu à votre journée et dévoiler quelques scoops croustillants ? Ne cherchez plus, Cyril Hanouna est là pour vous !
Imaginez-moi, avec mon énergie débordante et mon humour sans limite, prêt à faire de votre mariage une véritable émission de télé-réalité. Je vais vous raconter des anecdotes hilarantes, dévoiler quelques fake news sur les mariés et les invités, et me moquer ouvertement des gens présents. On va passer un moment inoubliable, plein de surprises et de fous rires.
Avec moi, pas de stress, juste des moments mémorables. Un discours qui fait éclater de rire toute l’assemblée ? Je m’en occupe ! Besoin de lancer quelques défis délirants et de mettre l’ambiance ? Vous pouvez compter sur moi ! Je vous promets un mariage où tout le monde s’amuse et où chaque instant est rempli de joie et de rebondissements.
Alors, prêts à vivre un mariage mémorable avec un témoin qui sait comment mettre le paquet, faire le show et se moquer gentiment de tout le monde ? Allez, on se prépare à une journée extraordinaire avec un peu de folie made in Hanouna !",
                gender: "homme", user_id: User.first.id)
                cyril.photo.attach(io: File.open('app/assets/images/cyril.jpg'), filename: 'cyril.jpg', content_type: 'image/jpg')



                margot = Witness.create!(price_per_day: 500000, address: "Boulevard de Barbie",
                name: "Margot Robbie",
                description: "Vous cherchez le témoin de mariage parfait qui saura éclipser tout le monde, y compris (désolé) votre future épouse ? Ne cherchez plus, Margot Robbie est là pour vous !
Imaginez-moi, avec mon charme hollywoodien et mon sourire éclatant, prête à faire de votre mariage un véritable blockbuster. Que ce soit pour des discours émouvants ou des anecdotes croustillantes, je serai là pour apporter une touche de glamour à votre grand jour. Vous voulez des selfies de rêve et des souvenirs inoubliables ? Je m’en charge !
Avec moi, pas de stress, juste des moments magiques et plein de paillettes. Un discours qui fait sensation et captive tous vos invités ? C'est dans la poche ! Besoin d’une présence charismatique et éblouissante ? Vous pouvez compter sur moi ! Je vous promets un mariage où tout le monde sera ébloui et où chaque instant sera digne des plus grands films.
Alors, prêts à vivre un mariage mémorable avec un témoin qui sait comment rendre chaque moment inoubliable ? Allez, on se prépare à une journée extraordinaire avec un peu de magie hollywoodienne !",
                gender: "homme", user_id: User.first.id)
                margot.photo.attach(io: File.open('app/assets/images/margot.jpg'), filename: 'margot.jpg', content_type: 'image/jpg')
