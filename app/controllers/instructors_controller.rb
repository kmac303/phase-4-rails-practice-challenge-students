class InstructorsController < ApplicationController

    def index
        render json: Instructor.all
    end

    def create
        instructor = Instructor.create!(params.permit(:name))
        render json: instructor, status: :created
    end

    def update
        instructor = Instructor.find(params[:id])
        instructor.update!(params.permit(:name))
        render json: instructor, status: :updated
    end

    def destroy
        instructor = Instructor.find(params[:id])
        instructor.destroy
        head :no_content
    end

end
