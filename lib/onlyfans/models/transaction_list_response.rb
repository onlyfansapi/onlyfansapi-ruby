# frozen_string_literal: true

module Onlyfans
  module Models
    # @see Onlyfans::Resources::Transactions#list
    class TransactionListResponse < Onlyfans::Internal::Type::BaseModel
      # @!attribute _meta
      #
      #   @return [Onlyfans::Models::TransactionListResponse::Meta, nil]
      optional :_meta, -> { Onlyfans::Models::TransactionListResponse::Meta }

      # @!attribute _pagination
      #
      #   @return [Onlyfans::Models::TransactionListResponse::Pagination, nil]
      optional :_pagination, -> { Onlyfans::Models::TransactionListResponse::Pagination }

      # @!attribute data
      #
      #   @return [Onlyfans::Models::TransactionListResponse::Data, nil]
      optional :data, -> { Onlyfans::Models::TransactionListResponse::Data }

      # @!method initialize(_meta: nil, _pagination: nil, data: nil)
      #   @param _meta [Onlyfans::Models::TransactionListResponse::Meta]
      #   @param _pagination [Onlyfans::Models::TransactionListResponse::Pagination]
      #   @param data [Onlyfans::Models::TransactionListResponse::Data]

      # @see Onlyfans::Models::TransactionListResponse#_meta
      class Meta < Onlyfans::Internal::Type::BaseModel
        # @!attribute _cache
        #
        #   @return [Onlyfans::Models::TransactionListResponse::Meta::Cache, nil]
        optional :_cache, -> { Onlyfans::Models::TransactionListResponse::Meta::Cache }

        # @!attribute _credits
        #
        #   @return [Onlyfans::Models::TransactionListResponse::Meta::Credits, nil]
        optional :_credits, -> { Onlyfans::Models::TransactionListResponse::Meta::Credits }

        # @!attribute _rate_limits
        #
        #   @return [Onlyfans::Models::TransactionListResponse::Meta::RateLimits, nil]
        optional :_rate_limits, -> { Onlyfans::Models::TransactionListResponse::Meta::RateLimits }

        # @!method initialize(_cache: nil, _credits: nil, _rate_limits: nil)
        #   @param _cache [Onlyfans::Models::TransactionListResponse::Meta::Cache]
        #   @param _credits [Onlyfans::Models::TransactionListResponse::Meta::Credits]
        #   @param _rate_limits [Onlyfans::Models::TransactionListResponse::Meta::RateLimits]

        # @see Onlyfans::Models::TransactionListResponse::Meta#_cache
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

        # @see Onlyfans::Models::TransactionListResponse::Meta#_credits
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

        # @see Onlyfans::Models::TransactionListResponse::Meta#_rate_limits
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

      # @see Onlyfans::Models::TransactionListResponse#_pagination
      class Pagination < Onlyfans::Internal::Type::BaseModel
        # @!attribute next_page
        #
        #   @return [String, nil]
        optional :next_page, String

        # @!method initialize(next_page: nil)
        #   @param next_page [String]
      end

      # @see Onlyfans::Models::TransactionListResponse#data
      class Data < Onlyfans::Internal::Type::BaseModel
        # @!attribute has_more
        #
        #   @return [Boolean, nil]
        optional :has_more, Onlyfans::Internal::Type::Boolean, api_name: :hasMore

        # @!attribute list
        #
        #   @return [Array<Onlyfans::Models::TransactionListResponse::Data::List>, nil]
        optional :list,
                 -> { Onlyfans::Internal::Type::ArrayOf[Onlyfans::Models::TransactionListResponse::Data::List] }

        # @!attribute marker
        #
        #   @return [Integer, nil]
        optional :marker, Integer

        # @!attribute next_marker
        #
        #   @return [Integer, nil]
        optional :next_marker, Integer, api_name: :nextMarker

        # @!method initialize(has_more: nil, list: nil, marker: nil, next_marker: nil)
        #   @param has_more [Boolean]
        #   @param list [Array<Onlyfans::Models::TransactionListResponse::Data::List>]
        #   @param marker [Integer]
        #   @param next_marker [Integer]

        class List < Onlyfans::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String, nil]
          optional :id, String

          # @!attribute amount
          #
          #   @return [Float, nil]
          optional :amount, Float

          # @!attribute created_at
          #
          #   @return [String, nil]
          optional :created_at, String, api_name: :createdAt

          # @!attribute currency
          #
          #   @return [String, nil]
          optional :currency, String

          # @!attribute description
          #
          #   @return [String, nil]
          optional :description, String

          # @!attribute fee
          #
          #   @return [Integer, nil]
          optional :fee, Integer

          # @!attribute net
          #
          #   @return [Float, nil]
          optional :net, Float

          # @!attribute payout_pending_days
          #
          #   @return [Integer, nil]
          optional :payout_pending_days, Integer, api_name: :payoutPendingDays

          # @!attribute status
          #
          #   @return [String, nil]
          optional :status, String

          # @!attribute tax_amount
          #
          #   @return [Integer, nil]
          optional :tax_amount, Integer, api_name: :taxAmount

          # @!attribute type
          #
          #   @return [String, nil]
          optional :type, String

          # @!attribute user
          #
          #   @return [Onlyfans::Models::TransactionListResponse::Data::List::User, nil]
          optional :user, -> { Onlyfans::Models::TransactionListResponse::Data::List::User }

          # @!attribute vat_amount
          #
          #   @return [Integer, nil]
          optional :vat_amount, Integer, api_name: :vatAmount

          # @!method initialize(id: nil, amount: nil, created_at: nil, currency: nil, description: nil, fee: nil, net: nil, payout_pending_days: nil, status: nil, tax_amount: nil, type: nil, user: nil, vat_amount: nil)
          #   @param id [String]
          #   @param amount [Float]
          #   @param created_at [String]
          #   @param currency [String]
          #   @param description [String]
          #   @param fee [Integer]
          #   @param net [Float]
          #   @param payout_pending_days [Integer]
          #   @param status [String]
          #   @param tax_amount [Integer]
          #   @param type [String]
          #   @param user [Onlyfans::Models::TransactionListResponse::Data::List::User]
          #   @param vat_amount [Integer]

          # @see Onlyfans::Models::TransactionListResponse::Data::List#user
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
            #   @return [Onlyfans::Models::TransactionListResponse::Data::List::User::AvatarThumbs, nil]
            optional :avatar_thumbs,
                     -> { Onlyfans::Models::TransactionListResponse::Data::List::User::AvatarThumbs },
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
            #   @param avatar_thumbs [Onlyfans::Models::TransactionListResponse::Data::List::User::AvatarThumbs]
            #   @param is_verified [Boolean]
            #   @param name [String]
            #   @param username [String]
            #   @param view [String]

            # @see Onlyfans::Models::TransactionListResponse::Data::List::User#avatar_thumbs
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
