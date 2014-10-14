class CreateAreaInterfaces < ActiveRecord::Migration
  def change
    create_table :area_interfaces do |t|
      t.references :idea, index: true
      t.references :area, index: true

      t.timestamps
    end
  end
end
