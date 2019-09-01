class CreateSayhellos < ActiveRecord::Migration[5.2]
  def change
    create_table :sayhellos do |t|
      t.integer      :user_id
      t.text        :text
      t.text        :image
      t.timestamps null: true
    end
  end
end
