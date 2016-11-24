class CreateLembretes < ActiveRecord::Migration[5.0]
  def change
    create_table :lembretes do |t|
      t.string :titulo
      t.text :nota

      t.timestamps
    end
  end
end
