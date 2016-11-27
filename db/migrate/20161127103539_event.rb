class Event < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.datetime :date
      t.location :string
      t.category :string
      t.tags :string
      t.link :string

      t.timestamps
  end
end
