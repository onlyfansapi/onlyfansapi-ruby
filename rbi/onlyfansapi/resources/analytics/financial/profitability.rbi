# typed: strong

module Onlyfansapi
  module Resources
    class Analytics
      class Financial
        # APIs for retrieving financial analytics data
        class Profitability
          # Get historical profitability data for a specific account over multiple months.
          sig do
            params(
              account: String,
              months: Integer,
              request_options: Onlyfansapi::RequestOptions::OrHash
            ).returns(
              T::Array[
                Onlyfansapi::Models::Analytics::Financial::ProfitabilityGetHistoryResponseItem
              ]
            )
          end
          def get_history(
            # The Account ID
            account,
            # Number of months of history to retrieve (1-60, default 12)
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
              request_options: Onlyfansapi::RequestOptions::OrHash
            ).returns(
              T::Array[
                Onlyfansapi::Models::Analytics::Financial::ProfitabilityGetProfitabilityResponseItem
              ]
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
          sig { params(client: Onlyfansapi::Client).returns(T.attached_class) }
          def self.new(client:)
          end
        end
      end
    end
  end
end
