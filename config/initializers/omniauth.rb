OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '508845842404-1k8dvbsm3d6a33r9el9ndkvp8jbajlhd.apps.googleusercontent.com', '8Uu0EZYtQ0fVMP5W1i3-q--w', {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
end