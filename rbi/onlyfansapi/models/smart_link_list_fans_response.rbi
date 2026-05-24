# typed: strong

module Onlyfansapi
  module Models
    class SmartLinkListFansResponse < Onlyfansapi::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Onlyfansapi::Models::SmartLinkListFansResponse,
            Onlyfansapi::Internal::AnyHash
          )
        end

      sig do
        returns(T.nilable(Onlyfansapi::Models::SmartLinkListFansResponse::Meta))
      end
      attr_reader :_meta

      sig do
        params(
          _meta: Onlyfansapi::Models::SmartLinkListFansResponse::Meta::OrHash
        ).void
      end
      attr_writer :_meta

      sig do
        returns(T.nilable(Onlyfansapi::Models::SmartLinkListFansResponse::Data))
      end
      attr_reader :data

      sig do
        params(
          data: Onlyfansapi::Models::SmartLinkListFansResponse::Data::OrHash
        ).void
      end
      attr_writer :data

      sig do
        params(
          _meta: Onlyfansapi::Models::SmartLinkListFansResponse::Meta::OrHash,
          data: Onlyfansapi::Models::SmartLinkListFansResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(_meta: nil, data: nil)
      end

      sig do
        override.returns(
          {
            _meta: Onlyfansapi::Models::SmartLinkListFansResponse::Meta,
            data: Onlyfansapi::Models::SmartLinkListFansResponse::Data
          }
        )
      end
      def to_hash
      end

      class Meta < Onlyfansapi::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Onlyfansapi::Models::SmartLinkListFansResponse::Meta,
              Onlyfansapi::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              Onlyfansapi::Models::SmartLinkListFansResponse::Meta::Cache
            )
          )
        end
        attr_reader :_cache

        sig do
          params(
            _cache:
              Onlyfansapi::Models::SmartLinkListFansResponse::Meta::Cache::OrHash
          ).void
        end
        attr_writer :_cache

        sig do
          returns(
            T.nilable(
              Onlyfansapi::Models::SmartLinkListFansResponse::Meta::Credits
            )
          )
        end
        attr_reader :_credits

        sig do
          params(
            _credits:
              Onlyfansapi::Models::SmartLinkListFansResponse::Meta::Credits::OrHash
          ).void
        end
        attr_writer :_credits

        sig do
          params(
            _cache:
              Onlyfansapi::Models::SmartLinkListFansResponse::Meta::Cache::OrHash,
            _credits:
              Onlyfansapi::Models::SmartLinkListFansResponse::Meta::Credits::OrHash
          ).returns(T.attached_class)
        end
        def self.new(_cache: nil, _credits: nil)
        end

        sig do
          override.returns(
            {
              _cache:
                Onlyfansapi::Models::SmartLinkListFansResponse::Meta::Cache,
              _credits:
                Onlyfansapi::Models::SmartLinkListFansResponse::Meta::Credits
            }
          )
        end
        def to_hash
        end

        class Cache < Onlyfansapi::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfansapi::Models::SmartLinkListFansResponse::Meta::Cache,
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
                Onlyfansapi::Models::SmartLinkListFansResponse::Meta::Credits,
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
      end

      class Data < Onlyfansapi::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Onlyfansapi::Models::SmartLinkListFansResponse::Data,
              Onlyfansapi::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              Onlyfansapi::Models::SmartLinkListFansResponse::Data::Filters
            )
          )
        end
        attr_reader :filters

        sig do
          params(
            filters:
              Onlyfansapi::Models::SmartLinkListFansResponse::Data::Filters::OrHash
          ).void
        end
        attr_writer :filters

        sig do
          returns(
            T.nilable(
              T::Array[
                Onlyfansapi::Models::SmartLinkListFansResponse::Data::Row
              ]
            )
          )
        end
        attr_reader :rows

        sig do
          params(
            rows:
              T::Array[
                Onlyfansapi::Models::SmartLinkListFansResponse::Data::Row::OrHash
              ]
          ).void
        end
        attr_writer :rows

        sig do
          returns(
            T.nilable(
              Onlyfansapi::Models::SmartLinkListFansResponse::Data::Summary
            )
          )
        end
        attr_reader :summary

        sig do
          params(
            summary:
              Onlyfansapi::Models::SmartLinkListFansResponse::Data::Summary::OrHash
          ).void
        end
        attr_writer :summary

        sig do
          params(
            filters:
              Onlyfansapi::Models::SmartLinkListFansResponse::Data::Filters::OrHash,
            rows:
              T::Array[
                Onlyfansapi::Models::SmartLinkListFansResponse::Data::Row::OrHash
              ],
            summary:
              Onlyfansapi::Models::SmartLinkListFansResponse::Data::Summary::OrHash
          ).returns(T.attached_class)
        end
        def self.new(filters: nil, rows: nil, summary: nil)
        end

        sig do
          override.returns(
            {
              filters:
                Onlyfansapi::Models::SmartLinkListFansResponse::Data::Filters,
              rows:
                T::Array[
                  Onlyfansapi::Models::SmartLinkListFansResponse::Data::Row
                ],
              summary:
                Onlyfansapi::Models::SmartLinkListFansResponse::Data::Summary
            }
          )
        end
        def to_hash
        end

        class Filters < Onlyfansapi::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfansapi::Models::SmartLinkListFansResponse::Data::Filters,
                Onlyfansapi::Internal::AnyHash
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
          attr_reader :sort

          sig { params(sort: String).void }
          attr_writer :sort

          sig do
            params(
              has_messages: T.nilable(String),
              limit: Integer,
              min_messages_sent_by_fan: T.nilable(String),
              min_revenue_net: T.nilable(String),
              min_tips_net: T.nilable(String),
              offset: Integer,
              sort: String
            ).returns(T.attached_class)
          end
          def self.new(
            has_messages: nil,
            limit: nil,
            min_messages_sent_by_fan: nil,
            min_revenue_net: nil,
            min_tips_net: nil,
            offset: nil,
            sort: nil
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
                sort: String
              }
            )
          end
          def to_hash
          end
        end

        class Row < Onlyfansapi::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfansapi::Models::SmartLinkListFansResponse::Data::Row,
                Onlyfansapi::Internal::AnyHash
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
                tips_net: Integer,
                username: String
              }
            )
          end
          def to_hash
          end
        end

        class Summary < Onlyfansapi::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfansapi::Models::SmartLinkListFansResponse::Data::Summary,
                Onlyfansapi::Internal::AnyHash
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
