# typed: strong

module Onlyfans
  module Resources
    class Analytics
      class Financial
        # APIs for retrieving financial analytics data
        class Profitability
          # Get historical profitability data for a specific account over multiple months.
          sig do
            params(
              account: String,
              account_prefixed_id: String,
              months: Integer,
              request_options: Onlyfans::RequestOptions::OrHash
            ).returns(
              Onlyfans::Models::Analytics::Financial::ProfitabilityGetHistoryResponse
            )
          end
          def get_history(
            # The Account ID
            account,
            # The account prefixed ID.
            account_prefixed_id:,
            # Number of months of history to retrieve (1-60, default 12). Must be at least 1.
            # Must not be greater than 60.
            months: nil,
            request_options: {}
          )
          end

          # Calculate profitability for creators including revenue, costs, commissions, and
          # margins for a specific month.
          sig do
            params(
              account_ids: T::Array[String],
              month: Integer,
              year: Integer,
              request_options: Onlyfans::RequestOptions::OrHash
            ).returns(
              Onlyfans::Models::Analytics::Financial::ProfitabilityGetProfitabilityResponse
            )
          end
          def get_profitability(
            # Array of account prefixed IDs
            account_ids:,
            # The month to calculate profitability for (1-12)
            month:,
            # The year to calculate profitability for
            year:,
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
end
