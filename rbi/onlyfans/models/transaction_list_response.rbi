# typed: strong

module Onlyfans
  module Models
    class TransactionListResponse < Onlyfans::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Onlyfans::Models::TransactionListResponse,
            Onlyfans::Internal::AnyHash
          )
        end

      sig do
        returns(T.nilable(Onlyfans::Models::TransactionListResponse::Meta))
      end
      attr_reader :_meta

      sig do
        params(
          _meta: Onlyfans::Models::TransactionListResponse::Meta::OrHash
        ).void
      end
      attr_writer :_meta

      sig do
        returns(
          T.nilable(Onlyfans::Models::TransactionListResponse::Pagination)
        )
      end
      attr_reader :_pagination

      sig do
        params(
          _pagination:
            Onlyfans::Models::TransactionListResponse::Pagination::OrHash
        ).void
      end
      attr_writer :_pagination

      sig do
        returns(T.nilable(Onlyfans::Models::TransactionListResponse::Data))
      end
      attr_reader :data

      sig do
        params(
          data: Onlyfans::Models::TransactionListResponse::Data::OrHash
        ).void
      end
      attr_writer :data

      sig do
        params(
          _meta: Onlyfans::Models::TransactionListResponse::Meta::OrHash,
          _pagination:
            Onlyfans::Models::TransactionListResponse::Pagination::OrHash,
          data: Onlyfans::Models::TransactionListResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(_meta: nil, _pagination: nil, data: nil)
      end

      sig do
        override.returns(
          {
            _meta: Onlyfans::Models::TransactionListResponse::Meta,
            _pagination: Onlyfans::Models::TransactionListResponse::Pagination,
            data: Onlyfans::Models::TransactionListResponse::Data
          }
        )
      end
      def to_hash
      end

      class Meta < Onlyfans::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Onlyfans::Models::TransactionListResponse::Meta,
              Onlyfans::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(Onlyfans::Models::TransactionListResponse::Meta::Cache)
          )
        end
        attr_reader :_cache

        sig do
          params(
            _cache:
              Onlyfans::Models::TransactionListResponse::Meta::Cache::OrHash
          ).void
        end
        attr_writer :_cache

        sig do
          returns(
            T.nilable(Onlyfans::Models::TransactionListResponse::Meta::Credits)
          )
        end
        attr_reader :_credits

        sig do
          params(
            _credits:
              Onlyfans::Models::TransactionListResponse::Meta::Credits::OrHash
          ).void
        end
        attr_writer :_credits

        sig do
          returns(
            T.nilable(
              Onlyfans::Models::TransactionListResponse::Meta::RateLimits
            )
          )
        end
        attr_reader :_rate_limits

        sig do
          params(
            _rate_limits:
              Onlyfans::Models::TransactionListResponse::Meta::RateLimits::OrHash
          ).void
        end
        attr_writer :_rate_limits

        sig do
          params(
            _cache:
              Onlyfans::Models::TransactionListResponse::Meta::Cache::OrHash,
            _credits:
              Onlyfans::Models::TransactionListResponse::Meta::Credits::OrHash,
            _rate_limits:
              Onlyfans::Models::TransactionListResponse::Meta::RateLimits::OrHash
          ).returns(T.attached_class)
        end
        def self.new(_cache: nil, _credits: nil, _rate_limits: nil)
        end

        sig do
          override.returns(
            {
              _cache: Onlyfans::Models::TransactionListResponse::Meta::Cache,
              _credits:
                Onlyfans::Models::TransactionListResponse::Meta::Credits,
              _rate_limits:
                Onlyfans::Models::TransactionListResponse::Meta::RateLimits
            }
          )
        end
        def to_hash
        end

        class Cache < Onlyfans::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfans::Models::TransactionListResponse::Meta::Cache,
                Onlyfans::Internal::AnyHash
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

        class Credits < Onlyfans::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfans::Models::TransactionListResponse::Meta::Credits,
                Onlyfans::Internal::AnyHash
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

        class RateLimits < Onlyfans::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfans::Models::TransactionListResponse::Meta::RateLimits,
                Onlyfans::Internal::AnyHash
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

      class Pagination < Onlyfans::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Onlyfans::Models::TransactionListResponse::Pagination,
              Onlyfans::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(String)) }
        attr_reader :next_page

        sig { params(next_page: String).void }
        attr_writer :next_page

        sig { params(next_page: String).returns(T.attached_class) }
        def self.new(next_page: nil)
        end

        sig { override.returns({ next_page: String }) }
        def to_hash
        end
      end

      class Data < Onlyfans::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Onlyfans::Models::TransactionListResponse::Data,
              Onlyfans::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :has_more

        sig { params(has_more: T::Boolean).void }
        attr_writer :has_more

        sig do
          returns(
            T.nilable(
              T::Array[Onlyfans::Models::TransactionListResponse::Data::List]
            )
          )
        end
        attr_reader :list

        sig do
          params(
            list:
              T::Array[
                Onlyfans::Models::TransactionListResponse::Data::List::OrHash
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
                Onlyfans::Models::TransactionListResponse::Data::List::OrHash
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
                T::Array[Onlyfans::Models::TransactionListResponse::Data::List],
              marker: Integer,
              next_marker: Integer
            }
          )
        end
        def to_hash
        end

        class List < Onlyfans::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfans::Models::TransactionListResponse::Data::List,
                Onlyfans::Internal::AnyHash
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

          sig { returns(T.nilable(Integer)) }
          attr_reader :fee

          sig { params(fee: Integer).void }
          attr_writer :fee

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

          sig { returns(T.nilable(Integer)) }
          attr_reader :tax_amount

          sig { params(tax_amount: Integer).void }
          attr_writer :tax_amount

          sig { returns(T.nilable(String)) }
          attr_reader :type

          sig { params(type: String).void }
          attr_writer :type

          sig do
            returns(
              T.nilable(
                Onlyfans::Models::TransactionListResponse::Data::List::User
              )
            )
          end
          attr_reader :user

          sig do
            params(
              user:
                Onlyfans::Models::TransactionListResponse::Data::List::User::OrHash
            ).void
          end
          attr_writer :user

          sig { returns(T.nilable(Integer)) }
          attr_reader :vat_amount

          sig { params(vat_amount: Integer).void }
          attr_writer :vat_amount

          sig do
            params(
              id: String,
              amount: Float,
              created_at: String,
              currency: String,
              description: String,
              fee: Integer,
              net: Float,
              payout_pending_days: Integer,
              status: String,
              tax_amount: Integer,
              type: String,
              user:
                Onlyfans::Models::TransactionListResponse::Data::List::User::OrHash,
              vat_amount: Integer
            ).returns(T.attached_class)
          end
          def self.new(
            id: nil,
            amount: nil,
            created_at: nil,
            currency: nil,
            description: nil,
            fee: nil,
            net: nil,
            payout_pending_days: nil,
            status: nil,
            tax_amount: nil,
            type: nil,
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
                fee: Integer,
                net: Float,
                payout_pending_days: Integer,
                status: String,
                tax_amount: Integer,
                type: String,
                user:
                  Onlyfans::Models::TransactionListResponse::Data::List::User,
                vat_amount: Integer
              }
            )
          end
          def to_hash
          end

          class User < Onlyfans::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Onlyfans::Models::TransactionListResponse::Data::List::User,
                  Onlyfans::Internal::AnyHash
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

            sig do
              returns(
                T.nilable(
                  Onlyfans::Models::TransactionListResponse::Data::List::User::AvatarThumbs
                )
              )
            end
            attr_reader :avatar_thumbs

            sig do
              params(
                avatar_thumbs:
                  Onlyfans::Models::TransactionListResponse::Data::List::User::AvatarThumbs::OrHash
              ).void
            end
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
                avatar_thumbs:
                  Onlyfans::Models::TransactionListResponse::Data::List::User::AvatarThumbs::OrHash,
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
                  avatar_thumbs:
                    Onlyfans::Models::TransactionListResponse::Data::List::User::AvatarThumbs,
                  is_verified: T::Boolean,
                  name: String,
                  username: String,
                  view: String
                }
              )
            end
            def to_hash
            end

            class AvatarThumbs < Onlyfans::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Onlyfans::Models::TransactionListResponse::Data::List::User::AvatarThumbs,
                    Onlyfans::Internal::AnyHash
                  )
                end

              sig { returns(T.nilable(String)) }
              attr_reader :c144

              sig { params(c144: String).void }
              attr_writer :c144

              sig { returns(T.nilable(String)) }
              attr_reader :c50

              sig { params(c50: String).void }
              attr_writer :c50

              sig do
                params(c144: String, c50: String).returns(T.attached_class)
              end
              def self.new(c144: nil, c50: nil)
              end

              sig { override.returns({ c144: String, c50: String }) }
              def to_hash
              end
            end
          end
        end
      end
    end
  end
end
