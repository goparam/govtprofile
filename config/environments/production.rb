DepartmentPhonebookRails::Application.configure do
  # Settings specified here will take precedence over those in config/application.rb

  # In the development environment your application's code is reloaded on
  # every request. This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.cache_classes = false

  # Log error messages when you accidentally call methods on nil.
  config.whiny_nils = true

  # Show full error reports and disable caching
  config.consider_all_requests_local       = false
  config.action_controller.perform_caching = true

  # Don't care if the mailer can't send
  config.action_mailer.raise_delivery_errors = false

  # Print deprecation notices to the Rails logger
  config.active_support.deprecation = :log

  # Only use best-standards-support built into browsers
  config.action_dispatch.best_standards_support = :builtin

  # Raise exception on mass assignment protection for Active Record models
  config.active_record.mass_assignment_sanitizer = :strict

  # Log the query plan for queries taking more than this (works
  # with SQLite, MySQL, and PostgreSQL)
  config.active_record.auto_explain_threshold_in_seconds = 0.5

  # Do not compress assets
  config.assets.compress = true

  # Expands the lines which load the assets
  config.assets.debug = true

  # Don't fallback to assets pipeline if a precompiled asset is missed
  config.assets.compile = false

  # Generate digests for assets URLs
  config.assets.digest = true

  config.serve_static_assets  = true
  
  config.assets.precompile << Proc.new { |path|
    if path =~ /\.(css|js)\z/
      full_path = Rails.application.assets.resolve(path).to_path
      app_assets_path = Rails.root.join('app', 'assets').to_path
      if full_path.starts_with? app_assets_path
        puts "including asset: " + full_path
        true
      else
        puts "excluding asset: " + full_path
        false
      end
    else
      false
    end
  }

  config.action_mailer.default_url_options = { :host => 'http://govtprofile.herokuapp.com' }
  config.action_mailer.delivery_method = :smtp
  config.action_mailer.perform_deliveries = true
  config.action_mailer.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => "gmail.com",
  :user_name            => 'mahasuvidha2013@gmail.com',
  :password             => 'dydeolatur',
  :authentication       => 'login',
  :enable_starttls_auto => true  }
  
  config.action_controller.asset_host = "http://govtprofile.herokuapp.com"
  config.action_mailer.asset_host = "govtprofile.herokuapp.com"

  config.default_content_type = "text/html"

  # config.assets.compress = true


Paperclip.options[:command_path] = "/usr/local/bin/"

Paperclip.options[:command_path] = "/usr/local/bin/identify"
end