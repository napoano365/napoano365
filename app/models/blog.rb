# 0|id|integer|1||1
# 1|title|text|0||0
# 2|created_at|datetime(6)|1||0
# 3|updated_at|datetime(6)|1||0

class Blog < ApplicationRecord
  validates :title, presence: true, length: { maximum: 100 }
  has_rich_text :content

end
