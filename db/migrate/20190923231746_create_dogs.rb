# in order to create one of these migrations, enter this in bash:
# rake db:create_migration NAME=Cats
# NOTE: you need a Rakefile in the main dir in order to do this
# The class below will be created, you can then modify the contents
class CreateDogs < ActiveRecord::Migration[6.0]

# def up
#   create_table :dogs do |t|
#     t.string :name
#     t.string :breed
#   end
# end
#
# def down
#   drop_table :dogs
# end

# The change method is actually a shorter way of writing up and down methods.
# We can refactor our migration to look like this:
  def change
    create_table :dogs do |t|
      t.string :name
      t.string :breed
    end
  end

end
