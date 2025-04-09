class CreateStops < ActiveRecord::Migration[8.0]
  def change
    create_table :stops do |t|
      t.timestamps
    end
  end
end
