# frozen_string_literal: true

module Onlyfansapi
  module Models
    # @see Onlyfansapi::Resources::UserLists#list
    class UserListListResponse < Onlyfansapi::Internal::Type::BaseModel
      # @!attribute _meta
      #
      #   @return [Onlyfansapi::Models::UserListListResponse::Meta, nil]
      optional :_meta, -> { Onlyfansapi::Models::UserListListResponse::Meta }

      # @!attribute data
      #
      #   @return [Array<Onlyfansapi::Models::UserListListResponse::Data>, nil]
      optional :data,
               -> { Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Models::UserListListResponse::Data] }

      # @!method initialize(_meta: nil, data: nil)
      #   @param _meta [Onlyfansapi::Models::UserListListResponse::Meta]
      #   @param data [Array<Onlyfansapi::Models::UserListListResponse::Data>]

      # @see Onlyfansapi::Models::UserListListResponse#_meta
      class Meta < Onlyfansapi::Internal::Type::BaseModel
        # @!attribute _cache
        #
        #   @return [Onlyfansapi::Models::UserListListResponse::Meta::Cache, nil]
        optional :_cache, -> { Onlyfansapi::Models::UserListListResponse::Meta::Cache }

        # @!attribute _credits
        #
        #   @return [Onlyfansapi::Models::UserListListResponse::Meta::Credits, nil]
        optional :_credits, -> { Onlyfansapi::Models::UserListListResponse::Meta::Credits }

        # @!attribute _rate_limits
        #
        #   @return [Onlyfansapi::Models::UserListListResponse::Meta::RateLimits, nil]
        optional :_rate_limits, -> { Onlyfansapi::Models::UserListListResponse::Meta::RateLimits }

        # @!method initialize(_cache: nil, _credits: nil, _rate_limits: nil)
        #   @param _cache [Onlyfansapi::Models::UserListListResponse::Meta::Cache]
        #   @param _credits [Onlyfansapi::Models::UserListListResponse::Meta::Credits]
        #   @param _rate_limits [Onlyfansapi::Models::UserListListResponse::Meta::RateLimits]

        # @see Onlyfansapi::Models::UserListListResponse::Meta#_cache
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

        # @see Onlyfansapi::Models::UserListListResponse::Meta#_credits
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

        # @see Onlyfansapi::Models::UserListListResponse::Meta#_rate_limits
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
        #   @return [String, nil]
        optional :id, String

        # @!attribute can_add_users
        #
        #   @return [Boolean, nil]
        optional :can_add_users, Onlyfansapi::Internal::Type::Boolean, api_name: :canAddUsers

        # @!attribute can_delete
        #
        #   @return [Boolean, nil]
        optional :can_delete, Onlyfansapi::Internal::Type::Boolean, api_name: :canDelete

        # @!attribute can_manage_users
        #
        #   @return [Boolean, nil]
        optional :can_manage_users, Onlyfansapi::Internal::Type::Boolean, api_name: :canManageUsers

        # @!attribute can_pinned_to_chat
        #
        #   @return [Boolean, nil]
        optional :can_pinned_to_chat, Onlyfansapi::Internal::Type::Boolean, api_name: :canPinnedToChat

        # @!attribute can_pinned_to_feed
        #
        #   @return [Boolean, nil]
        optional :can_pinned_to_feed, Onlyfansapi::Internal::Type::Boolean, api_name: :canPinnedToFeed

        # @!attribute can_update
        #
        #   @return [Boolean, nil]
        optional :can_update, Onlyfansapi::Internal::Type::Boolean, api_name: :canUpdate

        # @!attribute direction
        #
        #   @return [String, nil]
        optional :direction, String

        # @!attribute is_pinned_to_chat
        #
        #   @return [Boolean, nil]
        optional :is_pinned_to_chat, Onlyfansapi::Internal::Type::Boolean, api_name: :isPinnedToChat

        # @!attribute is_pinned_to_feed
        #
        #   @return [Boolean, nil]
        optional :is_pinned_to_feed, Onlyfansapi::Internal::Type::Boolean, api_name: :isPinnedToFeed

        # @!attribute name
        #
        #   @return [String, nil]
        optional :name, String

        # @!attribute order
        #
        #   @return [String, nil]
        optional :order, String

        # @!attribute posts_count
        #
        #   @return [Integer, nil]
        optional :posts_count, Integer, api_name: :postsCount

        # @!attribute sort_list
        #
        #   @return [Array<Object>, nil]
        optional :sort_list,
                 Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Internal::Type::Unknown],
                 api_name: :sortList

        # @!attribute type
        #
        #   @return [String, nil]
        optional :type, String

        # @!attribute users
        #
        #   @return [Array<Object>, nil]
        optional :users, Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Internal::Type::Unknown]

        # @!attribute users_count
        #
        #   @return [Integer, nil]
        optional :users_count, Integer, api_name: :usersCount

        # @!method initialize(id: nil, can_add_users: nil, can_delete: nil, can_manage_users: nil, can_pinned_to_chat: nil, can_pinned_to_feed: nil, can_update: nil, direction: nil, is_pinned_to_chat: nil, is_pinned_to_feed: nil, name: nil, order: nil, posts_count: nil, sort_list: nil, type: nil, users: nil, users_count: nil)
        #   @param id [String]
        #   @param can_add_users [Boolean]
        #   @param can_delete [Boolean]
        #   @param can_manage_users [Boolean]
        #   @param can_pinned_to_chat [Boolean]
        #   @param can_pinned_to_feed [Boolean]
        #   @param can_update [Boolean]
        #   @param direction [String]
        #   @param is_pinned_to_chat [Boolean]
        #   @param is_pinned_to_feed [Boolean]
        #   @param name [String]
        #   @param order [String]
        #   @param posts_count [Integer]
        #   @param sort_list [Array<Object>]
        #   @param type [String]
        #   @param users [Array<Object>]
        #   @param users_count [Integer]
      end
    end
  end
end
