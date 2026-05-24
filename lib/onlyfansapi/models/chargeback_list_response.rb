# frozen_string_literal: true

module Onlyfansapi
  module Models
    # @see Onlyfansapi::Resources::Chargebacks#list
    class ChargebackListResponse < Onlyfansapi::Internal::Type::BaseModel
      # @!attribute _meta
      #
      #   @return [Onlyfansapi::Models::ChargebackListResponse::Meta, nil]
      optional :_meta, -> { Onlyfansapi::Models::ChargebackListResponse::Meta }

      # @!attribute data
      #
      #   @return [Onlyfansapi::Models::ChargebackListResponse::Data, nil]
      optional :data, -> { Onlyfansapi::Models::ChargebackListResponse::Data }

      # @!method initialize(_meta: nil, data: nil)
      #   @param _meta [Onlyfansapi::Models::ChargebackListResponse::Meta]
      #   @param data [Onlyfansapi::Models::ChargebackListResponse::Data]

      # @see Onlyfansapi::Models::ChargebackListResponse#_meta
      class Meta < Onlyfansapi::Internal::Type::BaseModel
        # @!attribute _cache
        #
        #   @return [Onlyfansapi::Models::ChargebackListResponse::Meta::Cache, nil]
        optional :_cache, -> { Onlyfansapi::Models::ChargebackListResponse::Meta::Cache }

        # @!attribute _credits
        #
        #   @return [Onlyfansapi::Models::ChargebackListResponse::Meta::Credits, nil]
        optional :_credits, -> { Onlyfansapi::Models::ChargebackListResponse::Meta::Credits }

        # @!attribute _rate_limits
        #
        #   @return [Onlyfansapi::Models::ChargebackListResponse::Meta::RateLimits, nil]
        optional :_rate_limits, -> { Onlyfansapi::Models::ChargebackListResponse::Meta::RateLimits }

        # @!method initialize(_cache: nil, _credits: nil, _rate_limits: nil)
        #   @param _cache [Onlyfansapi::Models::ChargebackListResponse::Meta::Cache]
        #   @param _credits [Onlyfansapi::Models::ChargebackListResponse::Meta::Credits]
        #   @param _rate_limits [Onlyfansapi::Models::ChargebackListResponse::Meta::RateLimits]

        # @see Onlyfansapi::Models::ChargebackListResponse::Meta#_cache
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

        # @see Onlyfansapi::Models::ChargebackListResponse::Meta#_credits
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

        # @see Onlyfansapi::Models::ChargebackListResponse::Meta#_rate_limits
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

      # @see Onlyfansapi::Models::ChargebackListResponse#data
      class Data < Onlyfansapi::Internal::Type::BaseModel
        # @!attribute list
        #
        #   @return [Array<Onlyfansapi::Models::ChargebackListResponse::Data::List>, nil]
        optional :list,
                 -> { Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Models::ChargebackListResponse::Data::List] }

        # @!attribute marker
        #
        #   @return [Integer, nil]
        optional :marker, Integer

        # @!method initialize(list: nil, marker: nil)
        #   @param list [Array<Onlyfansapi::Models::ChargebackListResponse::Data::List>]
        #   @param marker [Integer]

        class List < Onlyfansapi::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [Integer, nil]
          optional :id, Integer

          # @!attribute created_at
          #
          #   @return [String, nil]
          optional :created_at, String, api_name: :createdAt

          # @!attribute payment
          #
          #   @return [Onlyfansapi::Models::ChargebackListResponse::Data::List::Payment, nil]
          optional :payment, -> { Onlyfansapi::Models::ChargebackListResponse::Data::List::Payment }

          # @!attribute payment_type
          #
          #   @return [String, nil]
          optional :payment_type, String, api_name: :paymentType

          # @!method initialize(id: nil, created_at: nil, payment: nil, payment_type: nil)
          #   @param id [Integer]
          #   @param created_at [String]
          #   @param payment [Onlyfansapi::Models::ChargebackListResponse::Data::List::Payment]
          #   @param payment_type [String]

          # @see Onlyfansapi::Models::ChargebackListResponse::Data::List#payment
          class Payment < Onlyfansapi::Internal::Type::BaseModel
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

            # @!attribute media_tax_amount
            #
            #   @return [Integer, nil]
            optional :media_tax_amount, Integer, api_name: :mediaTaxAmount

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

            # @!attribute user
            #
            #   @return [Onlyfansapi::Models::ChargebackListResponse::Data::List::Payment::User, nil]
            optional :user, -> { Onlyfansapi::Models::ChargebackListResponse::Data::List::Payment::User }

            # @!attribute vat_amount
            #
            #   @return [Integer, nil]
            optional :vat_amount, Integer, api_name: :vatAmount

            # @!method initialize(id: nil, amount: nil, created_at: nil, currency: nil, description: nil, fee: nil, media_tax_amount: nil, net: nil, payout_pending_days: nil, status: nil, tax_amount: nil, user: nil, vat_amount: nil)
            #   @param id [String]
            #   @param amount [Float]
            #   @param created_at [String]
            #   @param currency [String]
            #   @param description [String]
            #   @param fee [Integer]
            #   @param media_tax_amount [Integer]
            #   @param net [Float]
            #   @param payout_pending_days [Integer]
            #   @param status [String]
            #   @param tax_amount [Integer]
            #   @param user [Onlyfansapi::Models::ChargebackListResponse::Data::List::Payment::User]
            #   @param vat_amount [Integer]

            # @see Onlyfansapi::Models::ChargebackListResponse::Data::List::Payment#user
            class User < Onlyfansapi::Internal::Type::BaseModel
              # @!attribute id
              #
              #   @return [Integer, nil]
              optional :id, Integer

              # @!attribute avatar
              #
              #   @return [String, nil]
              optional :avatar, String, nil?: true

              # @!attribute avatar_thumbs
              #
              #   @return [String, nil]
              optional :avatar_thumbs, String, api_name: :avatarThumbs, nil?: true

              # @!attribute is_verified
              #
              #   @return [Boolean, nil]
              optional :is_verified, Onlyfansapi::Internal::Type::Boolean, api_name: :isVerified

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
              #   @param avatar [String, nil]
              #   @param avatar_thumbs [String, nil]
              #   @param is_verified [Boolean]
              #   @param name [String]
              #   @param username [String]
              #   @param view [String]
            end
          end
        end
      end
    end
  end
end
