Rails.application.config.middleware.use OmniAuth::Builder do
  provider :github, 'da402e32b814f1a08699', '1134a59bd074fed2e6b39ebdf42347eb79aaf3e4'
end