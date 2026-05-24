# frozen_string_literal: true

module Onlyfansapi
  module Models
    # @see Onlyfansapi::Resources::TrialLinks#list
    class TrialLinkListParams < Onlyfansapi::Internal::Type::BaseModel
      extend Onlyfansapi::Internal::Type::RequestParameters::Converter
      include Onlyfansapi::Internal::Type::RequestParameters

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
      #   @return [Symbol, Onlyfansapi::Models::TrialLinkListParams::Field, nil]
      optional :field, enum: -> { Onlyfansapi::TrialLinkListParams::Field }, nil?: true

      # @!attribute sort
      #   Sort the results. Default `desc`
      #
      #   @return [Symbol, Onlyfansapi::Models::TrialLinkListParams::Sort, nil]
      optional :sort, enum: -> { Onlyfansapi::TrialLinkListParams::Sort }, nil?: true

      # @!attribute synchronous
      #   Wait for the revenue data to finish processing, instead of processing in the
      #   background. **Will result in longer response times, use with caution**. Default
      #   `false`
      #
      #   @return [Boolean, nil]
      optional :synchronous, Onlyfansapi::Internal::Type::Boolean, nil?: true

      # @!method initialize(account:, limit:, offset:, field: nil, sort: nil, synchronous: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Onlyfansapi::Models::TrialLinkListParams} for more details.
      #
      #   @param account [String]
      #
      #   @param limit [Integer] The number of trial links to return. Default `10`
      #
      #   @param offset [Integer] The offset used for pagination. Default `0`
      #
      #   @param field [Symbol, Onlyfansapi::Models::TrialLinkListParams::Field, nil] Sort the results by a field. Default `create_date`
      #
      #   @param sort [Symbol, Onlyfansapi::Models::TrialLinkListParams::Sort, nil] Sort the results. Default `desc`
      #
      #   @param synchronous [Boolean, nil] Wait for the revenue data to finish processing, instead of processing in the bac
      #
      #   @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}]

      # Sort the results by a field. Default `create_date`
      module Field
        extend Onlyfansapi::Internal::Type::Enum

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
        extend Onlyfansapi::Internal::Type::Enum

        DESC = :desc
        ASC = :asc

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
