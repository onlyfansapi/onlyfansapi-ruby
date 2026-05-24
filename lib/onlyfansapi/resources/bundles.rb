# frozen_string_literal: true

module Onlyfansapi
  module Resources
    class Bundles
      # Create a new bundle for the account.
      #
      # @overload create(account, discount:, duration:, request_options: {})
      #
      # @param account [String] The Account ID
      #
      # @param discount [Integer, Onlyfansapi::Models::BundleCreateParams::Discount] The bundle's discount percentage.
      #
      # @param duration [Integer, Onlyfansapi::Models::BundleCreateParams::Duration] The bundle's duration in months.
      #
      # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfansapi::Models::BundleCreateResponse]
      #
      # @see Onlyfansapi::Models::BundleCreateParams
      def create(account, params)
        parsed, options = Onlyfansapi::BundleCreateParams.dump_request(params)
        query = Onlyfansapi::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :post,
          path: ["api/%1$s/bundles", account],
          query: query,
          model: Onlyfansapi::Models::BundleCreateResponse,
          options: options
        )
      end

      # List all bundles for the account.
      #
      # @overload list(account, request_options: {})
      #
      # @param account [String] The Account ID
      #
      # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfansapi::Models::BundleListResponse]
      #
      # @see Onlyfansapi::Models::BundleListParams
      def list(account, params = {})
        @client.request(
          method: :get,
          path: ["api/%1$s/bundles", account],
          model: Onlyfansapi::Models::BundleListResponse,
          options: params[:request_options]
        )
      end

      # Delete a bundle for the account.
      #
      # @overload delete(bundle_id, account:, request_options: {})
      #
      # @param bundle_id [String] The ID of the bundle to delete.
      #
      # @param account [String] The Account ID
      #
      # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfansapi::Models::BundleDeleteResponse]
      #
      # @see Onlyfansapi::Models::BundleDeleteParams
      def delete(bundle_id, params)
        parsed, options = Onlyfansapi::BundleDeleteParams.dump_request(params)
        account =
          parsed.delete(:account) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :delete,
          path: ["api/%1$s/bundles/%2$s", account, bundle_id],
          model: Onlyfansapi::Models::BundleDeleteResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [Onlyfansapi::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
