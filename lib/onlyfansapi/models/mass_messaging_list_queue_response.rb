# frozen_string_literal: true

module Onlyfansapi
  module Models
    # @see Onlyfansapi::Resources::MassMessaging#list_queue
    class MassMessagingListQueueResponse < Onlyfansapi::Internal::Type::BaseModel
      # @!attribute _meta
      #
      #   @return [Onlyfansapi::Models::MassMessagingListQueueResponse::Meta, nil]
      optional :_meta, -> { Onlyfansapi::Models::MassMessagingListQueueResponse::Meta }

      # @!attribute data
      #
      #   @return [Array<Onlyfansapi::Models::MassMessagingListQueueResponse::Data>, nil]
      optional :data,
               -> { Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Models::MassMessagingListQueueResponse::Data] }

      # @!method initialize(_meta: nil, data: nil)
      #   @param _meta [Onlyfansapi::Models::MassMessagingListQueueResponse::Meta]
      #   @param data [Array<Onlyfansapi::Models::MassMessagingListQueueResponse::Data>]

      # @see Onlyfansapi::Models::MassMessagingListQueueResponse#_meta
      class Meta < Onlyfansapi::Internal::Type::BaseModel
        # @!attribute _cache
        #
        #   @return [Onlyfansapi::Models::MassMessagingListQueueResponse::Meta::Cache, nil]
        optional :_cache, -> { Onlyfansapi::Models::MassMessagingListQueueResponse::Meta::Cache }

        # @!attribute _credits
        #
        #   @return [Onlyfansapi::Models::MassMessagingListQueueResponse::Meta::Credits, nil]
        optional :_credits, -> { Onlyfansapi::Models::MassMessagingListQueueResponse::Meta::Credits }

        # @!attribute _rate_limits
        #
        #   @return [Onlyfansapi::Models::MassMessagingListQueueResponse::Meta::RateLimits, nil]
        optional :_rate_limits, -> { Onlyfansapi::Models::MassMessagingListQueueResponse::Meta::RateLimits }

        # @!method initialize(_cache: nil, _credits: nil, _rate_limits: nil)
        #   @param _cache [Onlyfansapi::Models::MassMessagingListQueueResponse::Meta::Cache]
        #   @param _credits [Onlyfansapi::Models::MassMessagingListQueueResponse::Meta::Credits]
        #   @param _rate_limits [Onlyfansapi::Models::MassMessagingListQueueResponse::Meta::RateLimits]

        # @see Onlyfansapi::Models::MassMessagingListQueueResponse::Meta#_cache
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

        # @see Onlyfansapi::Models::MassMessagingListQueueResponse::Meta#_credits
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

        # @see Onlyfansapi::Models::MassMessagingListQueueResponse::Meta#_rate_limits
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

      class Data < Onlyfansapi::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [Integer, nil]
        optional :id, Integer

        # @!attribute can_unsend
        #
        #   @return [Boolean, nil]
        optional :can_unsend, Onlyfansapi::Internal::Type::Boolean, api_name: :canUnsend

        # @!attribute date
        #
        #   @return [String, nil]
        optional :date, String

        # @!attribute has_error
        #
        #   @return [Boolean, nil]
        optional :has_error, Onlyfansapi::Internal::Type::Boolean, api_name: :hasError

        # @!attribute is_canceled
        #
        #   @return [Boolean, nil]
        optional :is_canceled, Onlyfansapi::Internal::Type::Boolean, api_name: :isCanceled

        # @!attribute is_couple_people_media
        #
        #   @return [Boolean, nil]
        optional :is_couple_people_media, Onlyfansapi::Internal::Type::Boolean, api_name: :isCouplePeopleMedia

        # @!attribute is_done
        #
        #   @return [Boolean, nil]
        optional :is_done, Onlyfansapi::Internal::Type::Boolean, api_name: :isDone

        # @!attribute is_ready
        #
        #   @return [Boolean, nil]
        optional :is_ready, Onlyfansapi::Internal::Type::Boolean, api_name: :isReady

        # @!attribute pending
        #
        #   @return [Integer, nil]
        optional :pending, Integer

        # @!attribute total
        #
        #   @return [Integer, nil]
        optional :total, Integer

        # @!attribute unsend_seconds
        #
        #   @return [Integer, nil]
        optional :unsend_seconds, Integer, api_name: :unsendSeconds

        # @!method initialize(id: nil, can_unsend: nil, date: nil, has_error: nil, is_canceled: nil, is_couple_people_media: nil, is_done: nil, is_ready: nil, pending: nil, total: nil, unsend_seconds: nil)
        #   @param id [Integer]
        #   @param can_unsend [Boolean]
        #   @param date [String]
        #   @param has_error [Boolean]
        #   @param is_canceled [Boolean]
        #   @param is_couple_people_media [Boolean]
        #   @param is_done [Boolean]
        #   @param is_ready [Boolean]
        #   @param pending [Integer]
        #   @param total [Integer]
        #   @param unsend_seconds [Integer]
      end
    end
  end
end
