class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :title
      t.string :description
      t.string :data
      t.string :status
      t.string :contratante
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
