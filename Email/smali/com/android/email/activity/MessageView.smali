.class public Lcom/android/email/activity/MessageView;
.super Landroid/app/Activity;
.source "MessageView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/MessageView$19;,
        Lcom/android/email/activity/MessageView$MediaScannerNotifier;,
        Lcom/android/email/activity/MessageView$ControllerResults;,
        Lcom/android/email/activity/MessageView$LoadEmbeddedAttachmentsTask;,
        Lcom/android/email/activity/MessageView$LoadAttachmentsTask;,
        Lcom/android/email/activity/MessageView$LoadBodyTask;,
        Lcom/android/email/activity/MessageView$LoadMessageTask;,
        Lcom/android/email/activity/MessageView$LoadPrevNextTask;,
        Lcom/android/email/activity/MessageView$PresenceCheckTask;,
        Lcom/android/email/activity/MessageView$NextPrevObserver;,
        Lcom/android/email/activity/MessageView$ChangeTextSizeTask;,
        Lcom/android/email/activity/MessageView$TextSizeAdapter;,
        Lcom/android/email/activity/MessageView$TextSizeType;,
        Lcom/android/email/activity/MessageView$ChangeDisplayModeTask;,
        Lcom/android/email/activity/MessageView$DisplayViewAdapter;,
        Lcom/android/email/activity/MessageView$DisplayViewType;,
        Lcom/android/email/activity/MessageView$CheckNetworkInfo;,
        Lcom/android/email/activity/MessageView$CustomWebViewClient;,
        Lcom/android/email/activity/MessageView$MailBoxAdapter;,
        Lcom/android/email/activity/MessageView$ReceiverListAdapter;,
        Lcom/android/email/activity/MessageView$ReceiverViewType;,
        Lcom/android/email/activity/MessageView$MailBoxType;,
        Lcom/android/email/activity/MessageView$AttachmentInfo;,
        Lcom/android/email/activity/MessageView$BodyImageInfo;,
        Lcom/android/email/activity/MessageView$MessageViewHandler;
    }
.end annotation


