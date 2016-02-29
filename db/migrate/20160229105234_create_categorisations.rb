class CreateCategorisations < ActiveRecord::Migration[5.0]
  def change
    create_table :categorisations do |t|
      t.references :category, foreign_key: true
      t.references :categorisable, polymorphic: true, index: {:name => "index_categorisations_on_able_type_and_able_id"}

      t.timestamps
    end
  end
end
