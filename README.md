# README

New things to work on

Things to do for the CherryPick
-- I found that cherrypick has more specific uses than what we need here, so we will use git checkout <branch> <filename> instead
  -- do git checkout master application.yml (not sure if you need more of a path here. If you do, it is in config/locales/application.yml)
    -- Configure everything to the settings for your mailtrap.io
    -- Then change application_host to your root path
  -- git checkout master smtp.rb (config/initializers/smtp.rb)
    -- no changes needed here
  -- git checkout master development.rb (config/environment/development.rb)
    -- no changes needed here either.
  -- That should be everything! Let me know if you have problems!
  
  
  (Space added for dramatic effect)
  
  
-- Add data to database
  -- Food
  -- Exercises
  -- Write sql script to pass data back and forth

-- Link database models together to create a workout
  -- Link more models together to make recovery meals page

-- Make the home page more pretty

-- Make the user profile page show previous workouts
  -- Some sort of calandar and tracking information?
    -- Some sort of data analytics?

-- Compare to other users????????