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
Model
ข้อมูลเพิ่มเติมเกี่ยวกับ FactoryBot https://github.com/thoughtbot/factory_bot/wiki (Lib ช่วยในการเตรียมข้อมูลก่อนเทส)
ข้อมูลเพิ่มเติมเกี่ยวกับ Faker https://github.com/stympy/faker (Lib ช่วยในการ random ข้อมูล)
