module Web
  module Handlers
    class GetStatus
      def call(_params, res)
        res.write 'up'
      end
    end

    class GetEmployee
      def call(params, res)
        employee = Employee.find params[:id]
        employee.response_body
      rescue ActiveRecord::RecordNotFound => e
        res.status = "404"
        res.write e.message
      end
    end

    class PatchEmployee
      def call(_params, res)
        # TODO: Implement me
      end
    end

    class PostLeaveApplication
      def call(params, res)
        employee = Employee.find params[:id]
        leave_application = employee.leave_applications.build(params.slice(:leave_start_date, :leave_end_date))
        if leave_application.save
          res.status "201"
          leave_application
        else
          res.status = "400"
          leave_application.errors.messages
        end
      rescue ActiveRecord::RecordNotFound => e
        res.status = "404"
        res.write e.message
      end
    end
  end
end
