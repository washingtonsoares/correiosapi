class Auth::TokenValidationsController < DeviseTokenAuth::TokenValidationsController

  def validate_token
    # @resource will have been set by set_user_by_token concern
    if @resource
      render json: {
          data: @resource.as_json(methods: :calculate_operating_thetan)
      }
    else
      render json: {
          success: false,
          errors: ["erro"]
      }, status: 401
    end
  end
end