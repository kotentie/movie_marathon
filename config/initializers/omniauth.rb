OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '263165513850572', '7e09d736fc59d46bd7e12b52faf1cdd4'
end