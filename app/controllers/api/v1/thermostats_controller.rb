class Api::V1::ThermostatsController < ApiBaseController
  #respond_to :json
  swagger_controller :thermostats, 'Thermostats'

  swagger_api :index do
    summary 'Lists out all the teams that the logged in user is part of'
    response :ok
    response :unauthorized
  end

  def index
    #@teams = current_user.enabled_teams.order(:name)
  end

  swagger_api :show do
    summary 'Get Reading details for a specific id'
    notes 'Reading Id should be present'
    param :query, :id, :integer, :required, 'Reading ID'
    response :ok
    #response :unauthorized
  end

  def show
  end
end
