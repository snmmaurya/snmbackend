Rails.application.config.generators do |g|
  # By default generated migration Primary Key would be uuid
  g.orm :active_record, primary_key_type: :uuid
end