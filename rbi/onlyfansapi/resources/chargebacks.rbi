# typed: strong

module Onlyfansapi
  module Resources
    class Chargebacks
      # Retrieve a list of chargebacks within a specified date range. Possible statuses
      # are `loading`, `done`, `undo`.
      sig do
        params(
          account: String,
          end_date: String,
          limit: T.nilable(String),
          offset: T.nilable(String),
          start_date: String,
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(Onlyfansapi::Models::ChargebackListResponse)
      end
      def list(
        # The Account ID
        account,
        # The end date for the chargebacks. Keep empty to get all.
        end_date: nil,
        # Number of chargebacks to return (1-100). Default = 10
        limit: nil,
        # Number of chargebacks to skip, used for pagination.
        offset: nil,
        # The start date for the chargebacks. Keep empty to get all.
        start_date: nil,
        request_options: {}
      )
      end

      # The Chargeback Ratio reflects the number of chargebacks compared to the total
      # number of payments as a percentage. Ideally, your Chargeback Ratio should be
      # under 1%.
      sig do
        params(
          account: String,
          end_date: String,
          start_date: String,
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(Onlyfansapi::Models::ChargebackCalculateRatioResponse)
      end
      def calculate_ratio(
        # The Account ID
        account,
        # The end date for the chargeback ratio. Keep empty to get all.
        end_date: nil,
        # The start date for the chargeback ratio. Keep empty to get all.
        start_date: nil,
        request_options: {}
      )
      end

      # List chargeback counts & amounts per hour, day or month.
      sig do
        params(
          account: String,
          end_date: String,
          start_date: String,
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(Onlyfansapi::Models::ChargebackListStatisticsResponse)
      end
      def list_statistics(
        # The Account ID
        account,
        # The end date for the chargebacks. Keep empty to get all.
        end_date: nil,
        # The start date for the chargebacks. Keep empty to get all.
        start_date: nil,
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
