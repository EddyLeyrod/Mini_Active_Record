require_relative 'app'

def assert(truthy)
  raise "Tests failed" unless truthy
end

#chef = Chef.find(1)

# # Este es un ejemplo de test ya que los nombres de los chefs son aleatorios, este test muy probablemente fallará
# p chef[:first_name] 
# assert p chef[:first_name] == 'Dennis'
# assert chef[:last_name] == 'Adria'

#Si lees el método create este se compone de los métodos 'new' y 'save' por ello si 'create' funciona los otros dos también. 
# Este es un ejemplo de una prueba para el método 'find'. 
# Como en la linea pasada creamos al primer chef entonces podemos buscarlo con el id => 1
# Estas son pruebas para el método '[ ]'
# Como sabemos que el chef que creamos se llama 'Eduardo' y apellida 'Fernandez', podemos escribir la siguiente comparación. 

puts "Pruebas Chef"
# Este es un ejemplo de como crear una prueba para el método 'create'. 
chef = Chef.create(first_name: "Eduardo", last_name: "Fernandez", email:"eduardo@gmail.com", phone:"930-028-2908 x7555",
                          birthday:Time.now)

p chef[:first_name]
p "all"
 Chef.all.count
p "find"
 Chef.find(1) 
p "where"
 Chef.where('id = 20')
assert p chef[:first_name] == 'Eduardo'
assert p chef[:last_name] == 'Fernandez'
p chef.class == Chef
p chef.meals == []

p chef[:first_name] = 'bloky'
p chef[:first_name] == 'bloky'
#chef.add_meals("Argumentos Meals  array??")

puts "**********"
puts "**********"

puts "Pruebas Meal"
#prueba para Meal create
meal = Meal.create(name: "Pozole", chef_id: 30)
Meal.all.count
Meal.find(90)
Meal.where('chef_id = 30')
p meal[:name]
assert p meal[:name] == "Pozole"
assert p meal[:chef_id] == 30
p meal.class == Meal
p meal[:name]='Pastor'
p meal[:name] == 'Pastor'
p meal.chef == []
p meal.new_record? === false


puts "finished"