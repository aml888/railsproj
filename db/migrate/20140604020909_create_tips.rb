class CreateTips < ActiveRecord::Migration
  def change
    create_table :tips do |t|
      t.string :tip
      t.date :date
      t.string :source

      t.timestamps
    end
  end
end
