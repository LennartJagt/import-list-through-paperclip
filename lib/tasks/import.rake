require 'csv'

desc "Import teams from csv file"
task :import => [:environment] do

  file = "db/Prijzen_Instrulife.csv"

  CSV.foreach(file, :headers => true) do |row|
    Product.find_or_create_by_name(
     :instrulife_product_number => row[0],
     :name => row[1],
     :price => row[2]
  )
  end
end