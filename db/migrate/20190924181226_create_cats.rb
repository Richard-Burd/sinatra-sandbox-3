# in order to create one of these migrations, enter this in bash:
# rake db:create_migration NAME=Cats
# NOTE: you need a Rakefile in the main dir in order to do this
# The class below will be created, you can then modify the contents
class CreateCats < ActiveRecord::Migration[6.0]
  def change
    create_table :cats do |t|
      t.string :name
      t.string :age
      t.string :breed
    end
  end
end
