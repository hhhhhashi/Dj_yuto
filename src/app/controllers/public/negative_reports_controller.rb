module Public
  class Public::NegativeReportsController < ApplicationController
    def new
      @negative_report = NegativeReport.new 
    end

    def create
      @negative_report = NegativeReport.new(negative_report_params)
      @negative_report.user_id=current_user.id
      if @negative_report.save
        redirect_to public_users_show_path, notice: 'Negative report was successfully created.'
      else
        render :new
      end
    end

    def index
      @negative_reports=NegativeReport.all
    end

    def show
    end

    def edit
    end

    private

    def negative_report_params
      params.require(:negative_report).permit(:frustration, :top_annoyance, :environment_complaint, :quit_moment, :future_after_quit ,:engagement_level, :task_impossibility,  :mood_change)
    end
  end
end
