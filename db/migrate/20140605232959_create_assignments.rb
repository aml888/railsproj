class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.integer :tip_id
      t.integer :reporter_id
      t.string :number

      t.timestamps
    end
  end
end
