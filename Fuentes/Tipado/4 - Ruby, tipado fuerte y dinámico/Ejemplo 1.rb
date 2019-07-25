a=10
b="2"
c=a+b

# Nos generar el error:

# String can't be coerced into Integer (repl):3:in `+' (repl):3:in `<main>'

# Porque no es posible convertir explícitamente la cadena de texto en un entero, para corregir el código, hacemos las siguientes modificaciones:

a=10
b="2"
c=a+b.to_i

#Esta vez nos da el resultado 12.
