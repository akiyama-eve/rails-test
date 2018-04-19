รันทุกรอบที่มีการแก้ไข database
```
bundle exec rake db:test:prepare
```
รัน spec
```
bundle exec rspec ./spec/ # run all spec
bundle exec rspec ./spec/models/lesson1_b_spec.rb # run all spec in thsi file
bundle exec rspec ./spec/models/lesson1_b_spec.rb:20 # run a spec 
```
