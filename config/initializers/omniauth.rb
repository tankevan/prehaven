Rails.application.config.middleware.use OmniAuth::Builder do
  provider :github, '1fe1b80e32a0e637f364', 'b847735649e2eabfb5b32c41df99efbad653c634', scope: "repo"
end