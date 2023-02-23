class CreateLists < ActiveRecord::Migration[7.0]
  def change
    create_table :lists do |t|
      t.timestamps

      t.string :name

    end
  end
end
