class AddHandleNameToPost < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :handle_name, :string
  end
end
