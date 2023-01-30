class CreatePetties < ActiveRecord::Migration[5.2]
  def change
    create_table :petties do |t|
      t.integer :user_id
      t.string :category
      t.string :section
      t.date :day
      t.string :breakdown_1
      t.string :breakdown_2
      t.string :breakdown_3
      t.integer :money_1
      t.integer :money_2
      t.integer :money_3
      t.integer :total_money

      t.timestamps
    end
  end
end
