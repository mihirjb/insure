class AddClientIdToPolicies < ActiveRecord::Migration
  def change
    add_column :policies, :client_id, :string
  end
end
