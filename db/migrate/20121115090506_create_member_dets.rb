class CreateMemberDets < ActiveRecord::Migration
  def change
    create_table :member_dets do |t|
      t.string :name
      t.integer :age
      t.string :sex
      t.text :Address
      t.timestamps
    end
  end
end
