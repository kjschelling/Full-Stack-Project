class RemoveWeightFromMannequin < ActiveRecord::Migration[5.1]
  def change
    remove_column :mannequins, :weight, :integer
  end
end
