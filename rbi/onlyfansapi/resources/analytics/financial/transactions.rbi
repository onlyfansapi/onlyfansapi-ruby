# typed: strong

module Onlyfansapi
  module Resources
    class Analytics
      class Financial
        # APIs for retrieving financial analytics data
        class Transactions
          # Get transaction totals grouped by transaction type (subscriptions, tips,
          # messages, etc.).
          sig do
            params(
              account_ids: T::Array[String],
              end_date: String,
              start_date: String,
              request_options: Onlyfansapi::RequestOptions::OrHash
            ).returns(
              T::Array[
                Onlyfansapi::Models::Analytics::Financial::TransactionGetByTypeResponseItem
              ]
            )
          end
          def get_by_type(
            # Array of account prefixed IDs
            account_ids:,
            # The end date (ISO 8601 format)
            end_date:,
            # The start date (ISO 8601 format)
            start_date:,
            request_options: {}
          )
          end

          # Get transaction summary including counts for succeeded, refunded, and disputed
          # transactions, plus gross, net, and fee totals.
          sig do
            params(
              account_ids: T::Array[String],
              end_date: String,
              start_date: String,
              request_options: Onlyfansapi::RequestOptions::OrHash
            ).returns(
              Onlyfansapi::Models::Analytics::Financial::TransactionGetSummaryResponse
            )
          end
          def get_summary(
            # Array of account prefixed IDs
            account_ids:,
            # The end date (ISO 8601 format)
            end_date:,
            # The start date (ISO 8601 format)
            start_date:,
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
