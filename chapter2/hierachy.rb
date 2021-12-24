"hello".class
String.class
Class.instance_methods(false)

1.class
Numberic.class
Numberic.superclass
Numberic.superclass.superclass
Array.superclass
Object.superclass
BasicObject.superclass

Class.superclass

class MyClass; end
obj1 = MyClass.new
obj2 = MyClass.new

obj1.instance_variable_set("@x", 10)
my_class = MyClass

# Constants

module MyModule
  MyConstant = "Outer Constant"
  class MyClass
    MyConstant = "Inner Constant"
  end
end

module M
  class C
    X = 'a constant in module M'
  end
  C::X
end

M::C::X

Y = 'a root-level constant'

module M
  Y = 'a constant in M'
  Y
  ::Y
end

M.constants
Module.constants.include? :Object
Module.constants.include? :Module

module M
  class C
    module M2
        Module.nesting
    end
  end
end