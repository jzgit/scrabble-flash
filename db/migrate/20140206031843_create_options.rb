class CreateOptions < ActiveRecord::Migration
  def change
    create_table :options do |t|
      t.string :word
      t.boolean :correct
      t.integer :card_id

      t.timestamps
    end
  end
end
