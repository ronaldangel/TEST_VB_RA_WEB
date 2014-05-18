class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :api
      t.integer :score

      t.timestamps
    end
  end
end
