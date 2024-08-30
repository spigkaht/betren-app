class TemplatesController < ApplicationController
  before_action :set_template, only: [:show, :edit, :update]
  def show
    @job = Job.find(params[:job_id]) if params[:job_id].present?
  end

  def edit
    @question = @template.questions.build
  end

  def update
    if @template.update(template_params)
      redirect_to edit_template_path(@template.header), notice: 'Template was successfully updated'
    else
      render :edit
    end
  end

  private

  def set_template
    @template = Template.find_by!(header: params[:header])
  end

  def template_params
    params.require(:template).permit(questions_attributes: [:id, :question_type, :content, :answer, :_destroy])
  end
end
