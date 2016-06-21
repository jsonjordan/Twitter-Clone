class CreateMicroposts < ActiveRecord::Migration
  def change
    create_table :microposts do |t|
      t.text :content
      t.belongs_to :User, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
