# frozen_string_literal: true

module Onlyfans
  module Models
    module UserLists
      # @see Onlyfans::Resources::UserLists::Users#remove
      class UserRemoveResponse < Onlyfans::Internal::Type::BaseModel
        # @!attribute _meta
        #
        #   @return [Onlyfans::Models::UserLists::UserRemoveResponse::Meta, nil]
        optional :_meta, -> { Onlyfans::Models::UserLists::UserRemoveResponse::Meta }

        # @!attribute data
        #
        #   @return [Onlyfans::Models::UserLists::UserRemoveResponse::Data, nil]
        optional :data, -> { Onlyfans::Models::UserLists::UserRemoveResponse::Data }

        # @!method initialize(_meta: nil, data: nil)
        #   @param _meta [Onlyfans::Models::UserLists::UserRemoveResponse::Meta]
        #   @param data [Onlyfans::Models::UserLists::UserRemoveResponse::Data]

        # @see Onlyfans::Models::UserLists::UserRemoveResponse#_meta
        class Meta < Onlyfans::Internal::Type::BaseModel
          # @!attribute _cache
          #
          #   @return [Onlyfans::Models::UserLists::UserRemoveResponse::Meta::Cache, nil]
          optional :_cache, -> { Onlyfans::Models::UserLists::UserRemoveResponse::Meta::Cache }

          # @!attribute _credits
          #
          #   @return [Onlyfans::Models::UserLists::UserRemoveResponse::Meta::Credits, nil]
          optional :_credits, -> { Onlyfans::Models::UserLists::UserRemoveResponse::Meta::Credits }

          # @!attribute _rate_limits
          #
          #   @return [Onlyfans::Models::UserLists::UserRemoveResponse::Meta::RateLimits, nil]
          optional :_rate_limits, -> { Onlyfans::Models::UserLists::UserRemoveResponse::Meta::RateLimits }

          # @!method initialize(_cache: nil, _credits: nil, _rate_limits: nil)
          #   @param _cache [Onlyfans::Models::UserLists::UserRemoveResponse::Meta::Cache]
          #   @param _credits [Onlyfans::Models::UserLists::UserRemoveResponse::Meta::Credits]
          #   @param _rate_limits [Onlyfans::Models::UserLists::UserRemoveResponse::Meta::RateLimits]

          # @see Onlyfans::Models::UserLists::UserRemoveResponse::Meta#_cache
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

          # @see Onlyfans::Models::UserLists::UserRemoveResponse::Meta#_credits
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

          # @see Onlyfans::Models::UserLists::UserRemoveResponse::Meta#_rate_limits
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

        # @see Onlyfans::Models::UserLists::UserRemoveResponse#data
        class Data < Onlyfans::Internal::Type::BaseModel
          # @!attribute list
          #
          #   @return [Onlyfans::Models::UserLists::UserRemoveResponse::Data::List, nil]
          optional :list, -> { Onlyfans::Models::UserLists::UserRemoveResponse::Data::List }

          # @!attribute user_state
          #
          #   @return [Onlyfans::Models::UserLists::UserRemoveResponse::Data::UserState, nil]
          optional :user_state,
                   -> { Onlyfans::Models::UserLists::UserRemoveResponse::Data::UserState },
                   api_name: :userState

          # @!method initialize(list: nil, user_state: nil)
          #   @param list [Onlyfans::Models::UserLists::UserRemoveResponse::Data::List]
          #   @param user_state [Onlyfans::Models::UserLists::UserRemoveResponse::Data::UserState]

          # @see Onlyfans::Models::UserLists::UserRemoveResponse::Data#list
          class List < Onlyfans::Internal::Type::BaseModel
            # @!attribute id
            #
            #   @return [Integer, nil]
            optional :id, Integer

            # @!attribute can_add_users
            #
            #   @return [Boolean, nil]
            optional :can_add_users, Onlyfans::Internal::Type::Boolean, api_name: :canAddUsers

            # @!attribute can_delete
            #
            #   @return [Boolean, nil]
            optional :can_delete, Onlyfans::Internal::Type::Boolean, api_name: :canDelete

            # @!attribute can_manage_users
            #
            #   @return [Boolean, nil]
            optional :can_manage_users, Onlyfans::Internal::Type::Boolean, api_name: :canManageUsers

            # @!attribute can_pinned_to_chat
            #
            #   @return [Boolean, nil]
            optional :can_pinned_to_chat, Onlyfans::Internal::Type::Boolean, api_name: :canPinnedToChat

            # @!attribute can_pinned_to_feed
            #
            #   @return [Boolean, nil]
            optional :can_pinned_to_feed, Onlyfans::Internal::Type::Boolean, api_name: :canPinnedToFeed

            # @!attribute can_update
            #
            #   @return [Boolean, nil]
            optional :can_update, Onlyfans::Internal::Type::Boolean, api_name: :canUpdate

            # @!attribute direction
            #
            #   @return [String, nil]
            optional :direction, String

            # @!attribute is_pinned_to_chat
            #
            #   @return [Boolean, nil]
            optional :is_pinned_to_chat, Onlyfans::Internal::Type::Boolean, api_name: :isPinnedToChat

            # @!attribute is_pinned_to_feed
            #
            #   @return [Boolean, nil]
            optional :is_pinned_to_feed, Onlyfans::Internal::Type::Boolean, api_name: :isPinnedToFeed

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
                     Onlyfans::Internal::Type::ArrayOf[Onlyfans::Internal::Type::Unknown],
                     api_name: :sortList

            # @!attribute type
            #
            #   @return [String, nil]
            optional :type, String

            # @!attribute users
            #
            #   @return [Array<Onlyfans::Models::UserLists::UserRemoveResponse::Data::List::User>, nil]
            optional :users,
                     -> { Onlyfans::Internal::Type::ArrayOf[Onlyfans::Models::UserLists::UserRemoveResponse::Data::List::User] }

            # @!attribute users_count
            #
            #   @return [Integer, nil]
            optional :users_count, Integer, api_name: :usersCount

            # @!method initialize(id: nil, can_add_users: nil, can_delete: nil, can_manage_users: nil, can_pinned_to_chat: nil, can_pinned_to_feed: nil, can_update: nil, direction: nil, is_pinned_to_chat: nil, is_pinned_to_feed: nil, name: nil, order: nil, posts_count: nil, sort_list: nil, type: nil, users: nil, users_count: nil)
            #   @param id [Integer]
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
            #   @param users [Array<Onlyfans::Models::UserLists::UserRemoveResponse::Data::List::User>]
            #   @param users_count [Integer]

            class User < Onlyfans::Internal::Type::BaseModel
              # @!attribute id
              #
              #   @return [Integer, nil]
              optional :id, Integer

              # @!attribute avatar
              #
              #   @return [String, nil]
              optional :avatar, String

              # @!attribute avatar_thumbs
              #
              #   @return [Onlyfans::Models::UserLists::UserRemoveResponse::Data::List::User::AvatarThumbs, nil]
              optional :avatar_thumbs,
                       -> { Onlyfans::Models::UserLists::UserRemoveResponse::Data::List::User::AvatarThumbs },
                       api_name: :avatarThumbs

              # @!attribute is_verified
              #
              #   @return [Boolean, nil]
              optional :is_verified, Onlyfans::Internal::Type::Boolean, api_name: :isVerified

              # @!attribute name
              #
              #   @return [String, nil]
              optional :name, String

              # @!attribute username
              #
              #   @return [String, nil]
              optional :username, String

              # @!attribute view
              #
              #   @return [String, nil]
              optional :view, String

              # @!method initialize(id: nil, avatar: nil, avatar_thumbs: nil, is_verified: nil, name: nil, username: nil, view: nil)
              #   @param id [Integer]
              #   @param avatar [String]
              #   @param avatar_thumbs [Onlyfans::Models::UserLists::UserRemoveResponse::Data::List::User::AvatarThumbs]
              #   @param is_verified [Boolean]
              #   @param name [String]
              #   @param username [String]
              #   @param view [String]

              # @see Onlyfans::Models::UserLists::UserRemoveResponse::Data::List::User#avatar_thumbs
              class AvatarThumbs < Onlyfans::Internal::Type::BaseModel
                # @!attribute c144
                #
                #   @return [String, nil]
                optional :c144, String

                # @!attribute c50
                #
                #   @return [String, nil]
                optional :c50, String

                # @!method initialize(c144: nil, c50: nil)
                #   @param c144 [String]
                #   @param c50 [String]
              end
            end
          end

          # @see Onlyfans::Models::UserLists::UserRemoveResponse::Data#user_state
          class UserState < Onlyfans::Internal::Type::BaseModel
            # @!attribute id
            #
            #   @return [Integer, nil]
            optional :id, Integer

            # @!attribute can_add_user
            #
            #   @return [Boolean, nil]
            optional :can_add_user, Onlyfans::Internal::Type::Boolean, api_name: :canAddUser

            # @!attribute cannot_add_user_reason
            #
            #   @return [String, nil]
            optional :cannot_add_user_reason, String, api_name: :cannotAddUserReason, nil?: true

            # @!attribute has_user
            #
            #   @return [Boolean, nil]
            optional :has_user, Onlyfans::Internal::Type::Boolean, api_name: :hasUser

            # @!attribute name
            #
            #   @return [String, nil]
            optional :name, String

            # @!attribute type
            #
            #   @return [String, nil]
            optional :type, String

            # @!method initialize(id: nil, can_add_user: nil, cannot_add_user_reason: nil, has_user: nil, name: nil, type: nil)
            #   @param id [Integer]
            #   @param can_add_user [Boolean]
            #   @param cannot_add_user_reason [String, nil]
            #   @param has_user [Boolean]
            #   @param name [String]
            #   @param type [String]
          end
        end
      end
    end
  end
end
