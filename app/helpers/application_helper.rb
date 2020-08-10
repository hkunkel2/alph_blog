module ApplicationHelper
    module ApplicationHelper
        def alert_class(flash_name)
          if flash_name == "notice"
            return "success-class"
          elsif flash_name == "alert"
            return "danger-class"
          else
            return nil
          end
        end
      end
end
