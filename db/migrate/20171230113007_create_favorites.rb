class CreateFavorites < ActiveRecord::Migration[5.1]
  def change
    create_table :favorites do |t|
      t.integer :user_id
      t.integer :restaurant_id

<<<<<<< HEAD
=======

>>>>>>> a50d84c42992659eda0c1e93f51e26e328690f76
      t.timestamps
    end
  end
end
