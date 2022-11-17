class ApplicationController < ActionController::Base
    before_action :authenticate_user!
    before_action :configure_permitted_parameters, if: :devise_controller?

    layout :layout_by_resource

    protected
    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :profile_image])
        devise_parameter_sanitizer.permit(:account_update, keys: [:name, :profile_image])

    end
    private



    def layout_by_resource
        if devise_controller?
            "devise"
        else
            "application"
        end
    end
end
