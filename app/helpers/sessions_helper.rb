module SessionsHelper
    
    #logowanie
    def log_in(user)
        session[:user_id] = user.id
    end
    
    #zwracanie usera
    def current_user
       @current_user ||= User.find_by(id: session[:user_id])
    end
    
    #czy zalogowany
    def logged_in?
       !current_user.nil?
    end
    
    #wylogowanie
    def log_out
        session.delete(:user_id)
        @current_user = nil
    end
end
