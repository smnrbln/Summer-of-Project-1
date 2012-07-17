#encoding: utf-8
class OgrenciController < ApplicationController
  before_filter :filter

  def filter
    redirect_to '/login' unless session[:user_id]
  end

  def index
    @groups = Group.find(current_user.group_id)
    if @groups.proje_id
      @proje = Proje.find(@groups.proje_id)
    else
      #
    end
  end

  def selectproje
    @groups =Group.find(current_user.group_id)
    if params[:proje_ids].length > 1
      redirect_to '/projes', notice:"Lütfen sadece 1 tane proje seçiniz."
    else
      @ogrenci = Ogrenci.find(current_user.id)
      @groups = Group.update(current_user.group_id, proje_id:params[:proje_ids].join)
      @proje = Proje.update(params[:proje_ids].join, group_id:current_user.group_id)
      if @groups
        redirect_to '/ogrenci/index', notice:"Başarılı bir şekilde proje seçilmiştir."
      else
        redirect_to '/projes', notice: "Proje seçimi başarız."
      end
    end
  end

  def rapor
  end

end
