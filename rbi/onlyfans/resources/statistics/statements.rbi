# typed: strong

module Onlyfans
  module Resources
    class Statistics
      class Statements
        # Get the earnings for a given period.
        sig do
          params(
            account: String,
            end_date: String,
            start_date: String,
            type:
              Onlyfans::Statistics::StatementGetEarningsParams::Type::OrSymbol,
            request_options: Onlyfans::RequestOptions::OrHash
          ).returns(Onlyfans::Models::Statistics::StatementGetEarningsResponse)
        end
        def get_earnings(
          # The Account ID
          account,
          # The end date for the period.
          end_date:,
          # The start date for the period.
          start_date:,
          # Filter by All / Subscriptions / Tips / Posts / Messages / Streams
          type: nil,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: Onlyfans::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
