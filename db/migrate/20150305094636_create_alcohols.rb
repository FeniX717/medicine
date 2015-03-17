class CreateAlcohols < ActiveRecord::Migration
  def change
    create_table :alcohols do |t|
      t.integer :addicted
      t.string :type
      t.integer :drinking_period
      t.text :previous_treatment

      t.timestamps null: false
    end
  end
end
