class String
  define_method(:beats?) do |opponent|
  self.eql?("rock") && opponent.eql?("scissors")
   end

 end
