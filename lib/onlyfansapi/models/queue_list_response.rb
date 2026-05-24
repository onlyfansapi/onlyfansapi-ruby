# frozen_string_literal: true

module Onlyfansapi
  module Models
    # @see Onlyfansapi::Resources::Queue#list
    class QueueListResponse < Onlyfansapi::Internal::Type::BaseModel
      # @!attribute _meta
      #
      #   @return [Onlyfansapi::Models::QueueListResponse::Meta, nil]
      optional :_meta, -> { Onlyfansapi::Models::QueueListResponse::Meta }

      # @!attribute data
      #
      #   @return [Onlyfansapi::Models::QueueListResponse::Data, nil]
      optional :data, -> { Onlyfansapi::Models::QueueListResponse::Data }

      # @!method initialize(_meta: nil, data: nil)
      #   @param _meta [Onlyfansapi::Models::QueueListResponse::Meta]
      #   @param data [Onlyfansapi::Models::QueueListResponse::Data]

      # @see Onlyfansapi::Models::QueueListResponse#_meta
      class Meta < Onlyfansapi::Internal::Type::BaseModel
        # @!attribute _cache
        #
        #   @return [Onlyfansapi::Models::QueueListResponse::Meta::Cache, nil]
        optional :_cache, -> { Onlyfansapi::Models::QueueListResponse::Meta::Cache }

        # @!attribute _credits
        #
        #   @return [Onlyfansapi::Models::QueueListResponse::Meta::Credits, nil]
        optional :_credits, -> { Onlyfansapi::Models::QueueListResponse::Meta::Credits }

        # @!attribute _rate_limits
        #
        #   @return [Onlyfansapi::Models::QueueListResponse::Meta::RateLimits, nil]
        optional :_rate_limits, -> { Onlyfansapi::Models::QueueListResponse::Meta::RateLimits }

        # @!method initialize(_cache: nil, _credits: nil, _rate_limits: nil)
        #   @param _cache [Onlyfansapi::Models::QueueListResponse::Meta::Cache]
        #   @param _credits [Onlyfansapi::Models::QueueListResponse::Meta::Credits]
        #   @param _rate_limits [Onlyfansapi::Models::QueueListResponse::Meta::RateLimits]

        # @see Onlyfansapi::Models::QueueListResponse::Meta#_cache
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

        # @see Onlyfansapi::Models::QueueListResponse::Meta#_credits
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

        # @see Onlyfansapi::Models::QueueListResponse::Meta#_rate_limits
        class RateLimits < Onlyfansapi::Internal::Type::BaseModel
          # @!attribute limit_day
          #
          #   @return [Integer, nil]
          optional :limit_day, Integer

          # @!attribute limit_minute
          #
          #   @return [Integer, nil]
          optional :limit_minute, Integer

          # @!attribute remaining_day
          #
          #   @return [Integer, nil]
          optional :remaining_day, Integer

          # @!attribute remaining_minute
          #
          #   @return [Integer, nil]
          optional :remaining_minute, Integer

          # @!method initialize(limit_day: nil, limit_minute: nil, remaining_day: nil, remaining_minute: nil)
          #   @param limit_day [Integer]
          #   @param limit_minute [Integer]
          #   @param remaining_day [Integer]
          #   @param remaining_minute [Integer]
        end
      end

      # @see Onlyfansapi::Models::QueueListResponse#data
      class Data < Onlyfansapi::Internal::Type::BaseModel
        # @!attribute list
        #
        #   @return [Array<Onlyfansapi::Models::QueueListResponse::Data::List>, nil]
        optional :list,
                 -> { Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Models::QueueListResponse::Data::List] }

        # @!attribute sync_in_process
        #
        #   @return [Boolean, nil]
        optional :sync_in_process, Onlyfansapi::Internal::Type::Boolean, api_name: :syncInProcess

        # @!method initialize(list: nil, sync_in_process: nil)
        #   @param list [Array<Onlyfansapi::Models::QueueListResponse::Data::List>]
        #   @param sync_in_process [Boolean]

        class List < Onlyfansapi::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [Integer, nil]
          optional :id, Integer

          # @!attribute created_date_time
          #
          #   @return [String, nil]
          optional :created_date_time, String, api_name: :createdDateTime

          # @!attribute entity
          #
          #   @return [Onlyfansapi::Models::QueueListResponse::Data::List::Entity, nil]
          optional :entity, -> { Onlyfansapi::Models::QueueListResponse::Data::List::Entity }

          # @!attribute publish_date_time
          #
          #   @return [String, nil]
          optional :publish_date_time, String, api_name: :publishDateTime

          # @!attribute type
          #
          #   @return [String, nil]
          optional :type, String

          # @!method initialize(id: nil, created_date_time: nil, entity: nil, publish_date_time: nil, type: nil)
          #   @param id [Integer]
          #   @param created_date_time [String]
          #   @param entity [Onlyfansapi::Models::QueueListResponse::Data::List::Entity]
          #   @param publish_date_time [String]
          #   @param type [String]

          # @see Onlyfansapi::Models::QueueListResponse::Data::List#entity
          class Entity < Onlyfansapi::Internal::Type::BaseModel
            # @!attribute id
            #
            #   @return [Integer, nil]
            optional :id, Integer

            # @!attribute cancel_seconds
            #
            #   @return [Integer, nil]
            optional :cancel_seconds, Integer, api_name: :cancelSeconds

            # @!attribute can_purchase
            #
            #   @return [Boolean, nil]
            optional :can_purchase, Onlyfansapi::Internal::Type::Boolean, api_name: :canPurchase

            # @!attribute can_unsend_queue
            #
            #   @return [Boolean, nil]
            optional :can_unsend_queue, Onlyfansapi::Internal::Type::Boolean, api_name: :canUnsendQueue

            # @!attribute changed_at
            #
            #   @return [String, nil]
            optional :changed_at, String, api_name: :changedAt

            # @!attribute created_at
            #
            #   @return [String, nil]
            optional :created_at, String, api_name: :createdAt

            # @!attribute giphy_id
            #
            #   @return [String, nil]
            optional :giphy_id, String, api_name: :giphyId

            # @!attribute is_free
            #
            #   @return [Boolean, nil]
            optional :is_free, Onlyfansapi::Internal::Type::Boolean, api_name: :isFree

            # @!attribute is_from_queue
            #
            #   @return [Boolean, nil]
            optional :is_from_queue, Onlyfansapi::Internal::Type::Boolean, api_name: :isFromQueue

            # @!attribute is_liked
            #
            #   @return [Boolean, nil]
            optional :is_liked, Onlyfansapi::Internal::Type::Boolean, api_name: :isLiked

            # @!attribute is_markdown_disabled
            #
            #   @return [Boolean, nil]
            optional :is_markdown_disabled,
                     Onlyfansapi::Internal::Type::Boolean,
                     api_name: :isMarkdownDisabled

            # @!attribute is_media_ready
            #
            #   @return [Boolean, nil]
            optional :is_media_ready, Onlyfansapi::Internal::Type::Boolean, api_name: :isMediaReady

            # @!attribute is_new
            #
            #   @return [Boolean, nil]
            optional :is_new, Onlyfansapi::Internal::Type::Boolean, api_name: :isNew

            # @!attribute is_opened
            #
            #   @return [Boolean, nil]
            optional :is_opened, Onlyfansapi::Internal::Type::Boolean, api_name: :isOpened

            # @!attribute is_tip
            #
            #   @return [Boolean, nil]
            optional :is_tip, Onlyfansapi::Internal::Type::Boolean, api_name: :isTip

            # @!attribute locked_text
            #
            #   @return [Boolean, nil]
            optional :locked_text, Onlyfansapi::Internal::Type::Boolean, api_name: :lockedText

            # @!attribute media
            #
            #   @return [Array<Object>, nil]
            optional :media, Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Internal::Type::Unknown]

            # @!attribute media_count
            #
            #   @return [Integer, nil]
            optional :media_count, Integer, api_name: :mediaCount

            # @!attribute previews
            #
            #   @return [Array<Object>, nil]
            optional :previews, Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Internal::Type::Unknown]

            # @!attribute price
            #
            #   @return [Integer, nil]
            optional :price, Integer

            # @!attribute queue_id
            #
            #   @return [Integer, nil]
            optional :queue_id, Integer, api_name: :queueId

            # @!attribute raw_text
            #
            #   @return [String, nil]
            optional :raw_text, String, api_name: :rawText

            # @!attribute release_forms
            #
            #   @return [Array<Object>, nil]
            optional :release_forms,
                     Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Internal::Type::Unknown],
                     api_name: :releaseForms

            # @!attribute response_type
            #
            #   @return [String, nil]
            optional :response_type, String, api_name: :responseType

            # @!attribute scheduled_at
            #
            #   @return [String, nil]
            optional :scheduled_at, String, api_name: :scheduledAt

            # @!attribute sent_rules_extra
            #
            #   @return [String, nil]
            optional :sent_rules_extra, String, api_name: :sentRulesExtra

            # @!attribute sent_rules_type
            #
            #   @return [String, nil]
            optional :sent_rules_type, String, api_name: :sentRulesType

            # @!attribute text
            #
            #   @return [String, nil]
            optional :text, String

            # @!attribute unsend_seconds_queue
            #
            #   @return [Integer, nil]
            optional :unsend_seconds_queue, Integer, api_name: :unsendSecondsQueue

            # @!attribute user_lists
            #
            #   @return [Array<String>, nil]
            optional :user_lists, Onlyfansapi::Internal::Type::ArrayOf[String], api_name: :userLists

            # @!method initialize(id: nil, cancel_seconds: nil, can_purchase: nil, can_unsend_queue: nil, changed_at: nil, created_at: nil, giphy_id: nil, is_free: nil, is_from_queue: nil, is_liked: nil, is_markdown_disabled: nil, is_media_ready: nil, is_new: nil, is_opened: nil, is_tip: nil, locked_text: nil, media: nil, media_count: nil, previews: nil, price: nil, queue_id: nil, raw_text: nil, release_forms: nil, response_type: nil, scheduled_at: nil, sent_rules_extra: nil, sent_rules_type: nil, text: nil, unsend_seconds_queue: nil, user_lists: nil)
            #   @param id [Integer]
            #   @param cancel_seconds [Integer]
            #   @param can_purchase [Boolean]
            #   @param can_unsend_queue [Boolean]
            #   @param changed_at [String]
            #   @param created_at [String]
            #   @param giphy_id [String]
            #   @param is_free [Boolean]
            #   @param is_from_queue [Boolean]
            #   @param is_liked [Boolean]
            #   @param is_markdown_disabled [Boolean]
            #   @param is_media_ready [Boolean]
            #   @param is_new [Boolean]
            #   @param is_opened [Boolean]
            #   @param is_tip [Boolean]
            #   @param locked_text [Boolean]
            #   @param media [Array<Object>]
            #   @param media_count [Integer]
            #   @param previews [Array<Object>]
            #   @param price [Integer]
            #   @param queue_id [Integer]
            #   @param raw_text [String]
            #   @param release_forms [Array<Object>]
            #   @param response_type [String]
            #   @param scheduled_at [String]
            #   @param sent_rules_extra [String]
            #   @param sent_rules_type [String]
            #   @param text [String]
            #   @param unsend_seconds_queue [Integer]
            #   @param user_lists [Array<String>]
          end
        end
      end
    end
  end
end
