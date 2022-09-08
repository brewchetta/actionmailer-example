class AddPasswordResetsToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :password_reset_token, :string
    add_column :users, :password_reset_expiration, :datetime
  end
end
