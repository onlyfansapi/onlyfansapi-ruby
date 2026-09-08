# frozen_string_literal: true

module Onlyfans
  module Models
    # @see Onlyfans::Resources::TrialLinks#list
    class TrialLinkListParams < Onlyfans::Internal::Type::BaseModel
      extend Onlyfans::Internal::Type::RequestParameters::Converter
      include Onlyfans::Internal::Type::RequestParameters

      # @!attribute account
      #
      #   @return [String]
      required :account, String

      # @!attribute end_date
      #   The end date for trial links. Keep empty to get all. Must not be greater than
      #   255 characters.
      #
      #   @return [String, nil]
      optional :end_date, String, nil?: true

      # @!attribute field
      #   Field to sort by. Default `create_date`.
      #
      #   @return [Symbol, Onlyfans::Models::TrialLinkListParams::Field, nil]
      optional :field, enum: -> { Onlyfans::TrialLinkListParams::Field }

      # @!attribute limit
      #   The number of trial links to return. Default `10`. Must be at least 1. Must not
      #   be greater than 100.
      #
      #   @return [Integer, nil]
      optional :limit, Integer

      # @!attribute offset
      #   The offset used for pagination. Default `0`. Must be at least 0.
      #
      #   @return [Integer, nil]
      optional :offset, Integer

      # @!attribute sort
      #   Sort direction. Default `desc`.
      #
      #   @return [Symbol, Onlyfans::Models::TrialLinkListParams::Sort, nil]
      optional :sort, enum: -> { Onlyfans::TrialLinkListParams::Sort }

      # @!attribute start_date
      #   The start date for trial links. Keep empty to get all. Must not be greater than
      #   255 characters.
      #
      #   @return [String, nil]
      optional :start_date, String, nil?: true

      # @!attribute synchronous
      #   Wait for revenue calculation instead of processing it in the background.
      #
      #   @return [Boolean, nil]
      optional :synchronous, Onlyfans::Internal::Type::Boolean

      # @!method initialize(account:, end_date: nil, field: nil, limit: nil, offset: nil, sort: nil, start_date: nil, synchronous: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Onlyfans::Models::TrialLinkListParams} for more details.
      #
      #   @param account [String]
      #
      #   @param end_date [String, nil] The end date for trial links. Keep empty to get all. Must not be greater than 25
      #
      #   @param field [Symbol, Onlyfans::Models::TrialLinkListParams::Field] Field to sort by. Default `create_date`.
      #
      #   @param limit [Integer] The number of trial links to return. Default `10`. Must be at least 1. Must not
      #
      #   @param offset [Integer] The offset used for pagination. Default `0`. Must be at least 0.
      #
      #   @param sort [Symbol, Onlyfans::Models::TrialLinkListParams::Sort] Sort direction. Default `desc`.
      #
      #   @param start_date [String, nil] The start date for trial links. Keep empty to get all. Must not be greater than
      #
      #   @param synchronous [Boolean] Wait for revenue calculation instead of processing it in the background.
      #
      #   @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}]

      # Field to sort by. Default `create_date`.
      module Field
        extend Onlyfans::Internal::Type::Enum

        CREATE_DATE = :create_date
        EXPIRE_DATE = :expire_date
        SUBSCRIBE_COUNTS = :subscribe_counts
        SUBSCRIBE_DAYS = :subscribe_days
        CLAIMS_COUNT = :claims_count

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Sort direction. Default `desc`.
      module Sort
        extend Onlyfans::Internal::Type::Enum

        ASC = :asc
        DESC = :desc

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
