# *****************************************************
# Comprobar si un saludo elemento existe en un array
# *****************************************************

mensajes = ["Hola Juan", "Hola Maria", "Hola Pedro", "Hola Jose", "Hola Elias", "Hola Gustavo", "Hola Edgar"]

puts( mensajes.any? {|e| e=~ /Maria/} )
# Salida: true

# *****************************************************
# Eliminar elementos de un array (elimino a Maria y a Jose)
# *****************************************************

mensajes.delete_if {|e| e=~ /Maria|Jose/ } 

puts mensajes.inspect
# Salida: ["Hola Juan", "Hola Pedro", "Hola Elias", "Hola Gustavo", "Hola Edgar"]


# *****************************************************
# Cambiar elementos dentro de un array (Cambio el nombre a mayusculas)
# *****************************************************
mensajes.map! { |e| e.upcase }

puts mensajes.inspect
# Salida: ["HOLA JUAN", "HOLA PEDRO", "HOLA ELIAS", "HOLA GUSTAVO", "HOLA EDGAR"]

