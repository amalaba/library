class CreateBookDets < ActiveRecord::Migration
  def change
    create_table :book_dets do |t|
      t.string :name
      t.string :author
      t.boolean :available

      t.timestamps
    end
  end
end
