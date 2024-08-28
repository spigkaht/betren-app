class ImagesController < ApplicationController
  def create
    @template = Template.find(params[:template_id])
    @image = @template.images.build(image_params)

    if @image.save
      redirect_to job_path(@template.job), notice: "Image succesfully uploaded"
    else
      render :new
    end
  end

  private

  def image_params
    params.require(:image).permit(:photo)
  end
end
