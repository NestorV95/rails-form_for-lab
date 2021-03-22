class SchoolClassesController < ApplicationController

    def show
        @school_class = SchoolClass.find(params[:id])
    end

    def new
        @school_class = School.new
    end

    def create
        @school_class = SchoolClass.new(post_params(:first_name, :last_name))
        @school_class.save
        redirect_to school_classes_path(@school_class)
    end

    def edit 
        @school_class = SchoolClass.find(params[:id])
    end

    def update
        @school_class = SchoolClass.find(params[:id])
        @school_class.update(post_params(:first_name, :last_name))
        redirect_to school_classes_path(@school_class)
    end

    private 

        def post_params(*args)
            params.require(:school_class).permit(*args)
        end
        
end

  