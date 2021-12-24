class Computer
  def initialize(computer_id, data_source)
    @id = computer_id
    @data_source = data_source
  end

  def self.define_component(name)
    define_method(name) do
      info = @data_source.send "get_#{name}_info", @id
        price = @data_source.send "get_#{name}_price", @id
        result = @data_source.send "get_#{name}result", @id
    end
  end

  define_component :mouse
  define_component :cpu
  define_component :keyboard
end