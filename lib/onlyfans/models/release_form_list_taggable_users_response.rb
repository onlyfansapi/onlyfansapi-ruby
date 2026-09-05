# frozen_string_literal: true

module Onlyfans
  module Models
    # @see Onlyfans::Resources::ReleaseForms#list_taggable_users
    class ReleaseFormListTaggableUsersResponse < Onlyfans::Internal::Type::BaseModel
      # @!attribute _meta
      #
      #   @return [Onlyfans::Models::ReleaseFormListTaggableUsersResponse::Meta, nil]
      optional :_meta, -> { Onlyfans::Models::ReleaseFormListTaggableUsersResponse::Meta }

      # @!attribute _pagination
      #
      #   @return [Onlyfans::Models::ReleaseFormListTaggableUsersResponse::Pagination, nil]
      optional :_pagination, -> { Onlyfans::Models::ReleaseFormListTaggableUsersResponse::Pagination }

      # @!attribute data
      #
      #   @return [Onlyfans::Models::ReleaseFormListTaggableUsersResponse::Data, nil]
      optional :data, -> { Onlyfans::Models::ReleaseFormListTaggableUsersResponse::Data }

      # @!method initialize(_meta: nil, _pagination: nil, data: nil)
      #   @param _meta [Onlyfans::Models::ReleaseFormListTaggableUsersResponse::Meta]
      #   @param _pagination [Onlyfans::Models::ReleaseFormListTaggableUsersResponse::Pagination]
      #   @param data [Onlyfans::Models::ReleaseFormListTaggableUsersResponse::Data]

      # @see Onlyfans::Models::ReleaseFormListTaggableUsersResponse#_meta
      class Meta < Onlyfans::Internal::Type::BaseModel
        # @!attribute _cache
        #
        #   @return [Onlyfans::Models::ReleaseFormListTaggableUsersResponse::Meta::Cache, nil]
        optional :_cache, -> { Onlyfans::Models::ReleaseFormListTaggableUsersResponse::Meta::Cache }

        # @!attribute _credits
        #
        #   @return [Onlyfans::Models::ReleaseFormListTaggableUsersResponse::Meta::Credits, nil]
        optional :_credits, -> { Onlyfans::Models::ReleaseFormListTaggableUsersResponse::Meta::Credits }

        # @!attribute _rate_limits
        #
        #   @return [Onlyfans::Models::ReleaseFormListTaggableUsersResponse::Meta::RateLimits, nil]
        optional :_rate_limits, -> { Onlyfans::Models::ReleaseFormListTaggableUsersResponse::Meta::RateLimits }

        # @!method initialize(_cache: nil, _credits: nil, _rate_limits: nil)
        #   @param _cache [Onlyfans::Models::ReleaseFormListTaggableUsersResponse::Meta::Cache]
        #   @param _credits [Onlyfans::Models::ReleaseFormListTaggableUsersResponse::Meta::Credits]
        #   @param _rate_limits [Onlyfans::Models::ReleaseFormListTaggableUsersResponse::Meta::RateLimits]

        # @see Onlyfans::Models::ReleaseFormListTaggableUsersResponse::Meta#_cache
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

        # @see Onlyfans::Models::ReleaseFormListTaggableUsersResponse::Meta#_credits
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

        # @see Onlyfans::Models::ReleaseFormListTaggableUsersResponse::Meta#_rate_limits
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

      # @see Onlyfans::Models::ReleaseFormListTaggableUsersResponse#_pagination
      class Pagination < Onlyfans::Internal::Type::BaseModel
        # @!attribute next_page
        #
        #   @return [String, nil]
        optional :next_page, String

        # @!attribute notice
        #
        #   @return [String, nil]
        optional :notice, String

        # @!method initialize(next_page: nil, notice: nil)
        #   @param next_page [String]
        #   @param notice [String]
      end

      # @see Onlyfans::Models::ReleaseFormListTaggableUsersResponse#data
      class Data < Onlyfans::Internal::Type::BaseModel
        # @!attribute items
        #
        #   @return [Array<Onlyfans::Models::ReleaseFormListTaggableUsersResponse::Data::Item>, nil]
        optional :items,
                 -> { Onlyfans::Internal::Type::ArrayOf[Onlyfans::Models::ReleaseFormListTaggableUsersResponse::Data::Item] }

        # @!method initialize(items: nil)
        #   @param items [Array<Onlyfans::Models::ReleaseFormListTaggableUsersResponse::Data::Item>]

        class Item < Onlyfans::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [Integer, nil]
          optional :id, Integer

          # @!attribute name
          #
          #   @return [String, nil]
          optional :name, String

          # @!attribute type
          #
          #   @return [String, nil]
          optional :type, String

          # @!attribute user
          #
          #   @return [Onlyfans::Models::ReleaseFormListTaggableUsersResponse::Data::Item::User, nil]
          optional :user, -> { Onlyfans::Models::ReleaseFormListTaggableUsersResponse::Data::Item::User }

          # @!method initialize(id: nil, name: nil, type: nil, user: nil)
          #   @param id [Integer]
          #   @param name [String]
          #   @param type [String]
          #   @param user [Onlyfans::Models::ReleaseFormListTaggableUsersResponse::Data::Item::User]

          # @see Onlyfans::Models::ReleaseFormListTaggableUsersResponse::Data::Item#user
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
            #   @return [Onlyfans::Models::ReleaseFormListTaggableUsersResponse::Data::Item::User::AvatarThumbs, nil]
            optional :avatar_thumbs,
                     -> { Onlyfans::Models::ReleaseFormListTaggableUsersResponse::Data::Item::User::AvatarThumbs },
                     api_name: :avatarThumbs

            # @!attribute hidden_for_rf
            #
            #   @return [Boolean, nil]
            optional :hidden_for_rf, Onlyfans::Internal::Type::Boolean, api_name: :hiddenForRf

            # @!attribute is_from_guest
            #
            #   @return [Boolean, nil]
            optional :is_from_guest, Onlyfans::Internal::Type::Boolean, api_name: :isFromGuest

            # @!attribute is_verified
            #
            #   @return [Boolean, nil]
            optional :is_verified, Onlyfans::Internal::Type::Boolean, api_name: :isVerified

            # @!attribute iv_status
            #
            #   @return [String, nil]
            optional :iv_status, String, api_name: :ivStatus

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

            # @!method initialize(id: nil, avatar: nil, avatar_thumbs: nil, hidden_for_rf: nil, is_from_guest: nil, is_verified: nil, iv_status: nil, name: nil, username: nil, view: nil)
            #   @param id [Integer]
            #   @param avatar [String]
            #   @param avatar_thumbs [Onlyfans::Models::ReleaseFormListTaggableUsersResponse::Data::Item::User::AvatarThumbs]
            #   @param hidden_for_rf [Boolean]
            #   @param is_from_guest [Boolean]
            #   @param is_verified [Boolean]
            #   @param iv_status [String]
            #   @param name [String]
            #   @param username [String]
            #   @param view [String]

            # @see Onlyfans::Models::ReleaseFormListTaggableUsersResponse::Data::Item::User#avatar_thumbs
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
      end
    end
  end
end
