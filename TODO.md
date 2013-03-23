- test seeds.db to see that google spreadsheet import is working
- integrate an attachment gem for image uploads

##Item Model
- needs field for expiration_date
- needs field for due_date
- add has_many association for images

##Image Model
- belongs_to Item

##User Model
- add authorization
- needs field for can_borrow

##Container Model
- needs field for expiration date

##Container View
- container view should include a new item form as a partial

