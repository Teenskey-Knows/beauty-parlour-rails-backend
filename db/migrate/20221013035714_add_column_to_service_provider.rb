class AddColumnToServiceProvider < ActiveRecord::Migration[6.1]
  def change
    add_column :service_providers, :email, :string
  end
end
