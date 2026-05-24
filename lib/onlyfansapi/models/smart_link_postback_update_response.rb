# frozen_string_literal: true

module Onlyfansapi
  module Models
    # @see Onlyfansapi::Resources::SmartLinkPostbacks#update
    class SmartLinkPostbackUpdateResponse < Onlyfansapi::Internal::Type::BaseModel
      # @!attribute _meta
      #
      #   @return [Onlyfansapi::Models::SmartLinkPostbackUpdateResponse::Meta, nil]
      optional :_meta, -> { Onlyfansapi::Models::SmartLinkPostbackUpdateResponse::Meta }

      # @!attribute data
      #
      #   @return [Onlyfansapi::Models::SmartLinkPostbackUpdateResponse::Data, nil]
      optional :data, -> { Onlyfansapi::Models::SmartLinkPostbackUpdateResponse::Data }

      # @!method initialize(_meta: nil, data: nil)
      #   @param _meta [Onlyfansapi::Models::SmartLinkPostbackUpdateResponse::Meta]
      #   @param data [Onlyfansapi::Models::SmartLinkPostbackUpdateResponse::Data]

      # @see Onlyfansapi::Models::SmartLinkPostbackUpdateResponse#_meta
      class Meta < Onlyfansapi::Internal::Type::BaseModel
        # @!attribute _cache
        #
        #   @return [Onlyfansapi::Models::SmartLinkPostbackUpdateResponse::Meta::Cache, nil]
        optional :_cache, -> { Onlyfansapi::Models::SmartLinkPostbackUpdateResponse::Meta::Cache }

        # @!attribute _credits
        #
        #   @return [Onlyfansapi::Models::SmartLinkPostbackUpdateResponse::Meta::Credits, nil]
        optional :_credits, -> { Onlyfansapi::Models::SmartLinkPostbackUpdateResponse::Meta::Credits }

        # @!method initialize(_cache: nil, _credits: nil)
        #   @param _cache [Onlyfansapi::Models::SmartLinkPostbackUpdateResponse::Meta::Cache]
        #   @param _credits [Onlyfansapi::Models::SmartLinkPostbackUpdateResponse::Meta::Credits]

        # @see Onlyfansapi::Models::SmartLinkPostbackUpdateResponse::Meta#_cache
        class Cache < Onlyfansapi::Internal::Type::BaseModel
          # @!attribute is_cached
          #
          #   @return [Boolean, nil]
          optional :is_cached, Onlyfansapi::Internal::Type::Boolean

          # @!attribute note
          #
          #   @return [String, nil]
          optional :note, String

          # @!method initialize(is_cached: nil, note: nil)
          #   @param is_cached [Boolean]
          #   @param note [String]
        end

        # @see Onlyfansapi::Models::SmartLinkPostbackUpdateResponse::Meta#_credits
        class Credits < Onlyfansapi::Internal::Type::BaseModel
          # @!attribute balance
          #
          #   @return [Integer, nil]
          optional :balance, Integer

          # @!attribute note
          #
          #   @return [String, nil]
          optional :note, String

          # @!attribute used
          #
          #   @return [Integer, nil]
          optional :used, Integer

          # @!method initialize(balance: nil, note: nil, used: nil)
          #   @param balance [Integer]
          #   @param note [String]
          #   @param used [Integer]
        end
      end

      # @see Onlyfansapi::Models::SmartLinkPostbackUpdateResponse#data
      class Data < Onlyfansapi::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [Integer, nil]
        optional :id, Integer

        # @!attribute conversion_types
        #
        #   @return [Array<String>, nil]
        optional :conversion_types, Onlyfansapi::Internal::Type::ArrayOf[String]

        # @!attribute created_at
        #
        #   @return [String, nil]
        optional :created_at, String

        # @!attribute latest_response
        #
        #   @return [String, nil]
        optional :latest_response, String, nil?: true

        # @!attribute smart_link_ids
        #
        #   @return [Array<String>, nil]
        optional :smart_link_ids, Onlyfansapi::Internal::Type::ArrayOf[String]

        # @!attribute smart_link_scope
        #
        #   @return [String, nil]
        optional :smart_link_scope, String

        # @!attribute smart_links
        #
        #   @return [Array<Onlyfansapi::Models::SmartLinkPostbackUpdateResponse::Data::SmartLink>, nil]
        optional :smart_links,
                 -> { Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Models::SmartLinkPostbackUpdateResponse::Data::SmartLink] }

        # @!attribute updated_at
        #
        #   @return [String, nil]
        optional :updated_at, String

        # @!attribute url
        #
        #   @return [String, nil]
        optional :url, String

        # @!method initialize(id: nil, conversion_types: nil, created_at: nil, latest_response: nil, smart_link_ids: nil, smart_link_scope: nil, smart_links: nil, updated_at: nil, url: nil)
        #   @param id [Integer]
        #   @param conversion_types [Array<String>]
        #   @param created_at [String]
        #   @param latest_response [String, nil]
        #   @param smart_link_ids [Array<String>]
        #   @param smart_link_scope [String]
        #   @param smart_links [Array<Onlyfansapi::Models::SmartLinkPostbackUpdateResponse::Data::SmartLink>]
        #   @param updated_at [String]
        #   @param url [String]

        class SmartLink < Onlyfansapi::Internal::Type::BaseModel
          # @!attribute account_display_name
          #
          #   @return [String, nil]
          optional :account_display_name, String

          # @!attribute account_prefixed_id
          #
          #   @return [String, nil]
          optional :account_prefixed_id, String

          # @!attribute link_ulid
          #
          #   @return [String, nil]
          optional :link_ulid, String

          # @!attribute name
          #
          #   @return [String, nil]
          optional :name, String

          # @!method initialize(account_display_name: nil, account_prefixed_id: nil, link_ulid: nil, name: nil)
          #   @param account_display_name [String]
          #   @param account_prefixed_id [String]
          #   @param link_ulid [String]
          #   @param name [String]
        end
      end
    end
  end
end
