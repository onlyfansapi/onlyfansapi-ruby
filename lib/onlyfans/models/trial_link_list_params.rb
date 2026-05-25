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

      # @!attribute limit
      #   The number of trial links to return. Default `10`
      #
      #   @return [Integer]
      required :limit, Integer

      # @!attribute offset
      #   The offset used for pagination. Default `0`
      #
      #   @return [Integer]
      required :offset, Integer

      # @!attribute field
      #   Sort the results by a field. Default `create_date`
      #
      #   @return [Symbol, Onlyfans::Models::TrialLinkListParams::Field, nil]
      optional :field, enum: -> { Onlyfans::TrialLinkListParams::Field }, nil?: true

      # @!attribute sort
      #   Sort the results. Default `desc`
      #
      #   @return [Symbol, Onlyfans::Models::TrialLinkListParams::Sort, nil]
      optional :sort, enum: -> { Onlyfans::TrialLinkListParams::Sort }, nil?: true

      # @!attribute synchronous
      #   Wait for the revenue data to finish processing, instead of processing in the
      #   background. **Will result in longer response times, use with caution**. Default
      #   `false`
      #
      #   @return [Boolean, nil]
      optional :synchronous, Onlyfans::Internal::Type::Boolean, nil?: true

      # @!method initialize(account:, limit:, offset:, field: nil, sort: nil, synchronous: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Onlyfans::Models::TrialLinkListParams} for more details.
      #
      #   @param account [String]
      #
      #   @param limit [Integer] The number of trial links to return. Default `10`
      #
      #   @param offset [Integer] The offset used for pagination. Default `0`
      #
      #   @param field [Symbol, Onlyfans::Models::TrialLinkListParams::Field, nil] Sort the results by a field. Default `create_date`
      #
      #   @param sort [Symbol, Onlyfans::Models::TrialLinkListParams::Sort, nil] Sort the results. Default `desc`
      #
      #   @param synchronous [Boolean, nil] Wait for the revenue data to finish processing, instead of processing in the bac
      #
      #   @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}]

      # Sort the results by a field. Default `create_date`
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

      # Sort the results. Default `desc`
      module Sort
        extend Onlyfans::Internal::Type::Enum

        DESC = :desc
        ASC = :asc

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
