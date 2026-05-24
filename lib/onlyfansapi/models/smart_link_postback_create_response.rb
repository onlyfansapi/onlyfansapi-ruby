# frozen_string_literal: true

module Onlyfansapi
  module Models
    # @see Onlyfansapi::Resources::SmartLinkPostbacks#create
    class SmartLinkPostbackCreateResponse < Onlyfansapi::Internal::Type::BaseModel
      # @!attribute _meta
      #
      #   @return [Onlyfansapi::Models::SmartLinkPostbackCreateResponse::Meta, nil]
      optional :_meta, -> { Onlyfansapi::Models::SmartLinkPostbackCreateResponse::Meta }

      # @!attribute data
      #
      #   @return [Onlyfansapi::Models::SmartLinkPostbackCreateResponse::Data, nil]
      optional :data, -> { Onlyfansapi::Models::SmartLinkPostbackCreateResponse::Data }

      # @!method initialize(_meta: nil, data: nil)
      #   @param _meta [Onlyfansapi::Models::SmartLinkPostbackCreateResponse::Meta]
      #   @param data [Onlyfansapi::Models::SmartLinkPostbackCreateResponse::Data]

      # @see Onlyfansapi::Models::SmartLinkPostbackCreateResponse#_meta
      class Meta < Onlyfansapi::Internal::Type::BaseModel
        # @!attribute _cache
        #
        #   @return [Onlyfansapi::Models::SmartLinkPostbackCreateResponse::Meta::Cache, nil]
        optional :_cache, -> { Onlyfansapi::Models::SmartLinkPostbackCreateResponse::Meta::Cache }

        # @!attribute _credits
        #
        #   @return [Onlyfansapi::Models::SmartLinkPostbackCreateResponse::Meta::Credits, nil]
        optional :_credits, -> { Onlyfansapi::Models::SmartLinkPostbackCreateResponse::Meta::Credits }

        # @!method initialize(_cache: nil, _credits: nil)
        #   @param _cache [Onlyfansapi::Models::SmartLinkPostbackCreateResponse::Meta::Cache]
        #   @param _credits [Onlyfansapi::Models::SmartLinkPostbackCreateResponse::Meta::Credits]

        # @see Onlyfansapi::Models::SmartLinkPostbackCreateResponse::Meta#_cache
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

        # @see Onlyfansapi::Models::SmartLinkPostbackCreateResponse::Meta#_credits
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

      # @see Onlyfansapi::Models::SmartLinkPostbackCreateResponse#data
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
        #   @return [Array<Object>, nil]
        optional :smart_link_ids, Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Internal::Type::Unknown]

        # @!attribute smart_link_scope
        #
        #   @return [String, nil]
        optional :smart_link_scope, String

        # @!attribute smart_links
        #
        #   @return [Array<Object>, nil]
        optional :smart_links, Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Internal::Type::Unknown]

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
        #   @param smart_link_ids [Array<Object>]
        #   @param smart_link_scope [String]
        #   @param smart_links [Array<Object>]
        #   @param updated_at [String]
        #   @param url [String]
      end
    end
  end
end
