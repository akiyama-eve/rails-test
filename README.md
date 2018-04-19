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
Debugging sample code
```
puts some_oject.inspect # ดูข้อมูลข้างใน object
save_screenshot("/Users/xxxxx/Desktop/test1.jpg") # ดูผลลัพธ์การทำงานของ automation ที่เขียนไป
```

Model
ข้อมูลเพิ่มเติมเกี่ยวกับ FactoryBot https://github.com/thoughtbot/factory_bot/wiki (Lib ช่วยในการเตรียมข้อมูลก่อนเทส)
ข้อมูลเพิ่มเติมเกี่ยวกับ Faker https://github.com/stympy/faker (Lib ช่วยในการ random ข้อมูล)

Controller
https://everydayrails.com/2012/04/07/testing-series-rspec-controllers.html

View + Integration Testing
การใช้งานลักๆของ capybara https://www.sitepoint.com/basics-capybara-improving-tests/
syntax ที่ใช่บ่อยๆ https://gist.github.com/zhengjia/428105
