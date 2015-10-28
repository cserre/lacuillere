Restaurant.destroy_all
restaurants_attributes = [
  {
    name:         "Epicure au Bristol",
    address:      "112 rue du Fg St-Honoré 75008 Paris",
    phone:        "0102030405",
    category:     "french"
  },
  {
    name:         "La truffière",
    address:      "4 rue Blainville 75005 Paris",
    phone:        "0203040506",
    category:     "italian"
  },
  {
    name:         "Le pré catelan",
    address:      "route de Suresnes 75016 Paris",
    phone:        "0100000000",
    category:     "japanese"
  },
  {
    name:         "Le CO2",
    address:      "2 rue de l'église 94300 Vincennes",
    phone:        "0201020102",
    category:     "belgian"
  },
  {
    name:         "Mon super resto",
    address:      "route de Suresnes 94300 Vincennes",
    phone:        "0607080909",
    category:     "french"
  }
]
restaurants_attributes.each { |params| Restaurant.create!(params) }
