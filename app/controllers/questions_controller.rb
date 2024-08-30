class QuestionsController < ApplicationController
  before_action :set_template, only: [:new, :create, :edit, :update]
  before_action :set_question, only: [:edit, :update, :destroy]

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(question_params)
    @question.template = @template
    @question.save
    redirect_to edit_template_path(@template)
  end

  def edit
  end

  def update
    @question.update(question_params)
    redirect_to edit_template_path(@template)
  end

  def destroy
    @question.destroy
    redirect_to edit_template_path(@template), status: :see_other
  end

  def reorder
    params[:order].each_with_index do |id, index|
      Question.where(id: id).update_all(order: index + 1)
    end
    head :ok
  end

  private

  def set_question
    @question = Question.find(params[:id])
  end

  def set_template
    @template = Template.find_by(header: params[:template_header])
  end

  def question_params
    params.require(:question).permit(:content, :qtype)
  end
end
