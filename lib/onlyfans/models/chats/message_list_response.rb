# frozen_string_literal: true

module Onlyfans
  module Models
    module Chats
      # @see Onlyfans::Resources::Chats::Messages#list
      class MessageListResponse < Onlyfans::Internal::Type::BaseModel
        # @!attribute _meta
        #
        #   @return [Onlyfans::Models::Chats::MessageListResponse::Meta, nil]
        optional :_meta, -> { Onlyfans::Models::Chats::MessageListResponse::Meta }

        # @!attribute _pagination
        #
        #   @return [Onlyfans::Models::Chats::MessageListResponse::Pagination, nil]
        optional :_pagination, -> { Onlyfans::Models::Chats::MessageListResponse::Pagination }

        # @!attribute data
        #
        #   @return [Array<Onlyfans::Models::Chats::MessageListResponse::Data>, nil]
        optional :data,
                 -> { Onlyfans::Internal::Type::ArrayOf[Onlyfans::Models::Chats::MessageListResponse::Data] }

        # @!method initialize(_meta: nil, _pagination: nil, data: nil)
        #   @param _meta [Onlyfans::Models::Chats::MessageListResponse::Meta]
        #   @param _pagination [Onlyfans::Models::Chats::MessageListResponse::Pagination]
        #   @param data [Array<Onlyfans::Models::Chats::MessageListResponse::Data>]

        # @see Onlyfans::Models::Chats::MessageListResponse#_meta
        class Meta < Onlyfans::Internal::Type::BaseModel
          # @!attribute _cache
          #
          #   @return [Onlyfans::Models::Chats::MessageListResponse::Meta::Cache, nil]
          optional :_cache, -> { Onlyfans::Models::Chats::MessageListResponse::Meta::Cache }

          # @!attribute _credits
          #
          #   @return [Onlyfans::Models::Chats::MessageListResponse::Meta::Credits, nil]
          optional :_credits, -> { Onlyfans::Models::Chats::MessageListResponse::Meta::Credits }

          # @!attribute _rate_limits
          #
          #   @return [Onlyfans::Models::Chats::MessageListResponse::Meta::RateLimits, nil]
          optional :_rate_limits, -> { Onlyfans::Models::Chats::MessageListResponse::Meta::RateLimits }

          # @!method initialize(_cache: nil, _credits: nil, _rate_limits: nil)
          #   @param _cache [Onlyfans::Models::Chats::MessageListResponse::Meta::Cache]
          #   @param _credits [Onlyfans::Models::Chats::MessageListResponse::Meta::Credits]
          #   @param _rate_limits [Onlyfans::Models::Chats::MessageListResponse::Meta::RateLimits]

          # @see Onlyfans::Models::Chats::MessageListResponse::Meta#_cache
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

          # @see Onlyfans::Models::Chats::MessageListResponse::Meta#_credits
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

          # @see Onlyfans::Models::Chats::MessageListResponse::Meta#_rate_limits
          class RateLimits < Onlyfans::Internal::Type::BaseModel
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

        # @see Onlyfans::Models::Chats::MessageListResponse#_pagination
        class Pagination < Onlyfans::Internal::Type::BaseModel
          # @!attribute next_page
          #
          #   @return [String, nil]
          optional :next_page, String

          # @!method initialize(next_page: nil)
          #   @param next_page [String]
        end

        class Data < Onlyfans::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [Integer, nil]
          optional :id, Integer

          # @!attribute can_be_pinned
          #
          #   @return [Boolean, nil]
          optional :can_be_pinned, Onlyfans::Internal::Type::Boolean, api_name: :canBePinned

          # @!attribute cancel_seconds
          #
          #   @return [Integer, nil]
          optional :cancel_seconds, Integer, api_name: :cancelSeconds

          # @!attribute can_purchase
          #
          #   @return [Boolean, nil]
          optional :can_purchase, Onlyfans::Internal::Type::Boolean, api_name: :canPurchase

          # @!attribute can_purchase_reason
          #
          #   @return [String, nil]
          optional :can_purchase_reason, String, api_name: :canPurchaseReason

          # @!attribute can_report
          #
          #   @return [Boolean, nil]
          optional :can_report, Onlyfans::Internal::Type::Boolean, api_name: :canReport

          # @!attribute changed_at
          #
          #   @return [String, nil]
          optional :changed_at, String, api_name: :changedAt

          # @!attribute created_at
          #
          #   @return [String, nil]
          optional :created_at, String, api_name: :createdAt

          # @!attribute from_user
          #
          #   @return [Onlyfans::Models::Chats::MessageListResponse::Data::FromUser, nil]
          optional :from_user,
                   -> { Onlyfans::Models::Chats::MessageListResponse::Data::FromUser },
                   api_name: :fromUser

          # @!attribute giphy_id
          #
          #   @return [String, nil]
          optional :giphy_id, String, api_name: :giphyId, nil?: true

          # @!attribute is_couple_people_media
          #
          #   @return [Boolean, nil]
          optional :is_couple_people_media, Onlyfans::Internal::Type::Boolean, api_name: :isCouplePeopleMedia

          # @!attribute is_free
          #
          #   @return [Boolean, nil]
          optional :is_free, Onlyfans::Internal::Type::Boolean, api_name: :isFree

          # @!attribute is_from_queue
          #
          #   @return [Boolean, nil]
          optional :is_from_queue, Onlyfans::Internal::Type::Boolean, api_name: :isFromQueue

          # @!attribute is_liked
          #
          #   @return [Boolean, nil]
          optional :is_liked, Onlyfans::Internal::Type::Boolean, api_name: :isLiked

          # @!attribute is_markdown_disabled
          #
          #   @return [Boolean, nil]
          optional :is_markdown_disabled, Onlyfans::Internal::Type::Boolean, api_name: :isMarkdownDisabled

          # @!attribute is_media_ready
          #
          #   @return [Boolean, nil]
          optional :is_media_ready, Onlyfans::Internal::Type::Boolean, api_name: :isMediaReady

          # @!attribute is_new
          #
          #   @return [Boolean, nil]
          optional :is_new, Onlyfans::Internal::Type::Boolean, api_name: :isNew

          # @!attribute is_opened
          #
          #   @return [Boolean, nil]
          optional :is_opened, Onlyfans::Internal::Type::Boolean, api_name: :isOpened

          # @!attribute is_pinned
          #
          #   @return [Boolean, nil]
          optional :is_pinned, Onlyfans::Internal::Type::Boolean, api_name: :isPinned

          # @!attribute is_reported_by_me
          #
          #   @return [Boolean, nil]
          optional :is_reported_by_me, Onlyfans::Internal::Type::Boolean, api_name: :isReportedByMe

          # @!attribute is_sent_by_me
          #
          #   @return [Boolean, nil]
          optional :is_sent_by_me, Onlyfans::Internal::Type::Boolean, api_name: :isSentByMe

          # @!attribute is_tip
          #
          #   @return [Boolean, nil]
          optional :is_tip, Onlyfans::Internal::Type::Boolean, api_name: :isTip

          # @!attribute locked_text
          #
          #   @return [Boolean, nil]
          optional :locked_text, Onlyfans::Internal::Type::Boolean, api_name: :lockedText

          # @!attribute media
          #
          #   @return [Array<Object>, nil]
          optional :media, Onlyfans::Internal::Type::ArrayOf[Onlyfans::Internal::Type::Unknown]

          # @!attribute media_count
          #
          #   @return [Integer, nil]
          optional :media_count, Integer, api_name: :mediaCount

          # @!attribute previews
          #
          #   @return [Array<Object>, nil]
          optional :previews, Onlyfans::Internal::Type::ArrayOf[Onlyfans::Internal::Type::Unknown]

          # @!attribute price
          #
          #   @return [Integer, nil]
          optional :price, Integer

          # @!attribute queue_id
          #
          #   @return [Integer, nil]
          optional :queue_id, Integer, api_name: :queueId

          # @!attribute release_forms
          #
          #   @return [Array<Object>, nil]
          optional :release_forms,
                   Onlyfans::Internal::Type::ArrayOf[Onlyfans::Internal::Type::Unknown],
                   api_name: :releaseForms

          # @!attribute response_type
          #
          #   @return [String, nil]
          optional :response_type, String, api_name: :responseType

          # @!attribute text
          #
          #   @return [String, nil]
          optional :text, String

          # @!method initialize(id: nil, can_be_pinned: nil, cancel_seconds: nil, can_purchase: nil, can_purchase_reason: nil, can_report: nil, changed_at: nil, created_at: nil, from_user: nil, giphy_id: nil, is_couple_people_media: nil, is_free: nil, is_from_queue: nil, is_liked: nil, is_markdown_disabled: nil, is_media_ready: nil, is_new: nil, is_opened: nil, is_pinned: nil, is_reported_by_me: nil, is_sent_by_me: nil, is_tip: nil, locked_text: nil, media: nil, media_count: nil, previews: nil, price: nil, queue_id: nil, release_forms: nil, response_type: nil, text: nil)
          #   @param id [Integer]
          #   @param can_be_pinned [Boolean]
          #   @param cancel_seconds [Integer]
          #   @param can_purchase [Boolean]
          #   @param can_purchase_reason [String]
          #   @param can_report [Boolean]
          #   @param changed_at [String]
          #   @param created_at [String]
          #   @param from_user [Onlyfans::Models::Chats::MessageListResponse::Data::FromUser]
          #   @param giphy_id [String, nil]
          #   @param is_couple_people_media [Boolean]
          #   @param is_free [Boolean]
          #   @param is_from_queue [Boolean]
          #   @param is_liked [Boolean]
          #   @param is_markdown_disabled [Boolean]
          #   @param is_media_ready [Boolean]
          #   @param is_new [Boolean]
          #   @param is_opened [Boolean]
          #   @param is_pinned [Boolean]
          #   @param is_reported_by_me [Boolean]
          #   @param is_sent_by_me [Boolean]
          #   @param is_tip [Boolean]
          #   @param locked_text [Boolean]
          #   @param media [Array<Object>]
          #   @param media_count [Integer]
          #   @param previews [Array<Object>]
          #   @param price [Integer]
          #   @param queue_id [Integer]
          #   @param release_forms [Array<Object>]
          #   @param response_type [String]
          #   @param text [String]

          # @see Onlyfans::Models::Chats::MessageListResponse::Data#from_user
          class FromUser < Onlyfans::Internal::Type::BaseModel
            # @!attribute id
            #
            #   @return [Integer, nil]
            optional :id, Integer

            # @!attribute _view
            #
            #   @return [String, nil]
            optional :_view, String

            # @!method initialize(id: nil, _view: nil)
            #   @param id [Integer]
            #   @param _view [String]
          end
        end
      end
    end
  end
end
