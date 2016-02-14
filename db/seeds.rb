require 'open-uri'

def load_data_from_csv(klassname)
  filename = klassname[0].downcase + klassname[1..-1]
  klass = Object.const_get klassname
  klass.delete_all
  open("db/seeds/#{filename}.csv") do |objlist|
    header = objlist.readline.chomp.split(";")
    objlist.read.each_line do |obj|
      data = header.zip(obj.chomp.split(";")).to_h
      klass.create!(data )
    end
  end
end


models = ["Question"]

models.each do |m|
  load_data_from_csv m
end