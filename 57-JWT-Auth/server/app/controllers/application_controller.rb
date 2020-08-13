class ApplicationController < ActionController::API

    before_action :logged_in?

    def encode_token(payload)
        JWT.encode(payload, "DC060120", "HS256")
    end

    def logged_in?
        # byebug
        headers = request.headers["Authorization"]
        token = headers.split(" ")[1]

        begin
            user_id = JWT.decode(token, "DC060120", "HS256")[0]["user_id"]
            user = User.find(user_id)
        rescue 
            user = nil
            # begin block of code throw some error
        # ensure
            # always runs with an error or without
        end

        # if condition true else false
        # unless condition false

        # puts "test" if condition == true
        render json: {error: "Please log in"} unless user
    end
    
end
