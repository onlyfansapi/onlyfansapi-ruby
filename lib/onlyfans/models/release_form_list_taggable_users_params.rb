# frozen_string_literal: true

module Onlyfans
  module Models
    # @see Onlyfans::Resources::ReleaseForms#list_taggable_users
    class ReleaseFormListTaggableUsersParams < Onlyfans::Internal::Type::BaseModel
      extend Onlyfans::Internal::Type::RequestParameters::Converter
      include Onlyfans::Internal::Type::RequestParameters

      # @!attribute account
      #
      #   @return [String]
      required :account, String

      # @!attribute filter
      #   Filter users by type: `all` or `pending`.
      #
      #   @return [Symbol, Onlyfans::Models::ReleaseFormListTaggableUsersParams::Filter, nil]
      optional :filter, enum: -> { Onlyfans::ReleaseFormListTaggableUsersParams::Filter }, nil?: true

      # @!attribute limit
      #   Number of users to return per page (1-50). Must be at least 1. Must not be
      #   greater than 50.
      #
      #   @return [Integer, nil]
      optional :limit, Integer

      # @!attribute name
      #   Filter users by name or username.
      #
      #   @return [String, nil]
      optional :name, String, nil?: true

      # @!attribute offset
      #   Number of users to skip for pagination. Must be at least 0.
      #
      #   @return [Integer, nil]
      optional :offset, Integer

      # @!attribute sort
      #   Sort field: `date` or `name`.
      #
      #   @return [Symbol, Onlyfans::Models::ReleaseFormListTaggableUsersParams::Sort, nil]
      optional :sort, enum: -> { Onlyfans::ReleaseFormListTaggableUsersParams::Sort }, nil?: true

      # @!attribute sort_direction
      #   Sort direction: `desc` or `asc`.
      #
      #   @return [Symbol, Onlyfans::Models::ReleaseFormListTaggableUsersParams::SortDirection, nil]
      optional :sort_direction,
               enum: -> { Onlyfans::ReleaseFormListTaggableUsersParams::SortDirection },
               nil?: true

      # @!method initialize(account:, filter: nil, limit: nil, name: nil, offset: nil, sort: nil, sort_direction: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Onlyfans::Models::ReleaseFormListTaggableUsersParams} for more details.
      #
      #   @param account [String]
      #
      #   @param filter [Symbol, Onlyfans::Models::ReleaseFormListTaggableUsersParams::Filter, nil] Filter users by type: `all` or `pending`.
      #
      #   @param limit [Integer] Number of users to return per page (1-50). Must be at least 1. Must not be great
      #
      #   @param name [String, nil] Filter users by name or username.
      #
      #   @param offset [Integer] Number of users to skip for pagination. Must be at least 0.
      #
      #   @param sort [Symbol, Onlyfans::Models::ReleaseFormListTaggableUsersParams::Sort, nil] Sort field: `date` or `name`.
      #
      #   @param sort_direction [Symbol, Onlyfans::Models::ReleaseFormListTaggableUsersParams::SortDirection, nil] Sort direction: `desc` or `asc`.
      #
      #   @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}]

      # Filter users by type: `all` or `pending`.
      module Filter
        extend Onlyfans::Internal::Type::Enum

        ALL = :all
        PENDING = :pending

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Sort field: `date` or `name`.
      module Sort
        extend Onlyfans::Internal::Type::Enum

        DATE = :date
        NAME = :name

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Sort direction: `desc` or `asc`.
      module SortDirection
        extend Onlyfans::Internal::Type::Enum

        DESC = :desc
        ASC = :asc

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
