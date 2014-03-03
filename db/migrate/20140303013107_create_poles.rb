class CreatePoles < ActiveRecord::Migration
  def change
    create_table :poles do |t|
      t.string :Slot1
      t.string :Slot2
      t.string :Slot3
      t.string :Slot4
      t.string :Slot5
    end
  end
end
