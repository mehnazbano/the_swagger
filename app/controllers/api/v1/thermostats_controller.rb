class Api::V1::ThermostatsController < ApiBaseController
  #respond_to :json
  swagger_controller :thermostats, 'Thermostats'

  swagger_api :index do
    summary 'Lists out all the Thermostats'
    response :ok
    response :unauthorized
  end

  def index
    @thermostats = Thermostat.all
    render json: @thermostats, status: :ok
  end

  swagger_api :create do
    summary 'Create thermostat details'
    notes 'Create thermostat details'
    param :form, :"thermostat[household_token]", :string, :required, 'Household Token'
    param :form, :"thermostat[location]", :string, :required, 'Location'
    response :created
    response :forbidden
    response :bad_request
  end

  def create
    @team = Thermostat.new(thermostat_params)
    #authorize! :create, @team
    if @team.save
      render json: {success: true}, status: :created
    else
      render json: {success: false}, status: :created, status: :bad_request
    end
  end

  protected
  def thermostat_params
    params.require(:thermostat).permit(:household_token, :location)
  end
end
