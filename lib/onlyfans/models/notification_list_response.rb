# frozen_string_literal: true

module Onlyfans
  module Models
    # @see Onlyfans::Resources::Notifications#list
    class NotificationListResponse < Onlyfans::Internal::Type::BaseModel
      # @!attribute _meta
      #
      #   @return [Onlyfans::Models::NotificationListResponse::Meta, nil]
      optional :_meta, -> { Onlyfans::Models::NotificationListResponse::Meta }

      # @!attribute data
      #
      #   @return [Onlyfans::Models::NotificationListResponse::Data, nil]
      optional :data, -> { Onlyfans::Models::NotificationListResponse::Data }

      # @!method initialize(_meta: nil, data: nil)
      #   @param _meta [Onlyfans::Models::NotificationListResponse::Meta]
      #   @param data [Onlyfans::Models::NotificationListResponse::Data]

      # @see Onlyfans::Models::NotificationListResponse#_meta
      class Meta < Onlyfans::Internal::Type::BaseModel
        # @!attribute _cache
        #
        #   @return [Onlyfans::Models::NotificationListResponse::Meta::Cache, nil]
        optional :_cache, -> { Onlyfans::Models::NotificationListResponse::Meta::Cache }

        # @!attribute _credits
        #
        #   @return [Onlyfans::Models::NotificationListResponse::Meta::Credits, nil]
        optional :_credits, -> { Onlyfans::Models::NotificationListResponse::Meta::Credits }

        # @!attribute _rate_limits
        #
        #   @return [Onlyfans::Models::NotificationListResponse::Meta::RateLimits, nil]
        optional :_rate_limits, -> { Onlyfans::Models::NotificationListResponse::Meta::RateLimits }

        # @!method initialize(_cache: nil, _credits: nil, _rate_limits: nil)
        #   @param _cache [Onlyfans::Models::NotificationListResponse::Meta::Cache]
        #   @param _credits [Onlyfans::Models::NotificationListResponse::Meta::Credits]
        #   @param _rate_limits [Onlyfans::Models::NotificationListResponse::Meta::RateLimits]

        # @see Onlyfans::Models::NotificationListResponse::Meta#_cache
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

        # @see Onlyfans::Models::NotificationListResponse::Meta#_credits
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

        # @see Onlyfans::Models::NotificationListResponse::Meta#_rate_limits
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

      # @see Onlyfans::Models::NotificationListResponse#data
      class Data < Onlyfans::Internal::Type::BaseModel
        # @!attribute has_more
        #
        #   @return [Boolean, nil]
        optional :has_more, Onlyfans::Internal::Type::Boolean, api_name: :hasMore

        # @!attribute list
        #
        #   @return [Array<Onlyfans::Models::NotificationListResponse::Data::List>, nil]
        optional :list,
                 -> { Onlyfans::Internal::Type::ArrayOf[Onlyfans::Models::NotificationListResponse::Data::List] }

        # @!method initialize(has_more: nil, list: nil)
        #   @param has_more [Boolean]
        #   @param list [Array<Onlyfans::Models::NotificationListResponse::Data::List>]

        class List < Onlyfans::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [Integer, nil]
          optional :id, Integer

          # @!attribute can_go_to_profile
          #
          #   @return [Boolean, nil]
          optional :can_go_to_profile, Onlyfans::Internal::Type::Boolean, api_name: :canGoToProfile

          # @!attribute created_at
          #
          #   @return [String, nil]
          optional :created_at, String, api_name: :createdAt

          # @!attribute is_read
          #
          #   @return [Boolean, nil]
          optional :is_read, Onlyfans::Internal::Type::Boolean, api_name: :isRead

          # @!attribute replace_pairs
          #
          #   @return [Onlyfans::Models::NotificationListResponse::Data::List::ReplacePairs, nil]
          optional :replace_pairs,
                   -> { Onlyfans::Models::NotificationListResponse::Data::List::ReplacePairs },
                   api_name: :replacePairs

          # @!attribute sub_type
          #
          #   @return [String, nil]
          optional :sub_type, String, api_name: :subType

          # @!attribute text
          #
          #   @return [String, nil]
          optional :text, String

          # @!attribute type
          #
          #   @return [String, nil]
          optional :type, String

          # @!attribute user
          #
          #   @return [Onlyfans::Models::NotificationListResponse::Data::List::User, nil]
          optional :user, -> { Onlyfans::Models::NotificationListResponse::Data::List::User }

          # @!method initialize(id: nil, can_go_to_profile: nil, created_at: nil, is_read: nil, replace_pairs: nil, sub_type: nil, text: nil, type: nil, user: nil)
          #   @param id [Integer]
          #   @param can_go_to_profile [Boolean]
          #   @param created_at [String]
          #   @param is_read [Boolean]
          #   @param replace_pairs [Onlyfans::Models::NotificationListResponse::Data::List::ReplacePairs]
          #   @param sub_type [String]
          #   @param text [String]
          #   @param type [String]
          #   @param user [Onlyfans::Models::NotificationListResponse::Data::List::User]

          # @see Onlyfans::Models::NotificationListResponse::Data::List#replace_pairs
          class ReplacePairs < Onlyfans::Internal::Type::BaseModel
            # @!attribute price
            #
            #   @return [String, nil]
            optional :price, String, api_name: :"{PRICE}"

            # @!attribute subscriber_link
            #
            #   @return [String, nil]
            optional :subscriber_link, String, api_name: :"{SUBSCRIBER_LINK}"

            # @!method initialize(price: nil, subscriber_link: nil)
            #   @param price [String]
            #   @param subscriber_link [String]
          end

          # @see Onlyfans::Models::NotificationListResponse::Data::List#user
          class User < Onlyfans::Internal::Type::BaseModel
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
