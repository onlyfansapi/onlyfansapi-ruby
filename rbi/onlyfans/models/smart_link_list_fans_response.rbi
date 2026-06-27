# typed: strong

module Onlyfans
  module Models
    class SmartLinkListFansResponse < Onlyfans::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Onlyfans::Models::SmartLinkListFansResponse,
            Onlyfans::Internal::AnyHash
          )
        end

      sig do
        returns(T.nilable(Onlyfans::Models::SmartLinkListFansResponse::Meta))
      end
      attr_reader :_meta

      sig do
        params(
          _meta: Onlyfans::Models::SmartLinkListFansResponse::Meta::OrHash
        ).void
      end
      attr_writer :_meta

      sig do
        returns(T.nilable(Onlyfans::Models::SmartLinkListFansResponse::Data))
      end
      attr_reader :data

      sig do
        params(
          data: Onlyfans::Models::SmartLinkListFansResponse::Data::OrHash
        ).void
      end
      attr_writer :data

      sig do
        params(
          _meta: Onlyfans::Models::SmartLinkListFansResponse::Meta::OrHash,
          data: Onlyfans::Models::SmartLinkListFansResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(_meta: nil, data: nil)
      end

      sig do
        override.returns(
          {
            _meta: Onlyfans::Models::SmartLinkListFansResponse::Meta,
            data: Onlyfans::Models::SmartLinkListFansResponse::Data
          }
        )
      end
      def to_hash
      end

      class Meta < Onlyfans::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Onlyfans::Models::SmartLinkListFansResponse::Meta,
              Onlyfans::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(Onlyfans::Models::SmartLinkListFansResponse::Meta::Cache)
          )
        end
        attr_reader :_cache

        sig do
          params(
            _cache:
              Onlyfans::Models::SmartLinkListFansResponse::Meta::Cache::OrHash
          ).void
        end
        attr_writer :_cache

        sig do
          returns(
            T.nilable(
              Onlyfans::Models::SmartLinkListFansResponse::Meta::Credits
            )
          )
        end
        attr_reader :_credits

        sig do
          params(
            _credits:
              Onlyfans::Models::SmartLinkListFansResponse::Meta::Credits::OrHash
          ).void
        end
        attr_writer :_credits

        sig do
          params(
            _cache:
              Onlyfans::Models::SmartLinkListFansResponse::Meta::Cache::OrHash,
            _credits:
              Onlyfans::Models::SmartLinkListFansResponse::Meta::Credits::OrHash
          ).returns(T.attached_class)
        end
        def self.new(_cache: nil, _credits: nil)
        end

        sig do
          override.returns(
            {
              _cache: Onlyfans::Models::SmartLinkListFansResponse::Meta::Cache,
              _credits:
                Onlyfans::Models::SmartLinkListFansResponse::Meta::Credits
            }
          )
        end
        def to_hash
        end

        class Cache < Onlyfans::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfans::Models::SmartLinkListFansResponse::Meta::Cache,
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
                Onlyfans::Models::SmartLinkListFansResponse::Meta::Credits,
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
      end

      class Data < Onlyfans::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Onlyfans::Models::SmartLinkListFansResponse::Data,
              Onlyfans::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              Onlyfans::Models::SmartLinkListFansResponse::Data::Filters
            )
          )
        end
        attr_reader :filters

        sig do
          params(
            filters:
              Onlyfans::Models::SmartLinkListFansResponse::Data::Filters::OrHash
          ).void
        end
        attr_writer :filters

        sig do
          returns(
            T.nilable(
              T::Array[Onlyfans::Models::SmartLinkListFansResponse::Data::Row]
            )
          )
        end
        attr_reader :rows

        sig do
          params(
            rows:
              T::Array[
                Onlyfans::Models::SmartLinkListFansResponse::Data::Row::OrHash
              ]
          ).void
        end
        attr_writer :rows

        sig do
          returns(
            T.nilable(
              Onlyfans::Models::SmartLinkListFansResponse::Data::Summary
            )
          )
        end
        attr_reader :summary

        sig do
          params(
            summary:
              Onlyfans::Models::SmartLinkListFansResponse::Data::Summary::OrHash
          ).void
        end
        attr_writer :summary

        sig do
          params(
            filters:
              Onlyfans::Models::SmartLinkListFansResponse::Data::Filters::OrHash,
            rows:
              T::Array[
                Onlyfans::Models::SmartLinkListFansResponse::Data::Row::OrHash
              ],
            summary:
              Onlyfans::Models::SmartLinkListFansResponse::Data::Summary::OrHash
          ).returns(T.attached_class)
        end
        def self.new(filters: nil, rows: nil, summary: nil)
        end

        sig do
          override.returns(
            {
              filters:
                Onlyfans::Models::SmartLinkListFansResponse::Data::Filters,
              rows:
                T::Array[
                  Onlyfans::Models::SmartLinkListFansResponse::Data::Row
                ],
              summary:
                Onlyfans::Models::SmartLinkListFansResponse::Data::Summary
            }
          )
        end
        def to_hash
        end

        class Filters < Onlyfans::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfans::Models::SmartLinkListFansResponse::Data::Filters,
                Onlyfans::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(String)) }
          attr_accessor :has_messages

          sig { returns(T.nilable(Integer)) }
          attr_reader :limit

          sig { params(limit: Integer).void }
          attr_writer :limit

          sig { returns(T.nilable(String)) }
          attr_accessor :min_messages_sent_by_fan

          sig { returns(T.nilable(String)) }
          attr_accessor :min_revenue_net

          sig { returns(T.nilable(String)) }
          attr_accessor :min_tips_net

          sig { returns(T.nilable(Integer)) }
          attr_reader :offset

          sig { params(offset: Integer).void }
          attr_writer :offset

          sig { returns(T.nilable(String)) }
          attr_accessor :previously_subscribed

          sig { returns(T.nilable(String)) }
          attr_reader :sort

          sig { params(sort: String).void }
          attr_writer :sort

          sig { returns(T.nilable(String)) }
          attr_accessor :subscribed_using_promo

          sig do
            params(
              has_messages: T.nilable(String),
              limit: Integer,
              min_messages_sent_by_fan: T.nilable(String),
              min_revenue_net: T.nilable(String),
              min_tips_net: T.nilable(String),
              offset: Integer,
              previously_subscribed: T.nilable(String),
              sort: String,
              subscribed_using_promo: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(
            has_messages: nil,
            limit: nil,
            min_messages_sent_by_fan: nil,
            min_revenue_net: nil,
            min_tips_net: nil,
            offset: nil,
            previously_subscribed: nil,
            sort: nil,
            subscribed_using_promo: nil
          )
          end

          sig do
            override.returns(
              {
                has_messages: T.nilable(String),
                limit: Integer,
                min_messages_sent_by_fan: T.nilable(String),
                min_revenue_net: T.nilable(String),
                min_tips_net: T.nilable(String),
                offset: Integer,
                previously_subscribed: T.nilable(String),
                sort: String,
                subscribed_using_promo: T.nilable(String)
              }
            )
          end
          def to_hash
          end
        end

        class Row < Onlyfans::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfans::Models::SmartLinkListFansResponse::Data::Row,
                Onlyfans::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(String)) }
          attr_reader :avatar_url

          sig { params(avatar_url: String).void }
          attr_writer :avatar_url

          sig { returns(T.nilable(String)) }
          attr_reader :click_id

          sig { params(click_id: String).void }
          attr_writer :click_id

          sig { returns(T.nilable(Integer)) }
          attr_reader :conversion_id

          sig { params(conversion_id: Integer).void }
          attr_writer :conversion_id

          sig { returns(T.nilable(String)) }
          attr_reader :converted_at

          sig { params(converted_at: String).void }
          attr_writer :converted_at

          sig { returns(T.nilable(String)) }
          attr_reader :external_click_id

          sig { params(external_click_id: String).void }
          attr_writer :external_click_id

          sig { returns(T.nilable(Integer)) }
          attr_reader :fan_id

          sig { params(fan_id: Integer).void }
          attr_writer :fan_id

          sig { returns(T.nilable(Integer)) }
          attr_reader :messages_sent_by_fan

          sig { params(messages_sent_by_fan: Integer).void }
          attr_writer :messages_sent_by_fan

          sig { returns(T.nilable(String)) }
          attr_reader :name

          sig { params(name: String).void }
          attr_writer :name

          sig { returns(T.nilable(String)) }
          attr_reader :onlyfans_id

          sig { params(onlyfans_id: String).void }
          attr_writer :onlyfans_id

          sig { returns(T.nilable(Integer)) }
          attr_reader :revenue_net

          sig { params(revenue_net: Integer).void }
          attr_writer :revenue_net

          sig do
            returns(
              T.nilable(
                Onlyfans::Models::SmartLinkListFansResponse::Data::Row::SubscriptionInsights
              )
            )
          end
          attr_reader :subscription_insights

          sig do
            params(
              subscription_insights:
                Onlyfans::Models::SmartLinkListFansResponse::Data::Row::SubscriptionInsights::OrHash
            ).void
          end
          attr_writer :subscription_insights

          sig { returns(T.nilable(Integer)) }
          attr_reader :tips_net

          sig { params(tips_net: Integer).void }
          attr_writer :tips_net

          sig { returns(T.nilable(String)) }
          attr_reader :username

          sig { params(username: String).void }
          attr_writer :username

          sig do
            params(
              avatar_url: String,
              click_id: String,
              conversion_id: Integer,
              converted_at: String,
              external_click_id: String,
              fan_id: Integer,
              messages_sent_by_fan: Integer,
              name: String,
              onlyfans_id: String,
              revenue_net: Integer,
              subscription_insights:
                Onlyfans::Models::SmartLinkListFansResponse::Data::Row::SubscriptionInsights::OrHash,
              tips_net: Integer,
              username: String
            ).returns(T.attached_class)
          end
          def self.new(
            avatar_url: nil,
            click_id: nil,
            conversion_id: nil,
            converted_at: nil,
            external_click_id: nil,
            fan_id: nil,
            messages_sent_by_fan: nil,
            name: nil,
            onlyfans_id: nil,
            revenue_net: nil,
            subscription_insights: nil,
            tips_net: nil,
            username: nil
          )
          end

          sig do
            override.returns(
              {
                avatar_url: String,
                click_id: String,
                conversion_id: Integer,
                converted_at: String,
                external_click_id: String,
                fan_id: Integer,
                messages_sent_by_fan: Integer,
                name: String,
                onlyfans_id: String,
                revenue_net: Integer,
                subscription_insights:
                  Onlyfans::Models::SmartLinkListFansResponse::Data::Row::SubscriptionInsights,
                tips_net: Integer,
                username: String
              }
            )
          end
          def to_hash
          end

          class SubscriptionInsights < Onlyfans::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Onlyfans::Models::SmartLinkListFansResponse::Data::Row::SubscriptionInsights,
                  Onlyfans::Internal::AnyHash
                )
              end

            sig do
              returns(
                T.nilable(
                  Onlyfans::Models::SmartLinkListFansResponse::Data::Row::SubscriptionInsights::CurrentSubscription
                )
              )
            end
            attr_reader :current_subscription

            sig do
              params(
                current_subscription:
                  Onlyfans::Models::SmartLinkListFansResponse::Data::Row::SubscriptionInsights::CurrentSubscription::OrHash
              ).void
            end
            attr_writer :current_subscription

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :current_subscription_from_smart_link

            sig do
              params(current_subscription_from_smart_link: T::Boolean).void
            end
            attr_writer :current_subscription_from_smart_link

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :has_subscription_data

            sig { params(has_subscription_data: T::Boolean).void }
            attr_writer :has_subscription_data

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :previously_subscribed

            sig { params(previously_subscribed: T::Boolean).void }
            attr_writer :previously_subscribed

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :subscribed_using_promo

            sig { params(subscribed_using_promo: T::Boolean).void }
            attr_writer :subscribed_using_promo

            sig do
              params(
                current_subscription:
                  Onlyfans::Models::SmartLinkListFansResponse::Data::Row::SubscriptionInsights::CurrentSubscription::OrHash,
                current_subscription_from_smart_link: T::Boolean,
                has_subscription_data: T::Boolean,
                previously_subscribed: T::Boolean,
                subscribed_using_promo: T::Boolean
              ).returns(T.attached_class)
            end
            def self.new(
              current_subscription: nil,
              current_subscription_from_smart_link: nil,
              has_subscription_data: nil,
              previously_subscribed: nil,
              subscribed_using_promo: nil
            )
            end

            sig do
              override.returns(
                {
                  current_subscription:
                    Onlyfans::Models::SmartLinkListFansResponse::Data::Row::SubscriptionInsights::CurrentSubscription,
                  current_subscription_from_smart_link: T::Boolean,
                  has_subscription_data: T::Boolean,
                  previously_subscribed: T::Boolean,
                  subscribed_using_promo: T::Boolean
                }
              )
            end
            def to_hash
            end

            class CurrentSubscription < Onlyfans::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Onlyfans::Models::SmartLinkListFansResponse::Data::Row::SubscriptionInsights::CurrentSubscription,
                    Onlyfans::Internal::AnyHash
                  )
                end

              sig { returns(T.nilable(String)) }
              attr_reader :action

              sig { params(action: String).void }
              attr_writer :action

              sig { returns(T.nilable(T::Boolean)) }
              attr_reader :is_free

              sig { params(is_free: T::Boolean).void }
              attr_writer :is_free

              sig { returns(T.nilable(Integer)) }
              attr_reader :price

              sig { params(price: Integer).void }
              attr_writer :price

              sig { returns(T.nilable(Integer)) }
              attr_reader :regular_price

              sig { params(regular_price: Integer).void }
              attr_writer :regular_price

              sig { returns(T.nilable(String)) }
              attr_reader :type

              sig { params(type: String).void }
              attr_writer :type

              sig do
                params(
                  action: String,
                  is_free: T::Boolean,
                  price: Integer,
                  regular_price: Integer,
                  type: String
                ).returns(T.attached_class)
              end
              def self.new(
                action: nil,
                is_free: nil,
                price: nil,
                regular_price: nil,
                type: nil
              )
              end

              sig do
                override.returns(
                  {
                    action: String,
                    is_free: T::Boolean,
                    price: Integer,
                    regular_price: Integer,
                    type: String
                  }
                )
              end
              def to_hash
              end
            end
          end
        end

        class Summary < Onlyfans::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfans::Models::SmartLinkListFansResponse::Data::Summary,
                Onlyfans::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(Integer)) }
          attr_reader :fans_total

          sig { params(fans_total: Integer).void }
          attr_writer :fans_total

          sig { returns(T.nilable(Integer)) }
          attr_reader :fans_with_3_plus_messages_total

          sig { params(fans_with_3_plus_messages_total: Integer).void }
          attr_writer :fans_with_3_plus_messages_total

          sig { returns(T.nilable(Integer)) }
          attr_reader :revenue_net_total

          sig { params(revenue_net_total: Integer).void }
          attr_writer :revenue_net_total

          sig { returns(T.nilable(Integer)) }
          attr_reader :tips_net_total

          sig { params(tips_net_total: Integer).void }
          attr_writer :tips_net_total

          sig do
            params(
              fans_total: Integer,
              fans_with_3_plus_messages_total: Integer,
              revenue_net_total: Integer,
              tips_net_total: Integer
            ).returns(T.attached_class)
          end
          def self.new(
            fans_total: nil,
            fans_with_3_plus_messages_total: nil,
            revenue_net_total: nil,
            tips_net_total: nil
          )
          end

          sig do
            override.returns(
              {
                fans_total: Integer,
                fans_with_3_plus_messages_total: Integer,
                revenue_net_total: Integer,
                tips_net_total: Integer
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
