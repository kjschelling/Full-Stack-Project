class AddUserToMannequins < ActiveRecord::Migration[5.1]
  def change
    add_reference :mannequins, :user, foreign_key: true
  end
end
