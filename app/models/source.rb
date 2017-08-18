class Park < ApplicationRecord
  validates
  :category,
  :code,
  :content_type,
  :created,
  :credits,
  :description,
  :disable_datetime,
  :file_name,
  :md5,
  :name,
  :number_of_datasets,
  :number_of_models,
  :number_of_predictions,
  :private,
  :project,
  :resource,
  :size,
  :tags,
  :type,
  :updated,
  presence: true
end
