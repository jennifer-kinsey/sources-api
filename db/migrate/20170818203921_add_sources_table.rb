class AddSourcesTable < ActiveRecord::Migration[5.1]
  def change
    create_table :sources do |t|
      t.integer :category
      t.integer :code
      t.string :content_type
      t.string :created
      t.decimal :credits
      t.string :description
      t.boolean :disable_datetime
      t.string :file_name
      t.string :md5
      t.string :name
      t.integer :number_of_datasets
      t.integer :number_of_models
      t.integer :number_of_predictions
      t.boolean :private
      t.string :project
      t.string :resource
      t.integer :size
      t.string :tags, array: true, default: []
      t.integer :type
      t.string :updated

      t.timestamps
    end
  end
end
