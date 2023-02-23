class CreateMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :movies do |t|
      t.timestamps

      t.string :title
      t.string :overview
      t.string :poster_url
      t.float :rating

      

    end
  end
end
