# DB設計

## Users table

|Column|Type|Option|
|------|----|------|
|nickname|string|null: false, index|
|email|string|null: false, unique: true|
|password|string|null: false|
|password_confirmation|string|null: false|

### Association
- has_many : thank
- has_many : photo
- has_many : comment


## Thanks table

|Column|Type|Option|
|------|----|------|
|user_id|integer|null: false|
|date|date||
|diary|text|null: false|

### Association
- belongs_to : user


## Photos table

|Column|Type|Option|
|------|----|------|
|user_id|integer|null: false|
|date|date||
|image|string|null: false|

### Association
- belongs_to : user


## Thank_likes table

|Column|Type|Option|
|------|----|------|
|user_id|integer|null: false, index, unique: true|
|thank_id|integer|null: false, index, unique: true|

### Association
- belongs_to : user
- belongs_to : thank


## Photo_likes table

|Column|Type|Option|
|------|----|------|
|user_id|integer|null: false, index, unique: true|
|photo_id|integer|null: false, index, unique: true|

### Association
- belongs_to : user
- belongs_to : photo


## Comments table
|Column|Type|Option|
|------|----|------|
|user_id|integer|null: false|
|photo_id|integer|null: false|
|comment|string|null: false|

### Association
- belongs_to : user
- belongs_to : photo