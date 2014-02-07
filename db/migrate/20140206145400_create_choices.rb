class CreateChoices < ActiveRecord::Migration
  def change
    create_table :choices do |t|
      t.string :word
      t.boolean :correct
      t.references :card, index: true

      t.timestamps
    end
  end
end
