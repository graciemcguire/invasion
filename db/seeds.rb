
#aliens

alien1 = Alien.create(name: 'zorp', planet: 'kevin', favorite_food: 'chicken pizza')
alien2 = Alien.create(name: 'zim', planet: 'irk', favorite_food: 'tacos')
alien3 = Alien.create(name: 'the tallest', planet: 'kevin', favorite_food: 'kale salad')
alien4 = Alien.create(name: 'gregy', planet: 'earth', favorite_food: 'grass')
alien5 = Alien.create(name: 'amazen', planet: 'heaven', favorite_food: 'ham (seitan based)')


chicken1 =  Chicken.create(name: 'pauly', flavor: 'burnt', age: 15)
chicken2 =  Chicken.create(name: 'the kernel', flavor: 'orig', age: 100)
chicken3 =  Chicken.create(name: 'the colonol popeye', flavor: 'spinach', age: 23)
chicken4 =  Chicken.create(name: 'bob', flavor: 'bob', age: 40)
chicken5 =  Chicken.create(name: 'hank', flavor: 'charles manson', age: 69)

Abduction.create(location: 'dumbo', alien_id: alien1.id, chicken_id: chicken1.id)
Abduction.create(location: 'roswel', alien_id: alien2.id, chicken_id: chicken2.id)
Abduction.create(location: 'florida', alien_id: alien3.id, chicken_id: chicken1.id)
Abduction.create(location: 'florida', alien_id: alien4.id, chicken_id: chicken3.id)
