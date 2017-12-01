class RemoveAgeFromMannequin < ActiveRecord::Migration[5.1]
  def change
    remove_column :mannequins, :age, :integer
  end
end
