#encoding: utf-8
class AdminController < ApplicationController
  before_filter :filter

  def filter
    redirect_to '/login' unless session[:user_id]
  end

  def index
    @ogrenci = Ogrenci.all.reject { |p| p.group_id? }
  end

  def creategroup
    if params[:ogrenci_ids]
      @groups = Group.create(name:params[:name])

      @ogrenci = Ogrenci.find(params[:ogrenci_ids])
      @ogrenci.each do |ogrenci|
        @ogrenci = Ogrenci.update(params[:ogrenci_ids].shift, group_id:Group.last.id)
      end

      if @ogrenci
        redirect_to '/admin/groups', notice: "Başarılı bir şekilde grup oluşturuldu."
      else
        redirect_to admin_index_path, notice: "Grup oluşturulamadı."
      end
    else
      redirect_to admin_index_path, notice: "Grup oluşturulamadı. Lütfen öğrenci seçeneklerini işaretleyiniz."
    end
  end

  def groups
    @groups = Group.all
  end
end
