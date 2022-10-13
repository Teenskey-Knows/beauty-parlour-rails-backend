class AddPasswordColumnToServiceProvider < ActiveRecord::Migration[6.1]
  def change
    add_column :service_providers, :password_digest, :string
  end
end
