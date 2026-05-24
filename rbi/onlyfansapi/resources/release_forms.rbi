# typed: strong

module Onlyfansapi
  module Resources
    # APIs for managing OnlyFans release forms
    class ReleaseForms
      # Create a new invitation link for release forms.
      sig do
        params(
          account: String,
          name: String,
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(Onlyfansapi::Models::ReleaseFormCreateInvitationLinkResponse)
      end
      def create_invitation_link(
        # The Account ID
        account,
        # The name of the invitation link.
        name:,
        request_options: {}
      )
      end

      # Create a new release form link.
      sig do
        params(
          account: String,
          name: String,
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(Onlyfansapi::Models::ReleaseFormCreateReleaseFormResponse)
      end
      def create_release_form(
        # The Account ID
        account,
        # The name of the release form.
        name:,
        request_options: {}
      )
      end

      # Get a paginated list of users that can be tagged in release forms. These are
      # verified creators who have signed release forms to appear in your content. Use
      # `offset` and `limit` for pagination.
      sig do
        params(
          account: String,
          filter:
            T.nilable(
              Onlyfansapi::ReleaseFormListTaggableUsersParams::Filter::OrSymbol
            ),
          limit: Integer,
          name: T.nilable(String),
          offset: Integer,
          sort:
            T.nilable(
              Onlyfansapi::ReleaseFormListTaggableUsersParams::Sort::OrSymbol
            ),
          sort_direction:
            T.nilable(
              Onlyfansapi::ReleaseFormListTaggableUsersParams::SortDirection::OrSymbol
            ),
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(Onlyfansapi::Models::ReleaseFormListTaggableUsersResponse)
      end
      def list_taggable_users(
        # The Account ID
        account,
        # Filter users by type: `all` or `pending`.
        filter: nil,
        # Number of users to return per page (1-50). Must be at least 1. Must not be
        # greater than 50.
        limit: nil,
        # Filter users by name or username.
        name: nil,
        # Number of users to skip for pagination. Must be at least 0.
        offset: nil,
        # Sort field: `date` or `name`.
        sort: nil,
        # Sort direction: `desc` or `asc`.
        sort_direction: nil,
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
