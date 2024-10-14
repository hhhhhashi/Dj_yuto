module Public
  class Public::NegativeReportsController < ApplicationController
    before_action :check_if_posted_today, only: [:new, :create]

    def new
      @negative_report = NegativeReport.new 
    end

    def create
      @negative_report = NegativeReport.new(negative_report_params)
      @negative_report.user_id=current_user.id
      if @negative_report.save
        redirect_to new_public_survey_answer_path, notice: 'Negative report was successfully created.'
      else
        render :new
      end
    end

    def index
      @negative_reports=current_user.negative_reports.order(created_at: :desc)
    end

    def show
      @negative_report=NegativeReport.find(params[:id])
    end

    def edit
    end

    private
    # 今日投稿済みかどうかをチェック
    def check_if_posted_today
      if NegativeReport.posted_today_by_user?(current_user)
        redirect_to public_users_show_path(current_user), alert: '今日はすでに投稿済みです'
      end
    end

    def negative_report_params
      params.require(:negative_report).permit(:frustration, :top_annoyance, :environment_complaint, :quit_moment, :future_after_quit ,:engagement_level, :task_impossibility,  :mood_change)
    end
  end
end
