class ApplicationController < ActionController::Base
  protect_from_forgery

  include SessionsHelper

  before_filter :set_locale

private
# 全リンクにlocale情報をセットする
def default_url_options(options={})
  { :locale => I18n.locale }
end

# リンクの多言語化に対応する
def set_locale
  I18n.locale = params[:locale] || I18n.default_locale
end
end
