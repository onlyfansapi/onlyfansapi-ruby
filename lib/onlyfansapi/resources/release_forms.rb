# frozen_string_literal: true

module Onlyfansapi
  module Resources
    # APIs for managing OnlyFans release forms
    class ReleaseForms
      # Create a new invitation link for release forms.
      #
      # @overload create_invitation_link(account, name:, request_options: {})
      #
      # @param account [String] The Account ID
      #
      # @param name [String] The name of the invitation link.
      #
      # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfansapi::Models::ReleaseFormCreateInvitationLinkResponse]
      #
      # @see Onlyfansapi::Models::ReleaseFormCreateInvitationLinkParams
      def create_invitation_link(account, params)
        parsed, options = Onlyfansapi::ReleaseFormCreateInvitationLinkParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["api/%1$s/release-forms/create-invitation-link", account],
          body: parsed,
          model: Onlyfansapi::Models::ReleaseFormCreateInvitationLinkResponse,
          options: options
        )
      end

      # Create a new release form link.
      #
      # @overload create_release_form(account, name:, request_options: {})
      #
      # @param account [String] The Account ID
      #
      # @param name [String] The name of the release form.
      #
      # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfansapi::Models::ReleaseFormCreateReleaseFormResponse]
      #
      # @see Onlyfansapi::Models::ReleaseFormCreateReleaseFormParams
      def create_release_form(account, params)
        parsed, options = Onlyfansapi::ReleaseFormCreateReleaseFormParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["api/%1$s/release-forms/create-release-form", account],
          body: parsed,
          model: Onlyfansapi::Models::ReleaseFormCreateReleaseFormResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Onlyfansapi::Models::ReleaseFormListTaggableUsersParams} for more details.
      #
      # Get a paginated list of users that can be tagged in release forms. These are
      # verified creators who have signed release forms to appear in your content. Use
      # `offset` and `limit` for pagination.
      #
      # @overload list_taggable_users(account, filter: nil, limit: nil, name: nil, offset: nil, sort: nil, sort_direction: nil, request_options: {})
      #
      # @param account [String] The Account ID
      #
      # @param filter [Symbol, Onlyfansapi::Models::ReleaseFormListTaggableUsersParams::Filter, nil] Filter users by type: `all` or `pending`.
      #
      # @param limit [Integer] Number of users to return per page (1-50). Must be at least 1. Must not be great
      #
      # @param name [String, nil] Filter users by name or username.
      #
      # @param offset [Integer] Number of users to skip for pagination. Must be at least 0.
      #
      # @param sort [Symbol, Onlyfansapi::Models::ReleaseFormListTaggableUsersParams::Sort, nil] Sort field: `date` or `name`.
      #
      # @param sort_direction [Symbol, Onlyfansapi::Models::ReleaseFormListTaggableUsersParams::SortDirection, nil] Sort direction: `desc` or `asc`.
      #
      # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfansapi::Models::ReleaseFormListTaggableUsersResponse]
      #
      # @see Onlyfansapi::Models::ReleaseFormListTaggableUsersParams
      def list_taggable_users(account, params = {})
        parsed, options = Onlyfansapi::ReleaseFormListTaggableUsersParams.dump_request(params)
        query = Onlyfansapi::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: ["api/%1$s/release-forms/taggable-users", account],
          query: query.transform_keys(sort_direction: "sortDirection"),
          model: Onlyfansapi::Models::ReleaseFormListTaggableUsersResponse,
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
