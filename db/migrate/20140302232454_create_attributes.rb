class CreateAttributes < ActiveRecord::Migration
  def change
    create_table :attributes do |t|
      t.string :Att1
      t.string :Att2
      t.string :Att3
      t.string :Att4
      t.string :Att5
      t.string :Att6
      t.string :Att7
    end
  end
end
