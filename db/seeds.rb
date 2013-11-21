# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
ActivityCategory.create(name: 'Activités nautique')
Season.create([{name: 'Hiver'}, {name: 'Été'}])
PubType.create([{name: 'SiderBar'}, {name: 'Bottom'}])
AdministrativeRegion.create(name: 'Québec')

Home.create(title: "Aventura Pleinair la référence à Québec", who_one_title: "PRESENTATION DU CONCEPT", who_one_text: "<ul><li>Retrouvez toutes les activités de plein air non motorisées au Québec</li><li>Des lieux diversifiés pour toutes les passions</li></ul>", who_two_title: "AVENTURA PLEIN AIR", who_two_text: "<ul><li>Transmettre la passion du plein air</li><li>Faire découvrir l’environnement incroyable du Québec</li></ul>", who_video_link: "http://vimeo.com/78011502", featured_caption_place: "Parc de la Jacques Cartier", featured_caption_activity: "Promenade en kayak", promotion_text: "Texte descritpif publicitaire Texte descritpif publicitaireTexte descritpif publicitaire Texte descritpif publicitaireTexte descritpif descritpif publicitaireTexte.Texte descrit- pif publicitaireTexte descritpif Texte.")
FooterText.create(max_title: "Maxime", max_subtitle: "Le sportif passionné", max_text: "Pour certains le cyclisme, pour d’autres le ski, Maxime, lui, est passionné par toutes les activités de plein air. Etudiant dans le domaine de l’administration et du tourisme il est le directeur d’Aventura Plein Air permettant aux passionnés de retrouver toutes leurs activités de plein air favorites et de nombreuses informations sur les événements sportifs ou encore les lieux les plus extraordinaires pour pratiquer leur passion.", photograph_title: "Photographe de talent", photograph_subtitle: "Live what you love...", photograph_text: "Etabli à Montréal, Mathieu Dupuis allie passion et créativité pour offrir à ses clients une expertise et une expérience de haut niveau en photographie numérique...Il adore sortir de sa zone de confort et mettre sa créativité à l’épreuve. Rapidité et rigueur mathieu véhicule des valeurs qui lui sont chères. Le photographe du dehors est à l’aise sur tous les types de terrains. Il a acquis une solide réputation au fil des années et offre une expertise en art numérique qui apporte énormément à notre site internet Aventura Plein Air. Un grand merci pour sa collaboration!")
TopLocation.create(text_top: "Beaucoup de texte blablabla", text_bottom: "Beaucoup de texte blablabla")
TopEvent.create(text_top: "Beaucoup de texte blablabla", text_bottom: "Beaucoup de texte blablabla")
TopActivity.create(text_top: "Beaucoup de texte blablabla", text_bottom: "Beaucoup de texte blablabla")
AdminUser.create(:email => "cloutier_16@hotmail.com", :password => 'password', :password_confirmation => 'password')