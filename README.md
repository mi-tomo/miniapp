# Chatspace DB設計




## productsテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|buyer_id|integer|foreign_key: true|
|p_name|string|presence: true|
|p_descript|string|presence: true|
|condition|string|presence: true|
|delivery_condition|string|presence: true|
|delivery_from|string|presence: true|
|due_time_d|string|presence: true|
|p_price|string|presence: true|
|sall_condition|integer|presence: true|
### Association
- has_many :images
- belongs_to :user 
- has_many :images
- belongs_to :big-categories

## imagesテーブル
|Column|Type|Options|
|------|----|-------|
|product_id|integer|null: false,foreign_key: true|
|image|integer|
### Association
- belongs_to :product

## imagesテーブル
|Column|Type|Options|
|------|----|-------|
|product_id|integer|null: false,foreign_key: true|
|p_address|integer|presence: true|
### Association
- belongs_to :product
