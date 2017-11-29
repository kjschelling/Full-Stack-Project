class AddWeightToMannequin < ActiveRecord::Migration[5.1]
  def change
    add_column :mannequins, :weight, :string
  end
end
