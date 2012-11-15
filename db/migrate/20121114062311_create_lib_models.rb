class CreateLibModels < ActiveRecord::Migration
  def change
    create_table :lib_models do |t|

      t.timestamps
    end
  end
end
