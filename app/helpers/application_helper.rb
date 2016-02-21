module ApplicationHelper
    def error_tag(model, attribute)
        if model.errors.has_key? attribute
            content_tag(:div, model.errors[attribute].first, class: 'error_message')
        end
    end
    def flash_class(level)
        case level
            when "notice" then "alert alert-info"
            when "success" then "alert alert-success"
            when "error" then "alert alert-warning"
            when "alert" then "alert alert-danger"
        end
    end
end