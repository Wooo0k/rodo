class ChangeNullConstraintForDueDate < ActiveRecord::Migration[8.0]
  def up
    # 1단계: 기존 null 값을 기본값으로 업데이트
    # 예: 현재 시간으로 설정
    Task.where(due_date: nil).update_all(due_date: Time.current)

    # 2단계: NOT NULL 제약조건 추가
    change_column_null :tasks, :due_date, false
  end

  def down
    # 롤백 시 제약조건 제거
    change_column_null :tasks, :due_date, true
  end
end
