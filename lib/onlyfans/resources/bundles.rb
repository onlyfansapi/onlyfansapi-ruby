# frozen_string_literal: true

module Onlyfans
  module Resources
    class Bundles
      # Create a new bundle for the account.
      #
      # @overload create(account, discount:, duration:, request_options: {})
      #
      # @param account [String] The Account ID
      #
      # @param discount [Integer, Onlyfans::Models::BundleCreateParams::Discount] The bundle's discount percentage.
      #
      # @param duration [Integer, Onlyfans::Models::BundleCreateParams::Duration] The bundle's duration in months.
      #
      # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfans::Models::BundleCreateResponse]
      #
      # @see Onlyfans::Models::BundleCreateParams
      def create(account, params)
        parsed, options = Onlyfans::BundleCreateParams.dump_request(params)
        query = Onlyfans::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :post,
          path: ["api/%1$s/bundles", account],
          query: query,
          model: Onlyfans::Models::BundleCreateResponse,
          options: options
        )
      end

      # List all bundles for the account.
      #
      # @overload list(account, request_options: {})
      #
      # @param account [String] The Account ID
      #
      # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfans::Models::BundleListResponse]
      #
      # @see Onlyfans::Models::BundleListParams
      def list(account, params = {})
        @client.request(
          method: :get,
          path: ["api/%1$s/bundles", account],
          model: Onlyfans::Models::BundleListResponse,
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
      # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfans::Models::BundleDeleteResponse]
      #
      # @see Onlyfans::Models::BundleDeleteParams
      def delete(bundle_id, params)
        parsed, options = Onlyfans::BundleDeleteParams.dump_request(params)
        account =
          parsed.delete(:account) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :delete,
          path: ["api/%1$s/bundles/%2$s", account, bundle_id],
          model: Onlyfans::Models::BundleDeleteResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [Onlyfans::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
