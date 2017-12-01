class AddHeightToMannequin < ActiveRecord::Migration[5.1]
  def change
    add_column :mannequins, :height, :string
  end
end
