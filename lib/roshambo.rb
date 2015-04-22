class String
  define_method(:beats?) do |opponent|
  if self.eql?(opponent)
    "draw"
  elsif self.eql?("rock") && opponent.eql?("scissors")
    true
   end
  end
 end
