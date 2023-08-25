function lr --wraps='ll -t | head' --description 'alias lr ll -t | head'
  ll -t | head $argv; 
end
