class CreateServices < ActiveRecord::Migration[6.1]
  def change
    create_table :services do |t|
      t.string :image
      t.string :type
      t.integer :pricing

      t.timestamps
    end
  end
end
