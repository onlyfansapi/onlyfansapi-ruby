# typed: strong

module Onlyfansapi
  module Resources
    class Statistics
      class Statements
        # Get the earnings for a given period.
        sig do
          params(
            account: String,
            start_date: String,
            end_date: String,
            type:
              Onlyfansapi::Statistics::StatementGetEarningsParams::Type::OrSymbol,
            request_options: Onlyfansapi::RequestOptions::OrHash
          ).returns(
            Onlyfansapi::Models::Statistics::StatementGetEarningsResponse
          )
        end
        def get_earnings(
          # The Account ID
          account,
          # The start date for the period
          start_date:,
          # The end date for the period.
          end_date: nil,
          # Filter by All / Subscriptions / Tips / Posts / Messages / Streams
          type: nil,
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
