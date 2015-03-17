class CreateAlcoholDrugs < ActiveRecord::Migration
  def change
    create_table :alcohol_drugs do |t|
      t.integer :alcohol_addicted
      t.integer :drugs_adicted
      t.string :alcohol_type
      t.string :drugs_type
      t.integer :alcohol_period
      t.integer :drugs_period
      t.text :previous_treatment

      t.timestamps null: false
    end
  end
end
