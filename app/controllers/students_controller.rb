class StudentsController < ApplicationController

    def index
        render json: Student.all
    end

    def create
        student = Student.create!(params.permit(:name, :major, :age, :instructor_id))
        render json: student, status: :created
    end

    def update
        student = Student.find(params[:id])
        student.update!(params.permit(:name, :major, :age, :instructor_id))
        render json: student, status: :updated
    end

    def destroy
        student = Student.find(params[:id])
        student.destroy
        head :no_content
    end
end
