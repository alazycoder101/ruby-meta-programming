require "pry"

pry = Pry.new
pry.memory_size = 101
pry.memory_size
pry.quiet = true

pry.refresh(memory_size: 99, quiet: false)
pry.memory_size
pry.quiet