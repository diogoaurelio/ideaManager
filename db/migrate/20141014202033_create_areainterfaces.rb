class CreateAreainterfaces < ActiveRecord::Migration
  def change
    create_table :areainterfaces do |t|
      t.references :idea, index: true
      t.references :area, index: true

      t.timestamps
    end
  end
end
