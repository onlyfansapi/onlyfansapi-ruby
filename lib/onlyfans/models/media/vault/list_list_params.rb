# frozen_string_literal: true

module Onlyfans
  module Models
    module Media
      module Vault
        # @see Onlyfans::Resources::Media::Vault::Lists#list
        class ListListParams < Onlyfans::Internal::Type::BaseModel
          extend Onlyfans::Internal::Type::RequestParameters::Converter
          include Onlyfans::Internal::Type::RequestParameters

          # @!attribute account
          #
          #   @return [String]
          required :account, String

          # @!attribute lightweight
          #   Set to `true` to return only `id`, `name`, `type`, `canUpdate` and a rolled-up
          #   `mediaCount` per list, dropping the `medias` previews. Much smaller payload —
          #   ideal for rendering a folder picker. Default: `false`
          #
          #   @return [Boolean, nil]
          optional :lightweight, Onlyfans::Internal::Type::Boolean

          # @!attribute limit
          #   Number of media to return per page. Default: `24`
          #
          #   @return [Integer, nil]
          optional :limit, Integer

          # @!attribute offset
          #   The offset used for pagination. Default `0`
          #
          #   @return [Integer, nil]
          optional :offset, Integer

          # @!attribute query
          #   Optionally, find a list by its name.
          #
          #   @return [String, nil]
          optional :query, String

          # @!method initialize(account:, lightweight: nil, limit: nil, offset: nil, query: nil, request_options: {})
          #   Some parameter documentations has been truncated, see
          #   {Onlyfans::Models::Media::Vault::ListListParams} for more details.
          #
          #   @param account [String]
          #
          #   @param lightweight [Boolean] Set to `true` to return only `id`, `name`, `type`, `canUpdate` and a rolled-up `
          #
          #   @param limit [Integer] Number of media to return per page. Default: `24`
          #
          #   @param offset [Integer] The offset used for pagination. Default `0`
          #
          #   @param query [String] Optionally, find a list by its name.
          #
          #   @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
