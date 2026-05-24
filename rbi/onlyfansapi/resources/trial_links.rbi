# typed: strong

module Onlyfansapi
  module Resources
    # APIs for managing Free Trial Links
    class TrialLinks
      # Create a new free trial link for the account
      sig do
        params(
          account: String,
          duration: Onlyfansapi::TrialLinkCreateParams::Duration::OrInteger,
          offer_expiration: Integer,
          offer_limit:
            Onlyfansapi::TrialLinkCreateParams::OfferLimit::OrInteger,
          name: T.nilable(String),
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(Onlyfansapi::Models::TrialLinkCreateResponse)
      end
      def create(
        # The Account ID
        account,
        # The duration of the free trial **in days**. Must be **1**, **3**, **7**, **14**,
        # **30** (1 month), **90** (3 months), **180** (6 months), or **360** (12 months).
        duration:,
        # The trial link expiration **in days (from now)**. Must either be **0** (to never
        # expire), or a number between **1** and **30**.
        offer_expiration:,
        # How many people can use this offer. Must either be **0** (for no limit), or a
        # number between **1**-**10**, **50**, or **100**.
        offer_limit:,
        # The name of the trail link (optional). Cannot be longer than 64 characters.
        name: nil,
        request_options: {}
      )
      end

      # List all free trial links for the account, including the details and statistics
      sig do
        params(
          account: String,
          limit: Integer,
          offset: Integer,
          field: T.nilable(Onlyfansapi::TrialLinkListParams::Field::OrSymbol),
          sort: T.nilable(Onlyfansapi::TrialLinkListParams::Sort::OrSymbol),
          synchronous: T.nilable(T::Boolean),
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(Onlyfansapi::Models::TrialLinkListResponse)
      end
      def list(
        # The Account ID
        account,
        # The number of trial links to return. Default `10`
        limit:,
        # The offset used for pagination. Default `0`
        offset:,
        # Sort the results by a field. Default `create_date`
        field: nil,
        # Sort the results. Default `desc`
        sort: nil,
        # Wait for the revenue data to finish processing, instead of processing in the
        # background. **Will result in longer response times, use with caution**. Default
        # `false`
        synchronous: nil,
        request_options: {}
      )
      end

      # Delete a free trial link by its ID
      sig do
        params(
          trial_link_id: Integer,
          account: String,
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(Onlyfansapi::Models::TrialLinkDeleteResponse)
      end
      def delete(
        # The ID of the trial link to delete
        trial_link_id,
        # The Account ID
        account:,
        request_options: {}
      )
      end

      # Only available if we already scraped subscribers and calculated revenue per fan
      sig do
        params(
          trial_link_id: String,
          account: String,
          limit: Integer,
          min_spend: Float,
          offset: Integer,
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(Onlyfansapi::Models::TrialLinkListSpendersResponse)
      end
      def list_spenders(
        # Path param: The ID of the free trial link to get spenders for
        trial_link_id,
        # Path param: The Account ID
        account:,
        # Query param: The number of spenders to return per page. Default `50`.
        limit: nil,
        # Query param: Minimal spend of a fan. Default `1`. Must be at least 1.
        min_spend: nil,
        # Query param: The offset used for pagination. Default `0`.
        offset: nil,
        request_options: {}
      )
      end

      # Get list of subscribers who joined through a Free Trial Link
      sig do
        params(
          trial_link_id: String,
          account: String,
          limit: Integer,
          offset: Integer,
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(Onlyfansapi::Models::TrialLinkListSubscribersResponse)
      end
      def list_subscribers(
        # Path param: The ID of the trial link.
        trial_link_id,
        # Path param: The Account ID
        account:,
        # Query param: The number of subscribers to return per page. Default `10`
        limit:,
        # Query param: The offset used for pagination. Default `0`
        offset:,
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
