# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


movies = [{:title => 'Aladdin', :rating => 'G' , :release_date => '25-Nov-1992'},
          {:title => 'The Terminator', :rating => 'R', :release_date => '26-Oct-1986'},
          {:title => 'When Harry Met Sally', :rating => 'R', :release_date => '21-Jul-1989'},
          {:title => 'The Help', :rating => 'PG-13', :release_date=>'10-Aug-2011'},
          {:title => 'Chocolat', :rating => 'PG-13', :release_date => '5-Jan-2001'},
          {:title => 'Amelie', :rating => 'R', :release_date => '25-Apr-2001'}]

movies.each do |movie|
  Movie.create!(movie)
end

