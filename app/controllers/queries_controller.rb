class QueriesController < ApplicationController
  def query
    result = Schema.execute params[:query]
    render json: result
  end
end
