module ComplaintsHelper
  def error_message(error)
    message = content_tag :div, class: 'error-inner' do
      content_tag( :h3, error[:title] ) + content_tag( :div, error[:message])
    end
    icon = content_tag( :i, '', class: 'fa-solid fa-circle-exclamation' )
    close = content_tag( :i, '', class: 'fa-solid fa-xmark' )
    content_tag :div, class: 'error hidden', id: error[:id] do
      icon + message + close
    end.html_safe
  end
  #
  def error_text(error)
    message = content_tag :div do
      error[:message]
    end
    icon = content_tag( :i, '', class: 'fa-solid fa-circle-exclamation' )
    content_tag :div, class: 'error-text hidden', id: error[:id] do
      icon + message
    end.html_safe
  end
end
