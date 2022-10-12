class CreateServiceProviders < ActiveRecord::Migration[6.1]
  def change
    create_table :service_providers do |t|
      t.string :name
      t.string :gender

      t.timestamps
    end
  end
end
