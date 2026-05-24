# frozen_string_literal: true

module Onlyfansapi
  module Models
    module Media
      # @see Onlyfansapi::Resources::Media::Vault#list
      class VaultListParams < Onlyfansapi::Internal::Type::BaseModel
        extend Onlyfansapi::Internal::Type::RequestParameters::Converter
        include Onlyfansapi::Internal::Type::RequestParameters

        # @!attribute account
        #
        #   @return [String]
        required :account, String

        # @!attribute field
        #   Sort the results by a field. Default `recent`
        #
        #   @return [Symbol, Onlyfansapi::Models::Media::VaultListParams::Field, nil]
        optional :field, enum: -> { Onlyfansapi::Media::VaultListParams::Field }

        # @!attribute limit
        #   Number of media to return per page. Default: `24`
        #
        #   @return [Integer, nil]
        optional :limit, Integer

        # @!attribute list
        #   Only show media items from a specific list (category). **Refer to our Media
        #   Vault Lists endpoints.**
        #
        #   @return [Integer, nil]
        optional :list, Integer

        # @!attribute offset
        #   The offset used for pagination. Default `0`
        #
        #   @return [Integer, nil]
        optional :offset, Integer

        # @!attribute query
        #   Optionally, search for a text query.
        #
        #   @return [String, nil]
        optional :query, String

        # @!attribute sort
        #   Sort the results. Default `desc`
        #
        #   @return [Symbol, Onlyfansapi::Models::Media::VaultListParams::Sort, nil]
        optional :sort, enum: -> { Onlyfansapi::Media::VaultListParams::Sort }

        # @!attribute type
        #   Filter the results by a media type. Keep empty to show all media.
        #
        #   @return [Symbol, Onlyfansapi::Models::Media::VaultListParams::Type, nil]
        optional :type, enum: -> { Onlyfansapi::Media::VaultListParams::Type }

        # @!method initialize(account:, field: nil, limit: nil, list: nil, offset: nil, query: nil, sort: nil, type: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Onlyfansapi::Models::Media::VaultListParams} for more details.
        #
        #   @param account [String]
        #
        #   @param field [Symbol, Onlyfansapi::Models::Media::VaultListParams::Field] Sort the results by a field. Default `recent`
        #
        #   @param limit [Integer] Number of media to return per page. Default: `24`
        #
        #   @param list [Integer] Only show media items from a specific list (category). \*\*Refer to our Media
        #   Vaul
        #
        #   @param offset [Integer] The offset used for pagination. Default `0`
        #
        #   @param query [String] Optionally, search for a text query.
        #
        #   @param sort [Symbol, Onlyfansapi::Models::Media::VaultListParams::Sort] Sort the results. Default `desc`
        #
        #   @param type [Symbol, Onlyfansapi::Models::Media::VaultListParams::Type] Filter the results by a media type. Keep empty to show all media.
        #
        #   @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}]

        # Sort the results by a field. Default `recent`
        module Field
          extend Onlyfansapi::Internal::Type::Enum

          RECENT = :recent
          MOST_LIKED = :"most-liked"
          HIGHEST_TIPS = :"highest-tips"

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

        # Filter the results by a media type. Keep empty to show all media.
        module Type
          extend Onlyfansapi::Internal::Type::Enum

          PHOTO = :photo
          GIF = :gif
          VIDEO = :video
          AUDIO = :audio

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
