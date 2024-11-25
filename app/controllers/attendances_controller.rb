class AttendancesController < ApplicationController
    before_action :authenticate_user!
  
    def index
      @attendances = current_user.attendances
    end
  
    def new
      @attendance = Attendance.new
    end
  
    def create
      @attendance = current_user.attendances.build(attendance_params)
      if @attendance.save
        redirect_to attendances_path, notice: "Absensi berhasil disimpan"
      else
        render :new
      end
    end
  
    private
  
    def attendance_params
      params.require(:attendance).permit(:date, :status)
    end
  end
  