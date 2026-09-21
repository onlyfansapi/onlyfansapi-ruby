# frozen_string_literal: true

module Onlyfans
  [Onlyfans::Internal::Type::BaseModel, *Onlyfans::Internal::Type::BaseModel.subclasses].each do |cls|
    cls.define_sorbet_constant!(:OrHash) { T.type_alias { T.any(cls, Onlyfans::Internal::AnyHash) } }
  end

  Onlyfans::Internal::Util.walk_namespaces(Onlyfans::Models).each do |mod|
    case mod
    in Onlyfans::Internal::Type::Enum | Onlyfans::Internal::Type::Union
      mod.constants.each do |name|
        case mod.const_get(name)
        in true | false
          mod.define_sorbet_constant!(:TaggedBoolean) { T.type_alias { T::Boolean } }
          mod.define_sorbet_constant!(:OrBoolean) { T.type_alias { T::Boolean } }
        in Integer
          mod.define_sorbet_constant!(:TaggedInteger) { T.type_alias { Integer } }
          mod.define_sorbet_constant!(:OrInteger) { T.type_alias { Integer } }
        in Float
          mod.define_sorbet_constant!(:TaggedFloat) { T.type_alias { Float } }
          mod.define_sorbet_constant!(:OrFloat) { T.type_alias { Float } }
        in Symbol
          mod.define_sorbet_constant!(:TaggedSymbol) { T.type_alias { Symbol } }
          mod.define_sorbet_constant!(:OrSymbol) { T.type_alias { T.any(Symbol, String) } }
        else
        end
      end
    else
    end
  end

  Onlyfans::Internal::Util.walk_namespaces(Onlyfans::Models)
                          .lazy
                          .grep(Onlyfans::Internal::Type::Union)
                          .each do |mod|
    const = :Variants
    next if mod.sorbet_constant_defined?(const)

    mod.define_sorbet_constant!(const) { T.type_alias { mod.to_sorbet_type } }
  end

  AccountDisconnectParams = Onlyfans::Models::AccountDisconnectParams

  AccountListParams = Onlyfans::Models::AccountListParams

  Analytics = Onlyfans::Models::Analytics

  AuthenticatePollStatusParams = Onlyfans::Models::AuthenticatePollStatusParams

  AuthenticateReauthenticateParams = Onlyfans::Models::AuthenticateReauthenticateParams

  AuthenticateSend2faEmailParams = Onlyfans::Models::AuthenticateSend2faEmailParams

  AuthenticateStartParams = Onlyfans::Models::AuthenticateStartParams

  AuthenticateSubmit2faParams = Onlyfans::Models::AuthenticateSubmit2faParams

  Banking = Onlyfans::Models::Banking

  BankingListAvailablePayoutSystemsParams = Onlyfans::Models::BankingListAvailablePayoutSystemsParams

  BankingListCountriesParams = Onlyfans::Models::BankingListCountriesParams

  BundleCreateParams = Onlyfans::Models::BundleCreateParams

  BundleDeleteParams = Onlyfans::Models::BundleDeleteParams

  BundleListParams = Onlyfans::Models::BundleListParams

  ChargebackCalculateRatioParams = Onlyfans::Models::ChargebackCalculateRatioParams

  ChargebackListParams = Onlyfans::Models::ChargebackListParams

  ChargebackListStatisticsParams = Onlyfans::Models::ChargebackListStatisticsParams

  ChatDeleteParams = Onlyfans::Models::ChatDeleteParams

  ChatHideParams = Onlyfans::Models::ChatHideParams

  ChatListMediaParams = Onlyfans::Models::ChatListMediaParams

  ChatListParams = Onlyfans::Models::ChatListParams

  ChatMarkAsReadParams = Onlyfans::Models::ChatMarkAsReadParams

  ChatMarkAsUnreadParams = Onlyfans::Models::ChatMarkAsUnreadParams

  ChatMuteParams = Onlyfans::Models::ChatMuteParams

  Chats = Onlyfans::Models::Chats

  ChatStartTypingParams = Onlyfans::Models::ChatStartTypingParams

  ChatUnmuteParams = Onlyfans::Models::ChatUnmuteParams

  ClientSessionCreateParams = Onlyfans::Models::ClientSessionCreateParams

  DataExportCancelParams = Onlyfans::Models::DataExportCancelParams

  DataExportCreateParams = Onlyfans::Models::DataExportCreateParams

  DataExportListParams = Onlyfans::Models::DataExportListParams

  DataExportRetrieveParams = Onlyfans::Models::DataExportRetrieveParams

  DataExportRetryParams = Onlyfans::Models::DataExportRetryParams

  DataExportStartParams = Onlyfans::Models::DataExportStartParams

  Engagement = Onlyfans::Models::Engagement

  FanGetSubscriptionHistoryParams = Onlyfans::Models::FanGetSubscriptionHistoryParams

  FanListActiveParams = Onlyfans::Models::FanListActiveParams

  FanListAllParams = Onlyfans::Models::FanListAllParams

  FanListExpiredParams = Onlyfans::Models::FanListExpiredParams

  FanListLatestParams = Onlyfans::Models::FanListLatestParams

  FanListTopParams = Onlyfans::Models::FanListTopParams

  Fans = Onlyfans::Models::Fans

  FanSetCustomNameParams = Onlyfans::Models::FanSetCustomNameParams

  FollowingListActiveParams = Onlyfans::Models::FollowingListActiveParams

  FollowingListAllParams = Onlyfans::Models::FollowingListAllParams

  FollowingListExpiredParams = Onlyfans::Models::FollowingListExpiredParams

  GiphyListTrendingParams = Onlyfans::Models::GiphyListTrendingParams

  GiphySearchParams = Onlyfans::Models::GiphySearchParams

  LinkTagListParams = Onlyfans::Models::LinkTagListParams

  MassMessagingDeleteParams = Onlyfans::Models::MassMessagingDeleteParams

  MassMessagingListParams = Onlyfans::Models::MassMessagingListParams

  MassMessagingRetrieveOverviewParams = Onlyfans::Models::MassMessagingRetrieveOverviewParams

  MassMessagingRetrieveParams = Onlyfans::Models::MassMessagingRetrieveParams

  MassMessagingSendParams = Onlyfans::Models::MassMessagingSendParams

  MassMessagingUpdateParams = Onlyfans::Models::MassMessagingUpdateParams

  Media = Onlyfans::Models::Media

  MediaDownloadParams = Onlyfans::Models::MediaDownloadParams

  MediaScrapeParams = Onlyfans::Models::MediaScrapeParams

  MediaUploadParams = Onlyfans::Models::MediaUploadParams

  MeGetModelStartDateParams = Onlyfans::Models::MeGetModelStartDateParams

  MeGetTopPercentageParams = Onlyfans::Models::MeGetTopPercentageParams

  MeRetrieveParams = Onlyfans::Models::MeRetrieveParams

  NotificationGetCountsParams = Onlyfans::Models::NotificationGetCountsParams

  NotificationListParams = Onlyfans::Models::NotificationListParams

  NotificationMarkAllAsReadParams = Onlyfans::Models::NotificationMarkAllAsReadParams

  Notifications = Onlyfans::Models::Notifications

  NotificationSearchUsersParams = Onlyfans::Models::NotificationSearchUsersParams

  PayoutListRequestsParams = Onlyfans::Models::PayoutListRequestsParams

  PayoutRequestManualWithdrawalParams = Onlyfans::Models::PayoutRequestManualWithdrawalParams

  PayoutRetrieveBalancesParams = Onlyfans::Models::PayoutRetrieveBalancesParams

  PayoutRetrieveEarningStatisticsParams = Onlyfans::Models::PayoutRetrieveEarningStatisticsParams

  PayoutRetrieveEligibilityParams = Onlyfans::Models::PayoutRetrieveEligibilityParams

  PayoutUpdateFrequencyParams = Onlyfans::Models::PayoutUpdateFrequencyParams

  PostArchiveParams = Onlyfans::Models::PostArchiveParams

  PostCreateParams = Onlyfans::Models::PostCreateParams

  PostDeleteParams = Onlyfans::Models::PostDeleteParams

  PostListParams = Onlyfans::Models::PostListParams

  PostPinParams = Onlyfans::Models::PostPinParams

  PostRetrieveParams = Onlyfans::Models::PostRetrieveParams

  Posts = Onlyfans::Models::Posts

  PostStatsParams = Onlyfans::Models::PostStatsParams

  PostUnarchiveParams = Onlyfans::Models::PostUnarchiveParams

  PostUpdateParams = Onlyfans::Models::PostUpdateParams

  ProfileRetrieveParams = Onlyfans::Models::ProfileRetrieveParams

  PromotionCreateParams = Onlyfans::Models::PromotionCreateParams

  PromotionDeleteParams = Onlyfans::Models::PromotionDeleteParams

  PromotionListParams = Onlyfans::Models::PromotionListParams

  PromotionStopParams = Onlyfans::Models::PromotionStopParams

  QueueCountParams = Onlyfans::Models::QueueCountParams

  QueueListParams = Onlyfans::Models::QueueListParams

  QueuePublishParams = Onlyfans::Models::QueuePublishParams

  ReleaseFormCreateInvitationLinkParams = Onlyfans::Models::ReleaseFormCreateInvitationLinkParams

  ReleaseFormCreateReleaseFormParams = Onlyfans::Models::ReleaseFormCreateReleaseFormParams

  ReleaseFormListTaggableUsersParams = Onlyfans::Models::ReleaseFormListTaggableUsersParams

  SavedForLater = Onlyfans::Models::SavedForLater

  SearchProfilesParams = Onlyfans::Models::SearchProfilesParams

  SettingCheckUsernameAvailabilityParams = Onlyfans::Models::SettingCheckUsernameAvailabilityParams

  SettingRetrieveParams = Onlyfans::Models::SettingRetrieveParams

  Settings = Onlyfans::Models::Settings

  SettingUpdateProfileParams = Onlyfans::Models::SettingUpdateProfileParams

  SettingUpdateSubscriptionPriceParams = Onlyfans::Models::SettingUpdateSubscriptionPriceParams

  SharedTrackingLinkListParams = Onlyfans::Models::SharedTrackingLinkListParams

  SharedTrackingLinkRevokeAccessParams = Onlyfans::Models::SharedTrackingLinkRevokeAccessParams

  SharedTrackingLinks = Onlyfans::Models::SharedTrackingLinks

  SharedTrialLinkListParams = Onlyfans::Models::SharedTrialLinkListParams

  SharedTrialLinkRevokeAccessParams = Onlyfans::Models::SharedTrialLinkRevokeAccessParams

  SharedTrialLinks = Onlyfans::Models::SharedTrialLinks

  SmartLinkCreateParams = Onlyfans::Models::SmartLinkCreateParams

  SmartLinkDeleteParams = Onlyfans::Models::SmartLinkDeleteParams

  SmartLinkListClicksParams = Onlyfans::Models::SmartLinkListClicksParams

  SmartLinkListConversionsParams = Onlyfans::Models::SmartLinkListConversionsParams

  SmartLinkListFansParams = Onlyfans::Models::SmartLinkListFansParams

  SmartLinkListParams = Onlyfans::Models::SmartLinkListParams

  SmartLinkListSpendersParams = Onlyfans::Models::SmartLinkListSpendersParams

  SmartLinkPostbackCreateParams = Onlyfans::Models::SmartLinkPostbackCreateParams

  SmartLinkPostbackDeleteParams = Onlyfans::Models::SmartLinkPostbackDeleteParams

  SmartLinkPostbackListParams = Onlyfans::Models::SmartLinkPostbackListParams

  SmartLinkPostbackRetrieveParams = Onlyfans::Models::SmartLinkPostbackRetrieveParams

  SmartLinkPostbackUpdateParams = Onlyfans::Models::SmartLinkPostbackUpdateParams

  SmartLinkRetrieveCohortArpsParams = Onlyfans::Models::SmartLinkRetrieveCohortArpsParams

  SmartLinkRetrieveParams = Onlyfans::Models::SmartLinkRetrieveParams

  SmartLinkRetrieveStatsParams = Onlyfans::Models::SmartLinkRetrieveStatsParams

  StatisticCalculateTotalTransactionsParams = Onlyfans::Models::StatisticCalculateTotalTransactionsParams

  StatisticGetOverviewParams = Onlyfans::Models::StatisticGetOverviewParams

  StatisticGetSubscriberMetricsParams = Onlyfans::Models::StatisticGetSubscriberMetricsParams

  Statistics = Onlyfans::Models::Statistics

  StoredListSharedTrackingLinksParams = Onlyfans::Models::StoredListSharedTrackingLinksParams

  StoredListSharedTrialLinksParams = Onlyfans::Models::StoredListSharedTrialLinksParams

  StoredListTrackingLinksParams = Onlyfans::Models::StoredListTrackingLinksParams

  StoredListTrialLinksParams = Onlyfans::Models::StoredListTrialLinksParams

  Stories = Onlyfans::Models::Stories

  StoryCreateParams = Onlyfans::Models::StoryCreateParams

  StoryDeleteParams = Onlyfans::Models::StoryDeleteParams

  StoryListActiveParams = Onlyfans::Models::StoryListActiveParams

  StoryListArchiveParams = Onlyfans::Models::StoryListArchiveParams

  StoryListViewersParams = Onlyfans::Models::StoryListViewersParams

  StoryMarkAsWatchedParams = Onlyfans::Models::StoryMarkAsWatchedParams

  StoryRetrieveParams = Onlyfans::Models::StoryRetrieveParams

  StoryRetrieveStatsParams = Onlyfans::Models::StoryRetrieveStatsParams

  SubscriberRetrieveStatisticsParams = Onlyfans::Models::SubscriberRetrieveStatisticsParams

  TrackingLinkCreateParams = Onlyfans::Models::TrackingLinkCreateParams

  TrackingLinkDeleteParams = Onlyfans::Models::TrackingLinkDeleteParams

  TrackingLinkGetCohortArpsParams = Onlyfans::Models::TrackingLinkGetCohortArpsParams

  TrackingLinkGetStatsParams = Onlyfans::Models::TrackingLinkGetStatsParams

  TrackingLinkListParams = Onlyfans::Models::TrackingLinkListParams

  TrackingLinkListSpendersParams = Onlyfans::Models::TrackingLinkListSpendersParams

  TrackingLinkListSubscribersParams = Onlyfans::Models::TrackingLinkListSubscribersParams

  TrackingLinkRetrieveParams = Onlyfans::Models::TrackingLinkRetrieveParams

  TrackingLinks = Onlyfans::Models::TrackingLinks

  TransactionListParams = Onlyfans::Models::TransactionListParams

  TrialLinkCreateParams = Onlyfans::Models::TrialLinkCreateParams

  TrialLinkDeleteParams = Onlyfans::Models::TrialLinkDeleteParams

  TrialLinkListParams = Onlyfans::Models::TrialLinkListParams

  TrialLinkListSpendersParams = Onlyfans::Models::TrialLinkListSpendersParams

  TrialLinkListSubscribersParams = Onlyfans::Models::TrialLinkListSubscribersParams

  TrialLinkRetrieveCohortArpsParams = Onlyfans::Models::TrialLinkRetrieveCohortArpsParams

  TrialLinkRetrieveParams = Onlyfans::Models::TrialLinkRetrieveParams

  TrialLinkRetrieveStatsParams = Onlyfans::Models::TrialLinkRetrieveStatsParams

  TrialLinks = Onlyfans::Models::TrialLinks

  UserListCreateParams = Onlyfans::Models::UserListCreateParams

  UserListDeleteParams = Onlyfans::Models::UserListDeleteParams

  UserListListParams = Onlyfans::Models::UserListListParams

  UserListParams = Onlyfans::Models::UserListParams

  UserListRetrieveParams = Onlyfans::Models::UserListRetrieveParams

  UserLists = Onlyfans::Models::UserLists

  UserListUpdateParams = Onlyfans::Models::UserListUpdateParams

  UserRetrieveParams = Onlyfans::Models::UserRetrieveParams

  Users = Onlyfans::Models::Users

  WebhookCreateParams = Onlyfans::Models::WebhookCreateParams

  WebhookDeleteParams = Onlyfans::Models::WebhookDeleteParams

  WebhookListEventsParams = Onlyfans::Models::WebhookListEventsParams

  WebhookListParams = Onlyfans::Models::WebhookListParams

  WebhookRetrieveParams = Onlyfans::Models::WebhookRetrieveParams

  WebhookUpdateParams = Onlyfans::Models::WebhookUpdateParams

  WhoamiRetrieveParams = Onlyfans::Models::WhoamiRetrieveParams
end
