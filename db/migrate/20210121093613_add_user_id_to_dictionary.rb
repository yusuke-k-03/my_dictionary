class AddUserIdToDictionary < ActiveRecord::Migration[6.0]
  def change
    add_column :dictionaries, :user_id, :integer
  end
end
