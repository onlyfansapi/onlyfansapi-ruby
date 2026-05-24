# typed: strong

module Onlyfansapi
  module Models
    class PayoutListTransactionsResponse < Onlyfansapi::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Onlyfansapi::Models::PayoutListTransactionsResponse,
            Onlyfansapi::Internal::AnyHash
          )
        end

      sig do
        returns(
          T.nilable(Onlyfansapi::Models::PayoutListTransactionsResponse::Meta)
        )
      end
      attr_reader :_meta

      sig do
        params(
          _meta:
            Onlyfansapi::Models::PayoutListTransactionsResponse::Meta::OrHash
        ).void
      end
      attr_writer :_meta

      sig do
        returns(
          T.nilable(Onlyfansapi::Models::PayoutListTransactionsResponse::Data)
        )
      end
      attr_reader :data

      sig do
        params(
          data:
            Onlyfansapi::Models::PayoutListTransactionsResponse::Data::OrHash
        ).void
      end
      attr_writer :data

      sig do
        params(
          _meta:
            Onlyfansapi::Models::PayoutListTransactionsResponse::Meta::OrHash,
          data:
            Onlyfansapi::Models::PayoutListTransactionsResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(_meta: nil, data: nil)
      end

      sig do
        override.returns(
          {
            _meta: Onlyfansapi::Models::PayoutListTransactionsResponse::Meta,
            data: Onlyfansapi::Models::PayoutListTransactionsResponse::Data
          }
        )
      end
      def to_hash
      end

      class Meta < Onlyfansapi::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Onlyfansapi::Models::PayoutListTransactionsResponse::Meta,
              Onlyfansapi::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              Onlyfansapi::Models::PayoutListTransactionsResponse::Meta::Cache
            )
          )
        end
        attr_reader :_cache

        sig do
          params(
            _cache:
              Onlyfansapi::Models::PayoutListTransactionsResponse::Meta::Cache::OrHash
          ).void
        end
        attr_writer :_cache

        sig do
          returns(
            T.nilable(
              Onlyfansapi::Models::PayoutListTransactionsResponse::Meta::Credits
            )
          )
        end
        attr_reader :_credits

        sig do
          params(
            _credits:
              Onlyfansapi::Models::PayoutListTransactionsResponse::Meta::Credits::OrHash
          ).void
        end
        attr_writer :_credits

        sig do
          returns(
            T.nilable(
              Onlyfansapi::Models::PayoutListTransactionsResponse::Meta::RateLimits
            )
          )
        end
        attr_reader :_rate_limits

        sig do
          params(
            _rate_limits:
              Onlyfansapi::Models::PayoutListTransactionsResponse::Meta::RateLimits::OrHash
          ).void
        end
        attr_writer :_rate_limits

        sig do
          params(
            _cache:
              Onlyfansapi::Models::PayoutListTransactionsResponse::Meta::Cache::OrHash,
            _credits:
              Onlyfansapi::Models::PayoutListTransactionsResponse::Meta::Credits::OrHash,
            _rate_limits:
              Onlyfansapi::Models::PayoutListTransactionsResponse::Meta::RateLimits::OrHash
          ).returns(T.attached_class)
        end
        def self.new(_cache: nil, _credits: nil, _rate_limits: nil)
        end

        sig do
          override.returns(
            {
              _cache:
                Onlyfansapi::Models::PayoutListTransactionsResponse::Meta::Cache,
              _credits:
                Onlyfansapi::Models::PayoutListTransactionsResponse::Meta::Credits,
              _rate_limits:
                Onlyfansapi::Models::PayoutListTransactionsResponse::Meta::RateLimits
            }
          )
        end
        def to_hash
        end

        class Cache < Onlyfansapi::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfansapi::Models::PayoutListTransactionsResponse::Meta::Cache,
                Onlyfansapi::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :is_cached

          sig { params(is_cached: T::Boolean).void }
          attr_writer :is_cached

          sig { returns(T.nilable(String)) }
          attr_reader :note

          sig { params(note: String).void }
          attr_writer :note

          sig do
            params(is_cached: T::Boolean, note: String).returns(
              T.attached_class
            )
          end
          def self.new(is_cached: nil, note: nil)
          end

          sig { override.returns({ is_cached: T::Boolean, note: String }) }
          def to_hash
          end
        end

        class Credits < Onlyfansapi::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfansapi::Models::PayoutListTransactionsResponse::Meta::Credits,
                Onlyfansapi::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(Integer)) }
          attr_reader :balance

          sig { params(balance: Integer).void }
          attr_writer :balance

          sig { returns(T.nilable(String)) }
          attr_reader :note

          sig { params(note: String).void }
          attr_writer :note

          sig { returns(T.nilable(Integer)) }
          attr_reader :used

          sig { params(used: Integer).void }
          attr_writer :used

          sig do
            params(balance: Integer, note: String, used: Integer).returns(
              T.attached_class
            )
          end
          def self.new(balance: nil, note: nil, used: nil)
          end

          sig do
            override.returns({ balance: Integer, note: String, used: Integer })
          end
          def to_hash
          end
        end

        class RateLimits < Onlyfansapi::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfansapi::Models::PayoutListTransactionsResponse::Meta::RateLimits,
                Onlyfansapi::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(Integer)) }
          attr_reader :limit_day

          sig { params(limit_day: Integer).void }
          attr_writer :limit_day

          sig { returns(T.nilable(Integer)) }
          attr_reader :limit_minute

          sig { params(limit_minute: Integer).void }
          attr_writer :limit_minute

          sig { returns(T.nilable(Integer)) }
          attr_reader :remaining_day

          sig { params(remaining_day: Integer).void }
          attr_writer :remaining_day

          sig { returns(T.nilable(Integer)) }
          attr_reader :remaining_minute

          sig { params(remaining_minute: Integer).void }
          attr_writer :remaining_minute

          sig do
            params(
              limit_day: Integer,
              limit_minute: Integer,
              remaining_day: Integer,
              remaining_minute: Integer
            ).returns(T.attached_class)
          end
          def self.new(
            limit_day: nil,
            limit_minute: nil,
            remaining_day: nil,
            remaining_minute: nil
          )
          end

          sig do
            override.returns(
              {
                limit_day: Integer,
                limit_minute: Integer,
                remaining_day: Integer,
                remaining_minute: Integer
              }
            )
          end
          def to_hash
          end
        end
      end

      class Data < Onlyfansapi::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Onlyfansapi::Models::PayoutListTransactionsResponse::Data,
              Onlyfansapi::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :has_more

        sig { params(has_more: T::Boolean).void }
        attr_writer :has_more

        sig do
          returns(
            T.nilable(
              T::Array[
                Onlyfansapi::Models::PayoutListTransactionsResponse::Data::List
              ]
            )
          )
        end
        attr_reader :list

        sig do
          params(
            list:
              T::Array[
                Onlyfansapi::Models::PayoutListTransactionsResponse::Data::List::OrHash
              ]
          ).void
        end
        attr_writer :list

        sig { returns(T.nilable(Integer)) }
        attr_reader :marker

        sig { params(marker: Integer).void }
        attr_writer :marker

        sig { returns(T.nilable(Integer)) }
        attr_reader :next_marker

        sig { params(next_marker: Integer).void }
        attr_writer :next_marker

        sig do
          params(
            has_more: T::Boolean,
            list:
              T::Array[
                Onlyfansapi::Models::PayoutListTransactionsResponse::Data::List::OrHash
              ],
            marker: Integer,
            next_marker: Integer
          ).returns(T.attached_class)
        end
        def self.new(has_more: nil, list: nil, marker: nil, next_marker: nil)
        end

        sig do
          override.returns(
            {
              has_more: T::Boolean,
              list:
                T::Array[
                  Onlyfansapi::Models::PayoutListTransactionsResponse::Data::List
                ],
              marker: Integer,
              next_marker: Integer
            }
          )
        end
        def to_hash
        end

        class List < Onlyfansapi::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfansapi::Models::PayoutListTransactionsResponse::Data::List,
                Onlyfansapi::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(String)) }
          attr_reader :id

          sig { params(id: String).void }
          attr_writer :id

          sig { returns(T.nilable(Float)) }
          attr_reader :amount

          sig { params(amount: Float).void }
          attr_writer :amount

          sig { returns(T.nilable(String)) }
          attr_reader :created_at

          sig { params(created_at: String).void }
          attr_writer :created_at

          sig { returns(T.nilable(String)) }
          attr_reader :currency

          sig { params(currency: String).void }
          attr_writer :currency

          sig { returns(T.nilable(String)) }
          attr_reader :description

          sig { params(description: String).void }
          attr_writer :description

          sig { returns(T.nilable(Float)) }
          attr_reader :fee

          sig { params(fee: Float).void }
          attr_writer :fee

          sig { returns(T.nilable(Float)) }
          attr_reader :media_tax_amount

          sig { params(media_tax_amount: Float).void }
          attr_writer :media_tax_amount

          sig { returns(T.nilable(Float)) }
          attr_reader :net

          sig { params(net: Float).void }
          attr_writer :net

          sig { returns(T.nilable(Integer)) }
          attr_reader :payout_pending_days

          sig { params(payout_pending_days: Integer).void }
          attr_writer :payout_pending_days

          sig { returns(T.nilable(String)) }
          attr_reader :status

          sig { params(status: String).void }
          attr_writer :status

          sig { returns(T.nilable(Float)) }
          attr_reader :tax_amount

          sig { params(tax_amount: Float).void }
          attr_writer :tax_amount

          sig do
            returns(
              T.nilable(
                Onlyfansapi::Models::PayoutListTransactionsResponse::Data::List::User
              )
            )
          end
          attr_reader :user

          sig do
            params(
              user:
                Onlyfansapi::Models::PayoutListTransactionsResponse::Data::List::User::OrHash
            ).void
          end
          attr_writer :user

          sig { returns(T.nilable(Float)) }
          attr_reader :vat_amount

          sig { params(vat_amount: Float).void }
          attr_writer :vat_amount

          sig do
            params(
              id: String,
              amount: Float,
              created_at: String,
              currency: String,
              description: String,
              fee: Float,
              media_tax_amount: Float,
              net: Float,
              payout_pending_days: Integer,
              status: String,
              tax_amount: Float,
              user:
                Onlyfansapi::Models::PayoutListTransactionsResponse::Data::List::User::OrHash,
              vat_amount: Float
            ).returns(T.attached_class)
          end
          def self.new(
            id: nil,
            amount: nil,
            created_at: nil,
            currency: nil,
            description: nil,
            fee: nil,
            media_tax_amount: nil,
            net: nil,
            payout_pending_days: nil,
            status: nil,
            tax_amount: nil,
            user: nil,
            vat_amount: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                amount: Float,
                created_at: String,
                currency: String,
                description: String,
                fee: Float,
                media_tax_amount: Float,
                net: Float,
                payout_pending_days: Integer,
                status: String,
                tax_amount: Float,
                user:
                  Onlyfansapi::Models::PayoutListTransactionsResponse::Data::List::User,
                vat_amount: Float
              }
            )
          end
          def to_hash
          end

          class User < Onlyfansapi::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Onlyfansapi::Models::PayoutListTransactionsResponse::Data::List::User,
                  Onlyfansapi::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(Integer)) }
            attr_reader :id

            sig { params(id: Integer).void }
            attr_writer :id

            sig { returns(T.nilable(String)) }
            attr_reader :avatar

            sig { params(avatar: String).void }
            attr_writer :avatar

            sig { returns(T.nilable(String)) }
            attr_reader :avatar_thumbs

            sig { params(avatar_thumbs: String).void }
            attr_writer :avatar_thumbs

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :is_verified

            sig { params(is_verified: T::Boolean).void }
            attr_writer :is_verified

            sig { returns(T.nilable(String)) }
            attr_reader :name

            sig { params(name: String).void }
            attr_writer :name

            sig { returns(T.nilable(String)) }
            attr_reader :username

            sig { params(username: String).void }
            attr_writer :username

            sig { returns(T.nilable(String)) }
            attr_reader :view

            sig { params(view: String).void }
            attr_writer :view

            sig do
              params(
                id: Integer,
                avatar: String,
                avatar_thumbs: String,
                is_verified: T::Boolean,
                name: String,
                username: String,
                view: String
              ).returns(T.attached_class)
            end
            def self.new(
              id: nil,
              avatar: nil,
              avatar_thumbs: nil,
              is_verified: nil,
              name: nil,
              username: nil,
              view: nil
            )
            end

            sig do
              override.returns(
                {
                  id: Integer,
                  avatar: String,
                  avatar_thumbs: String,
                  is_verified: T::Boolean,
                  name: String,
                  username: String,
                  view: String
                }
              )
            end
            def to_hash
            end
          end
        end
      end
    end
  end
end