# static fields
.field private static final BODY_CONTENT_PROJECTION:[Ljava/lang/String;

.field private static final IMG_TAG_START_REGEX:Ljava/util/regex/Pattern;

.field private static MESSAGEID_TO_ACCOUNTID_COLUMN_ACCOUNTID:I

.field private static MESSAGEID_TO_ACCOUNTID_PROJECTION:[Ljava/lang/String;

.field private static MESSAGEID_TO_MAILBOXID_COLUMN_MAILBOXID:I

.field private static MESSAGEID_TO_MAILBOXID_PROJECTION:[Ljava/lang/String;

.field private static final OWN_WEB_URL:Ljava/util/regex/Pattern;

.field private static final PRESENCE_STATUS_PROJECTION:[Ljava/lang/String;

.field private static final WEB_URL_PROTOCOL:Ljava/util/regex/Pattern;

.field private static mBodyImageCnt:I

.field private static mBodyImageInfo:[Lcom/android/email/activity/MessageView$BodyImageInfo;

.field private static mCheckedAccountId:J

.field private static final mColorChipResIds:[I

.field private static mContext:Landroid/content/Context;

.field private static mIsEAS:Z

.field private static mLoadMessageComplete:Z

.field private static mTextSize:I


# instance fields
.field ShowPicturesEnabled:Z

.field private allCCListCount:I

.field private allToListCount:I

.field private bForwardToOld:Z

.field private loadMoreMessage:Landroid/widget/Button;

.field private loadMoreMessageLinearLayout:Landroid/widget/LinearLayout;

.field private mAcceptButton:Landroid/widget/Button;

.field private mAccount:Lcom/android/email/provider/EmailContent$Account;

.field private mAccountId:J

.field private mAllDownloadIcon:Landroid/widget/TextView;

.field private mAlldownloadIconVisible:Z

.field private mAttachmentContainer:Landroid/view/View;

.field private mAttachmentIcon:Landroid/widget/ImageView;

.field private mAttachmentInnerContainer:Landroid/view/View;

.field private mAttachments:Landroid/widget/LinearLayout;

.field private mAttachmentsExpander:Landroid/widget/ToggleButton;

.field private mAttachmentsHeader:Landroid/widget/LinearLayout;

.field private mCacheDir:Ljava/lang/String;

.field private mCcHintView:Landroid/widget/TextView;

.field private mCcView:Landroid/widget/TextView;

.field private mChangeDisplayModeTask:Lcom/android/email/activity/MessageView$ChangeDisplayModeTask;

.field private mController:Lcom/android/email/Controller;

.field private mControllerCallback:Lcom/android/email/activity/MessageView$ControllerResults;

.field private mCurrentMessageID:J

.field private mCurrentOrientation:I

.field private mDateFormat:Ljava/text/DateFormat;

.field private mDateView:Landroid/widget/TextView;

.field private mDeclineButton:Landroid/widget/Button;

.field private mDetailContainer:Landroid/view/View;

.field private mDisplayMode:I

.field private mDownloadSmimeAttachment:Z

.field private mDownloading:Z

.field private mEncryptedIcon:Landroid/widget/ImageView;

.field private mExpanderIcon:Landroid/widget/ImageButton;

.field private mFavoriteIcon:Landroid/widget/ImageView;

.field private mFavoriteIconOff:Landroid/graphics/drawable/Drawable;

.field private mFavoriteIconOn:Landroid/graphics/drawable/Drawable;

.field private mForwarded:Ljava/lang/Boolean;

.field private mForwarding:Z

.field private mForwardingDialog:Landroid/app/ProgressDialog;

.field private mFromView:Landroid/widget/TextView;

.field private mHandler:Lcom/android/email/activity/MessageView$MessageViewHandler;

.field private mHtmlText:Ljava/lang/String;

.field private mIsDragged:Z

.field private mIsSms:Z

.field private mLegacyController:Lcom/android/email/MessagingController;

.field public mListCcs:[Ljava/lang/String;

.field public mListTos:[Ljava/lang/String;

.field private mLoadAttachmentId:J

.field private mLoadAttachmentName:Ljava/lang/String;

.field private mLoadAttachmentSave:Z

.field private mLoadAttachmentsTask:Lcom/android/email/activity/MessageView$LoadAttachmentsTask;

.field private mLoadBodyTask:Lcom/android/email/activity/MessageView$LoadBodyTask;

.field private mLoadEmbeddedAttachmentsTask:Lcom/android/email/activity/MessageView$LoadEmbeddedAttachmentsTask;

.field private mLoadMessageTask:Lcom/android/email/activity/MessageView$LoadMessageTask;

.field private mLoadMoreDialog:Landroid/app/ProgressDialog;

.field private mLoadPrevNextTask:Lcom/android/email/activity/MessageView$LoadPrevNextTask;

.field private mLogView:Z

.field private mMailboxId:J

.field private mMeetingLocationHintView:Landroid/widget/TextView;

.field private mMeetingLocationLayout:Landroid/widget/LinearLayout;

.field private mMeetingLocationView:Landroid/widget/TextView;

.field private mMeetingMaybe:Landroid/widget/Button;

.field private mMeetingNo:Landroid/widget/Button;

.field private mMeetingTimeHintView:Landroid/widget/TextView;

.field private mMeetingTimeHintView2:Landroid/widget/TextView;

.field private mMeetingTimeLayout:Landroid/widget/LinearLayout;

.field private mMeetingTimeLayout2:Landroid/widget/LinearLayout;

.field private mMeetingTimeView:Landroid/widget/TextView;

.field private mMeetingTimeView2:Landroid/widget/TextView;

.field private mMeetingYes:Landroid/widget/Button;

.field mMenu:Landroid/view/Menu;

.field private mMessage:Lcom/android/email/provider/EmailContent$Message;

.field private mMessageContentView:Landroid/webkit/WebView;

.field private mMessageId:J

.field private mMessageSwitchBar:Landroid/widget/LinearLayout;

.field private mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

.field private mMoreMessage:Landroid/view/View;

.field private mMoveListAdapter:Lcom/android/email/activity/MessageView$MailBoxAdapter;

.field private mMoveListToOtherAccountAdapter:Lcom/android/email/activity/MessageView$MailBoxAdapter;

.field private mMultiTouch:Z

.field private mNeedToReloadMessage:Z

.field private mNext:Landroid/view/View;

.field private mNextPrevObserver:Landroid/database/ContentObserver;

.field private mPresenceCheckTask:Lcom/android/email/activity/MessageView$PresenceCheckTask;

.field private mPrevNextCursor:Landroid/database/Cursor;

.field private mPrevious:Landroid/view/View;

.field private mPreviousMeetingResponse:I

.field private mPriorityHintView:Landroid/widget/TextView;

.field private mPriorityLayout:Landroid/widget/LinearLayout;

.field private mPriorityView:Landroid/widget/TextView;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mReceiverListAdapter:Lcom/android/email/activity/MessageView$ReceiverListAdapter;

.field private mRefreshedFromLoadMoreCB:Z

.field private mSaveAttachmentsCount:I

.field mSaveToCalendarEnabled:Z

.field private mSaveToCalendarHtmlText:Ljava/lang/String;

.field private mSenderPresenceView:Landroid/widget/ImageView;

.field private mShowPicturesSection:Landroid/view/MenuItem;

.field private mSignedIcon:Landroid/widget/ImageView;

.field private mSmsView:Landroid/widget/ImageView;

.field private mStartX:F

.field private mStartY:F

.field private mSubjectAttachmentIcon:Landroid/graphics/drawable/Drawable;

.field private mSubjectView:Landroid/widget/TextView;

.field private mSubjectView_marquee:Landroid/widget/TextView;

.field private mTentativeButton:Landroid/widget/Button;

.field private mTextSizeTask:Lcom/android/email/activity/MessageView$ChangeTextSizeTask;

.field private mTimeFormat:Ljava/text/DateFormat;

.field private mToHintView:Landroid/widget/TextView;

.field private mToView:Landroid/widget/TextView;

.field private mViewModeType:I

.field private mVmView:Landroid/widget/ImageView;

.field private mWaitForLoadMessageId:J

.field private mWaitToHideProgressDialog:Z

.field private meetingTime1:Ljava/lang/String;

.field private meetingTime2:Ljava/lang/String;

.field private view_for_topfocus:Landroid/widget/ImageButton;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v6, "_id"

    .line 255
    const-string v0, "<(?i)img\\s+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/email/activity/MessageView;->IMG_TAG_START_REGEX:Ljava/util/regex/Pattern;

    .line 257
    const-string v0, "(?i)http|https://"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/email/activity/MessageView;->WEB_URL_PROTOCOL:Ljava/util/regex/Pattern;

    .line 291
    const-string v0, "((?:(http|https|Http|Https|rtsp|Rtsp):\\/\\/(?:(?:[a-zA-Z0-9\\$\\-\\_\\.\\+\\!\\*\\\'\\(\\)\\,\\;\\?\\&\\=]|(?:\\%[a-fA-F0-9]{2})){1,64}(?:\\:(?:[a-zA-Z0-9\\$\\-\\_\\.\\+\\!\\*\\\'\\(\\)\\,\\;\\?\\&\\=]|(?:\\%[a-fA-F0-9]{2})){1,25})?\\@)?)?((?:(?:[a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef][a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef\\-]{0,64}\\.)+(?:(?:aero|arpa|asia|a[cdefgilmnoqrstuwxz])|(?:biz|b[abdefghijmnorstvwyz])|(?:cat|com|coop|c[acdfghiklmnoruvxyz])|d[ejkmoz]|(?:edu|e[cegrstu])|f[ijkmor]|(?:gov|g[abdefghilmnpqrstuwy])|h[kmnrtu]|(?:info|int|i[delmnoqrst])|(?:jobs|j[emop])|k[eghimnprwyz]|l[abcikrstuvy]|(?:mil|mobi|museum|m[acdeghklmnopqrstuvwxyz])|(?:name|net|n[acefgilopruz])|(?:org|om)|(?:pro|p[aefghklmnrstwy])|qa|r[eosuw]|s[abcdeghijklmnortuvyz]|(?:tel|travel|t[cdfghjklmnoprtvwz])|u[agksyz]|v[aceginu]|w[fs]|(?:xn\\-\\-0zwm56d|xn\\-\\-11b5bs3a9aj6g|xn\\-\\-80akhbyknj4f|xn\\-\\-9t4b11yi5a|xn\\-\\-deba0ad|xn\\-\\-g6w251d|xn\\-\\-hgbk6aj7f53bba|xn\\-\\-hlcj6aya9esc7a|xn\\-\\-jxalpdlp|xn\\-\\-kgbechtv|xn\\-\\-zckzah)|y[etu]|z[amw]))|(?:(?:25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9])\\.(?:25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9]|0)\\.(?:25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9]|0)\\.(?:25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[0-9])))(?:\\:\\d{1,5})?)(?:(\\/|\\?)(?:(?:[a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef\\;\\/\\?\\:\\@\\&\\=\\#\\~\\-\\.\\+\\!\\*\\\'\\(\\)\\,\\_])|(?:\\%[a-fA-F0-9]{2}))*)?(?:\\b|$)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/email/activity/MessageView;->OWN_WEB_URL:Ljava/util/regex/Pattern;

    .line 308
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v6, v0, v4

    const-string v1, "messageKey"

    aput-object v1, v0, v3

    const-string v1, "htmlContent"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "textContent"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/activity/MessageView;->BODY_CONTENT_PROJECTION:[Ljava/lang/String;

    .line 313
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "contact_presence"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/email/activity/MessageView;->PRESENCE_STATUS_PROJECTION:[Ljava/lang/String;

    .line 322
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v6, v0, v4

    const-string v1, "mailboxKey"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/email/activity/MessageView;->MESSAGEID_TO_MAILBOXID_PROJECTION:[Ljava/lang/String;

    .line 326
    sput v3, Lcom/android/email/activity/MessageView;->MESSAGEID_TO_MAILBOXID_COLUMN_MAILBOXID:I

    .line 327
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v6, v0, v4

    const-string v1, "accountKey"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/email/activity/MessageView;->MESSAGEID_TO_ACCOUNTID_PROJECTION:[Ljava/lang/String;

    .line 331
    sput v3, Lcom/android/email/activity/MessageView;->MESSAGEID_TO_ACCOUNTID_COLUMN_ACCOUNTID:I

    .line 433
    const/4 v0, 0x0

    sput-object v0, Lcom/android/email/activity/MessageView;->mContext:Landroid/content/Context;

    .line 534
    sput-boolean v3, Lcom/android/email/activity/MessageView;->mLoadMessageComplete:Z

    .line 536
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/android/email/activity/MessageView;->mCheckedAccountId:J

    .line 537
    sput-boolean v4, Lcom/android/email/activity/MessageView;->mIsEAS:Z

    .line 543
    const/16 v0, 0x15

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/email/activity/MessageView;->mColorChipResIds:[I

    return-void

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x2t 0x7ft
        0xct 0x0t 0x2t 0x7ft
        0xft 0x0t 0x2t 0x7ft
        0x10t 0x0t 0x2t 0x7ft
        0x11t 0x0t 0x2t 0x7ft
        0x12t 0x0t 0x2t 0x7ft
        0x13t 0x0t 0x2t 0x7ft
        0x14t 0x0t 0x2t 0x7ft
        0x15t 0x0t 0x2t 0x7ft
        0x2t 0x0t 0x2t 0x7ft
        0x3t 0x0t 0x2t 0x7ft
        0x4t 0x0t 0x2t 0x7ft
        0x5t 0x0t 0x2t 0x7ft
        0x6t 0x0t 0x2t 0x7ft
        0x7t 0x0t 0x2t 0x7ft
        0x8t 0x0t 0x2t 0x7ft
        0x9t 0x0t 0x2t 0x7ft
        0xat 0x0t 0x2t 0x7ft
        0xbt 0x0t 0x2t 0x7ft
        0xdt 0x0t 0x2t 0x7ft
        0xet 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 216
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 407
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/email/activity/MessageView;->mPreviousMeetingResponse:I

    .line 430
    iput-boolean v2, p0, Lcom/android/email/activity/MessageView;->mIsSms:Z

    .line 455
    new-instance v0, Lcom/android/email/activity/MessageView$MessageViewHandler;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MessageView$MessageViewHandler;-><init>(Lcom/android/email/activity/MessageView;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mHandler:Lcom/android/email/activity/MessageView$MessageViewHandler;

    .line 457
    new-instance v0, Lcom/android/email/activity/MessageView$ControllerResults;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MessageView$ControllerResults;-><init>(Lcom/android/email/activity/MessageView;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mControllerCallback:Lcom/android/email/activity/MessageView$ControllerResults;

    .line 472
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/email/activity/MessageView;->mCurrentOrientation:I

    .line 488
    iput-boolean v2, p0, Lcom/android/email/activity/MessageView;->mLogView:Z

    .line 490
    iput-boolean v2, p0, Lcom/android/email/activity/MessageView;->mMultiTouch:Z

    .line 500
    iput-object v3, p0, Lcom/android/email/activity/MessageView;->meetingTime1:Ljava/lang/String;

    .line 501
    iput-object v3, p0, Lcom/android/email/activity/MessageView;->meetingTime2:Ljava/lang/String;

    .line 506
    iput v1, p0, Lcom/android/email/activity/MessageView;->mStartX:F

    .line 507
    iput v1, p0, Lcom/android/email/activity/MessageView;->mStartY:F

    .line 508
    iput-boolean v2, p0, Lcom/android/email/activity/MessageView;->mIsDragged:Z

    .line 519
    iput-boolean v2, p0, Lcom/android/email/activity/MessageView;->bForwardToOld:Z

    .line 523
    iput-object v3, p0, Lcom/android/email/activity/MessageView;->mCacheDir:Ljava/lang/String;

    .line 531
    iput-object v3, p0, Lcom/android/email/activity/MessageView;->mListTos:[Ljava/lang/String;

    .line 532
    iput-object v3, p0, Lcom/android/email/activity/MessageView;->mListCcs:[Ljava/lang/String;

    .line 539
    iput-boolean v2, p0, Lcom/android/email/activity/MessageView;->mRefreshedFromLoadMoreCB:Z

    .line 540
    iput-boolean v2, p0, Lcom/android/email/activity/MessageView;->mNeedToReloadMessage:Z

    .line 541
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/email/activity/MessageView;->mCurrentMessageID:J

    .line 3107
    iput-boolean v2, p0, Lcom/android/email/activity/MessageView;->mForwarding:Z

    .line 3108
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mForwarded:Ljava/lang/Boolean;

    .line 3544
    iput-boolean v2, p0, Lcom/android/email/activity/MessageView;->mDownloading:Z

    .line 4333
    iput-object v3, p0, Lcom/android/email/activity/MessageView;->mMenu:Landroid/view/Menu;

    .line 4334
    iput-boolean v2, p0, Lcom/android/email/activity/MessageView;->mSaveToCalendarEnabled:Z

    .line 4336
    iput-boolean v2, p0, Lcom/android/email/activity/MessageView;->ShowPicturesEnabled:Z

    .line 8662
    return-void
.end method

.method private IsAlreadyDownloadEmbeddedAttachments()Z
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 6659
    sget-object v6, Lcom/android/email/activity/MessageView;->mContext:Landroid/content/Context;

    if-nez v6, :cond_0

    move v6, v11

    .line 6677
    :goto_0
    return v6

    .line 6664
    :cond_0
    iget-object v6, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    iget-wide v6, v6, Lcom/android/email/provider/EmailContent$Message;->mId:J

    invoke-static {p0, v6, v7}, Lcom/android/email/provider/EmailContent$Attachment;->restoreAttachmentsWithMessageId(Landroid/content/Context;J)[Lcom/android/email/provider/EmailContent$Attachment;

    move-result-object v0

    .line 6665
    .local v0, Attacharr:[Lcom/android/email/provider/EmailContent$Attachment;
    array-length v6, v0

    if-nez v6, :cond_1

    move v6, v11

    .line 6667
    goto :goto_0

    .line 6669
    :cond_1
    move-object v1, v0

    .local v1, arr$:[Lcom/android/email/provider/EmailContent$Attachment;
    array-length v5, v1

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v5, :cond_3

    aget-object v3, v1, v4

    .line 6671
    .local v3, attachment:Lcom/android/email/provider/EmailContent$Attachment;
    sget-object v6, Lcom/android/email/activity/MessageView;->mContext:Landroid/content/Context;

    iget-wide v7, p0, Lcom/android/email/activity/MessageView;->mAccountId:J

    iget-wide v9, v3, Lcom/android/email/provider/EmailContent$Attachment;->mId:J

    invoke-static {v6, v7, v8, v9, v10}, Lcom/android/email/provider/AttachmentProvider;->getAttachmentFilename(Landroid/content/Context;JJ)Ljava/io/File;

    move-result-object v2

    .line 6672
    .local v2, attachPath:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 6669
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    move v6, v11

    .line 6675
    goto :goto_0

    .line 6677
    .end local v2           #attachPath:Ljava/io/File;
    .end local v3           #attachment:Lcom/android/email/provider/EmailContent$Attachment;
    :cond_3
    const/4 v6, 0x1

    goto :goto_0
.end method

.method private IsEAS()Z
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 7856
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    .line 7858
    .local v1, context:Landroid/content/Context;
    sget-wide v4, Lcom/android/email/activity/MessageView;->mCheckedAccountId:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 7859
    iget-wide v4, p0, Lcom/android/email/activity/MessageView;->mAccountId:J

    sput-wide v4, Lcom/android/email/activity/MessageView;->mCheckedAccountId:J

    .line 7869
    :goto_0
    iget-wide v4, p0, Lcom/android/email/activity/MessageView;->mAccountId:J

    invoke-static {v1, v4, v5}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v0

    .line 7871
    .local v0, account:Lcom/android/email/provider/EmailContent$Account;
    if-nez v0, :cond_2

    .line 7872
    sput-boolean v8, Lcom/android/email/activity/MessageView;->mIsEAS:Z

    .line 7874
    sget-boolean v4, Lcom/android/email/activity/MessageView;->mIsEAS:Z

    .line 7889
    .end local v0           #account:Lcom/android/email/provider/EmailContent$Account;
    :goto_1
    return v4

    .line 7861
    :cond_0
    sget-wide v4, Lcom/android/email/activity/MessageView;->mCheckedAccountId:J

    iget-wide v6, p0, Lcom/android/email/activity/MessageView;->mAccountId:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 7863
    sget-boolean v4, Lcom/android/email/activity/MessageView;->mIsEAS:Z

    goto :goto_1

    .line 7866
    :cond_1
    iget-wide v4, p0, Lcom/android/email/activity/MessageView;->mAccountId:J

    sput-wide v4, Lcom/android/email/activity/MessageView;->mCheckedAccountId:J

    goto :goto_0

    .line 7877
    .restart local v0       #account:Lcom/android/email/provider/EmailContent$Account;
    :cond_2
    invoke-virtual {v0, v1}, Lcom/android/email/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/android/email/mail/Store$StoreInfo;->getStoreInfo(Ljava/lang/String;Landroid/content/Context;)Lcom/android/email/mail/Store$StoreInfo;

    move-result-object v2

    .line 7880
    .local v2, info:Lcom/android/email/mail/Store$StoreInfo;
    if-nez v2, :cond_3

    .line 7881
    sput-boolean v8, Lcom/android/email/activity/MessageView;->mIsEAS:Z

    .line 7883
    sget-boolean v4, Lcom/android/email/activity/MessageView;->mIsEAS:Z

    goto :goto_1

    .line 7886
    :cond_3
    iget-object v3, v2, Lcom/android/email/mail/Store$StoreInfo;->mScheme:Ljava/lang/String;

    .line 7887
    .local v3, scheme:Ljava/lang/String;
    const-string v4, "eas"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    sput-boolean v4, Lcom/android/email/activity/MessageView;->mIsEAS:Z

    .line 7889
    sget-boolean v4, Lcom/android/email/activity/MessageView;->mIsEAS:Z

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/email/activity/MessageView;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mLoadMoreDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/email/activity/MessageView;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mForwardingDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/email/activity/MessageView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 216
    iget-boolean v0, p0, Lcom/android/email/activity/MessageView;->mForwarding:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/email/activity/MessageView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 216
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->doForward()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/email/activity/MessageView;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 216
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/MessageView;->doFinishLoadAttachment(J)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/email/activity/MessageView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 216
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->messageChanged()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/email/activity/MessageView;)Lcom/android/email/winset/NonScrollView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/email/activity/MessageView;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mAttachmentInnerContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/email/activity/MessageView;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mAllDownloadIcon:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/email/activity/MessageView;)Landroid/widget/ToggleButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mAttachmentsExpander:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/email/activity/MessageView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 216
    iget-boolean v0, p0, Lcom/android/email/activity/MessageView;->mAlldownloadIconVisible:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/android/email/activity/MessageView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 216
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->onDelete()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/email/activity/MessageView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 216
    iget v0, p0, Lcom/android/email/activity/MessageView;->mSaveAttachmentsCount:I

    return v0
.end method

.method static synthetic access$2000(Lcom/android/email/activity/MessageView;)Lcom/android/email/MessagingController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mLegacyController:Lcom/android/email/MessagingController;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/email/activity/MessageView;)Lcom/android/email/activity/MessageView$MailBoxAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMoveListAdapter:Lcom/android/email/activity/MessageView$MailBoxAdapter;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/email/activity/MessageView;JLjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 216
    invoke-direct {p0, p1, p2, p3}, Lcom/android/email/activity/MessageView;->onMovePopupToOtherAccount(JLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/email/activity/MessageView;JJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 216
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/email/activity/MessageView;->onMove(JJ)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/email/activity/MessageView;)Lcom/android/email/activity/MessageView$MailBoxAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMoveListToOtherAccountAdapter:Lcom/android/email/activity/MessageView$MailBoxAdapter;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/email/activity/MessageView;JJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 216
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/email/activity/MessageView;->onMultiMoveOtherAccount(JJ)V

    return-void
.end method

.method static synthetic access$2600()[I
    .locals 1

    .prologue
    .line 216
    sget-object v0, Lcom/android/email/activity/MessageView;->mColorChipResIds:[I

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/email/activity/MessageView;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 216
    iget-wide v0, p0, Lcom/android/email/activity/MessageView;->mAccountId:J

    return-wide v0
.end method

.method static synthetic access$2900(Lcom/android/email/activity/MessageView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 216
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->onReply()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/email/activity/MessageView;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/email/activity/MessageView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 216
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->onReplyAll()V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/email/activity/MessageView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 216
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->onForward()V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/email/activity/MessageView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 216
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->onForwardOld()V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/email/activity/MessageView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 216
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageView;->onDisplayModeChange(I)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/email/activity/MessageView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 216
    iget v0, p0, Lcom/android/email/activity/MessageView;->mDisplayMode:I

    return v0
.end method

.method static synthetic access$3600(Lcom/android/email/activity/MessageView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 216
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageView;->onTextSizeChange(I)V

    return-void
.end method

.method static synthetic access$3700()I
    .locals 1

    .prologue
    .line 216
    sget v0, Lcom/android/email/activity/MessageView;->mTextSize:I

    return v0
.end method

.method static synthetic access$3900(Lcom/android/email/activity/MessageView;)Lcom/android/email/activity/MessageView$LoadPrevNextTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mLoadPrevNextTask:Lcom/android/email/activity/MessageView$LoadPrevNextTask;

    return-object v0
.end method

.method static synthetic access$3902(Lcom/android/email/activity/MessageView;Lcom/android/email/activity/MessageView$LoadPrevNextTask;)Lcom/android/email/activity/MessageView$LoadPrevNextTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 216
    iput-object p1, p0, Lcom/android/email/activity/MessageView;->mLoadPrevNextTask:Lcom/android/email/activity/MessageView$LoadPrevNextTask;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/email/activity/MessageView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 216
    iget-boolean v0, p0, Lcom/android/email/activity/MessageView;->mDownloadSmimeAttachment:Z

    return v0
.end method

.method static synthetic access$4000(Lcom/android/email/activity/MessageView;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mPrevNextCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$4002(Lcom/android/email/activity/MessageView;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 216
    iput-object p1, p0, Lcom/android/email/activity/MessageView;->mPrevNextCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$4100(Lcom/android/email/activity/MessageView;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 216
    iget-wide v0, p0, Lcom/android/email/activity/MessageView;->mMailboxId:J

    return-wide v0
.end method

.method static synthetic access$4200()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    sget-object v0, Lcom/android/email/activity/MessageView;->PRESENCE_STATUS_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/email/activity/MessageView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 216
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageView;->updateSenderPresence(I)V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/email/activity/MessageView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 216
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->IsEAS()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4600(Lcom/android/email/activity/MessageView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 216
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->closePrevNextCursor()V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/email/activity/MessageView;)Landroid/database/ContentObserver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mNextPrevObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/android/email/activity/MessageView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 216
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->repositionPrevNextCursor()V

    return-void
.end method

.method static synthetic access$4900()Landroid/content/Context;
    .locals 1

    .prologue
    .line 216
    sget-object v0, Lcom/android/email/activity/MessageView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/email/activity/MessageView;)Lcom/android/email/provider/EmailContent$Message;
    .locals 1
    .parameter "x0"

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/android/email/activity/MessageView;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 216
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageView;->changeLoadMoreBtnText(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5100(Lcom/android/email/activity/MessageView;Lcom/android/email/provider/EmailContent$Message;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 216
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/MessageView;->reloadUiFromMessage(Lcom/android/email/provider/EmailContent$Message;Z)V

    return-void
.end method

.method static synthetic access$5200(Lcom/android/email/activity/MessageView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 216
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->startPresenceCheck()V

    return-void
.end method

.method static synthetic access$5300(Lcom/android/email/activity/MessageView;)Lcom/android/email/activity/MessageView$MessageViewHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mHandler:Lcom/android/email/activity/MessageView$MessageViewHandler;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/android/email/activity/MessageView;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 216
    invoke-direct {p0, p1, p2, p3}, Lcom/android/email/activity/MessageView;->reloadUiFromBody(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$5500(Lcom/android/email/activity/MessageView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 216
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->checkITPolicy_AllowPOPIMAP()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5600(Lcom/android/email/activity/MessageView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 216
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageView;->onMarkAsRead(Z)V

    return-void
.end method

.method static synthetic access$5700()[Lcom/android/email/activity/MessageView$BodyImageInfo;
    .locals 1

    .prologue
    .line 216
    sget-object v0, Lcom/android/email/activity/MessageView;->mBodyImageInfo:[Lcom/android/email/activity/MessageView$BodyImageInfo;

    return-object v0
.end method

.method static synthetic access$5702([Lcom/android/email/activity/MessageView$BodyImageInfo;)[Lcom/android/email/activity/MessageView$BodyImageInfo;
    .locals 0
    .parameter "x0"

    .prologue
    .line 216
    sput-object p0, Lcom/android/email/activity/MessageView;->mBodyImageInfo:[Lcom/android/email/activity/MessageView$BodyImageInfo;

    return-object p0
.end method

.method static synthetic access$5800()I
    .locals 1

    .prologue
    .line 216
    sget v0, Lcom/android/email/activity/MessageView;->mBodyImageCnt:I

    return v0
.end method

.method static synthetic access$5802(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 216
    sput p0, Lcom/android/email/activity/MessageView;->mBodyImageCnt:I

    return p0
.end method

.method static synthetic access$5900(Lcom/android/email/activity/MessageView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mHtmlText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5902(Lcom/android/email/activity/MessageView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 216
    iput-object p1, p0, Lcom/android/email/activity/MessageView;->mHtmlText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/email/activity/MessageView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mLoadAttachmentName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6100(Lcom/android/email/activity/MessageView;Lcom/android/email/provider/EmailContent$Attachment;IIZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 216
    invoke-direct/range {p0 .. p5}, Lcom/android/email/activity/MessageView;->addAttachment(Lcom/android/email/provider/EmailContent$Attachment;IIZZ)V

    return-void
.end method

.method static synthetic access$6200(Lcom/android/email/activity/MessageView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 216
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->arrangeAttachments()V

    return-void
.end method

.method static synthetic access$6300(Lcom/android/email/activity/MessageView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 216
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->checkITPolicy_AllowHTMLEmail()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6400(Lcom/android/email/activity/MessageView;)Lcom/android/email/activity/MessageView$LoadEmbeddedAttachmentsTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mLoadEmbeddedAttachmentsTask:Lcom/android/email/activity/MessageView$LoadEmbeddedAttachmentsTask;

    return-object v0
.end method

.method static synthetic access$6402(Lcom/android/email/activity/MessageView;Lcom/android/email/activity/MessageView$LoadEmbeddedAttachmentsTask;)Lcom/android/email/activity/MessageView$LoadEmbeddedAttachmentsTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 216
    iput-object p1, p0, Lcom/android/email/activity/MessageView;->mLoadEmbeddedAttachmentsTask:Lcom/android/email/activity/MessageView$LoadEmbeddedAttachmentsTask;

    return-object p1
.end method

.method static synthetic access$6500(Lcom/android/email/activity/MessageView;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 216
    iget-wide v0, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    return-wide v0
.end method

.method static synthetic access$6600(Lcom/android/email/activity/MessageView;)Lcom/android/email/activity/MessageView$ControllerResults;
    .locals 1
    .parameter "x0"

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mControllerCallback:Lcom/android/email/activity/MessageView$ControllerResults;

    return-object v0
.end method

.method static synthetic access$6700(Lcom/android/email/activity/MessageView;)Lcom/android/email/Controller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mController:Lcom/android/email/Controller;

    return-object v0
.end method

.method static synthetic access$6800(Lcom/android/email/activity/MessageView;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 216
    iget-wide v0, p0, Lcom/android/email/activity/MessageView;->mWaitForLoadMessageId:J

    return-wide v0
.end method

.method static synthetic access$6802(Lcom/android/email/activity/MessageView;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 216
    iput-wide p1, p0, Lcom/android/email/activity/MessageView;->mWaitForLoadMessageId:J

    return-wide p1
.end method

.method static synthetic access$6902(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 216
    sput-boolean p0, Lcom/android/email/activity/MessageView;->mLoadMessageComplete:Z

    return p0
.end method

.method static synthetic access$7000(Lcom/android/email/activity/MessageView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 216
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->cancelAllTasks()V

    return-void
.end method

.method static synthetic access$702(Lcom/android/email/activity/MessageView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 216
    iput-boolean p1, p0, Lcom/android/email/activity/MessageView;->mWaitToHideProgressDialog:Z

    return p1
.end method

.method static synthetic access$7100(Lcom/android/email/activity/MessageView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 216
    iget-boolean v0, p0, Lcom/android/email/activity/MessageView;->mNeedToReloadMessage:Z

    return v0
.end method

.method static synthetic access$7102(Lcom/android/email/activity/MessageView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 216
    iput-boolean p1, p0, Lcom/android/email/activity/MessageView;->mNeedToReloadMessage:Z

    return p1
.end method

.method static synthetic access$7200(Lcom/android/email/activity/MessageView;)Lcom/android/email/activity/MessageView$LoadMessageTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mLoadMessageTask:Lcom/android/email/activity/MessageView$LoadMessageTask;

    return-object v0
.end method

.method static synthetic access$7202(Lcom/android/email/activity/MessageView;Lcom/android/email/activity/MessageView$LoadMessageTask;)Lcom/android/email/activity/MessageView$LoadMessageTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 216
    iput-object p1, p0, Lcom/android/email/activity/MessageView;->mLoadMessageTask:Lcom/android/email/activity/MessageView$LoadMessageTask;

    return-object p1
.end method

.method static synthetic access$7300(Lcom/android/email/activity/MessageView;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 216
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/MessageView;->updateAttachmentThumbnail(J)V

    return-void
.end method

.method static synthetic access$7400(Lcom/android/email/activity/MessageView;)Lcom/android/email/activity/MessageView$LoadBodyTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mLoadBodyTask:Lcom/android/email/activity/MessageView$LoadBodyTask;

    return-object v0
.end method

.method static synthetic access$7402(Lcom/android/email/activity/MessageView;Lcom/android/email/activity/MessageView$LoadBodyTask;)Lcom/android/email/activity/MessageView$LoadBodyTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 216
    iput-object p1, p0, Lcom/android/email/activity/MessageView;->mLoadBodyTask:Lcom/android/email/activity/MessageView$LoadBodyTask;

    return-object p1
.end method

.method static synthetic access$7502(Lcom/android/email/activity/MessageView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 216
    iput-boolean p1, p0, Lcom/android/email/activity/MessageView;->mRefreshedFromLoadMoreCB:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/email/activity/MessageView;)Landroid/webkit/WebView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageContentView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/email/activity/MessageView;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mAttachments:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public static actionView(Landroid/content/Context;JJ)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1042
    sput-object p0, Lcom/android/email/activity/MessageView;->mContext:Landroid/content/Context;

    .line 1043
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/MessageView;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1044
    const-string v1, "com.android.email.MessageView_message_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1045
    const-string v1, "com.android.email.MessageView_mailbox_id"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1046
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1047
    return-void
.end method

.method public static actionView(Landroid/content/Context;JJII)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1056
    sput-object p0, Lcom/android/email/activity/MessageView;->mContext:Landroid/content/Context;

    .line 1057
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/MessageView;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1058
    const-string v1, "com.android.email.MessageView_message_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1059
    const-string v1, "com.android.email.MessageView_mailbox_id"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1060
    const-string v1, "com.android.email.MessageView_display_mode"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1061
    const-string v1, "com.android.email.MessageView_text_size"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1062
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1063
    return-void
.end method

.method private addAttachment(Lcom/android/email/provider/EmailContent$Attachment;IIZZ)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 5144
    new-instance v6, Lcom/android/email/activity/MessageView$AttachmentInfo;

    invoke-direct {v6}, Lcom/android/email/activity/MessageView$AttachmentInfo;-><init>()V

    .line 5145
    iget-wide v0, p1, Lcom/android/email/provider/EmailContent$Attachment;->mSize:J

    iput-wide v0, v6, Lcom/android/email/activity/MessageView$AttachmentInfo;->size:J

    .line 5146
    iget-object v0, p1, Lcom/android/email/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    iput-object v0, v6, Lcom/android/email/activity/MessageView$AttachmentInfo;->contentType:Ljava/lang/String;

    .line 5147
    iget-object v0, p1, Lcom/android/email/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    iput-object v0, v6, Lcom/android/email/activity/MessageView$AttachmentInfo;->name:Ljava/lang/String;

    .line 5148
    iget-wide v0, p1, Lcom/android/email/provider/EmailContent$Attachment;->mId:J

    iput-wide v0, v6, Lcom/android/email/activity/MessageView$AttachmentInfo;->attachmentId:J

    .line 5152
    iget-object v0, v6, Lcom/android/email/activity/MessageView$AttachmentInfo;->contentType:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, v6, Lcom/android/email/activity/MessageView$AttachmentInfo;->contentType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 5153
    :cond_0
    const-string v0, "application/octet-stream"

    iput-object v0, v6, Lcom/android/email/activity/MessageView$AttachmentInfo;->contentType:Ljava/lang/String;

    .line 5154
    const-string v0, "View >>"

    const-string v1, "+++ r2d209 check mime type 1 : null "

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 5157
    :cond_1
    iget-object v0, v6, Lcom/android/email/activity/MessageView$AttachmentInfo;->name:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 5159
    const-string v0, "View >>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+++ addAttachment name : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v6, Lcom/android/email/activity/MessageView$AttachmentInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 5163
    iget-object v0, v6, Lcom/android/email/activity/MessageView$AttachmentInfo;->name:Ljava/lang/String;

    const-string v1, ".awb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_2

    iget-object v0, v6, Lcom/android/email/activity/MessageView$AttachmentInfo;->name:Ljava/lang/String;

    const-string v1, ".AWB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_e

    .line 5164
    :cond_2
    iget-object v0, v6, Lcom/android/email/activity/MessageView$AttachmentInfo;->contentType:Ljava/lang/String;

    const-string v1, "audio/amr-wb"

    if-eq v0, v1, :cond_3

    .line 5165
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mController:Lcom/android/email/Controller;

    iget-wide v1, p0, Lcom/android/email/activity/MessageView;->mAccountId:J

    iget-wide v3, v6, Lcom/android/email/activity/MessageView$AttachmentInfo;->attachmentId:J

    const-string v5, "audio/amr-wb"

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/Controller;->changeMimeType(JJLjava/lang/String;)Z

    .line 5166
    const-string v0, "audio/amr-wb"

    iput-object v0, v6, Lcom/android/email/activity/MessageView$AttachmentInfo;->contentType:Ljava/lang/String;

    .line 5228
    :cond_3
    :goto_0
    const-string v0, "View >>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+++ r2d209 check mime type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v6, Lcom/android/email/activity/MessageView$AttachmentInfo;->contentType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 5231
    :cond_4
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 5232
    const v1, 0x7f030038

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 5234
    const v0, 0x7f0700ea

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 5235
    const v0, 0x7f07011c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 5236
    const v0, 0x7f07011a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    .line 5238
    const v0, 0x7f07011b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 5240
    iget-object v2, v6, Lcom/android/email/activity/MessageView$AttachmentInfo;->contentType:Ljava/lang/String;

    sget-object v3, Lcom/android/email/Email;->ACCEPTABLE_ATTACHMENT_VIEW_TYPES:[Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/email/mail/internet/MimeUtility;->mimeTypeMatches(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, v6, Lcom/android/email/activity/MessageView$AttachmentInfo;->contentType:Ljava/lang/String;

    sget-object v3, Lcom/android/email/Email;->UNACCEPTABLE_ATTACHMENT_VIEW_TYPES:[Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/email/mail/internet/MimeUtility;->mimeTypeMatches(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 5251
    :cond_5
    iget-object v2, v6, Lcom/android/email/activity/MessageView$AttachmentInfo;->contentType:Ljava/lang/String;

    sget-object v3, Lcom/android/email/Email;->ACCEPTABLE_ATTACHMENT_DOWNLOAD_TYPES:[Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/email/mail/internet/MimeUtility;->mimeTypeMatches(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, v6, Lcom/android/email/activity/MessageView$AttachmentInfo;->contentType:Ljava/lang/String;

    sget-object v3, Lcom/android/email/Email;->UNACCEPTABLE_ATTACHMENT_DOWNLOAD_TYPES:[Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/email/mail/internet/MimeUtility;->mimeTypeMatches(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 5255
    :cond_6
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 5258
    :cond_7
    iget-wide v2, v6, Lcom/android/email/activity/MessageView$AttachmentInfo;->size:J

    const-wide/32 v4, 0xa00000

    cmp-long v2, v2, v4

    if-lez v2, :cond_8

    .line 5261
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 5264
    :cond_8
    iget-wide v2, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    invoke-static {p0, v2, v3}, Lcom/android/email/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Message;

    move-result-object v2

    .line 5265
    iget-wide v2, v2, Lcom/android/email/provider/EmailContent$Message;->mMailboxKey:J

    invoke-static {p0, v2, v3}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v2

    .line 5266
    if-eqz v2, :cond_a

    .line 5267
    const-string v3, "View >>"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "+++ mailbox id : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 5268
    const-string v3, "View >>"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "+++ attach file name : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v6, Lcom/android/email/activity/MessageView$AttachmentInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " | "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v6, Lcom/android/email/activity/MessageView$AttachmentInfo;->contentType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 5269
    iget v3, v2, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    const/4 v4, 0x4

    if-eq v3, v4, :cond_9

    iget v3, v2, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    const/4 v4, 0x5

    if-eq v3, v4, :cond_9

    iget v2, v2, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_1d

    .line 5274
    :cond_9
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 5275
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/email/activity/MessageView;->mAlldownloadIconVisible:Z

    .line 5288
    :cond_a
    :goto_1
    iput-object v0, v6, Lcom/android/email/activity/MessageView$AttachmentInfo;->downloadButton:Landroid/widget/Button;

    .line 5289
    iput-object p3, v6, Lcom/android/email/activity/MessageView$AttachmentInfo;->iconView:Landroid/widget/ImageView;

    .line 5291
    invoke-virtual {v1, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 5304
    iget-object v2, v6, Lcom/android/email/activity/MessageView$AttachmentInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5312
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 5313
    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5314
    iget-wide v3, v6, Lcom/android/email/activity/MessageView$AttachmentInfo;->size:J

    long-to-float v3, v3

    invoke-static {v3}, Lcom/android/email/Utility;->formatSize(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5315
    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5316
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5319
    invoke-direct {p0, v6}, Lcom/android/email/activity/MessageView;->getPreviewIcon(Lcom/android/email/activity/MessageView$AttachmentInfo;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 5320
    if-eqz v2, :cond_1e

    .line 5321
    invoke-virtual {p3, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 5355
    :cond_b
    :goto_2
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5356
    invoke-virtual {v0, v6}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 5360
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x2

    const/high16 v4, 0x3f80

    invoke-direct {v0, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 5365
    if-nez p4, :cond_1f

    .line 5367
    const v2, 0x7f020101

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 5392
    :goto_3
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5394
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 5395
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mAttachmentContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_c

    .line 5397
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mAttachmentContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5405
    :cond_c
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    invoke-virtual {v0}, Lcom/android/email/winset/NonScrollView;->isShown()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    .line 5406
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mAttachments:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5410
    :cond_d
    iget-boolean v0, p0, Lcom/android/email/activity/MessageView;->mAlldownloadIconVisible:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_22

    .line 5411
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mAllDownloadIcon:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5418
    :goto_4
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mSubjectView_marquee:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/email/activity/MessageView;->mSubjectAttachmentIcon:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 5423
    return-void

    .line 5170
    :cond_e
    iget-object v0, v6, Lcom/android/email/activity/MessageView$AttachmentInfo;->name:Ljava/lang/String;

    const-string v1, ".aac"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_f

    iget-object v0, v6, Lcom/android/email/activity/MessageView$AttachmentInfo;->name:Ljava/lang/String;

    const-string v1, ".AAC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_10

    .line 5171
    :cond_f
    iget-object v0, v6, Lcom/android/email/activity/MessageView$AttachmentInfo;->contentType:Ljava/lang/String;

    const-string v1, "audio/aac"

    if-eq v0, v1, :cond_3

    .line 5172
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mController:Lcom/android/email/Controller;

    iget-wide v1, p0, Lcom/android/email/activity/MessageView;->mAccountId:J

    iget-wide v3, v6, Lcom/android/email/activity/MessageView$AttachmentInfo;->attachmentId:J

    const-string v5, "audio/aac"

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/Controller;->changeMimeType(JJLjava/lang/String;)Z

    .line 5173
    const-string v0, "audio/aac"

    iput-object v0, v6, Lcom/android/email/activity/MessageView$AttachmentInfo;->contentType:Ljava/lang/String;

    goto/16 :goto_0

    .line 5177
    :cond_10
    iget-object v0, v6, Lcom/android/email/activity/MessageView$AttachmentInfo;->name:Ljava/lang/String;

    const-string v1, ".ogg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_11

    iget-object v0, v6, Lcom/android/email/activity/MessageView$AttachmentInfo;->name:Ljava/lang/String;

    const-string v1, ".OGG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_12

    .line 5178
    :cond_11
    iget-object v0, v6, Lcom/android/email/activity/MessageView$AttachmentInfo;->contentType:Ljava/lang/String;

    const-string v1, "audio/ogg"

    if-eq v0, v1, :cond_3

    .line 5179
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mController:Lcom/android/email/Controller;

    iget-wide v1, p0, Lcom/android/email/activity/MessageView;->mAccountId:J

    iget-wide v3, v6, Lcom/android/email/activity/MessageView$AttachmentInfo;->attachmentId:J

    const-string v5, "audio/ogg"

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/Controller;->changeMimeType(JJLjava/lang/String;)Z

    .line 5180
    const-string v0, "audio/ogg"

    iput-object v0, v6, Lcom/android/email/activity/MessageView$AttachmentInfo;->contentType:Ljava/lang/String;

    goto/16 :goto_0

    .line 5184
    :cond_12
    iget-object v0, v6, Lcom/android/email/activity/MessageView$AttachmentInfo;->name:Ljava/lang/String;

    const-string v1, ".m4v"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_13

    iget-object v0, v6, Lcom/android/email/activity/MessageView$AttachmentInfo;->name:Ljava/lang/String;

    const-string v1, ".M4V"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_14

    .line 5185
    :cond_13
    iget-object v0, v6, Lcom/android/email/activity/MessageView$AttachmentInfo;->contentType:Ljava/lang/String;

    const-string v1, "video/mp4"

    if-eq v0, v1, :cond_3

    .line 5186
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mController:Lcom/android/email/Controller;

    iget-wide v1, p0, Lcom/android/email/activity/MessageView;->mAccountId:J

    iget-wide v3, v6, Lcom/android/email/activity/MessageView$AttachmentInfo;->attachmentId:J

    const-string v5, "video/mp4"

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/Controller;->changeMimeType(JJLjava/lang/String;)Z

    .line 5187
    const-string v0, "video/mp4"

    iput-object v0, v6, Lcom/android/email/activity/MessageView$AttachmentInfo;->contentType:Ljava/lang/String;

    goto/16 :goto_0

    .line 5191
    :cond_14
    iget-object v0, v6, Lcom/android/email/activity/MessageView$AttachmentInfo;->name:Ljava/lang/String;

    const-string v1, ".amr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_15

    iget-object v0, v6, Lcom/android/email/activity/MessageView$AttachmentInfo;->name:Ljava/lang/String;

    const-string v1, ".AMR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_16

    .line 5192
    :cond_15
    iget-object v0, v6, Lcom/android/email/activity/MessageView$AttachmentInfo;->contentType:Ljava/lang/String;

    const-string v1, "audio/amr"

    if-eq v0, v1, :cond_3

    .line 5193
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mController:Lcom/android/email/Controller;

    iget-wide v1, p0, Lcom/android/email/activity/MessageView;->mAccountId:J

    iget-wide v3, v6, Lcom/android/email/activity/MessageView$AttachmentInfo;->attachmentId:J

    const-string v5, "audio/amr"

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/Controller;->changeMimeType(JJLjava/lang/String;)Z

    .line 5194
    const-string v0, "audio/amr"

    iput-object v0, v6, Lcom/android/email/activity/MessageView$AttachmentInfo;->contentType:Ljava/lang/String;

    goto/16 :goto_0

    .line 5198
    :cond_16
    iget-object v0, v6, Lcom/android/email/activity/MessageView$AttachmentInfo;->name:Ljava/lang/String;

    const-string v1, ".imy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_17

    iget-object v0, v6, Lcom/android/email/activity/MessageView$AttachmentInfo;->name:Ljava/lang/String;

    const-string v1, ".IMY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_18

    .line 5199
    :cond_17
    iget-object v0, v6, Lcom/android/email/activity/MessageView$AttachmentInfo;->contentType:Ljava/lang/String;

    const-string v1, "audio/imelody"

    if-eq v0, v1, :cond_3

    .line 5200
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mController:Lcom/android/email/Controller;

    iget-wide v1, p0, Lcom/android/email/activity/MessageView;->mAccountId:J

    iget-wide v3, v6, Lcom/android/email/activity/MessageView$AttachmentInfo;->attachmentId:J

    const-string v5, "audio/imelody"

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/Controller;->changeMimeType(JJLjava/lang/String;)Z

    .line 5201
    const-string v0, "audio/imelody"

    iput-object v0, v6, Lcom/android/email/activity/MessageView$AttachmentInfo;->contentType:Ljava/lang/String;

    goto/16 :goto_0

    .line 5204
    :cond_18
    iget-object v0, v6, Lcom/android/email/activity/MessageView$AttachmentInfo;->name:Ljava/lang/String;

    const-string v1, ".xls"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_19

    iget-object v0, v6, Lcom/android/email/activity/MessageView$AttachmentInfo;->name:Ljava/lang/String;

    const-string v1, ".XLS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1a

    .line 5205
    :cond_19
    iget-object v0, v6, Lcom/android/email/activity/MessageView$AttachmentInfo;->contentType:Ljava/lang/String;

    const-string v1, "application/vnd.ms-excel"

    if-eq v0, v1, :cond_3

    .line 5206
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mController:Lcom/android/email/Controller;

    iget-wide v1, p0, Lcom/android/email/activity/MessageView;->mAccountId:J

    iget-wide v3, v6, Lcom/android/email/activity/MessageView$AttachmentInfo;->attachmentId:J

    const-string v5, "application/vnd.ms-excel"

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/Controller;->changeMimeType(JJLjava/lang/String;)Z

    .line 5207
    const-string v0, "application/vnd.ms-excel"

    iput-object v0, v6, Lcom/android/email/activity/MessageView$AttachmentInfo;->contentType:Ljava/lang/String;

    goto/16 :goto_0

    .line 5210
    :cond_1a
    iget-object v0, v6, Lcom/android/email/activity/MessageView$AttachmentInfo;->name:Ljava/lang/String;

    const-string v1, ".xlsx"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_1b

    iget-object v0, v6, Lcom/android/email/activity/MessageView$AttachmentInfo;->name:Ljava/lang/String;

    const-string v1, ".XLSX"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1c

    .line 5211
    :cond_1b
    iget-object v0, v6, Lcom/android/email/activity/MessageView$AttachmentInfo;->contentType:Ljava/lang/String;

    const-string v1, "application/vnd.ms-excel"

    if-eq v0, v1, :cond_3

    .line 5212
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mController:Lcom/android/email/Controller;

    iget-wide v1, p0, Lcom/android/email/activity/MessageView;->mAccountId:J

    iget-wide v3, v6, Lcom/android/email/activity/MessageView$AttachmentInfo;->attachmentId:J

    const-string v5, "application/vnd.ms-excel"

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/Controller;->changeMimeType(JJLjava/lang/String;)Z

    .line 5213
    const-string v0, "application/vnd.ms-excel"

    iput-object v0, v6, Lcom/android/email/activity/MessageView$AttachmentInfo;->contentType:Ljava/lang/String;

    goto/16 :goto_0

    .line 5217
    :cond_1c
    const-string v0, "application/octet-stream"

    iget-object v1, v6, Lcom/android/email/activity/MessageView$AttachmentInfo;->contentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5219
    iget-object v0, v6, Lcom/android/email/activity/MessageView$AttachmentInfo;->name:Ljava/lang/String;

    iget-object v1, v6, Lcom/android/email/activity/MessageView$AttachmentInfo;->contentType:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/email/provider/AttachmentProvider;->inferMimeType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 5220
    if-eqz v5, :cond_3

    .line 5221
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mController:Lcom/android/email/Controller;

    iget-wide v1, p0, Lcom/android/email/activity/MessageView;->mAccountId:J

    iget-wide v3, v6, Lcom/android/email/activity/MessageView$AttachmentInfo;->attachmentId:J

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/Controller;->changeMimeType(JJLjava/lang/String;)Z

    .line 5222
    iput-object v5, v6, Lcom/android/email/activity/MessageView$AttachmentInfo;->contentType:Ljava/lang/String;

    goto/16 :goto_0

    .line 5279
    :cond_1d
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/email/activity/MessageView;->mAlldownloadIconVisible:Z

    .line 5280
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5281
    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 5282
    invoke-virtual {p3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5283
    invoke-virtual {p3, v6}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 5324
    :cond_1e
    invoke-direct {p0, v1, v6}, Lcom/android/email/activity/MessageView;->findExtensionIcon(Landroid/view/View;Lcom/android/email/activity/MessageView$AttachmentInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 5325
    if-eqz v2, :cond_b

    .line 5326
    invoke-virtual {p3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    .line 5369
    :cond_1f
    const/4 v2, 0x1

    if-ne p4, v2, :cond_20

    iget-object v2, p0, Lcom/android/email/activity/MessageView;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-nez v2, :cond_20

    .line 5371
    const/4 v2, 0x7

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 5372
    const/4 v2, 0x7

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 5373
    const v2, 0x7f020103

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 5374
    const v2, 0x7f070119

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x4

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_3

    .line 5377
    :cond_20
    const/4 v2, 0x1

    if-ne p5, v2, :cond_21

    .line 5379
    const/4 v2, -0x7

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 5380
    const/16 v2, 0x9

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 5381
    const v2, 0x7f020102

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 5382
    const v2, 0x7f070119

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x4

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_3

    .line 5386
    :cond_21
    const/4 v2, -0x7

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 5387
    const/4 v2, 0x7

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 5388
    const v2, 0x7f020103

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 5389
    const v2, 0x7f070119

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x4

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_3

    .line 5414
    :cond_22
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mAllDownloadIcon:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4
.end method

.method private addToContacts()V
    .locals 8

    .prologue
    .line 2984
    iget-object v5, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    if-nez v5, :cond_1

    .line 2985
    iget-wide v5, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    invoke-static {p0, v5, v6}, Lcom/android/email/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Message;

    move-result-object v5

    iput-object v5, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    .line 2986
    iget-object v5, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    if-nez v5, :cond_1

    .line 3034
    :cond_0
    :goto_0
    return-void

    .line 2990
    :cond_1
    iget-object v5, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    iget-wide v5, v5, Lcom/android/email/provider/EmailContent$Message;->mMailboxKey:J

    invoke-static {p0, v5, v6}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v3

    .line 2991
    .local v3, mailbox:Lcom/android/email/provider/EmailContent$Mailbox;
    const/4 v0, 0x0

    .line 2992
    .local v0, emailAddr:Lcom/android/email/mail/Address;
    iget v5, v3, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    packed-switch v5, :pswitch_data_0

    .line 3011
    iget-object v5, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    iget-object v5, v5, Lcom/android/email/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/email/mail/Address;->unpackFirst(Ljava/lang/String;)Lcom/android/email/mail/Address;

    move-result-object v0

    .line 3016
    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    .line 3018
    const-string v5, "mailto"

    invoke-virtual {v0}, Lcom/android/email/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 3019
    .local v2, mailUri:Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.android.contacts.action.SHOW_OR_CREATE_CONTACT"

    invoke-direct {v1, v5, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3023
    .local v1, intent:Landroid/content/Intent;
    const-string v5, "com.android.contacts.action.CREATE_DESCRIPTION"

    invoke-virtual {v0}, Lcom/android/email/mail/Address;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3027
    invoke-virtual {v0}, Lcom/android/email/mail/Address;->getPersonal()Ljava/lang/String;

    move-result-object v4

    .line 3028
    .local v4, senderPersonal:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 3029
    const-string v5, "name"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3032
    :cond_3
    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageView;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 2998
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #mailUri:Landroid/net/Uri;
    .end local v4           #senderPersonal:Ljava/lang/String;
    :pswitch_0
    iget-object v5, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    iget-object v5, v5, Lcom/android/email/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/email/mail/Address;->unpackFirst(Ljava/lang/String;)Lcom/android/email/mail/Address;

    move-result-object v0

    .line 2999
    if-nez v0, :cond_4

    .line 3001
    iget-object v5, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    iget-object v5, v5, Lcom/android/email/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/email/mail/Address;->unpackFirst(Ljava/lang/String;)Lcom/android/email/mail/Address;

    move-result-object v0

    .line 3003
    :cond_4
    if-nez v0, :cond_2

    .line 3005
    iget-object v5, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    iget-object v5, v5, Lcom/android/email/provider/EmailContent$Message;->mBcc:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/email/mail/Address;->unpackFirst(Ljava/lang/String;)Lcom/android/email/mail/Address;

    move-result-object v0

    goto :goto_1

    .line 2992
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private arrangeAttachments()V
    .locals 8

    .prologue
    const/16 v4, 0x8

    const/4 v1, 0x1

    const/4 v3, 0x0

    const-string v2, ""

    .line 6722
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    invoke-virtual {v0}, Lcom/android/email/winset/NonScrollView;->isShown()Z

    move-result v0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-le v0, v1, :cond_1

    .line 6723
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mAttachmentContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 6724
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mAttachmentInnerContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 6725
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mAttachmentsHeader:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6726
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6727
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mAllDownloadIcon:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6729
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    const v1, 0x7f0700d3

    invoke-virtual {v0, v1}, Lcom/android/email/winset/NonScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    .line 6730
    const-string v1, ""

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setText(Ljava/lang/CharSequence;)V

    .line 6731
    const-string v1, ""

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setTextOff(Ljava/lang/CharSequence;)V

    .line 6732
    const-string v1, ""

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setTextOn(Ljava/lang/CharSequence;)V

    .line 6734
    new-instance v1, Lcom/android/email/activity/MessageView$18;

    invoke-direct {v1, p0}, Lcom/android/email/activity/MessageView$18;-><init>(Lcom/android/email/activity/MessageView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6764
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    const v1, 0x7f0700d2

    invoke-virtual {v0, v1}, Lcom/android/email/winset/NonScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 6765
    const-wide/16 v1, 0x0

    move v7, v3

    move-wide v3, v1

    move v2, v7

    .line 6766
    :goto_0
    iget-object v1, p0, Lcom/android/email/activity/MessageView;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v2, v1, :cond_0

    .line 6767
    iget-object v1, p0, Lcom/android/email/activity/MessageView;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 6768
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/activity/MessageView$AttachmentInfo;

    .line 6769
    iget-wide v5, v1, Lcom/android/email/activity/MessageView$AttachmentInfo;->size:J

    add-long/2addr v3, v5

    .line 6766
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 6779
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/email/activity/MessageView;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " attachments ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    long-to-float v2, v3

    invoke-static {v2}, Lcom/android/email/Utility;->formatSize(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6786
    :cond_1
    return-void
.end method

.method private cancelAllTasks()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1682
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mLoadMessageTask:Lcom/android/email/activity/MessageView$LoadMessageTask;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->cancelTask(Landroid/os/AsyncTask;)V

    .line 1683
    iput-object v1, p0, Lcom/android/email/activity/MessageView;->mLoadMessageTask:Lcom/android/email/activity/MessageView$LoadMessageTask;

    .line 1684
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mLoadBodyTask:Lcom/android/email/activity/MessageView$LoadBodyTask;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->cancelTask(Landroid/os/AsyncTask;)V

    .line 1685
    iput-object v1, p0, Lcom/android/email/activity/MessageView;->mLoadBodyTask:Lcom/android/email/activity/MessageView$LoadBodyTask;

    .line 1686
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mLoadAttachmentsTask:Lcom/android/email/activity/MessageView$LoadAttachmentsTask;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->cancelTask(Landroid/os/AsyncTask;)V

    .line 1687
    iput-object v1, p0, Lcom/android/email/activity/MessageView;->mLoadAttachmentsTask:Lcom/android/email/activity/MessageView$LoadAttachmentsTask;

    .line 1688
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mLoadPrevNextTask:Lcom/android/email/activity/MessageView$LoadPrevNextTask;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->cancelTask(Landroid/os/AsyncTask;)V

    .line 1689
    iput-object v1, p0, Lcom/android/email/activity/MessageView;->mLoadPrevNextTask:Lcom/android/email/activity/MessageView$LoadPrevNextTask;

    .line 1690
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mPresenceCheckTask:Lcom/android/email/activity/MessageView$PresenceCheckTask;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->cancelTask(Landroid/os/AsyncTask;)V

    .line 1691
    iput-object v1, p0, Lcom/android/email/activity/MessageView;->mPresenceCheckTask:Lcom/android/email/activity/MessageView$PresenceCheckTask;

    .line 1692
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mChangeDisplayModeTask:Lcom/android/email/activity/MessageView$ChangeDisplayModeTask;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->cancelTask(Landroid/os/AsyncTask;)V

    .line 1693
    iput-object v1, p0, Lcom/android/email/activity/MessageView;->mChangeDisplayModeTask:Lcom/android/email/activity/MessageView$ChangeDisplayModeTask;

    .line 1694
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mTextSizeTask:Lcom/android/email/activity/MessageView$ChangeTextSizeTask;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->cancelTask(Landroid/os/AsyncTask;)V

    .line 1695
    iput-object v1, p0, Lcom/android/email/activity/MessageView;->mTextSizeTask:Lcom/android/email/activity/MessageView$ChangeTextSizeTask;

    .line 1696
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mLoadEmbeddedAttachmentsTask:Lcom/android/email/activity/MessageView$LoadEmbeddedAttachmentsTask;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->cancelTask(Landroid/os/AsyncTask;)V

    .line 1697
    iput-object v1, p0, Lcom/android/email/activity/MessageView;->mLoadEmbeddedAttachmentsTask:Lcom/android/email/activity/MessageView$LoadEmbeddedAttachmentsTask;

    .line 1698
    return-void
.end method

.method private static cancelTask(Landroid/os/AsyncTask;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/AsyncTask",
            "<***>;)V"
        }
    .end annotation

    .prologue
    .line 1676
    .local p0, task:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<***>;"
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 1677
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 1679
    :cond_0
    return-void
.end method

.method private changeLoadMoreBtnText(Ljava/lang/String;)V
    .locals 2
    .parameter "btnTitle"

    .prologue
    .line 8774
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->loadMoreMessage:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 8775
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "jebarlin >>> Changing the Button Text >>>>>>>>>>>>>>>>>>>>>>>>>>>>"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 8776
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->loadMoreMessage:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 8778
    :cond_0
    return-void
.end method

.method private checkITPolicy_AllowAttachmentDownload()Z
    .locals 2

    .prologue
    .line 7797
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "11111 MessageView.java >>>>> checkITPolicy_AllowAttachmentDownload()  >>>>> 4600"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 7805
    invoke-static {p0}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/SecurityPolicy;->IsAllowAttachmentDownload()Z

    move-result v0

    return v0
.end method

.method private checkITPolicy_AllowHTMLEmail()Z
    .locals 2

    .prologue
    .line 7819
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "11111 MessageView.java >>>>> checkITPolicy_AllowHTMLEmail()  >>>>> 4513"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 7831
    invoke-static {p0}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/SecurityPolicy;->IsAllowHTMLEmailSetted()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkITPolicy_AllowPOPIMAP()Z
    .locals 2

    .prologue
    .line 7784
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "11111 MessageView.java >>>>> checkITPolicy_AllowPOPIMAP()  >>>>> 4500"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 7785
    invoke-static {p0}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/SecurityPolicy;->IsAllowPOPIMAPEmailSetted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7787
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->IsEAS()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7789
    const/4 v0, 0x0

    .line 7792
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private checkITPolicy_getAllowedMaxAttachmentSize()I
    .locals 2

    .prologue
    .line 7810
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "11111 MessageView.java >>>>> checkITPolicy_getAllowedMaxAttachmentSize()  >>>>> 4700"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 7812
    invoke-static {p0}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/SecurityPolicy;->getAllowedMaxAttachmentSize()I

    move-result v0

    return v0
.end method

.method private closePrevNextCursor()V
    .locals 2

    .prologue
    .line 1668
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mPrevNextCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 1669
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mPrevNextCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/email/activity/MessageView;->mNextPrevObserver:Landroid/database/ContentObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1670
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mPrevNextCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1671
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mPrevNextCursor:Landroid/database/Cursor;

    .line 1673
    :cond_0
    return-void
.end method

.method public static createUniqueFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    const-string v0, "-"

    const-string v8, ""

    .line 3446
    const/16 v0, 0x2f

    const/16 v1, 0x20

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 3448
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3449
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    .line 3519
    :goto_0
    return-object v0

    .line 3453
    :cond_0
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 3456
    const/4 v2, 0x2

    :goto_1
    const v3, 0x7fffffff

    if-ge v2, v3, :cond_5

    .line 3458
    const/4 v3, -0x1

    if-eq v1, v3, :cond_3

    .line 3459
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 3460
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 3461
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v3, :cond_1

    const-string v3, ""

    move-object v3, v8

    :cond_1
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "-"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v4, :cond_2

    const-string v4, ""

    move-object v4, v8

    :cond_2
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3469
    :goto_2
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v4

    .line 3476
    :goto_3
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_4

    move-object v0, v3

    .line 3477
    goto :goto_0

    .line 3467
    :cond_3
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    goto :goto_2

    .line 3470
    :catch_0
    move-exception v3

    .line 3471
    const-string v4, "View >>"

    const-string v5, "createUniqueFile || Exception"

    invoke-static {v4, v5}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 3472
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 3473
    new-instance v3, Ljava/io/File;

    const-string v4, "IllegalFormat-%d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_3

    .line 3456
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 3519
    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private doFinishLoadAttachment(J)V
    .locals 10
    .parameter

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-string v0, "android.intent.action.VIEW"

    const-string v5, "View >>"

    .line 8444
    invoke-static {p0, p1, p2}, Lcom/android/email/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Attachment;

    move-result-object v0

    .line 8446
    iget-wide v1, p0, Lcom/android/email/activity/MessageView;->mAccountId:J

    iget-wide v3, v0, Lcom/android/email/provider/EmailContent$Attachment;->mId:J

    invoke-static {v1, v2, v3, v4}, Lcom/android/email/provider/AttachmentProvider;->getAttachmentUri(JJ)Landroid/net/Uri;

    move-result-object v1

    .line 8456
    :try_start_0
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/email/provider/AttachmentProvider;->resolveAttachmentIdToContentUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 8466
    iget-boolean v2, p0, Lcom/android/email/activity/MessageView;->mLoadAttachmentSave:Z

    if-eqz v2, :cond_7

    .line 8467
    const-string v2, "View >>"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doFinishLoadAttachment called! mLoadAttachmentSave = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/email/activity/MessageView;->mLoadAttachmentSave:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 8472
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/download/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 8473
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8474
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eq v6, v2, :cond_0

    .line 8476
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 8478
    :cond_0
    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/android/email/activity/MessageView;->createUniqueFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 8480
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v1

    .line 8481
    :try_start_2
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1c
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1a

    .line 8482
    :try_start_3
    invoke-static {v1, v2}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 8483
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 8485
    const v3, 0x7f080070

    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageView;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 8490
    new-instance v3, Lcom/android/email/activity/MessageView$MediaScannerNotifier;

    iget-object v4, p0, Lcom/android/email/activity/MessageView;->mHandler:Lcom/android/email/activity/MessageView$MessageViewHandler;

    invoke-direct {v3, p0, v0, v4}, Lcom/android/email/activity/MessageView$MediaScannerNotifier;-><init>(Landroid/content/Context;Ljava/io/File;Lcom/android/email/activity/MessageView$MessageViewHandler;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1d
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_1b

    .line 8507
    if-eqz v1, :cond_1

    .line 8509
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_a

    .line 8512
    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 8514
    :try_start_5
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_b

    .line 8609
    :cond_2
    :goto_1
    iput-boolean v7, p0, Lcom/android/email/activity/MessageView;->mDownloading:Z

    .line 8611
    :goto_2
    return-void

    .line 8457
    :catch_0
    move-exception v0

    .line 8458
    const v0, 0x7f080074

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageView;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 8492
    :catch_1
    move-exception v0

    move-object v0, v8

    move-object v1, v8

    .line 8493
    :goto_3
    const v2, 0x7f080071

    :try_start_6
    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageView;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_7

    .line 8507
    if-eqz v1, :cond_3

    .line 8509
    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_c

    .line 8512
    :cond_3
    :goto_4
    if-eqz v0, :cond_2

    .line 8514
    :try_start_8
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_1

    .line 8515
    :catch_2
    move-exception v0

    goto :goto_1

    .line 8498
    :catch_3
    move-exception v0

    move-object v0, v8

    move-object v1, v8

    .line 8499
    :goto_5
    const v2, 0x7f080071

    :try_start_9
    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageView;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    .line 8507
    if-eqz v1, :cond_4

    .line 8509
    :try_start_a
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_d

    .line 8512
    :cond_4
    :goto_6
    if-eqz v0, :cond_2

    .line 8514
    :try_start_b
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    goto :goto_1

    .line 8515
    :catch_4
    move-exception v0

    goto :goto_1

    .line 8507
    :catchall_0
    move-exception v0

    move-object v1, v8

    move-object v2, v8

    :goto_7
    if-eqz v2, :cond_5

    .line 8509
    :try_start_c
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_e

    .line 8512
    :cond_5
    :goto_8
    if-eqz v1, :cond_6

    .line 8514
    :try_start_d
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_f

    .line 8515
    :cond_6
    :goto_9
    throw v0

    .line 8520
    :cond_7
    :try_start_e
    iget-object v2, v0, Lcom/android/email/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    const-string v3, "text/x-vnote"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, v0, Lcom/android/email/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    const-string v3, "application/vnt"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 8521
    :cond_8
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8523
    const-string v3, "text/x-vnote"

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 8525
    const-string v3, "View >>"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doFinishLoadAttachment1 called! attachment.mFileName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/android/email/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 8526
    const-string v3, "View >>"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doFinishLoadAttachment1: AttachmentViewIntent >>> URI: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 8527
    const-string v1, "View >>"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doFinishLoadAttachment1: AttachmentViewIntent >>> attachment.mMimeType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 8529
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 8530
    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageView;->startActivity(Landroid/content/Intent;)V
    :try_end_e
    .catch Landroid/content/ActivityNotFoundException; {:try_start_e .. :try_end_e} :catch_5

    goto/16 :goto_1

    .line 8601
    :catch_5
    move-exception v0

    .line 8602
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mHandler:Lcom/android/email/activity/MessageView$MessageViewHandler;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageView$MessageViewHandler;->attachmentViewError()V

    goto/16 :goto_1

    .line 8534
    :cond_9
    :try_start_f
    iget-object v2, v0, Lcom/android/email/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    const-string v3, "image/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    :try_end_f
    .catch Landroid/content/ActivityNotFoundException; {:try_start_f .. :try_end_f} :catch_5

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_12

    .line 8540
    :try_start_10
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/email/activity/MessageView;->mCacheDir:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8541
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_a

    .line 8542
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 8544
    :cond_a
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/android/email/activity/MessageView;->mCacheDir:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/email/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 8545
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_d

    .line 8546
    iget-object v3, v0, Lcom/android/email/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/email/activity/MessageView;->createUniqueFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 8553
    :goto_a
    const-string v3, "View >>"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doFinishLoadAttachment called! attachment.mFileName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/android/email/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 8555
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_10 .. :try_end_10} :catch_8

    move-result-object v3

    .line 8556
    :try_start_11
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_18
    .catch Ljava/lang/NullPointerException; {:try_start_11 .. :try_end_11} :catch_16

    .line 8557
    :try_start_12
    invoke-static {v3, v4}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 8558
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_19
    .catch Ljava/lang/NullPointerException; {:try_start_12 .. :try_end_12} :catch_17

    .line 8567
    if-eqz v3, :cond_b

    .line 8569
    :try_start_13
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_10
    .catch Landroid/content/ActivityNotFoundException; {:try_start_13 .. :try_end_13} :catch_5

    .line 8572
    :cond_b
    :goto_b
    if-eqz v4, :cond_c

    .line 8574
    :try_start_14
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_11
    .catch Landroid/content/ActivityNotFoundException; {:try_start_14 .. :try_end_14} :catch_5

    .line 8578
    :cond_c
    :goto_c
    :try_start_15
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/email/activity/MessageView;->mCacheDir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/email/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 8579
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8580
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    iget-object v4, v0, Lcom/android/email/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    invoke-virtual {v3, v2, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 8582
    const-string v2, "View >>"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doFinishLoadAttachment2 called! attachment.mFileName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/android/email/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 8583
    const-string v2, "View >>"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doFinishLoadAttachment2: AttachmentViewIntent >>> URI: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 8584
    const-string v1, "View >>"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doFinishLoadAttachment2: AttachmentViewIntent >>> attachment.mMimeType: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 8586
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 8587
    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageView;->startActivity(Landroid/content/Intent;)V
    :try_end_15
    .catch Landroid/content/ActivityNotFoundException; {:try_start_15 .. :try_end_15} :catch_5

    goto/16 :goto_1

    .line 8548
    :cond_d
    :try_start_16
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 8550
    iget-object v3, v0, Lcom/android/email/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/email/activity/MessageView;->createUniqueFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_1
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_16 .. :try_end_16} :catch_8

    move-result-object v2

    goto/16 :goto_a

    .line 8559
    :catch_6
    move-exception v2

    move-object v2, v8

    move-object v3, v8

    .line 8560
    :goto_d
    :try_start_17
    iget-object v4, p0, Lcom/android/email/activity/MessageView;->mHandler:Lcom/android/email/activity/MessageView$MessageViewHandler;

    invoke-virtual {v4}, Lcom/android/email/activity/MessageView$MessageViewHandler;->attachmentViewError()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_4

    .line 8567
    if-eqz v3, :cond_e

    .line 8569
    :try_start_18
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_12
    .catch Landroid/content/ActivityNotFoundException; {:try_start_18 .. :try_end_18} :catch_5

    .line 8572
    :cond_e
    :goto_e
    if-eqz v2, :cond_c

    .line 8574
    :try_start_19
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_7
    .catch Landroid/content/ActivityNotFoundException; {:try_start_19 .. :try_end_19} :catch_5

    goto/16 :goto_c

    .line 8575
    :catch_7
    move-exception v2

    goto/16 :goto_c

    .line 8562
    :catch_8
    move-exception v2

    move-object v2, v8

    move-object v3, v8

    .line 8563
    :goto_f
    :try_start_1a
    iget-object v4, p0, Lcom/android/email/activity/MessageView;->mHandler:Lcom/android/email/activity/MessageView$MessageViewHandler;

    invoke-virtual {v4}, Lcom/android/email/activity/MessageView$MessageViewHandler;->attachmentViewError()V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_4

    .line 8567
    if-eqz v3, :cond_f

    .line 8569
    :try_start_1b
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_13
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1b .. :try_end_1b} :catch_5

    .line 8572
    :cond_f
    :goto_10
    if-eqz v2, :cond_c

    .line 8574
    :try_start_1c
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_9
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1c .. :try_end_1c} :catch_5

    goto/16 :goto_c

    .line 8575
    :catch_9
    move-exception v2

    goto/16 :goto_c

    .line 8567
    :catchall_1
    move-exception v0

    move-object v1, v8

    move-object v2, v8

    :goto_11
    if-eqz v2, :cond_10

    .line 8569
    :try_start_1d
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_14
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1d .. :try_end_1d} :catch_5

    .line 8572
    :cond_10
    :goto_12
    if-eqz v1, :cond_11

    .line 8574
    :try_start_1e
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_15
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1e .. :try_end_1e} :catch_5

    .line 8575
    :cond_11
    :goto_13
    :try_start_1f
    throw v0

    .line 8591
    :cond_12
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8592
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 8594
    const-string v3, "View >>"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doFinishLoadAttachment3 called! attachment.mFileName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/android/email/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 8595
    const-string v3, "View >>"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doFinishLoadAttachment3: AttachmentViewIntent >>> URI: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 8596
    const-string v1, "View >>"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doFinishLoadAttachment3: AttachmentViewIntent >>> attachment.mMimeType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 8598
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 8599
    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageView;->startActivity(Landroid/content/Intent;)V
    :try_end_1f
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1f .. :try_end_1f} :catch_5

    goto/16 :goto_1

    .line 8510
    :catch_a
    move-exception v0

    goto/16 :goto_0

    .line 8515
    :catch_b
    move-exception v0

    goto/16 :goto_1

    .line 8510
    :catch_c
    move-exception v1

    goto/16 :goto_4

    :catch_d
    move-exception v1

    goto/16 :goto_6

    :catch_e
    move-exception v2

    goto/16 :goto_8

    .line 8515
    :catch_f
    move-exception v1

    goto/16 :goto_9

    .line 8570
    :catch_10
    move-exception v2

    goto/16 :goto_b

    .line 8575
    :catch_11
    move-exception v2

    goto/16 :goto_c

    .line 8570
    :catch_12
    move-exception v3

    goto/16 :goto_e

    :catch_13
    move-exception v3

    goto/16 :goto_10

    :catch_14
    move-exception v2

    goto/16 :goto_12

    .line 8575
    :catch_15
    move-exception v1

    goto/16 :goto_13

    .line 8567
    :catchall_2
    move-exception v0

    move-object v1, v8

    move-object v2, v3

    goto/16 :goto_11

    :catchall_3
    move-exception v0

    move-object v1, v4

    move-object v2, v3

    goto/16 :goto_11

    :catchall_4
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto/16 :goto_11

    .line 8562
    :catch_16
    move-exception v2

    move-object v2, v8

    goto/16 :goto_f

    :catch_17
    move-exception v2

    move-object v2, v4

    goto/16 :goto_f

    .line 8559
    :catch_18
    move-exception v2

    move-object v2, v8

    goto/16 :goto_d

    :catch_19
    move-exception v2

    move-object v2, v4

    goto/16 :goto_d

    .line 8507
    :catchall_5
    move-exception v0

    move-object v2, v1

    move-object v1, v8

    goto/16 :goto_7

    :catchall_6
    move-exception v0

    move-object v9, v2

    move-object v2, v1

    move-object v1, v9

    goto/16 :goto_7

    :catchall_7
    move-exception v2

    move-object v9, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v9

    goto/16 :goto_7

    .line 8498
    :catch_1a
    move-exception v0

    move-object v0, v8

    goto/16 :goto_5

    :catch_1b
    move-exception v0

    move-object v0, v2

    goto/16 :goto_5

    .line 8492
    :catch_1c
    move-exception v0

    move-object v0, v8

    goto/16 :goto_3

    :catch_1d
    move-exception v0

    move-object v0, v2

    goto/16 :goto_3
.end method

.method private doForward()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 8616
    iget-wide v5, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    invoke-static {p0, v5, v6}, Lcom/android/email/provider/EmailContent$Attachment;->restoreAttachmentsWithMessageId(Landroid/content/Context;J)[Lcom/android/email/provider/EmailContent$Attachment;

    move-result-object v2

    .line 8617
    .local v2, attachments:[Lcom/android/email/provider/EmailContent$Attachment;
    move-object v0, v2

    .local v0, arr$:[Lcom/android/email/provider/EmailContent$Attachment;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v1, v0, v3

    .line 8619
    .local v1, attachment:Lcom/android/email/provider/EmailContent$Attachment;
    iget-object v5, v1, Lcom/android/email/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    if-eqz v5, :cond_1

    iget-object v5, v1, Lcom/android/email/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    const-string v6, "@namo.co.kr"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-ne v5, v9, :cond_1

    .line 8617
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 8625
    :cond_1
    iget-wide v5, v1, Lcom/android/email/provider/EmailContent$Attachment;->mSize:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_0

    iget-object v5, v1, Lcom/android/email/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    if-nez v5, :cond_0

    .line 8654
    .end local v1           #attachment:Lcom/android/email/provider/EmailContent$Attachment;
    :goto_1
    return-void

    .line 8628
    :cond_2
    iget-object v5, p0, Lcom/android/email/activity/MessageView;->mForwarded:Ljava/lang/Boolean;

    monitor-enter v5

    .line 8629
    :try_start_0
    iget-object v6, p0, Lcom/android/email/activity/MessageView;->mForwarded:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_4

    .line 8630
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, p0, Lcom/android/email/activity/MessageView;->mForwarded:Ljava/lang/Boolean;

    .line 8637
    iget-object v6, p0, Lcom/android/email/activity/MessageView;->mForwardingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->dismiss()V

    .line 8639
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->isFinishing()Z

    move-result v6

    if-eqz v6, :cond_3

    monitor-exit v5

    goto :goto_1

    .line 8653
    :catchall_0
    move-exception v6

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 8642
    :cond_3
    :try_start_1
    iget-boolean v6, p0, Lcom/android/email/activity/MessageView;->bForwardToOld:Z

    if-ne v6, v9, :cond_5

    .line 8643
    iget-object v6, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    iget-wide v6, v6, Lcom/android/email/provider/EmailContent$Message;->mId:J

    const/4 v8, 0x1

    invoke-static {p0, v6, v7, v8}, Lcom/android/email/activity/MessageCompose;->actionForward(Landroid/content/Context;JZ)V

    .line 8644
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/email/activity/MessageView;->bForwardToOld:Z

    .line 8648
    :goto_2
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->finish()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 8653
    :cond_4
    :goto_3
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 8646
    :cond_5
    :try_start_3
    iget-object v6, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    iget-wide v6, v6, Lcom/android/email/provider/EmailContent$Message;->mId:J

    invoke-static {p0, v6, v7}, Lcom/android/email/activity/MessageCompose;->actionForward(Landroid/content/Context;J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 8649
    :catch_0
    move-exception v6

    goto :goto_3
.end method

.method private findExtensionIcon(Landroid/view/View;Lcom/android/email/activity/MessageView$AttachmentInfo;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x5

    const-string v5, "View >>"

    const-string v4, ".tif"

    .line 4995
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 4996
    iget-object v1, p2, Lcom/android/email/activity/MessageView$AttachmentInfo;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 4998
    const-string v2, ".pdf"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4999
    const v1, 0x7f0200da

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 5076
    :goto_0
    return-object v0

    .line 5001
    :cond_0
    const-string v2, ".ppt"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, ".pptx"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5003
    :cond_1
    const v1, 0x7f0200db

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 5005
    :cond_2
    const-string v2, ".txt"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 5006
    const v1, 0x7f0200e3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 5008
    :cond_3
    const-string v2, ".doc"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, ".docx"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 5010
    :cond_4
    const v1, 0x7f0200cc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 5012
    :cond_5
    const-string v2, ".eml"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 5013
    const v1, 0x7f0200cd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 5015
    :cond_6
    const-string v2, ".xls"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, ".xlsx"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 5017
    :cond_7
    const v1, 0x7f0200e5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 5019
    :cond_8
    const-string v2, ".gul"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 5020
    const v1, 0x7f0200d8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 5022
    :cond_9
    const-string v2, ".htm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, ".html"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 5024
    :cond_a
    const v1, 0x7f0200d5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 5026
    :cond_b
    const-string v2, ".hwp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 5027
    const v1, 0x7f0200d6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 5029
    :cond_c
    const-string v2, ".rtf"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 5030
    const v1, 0x7f0200de

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 5032
    :cond_d
    const-string v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    const-string v2, ".jpeg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    const-string v2, ".png"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    const-string v2, ".gif"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    const-string v2, ".bmp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    const-string v2, ".pcx"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    const-string v2, ".pct"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    const-string v2, ".pict"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    const-string v2, ".pxr"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    const-string v2, ".sct"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    const-string v2, ".tga"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    const-string v2, ".tif"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    const-string v2, ".tif"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    const-string v2, ".tiff"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 5046
    :cond_e
    const v1, 0x7f0200d7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 5048
    :cond_f
    const-string v2, ".zip"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_10

    const-string v2, ".rar"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_10

    const-string v2, ".arj"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_10

    const-string v2, ".alz"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_10

    const-string v2, ".tar"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_10

    const-string v2, ".tbz"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_10

    const-string v2, ".tgz"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_10

    const-string v2, ".lzh"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_10

    const-string v2, ".jar"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_10

    const-string v2, ".gz"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 5058
    :cond_10
    const v1, 0x7f0200cb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 5061
    :cond_11
    iget-object v1, p2, Lcom/android/email/activity/MessageView$AttachmentInfo;->contentType:Ljava/lang/String;

    if-eqz v1, :cond_13

    iget-object v1, p2, Lcom/android/email/activity/MessageView$AttachmentInfo;->contentType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v3, :cond_13

    .line 5062
    iget-object v1, p2, Lcom/android/email/activity/MessageView$AttachmentInfo;->contentType:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 5064
    const-string v2, "View >>"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attachment.mMimeType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Lcom/android/email/activity/MessageView$AttachmentInfo;->contentType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 5065
    const-string v2, "View >>"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mimeType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 5067
    const-string v2, "video"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 5068
    const v1, 0x7f0200e4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 5070
    :cond_12
    const-string v2, "audio"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 5071
    const v1, 0x7f0200d9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 5076
    :cond_13
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private getContentId(J)V
    .locals 21
    .parameter "mId"

    .prologue
    .line 8781
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "jebartlin >>> getContentId"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 8782
    sget-object v4, Lcom/android/email/activity/MessageView;->mContext:Landroid/content/Context;

    move-object v0, v4

    move-wide/from16 v1, p1

    invoke-static {v0, v1, v2}, Lcom/android/email/provider/EmailContent$Body;->restoreBodyHtmlWithMessageId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v11

    .line 8783
    .local v11, bodyHtml:Ljava/lang/String;
    sget-object v4, Lcom/android/email/activity/MessageView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 8785
    .local v3, resolver:Landroid/content/ContentResolver;
    const-string v4, "src=\"cid(?-i):[A-Z0-9a-z\\.\\_\\@]+"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v18

    .line 8786
    .local v18, p:Ljava/util/regex/Pattern;
    move-object/from16 v0, v18

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v16

    .line 8787
    .local v16, m:Ljava/util/regex/Matcher;
    const/4 v12, 0x0

    .line 8788
    .local v12, contentId:Ljava/lang/String;
    const/16 v17, 0x0

    .line 8789
    .local v17, nameOfTheFile:Ljava/lang/String;
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 8791
    .local v13, contentIdList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-virtual/range {v16 .. v16}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 8792
    invoke-virtual/range {v16 .. v16}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v12

    .line 8793
    if-eqz v12, :cond_0

    .line 8795
    const-string v4, ":"

    invoke-virtual {v12, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 8796
    .local v19, tokens1:[Ljava/lang/String;
    if-eqz v19, :cond_1

    move-object/from16 v0, v19

    array-length v0, v0

    move v4, v0

    const/4 v5, 0x1

    if-le v4, v5, :cond_1

    .line 8797
    const/4 v4, 0x1

    aget-object v4, v19, v4

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8798
    const/4 v4, 0x1

    aget-object v17, v19, v4

    .line 8801
    :cond_1
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Jebarlin >>> Matched Content Id List one by one:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 8804
    .end local v19           #tokens1:[Ljava/lang/String;
    :cond_2
    if-eqz v3, :cond_5

    .line 8805
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 8806
    .local v14, contentValues:Landroid/content/ContentValues;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "Jebarlin >>> Content Resolver Value != null:"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 8807
    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v6, "_id"

    aput-object v6, v5, v4

    .line 8808
    .local v5, prj:[Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "messageKey = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 8809
    .local v6, selection:Ljava/lang/String;
    sget-object v4, Lcom/android/email/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 8811
    .local v10, attachmentCursor:Landroid/database/Cursor;
    const/4 v15, 0x0

    .end local v5           #prj:[Ljava/lang/String;
    .end local v6           #selection:Ljava/lang/String;
    .end local p0
    .local v15, i:I
    :goto_1
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v15, v4, :cond_4

    .line 8812
    invoke-interface {v10, v15}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 8813
    const/4 v4, 0x0

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 8814
    .local v9, attId:I
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Jebarlin >>> attachement ID :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 8815
    const-string v4, "contentId"

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    move-object v0, v14

    move-object v1, v4

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 8816
    sget-object v4, Lcom/android/email/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v7, v9

    invoke-static {v4, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v14, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v20

    .line 8817
    .local v20, updateResult:I
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "jebarlin >>>  Content ID Updated Result :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 8811
    .end local v9           #attId:I
    .end local v20           #updateResult:I
    :cond_3
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 8819
    :cond_4
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 8821
    .end local v10           #attachmentCursor:Landroid/database/Cursor;
    .end local v14           #contentValues:Landroid/content/ContentValues;
    .end local v15           #i:I
    :cond_5
    return-void
.end method

.method private getPreviewIcon(Lcom/android/email/activity/MessageView$AttachmentInfo;)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "attachment"

    .prologue
    .line 5081
    :try_start_0
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 5082
    .local v7, resources:Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    iget-wide v0, p0, Lcom/android/email/activity/MessageView;->mAccountId:J

    iget-wide v2, p1, Lcom/android/email/activity/MessageView$AttachmentInfo;->attachmentId:J

    const/16 v4, 0x30

    const/16 v5, 0x30

    invoke-static/range {v0 .. v5}, Lcom/android/email/provider/AttachmentProvider;->getAttachmentThumbnailUri(JJII)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 5093
    .end local v7           #resources:Landroid/content/res/Resources;
    :goto_0
    return-object v0

    .line 5089
    :catch_0
    move-exception v0

    move-object v6, v0

    .line 5093
    .local v6, e:Ljava/lang/Exception;
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasInlineDataImage(JI)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 8703
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "jebarlin >> Entering the hasInlineDataImage() >>>>>>>>>>>>>>>>>>>>>>>>>>>>>"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 8704
    const/4 v0, 0x0

    .line 8705
    sget-object v1, Lcom/android/email/activity/MessageView;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, p2}, Lcom/android/email/provider/EmailContent$Body;->restoreBodyHtmlWithMessageId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    .line 8707
    if-nez v1, :cond_1

    .line 8715
    :cond_0
    :goto_0
    return v0

    .line 8708
    :cond_1
    if-nez p3, :cond_0

    .line 8711
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageView;->parseHtmlATag(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8712
    sget-object v1, Lcom/android/email/activity/MessageView;->mContext:Landroid/content/Context;

    const v2, 0x7f0801ba

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageView;->changeLoadMoreBtnText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initMessageHeader()V
    .locals 9

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v8, ""

    .line 1260
    :try_start_0
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageView;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 1261
    const v1, 0x7f030039

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/email/winset/NonScrollView;

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1266
    :goto_0
    const v0, 0x7f07001f

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mNext:Landroid/view/View;

    .line 1267
    const v0, 0x7f070110

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mPrevious:Landroid/view/View;

    .line 1269
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mNext:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1270
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mPrevious:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1272
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    invoke-virtual {v0, v6}, Lcom/android/email/winset/NonScrollView;->setVisibility(I)V

    .line 1273
    iput-object v7, p0, Lcom/android/email/activity/MessageView;->mListTos:[Ljava/lang/String;

    .line 1274
    iput-object v7, p0, Lcom/android/email/activity/MessageView;->mListCcs:[Ljava/lang/String;

    .line 1275
    iput v4, p0, Lcom/android/email/activity/MessageView;->allToListCount:I

    .line 1276
    iput v4, p0, Lcom/android/email/activity/MessageView;->allCCListCount:I

    .line 1277
    iput-boolean v4, p0, Lcom/android/email/activity/MessageView;->bForwardToOld:Z

    .line 1278
    sput-boolean v5, Lcom/android/email/activity/MessageView;->mLoadMessageComplete:Z

    .line 1279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/cache"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mCacheDir:Ljava/lang/String;

    .line 1281
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    const v1, 0x7f070099

    invoke-virtual {v0, v1}, Lcom/android/email/winset/NonScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mSubjectView:Landroid/widget/TextView;

    .line 1282
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/email/activity/MessageView;->mCurrentOrientation:I

    .line 1292
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    const v1, 0x7f070098

    invoke-virtual {v0, v1}, Lcom/android/email/winset/NonScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mDateView:Landroid/widget/TextView;

    .line 1293
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    const v1, 0x7f070139

    invoke-virtual {v0, v1}, Lcom/android/email/winset/NonScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mExpanderIcon:Landroid/widget/ImageButton;

    .line 1297
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    const v1, 0x7f070136

    invoke-virtual {v0, v1}, Lcom/android/email/winset/NonScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mDetailContainer:Landroid/view/View;

    .line 1299
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    const v1, 0x7f07013a

    invoke-virtual {v0, v1}, Lcom/android/email/winset/NonScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mAttachmentContainer:Landroid/view/View;

    .line 1300
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    const v1, 0x7f07013b

    invoke-virtual {v0, v1}, Lcom/android/email/winset/NonScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mAttachmentInnerContainer:Landroid/view/View;

    .line 1302
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    const v1, 0x7f07012c

    invoke-virtual {v0, v1}, Lcom/android/email/winset/NonScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mSenderPresenceView:Landroid/widget/ImageView;

    .line 1303
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    const v1, 0x7f070097

    invoke-virtual {v0, v1}, Lcom/android/email/winset/NonScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mFromView:Landroid/widget/TextView;

    .line 1304
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    const v1, 0x7f070104

    invoke-virtual {v0, v1}, Lcom/android/email/winset/NonScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mAttachmentIcon:Landroid/widget/ImageView;

    .line 1305
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    const v1, 0x7f070109

    invoke-virtual {v0, v1}, Lcom/android/email/winset/NonScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mFavoriteIcon:Landroid/widget/ImageView;

    .line 1306
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    const v1, 0x7f070125

    invoke-virtual {v0, v1}, Lcom/android/email/winset/NonScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mEncryptedIcon:Landroid/widget/ImageView;

    .line 1307
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    const v1, 0x7f070124

    invoke-virtual {v0, v1}, Lcom/android/email/winset/NonScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mSignedIcon:Landroid/widget/ImageView;

    .line 1308
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    const v1, 0x7f070123

    invoke-virtual {v0, v1}, Lcom/android/email/winset/NonScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mSmsView:Landroid/widget/ImageView;

    .line 1310
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    const v1, 0x7f070122

    invoke-virtual {v0, v1}, Lcom/android/email/winset/NonScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mVmView:Landroid/widget/ImageView;

    .line 1311
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    const v1, 0x7f070137

    invoke-virtual {v0, v1}, Lcom/android/email/winset/NonScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mToHintView:Landroid/widget/TextView;

    .line 1312
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    const v1, 0x7f0700c3

    invoke-virtual {v0, v1}, Lcom/android/email/winset/NonScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mToView:Landroid/widget/TextView;

    .line 1315
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    const v1, 0x7f070138

    invoke-virtual {v0, v1}, Lcom/android/email/winset/NonScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mCcHintView:Landroid/widget/TextView;

    .line 1316
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    const v1, 0x7f0700c9

    invoke-virtual {v0, v1}, Lcom/android/email/winset/NonScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mCcView:Landroid/widget/TextView;

    .line 1320
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    const v1, 0x7f070128

    invoke-virtual {v0, v1}, Lcom/android/email/winset/NonScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mPriorityLayout:Landroid/widget/LinearLayout;

    .line 1321
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    const v1, 0x7f070129

    invoke-virtual {v0, v1}, Lcom/android/email/winset/NonScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mPriorityHintView:Landroid/widget/TextView;

    .line 1322
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    const v1, 0x7f07012a

    invoke-virtual {v0, v1}, Lcom/android/email/winset/NonScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mPriorityView:Landroid/widget/TextView;

    .line 1325
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    const v1, 0x7f07012d

    invoke-virtual {v0, v1}, Lcom/android/email/winset/NonScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mMeetingTimeLayout:Landroid/widget/LinearLayout;

    .line 1326
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    const v1, 0x7f07012e

    invoke-virtual {v0, v1}, Lcom/android/email/winset/NonScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mMeetingTimeHintView:Landroid/widget/TextView;

    .line 1327
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    const v1, 0x7f07012f

    invoke-virtual {v0, v1}, Lcom/android/email/winset/NonScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mMeetingTimeView:Landroid/widget/TextView;

    .line 1328
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    const v1, 0x7f070130

    invoke-virtual {v0, v1}, Lcom/android/email/winset/NonScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mMeetingTimeLayout2:Landroid/widget/LinearLayout;

    .line 1329
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    const v1, 0x7f070131

    invoke-virtual {v0, v1}, Lcom/android/email/winset/NonScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mMeetingTimeHintView2:Landroid/widget/TextView;

    .line 1330
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    const v1, 0x7f070132

    invoke-virtual {v0, v1}, Lcom/android/email/winset/NonScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mMeetingTimeView2:Landroid/widget/TextView;

    .line 1332
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    const v1, 0x7f070133

    invoke-virtual {v0, v1}, Lcom/android/email/winset/NonScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mMeetingLocationLayout:Landroid/widget/LinearLayout;

    .line 1333
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    const v1, 0x7f070134

    invoke-virtual {v0, v1}, Lcom/android/email/winset/NonScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mMeetingLocationHintView:Landroid/widget/TextView;

    .line 1334
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    const v1, 0x7f070135

    invoke-virtual {v0, v1}, Lcom/android/email/winset/NonScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mMeetingLocationView:Landroid/widget/TextView;

    .line 1336
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    const v1, 0x7f0700d1

    invoke-virtual {v0, v1}, Lcom/android/email/winset/NonScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mAttachmentsHeader:Landroid/widget/LinearLayout;

    .line 1338
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    const v1, 0x7f0700d4

    invoke-virtual {v0, v1}, Lcom/android/email/winset/NonScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mAttachments:Landroid/widget/LinearLayout;

    .line 1341
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    const v1, 0x7f0700d3

    invoke-virtual {v0, v1}, Lcom/android/email/winset/NonScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mAttachmentsExpander:Landroid/widget/ToggleButton;

    .line 1342
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mAttachmentsExpander:Landroid/widget/ToggleButton;

    const-string v1, ""

    invoke-virtual {v0, v8}, Landroid/widget/ToggleButton;->setText(Ljava/lang/CharSequence;)V

    .line 1343
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mAttachmentsExpander:Landroid/widget/ToggleButton;

    const-string v1, ""

    invoke-virtual {v0, v8}, Landroid/widget/ToggleButton;->setTextOff(Ljava/lang/CharSequence;)V

    .line 1344
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mAttachmentsExpander:Landroid/widget/ToggleButton;

    const-string v1, ""

    invoke-virtual {v0, v8}, Landroid/widget/ToggleButton;->setTextOn(Ljava/lang/CharSequence;)V

    .line 1346
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mAttachmentsExpander:Landroid/widget/ToggleButton;

    new-instance v1, Lcom/android/email/activity/MessageView$2;

    invoke-direct {v1, p0}, Lcom/android/email/activity/MessageView$2;-><init>(Lcom/android/email/activity/MessageView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1382
    const v0, 0x7f070112

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->view_for_topfocus:Landroid/widget/ImageButton;

    .line 1385
    const v0, 0x7f0700dd

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageContentView:Landroid/webkit/WebView;

    .line 1389
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageContentView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setEmbeddedTitleBar(Landroid/view/View;)V

    .line 1394
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageContentView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setSupportZoomWithoutControls(Z)V

    .line 1398
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageContentView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    .line 1405
    const v0, 0x7f07013e

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mAllDownloadIcon:Landroid/widget/TextView;

    .line 1406
    iput-boolean v4, p0, Lcom/android/email/activity/MessageView;->mAlldownloadIconVisible:Z

    .line 1409
    const v0, 0x7f070111

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mSubjectView_marquee:Landroid/widget/TextView;

    .line 1410
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mSubjectView_marquee:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1411
    const v0, 0x7f070114

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->loadMoreMessage:Landroid/widget/Button;

    .line 1412
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->loadMoreMessage:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1413
    const v0, 0x7f070116

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mAcceptButton:Landroid/widget/Button;

    .line 1414
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mAcceptButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1415
    const v0, 0x7f070117

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mTentativeButton:Landroid/widget/Button;

    .line 1416
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mTentativeButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1417
    const v0, 0x7f070118

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mDeclineButton:Landroid/widget/Button;

    .line 1418
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mDeclineButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1419
    const v0, 0x7f070115

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->loadMoreMessageLinearLayout:Landroid/widget/LinearLayout;

    .line 1420
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->loadMoreMessage:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 1421
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->loadMoreMessageLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1423
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1424
    const v1, 0x7f0200c8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mSubjectAttachmentIcon:Landroid/graphics/drawable/Drawable;

    .line 1433
    const v0, 0x7f07010f

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageSwitchBar:Landroid/widget/LinearLayout;

    .line 1441
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mNext:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1442
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mPrevious:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1443
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mFromView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1444
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mSenderPresenceView:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1445
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mFavoriteIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1454
    iput-boolean v4, p0, Lcom/android/email/activity/MessageView;->mRefreshedFromLoadMoreCB:Z

    .line 1455
    iput-boolean v4, p0, Lcom/android/email/activity/MessageView;->mNeedToReloadMessage:Z

    .line 1456
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/email/activity/MessageView;->mCurrentMessageID:J

    .line 1458
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 1459
    iput-boolean v4, p0, Lcom/android/email/activity/MessageView;->mWaitToHideProgressDialog:Z

    .line 1460
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v5}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1461
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 1464
    new-instance v0, Lcom/android/email/activity/MessageView$3;

    invoke-direct {v0, p0, p0}, Lcom/android/email/activity/MessageView$3;-><init>(Lcom/android/email/activity/MessageView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mLoadMoreDialog:Landroid/app/ProgressDialog;

    .line 1479
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mLoadMoreDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v5}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1480
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mLoadMoreDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 1483
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mForwardingDialog:Landroid/app/ProgressDialog;

    .line 1484
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mForwardingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v5}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1485
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mForwardingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 1488
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mDateFormat:Ljava/text/DateFormat;

    .line 1489
    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mTimeFormat:Ljava/text/DateFormat;

    .line 1491
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020042

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mFavoriteIconOn:Landroid/graphics/drawable/Drawable;

    .line 1492
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02003f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mFavoriteIconOff:Landroid/graphics/drawable/Drawable;

    .line 1494
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mExpanderIcon:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1496
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mAllDownloadIcon:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1498
    return-void

    .line 1262
    :catch_0
    move-exception v0

    .line 1263
    const-string v1, "View >>"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WebViewer Inflater call Error message : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private isVoiceMail(J)Z
    .locals 9
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v8, "inside finally"

    .line 2340
    .line 2343
    sget-object v1, Lcom/android/email/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    .line 2344
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2345
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "messageKey="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2346
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-array v2, v7, [Ljava/lang/String;

    const-string v5, "vmAttOrder"

    aput-object v5, v2, v6

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2349
    if-eqz v0, :cond_2

    move v1, v6

    .line 2351
    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2352
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    move v1, v6

    .line 2353
    goto :goto_0

    :cond_0
    move v1, v7

    .line 2361
    :cond_1
    :goto_1
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "inside finally"

    invoke-virtual {v2, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2362
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2364
    return v1

    .line 2361
    :catchall_0
    move-exception v1

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "inside finally"

    invoke-virtual {v2, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2362
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_2
    move v1, v6

    goto :goto_1
.end method

.method private lookupAccountForMessage(J)J
    .locals 7
    .parameter

    .prologue
    .line 2181
    .line 2182
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2183
    sget-object v1, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/email/activity/MessageView;->MESSAGEID_TO_ACCOUNTID_PROJECTION:[Ljava/lang/String;

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2187
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lcom/android/email/activity/MessageView;->MESSAGEID_TO_ACCOUNTID_COLUMN_ACCOUNTID:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v1

    .line 2191
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-wide v1

    .line 2187
    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0

    .line 2191
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method private messageChanged()V
    .locals 6

    .prologue
    .line 4832
    :try_start_0
    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 4833
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MessageView: messageChanged to id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/Email;->log(Ljava/lang/String;)V

    .line 4835
    :cond_0
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->cancelAllTasks()V

    .line 4836
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageView;->setTitle(Ljava/lang/CharSequence;)V

    .line 4838
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->initMessageHeader()V

    .line 4839
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->updateColors()V

    .line 4840
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->updateTextSize()V

    .line 4842
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageContentView:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    .line 4843
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageContentView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->scrollTo(II)V

    .line 4844
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageContentView:Landroid/webkit/WebView;

    const-string v1, "file:///android_asset/empty.html"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 4847
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 4848
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mAttachments:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4849
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mAllDownloadIcon:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4850
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mAttachmentIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4853
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mAttachmentContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4854
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mAttachmentInnerContainer:Landroid/view/View;

    const v1, 0x7f020101

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 4855
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mAttachmentInnerContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4856
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mAttachmentsHeader:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4860
    new-instance v0, Lcom/android/email/activity/MessageView$LoadMessageTask;

    iget-wide v2, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/email/activity/MessageView$LoadMessageTask;-><init>(Lcom/android/email/activity/MessageView;JZZ)V

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mLoadMessageTask:Lcom/android/email/activity/MessageView$LoadMessageTask;

    .line 4861
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mLoadMessageTask:Lcom/android/email/activity/MessageView$LoadMessageTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageView$LoadMessageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 4862
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mPrevNextCursor:Landroid/database/Cursor;

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageView;->updatePrevNextArrows(Landroid/database/Cursor;)V

    .line 4865
    iget-wide v0, p0, Lcom/android/email/activity/MessageView;->mMailboxId:J

    const/16 v2, 0x61

    invoke-static {p0, v0, v1, v2}, Lcom/android/email/Utility;->isMailboxType(Landroid/content/Context;JI)Z

    move-result v0

    .line 4866
    if-eqz v0, :cond_2

    .line 4867
    const v0, 0x7f07018a

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 4868
    const v0, 0x7f070188

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 4871
    const v0, 0x7f0700c3

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 4872
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4880
    :cond_2
    :goto_0
    return-void

    .line 4876
    :catch_0
    move-exception v0

    .line 4877
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 4878
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->finish()V

    goto :goto_0
.end method

.method private onClickFavorite()V
    .locals 4

    .prologue
    .line 3041
    iget-object v1, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    if-eqz v1, :cond_0

    .line 3043
    iget-object v1, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    iget-boolean v1, v1, Lcom/android/email/provider/EmailContent$Message;->mFlagFavorite:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    move v0, v1

    .line 3044
    .local v0, newFavorite:Z
    :goto_0
    iget-object v1, p0, Lcom/android/email/activity/MessageView;->mFavoriteIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/android/email/activity/MessageView;->mFavoriteIconOn:Landroid/graphics/drawable/Drawable;

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3065
    iget-object v1, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    iput-boolean v0, v1, Lcom/android/email/provider/EmailContent$Message;->mFlagFavorite:Z

    .line 3066
    iget-object v1, p0, Lcom/android/email/activity/MessageView;->mController:Lcom/android/email/Controller;

    iget-wide v2, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/email/Controller;->setMessageFavorite(JZ)V

    .line 3068
    .end local v0           #newFavorite:Z
    :cond_0
    return-void

    .line 3043
    :cond_1
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0

    .line 3044
    .restart local v0       #newFavorite:Z
    :cond_2
    iget-object v2, p0, Lcom/android/email/activity/MessageView;->mFavoriteIconOff:Landroid/graphics/drawable/Drawable;

    goto :goto_1
.end method

.method private onClickSender()V
    .locals 8

    .prologue
    .line 2957
    iget-object v5, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    if-nez v5, :cond_1

    .line 2980
    :cond_0
    :goto_0
    return-void

    .line 2959
    :cond_1
    iget-object v5, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    iget-object v5, v5, Lcom/android/email/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/email/mail/Address;->unpackFirst(Ljava/lang/String;)Lcom/android/email/mail/Address;

    move-result-object v4

    .line 2960
    .local v4, senderEmail:Lcom/android/email/mail/Address;
    if-eqz v4, :cond_0

    .line 2963
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 2964
    .local v3, resolver:Landroid/content/ContentResolver;
    invoke-virtual {v4}, Lcom/android/email/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 2965
    .local v0, address:Ljava/lang/String;
    sget-object v5, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2967
    .local v1, dataUri:Landroid/net/Uri;
    invoke-static {v3, v1}, Landroid/provider/ContactsContract$Data;->getContactLookupUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    .line 2969
    .local v2, lookupUri:Landroid/net/Uri;
    if-eqz v2, :cond_2

    .line 2971
    iget-object v5, p0, Lcom/android/email/activity/MessageView;->mSenderPresenceView:Landroid/widget/ImageView;

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static {p0, v5, v2, v6, v7}, Landroid/provider/ContactsContract$QuickContact;->showQuickContact(Landroid/content/Context;Landroid/view/View;Landroid/net/Uri;I[Ljava/lang/String;)V

    goto :goto_0

    .line 2977
    :cond_2
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->addToContacts()V

    goto :goto_0
.end method

.method private onDelete()V
    .locals 9

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const-string v8, "View >>"

    .line 2132
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    if-eqz v0, :cond_2

    .line 2135
    iget-wide v1, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    .line 2137
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mController:Lcom/android/email/Controller;

    iget-object v3, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    iget-wide v3, v3, Lcom/android/email/provider/EmailContent$Message;->mAccountKey:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/email/Controller;->deleteMessage(JJ)Z

    .line 2140
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0b0006

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v0, v3, v6, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2141
    invoke-static {p0, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2143
    iget-boolean v0, p0, Lcom/android/email/activity/MessageView;->mLogView:Z

    if-nez v0, :cond_0

    .line 2145
    sget-object v0, Lcom/android/email/activity/MessageView;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/email/activity/MessageList;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/email/activity/MessageList;->removeMessage(Ljava/lang/Long;)V

    .line 2149
    :cond_0
    iget v0, p0, Lcom/android/email/activity/MessageView;->mViewModeType:I

    sget v3, Lcom/android/email/activity/MessageList;->VIEW_MODE_STANDARD:I

    if-eq v0, v3, :cond_1

    .line 2150
    sget-object v0, Lcom/android/email/activity/MessageList;->mMessageIdArray4ThreadList:Ljava/util/ArrayList;

    long-to-int v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 2151
    const-string v3, "View >>"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDelete(): messageIdToDelete = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 2152
    const-string v1, "View >>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDelete(): messageIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 2154
    sget-object v1, Lcom/android/email/activity/MessageList;->mMessageIdArray4ThreadList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2159
    :cond_1
    iget-boolean v0, p0, Lcom/android/email/activity/MessageView;->mLogView:Z

    if-ne v0, v6, :cond_3

    .line 2160
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->finish()V

    .line 2173
    :cond_2
    :goto_0
    return-void

    .line 2165
    :cond_3
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->onPrevious()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->onNext()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    move v0, v6

    .line 2167
    :goto_1
    if-nez v0, :cond_2

    .line 2170
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->finish()V

    goto :goto_0

    :cond_5
    move v0, v7

    .line 2165
    goto :goto_1
.end method

.method private onDeletePopup()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 2093
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2095
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 2096
    const v1, 0x7f08001d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2100
    iget-boolean v1, p0, Lcom/android/email/activity/MessageView;->mIsSms:Z

    if-eqz v1, :cond_0

    .line 2102
    const-string v1, " Sms will be deleted permanently. Do you want to do it? "

    .line 2110
    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2114
    const v1, 0x7f080011

    new-instance v2, Lcom/android/email/activity/MessageView$6;

    invoke-direct {v2, p0}, Lcom/android/email/activity/MessageView$6;-><init>(Lcom/android/email/activity/MessageView;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2122
    const v1, 0x7f080012

    new-instance v2, Lcom/android/email/activity/MessageView$7;

    invoke-direct {v2, p0}, Lcom/android/email/activity/MessageView$7;-><init>(Lcom/android/email/activity/MessageView;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2128
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 2129
    return-void

    .line 2106
    :cond_0
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0006

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v6, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private onDisplayMode()V
    .locals 6

    .prologue
    .line 4540
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/android/email/activity/MessageView$DisplayViewType;

    .line 4541
    const/4 v1, 0x0

    new-instance v2, Lcom/android/email/activity/MessageView$DisplayViewType;

    const v3, 0x7f080122

    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageView;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020070

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/android/email/activity/MessageView$DisplayViewType;-><init>(Lcom/android/email/activity/MessageView;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    aput-object v2, v0, v1

    .line 4542
    const/4 v1, 0x1

    new-instance v2, Lcom/android/email/activity/MessageView$DisplayViewType;

    const v3, 0x7f080123

    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageView;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020071

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/android/email/activity/MessageView$DisplayViewType;-><init>(Lcom/android/email/activity/MessageView;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    aput-object v2, v0, v1

    .line 4543
    const/4 v1, 0x2

    new-instance v2, Lcom/android/email/activity/MessageView$DisplayViewType;

    const v3, 0x7f080124

    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageView;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020072

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/android/email/activity/MessageView$DisplayViewType;-><init>(Lcom/android/email/activity/MessageView;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    aput-object v2, v0, v1

    .line 4544
    const/4 v1, 0x3

    new-instance v2, Lcom/android/email/activity/MessageView$DisplayViewType;

    const v3, 0x7f080125

    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageView;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020073

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/android/email/activity/MessageView$DisplayViewType;-><init>(Lcom/android/email/activity/MessageView;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    aput-object v2, v0, v1

    .line 4545
    const/4 v1, 0x4

    new-instance v2, Lcom/android/email/activity/MessageView$DisplayViewType;

    const v3, 0x7f080126

    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageView;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020074

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/android/email/activity/MessageView$DisplayViewType;-><init>(Lcom/android/email/activity/MessageView;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    aput-object v2, v0, v1

    .line 4546
    const/4 v1, 0x5

    new-instance v2, Lcom/android/email/activity/MessageView$DisplayViewType;

    const v3, 0x7f080127

    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageView;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020075

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/android/email/activity/MessageView$DisplayViewType;-><init>(Lcom/android/email/activity/MessageView;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    aput-object v2, v0, v1

    .line 4548
    new-instance v1, Lcom/android/email/activity/MessageView$DisplayViewAdapter;

    invoke-direct {v1, p0, v0}, Lcom/android/email/activity/MessageView$DisplayViewAdapter;-><init>(Landroid/content/Context;[Lcom/android/email/activity/MessageView$DisplayViewType;)V

    .line 4552
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4555
    const v2, 0x7f08011f

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 4558
    iget v2, p0, Lcom/android/email/activity/MessageView;->mDisplayMode:I

    new-instance v3, Lcom/android/email/activity/MessageView$16;

    invoke-direct {v3, p0}, Lcom/android/email/activity/MessageView$16;-><init>(Lcom/android/email/activity/MessageView;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 4567
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 4568
    return-void
.end method

.method private onDisplayModeChange(I)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 4646
    iput p1, p0, Lcom/android/email/activity/MessageView;->mDisplayMode:I

    .line 4648
    iget v0, p0, Lcom/android/email/activity/MessageView;->mDisplayMode:I

    if-nez v0, :cond_0

    .line 4650
    const v0, 0x7f080121

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 4652
    :cond_0
    new-instance v0, Lcom/android/email/activity/MessageView$ChangeDisplayModeTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/email/activity/MessageView$ChangeDisplayModeTask;-><init>(Lcom/android/email/activity/MessageView;Lcom/android/email/activity/MessageView$1;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mChangeDisplayModeTask:Lcom/android/email/activity/MessageView$ChangeDisplayModeTask;

    .line 4653
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mChangeDisplayModeTask:Lcom/android/email/activity/MessageView$ChangeDisplayModeTask;

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageView$ChangeDisplayModeTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 4654
    iget-boolean v0, p0, Lcom/android/email/activity/MessageView;->mNeedToReloadMessage:Z

    if-nez v0, :cond_1

    .line 4655
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    if-eqz v0, :cond_1

    .line 4656
    new-instance v0, Lcom/android/email/activity/MessageView$LoadBodyTask;

    iget-object v1, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    iget-wide v1, v1, Lcom/android/email/provider/EmailContent$Message;->mId:J

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/email/activity/MessageView$LoadBodyTask;-><init>(Lcom/android/email/activity/MessageView;JZ)V

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mLoadBodyTask:Lcom/android/email/activity/MessageView$LoadBodyTask;

    .line 4657
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mLoadBodyTask:Lcom/android/email/activity/MessageView$LoadBodyTask;

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageView$LoadBodyTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 4660
    :cond_1
    return-void
.end method

.method private onDownloadAttachment(Lcom/android/email/activity/MessageView$AttachmentInfo;)V
    .locals 11
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v10, 0x1

    .line 3645
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3650
    const v0, 0x7f080071

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageView;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3677
    :goto_0
    return-void

    .line 3656
    :cond_0
    invoke-static {p0}, Lcom/android/email/activity/MessageView$CheckNetworkInfo;->isWirelessAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3657
    const v0, 0x7f08003a

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageView;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 3662
    :cond_1
    const-string v0, "View >>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDownloadAttachment called! mLoadAttachmentSave = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/email/activity/MessageView;->mLoadAttachmentSave:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 3664
    iput v10, p0, Lcom/android/email/activity/MessageView;->mSaveAttachmentsCount:I

    .line 3665
    iget-wide v0, p1, Lcom/android/email/activity/MessageView$AttachmentInfo;->attachmentId:J

    iput-wide v0, p0, Lcom/android/email/activity/MessageView;->mLoadAttachmentId:J

    .line 3666
    iput-boolean v10, p0, Lcom/android/email/activity/MessageView;->mLoadAttachmentSave:Z

    .line 3667
    iget-object v0, p1, Lcom/android/email/activity/MessageView$AttachmentInfo;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mLoadAttachmentName:Ljava/lang/String;

    .line 3670
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mController:Lcom/android/email/Controller;

    iget-wide v1, p1, Lcom/android/email/activity/MessageView$AttachmentInfo;->attachmentId:J

    iget-wide v3, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    iget-object v5, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    iget-wide v5, v5, Lcom/android/email/provider/EmailContent$Message;->mMailboxKey:J

    iget-wide v7, p0, Lcom/android/email/activity/MessageView;->mAccountId:J

    iget-object v9, p0, Lcom/android/email/activity/MessageView;->mControllerCallback:Lcom/android/email/activity/MessageView$ControllerResults;

    invoke-virtual/range {v0 .. v10}, Lcom/android/email/Controller;->loadAttachment(JJJJLcom/android/email/Controller$Result;Z)V

    .line 3675
    iput-boolean v10, p0, Lcom/android/email/activity/MessageView;->mDownloading:Z

    goto :goto_0
.end method

.method private onDownloadAttachmentAll()V
    .locals 13

    .prologue
    .line 3680
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3685
    const v1, 0x7f080071

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageView;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 3715
    :cond_0
    :goto_0
    return-void

    .line 3691
    :cond_1
    invoke-static {p0}, Lcom/android/email/activity/MessageView$CheckNetworkInfo;->isWirelessAvailable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 3692
    const v1, 0x7f08003a

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageView;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 3697
    :cond_2
    const-string v1, "View >>"

    const-string v2, "onDownloadAttachmentAll called!"

    invoke-static {v1, v2}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 3698
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/email/activity/MessageView;->mSaveAttachmentsCount:I

    .line 3700
    const/4 v1, 0x0

    move v12, v1

    :goto_1
    iget-object v1, p0, Lcom/android/email/activity/MessageView;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v12, v1, :cond_0

    .line 3701
    iget-object v1, p0, Lcom/android/email/activity/MessageView;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v12}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/android/email/activity/MessageView$AttachmentInfo;

    move-object v2, v0

    .line 3702
    iget-wide v3, v2, Lcom/android/email/activity/MessageView$AttachmentInfo;->attachmentId:J

    iput-wide v3, p0, Lcom/android/email/activity/MessageView;->mLoadAttachmentId:J

    .line 3703
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/email/activity/MessageView;->mLoadAttachmentSave:Z

    .line 3704
    iget-object v1, v2, Lcom/android/email/activity/MessageView$AttachmentInfo;->name:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/email/activity/MessageView;->mLoadAttachmentName:Ljava/lang/String;

    .line 3706
    if-nez v12, :cond_3

    .line 3707
    iget-object v1, p0, Lcom/android/email/activity/MessageView;->mController:Lcom/android/email/Controller;

    iget-wide v2, v2, Lcom/android/email/activity/MessageView$AttachmentInfo;->attachmentId:J

    iget-wide v4, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    iget-object v6, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    iget-wide v6, v6, Lcom/android/email/provider/EmailContent$Message;->mMailboxKey:J

    iget-wide v8, p0, Lcom/android/email/activity/MessageView;->mAccountId:J

    iget-object v10, p0, Lcom/android/email/activity/MessageView;->mControllerCallback:Lcom/android/email/activity/MessageView$ControllerResults;

    const/4 v11, 0x1

    invoke-virtual/range {v1 .. v11}, Lcom/android/email/Controller;->loadAttachment(JJJJLcom/android/email/Controller$Result;Z)V

    .line 3700
    :goto_2
    add-int/lit8 v1, v12, 0x1

    iget v2, p0, Lcom/android/email/activity/MessageView;->mSaveAttachmentsCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/email/activity/MessageView;->mSaveAttachmentsCount:I

    move v12, v1

    goto :goto_1

    .line 3710
    :cond_3
    iget-object v1, p0, Lcom/android/email/activity/MessageView;->mController:Lcom/android/email/Controller;

    iget-wide v2, v2, Lcom/android/email/activity/MessageView$AttachmentInfo;->attachmentId:J

    iget-wide v4, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    iget-object v6, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    iget-wide v6, v6, Lcom/android/email/provider/EmailContent$Message;->mMailboxKey:J

    iget-wide v8, p0, Lcom/android/email/activity/MessageView;->mAccountId:J

    iget-object v10, p0, Lcom/android/email/activity/MessageView;->mControllerCallback:Lcom/android/email/activity/MessageView$ControllerResults;

    const/4 v11, 0x0

    invoke-virtual/range {v1 .. v11}, Lcom/android/email/Controller;->loadAttachment(JJJJLcom/android/email/Controller$Result;Z)V

    goto :goto_2
.end method

.method private onForward()V
    .locals 6

    .prologue
    const/4 v3, 0x4

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 3113
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    if-eqz v0, :cond_2

    .line 3118
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mController:Lcom/android/email/Controller;

    iget-object v1, p0, Lcom/android/email/activity/MessageView;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v0, v1}, Lcom/android/email/Controller;->isMessagingController(Lcom/android/email/provider/EmailContent$Account;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    move v0, v5

    .line 3124
    :goto_0
    iget-object v1, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    iget-wide v1, v1, Lcom/android/email/provider/EmailContent$Message;->mMailboxKey:J

    invoke-static {p0, v1, v2}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v1

    .line 3126
    if-nez v0, :cond_4

    .line 3127
    iget v2, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    if-eq v2, v3, :cond_1

    iget v2, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    const/4 v3, 0x6

    if-eq v2, v3, :cond_1

    iget v1, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_5

    .line 3130
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Message;->mId:J

    invoke-static {p0, v0, v1}, Lcom/android/email/activity/MessageCompose;->actionForward(Landroid/content/Context;J)V

    .line 3131
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->finish()V

    .line 3178
    :cond_2
    :goto_1
    return-void

    :cond_3
    move v0, v4

    .line 3121
    goto :goto_0

    .line 3136
    :cond_4
    iget v1, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    if-ne v1, v3, :cond_5

    .line 3137
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Message;->mId:J

    invoke-static {p0, v0, v1}, Lcom/android/email/activity/MessageCompose;->actionForward(Landroid/content/Context;J)V

    .line 3138
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->finish()V

    goto :goto_1

    .line 3145
    :cond_5
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 3147
    if-nez v0, :cond_6

    const-string v0, "forward_with_files"

    invoke-interface {v1, v0, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_6

    .line 3148
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Message;->mId:J

    invoke-static {p0, v0, v1}, Lcom/android/email/activity/MessageCompose;->actionForward(Landroid/content/Context;J)V

    .line 3149
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->finish()V

    goto :goto_1

    .line 3152
    :cond_6
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_7

    .line 3153
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Message;->mId:J

    invoke-static {p0, v0, v1}, Lcom/android/email/activity/MessageCompose;->actionForward(Landroid/content/Context;J)V

    .line 3154
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->finish()V

    goto :goto_1

    .line 3160
    :cond_7
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mForwardingDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f08014f

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageView;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 3161
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mForwardingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 3162
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mForwardingDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/android/email/activity/MessageView$12;

    invoke-direct {v1, p0}, Lcom/android/email/activity/MessageView$12;-><init>(Lcom/android/email/activity/MessageView;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 3170
    iput-boolean v4, p0, Lcom/android/email/activity/MessageView;->mForwarding:Z

    .line 3171
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mForwarded:Ljava/lang/Boolean;

    .line 3173
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->saveAttachmentsTemporarily()V

    goto :goto_1
.end method

.method private onForwardOld()V
    .locals 6

    .prologue
    const/4 v3, 0x4

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 3181
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    if-eqz v0, :cond_2

    .line 3185
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mController:Lcom/android/email/Controller;

    iget-object v1, p0, Lcom/android/email/activity/MessageView;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v0, v1}, Lcom/android/email/Controller;->isMessagingController(Lcom/android/email/provider/EmailContent$Account;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    move v0, v5

    .line 3191
    :goto_0
    iget-object v1, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    iget-wide v1, v1, Lcom/android/email/provider/EmailContent$Message;->mMailboxKey:J

    invoke-static {p0, v1, v2}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v1

    .line 3193
    if-nez v0, :cond_4

    .line 3194
    iget v2, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    if-eq v2, v3, :cond_1

    iget v2, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    const/4 v3, 0x6

    if-eq v2, v3, :cond_1

    iget v1, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_5

    .line 3197
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Message;->mId:J

    invoke-static {p0, v0, v1, v4}, Lcom/android/email/activity/MessageCompose;->actionForward(Landroid/content/Context;JZ)V

    .line 3198
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->finish()V

    .line 3247
    :cond_2
    :goto_1
    return-void

    :cond_3
    move v0, v4

    .line 3188
    goto :goto_0

    .line 3203
    :cond_4
    iget v1, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    if-ne v1, v3, :cond_5

    .line 3204
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Message;->mId:J

    invoke-static {p0, v0, v1, v4}, Lcom/android/email/activity/MessageCompose;->actionForward(Landroid/content/Context;JZ)V

    .line 3205
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->finish()V

    goto :goto_1

    .line 3212
    :cond_5
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 3214
    if-nez v0, :cond_6

    const-string v0, "forward_with_files"

    invoke-interface {v1, v0, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_6

    .line 3215
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Message;->mId:J

    invoke-static {p0, v0, v1, v4}, Lcom/android/email/activity/MessageCompose;->actionForward(Landroid/content/Context;JZ)V

    .line 3216
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->finish()V

    goto :goto_1

    .line 3219
    :cond_6
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_7

    .line 3220
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Message;->mId:J

    invoke-static {p0, v0, v1, v4}, Lcom/android/email/activity/MessageCompose;->actionForward(Landroid/content/Context;JZ)V

    .line 3221
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->finish()V

    goto :goto_1

    .line 3228
    :cond_7
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mForwardingDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f08014f

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageView;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 3229
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mForwardingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 3230
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mForwardingDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/android/email/activity/MessageView$13;

    invoke-direct {v1, p0}, Lcom/android/email/activity/MessageView$13;-><init>(Lcom/android/email/activity/MessageView;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 3238
    iput-boolean v4, p0, Lcom/android/email/activity/MessageView;->mForwarding:Z

    .line 3239
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mForwarded:Ljava/lang/Boolean;

    .line 3240
    iput-boolean v4, p0, Lcom/android/email/activity/MessageView;->bForwardToOld:Z

    .line 3242
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->saveAttachmentsTemporarily()V

    goto :goto_1
.end method

.method private onMarkAsRead(Z)V
    .locals 3
    .parameter "isRead"

    .prologue
    .line 3429
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    iget-boolean v0, v0, Lcom/android/email/provider/EmailContent$Message;->mFlagRead:Z

    if-eq v0, p1, :cond_0

    .line 3430
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    iput-boolean p1, v0, Lcom/android/email/provider/EmailContent$Message;->mFlagRead:Z

    .line 3431
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mController:Lcom/android/email/Controller;

    iget-wide v1, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/email/Controller;->setMessageRead(JZ)V

    .line 3433
    :cond_0
    return-void
.end method

.method private onMoreMessage()V
    .locals 3

    .prologue
    .line 3098
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    if-eqz v0, :cond_0

    .line 3099
    const-string v0, "MessageView"

    const-string v1, "jykim : onMoreMessage "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3100
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mController:Lcom/android/email/Controller;

    iget-object v1, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    iget-wide v1, v1, Lcom/android/email/provider/EmailContent$Message;->mId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/email/Controller;->loadMore(J)V

    .line 3101
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->loadMoreMessage:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 3103
    :cond_0
    return-void
.end method

.method private onMove(JJ)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2602
    iget-wide v0, p0, Lcom/android/email/activity/MessageView;->mMailboxId:J

    invoke-static {p0, v0, v1}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v0

    .line 2603
    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/android/email/activity/MessageView;->mMailboxId:J

    cmp-long v0, v0, p3

    if-eqz v0, :cond_1

    .line 2605
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 2606
    iget-wide v2, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2607
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mController:Lcom/android/email/Controller;

    iget-wide v6, p0, Lcom/android/email/activity/MessageView;->mMailboxId:J

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v7}, Lcom/android/email/Controller;->moveMessage(Ljava/util/HashSet;JJJ)Z

    move-result v0

    if-ne v0, v9, :cond_5

    .line 2609
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0b0004

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v3

    new-array v4, v9, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v8

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2612
    invoke-static {p0, v0, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2613
    iget-boolean v0, p0, Lcom/android/email/activity/MessageView;->mLogView:Z

    if-nez v0, :cond_0

    .line 2615
    sget-object v0, Lcom/android/email/activity/MessageView;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/email/activity/MessageList;

    iget-wide v1, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageList;->removeMessage(Ljava/lang/Long;)V

    .line 2618
    :cond_0
    iget-boolean v0, p0, Lcom/android/email/activity/MessageView;->mLogView:Z

    if-ne v0, v9, :cond_2

    .line 2619
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->finish()V

    .line 2637
    :cond_1
    :goto_0
    return-void

    .line 2623
    :cond_2
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->onPrevious()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->onNext()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    move v0, v9

    .line 2625
    :goto_1
    if-nez v0, :cond_1

    .line 2628
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->finish()V

    goto :goto_0

    :cond_4
    move v0, v8

    .line 2623
    goto :goto_1

    .line 2634
    :cond_5
    const v0, 0x7f080177

    invoke-static {p0, v0, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private onMovePopup()V
    .locals 14

    .prologue
    .line 2369
    .line 2370
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2371
    const-string v3, "accountKey=? AND type<64 AND flagVisible=1"

    .line 2375
    iget-wide v1, p0, Lcom/android/email/activity/MessageView;->mMailboxId:J

    invoke-static {p0, v1, v2}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v8

    .line 2376
    if-nez v8, :cond_1

    .line 2377
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->finish()V

    .line 2511
    :cond_0
    :goto_0
    return-void

    .line 2382
    :cond_1
    const/4 v6, 0x0

    .line 2385
    :try_start_0
    sget-object v1, Lcom/android/email/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "displayName"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string v5, "type"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-wide v9, v8, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const-string v5, "type,displayName"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 2393
    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2396
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-gtz v1, :cond_2

    .line 2398
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2435
    :catch_0
    move-exception v0

    .line 2436
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 2403
    :cond_2
    const/4 v1, -0x1

    :try_start_1
    invoke-interface {v9, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 2404
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    new-array v10, v1, [Lcom/android/email/activity/MessageView$MailBoxType;

    .line 2405
    add-int/lit8 v1, v6, 0x1

    new-instance v2, Lcom/android/email/activity/MessageView$MailBoxType;

    const v3, 0x7f08016b

    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageView;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/email/activity/MessageView$MailBoxType;-><init>(Lcom/android/email/activity/MessageView;Ljava/lang/String;)V

    aput-object v2, v10, v6

    move v11, v1

    .line 2406
    :goto_1
    :pswitch_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2407
    invoke-static {p0}, Lcom/android/email/Utility$FolderProperties;->getInstance(Landroid/content/Context;)Lcom/android/email/Utility$FolderProperties;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/email/Utility$FolderProperties;->getDisplayName(I)Ljava/lang/String;

    move-result-object v1

    .line 2408
    if-nez v1, :cond_c

    .line 2409
    const/4 v1, 0x1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v7, v1

    .line 2411
    :goto_2
    const/4 v1, 0x2

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 2422
    :pswitch_1
    iget-wide v1, p0, Lcom/android/email/activity/MessageView;->mMailboxId:J

    const/4 v3, 0x0

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_b

    .line 2424
    add-int/lit8 v12, v11, 0x1

    new-instance v1, Lcom/android/email/activity/MessageView$MailBoxType;

    iget-wide v3, v8, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    const/4 v2, 0x0

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/email/activity/MessageView$MailBoxType;-><init>(Lcom/android/email/activity/MessageView;JJLjava/lang/String;)V

    aput-object v1, v10, v11
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v1, v12

    :goto_3
    move v11, v1

    .line 2427
    goto :goto_1

    .line 2428
    :catch_1
    move-exception v0

    .line 2429
    :try_start_2
    const-string v1, "View >>"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IllegalStateException >>> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 2430
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto/16 :goto_0

    .line 2433
    :cond_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 2440
    const/4 v6, 0x0

    .line 2441
    const/4 v7, 0x0

    .line 2443
    :try_start_3
    sget-object v1, Lcom/android/email/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "displayName"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "emailAddress"

    aput-object v4, v2, v3

    const-string v3, "_id!=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-wide v8, v8, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2445
    if-eqz v8, :cond_a

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_a

    .line 2446
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result v0

    if-lez v0, :cond_9

    .line 2448
    const/4 v0, -0x1

    :try_start_4
    invoke-interface {v8, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 2449
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v7, v0, [Lcom/android/email/activity/MessageView$MailBoxType;
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 2450
    add-int/lit8 v0, v6, 0x1

    :try_start_5
    new-instance v1, Lcom/android/email/activity/MessageView$MailBoxType;

    const v2, 0x7f08016c

    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageView;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/email/activity/MessageView$MailBoxType;-><init>(Lcom/android/email/activity/MessageView;Ljava/lang/String;)V

    aput-object v1, v7, v6
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    move v6, v0

    .line 2451
    :cond_4
    :goto_4
    :try_start_6
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2452
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mController:Lcom/android/email/Controller;

    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/email/Controller;->returnAccountType(J)I
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_a
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    .line 2454
    add-int/lit8 v9, v6, 0x1

    :try_start_7
    new-instance v0, Lcom/android/email/activity/MessageView$MailBoxType;

    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x2

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/email/activity/MessageView$MailBoxType;-><init>(Lcom/android/email/activity/MessageView;JLjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v6
    :try_end_7
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_b
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    move v6, v9

    goto :goto_4

    :cond_5
    move-object v0, v7

    move v1, v6

    .line 2462
    :goto_5
    :try_start_8
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    .line 2468
    :goto_6
    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    .line 2470
    const/4 v1, 0x0

    .line 2473
    :cond_6
    add-int v2, v11, v1

    new-array v2, v2, [Lcom/android/email/activity/MessageView$MailBoxType;

    .line 2475
    const/4 v3, 0x0

    :goto_7
    if-ge v3, v11, :cond_7

    .line 2476
    aget-object v4, v10, v3

    aput-object v4, v2, v3

    .line 2475
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 2457
    :catch_2
    move-exception v0

    move-object v1, v7

    move v2, v6

    .line 2458
    :goto_8
    :try_start_9
    const-string v3, "View >>"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IllegalStateException >>> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 2459
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    move-object v0, v1

    move v1, v2

    goto :goto_5

    .line 2464
    :catch_3
    move-exception v0

    move-object v1, v7

    move v2, v6

    .line 2465
    :goto_9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    move v1, v2

    goto :goto_6

    .line 2478
    :cond_7
    const/4 v3, 0x0

    :goto_a
    if-ge v3, v1, :cond_8

    .line 2479
    add-int v4, v11, v3

    aget-object v5, v0, v3

    aput-object v5, v2, v4

    .line 2478
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 2482
    :cond_8
    new-instance v0, Lcom/android/email/activity/MessageView$MailBoxAdapter;

    invoke-direct {v0, p0, v2}, Lcom/android/email/activity/MessageView$MailBoxAdapter;-><init>(Landroid/content/Context;[Lcom/android/email/activity/MessageView$MailBoxType;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mMoveListAdapter:Lcom/android/email/activity/MessageView$MailBoxAdapter;

    .line 2484
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2487
    const v1, 0x7f08016a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2488
    iget-object v1, p0, Lcom/android/email/activity/MessageView;->mMoveListAdapter:Lcom/android/email/activity/MessageView$MailBoxAdapter;

    new-instance v2, Lcom/android/email/activity/MessageView$10;

    invoke-direct {v2, p0}, Lcom/android/email/activity/MessageView$10;-><init>(Lcom/android/email/activity/MessageView;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2510
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 2464
    :catch_4
    move-exception v1

    move v2, v0

    move-object v0, v1

    move-object v1, v7

    goto :goto_9

    :catch_5
    move-exception v0

    move-object v1, v7

    move v2, v6

    goto :goto_9

    :catch_6
    move-exception v0

    move-object v1, v7

    move v2, v9

    goto :goto_9

    :catch_7
    move-exception v0

    goto :goto_9

    :catch_8
    move-exception v2

    move-object v13, v2

    move v2, v1

    move-object v1, v0

    move-object v0, v13

    goto :goto_9

    .line 2457
    :catch_9
    move-exception v1

    move v2, v0

    move-object v0, v1

    move-object v1, v7

    goto :goto_8

    :catch_a
    move-exception v0

    move-object v1, v7

    move v2, v6

    goto :goto_8

    :catch_b
    move-exception v0

    move-object v1, v7

    move v2, v9

    goto :goto_8

    :cond_9
    move-object v0, v7

    move v1, v6

    goto/16 :goto_5

    :cond_a
    move-object v0, v7

    move v1, v6

    goto/16 :goto_6

    :cond_b
    move v1, v11

    goto/16 :goto_3

    :cond_c
    move-object v7, v1

    goto/16 :goto_2

    .line 2411
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private onMovePopupToOtherAccount(JLjava/lang/String;)V
    .locals 12
    .parameter
    .parameter

    .prologue
    const/4 v11, 0x0

    .line 2514
    .line 2515
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2516
    const-string v3, "accountKey=? AND type<64 AND flagVisible=1"

    .line 2524
    :try_start_0
    sget-object v1, Lcom/android/email/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "displayName"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string v5, "type"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const-string v5, "type,displayName"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2532
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2599
    :cond_0
    :goto_0
    return-void

    .line 2535
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_2

    .line 2537
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2569
    :catch_0
    move-exception v0

    .line 2570
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 2542
    :cond_2
    const/4 v0, -0x1

    :try_start_1
    invoke-interface {v7, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 2543
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v8, v0, [Lcom/android/email/activity/MessageView$MailBoxType;

    move v9, v11

    .line 2544
    :goto_1
    :pswitch_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2545
    invoke-static {p0}, Lcom/android/email/Utility$FolderProperties;->getInstance(Landroid/content/Context;)Lcom/android/email/Utility$FolderProperties;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/email/Utility$FolderProperties;->getDisplayName(I)Ljava/lang/String;

    move-result-object v0

    .line 2546
    if-nez v0, :cond_5

    .line 2547
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    .line 2549
    :goto_2
    const/4 v0, 0x2

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2559
    add-int/lit8 v10, v9, 0x1

    new-instance v0, Lcom/android/email/activity/MessageView$MailBoxType;

    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object v1, p0

    move-wide v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/email/activity/MessageView$MailBoxType;-><init>(Lcom/android/email/activity/MessageView;JJLjava/lang/String;)V

    aput-object v0, v8, v9
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v9, v10

    .line 2561
    goto :goto_1

    .line 2562
    :catch_1
    move-exception v0

    .line 2563
    :try_start_2
    const-string v1, "View >>"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IllegalStateException >>> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 2564
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 2567
    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 2574
    new-array v0, v9, [Lcom/android/email/activity/MessageView$MailBoxType;

    move v1, v11

    .line 2576
    :goto_3
    if-ge v1, v9, :cond_4

    .line 2577
    aget-object v2, v8, v1

    aput-object v2, v0, v1

    .line 2576
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 2579
    :cond_4
    new-instance v1, Lcom/android/email/activity/MessageView$MailBoxAdapter;

    invoke-direct {v1, p0, v0}, Lcom/android/email/activity/MessageView$MailBoxAdapter;-><init>(Landroid/content/Context;[Lcom/android/email/activity/MessageView$MailBoxType;)V

    iput-object v1, p0, Lcom/android/email/activity/MessageView;->mMoveListToOtherAccountAdapter:Lcom/android/email/activity/MessageView$MailBoxAdapter;

    .line 2581
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2583
    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2584
    iget-object v1, p0, Lcom/android/email/activity/MessageView;->mMoveListToOtherAccountAdapter:Lcom/android/email/activity/MessageView$MailBoxAdapter;

    new-instance v2, Lcom/android/email/activity/MessageView$11;

    invoke-direct {v2, p0}, Lcom/android/email/activity/MessageView$11;-><init>(Lcom/android/email/activity/MessageView;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2598
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    :cond_5
    move-object v6, v0

    goto :goto_2

    .line 2549
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private onMultiMoveOtherAccount(JJ)V
    .locals 10
    .parameter
    .parameter

    .prologue
    .line 2640
    iget-wide v0, p0, Lcom/android/email/activity/MessageView;->mMailboxId:J

    invoke-static {p0, v0, v1}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v2

    .line 2641
    iget-wide v0, v2, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/email/activity/MessageView;->mMailboxId:J

    cmp-long v0, v0, p3

    if-eqz v0, :cond_0

    .line 2643
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 2644
    iget-wide v3, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2645
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mController:Lcom/android/email/Controller;

    iget-wide v2, v2, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    iget-wide v4, p0, Lcom/android/email/activity/MessageView;->mMailboxId:J

    move-wide v6, p1

    move-wide v8, p3

    invoke-virtual/range {v0 .. v9}, Lcom/android/email/Controller;->moveMessageToOtherAccountFolder(Ljava/util/HashSet;JJJJ)Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 2647
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0b0004

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2650
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2651
    iget-boolean v0, p0, Lcom/android/email/activity/MessageView;->mLogView:Z

    if-nez v0, :cond_0

    .line 2653
    sget-object p1, Lcom/android/email/activity/MessageView;->mContext:Landroid/content/Context;

    check-cast p1, Lcom/android/email/activity/MessageList;

    iget-wide v0, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/email/activity/MessageList;->removeMessage(Ljava/lang/Long;)V

    .line 2661
    :cond_0
    :goto_0
    return-void

    .line 2658
    :cond_1
    const v0, 0x7f080177

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private onNext()Z
    .locals 14

    .prologue
    const v11, 0x7f04000b

    const/4 v10, 0x0

    const-wide/16 v8, -0x2

    const/4 v7, 0x1

    const-string v6, "View >>"

    .line 3253
    iget v0, p0, Lcom/android/email/activity/MessageView;->mViewModeType:I

    sget v1, Lcom/android/email/activity/MessageList;->VIEW_MODE_STANDARD:I

    if-eq v0, v1, :cond_3

    .line 3254
    sget v1, Lcom/android/email/activity/MessageList;->mPositionOfSelectedMessage:I

    .line 3255
    const-wide/16 v2, -0x1

    .line 3257
    const-string v0, "View >>"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onNext(): position = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 3258
    const-string v0, "View >>"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onNext(): list size = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v4, Lcom/android/email/activity/MessageList;->mMessageIdArray4ThreadList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 3260
    sget-object v0, Lcom/android/email/activity/MessageList;->mMessageIdArray4ThreadList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v7, :cond_4

    .line 3262
    if-ge v1, v7, :cond_1

    .line 3263
    sget-object v0, Lcom/android/email/activity/MessageList;->mMessageIdArray4ThreadList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v2, v0

    .line 3264
    const-string v0, "View >>"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onNext(): position1 = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 3265
    const-string v0, "View >>"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onNext(): messageValue1 = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 3267
    cmp-long v0, v2, v8

    if-eqz v0, :cond_0

    iget-wide v4, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_7

    .line 3268
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 3269
    sget-object v0, Lcom/android/email/activity/MessageList;->mMessageIdArray4ThreadList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v2, v0

    .line 3271
    cmp-long v0, v2, v8

    if-nez v0, :cond_7

    .line 3272
    add-int/lit8 v1, v1, 0x1

    .line 3273
    sget-object v0, Lcom/android/email/activity/MessageList;->mMessageIdArray4ThreadList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v2, v0

    move-wide v12, v2

    move v2, v1

    move-wide v0, v12

    .line 3276
    :goto_0
    const-string v3, "View >>"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onNext(): position2 = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 3277
    const-string v3, "View >>"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onNext(): messageValue2 = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 3297
    :goto_1
    const-wide/16 v3, -0x1

    cmp-long v3, v0, v3

    if-lez v3, :cond_4

    .line 3298
    iput-wide v0, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    .line 3300
    iget-wide v0, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    cmp-long v0, v0, v8

    if-eqz v0, :cond_4

    .line 3302
    const-string v0, "View >>"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNext(): mMessageId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v3, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 3304
    sput v2, Lcom/android/email/activity/MessageList;->mPositionOfSelectedMessage:I

    .line 3306
    sget-object v0, Lcom/android/email/activity/MessageView;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    iget-wide v3, p0, Lcom/android/email/activity/MessageView;->mMailboxId:J

    iget v5, p0, Lcom/android/email/activity/MessageView;->mDisplayMode:I

    sget v6, Lcom/android/email/activity/MessageView;->mTextSize:I

    invoke-static/range {v0 .. v6}, Lcom/android/email/activity/MessageView;->actionView(Landroid/content/Context;JJII)V

    .line 3307
    const v0, 0x7f04000c

    invoke-virtual {p0, v11, v0}, Lcom/android/email/activity/MessageView;->overridePendingTransition(II)V

    .line 3308
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->finish()V

    move v0, v7

    .line 3327
    :goto_2
    return v0

    .line 3279
    :cond_1
    sget-object v0, Lcom/android/email/activity/MessageList;->mMessageIdArray4ThreadList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v7

    if-ge v1, v0, :cond_6

    .line 3280
    sget-object v0, Lcom/android/email/activity/MessageList;->mMessageIdArray4ThreadList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v2, v0

    .line 3281
    const-string v0, "View >>"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onNext(): position3 = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 3282
    const-string v0, "View >>"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onNext(): messageValue3 = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 3284
    cmp-long v0, v2, v8

    if-eqz v0, :cond_2

    iget-wide v4, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_5

    .line 3285
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 3286
    sget-object v0, Lcom/android/email/activity/MessageList;->mMessageIdArray4ThreadList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v2, v0

    .line 3288
    cmp-long v0, v2, v8

    if-nez v0, :cond_5

    .line 3289
    add-int/lit8 v1, v1, 0x1

    .line 3290
    sget-object v0, Lcom/android/email/activity/MessageList;->mMessageIdArray4ThreadList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v2, v0

    move-wide v12, v2

    move v2, v1

    move-wide v0, v12

    .line 3293
    :goto_3
    const-string v3, "View >>"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onNext(): position4 = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 3294
    const-string v3, "View >>"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onNext(): messageValue4 = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3315
    :cond_3
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mPrevNextCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mPrevNextCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3316
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mPrevNextCursor:Landroid/database/Cursor;

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    .line 3318
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->messageChanged()V

    .line 3320
    const v0, 0x7f04000c

    invoke-virtual {p0, v11, v0}, Lcom/android/email/activity/MessageView;->overridePendingTransition(II)V

    move v0, v7

    .line 3323
    goto/16 :goto_2

    :cond_4
    move v0, v10

    .line 3327
    goto/16 :goto_2

    :cond_5
    move-wide v12, v2

    move v2, v1

    move-wide v0, v12

    goto :goto_3

    :cond_6
    move-wide v12, v2

    move v2, v1

    move-wide v0, v12

    goto/16 :goto_1

    :cond_7
    move-wide v12, v2

    move v2, v1

    move-wide v0, v12

    goto/16 :goto_0
.end method

.method private onPrevious()Z
    .locals 15

    .prologue
    const v12, 0x7f04000b

    const-wide/16 v10, -0x2

    const/4 v9, 0x1

    const/4 v7, 0x0

    const-string v8, "View >>"

    .line 3332
    iget v0, p0, Lcom/android/email/activity/MessageView;->mViewModeType:I

    sget v1, Lcom/android/email/activity/MessageList;->VIEW_MODE_STANDARD:I

    if-eq v0, v1, :cond_5

    .line 3333
    sget v0, Lcom/android/email/activity/MessageList;->mPositionOfSelectedMessage:I

    .line 3334
    sget-object v1, Lcom/android/email/activity/MessageList;->mMessageIdArray4ThreadList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3336
    const-string v2, "View >>"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPrevious(): position = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 3337
    const-string v2, "View >>"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPrevious(): list size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/email/activity/MessageList;->mMessageIdArray4ThreadList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 3339
    if-le v1, v9, :cond_4

    .line 3341
    if-lez v0, :cond_6

    .line 3343
    add-int/lit8 v2, v0, -0x1

    .line 3344
    sget-object v0, Lcom/android/email/activity/MessageList;->mMessageIdArray4ThreadList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v3, v0

    .line 3345
    const-string v0, "View >>"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPrevious(): position1 = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 3346
    const-string v0, "View >>"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPrevious(): messageValue1 = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 3348
    cmp-long v0, v3, v10

    if-eqz v0, :cond_0

    iget-wide v5, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    cmp-long v0, v3, v5

    if-nez v0, :cond_8

    .line 3349
    :cond_0
    if-lez v2, :cond_2

    .line 3350
    add-int/lit8 v1, v2, -0x1

    .line 3351
    sget-object v0, Lcom/android/email/activity/MessageList;->mMessageIdArray4ThreadList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v2, v0

    .line 3353
    cmp-long v0, v2, v10

    if-nez v0, :cond_7

    .line 3354
    if-lez v1, :cond_1

    .line 3355
    add-int/lit8 v1, v1, -0x1

    .line 3356
    sget-object v0, Lcom/android/email/activity/MessageList;->mMessageIdArray4ThreadList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v2, v0

    move-wide v13, v2

    move v2, v1

    move-wide v0, v13

    .line 3380
    :goto_0
    const-string v3, "View >>"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPrevious(): position2 = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 3381
    const-string v3, "View >>"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPrevious(): messageValue2 = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 3383
    iput-wide v0, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    .line 3385
    iget-wide v0, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    cmp-long v0, v0, v10

    if-eqz v0, :cond_6

    .line 3386
    const-string v0, "View >>"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPrevious(): mMessageId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v3, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 3387
    sput v2, Lcom/android/email/activity/MessageList;->mPositionOfSelectedMessage:I

    .line 3389
    sget-object v0, Lcom/android/email/activity/MessageView;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    iget-wide v3, p0, Lcom/android/email/activity/MessageView;->mMailboxId:J

    iget v5, p0, Lcom/android/email/activity/MessageView;->mDisplayMode:I

    sget v6, Lcom/android/email/activity/MessageView;->mTextSize:I

    invoke-static/range {v0 .. v6}, Lcom/android/email/activity/MessageView;->actionView(Landroid/content/Context;JJII)V

    .line 3390
    const v0, 0x7f04000c

    invoke-virtual {p0, v12, v0}, Lcom/android/email/activity/MessageView;->overridePendingTransition(II)V

    .line 3391
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->finish()V

    move v0, v9

    .line 3425
    :goto_1
    return v0

    :cond_1
    move v0, v7

    .line 3359
    goto :goto_1

    .line 3364
    :cond_2
    cmp-long v0, v3, v10

    if-nez v0, :cond_3

    const/4 v0, 0x2

    if-ne v1, v0, :cond_3

    .line 3366
    sget-object v0, Lcom/android/email/activity/MessageList;->mMessageIdArray4ThreadList:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3368
    sget-object v0, Lcom/android/email/activity/MessageList;->mMessageIdArray4ThreadList:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    .line 3370
    sput v7, Lcom/android/email/activity/MessageList;->mPositionOfSelectedMessage:I

    .line 3372
    sget-object v0, Lcom/android/email/activity/MessageView;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    iget-wide v3, p0, Lcom/android/email/activity/MessageView;->mMailboxId:J

    iget v5, p0, Lcom/android/email/activity/MessageView;->mDisplayMode:I

    sget v6, Lcom/android/email/activity/MessageView;->mTextSize:I

    invoke-static/range {v0 .. v6}, Lcom/android/email/activity/MessageView;->actionView(Landroid/content/Context;JJII)V

    .line 3373
    const v0, 0x7f04000c

    invoke-virtual {p0, v12, v0}, Lcom/android/email/activity/MessageView;->overridePendingTransition(II)V

    .line 3374
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->finish()V

    move v0, v9

    .line 3375
    goto :goto_1

    :cond_3
    move v0, v7

    .line 3377
    goto :goto_1

    .line 3397
    :cond_4
    if-ne v1, v9, :cond_6

    .line 3398
    sget-object v0, Lcom/android/email/activity/MessageList;->mMessageIdArray4ThreadList:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    .line 3400
    sput v7, Lcom/android/email/activity/MessageList;->mPositionOfSelectedMessage:I

    .line 3402
    sget-object v0, Lcom/android/email/activity/MessageView;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    iget-wide v3, p0, Lcom/android/email/activity/MessageView;->mMailboxId:J

    iget v5, p0, Lcom/android/email/activity/MessageView;->mDisplayMode:I

    sget v6, Lcom/android/email/activity/MessageView;->mTextSize:I

    invoke-static/range {v0 .. v6}, Lcom/android/email/activity/MessageView;->actionView(Landroid/content/Context;JJII)V

    .line 3403
    const v0, 0x7f04000c

    invoke-virtual {p0, v12, v0}, Lcom/android/email/activity/MessageView;->overridePendingTransition(II)V

    .line 3404
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->finish()V

    move v0, v9

    .line 3405
    goto :goto_1

    .line 3413
    :cond_5
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mPrevNextCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mPrevNextCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    if-lez v0, :cond_6

    .line 3414
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mPrevNextCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToPrevious()Z

    .line 3415
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mPrevNextCursor:Landroid/database/Cursor;

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    .line 3417
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->messageChanged()V

    .line 3419
    const v0, 0x7f04000d

    const v1, 0x7f04000e

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/MessageView;->overridePendingTransition(II)V

    move v0, v9

    .line 3422
    goto/16 :goto_1

    :cond_6
    move v0, v7

    .line 3425
    goto/16 :goto_1

    :cond_7
    move-wide v13, v2

    move v2, v1

    move-wide v0, v13

    goto/16 :goto_0

    :cond_8
    move-wide v0, v3

    goto/16 :goto_0
.end method

.method private onReceiverList()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 2279
    .line 2285
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mListTos:[Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mListTos:[Ljava/lang/String;

    aget-object v0, v0, v7

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 2287
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mListTos:[Ljava/lang/String;

    array-length v0, v0

    .line 2289
    :goto_0
    iget-object v1, p0, Lcom/android/email/activity/MessageView;->mListCcs:[Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 2290
    iget-object v1, p0, Lcom/android/email/activity/MessageView;->mListCcs:[Ljava/lang/String;

    array-length v1, v1

    .line 2292
    :goto_1
    if-lez v0, :cond_6

    .line 2293
    add-int/lit8 v2, v0, 0x1

    .line 2295
    :goto_2
    if-lez v1, :cond_0

    .line 2296
    add-int/lit8 v3, v1, 0x1

    add-int/2addr v2, v3

    .line 2298
    :cond_0
    new-array v2, v2, [Lcom/android/email/activity/MessageView$ReceiverViewType;

    .line 2300
    if-lez v0, :cond_2

    move v3, v7

    .line 2301
    :goto_3
    add-int/lit8 v4, v0, 0x1

    if-ge v3, v4, :cond_2

    .line 2303
    if-nez v3, :cond_1

    .line 2304
    new-instance v4, Lcom/android/email/activity/MessageView$ReceiverViewType;

    const v5, 0x7f08005e

    invoke-virtual {p0, v5}, Lcom/android/email/activity/MessageView;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p0, v5, v8}, Lcom/android/email/activity/MessageView$ReceiverViewType;-><init>(Lcom/android/email/activity/MessageView;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    .line 2301
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 2306
    :cond_1
    new-instance v4, Lcom/android/email/activity/MessageView$ReceiverViewType;

    iget-object v5, p0, Lcom/android/email/activity/MessageView;->mListTos:[Ljava/lang/String;

    sub-int v6, v3, v9

    aget-object v5, v5, v6

    invoke-direct {v4, p0, v8, v5}, Lcom/android/email/activity/MessageView$ReceiverViewType;-><init>(Lcom/android/email/activity/MessageView;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    goto :goto_4

    .line 2310
    :cond_2
    if-lez v1, :cond_5

    .line 2312
    if-eqz v0, :cond_3

    add-int/lit8 v0, v0, 0x1

    :goto_5
    move v3, v7

    .line 2313
    :goto_6
    add-int/lit8 v4, v1, 0x1

    if-ge v3, v4, :cond_5

    .line 2315
    if-nez v3, :cond_4

    .line 2316
    add-int v4, v3, v0

    new-instance v5, Lcom/android/email/activity/MessageView$ReceiverViewType;

    const v6, 0x7f08005f

    invoke-virtual {p0, v6}, Lcom/android/email/activity/MessageView;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, p0, v6, v8}, Lcom/android/email/activity/MessageView$ReceiverViewType;-><init>(Lcom/android/email/activity/MessageView;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v2, v4

    .line 2313
    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_3
    move v0, v7

    .line 2312
    goto :goto_5

    .line 2318
    :cond_4
    add-int v4, v3, v0

    new-instance v5, Lcom/android/email/activity/MessageView$ReceiverViewType;

    iget-object v6, p0, Lcom/android/email/activity/MessageView;->mListCcs:[Ljava/lang/String;

    sub-int v7, v3, v9

    aget-object v6, v6, v7

    invoke-direct {v5, p0, v8, v6}, Lcom/android/email/activity/MessageView$ReceiverViewType;-><init>(Lcom/android/email/activity/MessageView;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v2, v4

    goto :goto_7

    .line 2322
    :cond_5
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2323
    const v1, 0x7f080176

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageView;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2325
    new-instance v1, Lcom/android/email/activity/MessageView$ReceiverListAdapter;

    invoke-direct {v1, p0, v2}, Lcom/android/email/activity/MessageView$ReceiverListAdapter;-><init>(Landroid/content/Context;[Lcom/android/email/activity/MessageView$ReceiverViewType;)V

    iput-object v1, p0, Lcom/android/email/activity/MessageView;->mReceiverListAdapter:Lcom/android/email/activity/MessageView$ReceiverListAdapter;

    .line 2327
    iget-object v1, p0, Lcom/android/email/activity/MessageView;->mReceiverListAdapter:Lcom/android/email/activity/MessageView$ReceiverListAdapter;

    new-instance v2, Lcom/android/email/activity/MessageView$9;

    invoke-direct {v2, p0}, Lcom/android/email/activity/MessageView$9;-><init>(Lcom/android/email/activity/MessageView;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2333
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 2335
    return-void

    :cond_6
    move v2, v7

    goto/16 :goto_2

    :cond_7
    move v1, v7

    goto/16 :goto_1

    :cond_8
    move v0, v7

    goto/16 :goto_0
.end method

.method private onReply()V
    .locals 6

    .prologue
    .line 3072
    iget-object v3, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    if-eqz v3, :cond_1

    .line 3074
    iget-wide v3, p0, Lcom/android/email/activity/MessageView;->mMailboxId:J

    invoke-static {p0, v3, v4}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v2

    .line 3075
    .local v2, mailbox:Lcom/android/email/provider/EmailContent$Mailbox;
    if-eqz v2, :cond_2

    const/16 v3, 0x61

    invoke-static {v2, v3}, Lcom/android/email/Utility;->isMailboxType(Lcom/android/email/provider/EmailContent$Mailbox;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3077
    iget-wide v0, v2, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    .line 3078
    .local v0, accountKey:J
    const-wide/16 v3, -0x2

    cmp-long v3, v0, v3

    if-lez v3, :cond_0

    .line 3079
    iget-object v3, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    iget-object v3, v3, Lcom/android/email/provider/EmailContent$Message;->mDisplayName:Ljava/lang/String;

    invoke-static {p0, v3, v0, v1}, Lcom/android/email/activity/MessageCompose;->actionCompose(Landroid/content/Context;Ljava/lang/String;J)Z

    .line 3084
    .end local v0           #accountKey:J
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->finish()V

    .line 3086
    .end local v2           #mailbox:Lcom/android/email/provider/EmailContent$Mailbox;
    :cond_1
    return-void

    .line 3083
    .restart local v2       #mailbox:Lcom/android/email/provider/EmailContent$Mailbox;
    :cond_2
    iget-object v3, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    iget-wide v3, v3, Lcom/android/email/provider/EmailContent$Message;->mId:J

    const/4 v5, 0x0

    invoke-static {p0, v3, v4, v5}, Lcom/android/email/activity/MessageCompose;->actionReply(Landroid/content/Context;JZ)V

    goto :goto_0
.end method

.method private onReplyAll()V
    .locals 3

    .prologue
    .line 3089
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    if-eqz v0, :cond_0

    .line 3090
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Message;->mId:J

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Lcom/android/email/activity/MessageCompose;->actionReply(Landroid/content/Context;JZ)V

    .line 3091
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->finish()V

    .line 3093
    :cond_0
    return-void
.end method

.method private onRespond(II)V
    .locals 6
    .parameter "response"
    .parameter "toastResId"

    .prologue
    const/4 v5, 0x0

    .line 3529
    iget-wide v0, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    .line 3530
    .local v0, messageIdToRespond:J
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->onPrevious()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->onNext()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_0
    const/4 v3, 0x1

    move v2, v3

    .line 3531
    .local v2, moved:Z
    :goto_0
    iget v3, p0, Lcom/android/email/activity/MessageView;->mPreviousMeetingResponse:I

    if-eq v3, p1, :cond_1

    .line 3532
    iget-object v3, p0, Lcom/android/email/activity/MessageView;->mController:Lcom/android/email/Controller;

    iget-object v4, p0, Lcom/android/email/activity/MessageView;->mControllerCallback:Lcom/android/email/activity/MessageView$ControllerResults;

    invoke-virtual {v3, v0, v1, p1, v4}, Lcom/android/email/Controller;->sendMeetingResponse(JILcom/android/email/Controller$Result;)V

    .line 3533
    iput p1, p0, Lcom/android/email/activity/MessageView;->mPreviousMeetingResponse:I

    .line 3535
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/email/activity/MessageView;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 3536
    if-nez v2, :cond_2

    .line 3537
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->finish()V

    .line 3540
    :cond_2
    return-void

    .end local v2           #moved:Z
    :cond_3
    move v2, v5

    .line 3530
    goto :goto_0
.end method

.method private onRestore()V
    .locals 12

    .prologue
    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 2198
    .line 2199
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2202
    iget-wide v1, p0, Lcom/android/email/activity/MessageView;->mAccountId:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 2204
    iget-wide v1, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    invoke-direct {p0, v1, v2}, Lcom/android/email/activity/MessageView;->lookupAccountForMessage(J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/email/activity/MessageView;->mAccountId:J

    .line 2206
    :cond_0
    iget-wide v1, p0, Lcom/android/email/activity/MessageView;->mAccountId:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    .line 2274
    :cond_1
    :goto_0
    return-void

    .line 2212
    :cond_2
    iget-object v1, p0, Lcom/android/email/activity/MessageView;->mController:Lcom/android/email/Controller;

    iget-wide v2, p0, Lcom/android/email/activity/MessageView;->mAccountId:J

    invoke-virtual {v1, v2, v3, v11}, Lcom/android/email/Controller;->findOrCreateMailboxOfType(JI)J

    move-result-wide v6

    .line 2216
    sget-object v1, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/email/activity/MessageView;->MESSAGEID_TO_MAILBOXID_PROJECTION:[Ljava/lang/String;

    const-string v3, "_id=?"

    new-array v4, v10, [Ljava/lang/String;

    iget-wide v8, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v11

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 2220
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    sget v2, Lcom/android/email/activity/MessageView;->MESSAGEID_TO_MAILBOXID_COLUMN_MAILBOXID:I

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2224
    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2230
    sget-object v1, Lcom/android/email/provider/EmailContent$Message;->SYNCED_CONTENT_URI:Landroid/net/Uri;

    iget-wide v2, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 2234
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 2235
    const-string v3, "mailboxKey"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2237
    invoke-virtual {v0, v1, v2, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2239
    invoke-static {p0}, Lcom/android/email/MessagingController;->getInstance(Landroid/content/Context;)Lcom/android/email/MessagingController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mLegacyController:Lcom/android/email/MessagingController;

    .line 2242
    iget-wide v0, p0, Lcom/android/email/activity/MessageView;->mAccountId:J

    invoke-static {p0, v0, v1}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v0

    .line 2243
    iget-object v1, p0, Lcom/android/email/activity/MessageView;->mController:Lcom/android/email/Controller;

    invoke-virtual {v1, v0}, Lcom/android/email/Controller;->isMessagingController(Lcom/android/email/provider/EmailContent$Account;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2244
    iget-wide v0, p0, Lcom/android/email/activity/MessageView;->mAccountId:J

    .line 2245
    new-instance v2, Lcom/android/email/activity/MessageView$8;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/email/activity/MessageView$8;-><init>(Lcom/android/email/activity/MessageView;J)V

    invoke-virtual {v2}, Lcom/android/email/activity/MessageView$8;->start()V

    .line 2253
    :cond_4
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0004

    new-array v2, v10, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v11

    invoke-virtual {v0, v1, v10, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2254
    invoke-static {p0, v0, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2256
    iget-boolean v0, p0, Lcom/android/email/activity/MessageView;->mLogView:Z

    if-nez v0, :cond_5

    .line 2258
    sget-object v0, Lcom/android/email/activity/MessageView;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/email/activity/MessageList;

    iget-wide v1, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageList;->removeMessage(Ljava/lang/Long;)V

    .line 2261
    :cond_5
    iget-boolean v0, p0, Lcom/android/email/activity/MessageView;->mLogView:Z

    if-ne v0, v10, :cond_6

    .line 2262
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->finish()V

    goto/16 :goto_0

    .line 2224
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    .line 2266
    :cond_6
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->onPrevious()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->onNext()Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    move v0, v10

    .line 2268
    :goto_1
    if-nez v0, :cond_1

    .line 2271
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->finish()V

    goto/16 :goto_0

    :cond_8
    move v0, v11

    .line 2266
    goto :goto_1
.end method

.method private onSaveToCalendar()V
    .locals 6

    .prologue
    const/16 v4, 0x20

    const-string v5, ""

    .line 3883
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.EDIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3884
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.calendar"

    const-string v3, "com.android.calendar.EditEvent"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3885
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3888
    const-string v1, "<(no)?script[^>]*>.*?</(no)?script>"

    invoke-static {v1, v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 3889
    const-string v2, "<style[^>]*>.*</style>"

    invoke-static {v2, v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 3896
    const-string v3, "&[^;]+;"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 3903
    iget-object v4, p0, Lcom/android/email/activity/MessageView;->mSaveToCalendarHtmlText:Ljava/lang/String;

    .line 3905
    invoke-virtual {v1, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 3906
    const-string v4, ""

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3907
    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 3908
    const-string v2, ""

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3913
    invoke-virtual {v3, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 3914
    const-string v2, ""

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3918
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    .line 3920
    const-string v2, "description"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3923
    const-string v1, "title"

    iget-object v2, p0, Lcom/android/email/activity/MessageView;->mSubjectView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 3924
    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageView;->startActivity(Landroid/content/Intent;)V

    .line 3927
    return-void
.end method

.method private onShowPictures()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 3759
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    if-eqz v0, :cond_1

    .line 3760
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageContentView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 3761
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageContentView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    .line 3766
    :cond_0
    iput-boolean v4, p0, Lcom/android/email/activity/MessageView;->ShowPicturesEnabled:Z

    .line 3767
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mShowPicturesSection:Landroid/view/MenuItem;

    iget-boolean v1, p0, Lcom/android/email/activity/MessageView;->ShowPicturesEnabled:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 3770
    new-instance v0, Lcom/android/email/activity/MessageView$LoadEmbeddedAttachmentsTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/email/activity/MessageView$LoadEmbeddedAttachmentsTask;-><init>(Lcom/android/email/activity/MessageView;Lcom/android/email/activity/MessageView$1;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mLoadEmbeddedAttachmentsTask:Lcom/android/email/activity/MessageView$LoadEmbeddedAttachmentsTask;

    .line 3771
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mLoadEmbeddedAttachmentsTask:Lcom/android/email/activity/MessageView$LoadEmbeddedAttachmentsTask;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Long;

    iget-object v2, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    iget-wide v2, v2, Lcom/android/email/provider/EmailContent$Message;->mId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageView$LoadEmbeddedAttachmentsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 3773
    :cond_1
    return-void
.end method

.method private onTextSize()V
    .locals 4

    .prologue
    .line 4693
    .line 4694
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const v2, 0x7f080133

    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageView;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const v2, 0x7f080134

    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageView;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const v2, 0x7f080135

    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageView;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 4696
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4698
    const v2, 0x7f080132

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 4699
    sget v2, Lcom/android/email/activity/MessageView;->mTextSize:I

    new-instance v3, Lcom/android/email/activity/MessageView$17;

    invoke-direct {v3, p0}, Lcom/android/email/activity/MessageView$17;-><init>(Lcom/android/email/activity/MessageView;)V

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 4705
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 4706
    return-void
.end method

.method private onTextSizeChange(I)V
    .locals 4
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    .line 4788
    sput p1, Lcom/android/email/activity/MessageView;->mTextSize:I

    .line 4790
    new-instance v0, Lcom/android/email/activity/MessageView$ChangeTextSizeTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/email/activity/MessageView$ChangeTextSizeTask;-><init>(Lcom/android/email/activity/MessageView;Lcom/android/email/activity/MessageView$1;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mTextSizeTask:Lcom/android/email/activity/MessageView$ChangeTextSizeTask;

    .line 4791
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mTextSizeTask:Lcom/android/email/activity/MessageView$ChangeTextSizeTask;

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageView$ChangeTextSizeTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 4793
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    if-eqz v0, :cond_0

    .line 4794
    new-instance v0, Lcom/android/email/activity/MessageView$LoadBodyTask;

    iget-object v1, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    iget-wide v1, v1, Lcom/android/email/provider/EmailContent$Message;->mId:J

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/email/activity/MessageView$LoadBodyTask;-><init>(Lcom/android/email/activity/MessageView;JZ)V

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mLoadBodyTask:Lcom/android/email/activity/MessageView$LoadBodyTask;

    .line 4795
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mLoadBodyTask:Lcom/android/email/activity/MessageView$LoadBodyTask;

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageView$LoadBodyTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 4798
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    if-eqz v0, :cond_1

    .line 4800
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    invoke-virtual {v0}, Lcom/android/email/winset/NonScrollView;->resume()V

    .line 4802
    :cond_1
    return-void
.end method

.method private onViewAttachment(Lcom/android/email/activity/MessageView$AttachmentInfo;)V
    .locals 11
    .parameter

    .prologue
    const/4 v10, 0x1

    .line 3718
    iput v10, p0, Lcom/android/email/activity/MessageView;->mSaveAttachmentsCount:I

    .line 3719
    iget-wide v0, p1, Lcom/android/email/activity/MessageView$AttachmentInfo;->attachmentId:J

    iput-wide v0, p0, Lcom/android/email/activity/MessageView;->mLoadAttachmentId:J

    .line 3720
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/MessageView;->mLoadAttachmentSave:Z

    .line 3721
    iget-object v0, p1, Lcom/android/email/activity/MessageView$AttachmentInfo;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mLoadAttachmentName:Ljava/lang/String;

    .line 3723
    const-string v0, "View >>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onViewAttachment called! mLoadAttachmentSave = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/email/activity/MessageView;->mLoadAttachmentSave:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 3726
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mController:Lcom/android/email/Controller;

    iget-wide v1, p1, Lcom/android/email/activity/MessageView$AttachmentInfo;->attachmentId:J

    iget-wide v3, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    iget-object v5, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    iget-wide v5, v5, Lcom/android/email/provider/EmailContent$Message;->mMailboxKey:J

    iget-wide v7, p0, Lcom/android/email/activity/MessageView;->mAccountId:J

    iget-object v9, p0, Lcom/android/email/activity/MessageView;->mControllerCallback:Lcom/android/email/activity/MessageView$ControllerResults;

    invoke-virtual/range {v0 .. v10}, Lcom/android/email/Controller;->loadAttachment(JJJJLcom/android/email/Controller$Result;Z)V

    .line 3731
    iput-boolean v10, p0, Lcom/android/email/activity/MessageView;->mDownloading:Z

    .line 3733
    return-void
.end method

.method private parseHtmlATag(Ljava/lang/String;)Z
    .locals 9
    .parameter "htmlBody"

    .prologue
    const-string v8, "jebarlin >>> Entering parseHtmlATag Length :"

    .line 8719
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "jebarlin >>> Entering parseHtmlATag Length :"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 8720
    const-string v0, "<IMG+.*?>"

    .line 8721
    .local v0, REG_EXPRE_FOR_IMG:Ljava/lang/String;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "jebarlin >>> Entering parseHtmlATag Length :"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 8722
    const/4 v1, 0x0

    .line 8725
    .local v1, hasDataImage:Z
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 8726
    .local v4, p:Ljava/util/regex/Pattern;
    invoke-virtual {v4, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 8727
    .local v3, m:Ljava/util/regex/Matcher;
    :cond_0
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 8728
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "jebarlin >>> Body Contains IMG tag"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 8729
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    .line 8730
    .local v2, imgTag:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 8731
    const-string v5, "SRC=\""

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 8732
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "jebarlin >>> Body Contains IMG tag but not SRC"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 8733
    const/4 v5, 0x1

    .line 8754
    .end local v2           #imgTag:Ljava/lang/String;
    :goto_0
    return v5

    :cond_1
    move v5, v1

    goto :goto_0
.end method

.method private reloadUiFromBody(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 17
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 7345
    .line 7347
    const/4 v3, 0x0

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/MessageView;->mHtmlText:Ljava/lang/String;

    .line 7348
    const/4 v4, 0x0

    .line 7373
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 7375
    const/4 v5, 0x0

    .line 7376
    const/4 v6, 0x0

    .line 7378
    const/high16 v7, -0x100

    .line 7379
    const v8, 0x7f020100

    .line 7383
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MessageView;->mDisplayMode:I

    move v9, v0

    packed-switch v9, :pswitch_data_0

    move v9, v8

    move v10, v7

    move-object/from16 v16, v6

    move-object v6, v5

    move-object/from16 v5, v16

    .line 7429
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/android/email/activity/MessageView;->updateColors()V

    .line 7432
    invoke-direct/range {p0 .. p0}, Lcom/android/email/activity/MessageView;->updateTextSize()V

    .line 7434
    const/4 v3, 0x0

    move v7, v3

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mAttachments:Landroid/widget/LinearLayout;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-ge v7, v3, :cond_0

    .line 7435
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mAttachments:Landroid/widget/LinearLayout;

    move-object v3, v0

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const v8, 0x7f070119

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 7436
    const-string v8, "View >>"

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 7439
    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->invalidate()V

    .line 7434
    add-int/lit8 v3, v7, 0x1

    move v7, v3

    goto :goto_1

    .line 7385
    :pswitch_0
    const v3, 0x7f0200ff

    .line 7387
    :try_start_0
    const-string v8, "View >>"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "power saving : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MessageView;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "power_saving_mode"

    invoke-static {v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v9, v3

    move v10, v7

    move-object/from16 v16, v6

    move-object v6, v5

    move-object/from16 v5, v16

    .line 7398
    goto :goto_0

    .line 7395
    :catch_0
    move-exception v8

    .line 7397
    invoke-virtual {v8}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    move v9, v3

    move v10, v7

    move-object/from16 v16, v6

    move-object v6, v5

    move-object/from16 v5, v16

    .line 7399
    goto :goto_0

    .line 7401
    :pswitch_1
    new-instance v5, Ljava/lang/String;

    const v6, 0x7f080129

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageView;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 7402
    new-instance v6, Ljava/lang/String;

    const v7, 0x7f080128

    move-object/from16 v0, p0

    move v1, v7

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageView;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 7403
    const v7, 0x7f09000c

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    move v9, v8

    move v10, v3

    move-object/from16 v16, v6

    move-object v6, v5

    move-object/from16 v5, v16

    .line 7404
    goto/16 :goto_0

    .line 7406
    :pswitch_2
    new-instance v5, Ljava/lang/String;

    const v6, 0x7f08012b

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageView;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 7407
    new-instance v6, Ljava/lang/String;

    const v7, 0x7f08012a

    move-object/from16 v0, p0

    move v1, v7

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageView;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 7408
    const v7, 0x7f09000e

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    move v9, v8

    move v10, v3

    move-object/from16 v16, v6

    move-object v6, v5

    move-object/from16 v5, v16

    .line 7409
    goto/16 :goto_0

    .line 7411
    :pswitch_3
    new-instance v5, Ljava/lang/String;

    const v6, 0x7f08012d

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageView;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 7412
    new-instance v6, Ljava/lang/String;

    const v7, 0x7f08012c

    move-object/from16 v0, p0

    move v1, v7

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageView;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 7413
    const v7, 0x7f090010

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    move v9, v8

    move v10, v3

    move-object/from16 v16, v6

    move-object v6, v5

    move-object/from16 v5, v16

    .line 7414
    goto/16 :goto_0

    .line 7416
    :pswitch_4
    new-instance v5, Ljava/lang/String;

    const v6, 0x7f08012f

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageView;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 7417
    new-instance v6, Ljava/lang/String;

    const v7, 0x7f08012e

    move-object/from16 v0, p0

    move v1, v7

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageView;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 7418
    const v7, 0x7f090012

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    move v9, v8

    move v10, v3

    move-object/from16 v16, v6

    move-object v6, v5

    move-object/from16 v5, v16

    .line 7419
    goto/16 :goto_0

    .line 7421
    :pswitch_5
    new-instance v5, Ljava/lang/String;

    const v6, 0x7f080131

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageView;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 7422
    new-instance v6, Ljava/lang/String;

    const v7, 0x7f080130

    move-object/from16 v0, p0

    move v1, v7

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageView;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 7423
    const v7, 0x7f090014

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    move v9, v8

    move v10, v3

    move-object/from16 v16, v6

    move-object v6, v5

    move-object/from16 v5, v16

    goto/16 :goto_0

    .line 7443
    :cond_0
    if-nez p2, :cond_12

    .line 7444
    const-string v3, "Email"

    const-string v7, "reloadUiFromBody : bodyHtml is null"

    invoke-static {v3, v7}, Lcom/android/email/Email;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 7450
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 7451
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MessageView;->mDisplayMode:I

    move v7, v0

    if-eqz v7, :cond_1

    .line 7452
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<html><body bgcolor="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " text="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "><p style=\"word-break:break-all;\">"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 7457
    :goto_2
    if-eqz p1, :cond_8

    .line 7461
    invoke-static/range {p1 .. p1}, Lcom/android/email/mail/internet/EmailHtmlUtil;->escapeCharacterToDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 7467
    sget-object v6, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 7468
    :goto_3
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 7469
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->start()I

    .line 7470
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v6

    .line 7471
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mailto:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 7472
    const-string v8, "<a href=\"%s\">%s</a>"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v7, v11, v12

    const/4 v7, 0x1

    aput-object v6, v11, v7

    invoke-static {v8, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 7473
    invoke-virtual {v5, v3, v6}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    .line 7475
    const-wide/16 v6, 0x64

    :try_start_1
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 7476
    :catch_1
    move-exception v6

    .line 7478
    invoke-virtual {v6}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3

    .line 7454
    :cond_1
    const-string v5, "<html><body>"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 7482
    :cond_2
    invoke-virtual {v5, v3}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 7483
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 7484
    const/4 v6, 0x0

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 7501
    sget-object v6, Lcom/android/email/activity/MessageView;->OWN_WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 7502
    :goto_4
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 7503
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->start()I

    move-result v7

    .line 7509
    if-eqz v7, :cond_3

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x40

    if-eq v7, v8, :cond_5

    .line 7510
    :cond_3
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v7

    .line 7511
    sget-object v8, Lcom/android/email/activity/MessageView;->WEB_URL_PROTOCOL:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 7513
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    .line 7514
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->find()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 7518
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->end()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    .line 7528
    :goto_5
    const-string v11, "<a href=\"%s\">%s</a>"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v8, v12, v13

    const/4 v8, 0x1

    aput-object v7, v12, v8

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 7529
    invoke-virtual {v6, v3, v7}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_4

    .line 7525
    :cond_4
    const-string v8, "http://"

    invoke-virtual {v11, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_5

    .line 7532
    :cond_5
    const-string v7, "$0"

    invoke-virtual {v6, v3, v7}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_4

    .line 7535
    :cond_6
    invoke-virtual {v6, v3}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 7536
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 7537
    const/4 v6, 0x0

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 7542
    const-string v6, "<p style=\"word-break:break-all;\">"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    .line 7543
    const/4 v7, -0x1

    if-ne v6, v7, :cond_d

    .line 7544
    const/4 v6, 0x0

    .line 7548
    :goto_6
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-gt v6, v7, :cond_8

    .line 7550
    const-string v7, "<a href="

    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v7

    .line 7551
    const-string v8, "</a>"

    invoke-virtual {v5, v8, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v8

    .line 7552
    const/4 v11, -0x1

    if-eq v7, v11, :cond_7

    const/4 v11, -0x1

    if-ne v8, v11, :cond_e

    .line 7554
    :cond_7
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 7596
    :cond_8
    const-string v5, "</body></html>"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 7597
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    move/from16 v16, v4

    move-object v4, v3

    move/from16 v3, v16

    .line 7684
    :goto_7
    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/MessageView;->mSaveToCalendarHtmlText:Ljava/lang/String;

    .line 7687
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mMenu:Landroid/view/Menu;

    move-object v5, v0

    if-eqz v5, :cond_9

    .line 7688
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mMenu:Landroid/view/Menu;

    move-object v5, v0

    const v6, 0x7f0701ab

    invoke-interface {v5, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 7689
    const/4 v6, 0x1

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 7691
    :cond_9
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/email/activity/MessageView;->mSaveToCalendarEnabled:Z

    .line 7694
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mMessageContentView:Landroid/webkit/WebView;

    move-object v5, v0

    if-eqz v5, :cond_b

    .line 7697
    invoke-direct/range {p0 .. p0}, Lcom/android/email/activity/MessageView;->checkITPolicy_AllowHTMLEmail()Z

    move-result v5

    if-nez v5, :cond_1b

    .line 7699
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "11111 MessageView.java >>>>> reloadUiFromBody()  >>>>> 4451"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 7700
    const v5, 0x7f0801a4

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v1, v5

    move v2, v6

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 7703
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mHtmlText:Ljava/lang/String;

    move-object v5, v0

    if-eqz v5, :cond_1b

    .line 7706
    const-string v5, "<(/?)([^<>]*)?>"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 7707
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mHtmlText:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 7709
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1b

    .line 7716
    :goto_8
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/email/activity/MessageView;->ShowPicturesEnabled:Z

    .line 7717
    invoke-direct/range {p0 .. p0}, Lcom/android/email/activity/MessageView;->IsEAS()Z

    move-result v4

    if-nez v4, :cond_a

    .line 7719
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mMessageContentView:Landroid/webkit/WebView;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/WebSettings;->getBlockNetworkImage()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 7723
    const/4 v4, 0x1

    if-ne v3, v4, :cond_1a

    .line 7725
    invoke-direct/range {p0 .. p0}, Lcom/android/email/activity/MessageView;->IsAlreadyDownloadEmbeddedAttachments()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_19

    .line 7727
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mMessageContentView:Landroid/webkit/WebView;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    .line 7728
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/email/activity/MessageView;->ShowPicturesEnabled:Z

    .line 7745
    :cond_a
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mMessageContentView:Landroid/webkit/WebView;

    move-object v3, v0

    const-string v4, "email://"

    const-string v6, "text/html"

    const-string v7, "utf-8"

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 7746
    if-eqz p2, :cond_b

    .line 7747
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mMessageContentView:Landroid/webkit/WebView;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mMessageContentView:Landroid/webkit/WebView;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/webkit/WebView;->getScale()F

    move-result v4

    const/high16 v5, 0x42c8

    mul-float/2addr v4, v5

    float-to-int v4, v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setInitialScale(I)V

    .line 7755
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mMenu:Landroid/view/Menu;

    move-object v3, v0

    if-eqz v3, :cond_c

    .line 7756
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mShowPicturesSection:Landroid/view/MenuItem;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/email/activity/MessageView;->ShowPicturesEnabled:Z

    move v4, v0

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 7771
    :cond_c
    const-string v3, "Email"

    const-string v4, "reloadUiFromBody mRefreshedFromLoadMoreCB == false"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7773
    new-instance v3, Lcom/android/email/activity/MessageView$LoadAttachmentsTask;

    move-object v0, v3

    move-object/from16 v1, p0

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/email/activity/MessageView$LoadAttachmentsTask;-><init>(Lcom/android/email/activity/MessageView;Z)V

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/MessageView;->mLoadAttachmentsTask:Lcom/android/email/activity/MessageView$LoadAttachmentsTask;

    .line 7775
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mLoadAttachmentsTask:Lcom/android/email/activity/MessageView$LoadAttachmentsTask;

    move-object v3, v0

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    move-object v6, v0

    iget-wide v6, v6, Lcom/android/email/provider/EmailContent$Message;->mId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Lcom/android/email/activity/MessageView$LoadAttachmentsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 7778
    return-void

    .line 7546
    :cond_d
    const/4 v7, 0x0

    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_6

    .line 7559
    :cond_e
    if-ge v7, v8, :cond_10

    .line 7561
    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 7562
    sget-object v11, Landroid/util/Patterns;->PHONE:Ljava/util/regex/Pattern;

    invoke-virtual {v11, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 7563
    :goto_a
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v11

    if-eqz v11, :cond_f

    .line 7564
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->start()I

    .line 7565
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v11

    .line 7566
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "tel:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 7567
    const-string v13, "<a href=\"%s\">%s</a>"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v12, v14, v15

    const/4 v12, 0x1

    aput-object v11, v14, v12

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 7568
    invoke-virtual {v6, v3, v11}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_a

    .line 7571
    :cond_f
    invoke-virtual {v6, v3}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 7574
    add-int/lit8 v6, v8, 0x4

    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 7575
    add-int/lit8 v6, v8, 0x4

    .line 7576
    goto/16 :goto_6

    .line 7579
    :cond_10
    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 7580
    sget-object v8, Landroid/util/Patterns;->PHONE:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 7581
    :goto_b
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_11

    .line 7582
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->start()I

    .line 7583
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v8

    .line 7584
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "tel:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 7585
    const-string v12, "<a href=\"%s\">%s</a>"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v11, v13, v14

    const/4 v11, 0x1

    aput-object v8, v13, v11

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 7586
    invoke-virtual {v6, v3, v8}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_b

    .line 7589
    :cond_11
    invoke-virtual {v6, v3}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move v6, v7

    .line 7590
    goto/16 :goto_6

    .line 7599
    :cond_12
    const-string v3, "Email"

    const-string v4, "reloadUiFromBody : bodyHtml is not null"

    invoke-static {v3, v4}, Lcom/android/email/Email;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 7601
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 7602
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MessageView;->mDisplayMode:I

    move v4, v0

    if-eqz v4, :cond_13

    .line 7603
    const-string v4, "<style type=text/css>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 7604
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "*\n { background-color: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";\n color: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";\n font-color: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";\n !important; \n}\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 7605
    const-string v4, "--></style>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 7615
    :cond_13
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    const-string v6, " "

    move-object/from16 v0, p2

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 7616
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    const-string v5, " "

    move-object/from16 v0, p2

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/MessageView;->mHtmlText:Ljava/lang/String;

    .line 7619
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<([a-zA-Z]+)(\\s[^>]*)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/email/activity/MessageView;->OWN_WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual {v4}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "([^>]*>.*)(\\1>)?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|([a-zA-Z]+)(\\s[^>]*)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v4}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "([^>]*>.*)(\\1>)?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 7622
    const-string v4, "(<[^>]+>)"

    .line 7624
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/email/activity/MessageView;->OWN_WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual {v6}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v6}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 7625
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "|"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "|"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 7627
    const/4 v6, 0x2

    invoke-static {v5, v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mHtmlText:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 7628
    new-instance v6, Ljava/lang/StringBuffer;

    const-string v7, ""

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 7629
    :cond_14
    :goto_c
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_17

    .line 7630
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v7

    .line 7631
    const-string v8, ""

    .line 7633
    invoke-static {v3, v7}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_14

    invoke-static {v4, v7}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_14

    .line 7644
    sget-object v8, Lcom/android/email/activity/MessageView;->OWN_WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual {v8}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v7}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_16

    .line 7646
    sget-object v8, Lcom/android/email/activity/MessageView;->WEB_URL_PROTOCOL:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 7647
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_15

    .line 7650
    const-string v8, ""

    .line 7656
    :goto_d
    const-string v11, "<a href=\"%s\">%s</a>"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v12, v13

    const/4 v8, 0x1

    aput-object v7, v12, v8

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 7657
    invoke-virtual {v5, v6, v7}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_c

    .line 7654
    :cond_15
    const-string v8, "http://"

    goto :goto_d

    .line 7659
    :cond_16
    sget-object v8, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v8}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v7}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_14

    .line 7661
    const-string v8, "<a href=\"mailto:%s\">%s</a>"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v7, v11, v12

    const/4 v12, 0x1

    aput-object v7, v11, v12

    invoke-static {v8, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 7662
    invoke-virtual {v5, v6, v7}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_c

    .line 7671
    :cond_17
    invoke-virtual {v5, v6}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 7672
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 7679
    sget-object v4, Lcom/android/email/activity/MessageView;->IMG_TAG_START_REGEX:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    .line 7680
    if-nez p2, :cond_18

    :cond_18
    move/from16 v16, v4

    move-object v4, v3

    move/from16 v3, v16

    goto/16 :goto_7

    .line 7732
    :cond_19
    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/email/activity/MessageView;->ShowPicturesEnabled:Z

    goto/16 :goto_9

    .line 7737
    :cond_1a
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/email/activity/MessageView;->ShowPicturesEnabled:Z

    goto/16 :goto_9

    :cond_1b
    move-object v5, v4

    goto/16 :goto_8

    .line 7383
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private reloadUiFromMessage(Lcom/android/email/provider/EmailContent$Message;Z)V
    .locals 9
    .parameter
    .parameter

    .prologue
    .line 6799
    iput-object p1, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    .line 6800
    iget-wide v0, p1, Lcom/android/email/provider/EmailContent$Message;->mAccountKey:J

    iput-wide v0, p0, Lcom/android/email/activity/MessageView;->mAccountId:J

    .line 6802
    iget-wide v0, p0, Lcom/android/email/activity/MessageView;->mAccountId:J

    invoke-static {p0, v0, v1}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    .line 6803
    iget v0, p0, Lcom/android/email/activity/MessageView;->mDisplayMode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 6804
    const-string v0, "View >>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reloadUIFromMessage || display mode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/MessageView;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v2}, Lcom/android/email/provider/EmailContent$Account;->getDisplayMode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 6805
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v0}, Lcom/android/email/provider/EmailContent$Account;->getDisplayMode()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/MessageView;->mDisplayMode:I

    .line 6808
    :cond_0
    sget v0, Lcom/android/email/activity/MessageView;->mTextSize:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 6809
    const-string v0, "View >>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reloadUIFromMessage || text size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/MessageView;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v2}, Lcom/android/email/provider/EmailContent$Account;->getTextSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 6810
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v0}, Lcom/android/email/provider/EmailContent$Account;->getTextSize()I

    move-result v0

    sput v0, Lcom/android/email/activity/MessageView;->mTextSize:I

    .line 6813
    :cond_1
    iget-wide v0, p0, Lcom/android/email/activity/MessageView;->mMailboxId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 6814
    iget-wide v0, p1, Lcom/android/email/provider/EmailContent$Message;->mMailboxKey:J

    iput-wide v0, p0, Lcom/android/email/activity/MessageView;->mMailboxId:J

    .line 6817
    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mPrevNextCursor:Landroid/database/Cursor;

    if-nez v0, :cond_3

    .line 6818
    new-instance v0, Lcom/android/email/activity/MessageView$LoadPrevNextTask;

    iget-wide v1, p0, Lcom/android/email/activity/MessageView;->mMailboxId:J

    invoke-direct {v0, p0, v1, v2}, Lcom/android/email/activity/MessageView$LoadPrevNextTask;-><init>(Lcom/android/email/activity/MessageView;J)V

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mLoadPrevNextTask:Lcom/android/email/activity/MessageView$LoadPrevNextTask;

    .line 6819
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mLoadPrevNextTask:Lcom/android/email/activity/MessageView$LoadPrevNextTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageView$LoadPrevNextTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 6834
    :cond_3
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mSubjectView_marquee:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/email/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6835
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mSubjectView_marquee:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p1, Lcom/android/email/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/email/activity/MessageView;->mSubjectAttachmentIcon:Landroid/graphics/drawable/Drawable;

    :goto_0
    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 6838
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mSubjectView:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/email/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6840
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mFromView:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/email/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/email/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/email/mail/Address;

    move-result-object v1

    invoke-static {v1}, Lcom/android/email/mail/Address;->toFriendly([Lcom/android/email/mail/Address;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6841
    new-instance v0, Ljava/util/Date;

    iget-wide v1, p1, Lcom/android/email/provider/EmailContent$Message;->mTimeStamp:J

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 6843
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 6844
    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6845
    invoke-static {v0}, Lcom/android/email/Utility;->isDateToday(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 6847
    iget-object v2, p0, Lcom/android/email/activity/MessageView;->mTimeFormat:Ljava/text/DateFormat;

    invoke-virtual {v2, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6855
    :goto_1
    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6856
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mDateView:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6859
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    iget v0, v0, Lcom/android/email/provider/EmailContent$Message;->mLastVerb:I

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Message;->mLastVerbTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_4

    .line 6860
    const v0, 0x7f070127

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 6862
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6864
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/email/activity/MessageView;->mDateFormat:Ljava/text/DateFormat;

    new-instance v3, Ljava/util/Date;

    iget-object v4, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    iget-wide v4, v4, Lcom/android/email/provider/EmailContent$Message;->mLastVerbTime:J

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/MessageView;->mTimeFormat:Ljava/text/DateFormat;

    new-instance v3, Ljava/util/Date;

    iget-object v4, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    iget-wide v4, v4, Lcom/android/email/provider/EmailContent$Message;->mLastVerbTime:J

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6866
    iget-object v2, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    iget v2, v2, Lcom/android/email/provider/EmailContent$Message;->mLastVerb:I

    packed-switch v2, :pswitch_data_0

    .line 6883
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6888
    :cond_4
    :goto_2
    iget-object v0, p1, Lcom/android/email/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 6891
    iget-object v0, p1, Lcom/android/email/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    const-string v1, "\t"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6894
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 6895
    if-eqz v0, :cond_10

    .line 6896
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 6897
    array-length v2, v0

    iput v2, p0, Lcom/android/email/activity/MessageView;->allToListCount:I

    .line 6898
    iget v2, p0, Lcom/android/email/activity/MessageView;->allToListCount:I

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/email/activity/MessageView;->mListTos:[Ljava/lang/String;

    .line 6900
    const/4 v2, 0x0

    :goto_3
    iget v3, p0, Lcom/android/email/activity/MessageView;->allToListCount:I

    if-ge v2, v3, :cond_b

    .line 6902
    aget-object v3, v0, v2

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 6903
    array-length v4, v3

    const/4 v5, 0x1

    if-le v4, v5, :cond_a

    .line 6904
    const/4 v4, 0x1

    aget-object v4, v3, v4

    if-eqz v4, :cond_5

    const/4 v4, 0x1

    aget-object v4, v3, v4

    const-string v5, "\t"

    invoke-virtual {v4, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 6906
    :cond_5
    const/4 v4, 0x0

    aget-object v4, v3, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6907
    iget-object v4, p0, Lcom/android/email/activity/MessageView;->mListTos:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v3, v3, v5

    aput-object v3, v4, v2

    .line 6919
    :goto_4
    iget v3, p0, Lcom/android/email/activity/MessageView;->allToListCount:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-ge v2, v3, :cond_6

    .line 6920
    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6900
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 6835
    :cond_7
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 6851
    :cond_8
    iget-object v2, p0, Lcom/android/email/activity/MessageView;->mDateFormat:Ljava/text/DateFormat;

    invoke-virtual {v2, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6852
    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6853
    iget-object v2, p0, Lcom/android/email/activity/MessageView;->mTimeFormat:Ljava/text/DateFormat;

    invoke-virtual {v2, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 6868
    :pswitch_0
    const v2, 0x7f0802c8

    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageView;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 6873
    :pswitch_1
    const v2, 0x7f0802c9

    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageView;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 6878
    :pswitch_2
    const v2, 0x7f0802ca

    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageView;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 6910
    :cond_9
    const/4 v4, 0x1

    aget-object v4, v3, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6911
    iget-object v4, p0, Lcom/android/email/activity/MessageView;->mListTos:[Ljava/lang/String;

    const/4 v5, 0x1

    aget-object v3, v3, v5

    aput-object v3, v4, v2

    goto :goto_4

    .line 6915
    :cond_a
    const/4 v4, 0x0

    aget-object v4, v3, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6916
    iget-object v4, p0, Lcom/android/email/activity/MessageView;->mListTos:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v3, v3, v5

    aput-object v3, v4, v2

    goto/16 :goto_4

    .line 6924
    :cond_b
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6935
    :cond_c
    :goto_5
    iget v1, p0, Lcom/android/email/activity/MessageView;->allToListCount:I

    if-lez v1, :cond_d

    .line 6936
    iget-object v1, p0, Lcom/android/email/activity/MessageView;->mToView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6940
    :cond_d
    iget-object v0, p1, Lcom/android/email/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    if-eqz v0, :cond_15

    iget-object v0, p1, Lcom/android/email/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 6942
    iget-object v0, p1, Lcom/android/email/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    const-string v1, "\t"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6944
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 6945
    if-eqz v0, :cond_1c

    .line 6946
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 6947
    array-length v2, v0

    iput v2, p0, Lcom/android/email/activity/MessageView;->allCCListCount:I

    .line 6948
    iget v2, p0, Lcom/android/email/activity/MessageView;->allCCListCount:I

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/email/activity/MessageView;->mListCcs:[Ljava/lang/String;

    .line 6950
    const/4 v2, 0x0

    :goto_6
    iget v3, p0, Lcom/android/email/activity/MessageView;->allCCListCount:I

    if-ge v2, v3, :cond_13

    .line 6952
    aget-object v3, v0, v2

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 6953
    array-length v4, v3

    const/4 v5, 0x1

    if-le v4, v5, :cond_12

    .line 6954
    const/4 v4, 0x1

    aget-object v4, v3, v4

    if-eqz v4, :cond_e

    const/4 v4, 0x1

    aget-object v4, v3, v4

    const-string v5, "\t"

    invoke-virtual {v4, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 6956
    :cond_e
    const/4 v4, 0x0

    aget-object v4, v3, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6957
    iget-object v4, p0, Lcom/android/email/activity/MessageView;->mListCcs:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v3, v3, v5

    aput-object v3, v4, v2

    .line 6969
    :goto_7
    iget v3, p0, Lcom/android/email/activity/MessageView;->allCCListCount:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-ge v2, v3, :cond_f

    .line 6970
    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6950
    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 6927
    :cond_10
    iget-object v0, p1, Lcom/android/email/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/email/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/email/mail/Address;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/mail/Address;->toFriendly([Lcom/android/email/mail/Address;)Ljava/lang/String;

    move-result-object v0

    .line 6929
    if-eqz v0, :cond_c

    .line 6930
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MessageView;->mListTos:[Ljava/lang/String;

    .line 6931
    iget-object v1, p0, Lcom/android/email/activity/MessageView;->mListTos:[Ljava/lang/String;

    array-length v1, v1

    iput v1, p0, Lcom/android/email/activity/MessageView;->allToListCount:I

    goto/16 :goto_5

    .line 6960
    :cond_11
    const/4 v4, 0x1

    aget-object v4, v3, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6961
    iget-object v4, p0, Lcom/android/email/activity/MessageView;->mListCcs:[Ljava/lang/String;

    const/4 v5, 0x1

    aget-object v3, v3, v5

    aput-object v3, v4, v2

    goto :goto_7

    .line 6965
    :cond_12
    const/4 v4, 0x0

    aget-object v4, v3, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6966
    iget-object v4, p0, Lcom/android/email/activity/MessageView;->mListCcs:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v3, v3, v5

    aput-object v3, v4, v2

    goto :goto_7

    .line 6974
    :cond_13
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6985
    :cond_14
    :goto_8
    iget v1, p0, Lcom/android/email/activity/MessageView;->allCCListCount:I

    if-lez v1, :cond_15

    .line 6986
    iget-object v1, p0, Lcom/android/email/activity/MessageView;->mCcView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6989
    :cond_15
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->IsEAS()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 6990
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Message;->mMeetingInfo:Ljava/lang/String;

    if-eqz v0, :cond_1f

    .line 6992
    :try_start_0
    new-instance v0, Lcom/android/email/mail/PackedString;

    iget-object v1, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    iget-object v1, v1, Lcom/android/email/provider/EmailContent$Message;->mMeetingInfo:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/android/email/mail/PackedString;-><init>(Ljava/lang/String;)V

    .line 6993
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "MMM dd,yyyy hh:mm a"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 6994
    const-string v2, "GMT"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 6995
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTimezoneOffset()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    mul-int/lit8 v2, v2, 0x3c

    .line 6996
    const-string v3, "Meeting Req"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Offset: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6997
    const-string v3, "DTSTART"

    invoke-virtual {v0, v3}, Lcom/android/email/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 6998
    const-string v4, "DTEND"

    invoke-virtual {v0, v4}, Lcom/android/email/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 6999
    const-string v5, "LOC"

    invoke-virtual {v0, v5}, Lcom/android/email/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7000
    invoke-static {v3}, Lcom/android/email/Utility;->parseEmailDateTimeToMillis(Ljava/lang/String;)J

    move-result-wide v5

    int-to-long v7, v2

    sub-long/2addr v5, v7

    .line 7001
    invoke-static {v4}, Lcom/android/email/Utility;->parseEmailDateTimeToMillis(Ljava/lang/String;)J

    move-result-wide v3

    int-to-long v7, v2

    sub-long v2, v3, v7

    .line 7004
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 7005
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 7006
    const/4 v2, 0x0

    const/16 v3, 0xc

    invoke-virtual {v4, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 7007
    const/4 v3, 0x0

    const/16 v5, 0xc

    invoke-virtual {v1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 7010
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 7011
    const-string v2, "Meeting Req"

    const-string v3, "Meeting ends same day"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7012
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/activity/MessageView;->meetingTime1:Ljava/lang/String;

    .line 7013
    iget-object v2, p0, Lcom/android/email/activity/MessageView;->meetingTime1:Ljava/lang/String;

    const/16 v3, 0xc

    const/16 v4, 0x14

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MessageView;->meetingTime1:Ljava/lang/String;

    .line 7014
    iget-object v1, p0, Lcom/android/email/activity/MessageView;->mMeetingTimeLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 7015
    iget-object v1, p0, Lcom/android/email/activity/MessageView;->mMeetingTimeLayout2:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 7016
    iget-object v1, p0, Lcom/android/email/activity/MessageView;->mMeetingTimeView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/email/activity/MessageView;->meetingTime1:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7031
    :cond_16
    :goto_9
    iget-object v1, p0, Lcom/android/email/activity/MessageView;->mMeetingLocationLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 7032
    iget-object v1, p0, Lcom/android/email/activity/MessageView;->mMeetingLocationView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7053
    :goto_a
    iget v0, p1, Lcom/android/email/provider/EmailContent$Message;->mImportance:I

    .line 7054
    packed-switch v0, :pswitch_data_1

    .line 7075
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mPriorityLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 7080
    :goto_b
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mAttachmentIcon:Landroid/widget/ImageView;

    iget-object v1, p1, Lcom/android/email/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    if-eqz v1, :cond_23

    const/4 v1, 0x0

    :goto_c
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7081
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mFavoriteIcon:Landroid/widget/ImageView;

    iget-boolean v1, p1, Lcom/android/email/provider/EmailContent$Message;->mFlagFavorite:Z

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/android/email/activity/MessageView;->mFavoriteIconOn:Landroid/graphics/drawable/Drawable;

    :goto_d
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 7084
    iget-boolean v0, p0, Lcom/android/email/activity/MessageView;->mAlldownloadIconVisible:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    .line 7085
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mAllDownloadIcon:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/email/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    if-eqz v1, :cond_25

    const/4 v1, 0x0

    :goto_e
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7092
    :goto_f
    sget-object v0, Lcom/android/email/activity/MessageView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/email/provider/EmailContent$Message;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-wide v6, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 7096
    const/4 v1, 0x0

    .line 7098
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->IsEAS()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 7101
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 7102
    const-string v1, "isMimeLoaded"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 7108
    :cond_17
    iget-byte v2, p1, Lcom/android/email/provider/EmailContent$Message;->mFlagTruncated:B

    const/4 v3, 0x1

    if-eq v2, v3, :cond_18

    iget-wide v2, p1, Lcom/android/email/provider/EmailContent$Message;->mId:J

    iget v4, p1, Lcom/android/email/provider/EmailContent$Message;->mIsMimeLoaded:I

    invoke-direct {p0, v2, v3, v4}, Lcom/android/email/activity/MessageView;->hasInlineDataImage(JI)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 7111
    :cond_18
    iget-object v1, p0, Lcom/android/email/activity/MessageView;->mMoreMessage:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 7115
    iget-object v1, p0, Lcom/android/email/activity/MessageView;->loadMoreMessage:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 7117
    const-string v1, "MessageView"

    const-string v2, "mFlagTruncated == FLAG_TRUNCATED_YES"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 7169
    :goto_10
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 7180
    :cond_19
    :goto_11
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->IsEAS()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 7192
    iget-wide v0, p1, Lcom/android/email/provider/EmailContent$Message;->mId:J

    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/MessageView;->isVoiceMail(J)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 7193
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mVmView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7197
    :goto_12
    iget v0, p1, Lcom/android/email/provider/EmailContent$Message;->mMessageType:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_2e

    .line 7198
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mSmsView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7206
    :cond_1a
    :goto_13
    iget v0, p1, Lcom/android/email/provider/EmailContent$Message;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2f

    .line 7208
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMeetingYes:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 7209
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMeetingMaybe:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 7210
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMeetingNo:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 7211
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->loadMoreMessageLinearLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 7212
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mAcceptButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 7213
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mTentativeButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 7214
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mDeclineButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 7229
    :goto_14
    const-string v0, "View >>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "allToListCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/email/activity/MessageView;->allToListCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " allCCListCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/email/activity/MessageView;->allCCListCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 7231
    iget v0, p0, Lcom/android/email/activity/MessageView;->allToListCount:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1b

    iget v0, p0, Lcom/android/email/activity/MessageView;->allCCListCount:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_30

    .line 7233
    :cond_1b
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mExpanderIcon:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 7240
    :goto_15
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->updateColors()V

    .line 7242
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->updateTextSize()V

    .line 7244
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/MessageView;->mNeedToReloadMessage:Z

    .line 7245
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/email/activity/MessageView;->mCurrentMessageID:J

    .line 7253
    if-eqz p2, :cond_32

    iget v0, p1, Lcom/android/email/provider/EmailContent$Message;->mFlagLoaded:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_32

    .line 7255
    iget-wide v0, p1, Lcom/android/email/provider/EmailContent$Message;->mId:J

    iput-wide v0, p0, Lcom/android/email/activity/MessageView;->mWaitForLoadMessageId:J

    .line 7258
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->checkITPolicy_AllowPOPIMAP()Z

    move-result v0

    if-nez v0, :cond_31

    .line 7260
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "11111 MessageView.java >>>>> reloadUiFromMessage()  >>>>> 4220"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 7261
    const v0, 0x7f0801a5

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 7286
    :goto_16
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    const v1, 0x7f07013f

    invoke-virtual {v0, v1}, Lcom/android/email/winset/NonScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7291
    const/4 v0, 0x0

    .line 7294
    iget-object v1, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    const v2, 0x7f070143

    invoke-virtual {v1, v2}, Lcom/android/email/winset/NonScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 7298
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->IsEAS()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 7300
    sget-object v0, Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagStatus;->FOLLOWUP_STATUS_CLEARED:Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagStatus;

    .line 7302
    :try_start_2
    invoke-virtual {p1, p0}, Lcom/android/email/provider/EmailContent$Message;->getFollowupFlag(Landroid/content/Context;)Lcom/android/email/provider/EmailContent$FollowupFlag;

    move-result-object v0

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$FollowupFlag;->Status:Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagStatus;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 7306
    :goto_17
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>>>>>> flag : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 7308
    sget-object v1, Lcom/android/email/activity/MessageView$19;->$SwitchMap$com$android$email$provider$EmailContent$FollowupFlag$FollowupFlagStatus:[I

    invoke-virtual {v0}, Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagStatus;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_2

    .line 7312
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    const v1, 0x7f070126

    invoke-virtual {v0, v1}, Lcom/android/email/winset/NonScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7325
    :goto_18
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    const v1, 0x7f070109

    invoke-virtual {v0, v1}, Lcom/android/email/winset/NonScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7332
    :goto_19
    return-void

    .line 6977
    :cond_1c
    iget-object v0, p1, Lcom/android/email/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/email/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/email/mail/Address;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/mail/Address;->toFriendly([Lcom/android/email/mail/Address;)Ljava/lang/String;

    move-result-object v0

    .line 6979
    if-eqz v0, :cond_14

    .line 6980
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MessageView;->mListCcs:[Ljava/lang/String;

    .line 6981
    iget-object v1, p0, Lcom/android/email/activity/MessageView;->mListCcs:[Ljava/lang/String;

    array-length v1, v1

    iput v1, p0, Lcom/android/email/activity/MessageView;->allCCListCount:I

    goto/16 :goto_8

    .line 7020
    :cond_1d
    :try_start_3
    const-string v2, "Meeting Req"

    const-string v3, "Meeting does not end same day"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7021
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/activity/MessageView;->meetingTime1:Ljava/lang/String;

    .line 7022
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MessageView;->meetingTime2:Ljava/lang/String;

    .line 7023
    iget-object v1, p0, Lcom/android/email/activity/MessageView;->mMeetingTimeLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 7024
    iget-object v1, p0, Lcom/android/email/activity/MessageView;->mMeetingTimeLayout2:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 7025
    iget v1, p0, Lcom/android/email/activity/MessageView;->mCurrentOrientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1e

    .line 7026
    iget-object v1, p0, Lcom/android/email/activity/MessageView;->mMeetingTimeView2:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/email/activity/MessageView;->meetingTime1:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_9

    .line 7034
    :catch_0
    move-exception v0

    .line 7035
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_a

    .line 7027
    :cond_1e
    :try_start_4
    iget v1, p0, Lcom/android/email/activity/MessageView;->mCurrentOrientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_16

    .line 7028
    iget-object v1, p0, Lcom/android/email/activity/MessageView;->mMeetingTimeView2:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/email/activity/MessageView;->meetingTime2:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_9

    .line 7040
    :cond_1f
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMeetingTimeLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 7041
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMeetingTimeLayout2:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 7042
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMeetingLocationLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_a

    .line 7047
    :cond_20
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMeetingTimeLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 7048
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMeetingTimeLayout2:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 7049
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMeetingLocationLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_a

    .line 7056
    :pswitch_3
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->IsEAS()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 7057
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mPriorityLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 7058
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mPriorityView:Landroid/widget/TextView;

    const v1, 0x7f0801c3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_b

    .line 7060
    :cond_21
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mPriorityLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_b

    .line 7064
    :pswitch_4
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mPriorityLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_b

    .line 7067
    :pswitch_5
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->IsEAS()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 7068
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mPriorityLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 7069
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mPriorityView:Landroid/widget/TextView;

    const v1, 0x7f0801c4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_b

    .line 7071
    :cond_22
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mPriorityLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_b

    .line 7080
    :cond_23
    const/16 v1, 0x8

    goto/16 :goto_c

    .line 7081
    :cond_24
    iget-object v1, p0, Lcom/android/email/activity/MessageView;->mFavoriteIconOff:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_d

    .line 7085
    :cond_25
    const/16 v1, 0x8

    goto/16 :goto_e

    .line 7088
    :cond_26
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mAllDownloadIcon:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_f

    .line 7120
    :cond_27
    :try_start_5
    const-string v2, "2003Inline"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MessageView: Inside reloadUiFromMessage(): before calling onMoreMEssage + message.mIsMimeLoaded= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/android/email/provider/EmailContent$Message;->mIsMimeLoaded:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7121
    const-string v2, "2003Inline"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MessageView: Inside reloadUiFromMessage(): before calling onMoreMEssage + oktofetch= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7124
    sget-object v2, Lcom/android/email/activity/MessageView;->mContext:Landroid/content/Context;

    iget-wide v3, p1, Lcom/android/email/provider/EmailContent$Message;->mAccountKey:J

    invoke-static {v2, v3, v4}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v2

    .line 7125
    iget-object v2, v2, Lcom/android/email/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    .line 7127
    iget v3, p1, Lcom/android/email/provider/EmailContent$Message;->mFlagLoaded:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_28

    .line 7128
    const-string v3, "MessageView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "message.mFlagLoaded = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lcom/android/email/provider/EmailContent$Message;->mFlagLoaded:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Message.FLAG_LOADED_COMPLETE = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7131
    :cond_28
    if-eqz v2, :cond_2b

    const-string v3, "2.5"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2b

    if-nez v1, :cond_2b

    .line 7135
    const-string v1, "MessageView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isEx2003 = true, Protocol Version = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Message Truncated = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p1, Lcom/android/email/provider/EmailContent$Message;->mFlagTruncated:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7137
    iget-object v1, p0, Lcom/android/email/activity/MessageView;->mMoreMessage:Landroid/view/View;

    if-eqz v1, :cond_29

    .line 7138
    iget-object v1, p0, Lcom/android/email/activity/MessageView;->mMoreMessage:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 7142
    :cond_29
    iget-object v1, p0, Lcom/android/email/activity/MessageView;->loadMoreMessage:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 7160
    :cond_2a
    :goto_1a
    const-string v1, "MessageView"

    const-string v2, "mFlagTruncated == FLAG_TRUNCATED_NO"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_10

    .line 7163
    :catch_1
    move-exception v1

    .line 7165
    :try_start_6
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 7169
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto/16 :goto_11

    .line 7148
    :cond_2b
    :try_start_7
    iget-object v1, p0, Lcom/android/email/activity/MessageView;->mMoreMessage:Landroid/view/View;

    if-eqz v1, :cond_2c

    .line 7149
    iget-object v1, p0, Lcom/android/email/activity/MessageView;->mMoreMessage:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 7151
    :cond_2c
    iget-object v1, p0, Lcom/android/email/activity/MessageView;->loadMoreMessage:Landroid/widget/Button;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 7154
    if-eqz v2, :cond_2a

    const-string v1, "2.5"

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 7156
    iget-wide v1, p1, Lcom/android/email/provider/EmailContent$Message;->mId:J

    invoke-direct {p0, v1, v2}, Lcom/android/email/activity/MessageView;->getContentId(J)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_1a

    .line 7169
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1

    .line 7195
    :cond_2d
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mVmView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_12

    .line 7200
    :cond_2e
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mSmsView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_13

    .line 7218
    :cond_2f
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMeetingYes:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 7219
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMeetingMaybe:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 7220
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMeetingNo:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 7221
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->loadMoreMessageLinearLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 7222
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mAcceptButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 7223
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mTentativeButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 7224
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mDeclineButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_14

    .line 7237
    :cond_30
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mExpanderIcon:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_15

    .line 7267
    :cond_31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/MessageView;->mNeedToReloadMessage:Z

    .line 7268
    iget-wide v0, p1, Lcom/android/email/provider/EmailContent$Message;->mId:J

    iput-wide v0, p0, Lcom/android/email/activity/MessageView;->mCurrentMessageID:J

    .line 7269
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mController:Lcom/android/email/Controller;

    iget-wide v1, p1, Lcom/android/email/provider/EmailContent$Message;->mId:J

    iget-object v3, p0, Lcom/android/email/activity/MessageView;->mControllerCallback:Lcom/android/email/activity/MessageView$ControllerResults;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/Controller;->loadMessageForView(JLcom/android/email/Controller$Result;)V

    goto/16 :goto_16

    .line 7274
    :cond_32
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/email/activity/MessageView;->mWaitForLoadMessageId:J

    .line 7276
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->IsEAS()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 7277
    new-instance v0, Lcom/android/email/activity/MessageView$LoadBodyTask;

    iget-wide v1, p1, Lcom/android/email/provider/EmailContent$Message;->mId:J

    invoke-direct {v0, p0, v1, v2, p2}, Lcom/android/email/activity/MessageView$LoadBodyTask;-><init>(Lcom/android/email/activity/MessageView;JZ)V

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mLoadBodyTask:Lcom/android/email/activity/MessageView$LoadBodyTask;

    .line 7282
    :goto_1b
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mLoadBodyTask:Lcom/android/email/activity/MessageView$LoadBodyTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageView$LoadBodyTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_16

    .line 7279
    :cond_33
    new-instance v0, Lcom/android/email/activity/MessageView$LoadBodyTask;

    iget-wide v1, p1, Lcom/android/email/provider/EmailContent$Message;->mId:J

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/email/activity/MessageView$LoadBodyTask;-><init>(Lcom/android/email/activity/MessageView;JZ)V

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mLoadBodyTask:Lcom/android/email/activity/MessageView$LoadBodyTask;

    goto :goto_1b

    .line 7303
    :catch_2
    move-exception v0

    .line 7304
    sget-object v0, Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagStatus;->FOLLOWUP_STATUS_CLEARED:Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagStatus;

    goto/16 :goto_17

    .line 7316
    :pswitch_6
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    const v1, 0x7f070126

    invoke-virtual {v0, v1}, Lcom/android/email/winset/NonScrollView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200ca

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 7317
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    const v1, 0x7f070126

    invoke-virtual {v0, v1}, Lcom/android/email/winset/NonScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_18

    .line 7321
    :pswitch_7
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    const v1, 0x7f070126

    invoke-virtual {v0, v1}, Lcom/android/email/winset/NonScrollView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200d4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 7322
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    const v1, 0x7f070126

    invoke-virtual {v0, v1}, Lcom/android/email/winset/NonScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_18

    .line 7329
    :cond_34
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    const v1, 0x7f070109

    invoke-virtual {v0, v1}, Lcom/android/email/winset/NonScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7330
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    const v1, 0x7f070126

    invoke-virtual {v0, v1}, Lcom/android/email/winset/NonScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_19

    .line 6866
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 7054
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 7308
    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private repositionPrevNextCursor()V
    .locals 4

    .prologue
    .line 4887
    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 4888
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MessageView: reposition to id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/Email;->log(Ljava/lang/String;)V

    .line 4891
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mPrevNextCursor:Landroid/database/Cursor;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 4892
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mPrevNextCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mPrevNextCursor:Landroid/database/Cursor;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 4894
    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mPrevNextCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4896
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->finish()V

    .line 4898
    :cond_3
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mPrevNextCursor:Landroid/database/Cursor;

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageView;->updatePrevNextArrows(Landroid/database/Cursor;)V

    .line 4899
    return-void
.end method

.method private saveAttachmentsTemporarily()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 3737
    iput v13, p0, Lcom/android/email/activity/MessageView;->mSaveAttachmentsCount:I

    move v12, v13

    .line 3738
    :goto_0
    iget-object v1, p0, Lcom/android/email/activity/MessageView;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v12, v1, :cond_1

    .line 3740
    iget-object v1, p0, Lcom/android/email/activity/MessageView;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v12}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/android/email/activity/MessageView$AttachmentInfo;

    move-object v2, v0

    .line 3741
    iget-wide v3, v2, Lcom/android/email/activity/MessageView$AttachmentInfo;->attachmentId:J

    iput-wide v3, p0, Lcom/android/email/activity/MessageView;->mLoadAttachmentId:J

    .line 3742
    iput-boolean v13, p0, Lcom/android/email/activity/MessageView;->mLoadAttachmentSave:Z

    .line 3744
    const-string v1, "View >>"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveAttachmentsTemporarily called! mLoadAttachmentSave = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/email/activity/MessageView;->mLoadAttachmentSave:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 3746
    iget-object v1, v2, Lcom/android/email/activity/MessageView$AttachmentInfo;->name:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/email/activity/MessageView;->mLoadAttachmentName:Ljava/lang/String;

    .line 3747
    if-nez v12, :cond_0

    .line 3748
    iget-object v1, p0, Lcom/android/email/activity/MessageView;->mController:Lcom/android/email/Controller;

    iget-wide v2, v2, Lcom/android/email/activity/MessageView$AttachmentInfo;->attachmentId:J

    iget-wide v4, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    iget-object v6, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    iget-wide v6, v6, Lcom/android/email/provider/EmailContent$Message;->mMailboxKey:J

    iget-wide v8, p0, Lcom/android/email/activity/MessageView;->mAccountId:J

    iget-object v10, p0, Lcom/android/email/activity/MessageView;->mControllerCallback:Lcom/android/email/activity/MessageView$ControllerResults;

    const/4 v11, 0x1

    invoke-virtual/range {v1 .. v11}, Lcom/android/email/Controller;->loadAttachment(JJJJLcom/android/email/Controller$Result;Z)V

    .line 3738
    :goto_1
    add-int/lit8 v1, v12, 0x1

    iget v2, p0, Lcom/android/email/activity/MessageView;->mSaveAttachmentsCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/email/activity/MessageView;->mSaveAttachmentsCount:I

    move v12, v1

    goto :goto_0

    .line 3751
    :cond_0
    iget-object v1, p0, Lcom/android/email/activity/MessageView;->mController:Lcom/android/email/Controller;

    iget-wide v2, v2, Lcom/android/email/activity/MessageView$AttachmentInfo;->attachmentId:J

    iget-wide v4, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    iget-object v6, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    iget-wide v6, v6, Lcom/android/email/provider/EmailContent$Message;->mMailboxKey:J

    iget-wide v8, p0, Lcom/android/email/activity/MessageView;->mAccountId:J

    iget-object v10, p0, Lcom/android/email/activity/MessageView;->mControllerCallback:Lcom/android/email/activity/MessageView$ControllerResults;

    move v11, v13

    invoke-virtual/range {v1 .. v11}, Lcom/android/email/Controller;->loadAttachment(JJJJLcom/android/email/Controller$Result;Z)V

    goto :goto_1

    .line 3755
    :cond_1
    return-void
.end method

.method private startPresenceCheck()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 5468
    iget-object v2, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    if-eqz v2, :cond_0

    .line 5469
    iget-object v2, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    iget-object v2, v2, Lcom/android/email/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/email/mail/Address;->unpackFirst(Ljava/lang/String;)Lcom/android/email/mail/Address;

    move-result-object v1

    .line 5470
    .local v1, sender:Lcom/android/email/mail/Address;
    if-eqz v1, :cond_0

    .line 5471
    invoke-virtual {v1}, Lcom/android/email/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 5472
    .local v0, email:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 5473
    new-instance v2, Lcom/android/email/activity/MessageView$PresenceCheckTask;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/email/activity/MessageView$PresenceCheckTask;-><init>(Lcom/android/email/activity/MessageView;Lcom/android/email/activity/MessageView$1;)V

    iput-object v2, p0, Lcom/android/email/activity/MessageView;->mPresenceCheckTask:Lcom/android/email/activity/MessageView$PresenceCheckTask;

    .line 5474
    iget-object v2, p0, Lcom/android/email/activity/MessageView;->mPresenceCheckTask:Lcom/android/email/activity/MessageView$PresenceCheckTask;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    aput-object v0, v3, v4

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MessageView$PresenceCheckTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 5480
    .end local v0           #email:Ljava/lang/String;
    .end local v1           #sender:Lcom/android/email/mail/Address;
    :goto_0
    return-void

    .line 5479
    :cond_0
    invoke-direct {p0, v4}, Lcom/android/email/activity/MessageView;->updateSenderPresence(I)V

    goto :goto_0
.end method

.method private updateAttachmentThumbnail(J)V
    .locals 6
    .parameter "attachmentId"

    .prologue
    .line 5124
    const/4 v2, 0x0

    .local v2, i:I
    iget-object v4, p0, Lcom/android/email/activity/MessageView;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .local v1, count:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 5125
    iget-object v4, p0, Lcom/android/email/activity/MessageView;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageView$AttachmentInfo;

    .line 5126
    .local v0, attachment:Lcom/android/email/activity/MessageView$AttachmentInfo;
    iget-wide v4, v0, Lcom/android/email/activity/MessageView$AttachmentInfo;->attachmentId:J

    cmp-long v4, v4, p1

    if-nez v4, :cond_1

    .line 5127
    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageView;->getPreviewIcon(Lcom/android/email/activity/MessageView$AttachmentInfo;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 5128
    .local v3, previewIcon:Landroid/graphics/Bitmap;
    if-eqz v3, :cond_0

    .line 5129
    iget-object v4, p0, Lcom/android/email/activity/MessageView;->mHandler:Lcom/android/email/activity/MessageView$MessageViewHandler;

    invoke-virtual {v4, v2, v3}, Lcom/android/email/activity/MessageView$MessageViewHandler;->updateAttachmentIcon(ILandroid/graphics/Bitmap;)V

    .line 5134
    .end local v0           #attachment:Lcom/android/email/activity/MessageView$AttachmentInfo;
    .end local v3           #previewIcon:Landroid/graphics/Bitmap;
    :cond_0
    return-void

    .line 5124
    .restart local v0       #attachment:Lcom/android/email/activity/MessageView$AttachmentInfo;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private updateColors()V
    .locals 3

    .prologue
    .line 7897
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 7899
    const v1, 0x7f09000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 7900
    const v1, 0x7f090009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 7903
    iget v2, p0, Lcom/android/email/activity/MessageView;->mDisplayMode:I

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 7953
    :goto_0
    iget-object v1, p0, Lcom/android/email/activity/MessageView;->mMessageSwitchBar:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 7954
    iget-object v1, p0, Lcom/android/email/activity/MessageView;->mMessageSwitchBar:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 7955
    iget-object v1, p0, Lcom/android/email/activity/MessageView;->mMessageSwitchBar:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->invalidate()V

    .line 7958
    :cond_0
    iget-object v1, p0, Lcom/android/email/activity/MessageView;->mMessageContentView:Landroid/webkit/WebView;

    if-eqz v1, :cond_1

    .line 7959
    iget-object v1, p0, Lcom/android/email/activity/MessageView;->mMessageContentView:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 7960
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageContentView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->invalidate()V

    .line 7962
    :cond_1
    return-void

    :pswitch_0
    move v0, v1

    .line 7905
    goto :goto_0

    .line 7909
    :pswitch_1
    const v1, 0x7f09000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 7911
    const v2, 0x7f09000c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move v0, v1

    .line 7912
    goto :goto_0

    .line 7914
    :pswitch_2
    const v1, 0x7f09000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 7916
    const v2, 0x7f09000e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move v0, v1

    .line 7917
    goto :goto_0

    .line 7919
    :pswitch_3
    const v1, 0x7f09000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 7921
    const v2, 0x7f090010

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move v0, v1

    .line 7922
    goto :goto_0

    .line 7924
    :pswitch_4
    const v1, 0x7f090011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 7926
    const v2, 0x7f090012

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move v0, v1

    .line 7927
    goto :goto_0

    .line 7929
    :pswitch_5
    const v1, 0x7f090013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 7931
    const v2, 0x7f090014

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move v0, v1

    goto :goto_0

    .line 7903
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private updatePrevNextArrows(Landroid/database/Cursor;)V
    .locals 9
    .parameter

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v7, "View >>"

    .line 4906
    .line 4908
    iget-boolean v0, p0, Lcom/android/email/activity/MessageView;->mLogView:Z

    if-eqz v0, :cond_1

    .line 4909
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mPrevious:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 4910
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mNext:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 4972
    :cond_0
    :goto_0
    return-void

    .line 4914
    :cond_1
    iget v0, p0, Lcom/android/email/activity/MessageView;->mViewModeType:I

    sget v1, Lcom/android/email/activity/MessageList;->VIEW_MODE_STANDARD:I

    if-eq v0, v1, :cond_9

    .line 4915
    sget v0, Lcom/android/email/activity/MessageList;->mPositionOfSelectedMessage:I

    .line 4916
    sget-object v1, Lcom/android/email/activity/MessageList;->mMessageIdArray4ThreadList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 4918
    const-string v2, "View >>"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updatePrevNextArrows(): position = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 4919
    const-string v2, "View >>"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updatePrevNextArrows(): list size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 4921
    if-nez v0, :cond_3

    .line 4922
    if-ne v1, v5, :cond_2

    move v0, v4

    move v1, v4

    .line 4950
    :goto_1
    iget-object v2, p0, Lcom/android/email/activity/MessageView;->mPrevious:Landroid/view/View;

    if-eqz v1, :cond_7

    move v1, v4

    :goto_2
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4951
    iget-object v1, p0, Lcom/android/email/activity/MessageView;->mNext:Landroid/view/View;

    if-eqz v0, :cond_8

    move v0, v4

    :goto_3
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    move v0, v5

    move v1, v4

    .line 4928
    goto :goto_1

    .line 4931
    :cond_3
    if-ne v0, v5, :cond_5

    .line 4932
    sget-object v0, Lcom/android/email/activity/MessageList;->mMessageIdArray4ThreadList:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x2

    if-ne v0, v1, :cond_4

    move v0, v5

    move v1, v4

    .line 4934
    goto :goto_1

    :cond_4
    move v0, v5

    move v1, v5

    .line 4938
    goto :goto_1

    .line 4941
    :cond_5
    sub-int/2addr v1, v5

    if-ne v0, v1, :cond_6

    move v0, v4

    move v1, v5

    .line 4943
    goto :goto_1

    :cond_6
    move v0, v5

    move v1, v5

    .line 4947
    goto :goto_1

    :cond_7
    move v1, v6

    .line 4950
    goto :goto_2

    :cond_8
    move v0, v6

    .line 4951
    goto :goto_3

    .line 4954
    :cond_9
    if-eqz p1, :cond_10

    .line 4956
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-interface {p1}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_a
    move v0, v4

    move v1, v4

    .line 4967
    :goto_4
    iget-boolean v2, p0, Lcom/android/email/activity/MessageView;->mLogView:Z

    if-nez v2, :cond_0

    .line 4968
    iget-object v2, p0, Lcom/android/email/activity/MessageView;->mPrevious:Landroid/view/View;

    if-eqz v1, :cond_e

    move v1, v4

    :goto_5
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4969
    iget-object v1, p0, Lcom/android/email/activity/MessageView;->mNext:Landroid/view/View;

    if-eqz v0, :cond_f

    move v0, v4

    :goto_6
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 4961
    :cond_b
    invoke-interface {p1}, Landroid/database/Cursor;->isFirst()Z

    move-result v0

    if-nez v0, :cond_c

    move v0, v5

    .line 4962
    :goto_7
    invoke-interface {p1}, Landroid/database/Cursor;->isLast()Z

    move-result v1

    if-nez v1, :cond_d

    move v1, v5

    :goto_8
    move v8, v1

    move v1, v0

    move v0, v8

    goto :goto_4

    :cond_c
    move v0, v4

    .line 4961
    goto :goto_7

    :cond_d
    move v1, v4

    .line 4962
    goto :goto_8

    :cond_e
    move v1, v6

    .line 4968
    goto :goto_5

    :cond_f
    move v0, v6

    .line 4969
    goto :goto_6

    :cond_10
    move v0, v4

    move v1, v4

    goto :goto_4
.end method

.method private updateSenderPresence(I)V
    .locals 2
    .parameter

    .prologue
    .line 5487
    if-nez p1, :cond_0

    .line 5490
    const v0, 0x7f0200f4

    .line 5492
    :goto_0
    iget-object v1, p0, Lcom/android/email/activity/MessageView;->mSenderPresenceView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5493
    return-void

    :cond_0
    move v0, p1

    goto :goto_0
.end method

.method private updateTextSize()V
    .locals 7

    .prologue
    const/high16 v5, 0x4000

    const/4 v4, 0x0

    .line 7966
    const/high16 v0, 0x41d0

    .line 7967
    const/high16 v1, 0x41e0

    .line 7969
    sget-object v2, Landroid/webkit/WebSettings$TextSize;->LARGER:Landroid/webkit/WebSettings$TextSize;

    .line 7972
    sget v3, Lcom/android/email/activity/MessageView;->mTextSize:I

    packed-switch v3, :pswitch_data_0

    move-object v6, v2

    move v2, v0

    move-object v0, v6

    .line 7988
    :goto_0
    iget-object v3, p0, Lcom/android/email/activity/MessageView;->mSubjectView_marquee:Landroid/widget/TextView;

    invoke-virtual {v3, v4, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 7989
    iget-object v3, p0, Lcom/android/email/activity/MessageView;->mSubjectView:Landroid/widget/TextView;

    invoke-virtual {v3, v4, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 7990
    iget-object v1, p0, Lcom/android/email/activity/MessageView;->mFromView:Landroid/widget/TextView;

    invoke-virtual {v1, v4, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 7992
    iget-object v1, p0, Lcom/android/email/activity/MessageView;->mToHintView:Landroid/widget/TextView;

    invoke-virtual {v1, v4, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 7993
    iget-object v1, p0, Lcom/android/email/activity/MessageView;->mToView:Landroid/widget/TextView;

    invoke-virtual {v1, v4, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 7994
    iget-object v1, p0, Lcom/android/email/activity/MessageView;->mCcHintView:Landroid/widget/TextView;

    invoke-virtual {v1, v4, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 7995
    iget-object v1, p0, Lcom/android/email/activity/MessageView;->mCcView:Landroid/widget/TextView;

    invoke-virtual {v1, v4, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 7997
    iget-object v1, p0, Lcom/android/email/activity/MessageView;->mPriorityHintView:Landroid/widget/TextView;

    invoke-virtual {v1, v4, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 7998
    iget-object v1, p0, Lcom/android/email/activity/MessageView;->mPriorityView:Landroid/widget/TextView;

    invoke-virtual {v1, v4, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 8002
    iget-object v1, p0, Lcom/android/email/activity/MessageView;->mDateView:Landroid/widget/TextView;

    invoke-virtual {v1, v4, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 8004
    iget-object v1, p0, Lcom/android/email/activity/MessageView;->mMessageContentView:Landroid/webkit/WebView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/email/activity/MessageView;->mMessageContentView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 8005
    iget-object v1, p0, Lcom/android/email/activity/MessageView;->mMessageContentView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setTextSize(Landroid/webkit/WebSettings$TextSize;)V

    .line 8008
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageSwitchBar:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 8009
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageSwitchBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->invalidate()V

    .line 8012
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageContentView:Landroid/webkit/WebView;

    if-eqz v0, :cond_2

    .line 8013
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageContentView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->invalidate()V

    .line 8016
    :cond_2
    return-void

    .line 7974
    :pswitch_0
    sub-float/2addr v0, v5

    .line 7975
    sub-float/2addr v1, v5

    .line 7976
    sget-object v2, Landroid/webkit/WebSettings$TextSize;->NORMAL:Landroid/webkit/WebSettings$TextSize;

    move-object v6, v2

    move v2, v0

    move-object v0, v6

    .line 7978
    goto :goto_0

    :pswitch_1
    move-object v6, v2

    move v2, v0

    move-object v0, v6

    .line 7980
    goto :goto_0

    .line 7982
    :pswitch_2
    add-float/2addr v0, v5

    .line 7983
    add-float/2addr v1, v5

    .line 7984
    sget-object v2, Landroid/webkit/WebSettings$TextSize;->LARGEST:Landroid/webkit/WebSettings$TextSize;

    move-object v6, v2

    move v2, v0

    move-object v0, v6

    .line 7985
    goto :goto_0

    .line 7972
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 10
    .parameter

    .prologue
    const v9, 0x7f07001f

    const v8, 0x7f070139

    const v7, 0x7f070112

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1766
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    .line 1767
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    .line 1770
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    invoke-virtual {v0}, Lcom/android/email/winset/NonScrollView;->isShown()Z

    move-result v0

    if-ne v0, v6, :cond_5

    .line 1772
    const/4 v0, 0x0

    .line 1773
    if-lez v2, :cond_0

    .line 1774
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mAttachments:Landroid/widget/LinearLayout;

    sub-int v3, v2, v6

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const v3, 0x7f07011b

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1777
    :cond_0
    if-le v2, v6, :cond_7

    .line 1778
    iget-object v3, p0, Lcom/android/email/activity/MessageView;->view_for_topfocus:Landroid/widget/ImageButton;

    const v4, 0x7f0700d3

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setNextFocusUpId(I)V

    .line 1780
    iget-object v3, p0, Lcom/android/email/activity/MessageView;->mExpanderIcon:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->isShown()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1781
    iget-object v3, p0, Lcom/android/email/activity/MessageView;->mPrevious:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->setNextFocusDownId(I)V

    .line 1782
    iget-object v3, p0, Lcom/android/email/activity/MessageView;->mNext:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->setNextFocusDownId(I)V

    .line 1783
    iget-object v3, p0, Lcom/android/email/activity/MessageView;->mExpanderIcon:Landroid/widget/ImageButton;

    invoke-virtual {v3, v9}, Landroid/widget/ImageButton;->setNextFocusUpId(I)V

    .line 1784
    iget-object v3, p0, Lcom/android/email/activity/MessageView;->mExpanderIcon:Landroid/widget/ImageButton;

    const v4, 0x7f0700d3

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setNextFocusDownId(I)V

    .line 1786
    iget-object v3, p0, Lcom/android/email/activity/MessageView;->mAttachmentsExpander:Landroid/widget/ToggleButton;

    invoke-virtual {v3, v8}, Landroid/widget/ToggleButton;->setNextFocusUpId(I)V

    .line 1787
    iget-object v3, p0, Lcom/android/email/activity/MessageView;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1788
    iget-object v3, p0, Lcom/android/email/activity/MessageView;->mAttachmentsExpander:Landroid/widget/ToggleButton;

    const v4, 0x7f07013e

    invoke-virtual {v3, v4}, Landroid/widget/ToggleButton;->setNextFocusDownId(I)V

    .line 1809
    :goto_0
    invoke-virtual {v0}, Landroid/widget/Button;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1810
    invoke-virtual {v0, v7}, Landroid/widget/Button;->setNextFocusDownId(I)V

    .line 1811
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 1955
    :goto_1
    return v0

    .line 1791
    :cond_1
    iget-object v3, p0, Lcom/android/email/activity/MessageView;->mAttachmentsExpander:Landroid/widget/ToggleButton;

    invoke-virtual {v3, v7}, Landroid/widget/ToggleButton;->setNextFocusDownId(I)V

    goto :goto_0

    .line 1795
    :cond_2
    iget-object v3, p0, Lcom/android/email/activity/MessageView;->mPrevious:Landroid/view/View;

    const v4, 0x7f0700d3

    invoke-virtual {v3, v4}, Landroid/view/View;->setNextFocusDownId(I)V

    .line 1796
    iget-object v3, p0, Lcom/android/email/activity/MessageView;->mNext:Landroid/view/View;

    const v4, 0x7f0700d3

    invoke-virtual {v3, v4}, Landroid/view/View;->setNextFocusDownId(I)V

    .line 1797
    iget-object v3, p0, Lcom/android/email/activity/MessageView;->mExpanderIcon:Landroid/widget/ImageButton;

    invoke-virtual {v3, v5}, Landroid/widget/ImageButton;->setNextFocusUpId(I)V

    .line 1798
    iget-object v3, p0, Lcom/android/email/activity/MessageView;->mExpanderIcon:Landroid/widget/ImageButton;

    invoke-virtual {v3, v5}, Landroid/widget/ImageButton;->setNextFocusDownId(I)V

    .line 1800
    iget-object v3, p0, Lcom/android/email/activity/MessageView;->mAttachmentsExpander:Landroid/widget/ToggleButton;

    invoke-virtual {v3, v9}, Landroid/widget/ToggleButton;->setNextFocusUpId(I)V

    .line 1801
    iget-object v3, p0, Lcom/android/email/activity/MessageView;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1802
    iget-object v3, p0, Lcom/android/email/activity/MessageView;->mAttachmentsExpander:Landroid/widget/ToggleButton;

    const v4, 0x7f07013e

    invoke-virtual {v3, v4}, Landroid/widget/ToggleButton;->setNextFocusDownId(I)V

    goto :goto_0

    .line 1805
    :cond_3
    iget-object v3, p0, Lcom/android/email/activity/MessageView;->mAttachmentsExpander:Landroid/widget/ToggleButton;

    invoke-virtual {v3, v7}, Landroid/widget/ToggleButton;->setNextFocusDownId(I)V

    goto :goto_0

    .line 1814
    :cond_4
    invoke-virtual {v0, v5}, Landroid/widget/Button;->setNextFocusDownId(I)V

    .line 1867
    :cond_5
    :goto_2
    packed-switch v1, :pswitch_data_0

    .line 1955
    :cond_6
    :goto_3
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1

    .line 1817
    :cond_7
    if-ne v2, v6, :cond_9

    .line 1819
    iget-object v3, p0, Lcom/android/email/activity/MessageView;->view_for_topfocus:Landroid/widget/ImageButton;

    const v4, 0x7f07011b

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setNextFocusUpId(I)V

    .line 1820
    iget-object v3, p0, Lcom/android/email/activity/MessageView;->mAttachmentsExpander:Landroid/widget/ToggleButton;

    invoke-virtual {v3, v5}, Landroid/widget/ToggleButton;->setNextFocusDownId(I)V

    .line 1822
    iget-object v3, p0, Lcom/android/email/activity/MessageView;->mExpanderIcon:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->isShown()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1823
    iget-object v3, p0, Lcom/android/email/activity/MessageView;->mPrevious:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->setNextFocusDownId(I)V

    .line 1824
    iget-object v3, p0, Lcom/android/email/activity/MessageView;->mNext:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->setNextFocusDownId(I)V

    .line 1825
    iget-object v3, p0, Lcom/android/email/activity/MessageView;->mExpanderIcon:Landroid/widget/ImageButton;

    invoke-virtual {v3, v9}, Landroid/widget/ImageButton;->setNextFocusUpId(I)V

    .line 1826
    iget-object v3, p0, Lcom/android/email/activity/MessageView;->mExpanderIcon:Landroid/widget/ImageButton;

    const v4, 0x7f07011b

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setNextFocusDownId(I)V

    .line 1835
    :goto_4
    if-eqz v0, :cond_5

    .line 1836
    invoke-virtual {v0, v7}, Landroid/widget/Button;->setNextFocusDownId(I)V

    goto :goto_2

    .line 1829
    :cond_8
    iget-object v3, p0, Lcom/android/email/activity/MessageView;->mPrevious:Landroid/view/View;

    const v4, 0x7f07011b

    invoke-virtual {v3, v4}, Landroid/view/View;->setNextFocusDownId(I)V

    .line 1830
    iget-object v3, p0, Lcom/android/email/activity/MessageView;->mNext:Landroid/view/View;

    const v4, 0x7f07011b

    invoke-virtual {v3, v4}, Landroid/view/View;->setNextFocusDownId(I)V

    .line 1831
    iget-object v3, p0, Lcom/android/email/activity/MessageView;->mExpanderIcon:Landroid/widget/ImageButton;

    invoke-virtual {v3, v5}, Landroid/widget/ImageButton;->setNextFocusUpId(I)V

    .line 1832
    iget-object v3, p0, Lcom/android/email/activity/MessageView;->mExpanderIcon:Landroid/widget/ImageButton;

    invoke-virtual {v3, v5}, Landroid/widget/ImageButton;->setNextFocusDownId(I)V

    goto :goto_4

    .line 1840
    :cond_9
    iget-object v3, p0, Lcom/android/email/activity/MessageView;->view_for_topfocus:Landroid/widget/ImageButton;

    invoke-virtual {v3, v9}, Landroid/widget/ImageButton;->setNextFocusUpId(I)V

    .line 1841
    iget-object v3, p0, Lcom/android/email/activity/MessageView;->mAttachmentsExpander:Landroid/widget/ToggleButton;

    invoke-virtual {v3, v5}, Landroid/widget/ToggleButton;->setNextFocusDownId(I)V

    .line 1843
    iget-object v3, p0, Lcom/android/email/activity/MessageView;->mExpanderIcon:Landroid/widget/ImageButton;

    invoke-virtual {v3, v5}, Landroid/widget/ImageButton;->setNextFocusUpId(I)V

    .line 1844
    iget-object v3, p0, Lcom/android/email/activity/MessageView;->mExpanderIcon:Landroid/widget/ImageButton;

    invoke-virtual {v3, v5}, Landroid/widget/ImageButton;->setNextFocusDownId(I)V

    .line 1845
    iget-object v3, p0, Lcom/android/email/activity/MessageView;->mAttachmentsExpander:Landroid/widget/ToggleButton;

    invoke-virtual {v3, v5}, Landroid/widget/ToggleButton;->setNextFocusDownId(I)V

    .line 1846
    iget-object v3, p0, Lcom/android/email/activity/MessageView;->mExpanderIcon:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->isShown()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1847
    iget-object v3, p0, Lcom/android/email/activity/MessageView;->mPrevious:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->setNextFocusDownId(I)V

    .line 1848
    iget-object v3, p0, Lcom/android/email/activity/MessageView;->mNext:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->setNextFocusDownId(I)V

    .line 1849
    iget-object v3, p0, Lcom/android/email/activity/MessageView;->mExpanderIcon:Landroid/widget/ImageButton;

    invoke-virtual {v3, v9}, Landroid/widget/ImageButton;->setNextFocusUpId(I)V

    .line 1850
    iget-object v3, p0, Lcom/android/email/activity/MessageView;->mExpanderIcon:Landroid/widget/ImageButton;

    invoke-virtual {v3, v7}, Landroid/widget/ImageButton;->setNextFocusDownId(I)V

    .line 1859
    :goto_5
    if-eqz v0, :cond_5

    .line 1860
    invoke-virtual {v0, v7}, Landroid/widget/Button;->setNextFocusDownId(I)V

    goto/16 :goto_2

    .line 1853
    :cond_a
    iget-object v3, p0, Lcom/android/email/activity/MessageView;->mPrevious:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setNextFocusDownId(I)V

    .line 1854
    iget-object v3, p0, Lcom/android/email/activity/MessageView;->mNext:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setNextFocusDownId(I)V

    .line 1855
    iget-object v3, p0, Lcom/android/email/activity/MessageView;->mExpanderIcon:Landroid/widget/ImageButton;

    invoke-virtual {v3, v5}, Landroid/widget/ImageButton;->setNextFocusUpId(I)V

    .line 1856
    iget-object v3, p0, Lcom/android/email/activity/MessageView;->mExpanderIcon:Landroid/widget/ImageButton;

    invoke-virtual {v3, v5}, Landroid/widget/ImageButton;->setNextFocusDownId(I)V

    goto :goto_5

    .line 1869
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x13

    if-eq v0, v1, :cond_b

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x14

    if-ne v0, v1, :cond_6

    .line 1871
    :cond_b
    const/16 v0, -0xa

    .line 1872
    iget-object v1, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    invoke-virtual {v1}, Lcom/android/email/winset/NonScrollView;->isShown()Z

    move-result v1

    if-ne v1, v6, :cond_d

    .line 1873
    iget-object v1, p0, Lcom/android/email/activity/MessageView;->mMessageContentView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getScrollY()I

    move-result v1

    add-int/2addr v1, v0

    .line 1875
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 1879
    iget-object v3, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    invoke-virtual {v3}, Lcom/android/email/winset/NonScrollView;->isScrollBottom()Z

    move-result v3

    if-ne v3, v6, :cond_15

    .line 1881
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v4, 0x13

    if-ne v3, v4, :cond_10

    .line 1883
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageContentView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getScrollY()I

    move-result v0

    const/16 v3, 0xa

    if-ge v0, v3, :cond_f

    .line 1884
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageContentView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getScrollY()I

    move-result v0

    sub-int v0, v5, v0

    .line 1890
    :cond_c
    :goto_6
    iget-object v3, p0, Lcom/android/email/activity/MessageView;->mMessageContentView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getScrollY()I

    move-result v3

    add-int/2addr v3, v0

    .line 1893
    iget-object v3, p0, Lcom/android/email/activity/MessageView;->mMessageContentView:Landroid/webkit/WebView;

    invoke-virtual {v3, v1}, Landroid/webkit/WebView;->getLocationInWindow([I)V

    .line 1894
    aget v1, v1, v6

    .line 1895
    iget-object v3, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    invoke-virtual {v3}, Lcom/android/email/winset/NonScrollView;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/android/email/activity/MessageView;->mMessageContentView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getScrollY()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/2addr v1, v3

    .line 1898
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v4, 0x14

    if-ne v3, v4, :cond_11

    iget-object v3, p0, Lcom/android/email/activity/MessageView;->mMessageContentView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getScrollY()I

    move-result v3

    iget-object v4, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    invoke-virtual {v4}, Lcom/android/email/winset/NonScrollView;->getHeight()I

    move-result v4

    if-lt v3, v4, :cond_11

    .line 1934
    :cond_d
    :goto_7
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x13

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageContentView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getScrollY()I

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    invoke-virtual {v0}, Lcom/android/email/winset/NonScrollView;->isShown()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1938
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    invoke-virtual {v0, v5}, Lcom/android/email/winset/NonScrollView;->setIsScrollBottom(Z)V

    .line 1939
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    invoke-virtual {v0, v5}, Lcom/android/email/winset/NonScrollView;->setVisibility(I)V

    .line 1940
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->arrangeAttachments()V

    .line 1941
    if-ne v2, v6, :cond_e

    .line 1943
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1946
    :cond_e
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageContentView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->invalidate()V

    .line 1947
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    invoke-virtual {v0, v5, v5}, Lcom/android/email/winset/NonScrollView;->measure(II)V

    .line 1948
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageContentView:Landroid/webkit/WebView;

    invoke-virtual {v0, v5, v5}, Landroid/webkit/WebView;->scrollTo(II)V

    goto/16 :goto_3

    .line 1886
    :cond_f
    const/16 v0, -0xa

    goto :goto_6

    .line 1888
    :cond_10
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v4, 0x14

    if-ne v3, v4, :cond_c

    .line 1889
    const/16 v0, 0xa

    goto :goto_6

    .line 1902
    :cond_11
    if-le v1, v6, :cond_13

    if-eqz v0, :cond_13

    .line 1904
    iget-object v1, p0, Lcom/android/email/activity/MessageView;->mMessageContentView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    invoke-virtual {v2}, Lcom/android/email/winset/NonScrollView;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 1905
    iget-object v2, p0, Lcom/android/email/activity/MessageView;->mMessageContentView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getScale()F

    move-result v2

    iget-object v3, p0, Lcom/android/email/activity/MessageView;->mMessageContentView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 1908
    add-int/lit8 v1, v1, 0x1

    if-ge v1, v2, :cond_12

    .line 1910
    iget-object v1, p0, Lcom/android/email/activity/MessageView;->mMessageContentView:Landroid/webkit/WebView;

    invoke-virtual {v1, v5, v0}, Landroid/webkit/WebView;->scrollBy(II)V

    .line 1912
    :cond_12
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    invoke-virtual {v0, v6}, Lcom/android/email/winset/NonScrollView;->setIsScrollBottom(Z)V

    move v0, v6

    .line 1913
    goto/16 :goto_1

    .line 1915
    :cond_13
    const/4 v0, 0x2

    if-ge v1, v0, :cond_14

    .line 1919
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    invoke-virtual {v0, v5}, Lcom/android/email/winset/NonScrollView;->setIsScrollBottom(Z)V

    goto/16 :goto_7

    .line 1924
    :cond_14
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    invoke-virtual {v0, p1}, Lcom/android/email/winset/NonScrollView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto/16 :goto_1

    .line 1930
    :cond_15
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    invoke-virtual {v0, v5}, Lcom/android/email/winset/NonScrollView;->setIsScrollBottom(Z)V

    .line 1931
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    invoke-virtual {v0, p1}, Lcom/android/email/winset/NonScrollView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto/16 :goto_1

    .line 1867
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .parameter "event"

    .prologue
    const/4 v10, 0x2

    const/4 v13, -0x2

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 1961
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1962
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 2087
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    return v8

    .line 1965
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    iput v8, p0, Lcom/android/email/activity/MessageView;->mStartX:F

    .line 1966
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    iput v8, p0, Lcom/android/email/activity/MessageView;->mStartY:F

    goto :goto_0

    .line 1970
    :pswitch_1
    iput-boolean v12, p0, Lcom/android/email/activity/MessageView;->mIsDragged:Z

    goto :goto_0

    .line 1980
    :pswitch_2
    iget-boolean v8, p0, Lcom/android/email/activity/MessageView;->mMultiTouch:Z

    if-nez v8, :cond_3

    iget-object v8, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    invoke-virtual {v8}, Lcom/android/email/winset/NonScrollView;->isShown()Z

    move-result v8

    if-ne v8, v11, :cond_3

    .line 1981
    iget v8, p0, Lcom/android/email/activity/MessageView;->mStartY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    sub-float/2addr v8, v9

    float-to-int v1, v8

    .line 1982
    .local v1, distance:I
    iget-object v8, p0, Lcom/android/email/activity/MessageView;->mMessageContentView:Landroid/webkit/WebView;

    invoke-virtual {v8}, Landroid/webkit/WebView;->getScrollY()I

    move-result v8

    add-int v5, v8, v1

    .line 1984
    .local v5, nDiff:I
    iget-object v8, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    invoke-virtual {v8}, Lcom/android/email/winset/NonScrollView;->isScrollBottom()Z

    move-result v8

    if-ne v8, v11, :cond_3

    .line 1986
    if-le v5, v11, :cond_6

    if-eqz v1, :cond_6

    .line 1987
    new-array v3, v10, [I

    .line 1988
    .local v3, location:[I
    const/4 v6, 0x0

    .line 1989
    .local v6, nLocalBottom:I
    iget-object v8, p0, Lcom/android/email/activity/MessageView;->mMessageContentView:Landroid/webkit/WebView;

    invoke-virtual {v8}, Landroid/webkit/WebView;->getHeight()I

    move-result v8

    iget-object v9, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    invoke-virtual {v9}, Lcom/android/email/winset/NonScrollView;->getHeight()I

    move-result v9

    sub-int v7, v8, v9

    .line 1990
    .local v7, nMeasureVal:I
    iget-object v8, p0, Lcom/android/email/activity/MessageView;->mMessageContentView:Landroid/webkit/WebView;

    invoke-virtual {v8}, Landroid/webkit/WebView;->getScale()F

    move-result v8

    iget-object v9, p0, Lcom/android/email/activity/MessageView;->mMessageContentView:Landroid/webkit/WebView;

    invoke-virtual {v9}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v8, v9

    float-to-int v4, v8

    .line 1992
    .local v4, nDeterminantVal:I
    iget-object v8, p0, Lcom/android/email/activity/MessageView;->mMessageContentView:Landroid/webkit/WebView;

    invoke-virtual {v8, v3}, Landroid/webkit/WebView;->getLocationInWindow([I)V

    .line 1993
    aget v6, v3, v11

    .line 1994
    iget-boolean v8, p0, Lcom/android/email/activity/MessageView;->mIsDragged:Z

    if-eq v8, v11, :cond_0

    iget v8, p0, Lcom/android/email/activity/MessageView;->mStartY:F

    iget-object v9, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    invoke-virtual {v9}, Lcom/android/email/winset/NonScrollView;->getHeight()I

    move-result v9

    iget-object v10, p0, Lcom/android/email/activity/MessageView;->mMessageContentView:Landroid/webkit/WebView;

    invoke-virtual {v10}, Landroid/webkit/WebView;->getScrollY()I

    move-result v10

    sub-int/2addr v9, v10

    add-int/2addr v9, v6

    int-to-float v9, v9

    cmpg-float v8, v8, v9

    if-gez v8, :cond_2

    .line 1997
    :cond_0
    add-int/lit8 v8, v7, 0x1

    if-ge v8, v4, :cond_1

    .line 1999
    iget-object v8, p0, Lcom/android/email/activity/MessageView;->mMessageContentView:Landroid/webkit/WebView;

    invoke-virtual {v8, v12, v1}, Landroid/webkit/WebView;->scrollBy(II)V

    .line 2001
    :cond_1
    iput-boolean v11, p0, Lcom/android/email/activity/MessageView;->mIsDragged:Z

    .line 2003
    :cond_2
    iget-object v8, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    invoke-virtual {v8, v11}, Lcom/android/email/winset/NonScrollView;->setIsScrollBottom(Z)V

    .line 2049
    .end local v1           #distance:I
    .end local v3           #location:[I
    .end local v4           #nDeterminantVal:I
    .end local v5           #nDiff:I
    .end local v6           #nLocalBottom:I
    .end local v7           #nMeasureVal:I
    :cond_3
    :goto_1
    iget v8, p0, Lcom/android/email/activity/MessageView;->mStartY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    cmpg-float v8, v8, v9

    if-gez v8, :cond_5

    iget-object v8, p0, Lcom/android/email/activity/MessageView;->mMessageContentView:Landroid/webkit/WebView;

    invoke-virtual {v8}, Landroid/webkit/WebView;->getScrollY()I

    move-result v8

    if-nez v8, :cond_5

    iget-object v8, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    invoke-virtual {v8}, Lcom/android/email/winset/NonScrollView;->isShown()Z

    move-result v8

    if-nez v8, :cond_5

    .line 2052
    iget-object v8, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    invoke-virtual {v8, v12}, Lcom/android/email/winset/NonScrollView;->setVisibility(I)V

    .line 2053
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->arrangeAttachments()V

    .line 2054
    iget-object v8, p0, Lcom/android/email/activity/MessageView;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v8

    if-ne v8, v11, :cond_7

    .line 2056
    iget-object v8, p0, Lcom/android/email/activity/MessageView;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2067
    :cond_4
    :goto_2
    iget-object v8, p0, Lcom/android/email/activity/MessageView;->mMessageContentView:Landroid/webkit/WebView;

    invoke-virtual {v8}, Landroid/webkit/WebView;->invalidate()V

    .line 2068
    iget-object v8, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    invoke-virtual {v8, v12, v12}, Lcom/android/email/winset/NonScrollView;->measure(II)V

    .line 2069
    iget-object v8, p0, Lcom/android/email/activity/MessageView;->mMessageContentView:Landroid/webkit/WebView;

    iget-object v9, p0, Lcom/android/email/activity/MessageView;->mMessageContentView:Landroid/webkit/WebView;

    invoke-virtual {v9}, Landroid/webkit/WebView;->getScrollX()I

    move-result v9

    iget-object v10, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    invoke-virtual {v10}, Lcom/android/email/winset/NonScrollView;->getMeasuredHeight()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Landroid/webkit/WebView;->scrollTo(II)V

    .line 2073
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    iput v8, p0, Lcom/android/email/activity/MessageView;->mStartY:F

    goto/16 :goto_0

    .line 2005
    .restart local v1       #distance:I
    .restart local v5       #nDiff:I
    :cond_6
    if-ge v5, v10, :cond_3

    .line 2008
    iget-object v8, p0, Lcom/android/email/activity/MessageView;->mMessageContentView:Landroid/webkit/WebView;

    iget-object v9, p0, Lcom/android/email/activity/MessageView;->mMessageContentView:Landroid/webkit/WebView;

    invoke-virtual {v9}, Landroid/webkit/WebView;->getScrollX()I

    move-result v9

    invoke-virtual {v8, v9, v12}, Landroid/webkit/WebView;->scrollTo(II)V

    .line 2009
    iget-object v8, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    invoke-virtual {v8, v12}, Lcom/android/email/winset/NonScrollView;->setIsScrollBottom(Z)V

    goto :goto_1

    .line 2058
    .end local v1           #distance:I
    .end local v5           #nDiff:I
    :cond_7
    iget-object v8, p0, Lcom/android/email/activity/MessageView;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v8

    if-le v8, v11, :cond_4

    .line 2060
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v8, 0x3f80

    invoke-direct {v2, v13, v13, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 2063
    .local v2, forTopMargin:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v8, -0x7

    iput v8, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 2064
    iget-object v8, p0, Lcom/android/email/activity/MessageView;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 1962
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method handleMenuItem(I)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4213
    sparse-switch p1, :sswitch_data_0

    move v0, v2

    .line 4329
    :goto_0
    return v0

    .line 4216
    :sswitch_0
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->checkITPolicy_AllowAttachmentDownload()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4218
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "11111 MessageView.java >>>>> handleMenuItem()  >>>>> show_pictures"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 4219
    const v0, 0x7f0801a6

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_1
    move v0, v3

    .line 4329
    goto :goto_0

    .line 4221
    :cond_0
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->onShowPictures()V

    goto :goto_1

    .line 4229
    :sswitch_1
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->onDeletePopup()V

    goto :goto_1

    .line 4233
    :sswitch_2
    new-array v0, v0, [Ljava/lang/String;

    const v1, 0x7f080081

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageView;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const v1, 0x7f080082

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageView;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 4234
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f080166

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/email/activity/MessageView$14;

    invoke-direct {v2, p0}, Lcom/android/email/activity/MessageView$14;-><init>(Lcom/android/email/activity/MessageView;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_1

    .line 4275
    :sswitch_3
    iput-boolean v2, p0, Lcom/android/email/activity/MessageView;->bForwardToOld:Z

    .line 4276
    new-array v0, v0, [Ljava/lang/String;

    const v1, 0x7f080083

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageView;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const v1, 0x7f080084

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageView;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 4277
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f080167

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/email/activity/MessageView$15;

    invoke-direct {v2, p0}, Lcom/android/email/activity/MessageView$15;-><init>(Lcom/android/email/activity/MessageView;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_1

    .line 4292
    :sswitch_4
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->onSaveToCalendar()V

    goto :goto_1

    .line 4297
    :sswitch_5
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->onMoreMessage()V

    goto :goto_1

    .line 4302
    :sswitch_6
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->onDisplayMode()V

    goto :goto_1

    .line 4306
    :sswitch_7
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->onTextSize()V

    goto :goto_1

    .line 4310
    :sswitch_8
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->addToContacts()V

    goto :goto_1

    .line 4316
    :sswitch_9
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->onRestore()V

    goto :goto_1

    .line 4319
    :sswitch_a
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->onMovePopup()V

    goto/16 :goto_1

    .line 4213
    :sswitch_data_0
    .sparse-switch
        0x7f070143 -> :sswitch_5
        0x7f070188 -> :sswitch_1
        0x7f070189 -> :sswitch_3
        0x7f07018b -> :sswitch_2
        0x7f07019f -> :sswitch_7
        0x7f0701a6 -> :sswitch_9
        0x7f0701a7 -> :sswitch_a
        0x7f0701a8 -> :sswitch_0
        0x7f0701a9 -> :sswitch_6
        0x7f0701aa -> :sswitch_8
        0x7f0701ab -> :sswitch_4
    .end sparse-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10
    .parameter

    .prologue
    const v9, 0x7f080079

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 3932
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 3993
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_1

    .line 4104
    :cond_1
    :goto_1
    return-void

    .line 3934
    :sswitch_0
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->onMoreMessage()V

    goto :goto_0

    .line 3937
    :sswitch_1
    invoke-direct {p0, v5, v9}, Lcom/android/email/activity/MessageView;->onRespond(II)V

    goto :goto_0

    .line 3941
    :sswitch_2
    const v0, 0x7f08007a

    invoke-direct {p0, v7, v0}, Lcom/android/email/activity/MessageView;->onRespond(II)V

    goto :goto_0

    .line 3945
    :sswitch_3
    const v0, 0x7f08007b

    invoke-direct {p0, v8, v0}, Lcom/android/email/activity/MessageView;->onRespond(II)V

    goto :goto_0

    .line 3955
    :sswitch_4
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->checkITPolicy_AllowPOPIMAP()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3957
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "11111 MessageView.java >>>>> onClick()  >>>>> 2537"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 3958
    const v0, 0x7f0801a5

    invoke-static {p0, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 3967
    :sswitch_5
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->checkITPolicy_AllowAttachmentDownload()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3969
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "11111 MessageView.java >>>>> onClick()  >>>>> download"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 3970
    const v0, 0x7f0801a6

    invoke-static {p0, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 3974
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageView$AttachmentInfo;

    .line 3976
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->checkITPolicy_getAllowedMaxAttachmentSize()I

    move-result v1

    int-to-long v1, v1

    .line 3979
    if-eqz v0, :cond_0

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    iget-wide v0, v0, Lcom/android/email/activity/MessageView$AttachmentInfo;->size:J

    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->checkITPolicy_getAllowedMaxAttachmentSize()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 3981
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "11111 MessageView.java >>>>> onClick()  >>>>> download"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 3982
    const v0, 0x7f0801a6

    invoke-static {p0, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 3996
    :sswitch_6
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->onClickSender()V

    goto :goto_1

    .line 3999
    :sswitch_7
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->onClickFavorite()V

    goto :goto_1

    .line 4018
    :sswitch_8
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->onDeletePopup()V

    goto/16 :goto_1

    .line 4022
    :sswitch_9
    iget-boolean v0, p0, Lcom/android/email/activity/MessageView;->mNeedToReloadMessage:Z

    if-ne v0, v5, :cond_3

    .line 4023
    const-string v0, "View >>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "on Click Prev/Next Current Message ID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/email/activity/MessageView;->mCurrentMessageID:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 4024
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mController:Lcom/android/email/Controller;

    iget-wide v1, p0, Lcom/android/email/activity/MessageView;->mCurrentMessageID:J

    invoke-virtual {v0, v1, v2}, Lcom/android/email/Controller;->cancelLoadRemoteMessage(J)V

    .line 4027
    :cond_3
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->onNext()Z

    goto/16 :goto_1

    .line 4030
    :sswitch_a
    iget-boolean v0, p0, Lcom/android/email/activity/MessageView;->mNeedToReloadMessage:Z

    if-ne v0, v5, :cond_4

    .line 4031
    const-string v0, "View >>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "on Click Prev/Next Current Message ID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/email/activity/MessageView;->mCurrentMessageID:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 4032
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mController:Lcom/android/email/Controller;

    iget-wide v1, p0, Lcom/android/email/activity/MessageView;->mCurrentMessageID:J

    invoke-virtual {v0, v1, v2}, Lcom/android/email/Controller;->cancelLoadRemoteMessage(J)V

    .line 4035
    :cond_4
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->onPrevious()Z

    goto/16 :goto_1

    .line 4038
    :sswitch_b
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageView$AttachmentInfo;

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageView;->onDownloadAttachment(Lcom/android/email/activity/MessageView$AttachmentInfo;)V

    goto/16 :goto_1

    .line 4042
    :sswitch_c
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->onDownloadAttachmentAll()V

    goto/16 :goto_1

    .line 4048
    :sswitch_d
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageView$AttachmentInfo;

    .line 4049
    iget-wide v1, v0, Lcom/android/email/activity/MessageView$AttachmentInfo;->size:J

    const-wide/32 v3, 0xa00000

    cmp-long v1, v1, v3

    if-lez v1, :cond_5

    .line 4050
    const v0, 0x7f0801b7

    invoke-static {p0, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 4054
    :cond_5
    iget-object v1, v0, Lcom/android/email/activity/MessageView$AttachmentInfo;->contentType:Ljava/lang/String;

    sget-object v2, Lcom/android/email/Email;->ACCEPTABLE_ATTACHMENT_VIEW_TYPES:[Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/email/mail/internet/MimeUtility;->mimeTypeMatches(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v0, v0, Lcom/android/email/activity/MessageView$AttachmentInfo;->contentType:Ljava/lang/String;

    sget-object v1, Lcom/android/email/Email;->UNACCEPTABLE_ATTACHMENT_VIEW_TYPES:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/email/mail/internet/MimeUtility;->mimeTypeMatches(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4056
    :cond_6
    const v0, 0x7f0801b2

    invoke-static {p0, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 4060
    :cond_7
    iget-boolean v0, p0, Lcom/android/email/activity/MessageView;->mWaitToHideProgressDialog:Z

    if-eq v0, v5, :cond_1

    .line 4062
    iput-boolean v5, p0, Lcom/android/email/activity/MessageView;->mWaitToHideProgressDialog:Z

    .line 4063
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageView$AttachmentInfo;

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageView;->onViewAttachment(Lcom/android/email/activity/MessageView$AttachmentInfo;)V

    goto/16 :goto_1

    .line 4079
    :sswitch_e
    invoke-direct {p0, v5, v9}, Lcom/android/email/activity/MessageView;->onRespond(II)V

    goto/16 :goto_1

    .line 4083
    :sswitch_f
    const v0, 0x7f08007a

    invoke-direct {p0, v7, v0}, Lcom/android/email/activity/MessageView;->onRespond(II)V

    goto/16 :goto_1

    .line 4087
    :sswitch_10
    const v0, 0x7f08007b

    invoke-direct {p0, v8, v0}, Lcom/android/email/activity/MessageView;->onRespond(II)V

    goto/16 :goto_1

    .line 4094
    :sswitch_11
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->onReceiverList()V

    goto/16 :goto_1

    .line 4100
    :sswitch_12
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->onMoreMessage()V

    goto/16 :goto_1

    .line 3932
    :sswitch_data_0
    .sparse-switch
        0x7f07001f -> :sswitch_4
        0x7f0700ea -> :sswitch_5
        0x7f070109 -> :sswitch_4
        0x7f070110 -> :sswitch_4
        0x7f070114 -> :sswitch_0
        0x7f070116 -> :sswitch_1
        0x7f070117 -> :sswitch_2
        0x7f070118 -> :sswitch_3
        0x7f07011a -> :sswitch_5
        0x7f07011b -> :sswitch_5
        0x7f070139 -> :sswitch_4
        0x7f07013e -> :sswitch_5
        0x7f07018a -> :sswitch_4
        0x7f07018b -> :sswitch_4
    .end sparse-switch

    .line 3993
    :sswitch_data_1
    .sparse-switch
        0x7f07001f -> :sswitch_9
        0x7f070097 -> :sswitch_6
        0x7f0700ea -> :sswitch_d
        0x7f070109 -> :sswitch_7
        0x7f070110 -> :sswitch_a
        0x7f07011a -> :sswitch_d
        0x7f07011b -> :sswitch_b
        0x7f07012c -> :sswitch_6
        0x7f070139 -> :sswitch_11
        0x7f07013e -> :sswitch_c
        0x7f070140 -> :sswitch_e
        0x7f070141 -> :sswitch_f
        0x7f070142 -> :sswitch_10
        0x7f070143 -> :sswitch_12
        0x7f070188 -> :sswitch_8
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 1502
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1504
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_1

    .line 1508
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMeetingTimeView2:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLines(I)V

    .line 1509
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMeetingTimeView2:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/email/activity/MessageView;->meetingTime1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1516
    :cond_0
    :goto_0
    return-void

    .line 1510
    :cond_1
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_0

    .line 1513
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMeetingTimeView2:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLines(I)V

    .line 1514
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMeetingTimeView2:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/email/activity/MessageView;->meetingTime2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter

    .prologue
    const-wide/16 v12, -0x1

    const/4 v11, -0x1

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1067
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 1068
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "In On Create of MessageView"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1069
    invoke-virtual {p0, v10}, Lcom/android/email/activity/MessageView;->requestWindowFeature(I)Z

    .line 1071
    sget-object v0, Lcom/android/email/activity/MessageView;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 1072
    sput-object p0, Lcom/android/email/activity/MessageView;->mContext:Landroid/content/Context;

    .line 1079
    :cond_0
    invoke-static {v10}, Lcom/sec/android/hardware/SecHardwareInterface;->setAmoledACL(Z)V

    .line 1083
    const v0, 0x7f030037

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageView;->setContentView(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1096
    :goto_0
    iput-boolean v9, p0, Lcom/android/email/activity/MessageView;->mDownloadSmimeAttachment:Z

    .line 1099
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->initMessageHeader()V

    .line 1101
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 1102
    const-string v0, "com.android.email.MessageView_message_id"

    invoke-virtual {v6, v0, v12, v13}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    .line 1104
    if-eqz p1, :cond_1

    .line 1105
    const-string v0, "messageId"

    iget-wide v1, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    .line 1107
    :cond_1
    const-string v0, "com.android.email.MessageView_mailbox_id"

    invoke-virtual {v6, v0, v12, v13}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/activity/MessageView;->mMailboxId:J

    .line 1110
    const-string v0, "com.android.email.MessageView_display_mode"

    invoke-virtual {v6, v0, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/MessageView;->mDisplayMode:I

    .line 1113
    const-string v0, "com.android.email.MessageView_text_size"

    invoke-virtual {v6, v0, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/email/activity/MessageView;->mTextSize:I

    .line 1117
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    const v1, 0x7f070140

    invoke-virtual {v0, v1}, Lcom/android/email/winset/NonScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mMeetingYes:Landroid/widget/Button;

    .line 1118
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    const v1, 0x7f070141

    invoke-virtual {v0, v1}, Lcom/android/email/winset/NonScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mMeetingMaybe:Landroid/widget/Button;

    .line 1119
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    const v1, 0x7f070142

    invoke-virtual {v0, v1}, Lcom/android/email/winset/NonScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mMeetingNo:Landroid/widget/Button;

    .line 1120
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMeetingYes:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1121
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMeetingMaybe:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1122
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMeetingNo:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1128
    const v0, 0x7f070143

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mMoreMessage:Landroid/view/View;

    .line 1129
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMoreMessage:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1130
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMoreMessage:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setEnabled(Z)V

    .line 1133
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageContentView:Landroid/webkit/WebView;

    invoke-virtual {v0, v9}, Landroid/webkit/WebView;->setHapticFeedbackEnabled(Z)V

    .line 1136
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageContentView:Landroid/webkit/WebView;

    new-instance v1, Lcom/android/email/activity/MessageView$1;

    invoke-direct {v1, p0}, Lcom/android/email/activity/MessageView$1;-><init>(Lcom/android/email/activity/MessageView;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1169
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/email/provider/EmailContent$Message;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v3, "_id=?"

    new-array v4, v10, [Ljava/lang/String;

    iget-wide v7, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1173
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1175
    const-string v1, "messageType"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    and-int/lit16 v1, v1, 0x100

    const/16 v2, 0x100

    if-ne v1, v2, :cond_5

    move v1, v10

    :goto_1
    iput-boolean v1, p0, Lcom/android/email/activity/MessageView;->mIsSms:Z

    .line 1176
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "************** Message is SMS ***************** "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/email/activity/MessageView;->mIsSms:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1191
    :goto_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1194
    :goto_3
    iget-wide v0, p0, Lcom/android/email/activity/MessageView;->mMailboxId:J

    cmp-long v0, v0, v12

    if-nez v0, :cond_2

    .line 1195
    const-string v0, "com.android.email.LogProvider"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1197
    if-eqz v0, :cond_2

    .line 1198
    const-string v1, "com.android.email.LogProvider"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1200
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/email/provider/EmailContent$Message;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v3, "_id=?"

    new-array v4, v10, [Ljava/lang/String;

    iget-wide v5, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1205
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1206
    const-string v1, "mailboxKey"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/email/activity/MessageView;->mMailboxId:J

    .line 1207
    const-string v1, "messageType"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    and-int/lit16 v1, v1, 0x100

    const/16 v2, 0x100

    if-ne v1, v2, :cond_7

    move v1, v10

    :goto_4
    iput-boolean v1, p0, Lcom/android/email/activity/MessageView;->mIsSms:Z

    .line 1208
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "************** Message is SMS ***************** "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/email/activity/MessageView;->mIsSms:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1210
    iget-object v1, p0, Lcom/android/email/activity/MessageView;->mNext:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1211
    iget-object v1, p0, Lcom/android/email/activity/MessageView;->mPrevious:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1214
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/email/activity/MessageView;->mLogView:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1224
    :goto_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1230
    :cond_2
    :goto_6
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mController:Lcom/android/email/Controller;

    .line 1232
    new-instance v0, Lcom/android/email/activity/MessageView$NextPrevObserver;

    iget-object v1, p0, Lcom/android/email/activity/MessageView;->mHandler:Lcom/android/email/activity/MessageView$MessageViewHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/email/activity/MessageView$NextPrevObserver;-><init>(Lcom/android/email/activity/MessageView;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mNextPrevObserver:Landroid/database/ContentObserver;

    .line 1234
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->messageChanged()V

    .line 1236
    iget v0, p0, Lcom/android/email/activity/MessageView;->mDisplayMode:I

    if-eq v0, v11, :cond_3

    .line 1237
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->updateColors()V

    .line 1239
    :cond_3
    sget v0, Lcom/android/email/activity/MessageView;->mTextSize:I

    if-eq v0, v11, :cond_4

    .line 1240
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->updateTextSize()V

    .line 1243
    :cond_4
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mController:Lcom/android/email/Controller;

    iget-object v1, p0, Lcom/android/email/activity/MessageView;->mControllerCallback:Lcom/android/email/activity/MessageView$ControllerResults;

    invoke-virtual {v0, v1}, Lcom/android/email/Controller;->addResultCallback(Lcom/android/email/Controller$Result;)V

    .line 1248
    const-string v0, "AndroidMail.MessageList"

    invoke-virtual {p0, v0, v9}, Lcom/android/email/activity/MessageView;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1249
    if-eqz v0, :cond_9

    .line 1250
    const-string v1, "prefer_view_mode"

    sget v2, Lcom/android/email/activity/MessageList;->VIEW_MODE_STANDARD:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/MessageView;->mViewModeType:I

    .line 1255
    :goto_7
    return-void

    .line 1084
    :catch_0
    move-exception v0

    .line 1085
    const-string v0, "webview.db"

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageView;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 1086
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1087
    const-string v1, "View >>"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Viewer setContentView Error >> path : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 1088
    const-string v0, "webviewCache.db"

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageView;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 1089
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1090
    const-string v1, "View >>"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Viewer setContentView Error >> path : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 1091
    const v0, 0x7f030037

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageView;->setContentView(I)V

    goto/16 :goto_0

    :cond_5
    move v1, v9

    .line 1175
    goto/16 :goto_1

    .line 1185
    :cond_6
    :try_start_3
    const-string v1, "Email"

    const-string v2, "Exception on getting mMessageId"

    invoke-static {v1, v2}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1186
    const v1, 0x7f08007c

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageView;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_2

    .line 1188
    :catch_1
    move-exception v1

    .line 1191
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto/16 :goto_3

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_7
    move v1, v9

    .line 1207
    goto/16 :goto_4

    .line 1218
    :cond_8
    :try_start_4
    const-string v1, "Email"

    const-string v2, "Exception on getting mMessageId"

    invoke-static {v1, v2}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1219
    const v1, 0x7f08007c

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageView;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_5

    .line 1221
    :catch_2
    move-exception v1

    .line 1224
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto/16 :goto_6

    :catchall_1
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1

    .line 1253
    :cond_9
    sget v0, Lcom/android/email/activity/MessageList;->VIEW_MODE_STANDARD:I

    iput v0, p0, Lcom/android/email/activity/MessageView;->mViewModeType:I

    goto/16 :goto_7
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .parameter

    .prologue
    .line 1523
    packed-switch p1, :pswitch_data_0

    .line 1573
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 1529
    :pswitch_0
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageContentView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object v0

    .line 1530
    invoke-virtual {v0}, Landroid/webkit/WebView$HitTestResult;->getExtra()Ljava/lang/String;

    move-result-object v0

    .line 1532
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const v3, 0x7f08016f

    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageView;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const v3, 0x7f080170

    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageView;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1537
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1539
    iget-object v3, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    iget-object v3, v3, Lcom/android/email/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 1540
    const v3, 0x7f080171

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1544
    :goto_1
    const-string v3, "Cancel"

    new-instance v4, Lcom/android/email/activity/MessageView$4;

    invoke-direct {v4, p0}, Lcom/android/email/activity/MessageView$4;-><init>(Lcom/android/email/activity/MessageView;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1549
    new-instance v3, Lcom/android/email/activity/MessageView$5;

    invoke-direct {v3, p0, v0}, Lcom/android/email/activity/MessageView$5;-><init>(Lcom/android/email/activity/MessageView;Ljava/lang/String;)V

    invoke-virtual {v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1569
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 1542
    :cond_0
    iget-object v3, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    iget-object v3, v3, Lcom/android/email/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 1523
    nop

    :pswitch_data_0
    .packed-switch 0x3f7
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 11
    .parameter

    .prologue
    const v10, 0x7f070188

    const v9, 0x7f070189

    const/4 v8, 0x1

    const v7, 0x7f0701a7

    const/4 v6, 0x0

    .line 4349
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 4350
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0015

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 4354
    iput-object p1, p0, Lcom/android/email/activity/MessageView;->mMenu:Landroid/view/Menu;

    .line 4355
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMenu:Landroid/view/Menu;

    const v1, 0x7f0701ab

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 4356
    iget-boolean v1, p0, Lcom/android/email/activity/MessageView;->mSaveToCalendarEnabled:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 4360
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMenu:Landroid/view/Menu;

    const v1, 0x7f0701aa

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 4361
    iget-object v1, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    if-eqz v1, :cond_1

    .line 4363
    iget-wide v1, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    invoke-static {p0, v1, v2}, Lcom/android/email/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Message;

    move-result-object v1

    .line 4364
    iget-wide v1, v1, Lcom/android/email/provider/EmailContent$Message;->mMailboxKey:J

    invoke-static {p0, v1, v2}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v1

    .line 4366
    iget v1, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    packed-switch v1, :pswitch_data_0

    .line 4385
    iget-object v1, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    iget-object v1, v1, Lcom/android/email/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/email/mail/Address;->unpackFirst(Ljava/lang/String;)Lcom/android/email/mail/Address;

    move-result-object v1

    .line 4389
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 4392
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 4393
    invoke-virtual {v1}, Lcom/android/email/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 4394
    sget-object v3, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 4395
    invoke-static {v2, v1}, Landroid/provider/ContactsContract$Data;->getContactLookupUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 4397
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 4399
    const v1, 0x7f0801b0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 4406
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMenu:Landroid/view/Menu;

    const v1, 0x7f0701a8

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mShowPicturesSection:Landroid/view/MenuItem;

    .line 4407
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mShowPicturesSection:Landroid/view/MenuItem;

    iget-boolean v1, p0, Lcom/android/email/activity/MessageView;->ShowPicturesEnabled:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 4410
    sget-object v0, Lcom/android/email/activity/MessageView;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/email/activity/MessageView;->mLogView:Z

    if-eqz v0, :cond_6

    .line 4411
    :cond_2
    sget-object v0, Lcom/android/email/activity/MessageView;->mContext:Landroid/content/Context;

    if-nez v0, :cond_3

    .line 4412
    const-string v0, "View >>"

    const-string v1, "onCreateOptionsMenu>>>> mContext for list is null"

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 4413
    :cond_3
    iget-boolean v0, p0, Lcom/android/email/activity/MessageView;->mLogView:Z

    if-eqz v0, :cond_4

    .line 4414
    const-string v0, "View >>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreateOptionsMenu>>>> mLogView = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/email/activity/MessageView;->mLogView:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 4416
    :cond_4
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMenu:Landroid/view/Menu;

    const v1, 0x7f0701a6

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 4417
    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 4419
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMenu:Landroid/view/Menu;

    const v1, 0x7f07018b

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 4420
    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 4422
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMenu:Landroid/view/Menu;

    invoke-interface {v0, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 4423
    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 4425
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMenu:Landroid/view/Menu;

    invoke-interface {v0, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 4426
    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 4428
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMenu:Landroid/view/Menu;

    invoke-interface {v0, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 4429
    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move v0, v8

    .line 4520
    :goto_1
    return v0

    .line 4372
    :pswitch_0
    iget-object v1, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    iget-object v1, v1, Lcom/android/email/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/email/mail/Address;->unpackFirst(Ljava/lang/String;)Lcom/android/email/mail/Address;

    move-result-object v1

    .line 4373
    if-nez v1, :cond_5

    .line 4375
    iget-object v1, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    iget-object v1, v1, Lcom/android/email/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/email/mail/Address;->unpackFirst(Ljava/lang/String;)Lcom/android/email/mail/Address;

    move-result-object v1

    .line 4377
    :cond_5
    if-nez v1, :cond_0

    .line 4379
    iget-object v1, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    iget-object v1, v1, Lcom/android/email/provider/EmailContent$Message;->mBcc:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/email/mail/Address;->unpackFirst(Ljava/lang/String;)Lcom/android/email/mail/Address;

    move-result-object v1

    goto/16 :goto_0

    .line 4435
    :cond_6
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMenu:Landroid/view/Menu;

    const v1, 0x7f0701a6

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 4436
    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 4437
    const/4 v1, 0x0

    .line 4438
    iget-wide v2, p0, Lcom/android/email/activity/MessageView;->mMailboxId:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_15

    .line 4439
    iget-wide v1, p0, Lcom/android/email/activity/MessageView;->mMailboxId:J

    invoke-static {p0, v1, v2}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v1

    .line 4440
    if-eqz v1, :cond_f

    .line 4442
    iget v2, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_e

    .line 4444
    invoke-interface {v0, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-object v0, v1

    .line 4454
    :goto_2
    if-eqz v0, :cond_10

    iget v1, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_10

    .line 4456
    iget-object v1, p0, Lcom/android/email/activity/MessageView;->mMenu:Landroid/view/Menu;

    invoke-interface {v1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 4457
    iget-object v1, p0, Lcom/android/email/activity/MessageView;->mMenu:Landroid/view/Menu;

    invoke-interface {v1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 4484
    :goto_3
    if-eqz v0, :cond_7

    const/16 v1, 0x61

    invoke-static {v0, v1}, Lcom/android/email/Utility;->isMailboxType(Lcom/android/email/provider/EmailContent$Mailbox;I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 4486
    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 4487
    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 4488
    const v1, 0x7f07018a

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 4491
    :cond_7
    iget-boolean v1, p0, Lcom/android/email/activity/MessageView;->mIsSms:Z

    if-eqz v1, :cond_d

    if-eqz v0, :cond_d

    invoke-static {v0, v6}, Lcom/android/email/Utility;->isMailboxType(Lcom/android/email/provider/EmailContent$Mailbox;I)Z

    move-result v1

    if-nez v1, :cond_8

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/android/email/Utility;->isMailboxType(Lcom/android/email/provider/EmailContent$Mailbox;I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 4493
    :cond_8
    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/MenuItem;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 4495
    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 4498
    :cond_9
    const v0, 0x7f07018b

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/MenuItem;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 4500
    const v0, 0x7f07018b

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 4503
    :cond_a
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/MenuItem;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 4505
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 4508
    :cond_b
    const v0, 0x7f0701aa

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/MenuItem;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 4510
    const v0, 0x7f0701aa

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 4513
    :cond_c
    const v0, 0x7f0701ab

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/MenuItem;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 4515
    const v0, 0x7f0701ab

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_d
    move v0, v8

    .line 4520
    goto/16 :goto_1

    .line 4448
    :cond_e
    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_f
    move-object v0, v1

    goto/16 :goto_2

    .line 4461
    :cond_10
    iget-object v1, p0, Lcom/android/email/activity/MessageView;->mMenu:Landroid/view/Menu;

    invoke-interface {v1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 4462
    iget-wide v2, p0, Lcom/android/email/activity/MessageView;->mMailboxId:J

    const-wide/16 v4, -0x2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_11

    iget-wide v2, p0, Lcom/android/email/activity/MessageView;->mMailboxId:J

    const-wide/16 v4, -0x3

    cmp-long v2, v2, v4

    if-eqz v2, :cond_11

    iget-wide v2, p0, Lcom/android/email/activity/MessageView;->mMailboxId:J

    const-wide/16 v4, -0x4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_11

    iget-wide v2, p0, Lcom/android/email/activity/MessageView;->mMailboxId:J

    const-wide/16 v4, -0x5

    cmp-long v2, v2, v4

    if-eqz v2, :cond_11

    iget-wide v2, p0, Lcom/android/email/activity/MessageView;->mMailboxId:J

    const-wide/16 v4, -0x6

    cmp-long v2, v2, v4

    if-nez v2, :cond_12

    .line 4468
    :cond_11
    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 4472
    :cond_12
    if-eqz v0, :cond_13

    iget v2, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_13

    iget v2, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_14

    .line 4474
    :cond_13
    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 4478
    :cond_14
    invoke-interface {v1, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :cond_15
    move-object v0, v1

    goto/16 :goto_2

    .line 4366
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 1706
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1707
    iget-object v1, p0, Lcom/android/email/activity/MessageView;->mController:Lcom/android/email/Controller;

    iget-object v2, p0, Lcom/android/email/activity/MessageView;->mControllerCallback:Lcom/android/email/activity/MessageView$ControllerResults;

    invoke-virtual {v1, v2}, Lcom/android/email/Controller;->removeResultCallback(Lcom/android/email/Controller$Result;)V

    .line 1708
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->cancelAllTasks()V

    .line 1711
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/email/activity/MessageView;->mCacheDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1712
    .local v0, targetDirectory:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1713
    invoke-static {v0}, Lorg/apache/commons/io/FileUtils;->deleteDirectory(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1722
    .end local v0           #targetDirectory:Ljava/io/File;
    :cond_0
    :goto_0
    monitor-enter p0

    .line 1723
    :try_start_1
    iget-object v1, p0, Lcom/android/email/activity/MessageView;->mMessageContentView:Landroid/webkit/WebView;

    if-eqz v1, :cond_1

    .line 1725
    iget-object v1, p0, Lcom/android/email/activity/MessageView;->mMessageContentView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->destroy()V

    .line 1726
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/email/activity/MessageView;->mMessageContentView:Landroid/webkit/WebView;

    .line 1728
    :cond_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1730
    iget-object v1, p0, Lcom/android/email/activity/MessageView;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_2

    .line 1731
    iget-object v1, p0, Lcom/android/email/activity/MessageView;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1733
    :cond_2
    iget-object v1, p0, Lcom/android/email/activity/MessageView;->mForwardingDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_3

    .line 1734
    iget-object v1, p0, Lcom/android/email/activity/MessageView;->mForwardingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1738
    :cond_3
    return-void

    .line 1728
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1717
    :catch_0
    move-exception v1

    goto :goto_0

    .line 1714
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 4108
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageView;->handleMenuItem(I)Z

    move-result v0

    .line 4109
    .local v0, handled:Z
    if-nez v0, :cond_0

    .line 4110
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 4112
    :cond_0
    return v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 1655
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 1664
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->closePrevNextCursor()V

    .line 1665
    return-void
.end method

.method public onResume()V
    .locals 6

    .prologue
    const-wide/16 v2, -0x1

    const/4 v5, 0x0

    .line 1598
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 1600
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    if-eqz v0, :cond_0

    .line 1602
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    invoke-virtual {v0}, Lcom/android/email/winset/NonScrollView;->resume()V

    .line 1605
    :cond_0
    iput-wide v2, p0, Lcom/android/email/activity/MessageView;->mWaitForLoadMessageId:J

    .line 1607
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    if-eqz v0, :cond_2

    .line 1608
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->startPresenceCheck()V

    .line 1612
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mLoadPrevNextTask:Lcom/android/email/activity/MessageView$LoadPrevNextTask;

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/android/email/activity/MessageView;->mMailboxId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 1613
    new-instance v0, Lcom/android/email/activity/MessageView$LoadPrevNextTask;

    iget-wide v1, p0, Lcom/android/email/activity/MessageView;->mMailboxId:J

    invoke-direct {v0, p0, v1, v2}, Lcom/android/email/activity/MessageView$LoadPrevNextTask;-><init>(Lcom/android/email/activity/MessageView;J)V

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mLoadPrevNextTask:Lcom/android/email/activity/MessageView$LoadPrevNextTask;

    .line 1614
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mLoadPrevNextTask:Lcom/android/email/activity/MessageView$LoadPrevNextTask;

    new-array v1, v5, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageView$LoadPrevNextTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1618
    :cond_1
    const-string v0, "View >>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume Message-Load-Complete = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/email/activity/MessageView;->mLoadMessageComplete:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 1619
    sget-boolean v0, Lcom/android/email/activity/MessageView;->mLoadMessageComplete:Z

    if-nez v0, :cond_2

    .line 1620
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mLoadMessageTask:Lcom/android/email/activity/MessageView$LoadMessageTask;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->cancelTask(Landroid/os/AsyncTask;)V

    .line 1621
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mLoadMessageTask:Lcom/android/email/activity/MessageView$LoadMessageTask;

    .line 1622
    new-instance v0, Lcom/android/email/activity/MessageView$LoadMessageTask;

    iget-wide v2, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    const/4 v4, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/email/activity/MessageView$LoadMessageTask;-><init>(Lcom/android/email/activity/MessageView;JZZ)V

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mLoadMessageTask:Lcom/android/email/activity/MessageView$LoadMessageTask;

    .line 1623
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mLoadMessageTask:Lcom/android/email/activity/MessageView$LoadMessageTask;

    new-array v1, v5, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageView$LoadMessageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1651
    :cond_2
    return-void
.end method

.method public onSaveImage()V
    .locals 9

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 4118
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageContentView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object v0

    .line 4119
    invoke-virtual {v0}, Landroid/webkit/WebView$HitTestResult;->getExtra()Ljava/lang/String;

    move-result-object v0

    .line 4120
    const-string v1, ""

    .line 4124
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/download/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4125
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4127
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eq v6, v2, :cond_0

    .line 4129
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    :cond_0
    move v2, v4

    move v8, v4

    move-object v4, v1

    move v1, v8

    .line 4135
    :goto_0
    :try_start_0
    sget-object v5, Lcom/android/email/activity/MessageView;->mBodyImageInfo:[Lcom/android/email/activity/MessageView$BodyImageInfo;

    array-length v5, v5

    if-ge v1, v5, :cond_2

    if-nez v2, :cond_2

    .line 4137
    sget-object v5, Lcom/android/email/activity/MessageView;->mBodyImageInfo:[Lcom/android/email/activity/MessageView$BodyImageInfo;

    aget-object v5, v5, v1

    iget-object v5, v5, Lcom/android/email/activity/MessageView$BodyImageInfo;->mContentUri:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 4138
    sget-object v2, Lcom/android/email/activity/MessageView;->mBodyImageInfo:[Lcom/android/email/activity/MessageView$BodyImageInfo;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/android/email/activity/MessageView$BodyImageInfo;->mFileName:Ljava/lang/String;

    move-object v4, v2

    move v2, v6

    .line 4135
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4142
    :cond_2
    if-ne v2, v6, :cond_5

    .line 4144
    const-string v1, "View >>"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HANATHEONE file name: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 4146
    invoke-static {v3, v4}, Lcom/android/email/activity/MessageView;->createUniqueFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 4147
    sget-object v2, Lcom/android/email/activity/MessageView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v0

    .line 4148
    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_11
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_f
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_d

    .line 4149
    :try_start_2
    invoke-static {v0, v2}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 4150
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 4153
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080070

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_12
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_10
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_e

    move-object v1, v0

    move-object v0, v2

    .line 4190
    :goto_1
    if-eqz v1, :cond_3

    .line 4192
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    .line 4195
    :cond_3
    :goto_2
    if-eqz v0, :cond_4

    .line 4197
    :try_start_4
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7

    .line 4201
    :cond_4
    :goto_3
    return-void

    .line 4159
    :cond_5
    :try_start_5
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 4160
    invoke-static {v3, v1}, Lcom/android/email/activity/MessageView;->createUniqueFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 4161
    iget-object v2, p0, Lcom/android/email/activity/MessageView;->mMessageContentView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/webkit/WebView;->saveCachedImageToFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4162
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 4164
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f080070

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_4

    :cond_6
    move-object v0, v7

    move-object v1, v7

    goto :goto_1

    .line 4172
    :catch_0
    move-exception v0

    move-object v0, v7

    move-object v1, v7

    .line 4173
    :goto_4
    :try_start_6
    const-string v2, "View >>"

    const-string v3, "ActivityNotFoundException1"

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 4174
    iget-object v2, p0, Lcom/android/email/activity/MessageView;->mHandler:Lcom/android/email/activity/MessageView$MessageViewHandler;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageView$MessageViewHandler;->attachmentViewError()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 4190
    if-eqz v1, :cond_7

    .line 4192
    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_8

    .line 4195
    :cond_7
    :goto_5
    if-eqz v0, :cond_4

    .line 4197
    :try_start_8
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_3

    .line 4198
    :catch_1
    move-exception v0

    goto :goto_3

    .line 4176
    :catch_2
    move-exception v0

    move-object v0, v7

    move-object v1, v7

    .line 4177
    :goto_6
    :try_start_9
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080071

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 4190
    if-eqz v1, :cond_8

    .line 4192
    :try_start_a
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_9

    .line 4195
    :cond_8
    :goto_7
    if-eqz v0, :cond_4

    .line 4197
    :try_start_b
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    goto/16 :goto_3

    .line 4198
    :catch_3
    move-exception v0

    goto/16 :goto_3

    .line 4182
    :catch_4
    move-exception v0

    move-object v0, v7

    move-object v1, v7

    .line 4183
    :goto_8
    :try_start_c
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080071

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 4190
    if-eqz v1, :cond_9

    .line 4192
    :try_start_d
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_a

    .line 4195
    :cond_9
    :goto_9
    if-eqz v0, :cond_4

    .line 4197
    :try_start_e
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_5

    goto/16 :goto_3

    .line 4198
    :catch_5
    move-exception v0

    goto/16 :goto_3

    .line 4190
    :catchall_0
    move-exception v0

    move-object v1, v7

    move-object v2, v7

    :goto_a
    if-eqz v2, :cond_a

    .line 4192
    :try_start_f
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_b

    .line 4195
    :cond_a
    :goto_b
    if-eqz v1, :cond_b

    .line 4197
    :try_start_10
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_c

    .line 4198
    :cond_b
    :goto_c
    throw v0

    .line 4193
    :catch_6
    move-exception v1

    goto/16 :goto_2

    .line 4198
    :catch_7
    move-exception v0

    goto/16 :goto_3

    .line 4193
    :catch_8
    move-exception v1

    goto :goto_5

    :catch_9
    move-exception v1

    goto :goto_7

    :catch_a
    move-exception v1

    goto :goto_9

    :catch_b
    move-exception v2

    goto :goto_b

    .line 4198
    :catch_c
    move-exception v1

    goto :goto_c

    .line 4190
    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    move-object v1, v7

    goto :goto_a

    :catchall_2
    move-exception v1

    move-object v8, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v8

    goto :goto_a

    :catchall_3
    move-exception v2

    move-object v8, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_a

    .line 4182
    :catch_d
    move-exception v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_8

    :catch_e
    move-exception v1

    move-object v1, v0

    move-object v0, v2

    goto :goto_8

    .line 4176
    :catch_f
    move-exception v1

    move-object v1, v0

    move-object v0, v7

    goto/16 :goto_6

    :catch_10
    move-exception v1

    move-object v1, v0

    move-object v0, v2

    goto/16 :goto_6

    .line 4172
    :catch_11
    move-exception v1

    move-object v1, v0

    move-object v0, v7

    goto/16 :goto_4

    :catch_12
    move-exception v1

    move-object v1, v0

    move-object v0, v2

    goto/16 :goto_4
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    .line 1579
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1580
    iget-wide v0, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 1581
    const-string v0, "messageId"

    iget-wide v1, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1585
    :cond_0
    return-void
.end method
