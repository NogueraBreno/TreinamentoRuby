require_relative "Car.rb"
require 'date'

class Gol < Car
    attr_accessor :model,:colour 
    @@assembly = "Volkswagen"
    def initialize(model,colour,created_at = Time.new.to_date.strftime("%d/%m/%Y"))
        @model = model
        @colour = colour
        @created_at = created_at
    end


    def describe
        print "Esse é um #{self.class} #{colour} da #{@@assembly} de #{@@wheels} rodas fabricado em #{@created_at}."
    end
end


carrin = Gol.new("G5","Preto")

carrin.describe
puts ""
puts ""

carrin2 = Gol.new("G4","Branco","05/04/2008")

carrin2.describe
puts ""
