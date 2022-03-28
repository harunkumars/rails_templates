puts 'This template will add Rubocop to the Project.'
puts 'Make sure you are on a new git branch.'

if yes?('Proceed?(y/n): ')
  # Adds rubocop to Gemfile
  gem_group :development, :test do
    gem 'rubocop', '~> 1.26', '>= 1.26.1'
  end

  # Run Bundle to install rubocop gem via bundler
  run 'bundle'

  # This option allows us to capture all existing offences in a to-do file
  # We can fix the existing offences as and when we get time
  run 'rubocop --auto-gen-config'
else
  say 'Skipped applying the template.'
end
