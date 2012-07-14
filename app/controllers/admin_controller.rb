#encoding: utf-8
class AdminController < ApplicationController
   before_filter :filter

  def filter
    redirect_to '/login' unless session[:user_id]
  end

  def index
    @student = Student.all.reject { |p| p.group_id? }
  end

  def creategroup
    if params[:student_ids]
      @groups = Group.create(name:params[:name])

      @student = Student.find(params[:student_ids])
      @student.each do |student|
        @student = Student.update(params[:student_ids].shift, group_id:Group.last.id)
      end

      if @student
        redirect_to '/admin/groups', notice: "Successfully group is formed."
      else
        redirect_to admin_index_path, notice: "Group not created."
      end
    else
      redirect_to admin_index_path, notice: "Group not created. Please select options for students."
    end
  end

  def groups
    @groups = Group.all
  end
end
end
