module Web
  module Handlers
    class GetStatus
      def call(_params, res)
        res.write 'up'
      end
    end

    class GetEmployee
      def call(_params, res)
        # TODO: Implement me
      end
    end

    class PatchEmployee
      def call(_params, res)
        # TODO: Implement me
      end
    end

    class PostApplication
      def call(_params, res)
        # TODO: Implement me
        # Accepts a leave_start_date, leave_end_date, employee_id and creates an Application
        # with those properties.  It should then return the new application with a status code of 200.
        # If any of the properties are missing in the request body, it should return the new application
        # with a status code of 400.
        #
        # You will need to implement a new model for this handler
      end
    end
  end
end
