class RemoveTipFromTips < ActiveRecord::Migration
  def change
    remove_column :tips, :tip, :string
  end
end
