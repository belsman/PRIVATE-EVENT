module SessionHelper
    def session_params
        params.require(:user).permit(:name)
    end

    def remove_user
        session[:id] = nil
    end
end
