class Task < ApplicationRecord
  validates :title, presence: { message: "제목은 필수입니다" }
  validates :due_date, presence: { message: "마감일은 필수입니다" }
end
