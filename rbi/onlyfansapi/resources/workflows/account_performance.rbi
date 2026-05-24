# typed: strong

module Onlyfansapi
  module Resources
    class Workflows
      class AccountPerformance
        sig do
          params(
            account: String,
            request_options: Onlyfansapi::RequestOptions::OrHash
          ).void
        end
        def retrieve_starting_revenues(
          # The Account ID
          account,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: Onlyfansapi::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
