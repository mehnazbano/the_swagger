class Api::V1::ReadingsController < ApiBaseController
  #respond_to :json
  swagger_controller :readings, 'Readings'

  swagger_api :index do
    summary 'Returns all posts'
    notes 'Notes...'
  end

  def index
    @readings = Reading.all

    render json: @readings, status: :ok
  end

  # swagger_api :show do
  #   p "1111"
  #   summary 'Get Reading details for a specific id'
  #   notes 'Reading Id should be present'
  #   param :query, :id, :integer, :required, 'Reading ID'
  #   response :ok
  #   #response :unauthorized
  # end

  # def show
  #   p "222"
  #   p params

  # end
end
