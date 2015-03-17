class CreateDrugs < ActiveRecord::Migration
  def change
    create_table :drugs do |t|
      t.integer :addicted
      t.string :drug_type
      t.integer :drugs_period
      t.text :previous_treatment

      t.timestamps null: false
    end
  end
end
