# typed: strong

module Onlyfansapi
  module Resources
    class Bundles
      # Create a new bundle for the account.
      sig do
        params(
          account: String,
          discount: Onlyfansapi::BundleCreateParams::Discount::OrInteger,
          duration: Onlyfansapi::BundleCreateParams::Duration::OrInteger,
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(Onlyfansapi::Models::BundleCreateResponse)
      end
      def create(
        # The Account ID
        account,
        # The bundle's discount percentage.
        discount:,
        # The bundle's duration in months.
        duration:,
        request_options: {}
      )
      end

      # List all bundles for the account.
      sig do
        params(
          account: String,
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(Onlyfansapi::Models::BundleListResponse)
      end
      def list(
        # The Account ID
        account,
        request_options: {}
      )
      end

      # Delete a bundle for the account.
      sig do
        params(
          bundle_id: String,
          account: String,
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(Onlyfansapi::Models::BundleDeleteResponse)
      end
      def delete(
        # The ID of the bundle to delete.
        bundle_id,
        # The Account ID
        account:,
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
