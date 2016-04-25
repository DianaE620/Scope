
# p @local_var = "this is my global var"


# def return_my_local_var
#   @local_var = "Ahora estoy en el metodo"
# end

# p return_my_local_var()

# -----------------------------------//////////////////////////////

# class DummyClass

#   def initialize  
#     p @instance_var = "this is my local var"
#   end

#   def return_my_local_var
#     @instance_var = "Ahora estoy en el metodo"
#   end

# end

# dummy = DummyClass.new

# p dummy.return_my_local_var

# -----------------------------------//////////////////////////////


# class DummyClass

#   def initialize  
#     @instance_var = "this is my local var"
#   end

#   def instance_var=(value)
#     @instance_var = value
#   end

#   def instance_var
#     @instance_var
#   end

# end

# dummy = DummyClass.new

# dummy.instance_var = "Usando un setter"
# p dummy.instance_var


# -----------------------------------//////////////////////////////

# class DummyClass

#   @@class_variable = "This is my class variable"

#   def initialize  
#     @instance_var = "this is my local var"
#   end

#   def instance_var=(value)
#     @instance_var = value
#   end

#   def instance_var
#     @instance_var
#   end

#   def class_variable
#     @@class_variable
#   end

#    def class_variable=(value)
#     @@class_variable = value
#   end

# end

# dummy_1 = DummyClass.new

# dummy_1.instance_var = "Usando un setter"
# p dummy_1.instance_var
# p dummy_1.class_variable

# puts "-------------- Segunda instancia"

# dummy_2 = DummyClass.new

# dummy_2.instance_var = "Creando otra instancia"
# p dummy_2.instance_var
# p dummy_1.class_variable
# dummy_2.class_variable = "New value for the class variable"
# p dummy_2.class_variable

# -----------------------------------//////////////////////////////

$global_var = "This is a global variable"
CONSTANT = 3.1416 
CONSTANT = 345

def global_var=(value)
  $global_var = value
end

def global_var
  $global_var
end

  # Esto genera un error
# def CONSTANT=(value)
#   CONSTANT = value
# end

  # Esto genera un error
# def CONSTANT
#   CONSTANT = 102
# end

class DummyClass

  @@class_variable = "This is my class variable"

  def initialize  
    @instance_var = "this is my local var"
  end

  def instance_var=(value)
    @instance_var = value
  end

  def instance_var
    @instance_var
  end

  def class_variable
    @@class_variable
  end

   def class_variable=(value)
    @@class_variable = value
  end

  def global_var=(value)
  $global_var = value
  end

  def global_var
    $global_var
  end

    # Esto genera un error
  # def CONSTANT=(value)
  #   CONSTANT = value
  # end

  def CONSTANT
    CONSTANT
  end

end

dummy_1 = DummyClass.new

dummy_1.instance_var = "Usando un setter"
p dummy_1.instance_var
p dummy_1.class_variable
p dummy_1.CONSTANT
p dummy_1.global_var
p dummy_1.global_var = "nuevo valor global"
p dummy_1.global_var

puts "-------------- Segunda instancia"

dummy_2 = DummyClass.new

dummy_2.instance_var = "Creando otra instancia"
p dummy_2.instance_var
p dummy_1.class_variable
dummy_2.class_variable = "New value for the class variable"
p dummy_2.class_variable



p global_var
p CONSTANT




