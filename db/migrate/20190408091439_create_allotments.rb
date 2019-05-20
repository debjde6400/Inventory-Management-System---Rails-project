class CreateAllotments < ActiveRecord::Migration[5.2]
  def change
    create_table :allotments do |t|
      t.references :user, foreign_key: true
      t.references :item, foreign_key: true
      t.boolean :present

      t.timestamps
    end
  end
end
