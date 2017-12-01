class RemoveAgeFromMannequins < ActiveRecord::Migration[5.1]
  def change
    remove_column :mannequins, :age, :string
  end
end
