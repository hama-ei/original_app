# README

* Ruby version '2.3.1'

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|id|integer||
|name|string|null:false|
|name_kana|string|null:false|
|password|string|null:false|
|grade_id|integer|null:false|
|class_day_id|integer|null:false|
|class_time_id|integer|null:false|
|email|string|null:false|
|telephone|integer|null:false|
|zip_code|integer|null:false|
|adress|string|null:false|
|introduction|text||
|birth_month|integer|null:false|
|birth_day|integer|null:false|

### Association
- has_many :images
- belongs_to :grade
- belongs_to :class_day
- belongs_to :class_time

## gradesテーブル
|Column|Type|Options|
|------|----|-------|
|id|||
|grade|string|null:false|

### Association
- has_many :users

## class_daysテーブル

|Column|Type|Options|
|------|----|-------|
|id|||
|class_day|string|null:false|

### Association
- has_many :users

## class_timesテーブル

|Column|Type|Options|
|------|----|-------|
|id|||
|class_time|time|null:false|

### Association
- has_many :users

## iamgesテーブル

|Column|Type|Options|
|------|----|-------|
|id|||
|image|text|null:false|
|user_id|integer|null:false|
|grade_id|integer|null:false|
|class_day_id|integer|null:false|
|class_time_id|integer|null:false|

### Association
- belongs_to :user
- belongs_to :grade
- belongs_to :class_day
- belongs_to :class_time

## likesテーブル

|Column|Type|Options|
|------|----|-------|
|id|||
|image_id|integer|null:false|
|user_id|integer|null:false|

### Association
- belongs_to :image
- belongs_to :user

## commentsテーブル

|Column|Type|Options|
|------|----|-------|
|id|||
|comment|text|null:false|
|user_id|integer|null:false|

### Association
- belongs_to :user