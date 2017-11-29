class RemoveHeightFromMannequin < ActiveRecord::Migration[5.1]
  def change
    remove_column :mannequins, :height, :integer
  end
end
