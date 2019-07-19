# frozen_string_literal: true

Before do
  navigate_to($app_path)
  sleep 3
end
Before('@SearchcruisetotheBahamas') do
  # This will only run before scenarios tagged
  clickdropdownsail
  selectthebahamas
  clickdropdownduration
  selectduration
end
After do
  $driver.manage.delete_all_cookies
  $driver.local_storage.clear
  sleep 1
end
