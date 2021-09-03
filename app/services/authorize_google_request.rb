class AuthorizeGoogleRequest 
    def initialize(headers = {})
        @headers = headers
    end

    def user
        payload = decode(auth_token)
        if payload
            # User.find_by(id: payload['user_id'])
            User.find_or_create_from_google(payload)
        end
    end

    private

    attr_reader :headers
      
    def decode(token)
        validator = GoogleIDToken::Validator.new 
        validator.check(token, "508845842404-1k8dvbsm3d6a33r9el9ndkvp8jbajlhd.apps.googleusercontent.com")
        # JsonWebToken.decode(token)
    rescue
        nil
    end

    def auth_token
        headers['Authorization'].split.last if headers['Authorization']
    end
end