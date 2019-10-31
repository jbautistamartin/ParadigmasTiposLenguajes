# *****************************************************
# Para declara un array simplemente se lo asignamos a la variable.
# *****************************************************

mensajes = ['Hola Juan', 'Hola Maria', 'Hola Pedro']

puts mensajes.inspect
# Salida: ["Hola Juan", "Hola Maria", "Hola Pedro"]


# *****************************************************
# Agregar un elemento a un array
# *****************************************************

mensajes << 'Hola Jose'

puts mensajes.inspect
# Salida: ["Hola Juan", "Hola Maria", "Hola Pedro", "Hola Jose"]

# *****************************************************
# Agrego un elemento en una posición aleatoria
# *****************************************************

mensajes[6] = 'Hola Elias'

puts mensajes.inspect
# Salida: ["Hola Juan", "Hola Maria", "Hola Pedro", "Hola Jose", nil, nil, "Hola Elias"]


# *****************************************************
# Agrego un elemento al final
# *****************************************************

mensajes << 'Hola Gustavo'

puts mensajes.inspect
# Salida: ["Hola Juan", "Hola Maria", "Hola Pedro", "Hola Jose", nil, nil, "Hola Elias", "Hola Gustavo"]


# *****************************************************
# Agrego un elemento al principio
# *****************************************************

mensajes.unshift('Hola Roberto')

puts mensajes.inspect
# Salida: ["Hola Roberto", "Hola Juan", "Hola Maria", "Hola Pedro", "Hola Jose", nil, nil, "Hola Elias", "Hola Gustavo"]

# *****************************************************
# Buscar un elemento
# Busco aquellos mensajes que acaben con la letra o, aquí se usan expresiones lamba, las veremos después
# *****************************************************

encontrados=mensajes.select {|e| e=~/o$/}

puts encontrados.inspect
# Salida: ["Hola Roberto", "Hola Pedro", "Hola Gustavo"]

# *****************************************************
# Eliminar elementos de un array (por ejemplo los nulos)
# *****************************************************

mensajes.delete_if {|e| !e } 

puts mensajes.inspect
# Salida: ["Hola Roberto", "Hola Juan", "Hola Maria", "Hola Pedro", "Hola Jose", "Hola Elias", "Hola Gustavo"]

# *****************************************************
# Trabajar con un array como una cola (ultimo en entrar ultimo en salir)
# *****************************************************

mensajes << 'Hola Edgar'
mensajes << 'Hola Luz'

puts mensajes.inspect
# Salida: ["Hola Roberto", "Hola Juan", "Hola Maria", "Hola Pedro", "Hola Jose", "Hola Elias", "Hola Gustavo", "Hola Edgar", "Hola Luz"]

mensajes.shift()

puts mensajes.inspect
# Salida: ["Hola Juan", "Hola Maria", "Hola Pedro", "Hola Jose", "Hola Elias", "Hola Gustavo", "Hola Edgar", "Hola Luz"]


# *****************************************************
#Trabajar con un array como una pila (ultimo en entrar, primero en salir)
# *****************************************************

mensajes.push('Hola Ruben')

puts mensajes.inspect
# Salida: ["Hola Juan", "Hola Maria", "Hola Pedro", "Hola Jose", "Hola Elias", "Hola Gustavo", "Hola Edgar", "Hola Luz", "Hola Ruben"]

mensajes.pop()

puts mensajes.inspect
# Salida: ["Hola Juan", "Hola Maria", "Hola Pedro", "Hola Jose", "Hola Elias", "Hola Gustavo", "Hola Edgar", "Hola Luz"]

