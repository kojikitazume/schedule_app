class SchedulesController < ApplicationController
    before_action :set_schedule, only: [:show, :edit, :update, :destroy]
  
    def index
      @schedules = Schedule.all
      @today = Date.today
    end
  
    def show
    end
  
    def new
      @schedule = Schedule.new
    end
  
    def create
      @schedule = Schedule.new(schedule_params)
      if @schedule.save
        flash[:notice] = "スケジュールが正常に作成されました。"
        redirect_to @schedule
      else
        flash[:alert] = "スケジュールの作成中にエラーが発生しました。"
        render :new
      end
    end
  
    def edit
    end
  
    def update
      if @schedule.update(schedule_params)
        flash[:notice] = "スケジュールが正常に更新されました。"
        redirect_to @schedule
      else
        flash[:alert] = "スケジュールの更新中にエラーが発生しました。"
        render :edit
      end
    end
  
    def destroy
      @schedule.destroy
      flash[:notice] = "スケジュールが正常に削除されました。"
      redirect_to schedules_url
    end
  
    private
  
    def set_schedule
      @schedule = Schedule.find(params[:id])
    end
  
    def schedule_params
      params.require(:schedule).permit(:title, :start_date, :end_date, :all_day, :memo)
    end
  end