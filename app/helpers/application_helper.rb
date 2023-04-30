module ApplicationHelper
    def author_name(object)
        object.first_name + " " + object.last_name
    end
end
