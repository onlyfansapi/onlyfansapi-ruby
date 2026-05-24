# typed: strong

module Onlyfansapi
  module Resources
    # Endpoints for your linked accounts
    class Me
      # Get OnlyFans Profile details for the currently used Account
      sig do
        params(
          account: String,
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(Onlyfansapi::Models::MeRetrieveResponse)
      end
      def retrieve(
        # The Account ID
        account,
        request_options: {}
      )
      end

      # Get the start date of the model (the date+time monetization was enabled)
      sig do
        params(
          account: String,
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(Onlyfansapi::Models::MeGetModelStartDateResponse)
      end
      def get_model_start_date(
        # The Account ID
        account,
        request_options: {}
      )
      end

      # Get the top percentage of the model (e.g., top 0.02% of all creators)
      sig do
        params(
          account: String,
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(Onlyfansapi::Models::MeGetTopPercentageResponse)
      end
      def get_top_percentage(
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
