module Public
  class Public::NegativeReportsController < ApplicationController
    def new
      @negative_report = NegativeReport.new 
    end

    def create
      @negative_report = NegativeReport.new(negative_report_params)
      if @negative_report.save
        redirect_to @negative_report, notice: 'Negative report was successfully created.'
      else
        render :new
      end
    end

    def index
    end

    def show
    end

    def edit
    end

    private

    def negative_report_params
      params.require(:negative_report).permit(:frustration, :task_impossibility, :engagement_level)
    end
  end
end
