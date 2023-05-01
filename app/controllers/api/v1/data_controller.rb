class Api::V1::DataController < Api::V1::BaseController
  def index
    render json: {message: "it works"}
  end
end
