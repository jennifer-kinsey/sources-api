class SourcesController < ApplicationController

  def index
    @sources =Source.all
    json_response(@sources)
  end

  def show
    @source =Source.find(params[:id])
    json_response(@source)
  end

  def create
    @source =Source.create(source_params)
    json_response(@source, :created)
  end

  def update
    @source =Source.find(params[:id])
    if @source.update!(source_params)
      render status: 200, json: {
        message: "Your source has successfully been updated."
      }
    end
  end

  def destroy
    @source =Source.find(params[:id])
    if @source.destroy
      render status: 200, json: {
        message: "Your source has been deleted."
      }
    end
  end

  private
  def json_response(object, status = :ok)
    render json: object, status: status
  end

  def source_params
    params.permit(
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
    )
  end
end
