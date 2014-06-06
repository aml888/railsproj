class CreateReporters < ActiveRecord::Migration
  def change
    create_table :reporters do |t|
      t.string :full_name
      t.integer :tip_id

      t.timestamps
    end
  end
end
