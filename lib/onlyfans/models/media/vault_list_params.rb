# frozen_string_literal: true

module Onlyfans
  module Models
    module Media
      # @see Onlyfans::Resources::Media::Vault#list
      class VaultListParams < Onlyfans::Internal::Type::BaseModel
        extend Onlyfans::Internal::Type::RequestParameters::Converter
        include Onlyfans::Internal::Type::RequestParameters

        # @!attribute account
        #
        #   @return [String]
        required :account, String

        # @!attribute field
        #   Sort the results by a field. Default `recent`
        #
        #   @return [Symbol, Onlyfans::Models::Media::VaultListParams::Field, nil]
        optional :field, enum: -> { Onlyfans::Media::VaultListParams::Field }

        # @!attribute limit
        #   Number of media to return per page (10 - 100). Default: `24`
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
        optional :query, String, nil?: true

        # @!attribute sort
        #   Sort the results. Default `desc`
        #
        #   @return [Symbol, Onlyfans::Models::Media::VaultListParams::Sort, nil]
        optional :sort, enum: -> { Onlyfans::Media::VaultListParams::Sort }

        # @!attribute type
        #   Filter the results by a media type. Keep empty to show all media.
        #
        #   @return [Symbol, Onlyfans::Models::Media::VaultListParams::Type, nil]
        optional :type, enum: -> { Onlyfans::Media::VaultListParams::Type }

        # @!method initialize(account:, field: nil, limit: nil, list: nil, offset: nil, query: nil, sort: nil, type: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Onlyfans::Models::Media::VaultListParams} for more details.
        #
        #   @param account [String]
        #
        #   @param field [Symbol, Onlyfans::Models::Media::VaultListParams::Field] Sort the results by a field. Default `recent`
        #
        #   @param limit [Integer] Number of media to return per page (10 - 100). Default: `24`
        #
        #   @param list [Integer] Only show media items from a specific list (category). \*\*Refer to our Media
        #   Vaul
        #
        #   @param offset [Integer] The offset used for pagination. Default `0`
        #
        #   @param query [String, nil] Optionally, search for a text query.
        #
        #   @param sort [Symbol, Onlyfans::Models::Media::VaultListParams::Sort] Sort the results. Default `desc`
        #
        #   @param type [Symbol, Onlyfans::Models::Media::VaultListParams::Type] Filter the results by a media type. Keep empty to show all media.
        #
        #   @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}]

        # Sort the results by a field. Default `recent`
        module Field
          extend Onlyfans::Internal::Type::Enum

          RECENT = :recent
          MOST_LIKED = :"most-liked"
          HIGHEST_TIPS = :"highest-tips"

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

        # Filter the results by a media type. Keep empty to show all media.
        module Type
          extend Onlyfans::Internal::Type::Enum

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
