Rails.application.config.middleware.use OmniAuth::Builder do
    if Rails.env.development? || Rails.env.test?
        provider :github, "20f1d6580f36ba149cb6", "f948861ea6d2b55bc057549a5ee5b264d16d5c0f"
    else
        provider :github,
        Rails.application.credentials.github[:client_id],
        Rails.application.credentials.github[:client_secret]
    end
end