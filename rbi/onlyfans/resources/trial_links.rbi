# typed: strong

module Onlyfans
  module Resources
    # APIs for managing Free Trial Links
    class TrialLinks
      # APIs for managing Free Trial Links
      sig { returns(Onlyfans::Resources::TrialLinks::Tags) }
      attr_reader :tags

      # Create a new free trial link for the account
      sig do
        params(
          account: String,
          duration: Onlyfans::TrialLinkCreateParams::Duration::OrInteger,
          offer_expiration: Integer,
          offer_limit: Onlyfans::TrialLinkCreateParams::OfferLimit::OrInteger,
          name: T.nilable(String),
          tags: T::Array[String],
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(Onlyfans::Models::TrialLinkCreateResponse)
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
        # Array of tag names to add to the trial link.
        tags: nil,
        request_options: {}
      )
      end

      # Get individual Free Trial Link details and it's revenue data
      sig do
        params(
          trial_link_id: String,
          account: String,
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(Onlyfans::Models::TrialLinkRetrieveResponse)
      end
      def retrieve(
        # The ID of the trial link.
        trial_link_id,
        # The Account ID
        account:,
        request_options: {}
      )
      end

      # List all free trial links for the account, including the details and statistics
      sig do
        params(
          account: String,
          end_date: T.nilable(String),
          field: Onlyfans::TrialLinkListParams::Field::OrSymbol,
          limit: Integer,
          offset: Integer,
          sort: Onlyfans::TrialLinkListParams::Sort::OrSymbol,
          start_date: T.nilable(String),
          synchronous: T::Boolean,
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(Onlyfans::Models::TrialLinkListResponse)
      end
      def list(
        # The Account ID
        account,
        # The end date for trial links. Keep empty to get all. Must not be greater than
        # 255 characters.
        end_date: nil,
        # Field to sort by. Default `create_date`.
        field: nil,
        # The number of trial links to return. Default `10`. Must be at least 1. Must not
        # be greater than 100.
        limit: nil,
        # The offset used for pagination. Default `0`. Must be at least 0.
        offset: nil,
        # Sort direction. Default `desc`.
        sort: nil,
        # The start date for trial links. Keep empty to get all. Must not be greater than
        # 255 characters.
        start_date: nil,
        # Wait for revenue calculation instead of processing it in the background.
        synchronous: nil,
        request_options: {}
      )
      end

      # Delete a free trial link by its ID
      sig do
        params(
          trial_link_id: String,
          account: String,
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(Onlyfans::Models::TrialLinkDeleteResponse)
      end
      def delete(
        # The ID of the trial link.
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
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(Onlyfans::Models::TrialLinkListSpendersResponse)
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
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(Onlyfans::Models::TrialLinkListSubscribersResponse)
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

      # Get per-link time-to-profit cohort ARPS windows for a specific Free Trial Link
      sig do
        params(
          trial_link_id: String,
          account: String,
          acquisition_end: String,
          acquisition_start: String,
          revenue_basis:
            Onlyfans::TrialLinkRetrieveCohortArpsParams::RevenueBasis::OrSymbol,
          request_options: Onlyfans::RequestOptions::OrHash
        ).void
      end
      def retrieve_cohort_arps(
        # Path param: The ID of the trial link.
        trial_link_id,
        # Path param: The Account ID
        account:,
        # Query param: Optional acquisition range end date
        acquisition_end: nil,
        # Query param: Optional acquisition range start date
        acquisition_start: nil,
        # Query param: Revenue basis. Defaults to `net`.
        revenue_basis: nil,
        request_options: {}
      )
      end

      # Get dashboard-style summary plus daily and monthly metrics for a specific Free
      # Trial Link
      sig do
        params(
          trial_link_id: String,
          account: String,
          date_end: String,
          date_start: String,
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(Onlyfans::Models::TrialLinkRetrieveStatsResponse)
      end
      def retrieve_stats(
        # Path param: The ID of the trial link.
        trial_link_id,
        # Path param: The Account ID
        account:,
        # Query param: Optional stats range end date
        date_end: nil,
        # Query param: Optional stats range start date
        date_start: nil,
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
