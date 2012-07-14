#encoding: utf-8
class StudentController < ApplicationController
  before_filter :filter

  def filter
    redirect_to '/login' unless session[:user_id]
  end

  def index
    @groups = Group.find(current_user.group_id)
    if @groups.project_id
      @project = Project.find(@groups.proje_id)
    else
      #
    end
  end

  def selectproject
    @groups =Group.find(current_user.group_id)
    if params[:project_ids].length > 1
      redirect_to '/projects', notice:"Please select only one project."
    else
      @student = Student.find(current_user.id)
      @groups = Group.update(current_user.group_id, project_id:params[:project_ids].join)
      @project = Project.update(params[:project_ids].join, group_id:current_user.group_id)
      if @groups
        redirect_to '/student/index', notice:"Project successfully selected."
      else
        redirect_to '/projects', notice: "Project selection failed."
      end
    end
  end

  def report
  #Todo: file_uploader..??
  end


end
