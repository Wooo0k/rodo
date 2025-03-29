class TasksController < ApplicationController
  def index
    @completed = params[:completed] == "true"
    @tasks = Task.where(completed: @completed).order(due_date: :asc)
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)

    if @task.save
      redirect_to tasks_path, notice: "작업이 생성되었습니다."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])

    if @task.update(task_params)
      redirect_to task_path(@task), notice: "작업이 수정되었습니다."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy

    redirect_to tasks_path, notice: "작업이 삭제되었습니다."
  end

  def toggle_complete
    @task = Task.find(params[:id])
    was_completed = @task.completed
    @task.update(completed: !was_completed)

    # 상세 화면에서 호출되었는지 확인
    if request.referer&.include?(task_path(@task))
      # 상세 화면에서 호출된 경우 목록으로 리다이렉트
      redirect_to tasks_path(completed: was_completed), notice: "상태가 변경되었습니다."
    else
      # 목록 화면에서 호출된 경우 현재 페이지에 남기
      redirect_back(fallback_location: tasks_path, notice: "상태가 변경되었습니다.")
    end
  end

  private

  def task_params
    params.require(:task).permit(:title, :description, :due_date, :completed)
  end
end
