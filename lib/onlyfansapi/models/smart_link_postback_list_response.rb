# frozen_string_literal: true

module Onlyfansapi
  module Models
    # @see Onlyfansapi::Resources::SmartLinkPostbacks#list
    class SmartLinkPostbackListResponse < Onlyfansapi::Internal::Type::BaseModel
      # @!attribute _meta
      #
      #   @return [Onlyfansapi::Models::SmartLinkPostbackListResponse::Meta, nil]
      optional :_meta, -> { Onlyfansapi::Models::SmartLinkPostbackListResponse::Meta }

      # @!attribute data
      #
      #   @return [Array<Onlyfansapi::Models::SmartLinkPostbackListResponse::Data>, nil]
      optional :data,
               -> { Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Models::SmartLinkPostbackListResponse::Data] }

      # @!method initialize(_meta: nil, data: nil)
      #   @param _meta [Onlyfansapi::Models::SmartLinkPostbackListResponse::Meta]
      #   @param data [Array<Onlyfansapi::Models::SmartLinkPostbackListResponse::Data>]

      # @see Onlyfansapi::Models::SmartLinkPostbackListResponse#_meta
      class Meta < Onlyfansapi::Internal::Type::BaseModel
        # @!attribute _cache
        #
        #   @return [Onlyfansapi::Models::SmartLinkPostbackListResponse::Meta::Cache, nil]
        optional :_cache, -> { Onlyfansapi::Models::SmartLinkPostbackListResponse::Meta::Cache }

        # @!attribute _credits
        #
        #   @return [Onlyfansapi::Models::SmartLinkPostbackListResponse::Meta::Credits, nil]
        optional :_credits, -> { Onlyfansapi::Models::SmartLinkPostbackListResponse::Meta::Credits }

        # @!method initialize(_cache: nil, _credits: nil)
        #   @param _cache [Onlyfansapi::Models::SmartLinkPostbackListResponse::Meta::Cache]
        #   @param _credits [Onlyfansapi::Models::SmartLinkPostbackListResponse::Meta::Credits]

        # @see Onlyfansapi::Models::SmartLinkPostbackListResponse::Meta#_cache
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

        # @see Onlyfansapi::Models::SmartLinkPostbackListResponse::Meta#_credits
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
        #   @return [Onlyfansapi::Models::SmartLinkPostbackListResponse::Data::LatestResponse, nil]
        optional :latest_response, -> { Onlyfansapi::Models::SmartLinkPostbackListResponse::Data::LatestResponse }

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
        #   @return [Array<Onlyfansapi::Models::SmartLinkPostbackListResponse::Data::SmartLink>, nil]
        optional :smart_links,
                 -> { Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Models::SmartLinkPostbackListResponse::Data::SmartLink] }

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
        #   @param latest_response [Onlyfansapi::Models::SmartLinkPostbackListResponse::Data::LatestResponse]
        #   @param smart_link_ids [Array<String>]
        #   @param smart_link_scope [String]
        #   @param smart_links [Array<Onlyfansapi::Models::SmartLinkPostbackListResponse::Data::SmartLink>]
        #   @param updated_at [String]
        #   @param url [String]

        # @see Onlyfansapi::Models::SmartLinkPostbackListResponse::Data#latest_response
        class LatestResponse < Onlyfansapi::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [Integer, nil]
          optional :id, Integer

          # @!attribute conversion_type
          #
          #   @return [String, nil]
          optional :conversion_type, String

          # @!attribute created_at
          #
          #   @return [String, nil]
          optional :created_at, String

          # @!attribute error_message
          #
          #   @return [String, nil]
          optional :error_message, String, nil?: true

          # @!attribute error_type
          #
          #   @return [String, nil]
          optional :error_type, String, nil?: true

          # @!attribute postback_url
          #
          #   @return [String, nil]
          optional :postback_url, String

          # @!attribute status_code
          #
          #   @return [Integer, nil]
          optional :status_code, Integer

          # @!attribute succeeded
          #
          #   @return [Boolean, nil]
          optional :succeeded, Onlyfansapi::Internal::Type::Boolean

          # @!method initialize(id: nil, conversion_type: nil, created_at: nil, error_message: nil, error_type: nil, postback_url: nil, status_code: nil, succeeded: nil)
          #   @param id [Integer]
          #   @param conversion_type [String]
          #   @param created_at [String]
          #   @param error_message [String, nil]
          #   @param error_type [String, nil]
          #   @param postback_url [String]
          #   @param status_code [Integer]
          #   @param succeeded [Boolean]
        end

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
