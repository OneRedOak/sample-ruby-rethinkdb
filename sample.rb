require 'rethinkdb'
include RethinkDB::Shortcuts

puts "starting rethinkdb buildsample written using ruby.."
connection = r.connect(:host => 'localhost', :port => 28015).repl
r.db_drop('test').run
r.db_create('test').run

r.db('test').table_create('table').run

r.table("table").insert({
    :id => 1,
    :title => "Lorem ipsum",
    :content => "Dolor sit amet"
}).run

puts "output data from the program.."
  puts r.table('table').get(1).keys.run.length
