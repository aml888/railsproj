class AddTipToTips < ActiveRecord::Migration
  def change
    add_column :tips, :tip, :bio
  end
end
