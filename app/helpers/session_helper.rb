module SessionHelper
    def session_params
        params.require(:user).permit(:name)
    end
end
