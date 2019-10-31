#Imprimir el cuadro de cada numero

[1,2,3].each { |x| puts x*2 }  
# Salida: 
# 2
# 4
# 6


# Otra forma semejante a la anterior

[1,2,3].each do |x|
  puts x*2                    
end
# Salida: 
# 2
# 4
# 6


# Crear variables que almancene un proceso

p = Proc.new { |x| puts x*2 }
[1,2,3].each(&p)             

# Salida: 
# 2
# 4
# 6
