# frozen_string_literal: true

module Onlyfans
  module Models
    # @see Onlyfans::Resources::SmartLinkPostbacks#update
    class SmartLinkPostbackUpdateResponse < Onlyfans::Internal::Type::BaseModel
      # @!attribute _meta
      #
      #   @return [Onlyfans::Models::SmartLinkPostbackUpdateResponse::Meta, nil]
      optional :_meta, -> { Onlyfans::Models::SmartLinkPostbackUpdateResponse::Meta }

      # @!attribute data
      #
      #   @return [Onlyfans::Models::SmartLinkPostbackUpdateResponse::Data, nil]
      optional :data, -> { Onlyfans::Models::SmartLinkPostbackUpdateResponse::Data }

      # @!method initialize(_meta: nil, data: nil)
      #   @param _meta [Onlyfans::Models::SmartLinkPostbackUpdateResponse::Meta]
      #   @param data [Onlyfans::Models::SmartLinkPostbackUpdateResponse::Data]

      # @see Onlyfans::Models::SmartLinkPostbackUpdateResponse#_meta
      class Meta < Onlyfans::Internal::Type::BaseModel
        # @!attribute _cache
        #
        #   @return [Onlyfans::Models::SmartLinkPostbackUpdateResponse::Meta::Cache, nil]
        optional :_cache, -> { Onlyfans::Models::SmartLinkPostbackUpdateResponse::Meta::Cache }

        # @!attribute _credits
        #
        #   @return [Onlyfans::Models::SmartLinkPostbackUpdateResponse::Meta::Credits, nil]
        optional :_credits, -> { Onlyfans::Models::SmartLinkPostbackUpdateResponse::Meta::Credits }

        # @!method initialize(_cache: nil, _credits: nil)
        #   @param _cache [Onlyfans::Models::SmartLinkPostbackUpdateResponse::Meta::Cache]
        #   @param _credits [Onlyfans::Models::SmartLinkPostbackUpdateResponse::Meta::Credits]

        # @see Onlyfans::Models::SmartLinkPostbackUpdateResponse::Meta#_cache
        class Cache < Onlyfans::Internal::Type::BaseModel
          # @!attribute is_cached
          #
          #   @return [Boolean, nil]
          optional :is_cached, Onlyfans::Internal::Type::Boolean

          # @!attribute note
          #
          #   @return [String, nil]
          optional :note, String

          # @!method initialize(is_cached: nil, note: nil)
          #   @param is_cached [Boolean]
          #   @param note [String]
        end

        # @see Onlyfans::Models::SmartLinkPostbackUpdateResponse::Meta#_credits
        class Credits < Onlyfans::Internal::Type::BaseModel
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

      # @see Onlyfans::Models::SmartLinkPostbackUpdateResponse#data
      class Data < Onlyfans::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [Integer, nil]
        optional :id, Integer

        # @!attribute body
        #
        #   @return [String, nil]
        optional :body, String

        # @!attribute conversion_types
        #
        #   @return [Array<String>, nil]
        optional :conversion_types, Onlyfans::Internal::Type::ArrayOf[String]

        # @!attribute created_at
        #
        #   @return [String, nil]
        optional :created_at, String

        # @!attribute headers
        #
        #   @return [Array<Onlyfans::Models::SmartLinkPostbackUpdateResponse::Data::Header>, nil]
        optional :headers,
                 -> { Onlyfans::Internal::Type::ArrayOf[Onlyfans::Models::SmartLinkPostbackUpdateResponse::Data::Header] }

        # @!attribute http_method
        #
        #   @return [String, nil]
        optional :http_method, String

        # @!attribute latest_response
        #
        #   @return [String, nil]
        optional :latest_response, String, nil?: true

        # @!attribute smart_link_ids
        #
        #   @return [Array<String>, nil]
        optional :smart_link_ids, Onlyfans::Internal::Type::ArrayOf[String]

        # @!attribute smart_link_scope
        #
        #   @return [String, nil]
        optional :smart_link_scope, String

        # @!attribute smart_links
        #
        #   @return [Array<Onlyfans::Models::SmartLinkPostbackUpdateResponse::Data::SmartLink>, nil]
        optional :smart_links,
                 -> { Onlyfans::Internal::Type::ArrayOf[Onlyfans::Models::SmartLinkPostbackUpdateResponse::Data::SmartLink] }

        # @!attribute updated_at
        #
        #   @return [String, nil]
        optional :updated_at, String

        # @!attribute url
        #
        #   @return [String, nil]
        optional :url, String

        # @!method initialize(id: nil, body: nil, conversion_types: nil, created_at: nil, headers: nil, http_method: nil, latest_response: nil, smart_link_ids: nil, smart_link_scope: nil, smart_links: nil, updated_at: nil, url: nil)
        #   @param id [Integer]
        #   @param body [String]
        #   @param conversion_types [Array<String>]
        #   @param created_at [String]
        #   @param headers [Array<Onlyfans::Models::SmartLinkPostbackUpdateResponse::Data::Header>]
        #   @param http_method [String]
        #   @param latest_response [String, nil]
        #   @param smart_link_ids [Array<String>]
        #   @param smart_link_scope [String]
        #   @param smart_links [Array<Onlyfans::Models::SmartLinkPostbackUpdateResponse::Data::SmartLink>]
        #   @param updated_at [String]
        #   @param url [String]

        class Header < Onlyfans::Internal::Type::BaseModel
          # @!attribute name
          #
          #   @return [String, nil]
          optional :name, String

          # @!attribute value
          #
          #   @return [String, nil]
          optional :value, String

          # @!method initialize(name: nil, value: nil)
          #   @param name [String]
          #   @param value [String]
        end

        class SmartLink < Onlyfans::Internal::Type::BaseModel
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
