class AddValidateEmailToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :validate_email, :boolean, default: false
  end
end
