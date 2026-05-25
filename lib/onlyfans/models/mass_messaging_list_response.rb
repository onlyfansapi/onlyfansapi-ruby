# frozen_string_literal: true

module Onlyfans
  module Models
    # @see Onlyfans::Resources::MassMessaging#list
    class MassMessagingListResponse < Onlyfans::Internal::Type::BaseModel
      # @!attribute _meta
      #
      #   @return [Onlyfans::Models::MassMessagingListResponse::Meta, nil]
      optional :_meta, -> { Onlyfans::Models::MassMessagingListResponse::Meta }

      # @!attribute data
      #
      #   @return [Array<Onlyfans::Models::MassMessagingListResponse::Data>, nil]
      optional :data,
               -> { Onlyfans::Internal::Type::ArrayOf[Onlyfans::Models::MassMessagingListResponse::Data] }

      # @!method initialize(_meta: nil, data: nil)
      #   @param _meta [Onlyfans::Models::MassMessagingListResponse::Meta]
      #   @param data [Array<Onlyfans::Models::MassMessagingListResponse::Data>]

      # @see Onlyfans::Models::MassMessagingListResponse#_meta
      class Meta < Onlyfans::Internal::Type::BaseModel
        # @!attribute _cache
        #
        #   @return [Onlyfans::Models::MassMessagingListResponse::Meta::Cache, nil]
        optional :_cache, -> { Onlyfans::Models::MassMessagingListResponse::Meta::Cache }

        # @!attribute _credits
        #
        #   @return [Onlyfans::Models::MassMessagingListResponse::Meta::Credits, nil]
        optional :_credits, -> { Onlyfans::Models::MassMessagingListResponse::Meta::Credits }

        # @!attribute _rate_limits
        #
        #   @return [Onlyfans::Models::MassMessagingListResponse::Meta::RateLimits, nil]
        optional :_rate_limits, -> { Onlyfans::Models::MassMessagingListResponse::Meta::RateLimits }

        # @!method initialize(_cache: nil, _credits: nil, _rate_limits: nil)
        #   @param _cache [Onlyfans::Models::MassMessagingListResponse::Meta::Cache]
        #   @param _credits [Onlyfans::Models::MassMessagingListResponse::Meta::Credits]
        #   @param _rate_limits [Onlyfans::Models::MassMessagingListResponse::Meta::RateLimits]

        # @see Onlyfans::Models::MassMessagingListResponse::Meta#_cache
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

        # @see Onlyfans::Models::MassMessagingListResponse::Meta#_credits
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

        # @see Onlyfans::Models::MassMessagingListResponse::Meta#_rate_limits
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

      class Data < Onlyfans::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [Integer, nil]
        optional :id, Integer

        # @!attribute can_unsend
        #
        #   @return [Boolean, nil]
        optional :can_unsend, Onlyfans::Internal::Type::Boolean, api_name: :canUnsend

        # @!attribute date
        #
        #   @return [String, nil]
        optional :date, String

        # @!attribute has_error
        #
        #   @return [Boolean, nil]
        optional :has_error, Onlyfans::Internal::Type::Boolean, api_name: :hasError

        # @!attribute is_canceled
        #
        #   @return [Boolean, nil]
        optional :is_canceled, Onlyfans::Internal::Type::Boolean, api_name: :isCanceled

        # @!attribute is_couple_people_media
        #
        #   @return [Boolean, nil]
        optional :is_couple_people_media, Onlyfans::Internal::Type::Boolean, api_name: :isCouplePeopleMedia

        # @!attribute is_done
        #
        #   @return [Boolean, nil]
        optional :is_done, Onlyfans::Internal::Type::Boolean, api_name: :isDone

        # @!attribute is_ready
        #
        #   @return [Boolean, nil]
        optional :is_ready, Onlyfans::Internal::Type::Boolean, api_name: :isReady

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
