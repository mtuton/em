.class public Lcom/android/email/activity/MessageView;
.super Landroid/app/Activity;
.source "MessageView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/MessageView$17;,
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
.field private static final BODY_CONTENT_COLUMN_HTML_CONTENT:I = 0x2

.field private static final BODY_CONTENT_COLUMN_MESSAGE_KEY:I = 0x1

.field private static final BODY_CONTENT_COLUMN_RECORD_ID:I = 0x0

.field private static final BODY_CONTENT_COLUMN_TEXT_CONTENT:I = 0x3

.field private static final BODY_CONTENT_PROJECTION:[Ljava/lang/String; = null

.field private static final DISPLAY_MODE_ECONOMY1:I = 0x1

.field private static final DISPLAY_MODE_ECONOMY2:I = 0x2

.field private static final DISPLAY_MODE_ECONOMY3:I = 0x3

.field private static final DISPLAY_MODE_ECONOMY4:I = 0x4

.field private static final DISPLAY_MODE_ECONOMY5:I = 0x5

.field private static final DISPLAY_MODE_ORIGINAL:I = 0x0

.field private static final EXTRA_DISPLAY_MODE:Ljava/lang/String; = "com.android.email.MessageView_display_mode"

.field private static final EXTRA_MAILBOX_ID:Ljava/lang/String; = "com.android.email.MessageView_mailbox_id"

.field private static final EXTRA_MESSAGE_ID:Ljava/lang/String; = "com.android.email.MessageView_message_id"

.field private static final EXTRA_TEXT_SIZE:Ljava/lang/String; = "com.android.email.MessageView_text_size"

.field private static final IMG_TAG_START_REGEX:Ljava/util/regex/Pattern; = null

.field private static final LIST_DELIMITER_EMAIL:C = '\u0001'

.field private static final LIST_DELIMITER_PERSONAL:C = '\u0002'

.field private static final LOG_VIEW_ACTION:Ljava/lang/String; = "com.android.email.LogProvider"

.field private static MESSAGEID_TO_ACCOUNTID_COLUMN_ACCOUNTID:I = 0x0

.field private static MESSAGEID_TO_ACCOUNTID_PROJECTION:[Ljava/lang/String; = null

.field private static MESSAGEID_TO_MAILBOXID_COLUMN_MAILBOXID:I = 0x0

.field private static MESSAGEID_TO_MAILBOXID_PROJECTION:[Ljava/lang/String; = null

.field private static final POPUP_DOWNLOAD:I = 0x3f7

.field private static final PRESENCE_STATUS_PROJECTION:[Ljava/lang/String; = null

.field private static final STATE_MESSAGE_ID:Ljava/lang/String; = "messageId"

.field private static final TAG:Ljava/lang/String; = "View >>"

.field private static final TEXT_OFFSET_SIZE_BASE:I = 0x2

.field private static final TEXT_SIZE_BASE:I = 0x1a

.field private static final TEXT_SIZE_LARGE:I = 0x2

.field private static final TEXT_SIZE_MEDIUM:I = 0x1

.field private static final TEXT_SIZE_SMALL:I = 0x0

.field private static final TEXT_SUBJECT_SIZE_BASE:I = 0x1c

.field private static final TEXT_TITLE_SIZE_BASE:I = 0x20

.field private static final WEB_URL_PROTOCOL:Ljava/util/regex/Pattern;

.field private static mBodyImageCnt:I

.field private static mBodyImageInfo:[Lcom/android/email/activity/MessageView$BodyImageInfo;

.field private static mCheckedAccountId:J

.field private static mContext:Landroid/content/Context;

.field private static mIsEAS:Z

.field private static mLoadMessageComplete:Z

.field private static mTextSize:I


# instance fields
.field ShowPicturesEnabled:Z

.field private allCCListCount:I

.field private allToListCount:I

.field private bForwardToOld:Z

.field private context:Landroid/content/Context;

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

.field private mAttachmentsHeader:Landroid/widget/LinearLayout;

.field private mCacheDir:Ljava/lang/String;

.field private mCcContainerView:Landroid/view/View;

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

.field private mDownloading:Z

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

.field private mMeetingMaybe:Landroid/widget/Button;

.field private mMeetingNo:Landroid/widget/Button;

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

.field private mScrollView:Landroid/view/View;

.field private mSenderPresenceView:Landroid/widget/ImageView;

.field private mShowPicturesSection:Landroid/view/MenuItem;

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

.field private mWaitForLoadMessageId:J

.field private mWaitToHideProgressDialog:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v6, "_id"

    .line 198
    const-string v0, "<(?i)img\\s+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/email/activity/MessageView;->IMG_TAG_START_REGEX:Ljava/util/regex/Pattern;

    .line 200
    const-string v0, "(?i)http|https://"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/email/activity/MessageView;->WEB_URL_PROTOCOL:Ljava/util/regex/Pattern;

    .line 203
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

    .line 208
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "contact_presence"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/email/activity/MessageView;->PRESENCE_STATUS_PROJECTION:[Ljava/lang/String;

    .line 217
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v6, v0, v4

    const-string v1, "mailboxKey"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/email/activity/MessageView;->MESSAGEID_TO_MAILBOXID_PROJECTION:[Ljava/lang/String;

    .line 221
    sput v3, Lcom/android/email/activity/MessageView;->MESSAGEID_TO_MAILBOXID_COLUMN_MAILBOXID:I

    .line 222
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v6, v0, v4

    const-string v1, "accountKey"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/email/activity/MessageView;->MESSAGEID_TO_ACCOUNTID_PROJECTION:[Ljava/lang/String;

    .line 226
    sput v3, Lcom/android/email/activity/MessageView;->MESSAGEID_TO_ACCOUNTID_COLUMN_ACCOUNTID:I

    .line 387
    sput-boolean v3, Lcom/android/email/activity/MessageView;->mLoadMessageComplete:Z

    .line 389
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/android/email/activity/MessageView;->mCheckedAccountId:J

    .line 390
    sput-boolean v4, Lcom/android/email/activity/MessageView;->mIsEAS:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 159
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 284
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/email/activity/MessageView;->mPreviousMeetingResponse:I

    .line 322
    new-instance v0, Lcom/android/email/activity/MessageView$MessageViewHandler;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MessageView$MessageViewHandler;-><init>(Lcom/android/email/activity/MessageView;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mHandler:Lcom/android/email/activity/MessageView$MessageViewHandler;

    .line 324
    new-instance v0, Lcom/android/email/activity/MessageView$ControllerResults;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MessageView$ControllerResults;-><init>(Lcom/android/email/activity/MessageView;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mControllerCallback:Lcom/android/email/activity/MessageView$ControllerResults;

    .line 339
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/email/activity/MessageView;->mCurrentOrientation:I

    .line 355
    iput-boolean v2, p0, Lcom/android/email/activity/MessageView;->mLogView:Z

    .line 357
    iput-boolean v2, p0, Lcom/android/email/activity/MessageView;->mMultiTouch:Z

    .line 366
    iput v1, p0, Lcom/android/email/activity/MessageView;->mStartX:F

    .line 367
    iput v1, p0, Lcom/android/email/activity/MessageView;->mStartY:F

    .line 368
    iput-boolean v2, p0, Lcom/android/email/activity/MessageView;->mIsDragged:Z

    .line 379
    iput-boolean v2, p0, Lcom/android/email/activity/MessageView;->bForwardToOld:Z

    .line 380
    iput-object v3, p0, Lcom/android/email/activity/MessageView;->mCacheDir:Ljava/lang/String;

    .line 384
    iput-object v3, p0, Lcom/android/email/activity/MessageView;->mListTos:[Ljava/lang/String;

    .line 385
    iput-object v3, p0, Lcom/android/email/activity/MessageView;->mListCcs:[Ljava/lang/String;

    .line 392
    iput-boolean v2, p0, Lcom/android/email/activity/MessageView;->mRefreshedFromLoadMoreCB:Z

    .line 393
    iput-boolean v2, p0, Lcom/android/email/activity/MessageView;->mNeedToReloadMessage:Z

    .line 394
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/email/activity/MessageView;->mCurrentMessageID:J

    .line 2286
    iput-boolean v2, p0, Lcom/android/email/activity/MessageView;->mForwarding:Z

    .line 2287
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mForwarded:Ljava/lang/Boolean;

    .line 2632
    iput-boolean v2, p0, Lcom/android/email/activity/MessageView;->mDownloading:Z

    .line 3157
    iput-object v3, p0, Lcom/android/email/activity/MessageView;->mMenu:Landroid/view/Menu;

    .line 3158
    iput-boolean v2, p0, Lcom/android/email/activity/MessageView;->mSaveToCalendarEnabled:Z

    .line 3160
    iput-boolean v2, p0, Lcom/android/email/activity/MessageView;->ShowPicturesEnabled:Z

    .line 6038
    return-void
.end method

.method private IsEAS()Z
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 5320
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    .line 5322
    .local v1, context:Landroid/content/Context;
    sget-wide v4, Lcom/android/email/activity/MessageView;->mCheckedAccountId:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 5323
    iget-wide v4, p0, Lcom/android/email/activity/MessageView;->mAccountId:J

    sput-wide v4, Lcom/android/email/activity/MessageView;->mCheckedAccountId:J

    .line 5333
    :goto_0
    iget-wide v4, p0, Lcom/android/email/activity/MessageView;->mAccountId:J

    invoke-static {v1, v4, v5}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v0

    .line 5335
    .local v0, account:Lcom/android/email/provider/EmailContent$Account;
    if-nez v0, :cond_2

    .line 5336
    sput-boolean v8, Lcom/android/email/activity/MessageView;->mIsEAS:Z

    .line 5338
    sget-boolean v4, Lcom/android/email/activity/MessageView;->mIsEAS:Z

    .line 5353
    .end local v0           #account:Lcom/android/email/provider/EmailContent$Account;
    :goto_1
    return v4

    .line 5325
    :cond_0
    sget-wide v4, Lcom/android/email/activity/MessageView;->mCheckedAccountId:J

    iget-wide v6, p0, Lcom/android/email/activity/MessageView;->mAccountId:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 5327
    sget-boolean v4, Lcom/android/email/activity/MessageView;->mIsEAS:Z

    goto :goto_1

    .line 5330
    :cond_1
    iget-wide v4, p0, Lcom/android/email/activity/MessageView;->mAccountId:J

    sput-wide v4, Lcom/android/email/activity/MessageView;->mCheckedAccountId:J

    goto :goto_0

    .line 5341
    .restart local v0       #account:Lcom/android/email/provider/EmailContent$Account;
    :cond_2
    invoke-virtual {v0, v1}, Lcom/android/email/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/android/email/mail/Store$StoreInfo;->getStoreInfo(Ljava/lang/String;Landroid/content/Context;)Lcom/android/email/mail/Store$StoreInfo;

    move-result-object v2

    .line 5344
    .local v2, info:Lcom/android/email/mail/Store$StoreInfo;
    if-nez v2, :cond_3

    .line 5345
    sput-boolean v8, Lcom/android/email/activity/MessageView;->mIsEAS:Z

    .line 5347
    sget-boolean v4, Lcom/android/email/activity/MessageView;->mIsEAS:Z

    goto :goto_1

    .line 5350
    :cond_3
    iget-object v3, v2, Lcom/android/email/mail/Store$StoreInfo;->mScheme:Ljava/lang/String;

    .line 5351
    .local v3, scheme:Ljava/lang/String;
    const-string v4, "eas"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    sput-boolean v4, Lcom/android/email/activity/MessageView;->mIsEAS:Z

    .line 5353
    sget-boolean v4, Lcom/android/email/activity/MessageView;->mIsEAS:Z

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/email/activity/MessageView;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mLoadMoreDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/email/activity/MessageView;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mForwardingDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/email/activity/MessageView;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 159
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/MessageView;->doFinishLoadAttachment(J)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/email/activity/MessageView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->onDelete()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/email/activity/MessageView;)Lcom/android/email/MessagingController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mLegacyController:Lcom/android/email/MessagingController;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/email/activity/MessageView;)Lcom/android/email/activity/MessageView$MailBoxAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMoveListAdapter:Lcom/android/email/activity/MessageView$MailBoxAdapter;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/email/activity/MessageView;JLjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 159
    invoke-direct {p0, p1, p2, p3}, Lcom/android/email/activity/MessageView;->onMovePopupToOtherAccount(JLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/email/activity/MessageView;JJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 159
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/email/activity/MessageView;->onMove(JJ)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/email/activity/MessageView;)Lcom/android/email/activity/MessageView$MailBoxAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMoveListToOtherAccountAdapter:Lcom/android/email/activity/MessageView$MailBoxAdapter;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/email/activity/MessageView;JJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 159
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/email/activity/MessageView;->onMultiMoveOtherAccount(JJ)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/email/activity/MessageView;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 159
    iget-wide v0, p0, Lcom/android/email/activity/MessageView;->mAccountId:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/android/email/activity/MessageView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 159
    iget v0, p0, Lcom/android/email/activity/MessageView;->mSaveAttachmentsCount:I

    return v0
.end method

.method static synthetic access$2000(Lcom/android/email/activity/MessageView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->onReply()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/email/activity/MessageView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->onReplyAll()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/email/activity/MessageView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->onForward()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/email/activity/MessageView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->onForwardOld()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/email/activity/MessageView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 159
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageView;->onDisplayModeChange(I)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/email/activity/MessageView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 159
    iget v0, p0, Lcom/android/email/activity/MessageView;->mDisplayMode:I

    return v0
.end method

.method static synthetic access$2700(Lcom/android/email/activity/MessageView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 159
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageView;->onTextSizeChange(I)V

    return-void
.end method

.method static synthetic access$2800()I
    .locals 1

    .prologue
    .line 159
    sget v0, Lcom/android/email/activity/MessageView;->mTextSize:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/email/activity/MessageView;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/email/activity/MessageView;)Lcom/android/email/activity/MessageView$LoadPrevNextTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mLoadPrevNextTask:Lcom/android/email/activity/MessageView$LoadPrevNextTask;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/android/email/activity/MessageView;Lcom/android/email/activity/MessageView$LoadPrevNextTask;)Lcom/android/email/activity/MessageView$LoadPrevNextTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 159
    iput-object p1, p0, Lcom/android/email/activity/MessageView;->mLoadPrevNextTask:Lcom/android/email/activity/MessageView$LoadPrevNextTask;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/android/email/activity/MessageView;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mPrevNextCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$3102(Lcom/android/email/activity/MessageView;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 159
    iput-object p1, p0, Lcom/android/email/activity/MessageView;->mPrevNextCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$3200(Lcom/android/email/activity/MessageView;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 159
    iget-wide v0, p0, Lcom/android/email/activity/MessageView;->mMailboxId:J

    return-wide v0
.end method

.method static synthetic access$3400()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    sget-object v0, Lcom/android/email/activity/MessageView;->PRESENCE_STATUS_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/email/activity/MessageView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 159
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageView;->updateSenderPresence(I)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/email/activity/MessageView;)Lcom/android/email/provider/EmailContent$Message;
    .locals 1
    .parameter "x0"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/email/activity/MessageView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->IsEAS()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3900(Lcom/android/email/activity/MessageView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->closePrevNextCursor()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/email/activity/MessageView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mLoadAttachmentName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/email/activity/MessageView;)Landroid/database/ContentObserver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mNextPrevObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/email/activity/MessageView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->repositionPrevNextCursor()V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/email/activity/MessageView;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMoreMessage:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/email/activity/MessageView;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->loadMoreMessage:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/email/activity/MessageView;Lcom/android/email/provider/EmailContent$Message;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 159
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/MessageView;->reloadUiFromMessage(Lcom/android/email/provider/EmailContent$Message;Z)V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/email/activity/MessageView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->startPresenceCheck()V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/email/activity/MessageView;)Lcom/android/email/activity/MessageView$MessageViewHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mHandler:Lcom/android/email/activity/MessageView$MessageViewHandler;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/android/email/activity/MessageView;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 159
    invoke-direct {p0, p1, p2, p3}, Lcom/android/email/activity/MessageView;->reloadUiFromBody(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/email/activity/MessageView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->checkITPolicy_AllowPOPIMAP()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4900(Lcom/android/email/activity/MessageView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 159
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageView;->onMarkAsRead(Z)V

    return-void
.end method

.method static synthetic access$5000()[Lcom/android/email/activity/MessageView$BodyImageInfo;
    .locals 1

    .prologue
    .line 159
    sget-object v0, Lcom/android/email/activity/MessageView;->mBodyImageInfo:[Lcom/android/email/activity/MessageView$BodyImageInfo;

    return-object v0
.end method

.method static synthetic access$5002([Lcom/android/email/activity/MessageView$BodyImageInfo;)[Lcom/android/email/activity/MessageView$BodyImageInfo;
    .locals 0
    .parameter "x0"

    .prologue
    .line 159
    sput-object p0, Lcom/android/email/activity/MessageView;->mBodyImageInfo:[Lcom/android/email/activity/MessageView$BodyImageInfo;

    return-object p0
.end method

.method static synthetic access$502(Lcom/android/email/activity/MessageView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 159
    iput-boolean p1, p0, Lcom/android/email/activity/MessageView;->mWaitToHideProgressDialog:Z

    return p1
.end method

.method static synthetic access$5100()I
    .locals 1

    .prologue
    .line 159
    sget v0, Lcom/android/email/activity/MessageView;->mBodyImageCnt:I

    return v0
.end method

.method static synthetic access$5102(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 159
    sput p0, Lcom/android/email/activity/MessageView;->mBodyImageCnt:I

    return p0
.end method

.method static synthetic access$5200(Lcom/android/email/activity/MessageView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mHtmlText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5202(Lcom/android/email/activity/MessageView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 159
    iput-object p1, p0, Lcom/android/email/activity/MessageView;->mHtmlText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$5400(Lcom/android/email/activity/MessageView;Lcom/android/email/provider/EmailContent$Attachment;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 159
    invoke-direct {p0, p1, p2, p3}, Lcom/android/email/activity/MessageView;->addAttachment(Lcom/android/email/provider/EmailContent$Attachment;II)V

    return-void
.end method

.method static synthetic access$5500(Lcom/android/email/activity/MessageView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->arrangeAttachments()V

    return-void
.end method

.method static synthetic access$5600(Lcom/android/email/activity/MessageView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->checkITPolicy_AllowHTMLEmail()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5700(Lcom/android/email/activity/MessageView;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 159
    iget-wide v0, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    return-wide v0
.end method

.method static synthetic access$5800(Lcom/android/email/activity/MessageView;)Lcom/android/email/activity/MessageView$ControllerResults;
    .locals 1
    .parameter "x0"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mControllerCallback:Lcom/android/email/activity/MessageView$ControllerResults;

    return-object v0
.end method

.method static synthetic access$5900(Lcom/android/email/activity/MessageView;)Lcom/android/email/Controller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mController:Lcom/android/email/Controller;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/email/activity/MessageView;)Landroid/webkit/WebView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageContentView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/android/email/activity/MessageView;)Lcom/android/email/winset/NonScrollView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    return-object v0
.end method

.method static synthetic access$6100(Lcom/android/email/activity/MessageView;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mAllDownloadIcon:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$6200(Lcom/android/email/activity/MessageView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 159
    iget-boolean v0, p0, Lcom/android/email/activity/MessageView;->mAlldownloadIconVisible:Z

    return v0
.end method

.method static synthetic access$6300(Lcom/android/email/activity/MessageView;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 159
    iget-wide v0, p0, Lcom/android/email/activity/MessageView;->mWaitForLoadMessageId:J

    return-wide v0
.end method

.method static synthetic access$6302(Lcom/android/email/activity/MessageView;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 159
    iput-wide p1, p0, Lcom/android/email/activity/MessageView;->mWaitForLoadMessageId:J

    return-wide p1
.end method

.method static synthetic access$6402(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 159
    sput-boolean p0, Lcom/android/email/activity/MessageView;->mLoadMessageComplete:Z

    return p0
.end method

.method static synthetic access$6500(Lcom/android/email/activity/MessageView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->cancelAllTasks()V

    return-void
.end method

.method static synthetic access$6600(Lcom/android/email/activity/MessageView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 159
    iget-boolean v0, p0, Lcom/android/email/activity/MessageView;->mNeedToReloadMessage:Z

    return v0
.end method

.method static synthetic access$6602(Lcom/android/email/activity/MessageView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 159
    iput-boolean p1, p0, Lcom/android/email/activity/MessageView;->mNeedToReloadMessage:Z

    return p1
.end method

.method static synthetic access$6700(Lcom/android/email/activity/MessageView;)Lcom/android/email/activity/MessageView$LoadMessageTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mLoadMessageTask:Lcom/android/email/activity/MessageView$LoadMessageTask;

    return-object v0
.end method

.method static synthetic access$6702(Lcom/android/email/activity/MessageView;Lcom/android/email/activity/MessageView$LoadMessageTask;)Lcom/android/email/activity/MessageView$LoadMessageTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 159
    iput-object p1, p0, Lcom/android/email/activity/MessageView;->mLoadMessageTask:Lcom/android/email/activity/MessageView$LoadMessageTask;

    return-object p1
.end method

.method static synthetic access$6800(Lcom/android/email/activity/MessageView;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 159
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/MessageView;->updateAttachmentThumbnail(J)V

    return-void
.end method

.method static synthetic access$6900(Lcom/android/email/activity/MessageView;)Lcom/android/email/activity/MessageView$LoadBodyTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mLoadBodyTask:Lcom/android/email/activity/MessageView$LoadBodyTask;

    return-object v0
.end method

.method static synthetic access$6902(Lcom/android/email/activity/MessageView;Lcom/android/email/activity/MessageView$LoadBodyTask;)Lcom/android/email/activity/MessageView$LoadBodyTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 159
    iput-object p1, p0, Lcom/android/email/activity/MessageView;->mLoadBodyTask:Lcom/android/email/activity/MessageView$LoadBodyTask;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/email/activity/MessageView;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mAttachments:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$7002(Lcom/android/email/activity/MessageView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 159
    iput-boolean p1, p0, Lcom/android/email/activity/MessageView;->mRefreshedFromLoadMoreCB:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/email/activity/MessageView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 159
    iget-boolean v0, p0, Lcom/android/email/activity/MessageView;->mForwarding:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/email/activity/MessageView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->doForward()V

    return-void
.end method

.method public static actionView(Landroid/content/Context;JJ)V
    .locals 2
    .parameter "context"
    .parameter "messageId"
    .parameter "mailboxId"

    .prologue
    .line 766
    sput-object p0, Lcom/android/email/activity/MessageView;->mContext:Landroid/content/Context;

    .line 767
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/MessageView;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 768
    .local v0, i:Landroid/content/Intent;
    const-string v1, "com.android.email.MessageView_message_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 769
    const-string v1, "com.android.email.MessageView_mailbox_id"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 770
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 771
    return-void
.end method

.method public static actionView(Landroid/content/Context;JJII)V
    .locals 2
    .parameter "context"
    .parameter "messageId"
    .parameter "mailboxId"
    .parameter "displayMode"
    .parameter "textSize"

    .prologue
    .line 780
    sput-object p0, Lcom/android/email/activity/MessageView;->mContext:Landroid/content/Context;

    .line 781
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/MessageView;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 782
    .local v0, i:Landroid/content/Intent;
    const-string v1, "com.android.email.MessageView_message_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 783
    const-string v1, "com.android.email.MessageView_mailbox_id"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 784
    const-string v1, "com.android.email.MessageView_display_mode"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 785
    const-string v1, "com.android.email.MessageView_text_size"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 786
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 787
    return-void
.end method

.method private addAttachment(Lcom/android/email/provider/EmailContent$Attachment;II)V
    .locals 22
    .parameter "attachment"
    .parameter "fontAttr"
    .parameter "bgResource"

    .prologue
    .line 3688
    new-instance v12, Lcom/android/email/activity/MessageView$AttachmentInfo;

    const/4 v4, 0x0

    invoke-direct {v12, v4}, Lcom/android/email/activity/MessageView$AttachmentInfo;-><init>(Lcom/android/email/activity/MessageView$1;)V

    .line 3689
    .local v12, attachmentInfo:Lcom/android/email/activity/MessageView$AttachmentInfo;
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Attachment;->mSize:J

    move-wide v4, v0

    iput-wide v4, v12, Lcom/android/email/activity/MessageView$AttachmentInfo;->size:J

    .line 3690
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    move-object v4, v0

    iput-object v4, v12, Lcom/android/email/activity/MessageView$AttachmentInfo;->contentType:Ljava/lang/String;

    .line 3691
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    move-object v4, v0

    iput-object v4, v12, Lcom/android/email/activity/MessageView$AttachmentInfo;->name:Ljava/lang/String;

    .line 3692
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Attachment;->mId:J

    move-wide v4, v0

    iput-wide v4, v12, Lcom/android/email/activity/MessageView$AttachmentInfo;->attachmentId:J

    .line 3693
    const/4 v15, 0x0

    .line 3696
    .local v15, bOpenAttachment:Z
    iget-object v4, v12, Lcom/android/email/activity/MessageView$AttachmentInfo;->contentType:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, v12, Lcom/android/email/activity/MessageView$AttachmentInfo;->contentType:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 3697
    :cond_0
    const-string v4, "application/octet-stream"

    iput-object v4, v12, Lcom/android/email/activity/MessageView$AttachmentInfo;->contentType:Ljava/lang/String;

    .line 3698
    const-string v4, "View >>"

    const-string v5, "+++ r2d209 check mime type 1 : null "

    invoke-static {v4, v5}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 3701
    :cond_1
    iget-object v4, v12, Lcom/android/email/activity/MessageView$AttachmentInfo;->name:Ljava/lang/String;

    if-eqz v4, :cond_4

    if-nez v15, :cond_4

    .line 3703
    const-string v4, "View >>"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "+++ addAttachment name : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v12, Lcom/android/email/activity/MessageView$AttachmentInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 3704
    const/4 v15, 0x1

    .line 3707
    iget-object v4, v12, Lcom/android/email/activity/MessageView$AttachmentInfo;->name:Ljava/lang/String;

    const-string v5, ".awb"

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_2

    iget-object v4, v12, Lcom/android/email/activity/MessageView$AttachmentInfo;->name:Ljava/lang/String;

    const-string v5, ".AWB"

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_10

    .line 3708
    :cond_2
    iget-object v4, v12, Lcom/android/email/activity/MessageView$AttachmentInfo;->contentType:Ljava/lang/String;

    const-string v5, "audio/amr-wb"

    if-eq v4, v5, :cond_3

    .line 3709
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mController:Lcom/android/email/Controller;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/activity/MessageView;->mAccountId:J

    move-wide v5, v0

    iget-wide v7, v12, Lcom/android/email/activity/MessageView$AttachmentInfo;->attachmentId:J

    const-string v9, "audio/amr-wb"

    invoke-virtual/range {v4 .. v9}, Lcom/android/email/Controller;->changeMimeType(JJLjava/lang/String;)Z

    .line 3710
    const-string v4, "audio/amr-wb"

    iput-object v4, v12, Lcom/android/email/activity/MessageView$AttachmentInfo;->contentType:Ljava/lang/String;

    .line 3743
    :cond_3
    :goto_0
    const-string v4, "View >>"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "+++ r2d209 check mime type : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v12, Lcom/android/email/activity/MessageView$AttachmentInfo;->contentType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 3746
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MessageView;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v18

    .line 3747
    .local v18, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f03002e

    const/4 v5, 0x0

    move-object/from16 v0, v18

    move v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v21

    .line 3749
    .local v21, view:Landroid/view/View;
    const v4, 0x7f0700b0

    move-object/from16 v0, v21

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 3750
    .local v14, attachmentName:Landroid/widget/TextView;
    const v4, 0x7f0700d7

    move-object/from16 v0, v21

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 3751
    .local v13, attachmentInfoView:Landroid/widget/TextView;
    const v4, 0x7f0700d5

    move-object/from16 v0, v21

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    .line 3753
    .local v11, attachmentIcon:Landroid/widget/ImageView;
    const v4, 0x7f0700d6

    move-object/from16 v0, v21

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    .line 3755
    .local v10, attachmentDownload:Landroid/widget/Button;
    iget-object v4, v12, Lcom/android/email/activity/MessageView$AttachmentInfo;->contentType:Ljava/lang/String;

    sget-object v5, Lcom/android/email/Email;->ACCEPTABLE_ATTACHMENT_VIEW_TYPES:[Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/android/email/mail/internet/MimeUtility;->mimeTypeMatches(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, v12, Lcom/android/email/activity/MessageView$AttachmentInfo;->contentType:Ljava/lang/String;

    sget-object v5, Lcom/android/email/Email;->UNACCEPTABLE_ATTACHMENT_VIEW_TYPES:[Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/android/email/mail/internet/MimeUtility;->mimeTypeMatches(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 3760
    :cond_5
    const/4 v15, 0x0

    .line 3766
    :goto_1
    iget-object v4, v12, Lcom/android/email/activity/MessageView$AttachmentInfo;->contentType:Ljava/lang/String;

    sget-object v5, Lcom/android/email/Email;->ACCEPTABLE_ATTACHMENT_DOWNLOAD_TYPES:[Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/android/email/mail/internet/MimeUtility;->mimeTypeMatches(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, v12, Lcom/android/email/activity/MessageView$AttachmentInfo;->contentType:Ljava/lang/String;

    sget-object v5, Lcom/android/email/Email;->UNACCEPTABLE_ATTACHMENT_DOWNLOAD_TYPES:[Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/android/email/mail/internet/MimeUtility;->mimeTypeMatches(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 3770
    :cond_6
    const/16 v4, 0x8

    invoke-virtual {v10, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 3773
    :cond_7
    iget-wide v4, v12, Lcom/android/email/activity/MessageView$AttachmentInfo;->size:J

    const-wide/32 v6, 0xa00000

    cmp-long v4, v4, v6

    if-lez v4, :cond_8

    .line 3775
    const/4 v15, 0x0

    .line 3776
    const/16 v4, 0x8

    invoke-virtual {v10, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 3779
    :cond_8
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/activity/MessageView;->mMailboxId:J

    move-wide v4, v0

    move-object/from16 v0, p0

    move-wide v1, v4

    invoke-static {v0, v1, v2}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v19

    .line 3780
    .local v19, mailbox:Lcom/android/email/provider/EmailContent$Mailbox;
    if-eqz v19, :cond_a

    .line 3781
    const-string v4, "View >>"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "+++ mailbox id : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    move v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 3782
    const-string v4, "View >>"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "+++ attach file name : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v12, Lcom/android/email/activity/MessageView$AttachmentInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " | "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v12, Lcom/android/email/activity/MessageView$AttachmentInfo;->contentType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 3783
    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    move v4, v0

    const/4 v5, 0x4

    if-eq v4, v5, :cond_9

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    move v4, v0

    const/4 v5, 0x6

    if-ne v4, v5, :cond_19

    .line 3787
    :cond_9
    const/4 v15, 0x0

    .line 3788
    const/16 v4, 0x8

    invoke-virtual {v10, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 3789
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/email/activity/MessageView;->mAlldownloadIconVisible:Z

    .line 3798
    :cond_a
    :goto_2
    iput-object v10, v12, Lcom/android/email/activity/MessageView$AttachmentInfo;->downloadButton:Landroid/widget/Button;

    .line 3799
    iput-object v11, v12, Lcom/android/email/activity/MessageView$AttachmentInfo;->iconView:Landroid/widget/ImageView;

    .line 3801
    move-object/from16 v0, v21

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 3804
    if-eqz v15, :cond_b

    .line 3806
    move-object v0, v14

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3807
    invoke-virtual {v14, v12}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 3808
    move-object v0, v11

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3809
    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 3812
    :cond_b
    iget-object v4, v12, Lcom/android/email/activity/MessageView$AttachmentInfo;->name:Ljava/lang/String;

    invoke-virtual {v14, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3820
    new-instance v16, Ljava/lang/StringBuffer;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuffer;-><init>()V

    .line 3821
    .local v16, fileSize:Ljava/lang/StringBuffer;
    const-string v4, "("

    move-object/from16 v0, v16

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3822
    iget-wide v4, v12, Lcom/android/email/activity/MessageView$AttachmentInfo;->size:J

    long-to-float v4, v4

    invoke-static {v4}, Lcom/android/email/Utility;->formatSize(F)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3823
    const-string v4, ")"

    move-object/from16 v0, v16

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3824
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3827
    move-object/from16 v0, p0

    move-object v1, v12

    invoke-direct {v0, v1}, Lcom/android/email/activity/MessageView;->getPreviewIcon(Lcom/android/email/activity/MessageView$AttachmentInfo;)Landroid/graphics/Bitmap;

    move-result-object v20

    .line 3828
    .local v20, previewIcon:Landroid/graphics/Bitmap;
    if-eqz v20, :cond_c

    .line 3829
    move-object v0, v11

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 3858
    :cond_c
    move-object v0, v10

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3859
    invoke-virtual {v10, v12}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 3861
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mAttachments:Landroid/widget/LinearLayout;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    const/4 v5, 0x1

    if-lt v4, v5, :cond_d

    .line 3863
    new-instance v17, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x2

    const/high16 v6, 0x3f80

    move-object/from16 v0, v17

    move v1, v4

    move v2, v5

    move v3, v6

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 3866
    .local v17, forTopMargin:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v4, -0x7

    move v0, v4

    move-object/from16 v1, v17

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 3867
    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3870
    .end local v17           #forTopMargin:Landroid/widget/LinearLayout$LayoutParams;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mAttachments:Landroid/widget/LinearLayout;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 3871
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mAttachmentContainer:Landroid/view/View;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/view/View;->isShown()Z

    move-result v4

    if-nez v4, :cond_e

    .line 3873
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mAttachmentContainer:Landroid/view/View;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 3881
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/email/winset/NonScrollView;->isShown()Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_f

    .line 3882
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mAttachments:Landroid/widget/LinearLayout;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3886
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/email/activity/MessageView;->mAlldownloadIconVisible:Z

    move v4, v0

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1a

    .line 3887
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mAllDownloadIcon:Landroid/widget/TextView;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3894
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mSubjectView_marquee:Landroid/widget/TextView;

    move-object v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mSubjectAttachmentIcon:Landroid/graphics/drawable/Drawable;

    move-object v7, v0

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 3899
    return-void

    .line 3714
    .end local v10           #attachmentDownload:Landroid/widget/Button;
    .end local v11           #attachmentIcon:Landroid/widget/ImageView;
    .end local v13           #attachmentInfoView:Landroid/widget/TextView;
    .end local v14           #attachmentName:Landroid/widget/TextView;
    .end local v16           #fileSize:Ljava/lang/StringBuffer;
    .end local v18           #inflater:Landroid/view/LayoutInflater;
    .end local v19           #mailbox:Lcom/android/email/provider/EmailContent$Mailbox;
    .end local v20           #previewIcon:Landroid/graphics/Bitmap;
    .end local v21           #view:Landroid/view/View;
    :cond_10
    iget-object v4, v12, Lcom/android/email/activity/MessageView$AttachmentInfo;->name:Ljava/lang/String;

    const-string v5, ".aac"

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_11

    iget-object v4, v12, Lcom/android/email/activity/MessageView$AttachmentInfo;->name:Ljava/lang/String;

    const-string v5, ".AAC"

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_12

    .line 3715
    :cond_11
    iget-object v4, v12, Lcom/android/email/activity/MessageView$AttachmentInfo;->contentType:Ljava/lang/String;

    const-string v5, "audio/aac"

    if-eq v4, v5, :cond_3

    .line 3716
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mController:Lcom/android/email/Controller;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/activity/MessageView;->mAccountId:J

    move-wide v5, v0

    iget-wide v7, v12, Lcom/android/email/activity/MessageView$AttachmentInfo;->attachmentId:J

    const-string v9, "audio/aac"

    invoke-virtual/range {v4 .. v9}, Lcom/android/email/Controller;->changeMimeType(JJLjava/lang/String;)Z

    .line 3717
    const-string v4, "audio/aac"

    iput-object v4, v12, Lcom/android/email/activity/MessageView$AttachmentInfo;->contentType:Ljava/lang/String;

    goto/16 :goto_0

    .line 3721
    :cond_12
    iget-object v4, v12, Lcom/android/email/activity/MessageView$AttachmentInfo;->name:Ljava/lang/String;

    const-string v5, ".ogg"

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_13

    iget-object v4, v12, Lcom/android/email/activity/MessageView$AttachmentInfo;->name:Ljava/lang/String;

    const-string v5, ".OGG"

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_14

    .line 3722
    :cond_13
    iget-object v4, v12, Lcom/android/email/activity/MessageView$AttachmentInfo;->contentType:Ljava/lang/String;

    const-string v5, "audio/ogg"

    if-eq v4, v5, :cond_3

    .line 3723
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mController:Lcom/android/email/Controller;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/activity/MessageView;->mAccountId:J

    move-wide v5, v0

    iget-wide v7, v12, Lcom/android/email/activity/MessageView$AttachmentInfo;->attachmentId:J

    const-string v9, "audio/ogg"

    invoke-virtual/range {v4 .. v9}, Lcom/android/email/Controller;->changeMimeType(JJLjava/lang/String;)Z

    .line 3724
    const-string v4, "audio/ogg"

    iput-object v4, v12, Lcom/android/email/activity/MessageView$AttachmentInfo;->contentType:Ljava/lang/String;

    goto/16 :goto_0

    .line 3728
    :cond_14
    iget-object v4, v12, Lcom/android/email/activity/MessageView$AttachmentInfo;->name:Ljava/lang/String;

    const-string v5, ".m4v"

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_15

    iget-object v4, v12, Lcom/android/email/activity/MessageView$AttachmentInfo;->name:Ljava/lang/String;

    const-string v5, ".M4V"

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_16

    .line 3729
    :cond_15
    iget-object v4, v12, Lcom/android/email/activity/MessageView$AttachmentInfo;->contentType:Ljava/lang/String;

    const-string v5, "video/mp4"

    if-eq v4, v5, :cond_3

    .line 3730
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mController:Lcom/android/email/Controller;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/activity/MessageView;->mAccountId:J

    move-wide v5, v0

    iget-wide v7, v12, Lcom/android/email/activity/MessageView$AttachmentInfo;->attachmentId:J

    const-string v9, "video/mp4"

    invoke-virtual/range {v4 .. v9}, Lcom/android/email/Controller;->changeMimeType(JJLjava/lang/String;)Z

    .line 3731
    const-string v4, "video/mp4"

    iput-object v4, v12, Lcom/android/email/activity/MessageView$AttachmentInfo;->contentType:Ljava/lang/String;

    goto/16 :goto_0

    .line 3735
    :cond_16
    iget-object v4, v12, Lcom/android/email/activity/MessageView$AttachmentInfo;->name:Ljava/lang/String;

    const-string v5, ".amr"

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_17

    iget-object v4, v12, Lcom/android/email/activity/MessageView$AttachmentInfo;->name:Ljava/lang/String;

    const-string v5, ".AMR"

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_3

    .line 3736
    :cond_17
    iget-object v4, v12, Lcom/android/email/activity/MessageView$AttachmentInfo;->contentType:Ljava/lang/String;

    const-string v5, "audio/amr"

    if-eq v4, v5, :cond_3

    .line 3737
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mController:Lcom/android/email/Controller;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/activity/MessageView;->mAccountId:J

    move-wide v5, v0

    iget-wide v7, v12, Lcom/android/email/activity/MessageView$AttachmentInfo;->attachmentId:J

    const-string v9, "audio/amr"

    invoke-virtual/range {v4 .. v9}, Lcom/android/email/Controller;->changeMimeType(JJLjava/lang/String;)Z

    .line 3738
    const-string v4, "audio/amr"

    iput-object v4, v12, Lcom/android/email/activity/MessageView$AttachmentInfo;->contentType:Ljava/lang/String;

    goto/16 :goto_0

    .line 3763
    .restart local v10       #attachmentDownload:Landroid/widget/Button;
    .restart local v11       #attachmentIcon:Landroid/widget/ImageView;
    .restart local v13       #attachmentInfoView:Landroid/widget/TextView;
    .restart local v14       #attachmentName:Landroid/widget/TextView;
    .restart local v18       #inflater:Landroid/view/LayoutInflater;
    .restart local v21       #view:Landroid/view/View;
    :cond_18
    const/4 v15, 0x1

    goto/16 :goto_1

    .line 3793
    .restart local v19       #mailbox:Lcom/android/email/provider/EmailContent$Mailbox;
    :cond_19
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/email/activity/MessageView;->mAlldownloadIconVisible:Z

    goto/16 :goto_2

    .line 3890
    .restart local v16       #fileSize:Ljava/lang/StringBuffer;
    .restart local v20       #previewIcon:Landroid/graphics/Bitmap;
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mAllDownloadIcon:Landroid/widget/TextView;

    move-object v4, v0

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3
.end method

.method private addToContacts()V
    .locals 7

    .prologue
    .line 2207
    iget-object v4, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    iget-object v4, v4, Lcom/android/email/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/email/mail/Address;->unpackFirst(Ljava/lang/String;)Lcom/android/email/mail/Address;

    move-result-object v2

    .line 2209
    .local v2, senderEmail:Lcom/android/email/mail/Address;
    const-string v4, "mailto"

    invoke-virtual {v2}, Lcom/android/email/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2210
    .local v1, mailUri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.android.contacts.action.SHOW_OR_CREATE_CONTACT"

    invoke-direct {v0, v4, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2214
    .local v0, intent:Landroid/content/Intent;
    const-string v4, "com.android.contacts.action.CREATE_DESCRIPTION"

    invoke-virtual {v2}, Lcom/android/email/mail/Address;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2218
    invoke-virtual {v2}, Lcom/android/email/mail/Address;->getPersonal()Ljava/lang/String;

    move-result-object v3

    .line 2219
    .local v3, senderPersonal:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2220
    const-string v4, "name"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2223
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageView;->startActivity(Landroid/content/Intent;)V

    .line 2224
    return-void
.end method

.method private arrangeAttachments()V
    .locals 12

    .prologue
    const/16 v11, 0x8

    const/4 v10, 0x1

    const/4 v8, 0x0

    const-string v9, ""

    .line 4548
    iget-object v7, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    invoke-virtual {v7}, Lcom/android/email/winset/NonScrollView;->isShown()Z

    move-result v7

    if-ne v7, v10, :cond_1

    iget-object v7, p0, Lcom/android/email/activity/MessageView;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v7

    if-le v7, v10, :cond_1

    .line 4549
    iget-object v7, p0, Lcom/android/email/activity/MessageView;->mAttachmentContainer:Landroid/view/View;

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 4550
    iget-object v7, p0, Lcom/android/email/activity/MessageView;->mAttachmentInnerContainer:Landroid/view/View;

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 4551
    iget-object v7, p0, Lcom/android/email/activity/MessageView;->mAttachmentsHeader:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4552
    iget-object v7, p0, Lcom/android/email/activity/MessageView;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4553
    iget-object v7, p0, Lcom/android/email/activity/MessageView;->mAllDownloadIcon:Landroid/widget/TextView;

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4555
    iget-object v7, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    const v8, 0x7f0700e9

    invoke-virtual {v7, v8}, Lcom/android/email/winset/NonScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    .line 4556
    .local v1, attachmentsExpander:Landroid/widget/ToggleButton;
    const-string v7, ""

    invoke-virtual {v1, v9}, Landroid/widget/ToggleButton;->setText(Ljava/lang/CharSequence;)V

    .line 4557
    const-string v7, ""

    invoke-virtual {v1, v9}, Landroid/widget/ToggleButton;->setTextOff(Ljava/lang/CharSequence;)V

    .line 4558
    const-string v7, ""

    invoke-virtual {v1, v9}, Landroid/widget/ToggleButton;->setTextOn(Ljava/lang/CharSequence;)V

    .line 4560
    new-instance v7, Lcom/android/email/activity/MessageView$16;

    invoke-direct {v7, p0}, Lcom/android/email/activity/MessageView$16;-><init>(Lcom/android/email/activity/MessageView;)V

    invoke-virtual {v1, v7}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4588
    iget-object v7, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    const v8, 0x7f0700a2

    invoke-virtual {v7, v8}, Lcom/android/email/winset/NonScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 4589
    .local v4, attachmentsHeaderInfo:Landroid/widget/TextView;
    const-wide/16 v2, 0x0

    .line 4590
    .local v2, attachmentsFileSize:J
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    iget-object v7, p0, Lcom/android/email/activity/MessageView;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v7

    if-ge v5, v7, :cond_0

    .line 4591
    iget-object v7, p0, Lcom/android/email/activity/MessageView;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 4592
    .local v6, view:Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageView$AttachmentInfo;

    .line 4593
    .local v0, attachmentInfo:Lcom/android/email/activity/MessageView$AttachmentInfo;
    iget-wide v7, v0, Lcom/android/email/activity/MessageView$AttachmentInfo;->size:J

    add-long/2addr v2, v7

    .line 4590
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 4603
    .end local v0           #attachmentInfo:Lcom/android/email/activity/MessageView$AttachmentInfo;
    .end local v6           #view:Landroid/view/View;
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/email/activity/MessageView;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " attachments ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    long-to-float v8, v2

    invoke-static {v8}, Lcom/android/email/Utility;->formatSize(F)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4610
    .end local v1           #attachmentsExpander:Landroid/widget/ToggleButton;
    .end local v2           #attachmentsFileSize:J
    .end local v4           #attachmentsHeaderInfo:Landroid/widget/TextView;
    .end local v5           #i:I
    :cond_1
    return-void
.end method

.method private cancelAllTasks()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1250
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mLoadMessageTask:Lcom/android/email/activity/MessageView$LoadMessageTask;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->cancelTask(Landroid/os/AsyncTask;)V

    .line 1251
    iput-object v1, p0, Lcom/android/email/activity/MessageView;->mLoadMessageTask:Lcom/android/email/activity/MessageView$LoadMessageTask;

    .line 1252
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mLoadBodyTask:Lcom/android/email/activity/MessageView$LoadBodyTask;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->cancelTask(Landroid/os/AsyncTask;)V

    .line 1253
    iput-object v1, p0, Lcom/android/email/activity/MessageView;->mLoadBodyTask:Lcom/android/email/activity/MessageView$LoadBodyTask;

    .line 1254
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mLoadAttachmentsTask:Lcom/android/email/activity/MessageView$LoadAttachmentsTask;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->cancelTask(Landroid/os/AsyncTask;)V

    .line 1255
    iput-object v1, p0, Lcom/android/email/activity/MessageView;->mLoadAttachmentsTask:Lcom/android/email/activity/MessageView$LoadAttachmentsTask;

    .line 1256
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mLoadPrevNextTask:Lcom/android/email/activity/MessageView$LoadPrevNextTask;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->cancelTask(Landroid/os/AsyncTask;)V

    .line 1257
    iput-object v1, p0, Lcom/android/email/activity/MessageView;->mLoadPrevNextTask:Lcom/android/email/activity/MessageView$LoadPrevNextTask;

    .line 1258
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mPresenceCheckTask:Lcom/android/email/activity/MessageView$PresenceCheckTask;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->cancelTask(Landroid/os/AsyncTask;)V

    .line 1259
    iput-object v1, p0, Lcom/android/email/activity/MessageView;->mPresenceCheckTask:Lcom/android/email/activity/MessageView$PresenceCheckTask;

    .line 1260
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mChangeDisplayModeTask:Lcom/android/email/activity/MessageView$ChangeDisplayModeTask;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->cancelTask(Landroid/os/AsyncTask;)V

    .line 1261
    iput-object v1, p0, Lcom/android/email/activity/MessageView;->mChangeDisplayModeTask:Lcom/android/email/activity/MessageView$ChangeDisplayModeTask;

    .line 1262
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mTextSizeTask:Lcom/android/email/activity/MessageView$ChangeTextSizeTask;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->cancelTask(Landroid/os/AsyncTask;)V

    .line 1263
    iput-object v1, p0, Lcom/android/email/activity/MessageView;->mTextSizeTask:Lcom/android/email/activity/MessageView$ChangeTextSizeTask;

    .line 1264
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mLoadEmbeddedAttachmentsTask:Lcom/android/email/activity/MessageView$LoadEmbeddedAttachmentsTask;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->cancelTask(Landroid/os/AsyncTask;)V

    .line 1265
    iput-object v1, p0, Lcom/android/email/activity/MessageView;->mLoadEmbeddedAttachmentsTask:Lcom/android/email/activity/MessageView$LoadEmbeddedAttachmentsTask;

    .line 1266
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
    .line 1244
    .local p0, task:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<***>;"
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 1245
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 1247
    :cond_0
    return-void
.end method

.method private checkITPolicy_AllowAttachmentDownload()Z
    .locals 2

    .prologue
    .line 5261
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "11111 MessageView.java >>>>> checkITPolicy_AllowAttachmentDownload()  >>>>> 4600"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 5269
    invoke-static {p0}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/SecurityPolicy;->IsAllowAttachmentDownload()Z

    move-result v0

    return v0
.end method

.method private checkITPolicy_AllowHTMLEmail()Z
    .locals 2

    .prologue
    .line 5283
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "11111 MessageView.java >>>>> checkITPolicy_AllowHTMLEmail()  >>>>> 4513"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 5295
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
    .line 5248
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "11111 MessageView.java >>>>> checkITPolicy_AllowPOPIMAP()  >>>>> 4500"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 5249
    invoke-static {p0}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/SecurityPolicy;->IsAllowPOPIMAPEmailSetted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5251
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->IsEAS()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5253
    const/4 v0, 0x0

    .line 5256
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private checkITPolicy_getAllowedMaxAttachmentSize()I
    .locals 2

    .prologue
    .line 5274
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "11111 MessageView.java >>>>> checkITPolicy_getAllowedMaxAttachmentSize()  >>>>> 4700"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 5276
    invoke-static {p0}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/SecurityPolicy;->getAllowedMaxAttachmentSize()I

    move-result v0

    return v0
.end method

.method private closePrevNextCursor()V
    .locals 2

    .prologue
    .line 1236
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mPrevNextCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 1237
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mPrevNextCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/email/activity/MessageView;->mNextPrevObserver:Landroid/database/ContentObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1238
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mPrevNextCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1239
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mPrevNextCursor:Landroid/database/Cursor;

    .line 1241
    :cond_0
    return-void
.end method

.method static createUniqueFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 12
    .parameter "directory"
    .parameter "filename"

    .prologue
    const/4 v10, 0x0

    const-string v7, "-"

    const-string v11, ""

    .line 2536
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2537
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    move-object v7, v2

    .line 2607
    :goto_0
    return-object v7

    .line 2541
    :cond_0
    const/16 v7, 0x2e

    invoke-virtual {p1, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    .line 2544
    .local v5, index:I
    const/4 v4, 0x2

    .local v4, i:I
    :goto_1
    const v7, 0x7fffffff

    if-ge v4, v7, :cond_5

    .line 2546
    const/4 v7, -0x1

    if-eq v5, v7, :cond_3

    .line 2547
    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {p1, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 2548
    .local v6, name:Ljava/lang/String;
    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 2549
    .local v1, extension:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v6, :cond_1

    const-string v8, ""

    move-object v8, v11

    :goto_2
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-nez v1, :cond_2

    const-string v8, ""

    move-object v8, v11

    :goto_3
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2557
    .end local v1           #extension:Ljava/lang/String;
    .end local v6           #name:Ljava/lang/String;
    .local v3, filename_temp:Ljava/lang/String;
    :goto_4
    new-instance v2, Ljava/io/File;

    .end local v2           #file:Ljava/io/File;
    invoke-direct {v2, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2564
    .end local v3           #filename_temp:Ljava/lang/String;
    .restart local v2       #file:Ljava/io/File;
    :goto_5
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_4

    move-object v7, v2

    .line 2565
    goto :goto_0

    .restart local v1       #extension:Ljava/lang/String;
    .restart local v6       #name:Ljava/lang/String;
    :cond_1
    move-object v8, v6

    .line 2549
    goto :goto_2

    :cond_2
    move-object v8, v1

    goto :goto_3

    .line 2555
    .end local v1           #extension:Ljava/lang/String;
    .end local v6           #name:Ljava/lang/String;
    :cond_3
    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    .restart local v3       #filename_temp:Ljava/lang/String;
    goto :goto_4

    .line 2558
    .end local v2           #file:Ljava/io/File;
    .end local v3           #filename_temp:Ljava/lang/String;
    :catch_0
    move-exception v7

    move-object v0, v7

    .line 2559
    .local v0, eI:Ljava/lang/Exception;
    const-string v7, "View >>"

    const-string v8, "createUniqueFile || Exception"

    invoke-static {v7, v8}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 2560
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2561
    new-instance v2, Ljava/io/File;

    const-string v7, "IllegalFormat-%d"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, p0, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .restart local v2       #file:Ljava/io/File;
    goto :goto_5

    .line 2544
    .end local v0           #eI:Ljava/lang/Exception;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 2607
    :cond_5
    const/4 v7, 0x0

    goto/16 :goto_0
.end method

.method private doFinishLoadAttachment(J)V
    .locals 22
    .parameter "attachmentId"

    .prologue
    .line 5826
    invoke-static/range {p0 .. p2}, Lcom/android/email/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Attachment;

    move-result-object v4

    .line 5828
    .local v4, attachment:Lcom/android/email/provider/EmailContent$Attachment;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/activity/MessageView;->mAccountId:J

    move-wide/from16 v18, v0

    move-object v0, v4

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Attachment;->mId:J

    move-wide/from16 v20, v0

    invoke-static/range {v18 .. v21}, Lcom/android/email/provider/AttachmentProvider;->getAttachmentUri(JJ)Landroid/net/Uri;

    move-result-object v5

    .line 5835
    .local v5, attachmentUri:Landroid/net/Uri;
    const/4 v7, 0x0

    .line 5838
    .local v7, contentUri:Landroid/net/Uri;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MessageView;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/email/provider/AttachmentProvider;->resolveAttachmentIdToContentUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 5848
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/email/activity/MessageView;->mLoadAttachmentSave:Z

    move/from16 v18, v0

    if-eqz v18, :cond_6

    .line 5849
    const-string v18, "View >>"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "doFinishLoadAttachment called! mLoadAttachmentSave = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/email/activity/MessageView;->mLoadAttachmentSave:Z

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 5851
    const/4 v11, 0x0

    .line 5852
    .local v11, in:Ljava/io/InputStream;
    const/4 v15, 0x0

    .line 5854
    .local v15, out:Ljava/io/OutputStream;
    :try_start_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v18

    move-object v0, v4

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v19}, Lcom/android/email/activity/MessageView;->createUniqueFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    .line 5856
    .local v9, file:Ljava/io/File;
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MessageView;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v11

    .line 5857
    new-instance v16, Ljava/io/FileOutputStream;

    move-object/from16 v0, v16

    move-object v1, v9

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_4

    .line 5858
    .end local v15           #out:Ljava/io/OutputStream;
    .local v16, out:Ljava/io/OutputStream;
    :try_start_2
    move-object v0, v11

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 5859
    invoke-virtual/range {v16 .. v16}, Ljava/io/OutputStream;->flush()V

    .line 5861
    const v18, 0x7f080066

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageView;->getString(I)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Toast;->show()V

    .line 5866
    new-instance v18, Lcom/android/email/activity/MessageView$MediaScannerNotifier;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mHandler:Lcom/android/email/activity/MessageView$MessageViewHandler;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object v2, v9

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/android/email/activity/MessageView$MediaScannerNotifier;-><init>(Landroid/content/Context;Ljava/io/File;Lcom/android/email/activity/MessageView$MessageViewHandler;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_19
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_18

    .line 5883
    if-eqz v11, :cond_0

    .line 5885
    :try_start_3
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_c

    .line 5888
    :cond_0
    :goto_0
    if-eqz v16, :cond_12

    .line 5890
    :try_start_4
    invoke-virtual/range {v16 .. v16}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-object/from16 v15, v16

    .line 5985
    .end local v9           #file:Ljava/io/File;
    .end local v11           #in:Ljava/io/InputStream;
    .end local v16           #out:Ljava/io/OutputStream;
    :cond_1
    :goto_1
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/email/activity/MessageView;->mDownloading:Z

    .line 5987
    :goto_2
    return-void

    .line 5839
    :catch_0
    move-exception v18

    move-object/from16 v14, v18

    .line 5840
    .local v14, npe:Ljava/lang/NullPointerException;
    const v18, 0x7f08006a

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageView;->getString(I)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 5891
    .end local v14           #npe:Ljava/lang/NullPointerException;
    .restart local v9       #file:Ljava/io/File;
    .restart local v11       #in:Ljava/io/InputStream;
    .restart local v16       #out:Ljava/io/OutputStream;
    :catch_1
    move-exception v18

    move-object/from16 v15, v16

    .end local v16           #out:Ljava/io/OutputStream;
    .restart local v15       #out:Ljava/io/OutputStream;
    goto :goto_1

    .line 5868
    .end local v9           #file:Ljava/io/File;
    :catch_2
    move-exception v18

    move-object/from16 v13, v18

    .line 5869
    .local v13, ioe:Ljava/io/IOException;
    :goto_3
    const v18, 0x7f080067

    :try_start_5
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageView;->getString(I)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Toast;->show()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 5883
    if-eqz v11, :cond_2

    .line 5885
    :try_start_6
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_d

    .line 5888
    :cond_2
    :goto_4
    if-eqz v15, :cond_1

    .line 5890
    :try_start_7
    invoke-virtual {v15}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_1

    .line 5891
    :catch_3
    move-exception v18

    goto :goto_1

    .line 5874
    .end local v13           #ioe:Ljava/io/IOException;
    :catch_4
    move-exception v18

    move-object/from16 v14, v18

    .line 5875
    .restart local v14       #npe:Ljava/lang/NullPointerException;
    :goto_5
    const v18, 0x7f080067

    :try_start_8
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageView;->getString(I)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Toast;->show()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 5883
    if-eqz v11, :cond_3

    .line 5885
    :try_start_9
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_e

    .line 5888
    :cond_3
    :goto_6
    if-eqz v15, :cond_1

    .line 5890
    :try_start_a
    invoke-virtual {v15}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    goto :goto_1

    .line 5891
    :catch_5
    move-exception v18

    goto :goto_1

    .line 5883
    .end local v14           #npe:Ljava/lang/NullPointerException;
    :catchall_0
    move-exception v18

    :goto_7
    if-eqz v11, :cond_4

    .line 5885
    :try_start_b
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_f

    .line 5888
    :cond_4
    :goto_8
    if-eqz v15, :cond_5

    .line 5890
    :try_start_c
    invoke-virtual {v15}, Ljava/io/OutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_10

    .line 5891
    :cond_5
    :goto_9
    throw v18

    .line 5896
    .end local v11           #in:Ljava/io/InputStream;
    .end local v15           #out:Ljava/io/OutputStream;
    :cond_6
    :try_start_d
    move-object v0, v4

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "text/x-vnote"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 5897
    new-instance v12, Landroid/content/Intent;

    const-string v18, "android.intent.action.VIEW"

    move-object v0, v12

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5899
    .local v12, intent:Landroid/content/Intent;
    const-string v18, "text/x-vnote"

    move-object v0, v12

    move-object v1, v7

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 5901
    const-string v18, "View >>"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "doFinishLoadAttachment1 called! attachment.mFileName = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object v0, v4

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 5902
    const-string v18, "View >>"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "doFinishLoadAttachment1: AttachmentViewIntent >>> URI: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 5903
    const-string v18, "View >>"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "doFinishLoadAttachment1: AttachmentViewIntent >>> attachment.mMimeType: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object v0, v4

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 5905
    const/16 v18, 0x1

    move-object v0, v12

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5906
    move-object/from16 v0, p0

    move-object v1, v12

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageView;->startActivity(Landroid/content/Intent;)V
    :try_end_d
    .catch Landroid/content/ActivityNotFoundException; {:try_start_d .. :try_end_d} :catch_6

    goto/16 :goto_1

    .line 5977
    .end local v12           #intent:Landroid/content/Intent;
    :catch_6
    move-exception v18

    move-object/from16 v8, v18

    .line 5978
    .local v8, e:Landroid/content/ActivityNotFoundException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mHandler:Lcom/android/email/activity/MessageView$MessageViewHandler;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/email/activity/MessageView$MessageViewHandler;->attachmentViewError()V

    goto/16 :goto_1

    .line 5910
    .end local v8           #e:Landroid/content/ActivityNotFoundException;
    :cond_7
    :try_start_e
    move-object v0, v4

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "image/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    :try_end_e
    .catch Landroid/content/ActivityNotFoundException; {:try_start_e .. :try_end_e} :catch_6

    move-result v18

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_10

    .line 5912
    const/4 v11, 0x0

    .line 5913
    .restart local v11       #in:Ljava/io/InputStream;
    const/4 v15, 0x0

    .line 5914
    .restart local v15       #out:Ljava/io/OutputStream;
    const/4 v9, 0x0

    .line 5916
    .restart local v9       #file:Ljava/io/File;
    :try_start_f
    new-instance v17, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mCacheDir:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-direct/range {v17 .. v18}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5917
    .local v17, targetDirectory:Ljava/io/File;
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->isDirectory()Z

    move-result v18

    if-nez v18, :cond_8

    .line 5918
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->mkdirs()Z

    .line 5920
    :cond_8
    new-instance v6, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mCacheDir:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object v0, v4

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object v0, v6

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 5921
    .local v6, checkFile:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v18

    if-nez v18, :cond_b

    .line 5922
    move-object v0, v4

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v17 .. v18}, Lcom/android/email/activity/MessageView;->createUniqueFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    .line 5929
    :goto_a
    const-string v18, "View >>"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "doFinishLoadAttachment called! attachment.mFileName = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object v0, v4

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 5931
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MessageView;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v11

    .line 5932
    new-instance v16, Ljava/io/FileOutputStream;

    move-object/from16 v0, v16

    move-object v1, v9

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_8
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_f} :catch_a

    .line 5933
    .end local v15           #out:Ljava/io/OutputStream;
    .restart local v16       #out:Ljava/io/OutputStream;
    :try_start_10
    move-object v0, v11

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 5934
    invoke-virtual/range {v16 .. v16}, Ljava/io/OutputStream;->flush()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_17
    .catch Ljava/lang/NullPointerException; {:try_start_10 .. :try_end_10} :catch_16

    .line 5943
    if-eqz v11, :cond_9

    .line 5945
    :try_start_11
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_11
    .catch Landroid/content/ActivityNotFoundException; {:try_start_11 .. :try_end_11} :catch_6

    .line 5948
    :cond_9
    :goto_b
    if-eqz v16, :cond_11

    .line 5950
    :try_start_12
    invoke-virtual/range {v16 .. v16}, Ljava/io/OutputStream;->close()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_7
    .catch Landroid/content/ActivityNotFoundException; {:try_start_12 .. :try_end_12} :catch_6

    move-object/from16 v15, v16

    .line 5954
    .end local v6           #checkFile:Ljava/io/File;
    .end local v16           #out:Ljava/io/OutputStream;
    .end local v17           #targetDirectory:Ljava/io/File;
    .restart local v15       #out:Ljava/io/OutputStream;
    :cond_a
    :goto_c
    :try_start_13
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mCacheDir:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object v0, v4

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 5955
    .local v10, fileName:Ljava/lang/String;
    new-instance v12, Landroid/content/Intent;

    const-string v18, "android.intent.action.VIEW"

    move-object v0, v12

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5956
    .restart local v12       #intent:Landroid/content/Intent;
    new-instance v18, Ljava/io/File;

    move-object/from16 v0, v18

    move-object v1, v10

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static/range {v18 .. v18}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v18

    move-object v0, v4

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object v0, v12

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 5958
    const-string v18, "View >>"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "doFinishLoadAttachment2 called! attachment.mFileName = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object v0, v4

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 5959
    const-string v18, "View >>"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "doFinishLoadAttachment2: AttachmentViewIntent >>> URI: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 5960
    const-string v18, "View >>"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "doFinishLoadAttachment2: AttachmentViewIntent >>> attachment.mMimeType: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object v0, v4

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 5962
    const/16 v18, 0x1

    move-object v0, v12

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5963
    move-object/from16 v0, p0

    move-object v1, v12

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageView;->startActivity(Landroid/content/Intent;)V
    :try_end_13
    .catch Landroid/content/ActivityNotFoundException; {:try_start_13 .. :try_end_13} :catch_6

    goto/16 :goto_1

    .line 5924
    .end local v10           #fileName:Ljava/lang/String;
    .end local v12           #intent:Landroid/content/Intent;
    .restart local v6       #checkFile:Ljava/io/File;
    .restart local v17       #targetDirectory:Ljava/io/File;
    :cond_b
    :try_start_14
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 5926
    move-object v0, v4

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v17 .. v18}, Lcom/android/email/activity/MessageView;->createUniqueFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_8
    .catch Ljava/lang/NullPointerException; {:try_start_14 .. :try_end_14} :catch_a

    move-result-object v9

    goto/16 :goto_a

    .line 5951
    .end local v15           #out:Ljava/io/OutputStream;
    .restart local v16       #out:Ljava/io/OutputStream;
    :catch_7
    move-exception v18

    move-object/from16 v15, v16

    .end local v16           #out:Ljava/io/OutputStream;
    .restart local v15       #out:Ljava/io/OutputStream;
    goto/16 :goto_c

    .line 5935
    .end local v6           #checkFile:Ljava/io/File;
    .end local v17           #targetDirectory:Ljava/io/File;
    :catch_8
    move-exception v18

    move-object/from16 v13, v18

    .line 5936
    .restart local v13       #ioe:Ljava/io/IOException;
    :goto_d
    :try_start_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mHandler:Lcom/android/email/activity/MessageView$MessageViewHandler;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/email/activity/MessageView$MessageViewHandler;->attachmentViewError()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    .line 5943
    if-eqz v11, :cond_c

    .line 5945
    :try_start_16
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_12
    .catch Landroid/content/ActivityNotFoundException; {:try_start_16 .. :try_end_16} :catch_6

    .line 5948
    :cond_c
    :goto_e
    if-eqz v15, :cond_a

    .line 5950
    :try_start_17
    invoke-virtual {v15}, Ljava/io/OutputStream;->close()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_9
    .catch Landroid/content/ActivityNotFoundException; {:try_start_17 .. :try_end_17} :catch_6

    goto/16 :goto_c

    .line 5951
    :catch_9
    move-exception v18

    goto/16 :goto_c

    .line 5938
    .end local v13           #ioe:Ljava/io/IOException;
    :catch_a
    move-exception v18

    move-object/from16 v14, v18

    .line 5939
    .restart local v14       #npe:Ljava/lang/NullPointerException;
    :goto_f
    :try_start_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mHandler:Lcom/android/email/activity/MessageView$MessageViewHandler;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/email/activity/MessageView$MessageViewHandler;->attachmentViewError()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_1

    .line 5943
    if-eqz v11, :cond_d

    .line 5945
    :try_start_19
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_13
    .catch Landroid/content/ActivityNotFoundException; {:try_start_19 .. :try_end_19} :catch_6

    .line 5948
    :cond_d
    :goto_10
    if-eqz v15, :cond_a

    .line 5950
    :try_start_1a
    invoke-virtual {v15}, Ljava/io/OutputStream;->close()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_b
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1a .. :try_end_1a} :catch_6

    goto/16 :goto_c

    .line 5951
    :catch_b
    move-exception v18

    goto/16 :goto_c

    .line 5943
    .end local v14           #npe:Ljava/lang/NullPointerException;
    :catchall_1
    move-exception v18

    :goto_11
    if-eqz v11, :cond_e

    .line 5945
    :try_start_1b
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_14
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1b .. :try_end_1b} :catch_6

    .line 5948
    :cond_e
    :goto_12
    if-eqz v15, :cond_f

    .line 5950
    :try_start_1c
    invoke-virtual {v15}, Ljava/io/OutputStream;->close()V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_15
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1c .. :try_end_1c} :catch_6

    .line 5951
    :cond_f
    :goto_13
    :try_start_1d
    throw v18

    .line 5967
    .end local v9           #file:Ljava/io/File;
    .end local v11           #in:Ljava/io/InputStream;
    .end local v15           #out:Ljava/io/OutputStream;
    :cond_10
    new-instance v12, Landroid/content/Intent;

    const-string v18, "android.intent.action.VIEW"

    move-object v0, v12

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5968
    .restart local v12       #intent:Landroid/content/Intent;
    invoke-virtual {v12, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 5970
    const-string v18, "View >>"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "doFinishLoadAttachment3 called! attachment.mFileName = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object v0, v4

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 5971
    const-string v18, "View >>"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "doFinishLoadAttachment3: AttachmentViewIntent >>> URI: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 5972
    const-string v18, "View >>"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "doFinishLoadAttachment3: AttachmentViewIntent >>> attachment.mMimeType: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object v0, v4

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 5974
    const/16 v18, 0x1

    move-object v0, v12

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5975
    move-object/from16 v0, p0

    move-object v1, v12

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageView;->startActivity(Landroid/content/Intent;)V
    :try_end_1d
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1d .. :try_end_1d} :catch_6

    goto/16 :goto_1

    .line 5886
    .end local v12           #intent:Landroid/content/Intent;
    .restart local v9       #file:Ljava/io/File;
    .restart local v11       #in:Ljava/io/InputStream;
    .restart local v16       #out:Ljava/io/OutputStream;
    :catch_c
    move-exception v18

    goto/16 :goto_0

    .end local v9           #file:Ljava/io/File;
    .end local v16           #out:Ljava/io/OutputStream;
    .restart local v13       #ioe:Ljava/io/IOException;
    .restart local v15       #out:Ljava/io/OutputStream;
    :catch_d
    move-exception v18

    goto/16 :goto_4

    .end local v13           #ioe:Ljava/io/IOException;
    .restart local v14       #npe:Ljava/lang/NullPointerException;
    :catch_e
    move-exception v18

    goto/16 :goto_6

    .end local v14           #npe:Ljava/lang/NullPointerException;
    :catch_f
    move-exception v19

    goto/16 :goto_8

    .line 5891
    :catch_10
    move-exception v19

    goto/16 :goto_9

    .line 5946
    .end local v15           #out:Ljava/io/OutputStream;
    .restart local v6       #checkFile:Ljava/io/File;
    .restart local v9       #file:Ljava/io/File;
    .restart local v16       #out:Ljava/io/OutputStream;
    .restart local v17       #targetDirectory:Ljava/io/File;
    :catch_11
    move-exception v18

    goto/16 :goto_b

    .end local v6           #checkFile:Ljava/io/File;
    .end local v16           #out:Ljava/io/OutputStream;
    .end local v17           #targetDirectory:Ljava/io/File;
    .restart local v13       #ioe:Ljava/io/IOException;
    .restart local v15       #out:Ljava/io/OutputStream;
    :catch_12
    move-exception v18

    goto/16 :goto_e

    .end local v13           #ioe:Ljava/io/IOException;
    .restart local v14       #npe:Ljava/lang/NullPointerException;
    :catch_13
    move-exception v18

    goto/16 :goto_10

    .end local v14           #npe:Ljava/lang/NullPointerException;
    :catch_14
    move-exception v19

    goto/16 :goto_12

    .line 5951
    :catch_15
    move-exception v19

    goto/16 :goto_13

    .line 5943
    .end local v15           #out:Ljava/io/OutputStream;
    .restart local v6       #checkFile:Ljava/io/File;
    .restart local v16       #out:Ljava/io/OutputStream;
    .restart local v17       #targetDirectory:Ljava/io/File;
    :catchall_2
    move-exception v18

    move-object/from16 v15, v16

    .end local v16           #out:Ljava/io/OutputStream;
    .restart local v15       #out:Ljava/io/OutputStream;
    goto/16 :goto_11

    .line 5938
    .end local v15           #out:Ljava/io/OutputStream;
    .restart local v16       #out:Ljava/io/OutputStream;
    :catch_16
    move-exception v18

    move-object/from16 v14, v18

    move-object/from16 v15, v16

    .end local v16           #out:Ljava/io/OutputStream;
    .restart local v15       #out:Ljava/io/OutputStream;
    goto/16 :goto_f

    .line 5935
    .end local v15           #out:Ljava/io/OutputStream;
    .restart local v16       #out:Ljava/io/OutputStream;
    :catch_17
    move-exception v18

    move-object/from16 v13, v18

    move-object/from16 v15, v16

    .end local v16           #out:Ljava/io/OutputStream;
    .restart local v15       #out:Ljava/io/OutputStream;
    goto/16 :goto_d

    .line 5883
    .end local v6           #checkFile:Ljava/io/File;
    .end local v15           #out:Ljava/io/OutputStream;
    .end local v17           #targetDirectory:Ljava/io/File;
    .restart local v16       #out:Ljava/io/OutputStream;
    :catchall_3
    move-exception v18

    move-object/from16 v15, v16

    .end local v16           #out:Ljava/io/OutputStream;
    .restart local v15       #out:Ljava/io/OutputStream;
    goto/16 :goto_7

    .line 5874
    .end local v15           #out:Ljava/io/OutputStream;
    .restart local v16       #out:Ljava/io/OutputStream;
    :catch_18
    move-exception v18

    move-object/from16 v14, v18

    move-object/from16 v15, v16

    .end local v16           #out:Ljava/io/OutputStream;
    .restart local v15       #out:Ljava/io/OutputStream;
    goto/16 :goto_5

    .line 5868
    .end local v15           #out:Ljava/io/OutputStream;
    .restart local v16       #out:Ljava/io/OutputStream;
    :catch_19
    move-exception v18

    move-object/from16 v13, v18

    move-object/from16 v15, v16

    .end local v16           #out:Ljava/io/OutputStream;
    .restart local v15       #out:Ljava/io/OutputStream;
    goto/16 :goto_3

    .end local v15           #out:Ljava/io/OutputStream;
    .restart local v6       #checkFile:Ljava/io/File;
    .restart local v16       #out:Ljava/io/OutputStream;
    .restart local v17       #targetDirectory:Ljava/io/File;
    :cond_11
    move-object/from16 v15, v16

    .end local v16           #out:Ljava/io/OutputStream;
    .restart local v15       #out:Ljava/io/OutputStream;
    goto/16 :goto_c

    .end local v6           #checkFile:Ljava/io/File;
    .end local v15           #out:Ljava/io/OutputStream;
    .end local v17           #targetDirectory:Ljava/io/File;
    .restart local v16       #out:Ljava/io/OutputStream;
    :cond_12
    move-object/from16 v15, v16

    .end local v16           #out:Ljava/io/OutputStream;
    .restart local v15       #out:Ljava/io/OutputStream;
    goto/16 :goto_1
.end method

.method private doForward()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 5992
    iget-wide v5, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    invoke-static {p0, v5, v6}, Lcom/android/email/provider/EmailContent$Attachment;->restoreAttachmentsWithMessageId(Landroid/content/Context;J)[Lcom/android/email/provider/EmailContent$Attachment;

    move-result-object v2

    .line 5993
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

    .line 5995
    .local v1, attachment:Lcom/android/email/provider/EmailContent$Attachment;
    iget-object v5, v1, Lcom/android/email/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    if-eqz v5, :cond_1

    iget-object v5, v1, Lcom/android/email/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    const-string v6, "@namo.co.kr"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-ne v5, v9, :cond_1

    .line 5993
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6001
    :cond_1
    iget-wide v5, v1, Lcom/android/email/provider/EmailContent$Attachment;->mSize:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_0

    iget-object v5, v1, Lcom/android/email/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    if-nez v5, :cond_0

    .line 6030
    .end local v1           #attachment:Lcom/android/email/provider/EmailContent$Attachment;
    :goto_1
    return-void

    .line 6004
    :cond_2
    iget-object v5, p0, Lcom/android/email/activity/MessageView;->mForwarded:Ljava/lang/Boolean;

    monitor-enter v5

    .line 6005
    :try_start_0
    iget-object v6, p0, Lcom/android/email/activity/MessageView;->mForwarded:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_4

    .line 6006
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, p0, Lcom/android/email/activity/MessageView;->mForwarded:Ljava/lang/Boolean;

    .line 6013
    iget-object v6, p0, Lcom/android/email/activity/MessageView;->mForwardingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->dismiss()V

    .line 6015
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->isFinishing()Z

    move-result v6

    if-eqz v6, :cond_3

    monitor-exit v5

    goto :goto_1

    .line 6029
    :catchall_0
    move-exception v6

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 6018
    :cond_3
    :try_start_1
    iget-boolean v6, p0, Lcom/android/email/activity/MessageView;->bForwardToOld:Z

    if-ne v6, v9, :cond_5

    .line 6019
    iget-object v6, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    iget-wide v6, v6, Lcom/android/email/provider/EmailContent$Message;->mId:J

    const/4 v8, 0x1

    invoke-static {p0, v6, v7, v8}, Lcom/android/email/activity/MessageCompose;->actionForward(Landroid/content/Context;JZ)V

    .line 6020
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/email/activity/MessageView;->bForwardToOld:Z

    .line 6024
    :goto_2
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->finish()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 6029
    :cond_4
    :goto_3
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 6022
    :cond_5
    :try_start_3
    iget-object v6, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    iget-wide v6, v6, Lcom/android/email/provider/EmailContent$Message;->mId:J

    invoke-static {p0, v6, v7}, Lcom/android/email/activity/MessageCompose;->actionForward(Landroid/content/Context;J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 6025
    :catch_0
    move-exception v6

    goto :goto_3
.end method

.method private eventToWebview(Landroid/view/MotionEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 1323
    :try_start_0
    iget-object v1, p0, Lcom/android/email/activity/MessageView;->mMessageContentView:Landroid/webkit/WebView;

    invoke-virtual {v1, p1}, Landroid/webkit/WebView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1328
    :goto_0
    return-void

    .line 1324
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1325
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v1, "View >>"

    const-string v2, "dispatch to webview, FC in webview at zoom-in>>>"

    invoke-static {v1, v2}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getAngle(FFFF)I
    .locals 10
    .parameter "x1"
    .parameter "y1"
    .parameter "x2"
    .parameter "y2"

    .prologue
    .line 1309
    sub-float v2, p3, p1

    .line 1310
    .local v2, dx:F
    sub-float v3, p4, p2

    .line 1312
    .local v3, dy:F
    float-to-double v6, v2

    float-to-double v8, v3

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    .line 1313
    .local v4, rad:D
    const-wide v6, 0x4066800000000000L

    mul-double/2addr v6, v4

    const-wide v8, 0x400921fb54442d18L

    div-double v0, v6, v8

    .line 1315
    .local v0, degree:D
    double-to-int v6, v0

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    return v6
.end method

.method private getPreviewIcon(Lcom/android/email/activity/MessageView$AttachmentInfo;)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "attachment"

    .prologue
    .line 3626
    :try_start_0
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iget-wide v0, p0, Lcom/android/email/activity/MessageView;->mAccountId:J

    iget-wide v2, p1, Lcom/android/email/activity/MessageView$AttachmentInfo;->attachmentId:J

    const/16 v4, 0x3e

    const/16 v5, 0x3e

    invoke-static/range {v0 .. v5}, Lcom/android/email/provider/AttachmentProvider;->getAttachmentThumbnailUri(JJII)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 3637
    :goto_0
    return-object v0

    .line 3633
    :catch_0
    move-exception v0

    move-object v6, v0

    .line 3637
    .local v6, e:Ljava/lang/Exception;
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private lookupAccountForMessage(J)J
    .locals 9
    .parameter "messageId"

    .prologue
    .line 1522
    move-object v7, p0

    .line 1523
    .local v7, context:Landroid/content/Context;
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1524
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/email/activity/MessageView;->MESSAGEID_TO_ACCOUNTID_PROJECTION:[Ljava/lang/String;

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1528
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lcom/android/email/activity/MessageView;->MESSAGEID_TO_ACCOUNTID_COLUMN_ACCOUNTID:I

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v1

    .line 1532
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    return-wide v1

    .line 1528
    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0

    .line 1532
    :catchall_0
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method private messageChanged()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 3535
    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 3536
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

    .line 3538
    :cond_0
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->cancelAllTasks()V

    .line 3539
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageView;->setTitle(Ljava/lang/CharSequence;)V

    .line 3540
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageContentView:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    .line 3541
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageContentView:Landroid/webkit/WebView;

    invoke-virtual {v0, v4, v4}, Landroid/webkit/WebView;->scrollTo(II)V

    .line 3542
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageContentView:Landroid/webkit/WebView;

    const-string v1, "file:///android_asset/empty.html"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 3545
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 3546
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3547
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mAllDownloadIcon:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3548
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mAttachmentIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3551
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mAttachmentContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 3552
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mAttachmentInnerContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 3553
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mAttachmentsHeader:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3557
    new-instance v0, Lcom/android/email/activity/MessageView$LoadMessageTask;

    iget-wide v1, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/email/activity/MessageView$LoadMessageTask;-><init>(Lcom/android/email/activity/MessageView;JZ)V

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mLoadMessageTask:Lcom/android/email/activity/MessageView$LoadMessageTask;

    .line 3558
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mLoadMessageTask:Lcom/android/email/activity/MessageView$LoadMessageTask;

    new-array v1, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageView$LoadMessageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 3559
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mPrevNextCursor:Landroid/database/Cursor;

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageView;->updatePrevNextArrows(Landroid/database/Cursor;)V

    .line 3560
    return-void
.end method

.method private onClickFavorite()V
    .locals 4

    .prologue
    .line 2231
    iget-object v1, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    if-eqz v1, :cond_0

    .line 2233
    iget-object v1, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    iget-boolean v1, v1, Lcom/android/email/provider/EmailContent$Message;->mFlagFavorite:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    move v0, v1

    .line 2234
    .local v0, newFavorite:Z
    :goto_0
    iget-object v1, p0, Lcom/android/email/activity/MessageView;->mFavoriteIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/android/email/activity/MessageView;->mFavoriteIconOn:Landroid/graphics/drawable/Drawable;

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2255
    iget-object v1, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    iput-boolean v0, v1, Lcom/android/email/provider/EmailContent$Message;->mFlagFavorite:Z

    .line 2256
    iget-object v1, p0, Lcom/android/email/activity/MessageView;->mController:Lcom/android/email/Controller;

    iget-wide v2, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/email/Controller;->setMessageFavorite(JZ)V

    .line 2258
    .end local v0           #newFavorite:Z
    :cond_0
    return-void

    .line 2233
    :cond_1
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0

    .line 2234
    .restart local v0       #newFavorite:Z
    :cond_2
    iget-object v2, p0, Lcom/android/email/activity/MessageView;->mFavoriteIconOff:Landroid/graphics/drawable/Drawable;

    goto :goto_1
.end method

.method private onClickSender()V
    .locals 8

    .prologue
    .line 2180
    iget-object v5, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    if-nez v5, :cond_1

    .line 2203
    :cond_0
    :goto_0
    return-void

    .line 2182
    :cond_1
    iget-object v5, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    iget-object v5, v5, Lcom/android/email/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/email/mail/Address;->unpackFirst(Ljava/lang/String;)Lcom/android/email/mail/Address;

    move-result-object v4

    .line 2183
    .local v4, senderEmail:Lcom/android/email/mail/Address;
    if-eqz v4, :cond_0

    .line 2186
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 2187
    .local v3, resolver:Landroid/content/ContentResolver;
    invoke-virtual {v4}, Lcom/android/email/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 2188
    .local v0, address:Ljava/lang/String;
    sget-object v5, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2190
    .local v1, dataUri:Landroid/net/Uri;
    invoke-static {v3, v1}, Landroid/provider/ContactsContract$Data;->getContactLookupUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    .line 2192
    .local v2, lookupUri:Landroid/net/Uri;
    if-eqz v2, :cond_2

    .line 2194
    iget-object v5, p0, Lcom/android/email/activity/MessageView;->mSenderPresenceView:Landroid/widget/ImageView;

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static {p0, v5, v2, v6, v7}, Landroid/provider/ContactsContract$QuickContact;->showQuickContact(Landroid/content/Context;Landroid/view/View;Landroid/net/Uri;I[Ljava/lang/String;)V

    goto :goto_0

    .line 2200
    :cond_2
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->addToContacts()V

    goto :goto_0
.end method

.method private onDelete()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1489
    iget-object v4, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    if-eqz v4, :cond_0

    .line 1492
    iget-wide v0, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    .line 1493
    .local v0, messageIdToDelete:J
    iget-object v4, p0, Lcom/android/email/activity/MessageView;->mController:Lcom/android/email/Controller;

    iget-object v5, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    iget-wide v5, v5, Lcom/android/email/provider/EmailContent$Message;->mAccountKey:J

    invoke-virtual {v4, v0, v1, v5, v6}, Lcom/android/email/Controller;->deleteMessage(JJ)V

    .line 1495
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0006

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v4, v5, v8, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1496
    .local v3, reportString:Ljava/lang/String;
    invoke-static {p0, v3, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 1498
    sget-object v4, Lcom/android/email/activity/MessageView;->mContext:Landroid/content/Context;

    check-cast v4, Lcom/android/email/activity/MessageList;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/email/activity/MessageList;->removeMessage(Ljava/lang/Long;)V

    .line 1500
    iget-boolean v4, p0, Lcom/android/email/activity/MessageView;->mLogView:Z

    if-ne v4, v8, :cond_1

    .line 1501
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->finish()V

    .line 1514
    .end local v0           #messageIdToDelete:J
    .end local v3           #reportString:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1506
    .restart local v0       #messageIdToDelete:J
    .restart local v3       #reportString:Ljava/lang/String;
    :cond_1
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->onPrevious()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->onNext()Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    move v2, v8

    .line 1508
    .local v2, moved:Z
    :goto_1
    if-nez v2, :cond_0

    .line 1511
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->finish()V

    goto :goto_0

    .end local v2           #moved:Z
    :cond_3
    move v2, v9

    .line 1506
    goto :goto_1
.end method

.method private onDeletePopup()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 1458
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1460
    .local v0, backWarning:Landroid/app/AlertDialog$Builder;
    const v2, 0x1080027

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 1461
    const v2, 0x7f080016

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1464
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0006

    new-array v4, v7, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v7, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1467
    .local v1, reportString:Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1471
    const v2, 0x7f080011

    new-instance v3, Lcom/android/email/activity/MessageView$4;

    invoke-direct {v3, p0}, Lcom/android/email/activity/MessageView$4;-><init>(Lcom/android/email/activity/MessageView;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1479
    const v2, 0x7f080012

    new-instance v3, Lcom/android/email/activity/MessageView$5;

    invoke-direct {v3, p0}, Lcom/android/email/activity/MessageView$5;-><init>(Lcom/android/email/activity/MessageView;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1485
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1486
    return-void
.end method

.method private onDisplayMode()V
    .locals 8

    .prologue
    .line 3252
    const/4 v3, 0x6

    new-array v2, v3, [Lcom/android/email/activity/MessageView$DisplayViewType;

    .line 3253
    .local v2, viewType:[Lcom/android/email/activity/MessageView$DisplayViewType;
    const/4 v3, 0x0

    new-instance v4, Lcom/android/email/activity/MessageView$DisplayViewType;

    const v5, 0x7f08010c

    invoke-virtual {p0, v5}, Lcom/android/email/activity/MessageView;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f02006f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-direct {v4, p0, v5, v6}, Lcom/android/email/activity/MessageView$DisplayViewType;-><init>(Lcom/android/email/activity/MessageView;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    aput-object v4, v2, v3

    .line 3254
    const/4 v3, 0x1

    new-instance v4, Lcom/android/email/activity/MessageView$DisplayViewType;

    const v5, 0x7f08010d

    invoke-virtual {p0, v5}, Lcom/android/email/activity/MessageView;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020070

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-direct {v4, p0, v5, v6}, Lcom/android/email/activity/MessageView$DisplayViewType;-><init>(Lcom/android/email/activity/MessageView;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    aput-object v4, v2, v3

    .line 3255
    const/4 v3, 0x2

    new-instance v4, Lcom/android/email/activity/MessageView$DisplayViewType;

    const v5, 0x7f08010e

    invoke-virtual {p0, v5}, Lcom/android/email/activity/MessageView;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020071

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-direct {v4, p0, v5, v6}, Lcom/android/email/activity/MessageView$DisplayViewType;-><init>(Lcom/android/email/activity/MessageView;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    aput-object v4, v2, v3

    .line 3256
    const/4 v3, 0x3

    new-instance v4, Lcom/android/email/activity/MessageView$DisplayViewType;

    const v5, 0x7f08010f

    invoke-virtual {p0, v5}, Lcom/android/email/activity/MessageView;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020072

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-direct {v4, p0, v5, v6}, Lcom/android/email/activity/MessageView$DisplayViewType;-><init>(Lcom/android/email/activity/MessageView;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    aput-object v4, v2, v3

    .line 3257
    const/4 v3, 0x4

    new-instance v4, Lcom/android/email/activity/MessageView$DisplayViewType;

    const v5, 0x7f080110

    invoke-virtual {p0, v5}, Lcom/android/email/activity/MessageView;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020073

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-direct {v4, p0, v5, v6}, Lcom/android/email/activity/MessageView$DisplayViewType;-><init>(Lcom/android/email/activity/MessageView;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    aput-object v4, v2, v3

    .line 3258
    const/4 v3, 0x5

    new-instance v4, Lcom/android/email/activity/MessageView$DisplayViewType;

    const v5, 0x7f080111

    invoke-virtual {p0, v5}, Lcom/android/email/activity/MessageView;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020074

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-direct {v4, p0, v5, v6}, Lcom/android/email/activity/MessageView$DisplayViewType;-><init>(Lcom/android/email/activity/MessageView;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    aput-object v4, v2, v3

    .line 3260
    new-instance v0, Lcom/android/email/activity/MessageView$DisplayViewAdapter;

    invoke-direct {v0, p0, v2}, Lcom/android/email/activity/MessageView$DisplayViewAdapter;-><init>(Landroid/content/Context;[Lcom/android/email/activity/MessageView$DisplayViewType;)V

    .line 3264
    .local v0, adapter:Landroid/widget/ListAdapter;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3267
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const v3, 0x7f080109

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 3270
    iget v3, p0, Lcom/android/email/activity/MessageView;->mDisplayMode:I

    new-instance v4, Lcom/android/email/activity/MessageView$14;

    invoke-direct {v4, p0}, Lcom/android/email/activity/MessageView$14;-><init>(Lcom/android/email/activity/MessageView;)V

    invoke-virtual {v1, v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3279
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 3280
    return-void
.end method

.method private onDisplayModeChange(I)V
    .locals 4
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    .line 3355
    iput p1, p0, Lcom/android/email/activity/MessageView;->mDisplayMode:I

    .line 3357
    iget v0, p0, Lcom/android/email/activity/MessageView;->mDisplayMode:I

    if-nez v0, :cond_0

    .line 3359
    const v0, 0x7f08010b

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3361
    :cond_0
    new-instance v0, Lcom/android/email/activity/MessageView$ChangeDisplayModeTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/email/activity/MessageView$ChangeDisplayModeTask;-><init>(Lcom/android/email/activity/MessageView;Lcom/android/email/activity/MessageView$1;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mChangeDisplayModeTask:Lcom/android/email/activity/MessageView$ChangeDisplayModeTask;

    .line 3362
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mChangeDisplayModeTask:Lcom/android/email/activity/MessageView$ChangeDisplayModeTask;

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageView$ChangeDisplayModeTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 3364
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    if-eqz v0, :cond_1

    .line 3365
    new-instance v0, Lcom/android/email/activity/MessageView$LoadBodyTask;

    iget-object v1, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    iget-wide v1, v1, Lcom/android/email/provider/EmailContent$Message;->mId:J

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/email/activity/MessageView$LoadBodyTask;-><init>(Lcom/android/email/activity/MessageView;JZ)V

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mLoadBodyTask:Lcom/android/email/activity/MessageView$LoadBodyTask;

    .line 3366
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mLoadBodyTask:Lcom/android/email/activity/MessageView$LoadBodyTask;

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageView$LoadBodyTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 3368
    :cond_1
    return-void
.end method

.method private onDownloadAttachment(Lcom/android/email/activity/MessageView$AttachmentInfo;)V
    .locals 11
    .parameter "attachment"

    .prologue
    const/4 v10, 0x1

    .line 2636
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2641
    const v0, 0x7f080067

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageView;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2662
    :goto_0
    return-void

    .line 2647
    :cond_0
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

    .line 2649
    iput v10, p0, Lcom/android/email/activity/MessageView;->mSaveAttachmentsCount:I

    .line 2650
    iget-wide v0, p1, Lcom/android/email/activity/MessageView$AttachmentInfo;->attachmentId:J

    iput-wide v0, p0, Lcom/android/email/activity/MessageView;->mLoadAttachmentId:J

    .line 2651
    iput-boolean v10, p0, Lcom/android/email/activity/MessageView;->mLoadAttachmentSave:Z

    .line 2652
    iget-object v0, p1, Lcom/android/email/activity/MessageView$AttachmentInfo;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mLoadAttachmentName:Ljava/lang/String;

    .line 2655
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mController:Lcom/android/email/Controller;

    iget-wide v1, p1, Lcom/android/email/activity/MessageView$AttachmentInfo;->attachmentId:J

    iget-wide v3, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    iget-object v5, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    iget-wide v5, v5, Lcom/android/email/provider/EmailContent$Message;->mMailboxKey:J

    iget-wide v7, p0, Lcom/android/email/activity/MessageView;->mAccountId:J

    iget-object v9, p0, Lcom/android/email/activity/MessageView;->mControllerCallback:Lcom/android/email/activity/MessageView$ControllerResults;

    invoke-virtual/range {v0 .. v10}, Lcom/android/email/Controller;->loadAttachment(JJJJLcom/android/email/Controller$Result;Z)V

    .line 2660
    iput-boolean v10, p0, Lcom/android/email/activity/MessageView;->mDownloading:Z

    goto :goto_0
.end method

.method private onDownloadAttachmentAll()V
    .locals 13

    .prologue
    .line 2665
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2670
    const v0, 0x7f080067

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageView;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2694
    :cond_0
    return-void

    .line 2676
    :cond_1
    const-string v0, "View >>"

    const-string v1, "onDownloadAttachmentAll called!"

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 2677
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/email/activity/MessageView;->mSaveAttachmentsCount:I

    .line 2679
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ge v12, v0, :cond_0

    .line 2680
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v12}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/email/activity/MessageView$AttachmentInfo;

    .line 2681
    .local v11, attachment:Lcom/android/email/activity/MessageView$AttachmentInfo;
    iget-wide v0, v11, Lcom/android/email/activity/MessageView$AttachmentInfo;->attachmentId:J

    iput-wide v0, p0, Lcom/android/email/activity/MessageView;->mLoadAttachmentId:J

    .line 2682
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/MessageView;->mLoadAttachmentSave:Z

    .line 2683
    iget-object v0, v11, Lcom/android/email/activity/MessageView$AttachmentInfo;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mLoadAttachmentName:Ljava/lang/String;

    .line 2685
    if-nez v12, :cond_2

    .line 2686
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mController:Lcom/android/email/Controller;

    iget-wide v1, v11, Lcom/android/email/activity/MessageView$AttachmentInfo;->attachmentId:J

    iget-wide v3, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    iget-object v5, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    iget-wide v5, v5, Lcom/android/email/provider/EmailContent$Message;->mMailboxKey:J

    iget-wide v7, p0, Lcom/android/email/activity/MessageView;->mAccountId:J

    iget-object v9, p0, Lcom/android/email/activity/MessageView;->mControllerCallback:Lcom/android/email/activity/MessageView$ControllerResults;

    const/4 v10, 0x1

    invoke-virtual/range {v0 .. v10}, Lcom/android/email/Controller;->loadAttachment(JJJJLcom/android/email/Controller$Result;Z)V

    .line 2679
    :goto_1
    add-int/lit8 v12, v12, 0x1

    iget v0, p0, Lcom/android/email/activity/MessageView;->mSaveAttachmentsCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/email/activity/MessageView;->mSaveAttachmentsCount:I

    goto :goto_0

    .line 2689
    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mController:Lcom/android/email/Controller;

    iget-wide v1, v11, Lcom/android/email/activity/MessageView$AttachmentInfo;->attachmentId:J

    iget-wide v3, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    iget-object v5, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    iget-wide v5, v5, Lcom/android/email/provider/EmailContent$Message;->mMailboxKey:J

    iget-wide v7, p0, Lcom/android/email/activity/MessageView;->mAccountId:J

    iget-object v9, p0, Lcom/android/email/activity/MessageView;->mControllerCallback:Lcom/android/email/activity/MessageView$ControllerResults;

    const/4 v10, 0x0

    invoke-virtual/range {v0 .. v10}, Lcom/android/email/Controller;->loadAttachment(JJJJLcom/android/email/Controller$Result;Z)V

    goto :goto_1
.end method

.method private onExpand()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 2754
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mDetailContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 2755
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mDetailContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2761
    :goto_0
    return-void

    .line 2758
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mDetailContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private onForward()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 2292
    iget-object v3, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    if-eqz v3, :cond_2

    .line 2295
    const/4 v0, 0x0

    .line 2296
    .local v0, isExchange:Z
    iget-object v3, p0, Lcom/android/email/activity/MessageView;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/email/activity/MessageView;->mController:Lcom/android/email/Controller;

    iget-object v4, p0, Lcom/android/email/activity/MessageView;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v3, v4}, Lcom/android/email/Controller;->isMessagingController(Lcom/android/email/provider/EmailContent$Account;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2297
    :cond_0
    const/4 v0, 0x0

    .line 2302
    :goto_0
    iget-object v3, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    iget-wide v3, v3, Lcom/android/email/provider/EmailContent$Message;->mMailboxKey:J

    invoke-static {p0, v3, v4}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v1

    .line 2304
    .local v1, mb:Lcom/android/email/provider/EmailContent$Mailbox;
    if-nez v0, :cond_4

    .line 2305
    iget v3, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1

    iget v3, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    const/4 v4, 0x6

    if-eq v3, v4, :cond_1

    iget v3, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_5

    .line 2308
    :cond_1
    iget-object v3, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    iget-wide v3, v3, Lcom/android/email/provider/EmailContent$Message;->mId:J

    invoke-static {p0, v3, v4}, Lcom/android/email/activity/MessageCompose;->actionForward(Landroid/content/Context;J)V

    .line 2309
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->finish()V

    .line 2356
    .end local v0           #isExchange:Z
    .end local v1           #mb:Lcom/android/email/provider/EmailContent$Mailbox;
    :cond_2
    :goto_1
    return-void

    .line 2299
    .restart local v0       #isExchange:Z
    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    .line 2315
    .restart local v1       #mb:Lcom/android/email/provider/EmailContent$Mailbox;
    :cond_4
    iget-object v3, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    iget-wide v3, v3, Lcom/android/email/provider/EmailContent$Message;->mId:J

    invoke-static {p0, v3, v4}, Lcom/android/email/activity/MessageCompose;->actionForward(Landroid/content/Context;J)V

    .line 2316
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->finish()V

    goto :goto_1

    .line 2323
    :cond_5
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 2325
    .local v2, sharedPref:Landroid/content/SharedPreferences;
    const-string v3, "forward_with_files"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_6

    .line 2326
    iget-object v3, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    iget-wide v3, v3, Lcom/android/email/provider/EmailContent$Message;->mId:J

    invoke-static {p0, v3, v4}, Lcom/android/email/activity/MessageCompose;->actionForward(Landroid/content/Context;J)V

    .line 2327
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->finish()V

    goto :goto_1

    .line 2330
    :cond_6
    iget-object v3, p0, Lcom/android/email/activity/MessageView;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-nez v3, :cond_7

    .line 2331
    iget-object v3, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    iget-wide v3, v3, Lcom/android/email/provider/EmailContent$Message;->mId:J

    invoke-static {p0, v3, v4}, Lcom/android/email/activity/MessageCompose;->actionForward(Landroid/content/Context;J)V

    .line 2332
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->finish()V

    goto :goto_1

    .line 2338
    :cond_7
    iget-object v3, p0, Lcom/android/email/activity/MessageView;->mForwardingDialog:Landroid/app/ProgressDialog;

    const v4, 0x7f080137

    invoke-virtual {p0, v4}, Lcom/android/email/activity/MessageView;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 2339
    iget-object v3, p0, Lcom/android/email/activity/MessageView;->mForwardingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->show()V

    .line 2340
    iget-object v3, p0, Lcom/android/email/activity/MessageView;->mForwardingDialog:Landroid/app/ProgressDialog;

    new-instance v4, Lcom/android/email/activity/MessageView$10;

    invoke-direct {v4, p0}, Lcom/android/email/activity/MessageView$10;-><init>(Lcom/android/email/activity/MessageView;)V

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 2348
    iput-boolean v5, p0, Lcom/android/email/activity/MessageView;->mForwarding:Z

    .line 2349
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/email/activity/MessageView;->mForwarded:Ljava/lang/Boolean;

    .line 2351
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->saveAttachmentsTemporarily()V

    goto :goto_1
.end method

.method private onForwardOld()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 2359
    iget-object v3, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    if-eqz v3, :cond_2

    .line 2362
    const/4 v0, 0x0

    .line 2363
    .local v0, isExchange:Z
    iget-object v3, p0, Lcom/android/email/activity/MessageView;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/email/activity/MessageView;->mController:Lcom/android/email/Controller;

    iget-object v4, p0, Lcom/android/email/activity/MessageView;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v3, v4}, Lcom/android/email/Controller;->isMessagingController(Lcom/android/email/provider/EmailContent$Account;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2364
    :cond_0
    const/4 v0, 0x0

    .line 2369
    :goto_0
    iget-object v3, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    iget-wide v3, v3, Lcom/android/email/provider/EmailContent$Message;->mMailboxKey:J

    invoke-static {p0, v3, v4}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v1

    .line 2371
    .local v1, mb:Lcom/android/email/provider/EmailContent$Mailbox;
    if-nez v0, :cond_4

    .line 2372
    iget v3, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1

    iget v3, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    const/4 v4, 0x6

    if-eq v3, v4, :cond_1

    iget v3, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_5

    .line 2375
    :cond_1
    iget-object v3, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    iget-wide v3, v3, Lcom/android/email/provider/EmailContent$Message;->mId:J

    invoke-static {p0, v3, v4, v5}, Lcom/android/email/activity/MessageCompose;->actionForward(Landroid/content/Context;JZ)V

    .line 2376
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->finish()V

    .line 2425
    .end local v0           #isExchange:Z
    .end local v1           #mb:Lcom/android/email/provider/EmailContent$Mailbox;
    :cond_2
    :goto_1
    return-void

    .line 2366
    .restart local v0       #isExchange:Z
    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    .line 2382
    .restart local v1       #mb:Lcom/android/email/provider/EmailContent$Mailbox;
    :cond_4
    iget-object v3, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    iget-wide v3, v3, Lcom/android/email/provider/EmailContent$Message;->mId:J

    invoke-static {p0, v3, v4, v5}, Lcom/android/email/activity/MessageCompose;->actionForward(Landroid/content/Context;JZ)V

    .line 2383
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->finish()V

    goto :goto_1

    .line 2390
    :cond_5
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 2392
    .local v2, sharedPref:Landroid/content/SharedPreferences;
    const-string v3, "forward_with_files"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_6

    .line 2393
    iget-object v3, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    iget-wide v3, v3, Lcom/android/email/provider/EmailContent$Message;->mId:J

    invoke-static {p0, v3, v4, v5}, Lcom/android/email/activity/MessageCompose;->actionForward(Landroid/content/Context;JZ)V

    .line 2394
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->finish()V

    goto :goto_1

    .line 2397
    :cond_6
    iget-object v3, p0, Lcom/android/email/activity/MessageView;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-nez v3, :cond_7

    .line 2398
    iget-object v3, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    iget-wide v3, v3, Lcom/android/email/provider/EmailContent$Message;->mId:J

    invoke-static {p0, v3, v4, v5}, Lcom/android/email/activity/MessageCompose;->actionForward(Landroid/content/Context;JZ)V

    .line 2399
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->finish()V

    goto :goto_1

    .line 2406
    :cond_7
    iget-object v3, p0, Lcom/android/email/activity/MessageView;->mForwardingDialog:Landroid/app/ProgressDialog;

    const v4, 0x7f080137

    invoke-virtual {p0, v4}, Lcom/android/email/activity/MessageView;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 2407
    iget-object v3, p0, Lcom/android/email/activity/MessageView;->mForwardingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->show()V

    .line 2408
    iget-object v3, p0, Lcom/android/email/activity/MessageView;->mForwardingDialog:Landroid/app/ProgressDialog;

    new-instance v4, Lcom/android/email/activity/MessageView$11;

    invoke-direct {v4, p0}, Lcom/android/email/activity/MessageView$11;-><init>(Lcom/android/email/activity/MessageView;)V

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 2416
    iput-boolean v5, p0, Lcom/android/email/activity/MessageView;->mForwarding:Z

    .line 2417
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/email/activity/MessageView;->mForwarded:Ljava/lang/Boolean;

    .line 2418
    iput-boolean v5, p0, Lcom/android/email/activity/MessageView;->bForwardToOld:Z

    .line 2420
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->saveAttachmentsTemporarily()V

    goto :goto_1
.end method

.method private onMarkAsRead(Z)V
    .locals 3
    .parameter "isRead"

    .prologue
    .line 2522
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    iget-boolean v0, v0, Lcom/android/email/provider/EmailContent$Message;->mFlagRead:Z

    if-eq v0, p1, :cond_0

    .line 2523
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    iput-boolean p1, v0, Lcom/android/email/provider/EmailContent$Message;->mFlagRead:Z

    .line 2524
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mController:Lcom/android/email/Controller;

    iget-wide v1, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/email/Controller;->setMessageRead(JZ)V

    .line 2526
    :cond_0
    return-void
.end method

.method private onMoreMessage()V
    .locals 3

    .prologue
    .line 2278
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    if-eqz v0, :cond_0

    .line 2279
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mController:Lcom/android/email/Controller;

    iget-object v1, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    iget-wide v1, v1, Lcom/android/email/provider/EmailContent$Message;->mId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/email/Controller;->loadMore(J)V

    .line 2280
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->loadMoreMessage:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 2282
    :cond_0
    return-void
.end method

.method private onMove(JJ)V
    .locals 11
    .parameter "accountKey"
    .parameter "mailboxId"

    .prologue
    .line 1897
    iget-wide v2, p0, Lcom/android/email/activity/MessageView;->mMailboxId:J

    invoke-static {p0, v2, v3}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v8

    .line 1898
    .local v8, mailbox:Lcom/android/email/provider/EmailContent$Mailbox;
    iget-wide v2, v8, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    cmp-long v0, v2, p1

    if-nez v0, :cond_0

    iget-wide v2, p0, Lcom/android/email/activity/MessageView;->mMailboxId:J

    cmp-long v0, v2, p3

    if-eqz v0, :cond_0

    .line 1900
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1901
    .local v1, cloneSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    iget-wide v2, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1902
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mController:Lcom/android/email/Controller;

    iget-wide v6, p0, Lcom/android/email/activity/MessageView;->mMailboxId:J

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v7}, Lcom/android/email/Controller;->moveMessage(Ljava/util/HashSet;JJJ)Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 1904
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

    .end local v1           #cloneSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 1907
    .local v10, reportString:Ljava/lang/String;
    const/4 v0, 0x0

    invoke-static {p0, v10, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1908
    sget-object p1, Lcom/android/email/activity/MessageView;->mContext:Landroid/content/Context;

    .end local p1
    check-cast p1, Lcom/android/email/activity/MessageList;

    iget-wide v2, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/email/activity/MessageList;->removeMessage(Ljava/lang/Long;)V

    .line 1910
    iget-boolean v0, p0, Lcom/android/email/activity/MessageView;->mLogView:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1911
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->finish()V

    .line 1929
    .end local v10           #reportString:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1915
    .restart local v10       #reportString:Ljava/lang/String;
    :cond_1
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->onPrevious()Z

    move-result v9

    .line 1917
    .local v9, moved:Z
    if-nez v9, :cond_0

    .line 1920
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->finish()V

    goto :goto_0

    .line 1926
    .end local v9           #moved:Z
    .end local v10           #reportString:Ljava/lang/String;
    .restart local v1       #cloneSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    .restart local p1
    :cond_2
    const v0, 0x7f08015f

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .end local v1           #cloneSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private onMovePopup()V
    .locals 35

    .prologue
    .line 1677
    move-object/from16 v22, p0

    .line 1678
    .local v22, context:Landroid/content/Context;
    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1679
    .local v3, resolver:Landroid/content/ContentResolver;
    const-string v6, "accountKey=? AND type<64 AND flagVisible=1"

    .line 1683
    .local v6, MAILBOX_SELECTION:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/activity/MessageView;->mMailboxId:J

    move-wide v4, v0

    move-object/from16 v0, p0

    move-wide v1, v4

    invoke-static {v0, v1, v2}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v29

    .line 1684
    .local v29, mailbox:Lcom/android/email/provider/EmailContent$Mailbox;
    if-nez v29, :cond_1

    .line 1685
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MessageView;->finish()V

    .line 1811
    .end local v6           #MAILBOX_SELECTION:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1690
    .restart local v6       #MAILBOX_SELECTION:Ljava/lang/String;
    :cond_1
    const/16 v27, 0x0

    .line 1691
    .local v27, mailBoxCnt:I
    const/16 v32, 0x0

    .line 1693
    .local v32, tempTypeInCurrentAccount:[Lcom/android/email/activity/MessageView$MailBoxType;
    :try_start_0
    sget-object v4, Lcom/android/email/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "_id"

    aput-object v8, v5, v7

    const/4 v7, 0x1

    const-string v8, "displayName"

    aput-object v8, v5, v7

    const/4 v7, 0x2

    const-string v8, "type"

    aput-object v8, v5, v7

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    move-object/from16 v0, v29

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    move-wide v9, v0

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const-string v8, "type,displayName"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v23

    .line 1701
    .local v23, cursor:Landroid/database/Cursor;
    if-eqz v23, :cond_0

    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    if-lez v4, :cond_0

    .line 1706
    const/4 v4, -0x1

    :try_start_1
    move-object/from16 v0, v23

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1707
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    move v0, v4

    new-array v0, v0, [Lcom/android/email/activity/MessageView$MailBoxType;

    move-object/from16 v32, v0
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1708
    add-int/lit8 v28, v27, 0x1

    .end local v27           #mailBoxCnt:I
    .local v28, mailBoxCnt:I
    :try_start_2
    new-instance v7, Lcom/android/email/activity/MessageView$MailBoxType;

    const-wide/16 v9, -0x1

    const-wide/16 v11, -0x1

    const v4, 0x7f080153

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageView;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v13}, Lcom/android/email/activity/MessageView$MailBoxType;-><init>(Lcom/android/email/activity/MessageView;JJLjava/lang/String;)V

    aput-object v7, v32, v27

    .line 1709
    .end local v6           #MAILBOX_SELECTION:Ljava/lang/String;
    :goto_1
    :pswitch_0
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1710
    invoke-static/range {p0 .. p0}, Lcom/android/email/Utility$FolderProperties;->getInstance(Landroid/content/Context;)Lcom/android/email/Utility$FolderProperties;

    move-result-object v4

    const/4 v5, 0x2

    move-object/from16 v0, v23

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/email/Utility$FolderProperties;->getDisplayName(I)Ljava/lang/String;

    move-result-object v13

    .line 1711
    .local v13, text:Ljava/lang/String;
    if-nez v13, :cond_2

    .line 1712
    const/4 v4, 0x1

    move-object/from16 v0, v23

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 1714
    :cond_2
    const/4 v4, 0x2

    move-object/from16 v0, v23

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 1724
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/activity/MessageView;->mMailboxId:J

    move-wide v4, v0

    const/4 v6, 0x0

    move-object/from16 v0, v23

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_a

    .line 1726
    add-int/lit8 v27, v28, 0x1

    .end local v28           #mailBoxCnt:I
    .restart local v27       #mailBoxCnt:I
    :try_start_3
    new-instance v7, Lcom/android/email/activity/MessageView$MailBoxType;

    move-object/from16 v0, v29

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    move-wide v9, v0

    const/4 v4, 0x0

    move-object/from16 v0, v23

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v13}, Lcom/android/email/activity/MessageView$MailBoxType;-><init>(Lcom/android/email/activity/MessageView;JJLjava/lang/String;)V

    aput-object v7, v32, v28
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :goto_2
    move/from16 v28, v27

    .line 1729
    .end local v27           #mailBoxCnt:I
    .restart local v28       #mailBoxCnt:I
    goto :goto_1

    .line 1730
    .end local v13           #text:Ljava/lang/String;
    .end local v28           #mailBoxCnt:I
    .restart local v27       #mailBoxCnt:I
    :catch_0
    move-exception v4

    move-object/from16 v26, v4

    .line 1731
    .local v26, ise:Ljava/lang/IllegalStateException;
    :goto_3
    :try_start_4
    const-string v4, "View >>"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IllegalStateException >>> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 1732
    invoke-virtual/range {v26 .. v26}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 1737
    .end local v23           #cursor:Landroid/database/Cursor;
    .end local v26           #ise:Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v4

    move-object/from16 v24, v4

    .line 1738
    .local v24, e:Ljava/lang/Exception;
    :goto_4
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 1735
    .end local v24           #e:Ljava/lang/Exception;
    .end local v27           #mailBoxCnt:I
    .restart local v23       #cursor:Landroid/database/Cursor;
    .restart local v28       #mailBoxCnt:I
    :cond_3
    :try_start_5
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    .line 1742
    const/16 v30, 0x0

    .line 1743
    .local v30, otherAccountsCnt:I
    const/16 v33, 0x0

    .line 1745
    .local v33, tempTypeInOtherAccounts:[Lcom/android/email/activity/MessageView$MailBoxType;
    :try_start_6
    sget-object v8, Lcom/android/email/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x2

    new-array v9, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v9, v4

    const/4 v4, 0x1

    const-string v5, "displayName"

    aput-object v5, v9, v4

    const-string v10, "_id!=?"

    const/4 v4, 0x1

    new-array v11, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v0, v29

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    move-wide v5, v0

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v11, v4

    const/4 v12, 0x0

    move-object v7, v3

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v23

    .line 1747
    if-eqz v23, :cond_6

    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->getCount()I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    move-result v4

    if-lez v4, :cond_6

    .line 1749
    const/4 v4, -0x1

    :try_start_7
    move-object/from16 v0, v23

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1750
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    move v0, v4

    new-array v0, v0, [Lcom/android/email/activity/MessageView$MailBoxType;

    move-object/from16 v33, v0
    :try_end_7
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 1751
    add-int/lit8 v31, v30, 0x1

    .end local v30           #otherAccountsCnt:I
    .local v31, otherAccountsCnt:I
    :try_start_8
    new-instance v14, Lcom/android/email/activity/MessageView$MailBoxType;

    const-wide/16 v16, -0x1

    const-wide/16 v18, -0x1

    const v4, 0x7f080154

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageView;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v15, p0

    invoke-direct/range {v14 .. v20}, Lcom/android/email/activity/MessageView$MailBoxType;-><init>(Lcom/android/email/activity/MessageView;JJLjava/lang/String;)V

    aput-object v14, v33, v30

    .line 1752
    :cond_4
    :goto_5
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1753
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mController:Lcom/android/email/Controller;

    move-object v4, v0

    const/4 v5, 0x0

    move-object/from16 v0, v23

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/android/email/Controller;->returnAccountType(J)I
    :try_end_8
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_4

    .line 1755
    add-int/lit8 v30, v31, 0x1

    .end local v31           #otherAccountsCnt:I
    .restart local v30       #otherAccountsCnt:I
    :try_start_9
    new-instance v14, Lcom/android/email/activity/MessageView$MailBoxType;

    const/4 v4, 0x0

    move-object/from16 v0, v23

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    const-wide/16 v18, -0x1

    const/4 v4, 0x1

    move-object/from16 v0, v23

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v15, p0

    invoke-direct/range {v14 .. v20}, Lcom/android/email/activity/MessageView$MailBoxType;-><init>(Lcom/android/email/activity/MessageView;JJLjava/lang/String;)V

    aput-object v14, v33, v31
    :try_end_9
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    move/from16 v31, v30

    .end local v30           #otherAccountsCnt:I
    .restart local v31       #otherAccountsCnt:I
    goto :goto_5

    :cond_5
    move/from16 v30, v31

    .line 1762
    .end local v31           #otherAccountsCnt:I
    .restart local v30       #otherAccountsCnt:I
    :goto_6
    :try_start_a
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    .line 1768
    :cond_6
    :goto_7
    const/4 v4, 0x1

    move/from16 v0, v30

    move v1, v4

    if-ne v0, v1, :cond_7

    .line 1770
    const/16 v30, 0x0

    .line 1773
    :cond_7
    add-int v4, v28, v30

    move v0, v4

    new-array v0, v0, [Lcom/android/email/activity/MessageView$MailBoxType;

    move-object/from16 v34, v0

    .line 1775
    .local v34, viewType:[Lcom/android/email/activity/MessageView$MailBoxType;
    const/16 v25, 0x0

    .local v25, i:I
    :goto_8
    move/from16 v0, v25

    move/from16 v1, v28

    if-ge v0, v1, :cond_8

    .line 1776
    aget-object v4, v32, v25

    aput-object v4, v34, v25

    .line 1775
    add-int/lit8 v25, v25, 0x1

    goto :goto_8

    .line 1758
    .end local v25           #i:I
    .end local v34           #viewType:[Lcom/android/email/activity/MessageView$MailBoxType;
    :catch_2
    move-exception v4

    move-object/from16 v26, v4

    .line 1759
    .restart local v26       #ise:Ljava/lang/IllegalStateException;
    :goto_9
    :try_start_b
    const-string v4, "View >>"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IllegalStateException >>> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 1760
    invoke-virtual/range {v26 .. v26}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    goto :goto_6

    .line 1764
    .end local v26           #ise:Ljava/lang/IllegalStateException;
    :catch_3
    move-exception v4

    move-object/from16 v24, v4

    .line 1765
    .restart local v24       #e:Ljava/lang/Exception;
    :goto_a
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    .line 1778
    .end local v24           #e:Ljava/lang/Exception;
    .restart local v25       #i:I
    .restart local v34       #viewType:[Lcom/android/email/activity/MessageView$MailBoxType;
    :cond_8
    const/16 v25, 0x0

    :goto_b
    move/from16 v0, v25

    move/from16 v1, v30

    if-ge v0, v1, :cond_9

    .line 1779
    add-int v4, v28, v25

    aget-object v5, v33, v25

    aput-object v5, v34, v4

    .line 1778
    add-int/lit8 v25, v25, 0x1

    goto :goto_b

    .line 1782
    :cond_9
    new-instance v4, Lcom/android/email/activity/MessageView$MailBoxAdapter;

    move-object v0, v4

    move-object/from16 v1, p0

    move-object/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lcom/android/email/activity/MessageView$MailBoxAdapter;-><init>(Landroid/content/Context;[Lcom/android/email/activity/MessageView$MailBoxType;)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/MessageView;->mMoveListAdapter:Lcom/android/email/activity/MessageView$MailBoxAdapter;

    .line 1784
    new-instance v21, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1787
    .local v21, builder:Landroid/app/AlertDialog$Builder;
    const v4, 0x7f080152

    move-object/from16 v0, v21

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1788
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mMoveListAdapter:Lcom/android/email/activity/MessageView$MailBoxAdapter;

    move-object v4, v0

    new-instance v5, Lcom/android/email/activity/MessageView$8;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/email/activity/MessageView$8;-><init>(Lcom/android/email/activity/MessageView;)V

    move-object/from16 v0, v21

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1810
    invoke-virtual/range {v21 .. v21}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 1764
    .end local v21           #builder:Landroid/app/AlertDialog$Builder;
    .end local v25           #i:I
    .end local v30           #otherAccountsCnt:I
    .end local v34           #viewType:[Lcom/android/email/activity/MessageView$MailBoxType;
    .restart local v31       #otherAccountsCnt:I
    :catch_4
    move-exception v4

    move-object/from16 v24, v4

    move/from16 v30, v31

    .end local v31           #otherAccountsCnt:I
    .restart local v30       #otherAccountsCnt:I
    goto :goto_a

    .line 1758
    .end local v30           #otherAccountsCnt:I
    .restart local v31       #otherAccountsCnt:I
    :catch_5
    move-exception v4

    move-object/from16 v26, v4

    move/from16 v30, v31

    .end local v31           #otherAccountsCnt:I
    .restart local v30       #otherAccountsCnt:I
    goto :goto_9

    .line 1737
    .end local v30           #otherAccountsCnt:I
    .end local v33           #tempTypeInOtherAccounts:[Lcom/android/email/activity/MessageView$MailBoxType;
    :catch_6
    move-exception v4

    move-object/from16 v24, v4

    move/from16 v27, v28

    .end local v28           #mailBoxCnt:I
    .restart local v27       #mailBoxCnt:I
    goto/16 :goto_4

    .line 1730
    .end local v27           #mailBoxCnt:I
    .restart local v28       #mailBoxCnt:I
    :catch_7
    move-exception v4

    move-object/from16 v26, v4

    move/from16 v27, v28

    .end local v28           #mailBoxCnt:I
    .restart local v27       #mailBoxCnt:I
    goto/16 :goto_3

    .end local v27           #mailBoxCnt:I
    .restart local v13       #text:Ljava/lang/String;
    .restart local v28       #mailBoxCnt:I
    :cond_a
    move/from16 v27, v28

    .end local v28           #mailBoxCnt:I
    .restart local v27       #mailBoxCnt:I
    goto/16 :goto_2

    .line 1714
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private onMovePopupToOtherAccount(JLjava/lang/String;)V
    .locals 24
    .parameter "accountKey"
    .parameter "name"

    .prologue
    .line 1814
    move-object/from16 v15, p0

    .line 1815
    .local v15, context:Landroid/content/Context;
    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1816
    .local v3, resolver:Landroid/content/ContentResolver;
    const-string v6, "accountKey=? AND type<64 AND flagVisible=1"

    .line 1820
    .local v6, MAILBOX_SELECTION:Ljava/lang/String;
    const/16 v20, 0x0

    .line 1821
    .local v20, mailBoxCnt:I
    const/16 v22, 0x0

    .line 1824
    .local v22, tempTypeInOtherAccounts:[Lcom/android/email/activity/MessageView$MailBoxType;
    :try_start_0
    sget-object v4, Lcom/android/email/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "_id"

    aput-object v8, v5, v7

    const/4 v7, 0x1

    const-string v8, "displayName"

    aput-object v8, v5, v7

    const/4 v7, 0x2

    const-string v8, "type"

    aput-object v8, v5, v7

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const-string v8, "type,displayName"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 1832
    .local v16, cursor:Landroid/database/Cursor;
    if-eqz v16, :cond_0

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    if-gtz v4, :cond_1

    .line 1894
    .end local v6           #MAILBOX_SELECTION:Ljava/lang/String;
    .end local v16           #cursor:Landroid/database/Cursor;
    :cond_0
    :goto_0
    return-void

    .line 1837
    .restart local v6       #MAILBOX_SELECTION:Ljava/lang/String;
    .restart local v16       #cursor:Landroid/database/Cursor;
    :cond_1
    const/4 v4, -0x1

    :try_start_1
    move-object/from16 v0, v16

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1838
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v4

    move v0, v4

    new-array v0, v0, [Lcom/android/email/activity/MessageView$MailBoxType;

    move-object/from16 v22, v0
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move/from16 v21, v20

    .line 1839
    .end local v20           #mailBoxCnt:I
    .local v21, mailBoxCnt:I
    :goto_1
    :pswitch_0
    :try_start_2
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1840
    invoke-static/range {p0 .. p0}, Lcom/android/email/Utility$FolderProperties;->getInstance(Landroid/content/Context;)Lcom/android/email/Utility$FolderProperties;

    move-result-object v4

    const/4 v5, 0x2

    move-object/from16 v0, v16

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/email/Utility$FolderProperties;->getDisplayName(I)Ljava/lang/String;

    move-result-object v13

    .line 1841
    .local v13, text:Ljava/lang/String;
    if-nez v13, :cond_2

    .line 1842
    const/4 v4, 0x1

    move-object/from16 v0, v16

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 1844
    :cond_2
    const/4 v4, 0x2

    move-object/from16 v0, v16

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 1854
    add-int/lit8 v20, v21, 0x1

    .end local v21           #mailBoxCnt:I
    .restart local v20       #mailBoxCnt:I
    :try_start_3
    new-instance v7, Lcom/android/email/activity/MessageView$MailBoxType;

    const/4 v4, 0x0

    move-object/from16 v0, v16

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    move-object/from16 v8, p0

    move-wide/from16 v9, p1

    invoke-direct/range {v7 .. v13}, Lcom/android/email/activity/MessageView$MailBoxType;-><init>(Lcom/android/email/activity/MessageView;JJLjava/lang/String;)V

    aput-object v7, v22, v21
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move/from16 v21, v20

    .line 1856
    .end local v20           #mailBoxCnt:I
    .restart local v21       #mailBoxCnt:I
    goto :goto_1

    .line 1857
    .end local v13           #text:Ljava/lang/String;
    .end local v21           #mailBoxCnt:I
    .restart local v20       #mailBoxCnt:I
    :catch_0
    move-exception v4

    move-object/from16 v19, v4

    .line 1858
    .local v19, ise:Ljava/lang/IllegalStateException;
    :goto_2
    :try_start_4
    const-string v4, "View >>"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IllegalStateException >>> "

    .end local v6           #MAILBOX_SELECTION:Ljava/lang/String;
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 1859
    invoke-virtual/range {v19 .. v19}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 1864
    .end local v16           #cursor:Landroid/database/Cursor;
    .end local v19           #ise:Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v4

    move-object/from16 v17, v4

    .line 1865
    .local v17, e:Ljava/lang/Exception;
    :goto_3
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 1862
    .end local v17           #e:Ljava/lang/Exception;
    .end local v20           #mailBoxCnt:I
    .restart local v6       #MAILBOX_SELECTION:Ljava/lang/String;
    .restart local v16       #cursor:Landroid/database/Cursor;
    .restart local v21       #mailBoxCnt:I
    :cond_3
    :try_start_5
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 1869
    move/from16 v0, v21

    new-array v0, v0, [Lcom/android/email/activity/MessageView$MailBoxType;

    move-object/from16 v23, v0

    .line 1871
    .local v23, viewType:[Lcom/android/email/activity/MessageView$MailBoxType;
    const/16 v18, 0x0

    .local v18, i:I
    :goto_4
    move/from16 v0, v18

    move/from16 v1, v21

    if-ge v0, v1, :cond_4

    .line 1872
    aget-object v4, v22, v18

    aput-object v4, v23, v18

    .line 1871
    add-int/lit8 v18, v18, 0x1

    goto :goto_4

    .line 1874
    :cond_4
    new-instance v4, Lcom/android/email/activity/MessageView$MailBoxAdapter;

    move-object v0, v4

    move-object/from16 v1, p0

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/email/activity/MessageView$MailBoxAdapter;-><init>(Landroid/content/Context;[Lcom/android/email/activity/MessageView$MailBoxType;)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/MessageView;->mMoveListToOtherAccountAdapter:Lcom/android/email/activity/MessageView$MailBoxAdapter;

    .line 1876
    new-instance v14, Landroid/app/AlertDialog$Builder;

    move-object v0, v14

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1878
    .local v14, builder:Landroid/app/AlertDialog$Builder;
    move-object v0, v14

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1879
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mMoveListToOtherAccountAdapter:Lcom/android/email/activity/MessageView$MailBoxAdapter;

    move-object v4, v0

    new-instance v5, Lcom/android/email/activity/MessageView$9;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/email/activity/MessageView$9;-><init>(Lcom/android/email/activity/MessageView;)V

    invoke-virtual {v14, v4, v5}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1893
    invoke-virtual {v14}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move/from16 v20, v21

    .line 1894
    .end local v21           #mailBoxCnt:I
    .restart local v20       #mailBoxCnt:I
    goto/16 :goto_0

    .line 1864
    .end local v14           #builder:Landroid/app/AlertDialog$Builder;
    .end local v18           #i:I
    .end local v20           #mailBoxCnt:I
    .end local v23           #viewType:[Lcom/android/email/activity/MessageView$MailBoxType;
    .restart local v21       #mailBoxCnt:I
    :catch_2
    move-exception v4

    move-object/from16 v17, v4

    move/from16 v20, v21

    .end local v21           #mailBoxCnt:I
    .restart local v20       #mailBoxCnt:I
    goto :goto_3

    .line 1857
    .end local v20           #mailBoxCnt:I
    .restart local v21       #mailBoxCnt:I
    :catch_3
    move-exception v4

    move-object/from16 v19, v4

    move/from16 v20, v21

    .end local v21           #mailBoxCnt:I
    .restart local v20       #mailBoxCnt:I
    goto :goto_2

    .line 1844
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private onMultiMoveOtherAccount(JJ)V
    .locals 12
    .parameter "accountKey"
    .parameter "mailboxId"

    .prologue
    .line 1932
    iget-wide v2, p0, Lcom/android/email/activity/MessageView;->mMailboxId:J

    invoke-static {p0, v2, v3}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v10

    .line 1933
    .local v10, mailbox:Lcom/android/email/provider/EmailContent$Mailbox;
    iget-wide v2, v10, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    cmp-long v0, v2, p1

    if-eqz v0, :cond_0

    iget-wide v2, p0, Lcom/android/email/activity/MessageView;->mMailboxId:J

    cmp-long v0, v2, p3

    if-eqz v0, :cond_0

    .line 1935
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1936
    .local v1, cloneSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    iget-wide v2, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1937
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mController:Lcom/android/email/Controller;

    iget-wide v2, v10, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    iget-wide v4, p0, Lcom/android/email/activity/MessageView;->mMailboxId:J

    move-wide v6, p1

    move-wide v8, p3

    invoke-virtual/range {v0 .. v9}, Lcom/android/email/Controller;->moveMessageToOtherAccountFolder(Ljava/util/HashSet;JJJJ)Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 1939
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

    .end local v1           #cloneSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 1942
    .local v11, reportString:Ljava/lang/String;
    const/4 v0, 0x0

    invoke-static {p0, v11, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1943
    sget-object p1, Lcom/android/email/activity/MessageView;->mContext:Landroid/content/Context;

    .end local p1
    check-cast p1, Lcom/android/email/activity/MessageList;

    iget-wide v2, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/email/activity/MessageList;->removeMessage(Ljava/lang/Long;)V

    .line 1950
    .end local v11           #reportString:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1947
    .restart local v1       #cloneSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    .restart local p1
    :cond_1
    const v0, 0x7f08015f

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .end local v1           #cloneSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private onNext()Z
    .locals 11

    .prologue
    const v10, 0x7f040005

    const v9, 0x7f040004

    const/4 v5, 0x0

    const/4 v8, 0x1

    const-string v4, "View >>"

    .line 2431
    sget v0, Lcom/android/email/activity/MessageList;->mViewModeType:I

    sget v1, Lcom/android/email/activity/MessageList;->VIEW_MODE_CONVERSATION:I

    if-ne v0, v1, :cond_1

    .line 2432
    sget v7, Lcom/android/email/activity/MessageList;->mPositionOfSelectedMessage:I

    .line 2434
    .local v7, position:I
    const-string v0, "View >>"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNext(): position = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 2435
    const-string v0, "View >>"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNext(): MessageList.mTotalListCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/email/activity/MessageList;->mTotalListCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 2437
    sget v0, Lcom/android/email/activity/MessageList;->mTotalListCount:I

    sub-int/2addr v0, v8

    if-ge v7, v0, :cond_2

    .line 2439
    add-int/lit8 v7, v7, 0x1

    .line 2441
    sget-object v0, Lcom/android/email/activity/MessageList;->mMessageIdArray4ThreadList:[I

    aget v0, v0, v7

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    add-int/lit8 v7, v7, 0x1

    .line 2443
    :cond_0
    sget-object v0, Lcom/android/email/activity/MessageList;->mMessageIdArray4ThreadList:[I

    aget v0, v0, v7

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    .line 2445
    iget-wide v0, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    const-wide/16 v2, -0x2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 2447
    const-string v0, "View >>"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNext(): mMessageId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 2449
    sput v7, Lcom/android/email/activity/MessageList;->mPositionOfSelectedMessage:I

    .line 2451
    sget-object v0, Lcom/android/email/activity/MessageView;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    iget-wide v3, p0, Lcom/android/email/activity/MessageView;->mMailboxId:J

    iget v5, p0, Lcom/android/email/activity/MessageView;->mDisplayMode:I

    sget v6, Lcom/android/email/activity/MessageView;->mTextSize:I

    invoke-static/range {v0 .. v6}, Lcom/android/email/activity/MessageView;->actionView(Landroid/content/Context;JJII)V

    .line 2452
    invoke-virtual {p0, v9, v10}, Lcom/android/email/activity/MessageView;->overridePendingTransition(II)V

    .line 2453
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->finish()V

    move v0, v8

    .line 2472
    .end local v7           #position:I
    :goto_0
    return v0

    .line 2460
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mPrevNextCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mPrevNextCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2461
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mPrevNextCursor:Landroid/database/Cursor;

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    .line 2463
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->messageChanged()V

    .line 2465
    invoke-virtual {p0, v9, v10}, Lcom/android/email/activity/MessageView;->overridePendingTransition(II)V

    move v0, v8

    .line 2468
    goto :goto_0

    :cond_2
    move v0, v5

    .line 2472
    goto :goto_0
.end method

.method private onPrevious()Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    const-string v4, "View >>"

    .line 2477
    sget v0, Lcom/android/email/activity/MessageList;->mViewModeType:I

    sget v1, Lcom/android/email/activity/MessageList;->VIEW_MODE_CONVERSATION:I

    if-ne v0, v1, :cond_1

    .line 2478
    sget v7, Lcom/android/email/activity/MessageList;->mPositionOfSelectedMessage:I

    .line 2480
    .local v7, position:I
    const-string v0, "View >>"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNext(): position = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 2481
    const-string v0, "View >>"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNext(): MessageList.mTotalListCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/email/activity/MessageList;->mTotalListCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 2483
    if-lez v7, :cond_2

    .line 2485
    add-int/lit8 v7, v7, -0x1

    .line 2487
    sget-object v0, Lcom/android/email/activity/MessageList;->mMessageIdArray4ThreadList:[I

    aget v0, v0, v7

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    add-int/lit8 v7, v7, -0x1

    .line 2488
    :cond_0
    sget-object v0, Lcom/android/email/activity/MessageList;->mMessageIdArray4ThreadList:[I

    aget v0, v0, v7

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    .line 2490
    iget-wide v0, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    const-wide/16 v2, -0x2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 2492
    const-string v0, "View >>"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNext(): mMessageId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 2494
    sput v7, Lcom/android/email/activity/MessageList;->mPositionOfSelectedMessage:I

    .line 2496
    sget-object v0, Lcom/android/email/activity/MessageView;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    iget-wide v3, p0, Lcom/android/email/activity/MessageView;->mMailboxId:J

    iget v5, p0, Lcom/android/email/activity/MessageView;->mDisplayMode:I

    sget v6, Lcom/android/email/activity/MessageView;->mTextSize:I

    invoke-static/range {v0 .. v6}, Lcom/android/email/activity/MessageView;->actionView(Landroid/content/Context;JJII)V

    .line 2497
    const v0, 0x7f040004

    const v1, 0x7f040005

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/MessageView;->overridePendingTransition(II)V

    .line 2498
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->finish()V

    move v0, v8

    .line 2518
    .end local v7           #position:I
    :goto_0
    return v0

    .line 2506
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mPrevNextCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mPrevNextCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    if-lez v0, :cond_2

    .line 2507
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mPrevNextCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToPrevious()Z

    .line 2508
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mPrevNextCursor:Landroid/database/Cursor;

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    .line 2510
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->messageChanged()V

    .line 2512
    const v0, 0x7f040006

    const v1, 0x7f040007

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/MessageView;->overridePendingTransition(II)V

    move v0, v8

    .line 2515
    goto :goto_0

    :cond_2
    move v0, v5

    .line 2518
    goto :goto_0
.end method

.method private onReceiverList()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 1617
    const/4 v6, 0x0

    .line 1618
    .local v6, viewType:[Lcom/android/email/activity/MessageView$ReceiverViewType;
    const/4 v4, 0x0

    .line 1619
    .local v4, toNumber:I
    const/4 v1, 0x0

    .line 1620
    .local v1, ccNumber:I
    const/4 v5, 0x0

    .line 1621
    .local v5, totalNumber:I
    const/4 v2, 0x0

    .line 1623
    .local v2, index:I
    iget-object v7, p0, Lcom/android/email/activity/MessageView;->mListTos:[Ljava/lang/String;

    if-eqz v7, :cond_0

    .line 1624
    iget-object v7, p0, Lcom/android/email/activity/MessageView;->mListTos:[Ljava/lang/String;

    array-length v4, v7

    .line 1626
    :cond_0
    iget-object v7, p0, Lcom/android/email/activity/MessageView;->mListCcs:[Ljava/lang/String;

    if-eqz v7, :cond_1

    .line 1627
    iget-object v7, p0, Lcom/android/email/activity/MessageView;->mListCcs:[Ljava/lang/String;

    array-length v1, v7

    .line 1629
    :cond_1
    if-lez v4, :cond_2

    .line 1630
    add-int/lit8 v5, v4, 0x1

    .line 1632
    :cond_2
    if-lez v1, :cond_3

    .line 1633
    add-int/lit8 v7, v1, 0x1

    add-int/2addr v5, v7

    .line 1635
    :cond_3
    new-array v6, v5, [Lcom/android/email/activity/MessageView$ReceiverViewType;

    .line 1637
    if-lez v4, :cond_5

    .line 1638
    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v7, v4, 0x1

    if-ge v2, v7, :cond_5

    .line 1640
    if-nez v2, :cond_4

    .line 1641
    new-instance v7, Lcom/android/email/activity/MessageView$ReceiverViewType;

    const v8, 0x7f080054

    invoke-virtual {p0, v8}, Lcom/android/email/activity/MessageView;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, p0, v8, v11}, Lcom/android/email/activity/MessageView$ReceiverViewType;-><init>(Lcom/android/email/activity/MessageView;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v7, v6, v2

    .line 1638
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1643
    :cond_4
    new-instance v7, Lcom/android/email/activity/MessageView$ReceiverViewType;

    iget-object v8, p0, Lcom/android/email/activity/MessageView;->mListTos:[Ljava/lang/String;

    sub-int v9, v2, v12

    aget-object v8, v8, v9

    invoke-direct {v7, p0, v11, v8}, Lcom/android/email/activity/MessageView$ReceiverViewType;-><init>(Lcom/android/email/activity/MessageView;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v7, v6, v2

    goto :goto_1

    .line 1647
    :cond_5
    if-lez v1, :cond_8

    .line 1649
    if-eqz v4, :cond_6

    add-int/lit8 v7, v4, 0x1

    move v3, v7

    .line 1650
    .local v3, startCcIndex:I
    :goto_2
    const/4 v2, 0x0

    :goto_3
    add-int/lit8 v7, v1, 0x1

    if-ge v2, v7, :cond_8

    .line 1652
    if-nez v2, :cond_7

    .line 1653
    add-int v7, v2, v3

    new-instance v8, Lcom/android/email/activity/MessageView$ReceiverViewType;

    const v9, 0x7f080055

    invoke-virtual {p0, v9}, Lcom/android/email/activity/MessageView;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, p0, v9, v11}, Lcom/android/email/activity/MessageView$ReceiverViewType;-><init>(Lcom/android/email/activity/MessageView;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v8, v6, v7

    .line 1650
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1649
    .end local v3           #startCcIndex:I
    :cond_6
    const/4 v7, 0x0

    move v3, v7

    goto :goto_2

    .line 1655
    .restart local v3       #startCcIndex:I
    :cond_7
    add-int v7, v2, v3

    new-instance v8, Lcom/android/email/activity/MessageView$ReceiverViewType;

    iget-object v9, p0, Lcom/android/email/activity/MessageView;->mListCcs:[Ljava/lang/String;

    sub-int v10, v2, v12

    aget-object v9, v9, v10

    invoke-direct {v8, p0, v11, v9}, Lcom/android/email/activity/MessageView$ReceiverViewType;-><init>(Lcom/android/email/activity/MessageView;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v8, v6, v7

    goto :goto_4

    .line 1659
    .end local v3           #startCcIndex:I
    :cond_8
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1660
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v7, 0x7f08015e

    invoke-virtual {p0, v7}, Lcom/android/email/activity/MessageView;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1662
    new-instance v7, Lcom/android/email/activity/MessageView$ReceiverListAdapter;

    invoke-direct {v7, p0, v6}, Lcom/android/email/activity/MessageView$ReceiverListAdapter;-><init>(Landroid/content/Context;[Lcom/android/email/activity/MessageView$ReceiverViewType;)V

    iput-object v7, p0, Lcom/android/email/activity/MessageView;->mReceiverListAdapter:Lcom/android/email/activity/MessageView$ReceiverListAdapter;

    .line 1664
    iget-object v7, p0, Lcom/android/email/activity/MessageView;->mReceiverListAdapter:Lcom/android/email/activity/MessageView$ReceiverListAdapter;

    new-instance v8, Lcom/android/email/activity/MessageView$7;

    invoke-direct {v8, p0}, Lcom/android/email/activity/MessageView$7;-><init>(Lcom/android/email/activity/MessageView;)V

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1670
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1672
    return-void
.end method

.method private onReply()V
    .locals 3

    .prologue
    .line 2262
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    if-eqz v0, :cond_0

    .line 2263
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Message;->mId:J

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/android/email/activity/MessageCompose;->actionReply(Landroid/content/Context;JZ)V

    .line 2264
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->finish()V

    .line 2266
    :cond_0
    return-void
.end method

.method private onReplyAll()V
    .locals 3

    .prologue
    .line 2269
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    if-eqz v0, :cond_0

    .line 2270
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Message;->mId:J

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Lcom/android/email/activity/MessageCompose;->actionReply(Landroid/content/Context;JZ)V

    .line 2271
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->finish()V

    .line 2273
    :cond_0
    return-void
.end method

.method private onRespond(II)V
    .locals 6
    .parameter "response"
    .parameter "toastResId"

    .prologue
    const/4 v5, 0x0

    .line 2617
    iget-wide v0, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    .line 2618
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

    .line 2619
    .local v2, moved:Z
    :goto_0
    iget v3, p0, Lcom/android/email/activity/MessageView;->mPreviousMeetingResponse:I

    if-eq v3, p1, :cond_1

    .line 2620
    iget-object v3, p0, Lcom/android/email/activity/MessageView;->mController:Lcom/android/email/Controller;

    iget-object v4, p0, Lcom/android/email/activity/MessageView;->mControllerCallback:Lcom/android/email/activity/MessageView$ControllerResults;

    invoke-virtual {v3, v0, v1, p1, v4}, Lcom/android/email/Controller;->sendMeetingResponse(JILcom/android/email/Controller$Result;)V

    .line 2621
    iput p1, p0, Lcom/android/email/activity/MessageView;->mPreviousMeetingResponse:I

    .line 2623
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/email/activity/MessageView;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 2624
    if-nez v2, :cond_2

    .line 2625
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->finish()V

    .line 2628
    :cond_2
    return-void

    .end local v2           #moved:Z
    :cond_3
    move v2, v5

    .line 2618
    goto :goto_0
.end method

.method private onRestore()V
    .locals 24

    .prologue
    .line 1539
    move-object/from16 v13, p0

    .line 1540
    .local v13, context:Landroid/content/Context;
    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 1543
    .local v5, resolver:Landroid/content/ContentResolver;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/activity/MessageView;->mAccountId:J

    move-wide v6, v0

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    .line 1545
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/activity/MessageView;->mMessageId:J

    move-wide v6, v0

    move-object/from16 v0, p0

    move-wide v1, v6

    invoke-direct {v0, v1, v2}, Lcom/android/email/activity/MessageView;->lookupAccountForMessage(J)J

    move-result-wide v6

    move-wide v0, v6

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/email/activity/MessageView;->mAccountId:J

    .line 1547
    :cond_0
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/activity/MessageView;->mAccountId:J

    move-wide v6, v0

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-nez v6, :cond_2

    .line 1612
    .end local v5           #resolver:Landroid/content/ContentResolver;
    :cond_1
    :goto_0
    return-void

    .line 1553
    .restart local v5       #resolver:Landroid/content/ContentResolver;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mController:Lcom/android/email/Controller;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/activity/MessageView;->mAccountId:J

    move-wide v7, v0

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/email/Controller;->findOrCreateMailboxOfType(JI)J

    move-result-wide v15

    .line 1556
    .local v15, inboxMailboxId:J
    const-wide/16 v19, -0x1

    .line 1557
    .local v19, sourceMailboxId:J
    sget-object v6, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v7, Lcom/android/email/activity/MessageView;->MESSAGEID_TO_MAILBOXID_PROJECTION:[Ljava/lang/String;

    const-string v8, "_id=?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/activity/MessageView;->mMessageId:J

    move-wide v11, v0

    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 1561
    .local v12, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_4

    sget v6, Lcom/android/email/activity/MessageView;->MESSAGEID_TO_MAILBOXID_COLUMN_MAILBOXID:I

    invoke-interface {v12, v6}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v6

    move-wide/from16 v19, v6

    .line 1565
    :goto_1
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1571
    sget-object v6, Lcom/android/email/provider/EmailContent$Message;->SYNCED_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/activity/MessageView;->mMessageId:J

    move-wide v7, v0

    invoke-static {v6, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v23

    .line 1575
    .local v23, uri:Landroid/net/Uri;
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 1576
    .local v14, cv:Landroid/content/ContentValues;
    const-string v6, "mailboxKey"

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v14, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1578
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v5

    move-object/from16 v1, v23

    move-object v2, v14

    move-object v3, v6

    move-object v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1580
    invoke-static {v13}, Lcom/android/email/MessagingController;->getInstance(Landroid/content/Context;)Lcom/android/email/MessagingController;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/MessageView;->mLegacyController:Lcom/android/email/MessagingController;

    .line 1583
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/activity/MessageView;->mAccountId:J

    move-wide v6, v0

    invoke-static {v13, v6, v7}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v11

    .line 1584
    .local v11, account:Lcom/android/email/provider/EmailContent$Account;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mController:Lcom/android/email/Controller;

    move-object v6, v0

    invoke-virtual {v6, v11}, Lcom/android/email/Controller;->isMessagingController(Lcom/android/email/provider/EmailContent$Account;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1585
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/activity/MessageView;->mAccountId:J

    move-wide/from16 v21, v0

    .line 1586
    .local v21, syncAccountId:J
    new-instance v6, Lcom/android/email/activity/MessageView$6;

    move-object v0, v6

    move-object/from16 v1, p0

    move-wide/from16 v2, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/android/email/activity/MessageView$6;-><init>(Lcom/android/email/activity/MessageView;J)V

    invoke-virtual {v6}, Lcom/android/email/activity/MessageView$6;->start()V

    .line 1594
    .end local v21           #syncAccountId:J
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0006

    const/4 v8, 0x1

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .end local v11           #account:Lcom/android/email/provider/EmailContent$Account;
    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    .line 1595
    .local v18, reportString:Ljava/lang/String;
    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move v2, v6

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 1597
    sget-object v5, Lcom/android/email/activity/MessageView;->mContext:Landroid/content/Context;

    .end local v5           #resolver:Landroid/content/ContentResolver;
    check-cast v5, Lcom/android/email/activity/MessageList;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/activity/MessageView;->mMessageId:J

    move-wide v6, v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/email/activity/MessageList;->removeMessage(Ljava/lang/Long;)V

    .line 1599
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/email/activity/MessageView;->mLogView:Z

    move v6, v0

    const/4 v7, 0x1

    if-ne v6, v7, :cond_5

    .line 1600
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MessageView;->finish()V

    goto/16 :goto_0

    .line 1561
    .end local v14           #cv:Landroid/content/ContentValues;
    .end local v18           #reportString:Ljava/lang/String;
    .end local v23           #uri:Landroid/net/Uri;
    .restart local v5       #resolver:Landroid/content/ContentResolver;
    :cond_4
    const-wide/16 v6, -0x1

    move-wide/from16 v19, v6

    goto/16 :goto_1

    .line 1565
    :catchall_0
    move-exception v6

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v6

    .line 1604
    .end local v5           #resolver:Landroid/content/ContentResolver;
    .restart local v14       #cv:Landroid/content/ContentValues;
    .restart local v18       #reportString:Ljava/lang/String;
    .restart local v23       #uri:Landroid/net/Uri;
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/android/email/activity/MessageView;->onPrevious()Z

    move-result v17

    .line 1606
    .local v17, moved:Z
    if-nez v17, :cond_1

    .line 1609
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MessageView;->finish()V

    goto/16 :goto_0
.end method

.method private onSaveToCalendar()V
    .locals 5

    .prologue
    .line 2764
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.EDIT"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2765
    .local v1, intent:Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.android.calendar"

    const-string v4, "com.android.calendar.EditEvent"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2766
    .local v0, cn:Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2768
    iget-object v3, p0, Lcom/android/email/activity/MessageView;->mSaveToCalendarHtmlText:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    .line 2770
    .local v2, spanned:Landroid/text/Spanned;
    const-string v3, "description"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2772
    const-string v3, "title"

    iget-object v4, p0, Lcom/android/email/activity/MessageView;->mSubjectView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 2773
    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageView;->startActivity(Landroid/content/Intent;)V

    .line 2776
    return-void
.end method

.method private onShowPictures()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2737
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    if-eqz v0, :cond_1

    .line 2738
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageContentView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 2739
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageContentView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    .line 2744
    :cond_0
    iput-boolean v4, p0, Lcom/android/email/activity/MessageView;->ShowPicturesEnabled:Z

    .line 2745
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mShowPicturesSection:Landroid/view/MenuItem;

    iget-boolean v1, p0, Lcom/android/email/activity/MessageView;->ShowPicturesEnabled:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2748
    new-instance v0, Lcom/android/email/activity/MessageView$LoadEmbeddedAttachmentsTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/email/activity/MessageView$LoadEmbeddedAttachmentsTask;-><init>(Lcom/android/email/activity/MessageView;Lcom/android/email/activity/MessageView$1;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mLoadEmbeddedAttachmentsTask:Lcom/android/email/activity/MessageView$LoadEmbeddedAttachmentsTask;

    .line 2749
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mLoadEmbeddedAttachmentsTask:Lcom/android/email/activity/MessageView$LoadEmbeddedAttachmentsTask;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Long;

    iget-object v2, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    iget-wide v2, v2, Lcom/android/email/provider/EmailContent$Message;->mId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageView$LoadEmbeddedAttachmentsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2751
    :cond_1
    return-void
.end method

.method private onTextSize()V
    .locals 7

    .prologue
    .line 3399
    const/4 v3, 0x3

    new-array v2, v3, [Lcom/android/email/activity/MessageView$TextSizeType;

    .line 3400
    .local v2, textType:[Lcom/android/email/activity/MessageView$TextSizeType;
    const/4 v3, 0x0

    new-instance v4, Lcom/android/email/activity/MessageView$TextSizeType;

    const v5, 0x7f08011d

    invoke-virtual {p0, v5}, Lcom/android/email/activity/MessageView;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x1c

    invoke-direct {v4, p0, v5, v6}, Lcom/android/email/activity/MessageView$TextSizeType;-><init>(Lcom/android/email/activity/MessageView;Ljava/lang/String;I)V

    aput-object v4, v2, v3

    .line 3401
    const/4 v3, 0x1

    new-instance v4, Lcom/android/email/activity/MessageView$TextSizeType;

    const v5, 0x7f08011e

    invoke-virtual {p0, v5}, Lcom/android/email/activity/MessageView;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x1e

    invoke-direct {v4, p0, v5, v6}, Lcom/android/email/activity/MessageView$TextSizeType;-><init>(Lcom/android/email/activity/MessageView;Ljava/lang/String;I)V

    aput-object v4, v2, v3

    .line 3402
    const/4 v3, 0x2

    new-instance v4, Lcom/android/email/activity/MessageView$TextSizeType;

    const v5, 0x7f08011f

    invoke-virtual {p0, v5}, Lcom/android/email/activity/MessageView;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x21

    invoke-direct {v4, p0, v5, v6}, Lcom/android/email/activity/MessageView$TextSizeType;-><init>(Lcom/android/email/activity/MessageView;Ljava/lang/String;I)V

    aput-object v4, v2, v3

    .line 3404
    new-instance v0, Lcom/android/email/activity/MessageView$TextSizeAdapter;

    invoke-direct {v0, p0, v2}, Lcom/android/email/activity/MessageView$TextSizeAdapter;-><init>(Landroid/content/Context;[Lcom/android/email/activity/MessageView$TextSizeType;)V

    .line 3406
    .local v0, adapter:Landroid/widget/ListAdapter;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3408
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const v3, 0x7f08011c

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 3409
    sget v3, Lcom/android/email/activity/MessageView;->mTextSize:I

    new-instance v4, Lcom/android/email/activity/MessageView$15;

    invoke-direct {v4, p0}, Lcom/android/email/activity/MessageView$15;-><init>(Lcom/android/email/activity/MessageView;)V

    invoke-virtual {v1, v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3415
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 3416
    return-void
.end method

.method private onTextSizeChange(I)V
    .locals 4
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    .line 3498
    sput p1, Lcom/android/email/activity/MessageView;->mTextSize:I

    .line 3500
    new-instance v0, Lcom/android/email/activity/MessageView$ChangeTextSizeTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/email/activity/MessageView$ChangeTextSizeTask;-><init>(Lcom/android/email/activity/MessageView;Lcom/android/email/activity/MessageView$1;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mTextSizeTask:Lcom/android/email/activity/MessageView$ChangeTextSizeTask;

    .line 3501
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mTextSizeTask:Lcom/android/email/activity/MessageView$ChangeTextSizeTask;

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageView$ChangeTextSizeTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 3503
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    if-eqz v0, :cond_0

    .line 3504
    new-instance v0, Lcom/android/email/activity/MessageView$LoadBodyTask;

    iget-object v1, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    iget-wide v1, v1, Lcom/android/email/provider/EmailContent$Message;->mId:J

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/email/activity/MessageView$LoadBodyTask;-><init>(Lcom/android/email/activity/MessageView;JZ)V

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mLoadBodyTask:Lcom/android/email/activity/MessageView$LoadBodyTask;

    .line 3505
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mLoadBodyTask:Lcom/android/email/activity/MessageView$LoadBodyTask;

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageView$LoadBodyTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 3507
    :cond_0
    return-void
.end method

.method private onViewAttachment(Lcom/android/email/activity/MessageView$AttachmentInfo;)V
    .locals 11
    .parameter "attachment"

    .prologue
    const/4 v10, 0x1

    .line 2697
    iput v10, p0, Lcom/android/email/activity/MessageView;->mSaveAttachmentsCount:I

    .line 2698
    iget-wide v0, p1, Lcom/android/email/activity/MessageView$AttachmentInfo;->attachmentId:J

    iput-wide v0, p0, Lcom/android/email/activity/MessageView;->mLoadAttachmentId:J

    .line 2699
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/MessageView;->mLoadAttachmentSave:Z

    .line 2700
    iget-object v0, p1, Lcom/android/email/activity/MessageView$AttachmentInfo;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mLoadAttachmentName:Ljava/lang/String;

    .line 2702
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

    .line 2705
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mController:Lcom/android/email/Controller;

    iget-wide v1, p1, Lcom/android/email/activity/MessageView$AttachmentInfo;->attachmentId:J

    iget-wide v3, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    iget-object v5, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    iget-wide v5, v5, Lcom/android/email/provider/EmailContent$Message;->mMailboxKey:J

    iget-wide v7, p0, Lcom/android/email/activity/MessageView;->mAccountId:J

    iget-object v9, p0, Lcom/android/email/activity/MessageView;->mControllerCallback:Lcom/android/email/activity/MessageView$ControllerResults;

    invoke-virtual/range {v0 .. v10}, Lcom/android/email/Controller;->loadAttachment(JJJJLcom/android/email/Controller$Result;Z)V

    .line 2710
    iput-boolean v10, p0, Lcom/android/email/activity/MessageView;->mDownloading:Z

    .line 2712
    return-void
.end method

.method private reloadUiFromBody(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 38
    .parameter "bodyText"
    .parameter "bodyHtml"
    .parameter "loadAttachment"

    .prologue
    .line 4937
    const/4 v5, 0x0

    .line 4938
    .local v5, text:Ljava/lang/String;
    const/16 v36, 0x0

    .line 4939
    .local v36, text2:Ljava/lang/String;
    const/4 v3, 0x0

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/MessageView;->mHtmlText:Ljava/lang/String;

    .line 4940
    const/4 v14, 0x0

    .line 4943
    .local v14, hasImages:Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    .line 4945
    .local v30, resources:Landroid/content/res/Resources;
    const/4 v13, 0x0

    .line 4946
    .local v13, fontColor:Ljava/lang/String;
    const/4 v11, 0x0

    .line 4948
    .local v11, backgroundColor:Ljava/lang/String;
    const/high16 v10, -0x100

    .line 4949
    .local v10, attachFontAttrs:I
    const v9, 0x7f0200d6

    .line 4951
    .local v9, attachBgResource:I
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/sec/android/hardware/SecHardwareInterface;->setAmoledACL(Z)V

    .line 4952
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MessageView;->mDisplayMode:I

    move v3, v0

    packed-switch v3, :pswitch_data_0

    .line 4995
    .end local v5           #text:Ljava/lang/String;
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/android/email/activity/MessageView;->updateColors()V

    .line 4998
    invoke-direct/range {p0 .. p0}, Lcom/android/email/activity/MessageView;->updateTextSize()V

    .line 5000
    const/16 v16, 0x0

    .local v16, i:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mAttachments:Landroid/widget/LinearLayout;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    move/from16 v0, v16

    move v1, v3

    if-ge v0, v1, :cond_1

    .line 5001
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mAttachments:Landroid/widget/LinearLayout;

    move-object v3, v0

    move-object v0, v3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0700d4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/widget/RelativeLayout;

    .line 5002
    .local v29, r:Landroid/widget/RelativeLayout;
    const-string v3, "View >>"

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 5005
    invoke-virtual/range {v29 .. v29}, Landroid/widget/RelativeLayout;->invalidate()V

    .line 5000
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 4954
    .end local v16           #i:I
    .end local v29           #r:Landroid/widget/RelativeLayout;
    .restart local v5       #text:Ljava/lang/String;
    :pswitch_0
    const v9, 0x7f0200d5

    .line 4956
    :try_start_0
    const-string v3, "View >>"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "power saving : "

    .end local v5           #text:Ljava/lang/String;
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MessageView;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "power_saving_mode"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 4958
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MessageView;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "power_saving_mode"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    :goto_2
    invoke-static {v3}, Lcom/sec/android/hardware/SecHardwareInterface;->setAmoledACL(Z)V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4961
    :catch_0
    move-exception v3

    move-object v12, v3

    .line 4963
    .local v12, e:Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v12}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 4958
    .end local v12           #e:Landroid/provider/Settings$SettingNotFoundException;
    :cond_0
    const/4 v3, 0x0

    goto :goto_2

    .line 4967
    .restart local v5       #text:Ljava/lang/String;
    :pswitch_1
    new-instance v13, Ljava/lang/String;

    .end local v13           #fontColor:Ljava/lang/String;
    const v3, 0x7f080113

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageView;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v13, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 4968
    .restart local v13       #fontColor:Ljava/lang/String;
    new-instance v11, Ljava/lang/String;

    .end local v11           #backgroundColor:Ljava/lang/String;
    const v3, 0x7f080112

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageView;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v11, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 4969
    .restart local v11       #backgroundColor:Ljava/lang/String;
    const v3, 0x7f090009

    move-object/from16 v0, v30

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    .line 4970
    goto/16 :goto_0

    .line 4972
    :pswitch_2
    new-instance v13, Ljava/lang/String;

    .end local v13           #fontColor:Ljava/lang/String;
    const v3, 0x7f080115

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageView;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v13, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 4973
    .restart local v13       #fontColor:Ljava/lang/String;
    new-instance v11, Ljava/lang/String;

    .end local v11           #backgroundColor:Ljava/lang/String;
    const v3, 0x7f080114

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageView;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v11, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 4974
    .restart local v11       #backgroundColor:Ljava/lang/String;
    const v3, 0x7f09000b

    move-object/from16 v0, v30

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    .line 4975
    goto/16 :goto_0

    .line 4977
    :pswitch_3
    new-instance v13, Ljava/lang/String;

    .end local v13           #fontColor:Ljava/lang/String;
    const v3, 0x7f080117

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageView;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v13, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 4978
    .restart local v13       #fontColor:Ljava/lang/String;
    new-instance v11, Ljava/lang/String;

    .end local v11           #backgroundColor:Ljava/lang/String;
    const v3, 0x7f080116

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageView;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v11, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 4979
    .restart local v11       #backgroundColor:Ljava/lang/String;
    const v3, 0x7f09000d

    move-object/from16 v0, v30

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    .line 4980
    goto/16 :goto_0

    .line 4982
    :pswitch_4
    new-instance v13, Ljava/lang/String;

    .end local v13           #fontColor:Ljava/lang/String;
    const v3, 0x7f080119

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageView;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v13, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 4983
    .restart local v13       #fontColor:Ljava/lang/String;
    new-instance v11, Ljava/lang/String;

    .end local v11           #backgroundColor:Ljava/lang/String;
    const v3, 0x7f080118

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageView;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v11, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 4984
    .restart local v11       #backgroundColor:Ljava/lang/String;
    const v3, 0x7f09000f

    move-object/from16 v0, v30

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    .line 4985
    goto/16 :goto_0

    .line 4987
    :pswitch_5
    new-instance v13, Ljava/lang/String;

    .end local v13           #fontColor:Ljava/lang/String;
    const v3, 0x7f08011b

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageView;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v13, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 4988
    .restart local v13       #fontColor:Ljava/lang/String;
    new-instance v11, Ljava/lang/String;

    .end local v11           #backgroundColor:Ljava/lang/String;
    const v3, 0x7f08011a

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageView;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v11, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 4989
    .restart local v11       #backgroundColor:Ljava/lang/String;
    const v3, 0x7f090011

    move-object/from16 v0, v30

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    goto/16 :goto_0

    .line 5009
    .end local v5           #text:Ljava/lang/String;
    .restart local v16       #i:I
    :cond_1
    if-nez p2, :cond_14

    .line 5010
    const-string v3, "Email"

    const-string v4, "reloadUiFromBody : bodyHtml is null"

    invoke-static {v3, v4}, Lcom/android/email/Email;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 5011
    move-object/from16 v5, p1

    .line 5016
    .restart local v5       #text:Ljava/lang/String;
    new-instance v31, Ljava/lang/StringBuffer;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuffer;-><init>()V

    .line 5017
    .local v31, sb:Ljava/lang/StringBuffer;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MessageView;->mDisplayMode:I

    move v3, v0

    if-eqz v3, :cond_2

    .line 5018
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<html><body bgcolor="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " text="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "><p style=\"word-break:break-all;\">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v31

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5023
    :goto_3
    if-eqz v5, :cond_9

    .line 5027
    invoke-static {v5}, Lcom/android/email/mail/internet/EmailHtmlUtil;->escapeCharacterToDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 5033
    sget-object v3, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v24

    .line 5034
    .end local v5           #text:Ljava/lang/String;
    .local v24, memail:Ljava/util/regex/Matcher;
    :goto_4
    invoke-virtual/range {v24 .. v24}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 5035
    invoke-virtual/range {v24 .. v24}, Ljava/util/regex/Matcher;->start()I

    move-result v32

    .line 5036
    .local v32, start:I
    invoke-virtual/range {v24 .. v24}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v23

    .line 5037
    .local v23, mail:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mailto:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 5038
    .local v18, link:Ljava/lang/String;
    const-string v3, "<a href=\"%s\">%s</a>"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v18, v4, v5

    const/4 v5, 0x1

    aput-object v23, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 5039
    .local v15, href:Ljava/lang/String;
    move-object/from16 v0, v24

    move-object/from16 v1, v31

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_4

    .line 5020
    .end local v15           #href:Ljava/lang/String;
    .end local v18           #link:Ljava/lang/String;
    .end local v23           #mail:Ljava/lang/String;
    .end local v24           #memail:Ljava/util/regex/Matcher;
    .end local v32           #start:I
    .restart local v5       #text:Ljava/lang/String;
    :cond_2
    const-string v3, "<html><body>"

    move-object/from16 v0, v31

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 5042
    .end local v5           #text:Ljava/lang/String;
    .restart local v24       #memail:Ljava/util/regex/Matcher;
    :cond_3
    move-object/from16 v0, v24

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 5043
    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v36

    .line 5044
    const/4 v3, 0x0

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    move-object/from16 v0, v31

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 5061
    sget-object v3, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    move-object v0, v3

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v22

    .line 5062
    .local v22, m:Ljava/util/regex/Matcher;
    :goto_5
    invoke-virtual/range {v22 .. v22}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 5063
    invoke-virtual/range {v22 .. v22}, Ljava/util/regex/Matcher;->start()I

    move-result v32

    .line 5069
    .restart local v32       #start:I
    if-eqz v32, :cond_4

    const/4 v3, 0x1

    sub-int v3, v32, v3

    move-object/from16 v0, v36

    move v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x40

    if-eq v3, v4, :cond_6

    .line 5070
    :cond_4
    invoke-virtual/range {v22 .. v22}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v37

    .line 5071
    .local v37, url:Ljava/lang/String;
    sget-object v3, Lcom/android/email/activity/MessageView;->WEB_URL_PROTOCOL:Ljava/util/regex/Pattern;

    move-object v0, v3

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v28

    .line 5073
    .local v28, proto:Ljava/util/regex/Matcher;
    new-instance v21, Ljava/lang/StringBuffer;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuffer;-><init>()V

    .line 5074
    .local v21, linkbuf:Ljava/lang/StringBuffer;
    invoke-virtual/range {v28 .. v28}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 5078
    invoke-virtual/range {v28 .. v28}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v21

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual/range {v28 .. v28}, Ljava/util/regex/Matcher;->end()I

    move-result v4

    move-object/from16 v0, v37

    move v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v18

    .line 5088
    .restart local v18       #link:Ljava/lang/String;
    :goto_6
    const-string v3, "<a href=\"%s\">%s</a>"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v18, v4, v5

    const/4 v5, 0x1

    aput-object v37, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 5089
    .restart local v15       #href:Ljava/lang/String;
    move-object/from16 v0, v22

    move-object/from16 v1, v31

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_5

    .line 5085
    .end local v15           #href:Ljava/lang/String;
    .end local v18           #link:Ljava/lang/String;
    :cond_5
    const-string v3, "http://"

    move-object/from16 v0, v21

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v18

    .restart local v18       #link:Ljava/lang/String;
    goto :goto_6

    .line 5092
    .end local v18           #link:Ljava/lang/String;
    .end local v21           #linkbuf:Ljava/lang/StringBuffer;
    .end local v28           #proto:Ljava/util/regex/Matcher;
    .end local v37           #url:Ljava/lang/String;
    :cond_6
    const-string v3, "$0"

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    move-object v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto/16 :goto_5

    .line 5095
    .end local v32           #start:I
    :cond_7
    move-object/from16 v0, v22

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 5096
    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 5097
    .restart local v5       #text:Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    move-object/from16 v0, v31

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 5102
    const-string v3, "<p style=\"word-break:break-all;\">"

    const/4 v4, 0x0

    invoke-virtual {v5, v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v17

    .line 5103
    .local v17, index:I
    const/4 v3, -0x1

    move/from16 v0, v17

    move v1, v3

    if-ne v0, v1, :cond_f

    .line 5104
    const/16 v17, 0x0

    .line 5108
    :goto_7
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    move/from16 v0, v17

    move v1, v3

    if-gt v0, v1, :cond_9

    .line 5110
    const-string v3, "<a href="

    move-object v0, v5

    move-object v1, v3

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v20

    .line 5111
    .local v20, linkStart:I
    const-string v3, "</a>"

    move-object v0, v5

    move-object v1, v3

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v19

    .line 5112
    .local v19, linkEnd:I
    const/4 v3, -0x1

    move/from16 v0, v20

    move v1, v3

    if-eq v0, v1, :cond_8

    const/4 v3, -0x1

    move/from16 v0, v19

    move v1, v3

    if-ne v0, v1, :cond_10

    .line 5114
    :cond_8
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    move-object v0, v5

    move/from16 v1, v17

    move v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v31

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5156
    .end local v17           #index:I
    .end local v19           #linkEnd:I
    .end local v20           #linkStart:I
    .end local v22           #m:Ljava/util/regex/Matcher;
    .end local v24           #memail:Ljava/util/regex/Matcher;
    :cond_9
    const-string v3, "</body></html>"

    move-object/from16 v0, v31

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5157
    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 5173
    :goto_8
    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/MessageView;->mSaveToCalendarHtmlText:Ljava/lang/String;

    .line 5176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mMenu:Landroid/view/Menu;

    move-object v3, v0

    if-eqz v3, :cond_a

    .line 5177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mMenu:Landroid/view/Menu;

    move-object v3, v0

    const v4, 0x7f070146

    invoke-interface {v3, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v25

    .line 5178
    .local v25, mi:Landroid/view/MenuItem;
    const/4 v3, 0x1

    move-object/from16 v0, v25

    move v1, v3

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 5180
    .end local v25           #mi:Landroid/view/MenuItem;
    :cond_a
    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/email/activity/MessageView;->mSaveToCalendarEnabled:Z

    .line 5183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mMessageContentView:Landroid/webkit/WebView;

    move-object v3, v0

    if-eqz v3, :cond_d

    .line 5186
    invoke-direct/range {p0 .. p0}, Lcom/android/email/activity/MessageView;->checkITPolicy_AllowHTMLEmail()Z

    move-result v3

    if-nez v3, :cond_b

    .line 5188
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "11111 MessageView.java >>>>> reloadUiFromBody()  >>>>> 4451"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 5189
    const v3, 0x7f080187

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move v1, v3

    move v2, v4

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 5192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mHtmlText:Ljava/lang/String;

    move-object v3, v0

    if-eqz v3, :cond_b

    .line 5195
    const-string v3, "<(/?)([^<>]*)?>"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v27

    .line 5196
    .local v27, p:Ljava/util/regex/Pattern;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mHtmlText:Ljava/lang/String;

    move-object v3, v0

    move-object/from16 v0, v27

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v35

    .line 5198
    .local v35, tempStr:Ljava/lang/String;
    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_b

    .line 5199
    move-object/from16 v5, v35

    .line 5205
    .end local v27           #p:Ljava/util/regex/Pattern;
    .end local v35           #tempStr:Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mMessageContentView:Landroid/webkit/WebView;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getBlockNetworkImage()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 5208
    if-eqz v14, :cond_16

    const/4 v3, 0x1

    :goto_9
    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/email/activity/MessageView;->ShowPicturesEnabled:Z

    .line 5212
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mMessageContentView:Landroid/webkit/WebView;

    move-object v3, v0

    const-string v4, "email://"

    const-string v6, "text/html"

    const-string v7, "utf-8"

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5213
    if-eqz p2, :cond_d

    .line 5214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mMessageContentView:Landroid/webkit/WebView;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mMessageContentView:Landroid/webkit/WebView;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/webkit/WebView;->getScale()F

    move-result v4

    const/high16 v6, 0x42c8

    mul-float/2addr v4, v6

    float-to-int v4, v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setInitialScale(I)V

    .line 5222
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mMenu:Landroid/view/Menu;

    move-object v3, v0

    if-eqz v3, :cond_e

    .line 5223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mShowPicturesSection:Landroid/view/MenuItem;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/email/activity/MessageView;->ShowPicturesEnabled:Z

    move v4, v0

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 5228
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/email/activity/MessageView;->mRefreshedFromLoadMoreCB:Z

    move v3, v0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_17

    .line 5230
    const-string v3, "Email"

    const-string v4, "reloadUiFromBody mRefreshedFromLoadMoreCB == true"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5231
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/email/activity/MessageView;->mRefreshedFromLoadMoreCB:Z

    .line 5242
    .end local v5           #text:Ljava/lang/String;
    :goto_a
    return-void

    .line 5106
    .restart local v5       #text:Ljava/lang/String;
    .restart local v17       #index:I
    .restart local v22       #m:Ljava/util/regex/Matcher;
    .restart local v24       #memail:Ljava/util/regex/Matcher;
    :cond_f
    const/4 v3, 0x0

    move-object v0, v5

    move v1, v3

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v31

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_7

    .line 5119
    .restart local v19       #linkEnd:I
    .restart local v20       #linkStart:I
    :cond_10
    move/from16 v0, v20

    move/from16 v1, v19

    if-ge v0, v1, :cond_12

    .line 5121
    move-object v0, v5

    move/from16 v1, v17

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v34

    .line 5122
    .local v34, temp:Ljava/lang/String;
    sget-object v3, Landroid/util/Patterns;->PHONE:Ljava/util/regex/Pattern;

    move-object v0, v3

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v26

    .line 5123
    .local v26, mphone:Ljava/util/regex/Matcher;
    :goto_b
    invoke-virtual/range {v26 .. v26}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 5124
    invoke-virtual/range {v26 .. v26}, Ljava/util/regex/Matcher;->start()I

    move-result v32

    .line 5125
    .restart local v32       #start:I
    invoke-virtual/range {v26 .. v26}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v33

    .line 5126
    .local v33, tel:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 5127
    .restart local v18       #link:Ljava/lang/String;
    const-string v3, "<a href=\"%s\">%s</a>"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v18, v4, v6

    const/4 v6, 0x1

    aput-object v33, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 5128
    .restart local v15       #href:Ljava/lang/String;
    move-object/from16 v0, v26

    move-object/from16 v1, v31

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_b

    .line 5131
    .end local v15           #href:Ljava/lang/String;
    .end local v18           #link:Ljava/lang/String;
    .end local v32           #start:I
    .end local v33           #tel:Ljava/lang/String;
    :cond_11
    move-object/from16 v0, v26

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 5134
    add-int/lit8 v3, v19, 0x4

    move-object v0, v5

    move/from16 v1, v20

    move v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v31

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5135
    add-int/lit8 v17, v19, 0x4

    .line 5136
    goto/16 :goto_7

    .line 5139
    .end local v26           #mphone:Ljava/util/regex/Matcher;
    .end local v34           #temp:Ljava/lang/String;
    :cond_12
    move-object v0, v5

    move/from16 v1, v17

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v34

    .line 5140
    .restart local v34       #temp:Ljava/lang/String;
    sget-object v3, Landroid/util/Patterns;->PHONE:Ljava/util/regex/Pattern;

    move-object v0, v3

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v26

    .line 5141
    .restart local v26       #mphone:Ljava/util/regex/Matcher;
    :goto_c
    invoke-virtual/range {v26 .. v26}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 5142
    invoke-virtual/range {v26 .. v26}, Ljava/util/regex/Matcher;->start()I

    move-result v32

    .line 5143
    .restart local v32       #start:I
    invoke-virtual/range {v26 .. v26}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v33

    .line 5144
    .restart local v33       #tel:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 5145
    .restart local v18       #link:Ljava/lang/String;
    const-string v3, "<a href=\"%s\">%s</a>"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v18, v4, v6

    const/4 v6, 0x1

    aput-object v33, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 5146
    .restart local v15       #href:Ljava/lang/String;
    move-object/from16 v0, v26

    move-object/from16 v1, v31

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_c

    .line 5149
    .end local v15           #href:Ljava/lang/String;
    .end local v18           #link:Ljava/lang/String;
    .end local v32           #start:I
    .end local v33           #tel:Ljava/lang/String;
    :cond_13
    move-object/from16 v0, v26

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 5150
    move/from16 v17, v20

    goto/16 :goto_7

    .line 5159
    .end local v5           #text:Ljava/lang/String;
    .end local v17           #index:I
    .end local v19           #linkEnd:I
    .end local v20           #linkStart:I
    .end local v22           #m:Ljava/util/regex/Matcher;
    .end local v24           #memail:Ljava/util/regex/Matcher;
    .end local v26           #mphone:Ljava/util/regex/Matcher;
    .end local v31           #sb:Ljava/lang/StringBuffer;
    .end local v34           #temp:Ljava/lang/String;
    :cond_14
    const-string v3, "Email"

    const-string v4, "reloadUiFromBody : bodyHtml is not null"

    invoke-static {v3, v4}, Lcom/android/email/Email;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 5161
    new-instance v31, Ljava/lang/StringBuffer;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuffer;-><init>()V

    .line 5162
    .restart local v31       #sb:Ljava/lang/StringBuffer;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MessageView;->mDisplayMode:I

    move v3, v0

    if-eqz v3, :cond_15

    .line 5163
    const-string v3, "<style type=text/css>\n"

    move-object/from16 v0, v31

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5164
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "*\n { background-color: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";\n color: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";\n font-color: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";\n !important; \n}\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v31

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5165
    const-string v3, "--></style>"

    move-object/from16 v0, v31

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5169
    :cond_15
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 5170
    .restart local v5       #text:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/MessageView;->mHtmlText:Ljava/lang/String;

    .line 5171
    sget-object v3, Lcom/android/email/activity/MessageView;->IMG_TAG_START_REGEX:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v14

    goto/16 :goto_8

    .line 5208
    :cond_16
    const/4 v3, 0x0

    goto/16 :goto_9

    .line 5235
    :cond_17
    const-string v3, "Email"

    const-string v4, "reloadUiFromBody mRefreshedFromLoadMoreCB == false"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5237
    new-instance v3, Lcom/android/email/activity/MessageView$LoadAttachmentsTask;

    move-object v0, v3

    move-object/from16 v1, p0

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/email/activity/MessageView$LoadAttachmentsTask;-><init>(Lcom/android/email/activity/MessageView;Z)V

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/MessageView;->mLoadAttachmentsTask:Lcom/android/email/activity/MessageView$LoadAttachmentsTask;

    .line 5239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mLoadAttachmentsTask:Lcom/android/email/activity/MessageView$LoadAttachmentsTask;

    move-object v3, v0

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    move-object v6, v0

    .end local v5           #text:Ljava/lang/String;
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

    goto/16 :goto_a

    .line 4952
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
    .locals 26
    .parameter "message"
    .parameter "okToFetch"

    .prologue
    .line 4623
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    .line 4624
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Message;->mAccountKey:J

    move-wide/from16 v21, v0

    move-wide/from16 v0, v21

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/email/activity/MessageView;->mAccountId:J

    .line 4626
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/activity/MessageView;->mAccountId:J

    move-wide/from16 v21, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v21

    invoke-static {v0, v1, v2}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/MessageView;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    .line 4627
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MessageView;->mDisplayMode:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_0

    .line 4628
    const-string v21, "View >>"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "reloadUIFromMessage || display mode : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/email/provider/EmailContent$Account;->getDisplayMode()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 4629
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/email/provider/EmailContent$Account;->getDisplayMode()I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/email/activity/MessageView;->mDisplayMode:I

    .line 4632
    :cond_0
    sget v21, Lcom/android/email/activity/MessageView;->mTextSize:I

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1

    .line 4633
    const-string v21, "View >>"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "reloadUIFromMessage || text size : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/email/provider/EmailContent$Account;->getTextSize()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 4634
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/email/provider/EmailContent$Account;->getTextSize()I

    move-result v21

    sput v21, Lcom/android/email/activity/MessageView;->mTextSize:I

    .line 4637
    :cond_1
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/activity/MessageView;->mMailboxId:J

    move-wide/from16 v21, v0

    const-wide/16 v23, -0x1

    cmp-long v21, v21, v23

    if-nez v21, :cond_2

    .line 4638
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Message;->mMailboxKey:J

    move-wide/from16 v21, v0

    move-wide/from16 v0, v21

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/email/activity/MessageView;->mMailboxId:J

    .line 4641
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mPrevNextCursor:Landroid/database/Cursor;

    move-object/from16 v21, v0

    if-nez v21, :cond_3

    .line 4642
    new-instance v21, Lcom/android/email/activity/MessageView$LoadPrevNextTask;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/activity/MessageView;->mMailboxId:J

    move-wide/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-wide/from16 v2, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/android/email/activity/MessageView$LoadPrevNextTask;-><init>(Lcom/android/email/activity/MessageView;J)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/MessageView;->mLoadPrevNextTask:Lcom/android/email/activity/MessageView$LoadPrevNextTask;

    .line 4643
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mLoadPrevNextTask:Lcom/android/email/activity/MessageView$LoadPrevNextTask;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Void;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/android/email/activity/MessageView$LoadPrevNextTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 4646
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mSubjectView_marquee:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4647
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mSubjectView_marquee:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    if-eqz v24, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mSubjectAttachmentIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v24, v0

    :goto_0
    const/16 v25, 0x0

    invoke-virtual/range {v21 .. v25}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 4650
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mSubjectView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4651
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mFromView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/email/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/email/mail/Address;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/android/email/mail/Address;->toFriendly([Lcom/android/email/mail/Address;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4652
    new-instance v7, Ljava/util/Date;

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Message;->mTimeStamp:J

    move-wide/from16 v21, v0

    move-object v0, v7

    move-wide/from16 v1, v21

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 4654
    .local v7, date:Ljava/util/Date;
    new-instance v17, Ljava/lang/StringBuffer;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuffer;-><init>()V

    .line 4655
    .local v17, receiveDate:Ljava/lang/StringBuffer;
    const-string v21, "("

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4656
    invoke-static {v7}, Lcom/android/email/Utility;->isDateToday(Ljava/util/Date;)Z

    move-result v21

    if-eqz v21, :cond_7

    .line 4658
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mTimeFormat:Ljava/text/DateFormat;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4666
    :goto_1
    const-string v21, ")"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4667
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mDateView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4669
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_c

    .line 4672
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "\t"

    const-string v23, ""

    invoke-virtual/range {v21 .. v23}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 4674
    .local v14, message_mTo:Ljava/lang/String;
    const/4 v11, 0x0

    .line 4675
    .local v11, listTo:Ljava/lang/String;
    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v21

    move-object v0, v14

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 4676
    .local v19, toAddress:[Ljava/lang/String;
    if-eqz v19, :cond_f

    .line 4677
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    .line 4678
    .local v12, listToBuf:Ljava/lang/StringBuffer;
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/email/activity/MessageView;->allToListCount:I

    .line 4679
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MessageView;->allToListCount:I

    move/from16 v21, v0

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/MessageView;->mListTos:[Ljava/lang/String;

    .line 4681
    const/4 v15, 0x0

    .local v15, num:I
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MessageView;->allToListCount:I

    move/from16 v21, v0

    move v0, v15

    move/from16 v1, v21

    if-ge v0, v1, :cond_a

    .line 4683
    aget-object v21, v19, v15

    const/16 v22, 0x2

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    .line 4684
    .local v20, toSplitAddress:[Ljava/lang/String;
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_9

    .line 4685
    const/16 v21, 0x1

    aget-object v21, v20, v21

    if-eqz v21, :cond_4

    const/16 v21, 0x1

    aget-object v21, v20, v21

    const-string v22, "\t"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_8

    .line 4687
    :cond_4
    const/16 v21, 0x0

    aget-object v21, v20, v21

    move-object v0, v12

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4688
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mListTos:[Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget-object v22, v20, v22

    aput-object v22, v21, v15

    .line 4700
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MessageView;->allToListCount:I

    move/from16 v21, v0

    const/16 v22, 0x1

    sub-int v21, v21, v22

    move v0, v15

    move/from16 v1, v21

    if-ge v0, v1, :cond_5

    .line 4701
    const-string v21, ", "

    move-object v0, v12

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4681
    :cond_5
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 4647
    .end local v7           #date:Ljava/util/Date;
    .end local v11           #listTo:Ljava/lang/String;
    .end local v12           #listToBuf:Ljava/lang/StringBuffer;
    .end local v14           #message_mTo:Ljava/lang/String;
    .end local v15           #num:I
    .end local v17           #receiveDate:Ljava/lang/StringBuffer;
    .end local v19           #toAddress:[Ljava/lang/String;
    .end local v20           #toSplitAddress:[Ljava/lang/String;
    :cond_6
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 4662
    .restart local v7       #date:Ljava/util/Date;
    .restart local v17       #receiveDate:Ljava/lang/StringBuffer;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mDateFormat:Ljava/text/DateFormat;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4663
    const-string v21, "  "

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4664
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mTimeFormat:Ljava/text/DateFormat;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 4691
    .restart local v11       #listTo:Ljava/lang/String;
    .restart local v12       #listToBuf:Ljava/lang/StringBuffer;
    .restart local v14       #message_mTo:Ljava/lang/String;
    .restart local v15       #num:I
    .restart local v19       #toAddress:[Ljava/lang/String;
    .restart local v20       #toSplitAddress:[Ljava/lang/String;
    :cond_8
    const/16 v21, 0x1

    aget-object v21, v20, v21

    move-object v0, v12

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4692
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mListTos:[Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    aget-object v22, v20, v22

    aput-object v22, v21, v15

    goto :goto_3

    .line 4696
    :cond_9
    const/16 v21, 0x0

    aget-object v21, v20, v21

    move-object v0, v12

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4697
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mListTos:[Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget-object v22, v20, v22

    aput-object v22, v21, v15

    goto :goto_3

    .line 4705
    .end local v20           #toSplitAddress:[Ljava/lang/String;
    :cond_a
    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    .line 4716
    .end local v12           #listToBuf:Ljava/lang/StringBuffer;
    .end local v15           #num:I
    :cond_b
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MessageView;->allToListCount:I

    move/from16 v21, v0

    if-lez v21, :cond_c

    .line 4717
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mToView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4721
    .end local v11           #listTo:Ljava/lang/String;
    .end local v14           #message_mTo:Ljava/lang/String;
    .end local v19           #toAddress:[Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_14

    .line 4723
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "\t"

    const-string v23, ""

    invoke-virtual/range {v21 .. v23}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 4724
    .local v13, message_mCc:Ljava/lang/String;
    const/4 v9, 0x0

    .line 4725
    .local v9, listCc:Ljava/lang/String;
    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v21

    move-object v0, v13

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 4726
    .local v5, ccAddress:[Ljava/lang/String;
    if-eqz v5, :cond_16

    .line 4727
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    .line 4728
    .local v10, listCcBuf:Ljava/lang/StringBuffer;
    move-object v0, v5

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/email/activity/MessageView;->allCCListCount:I

    .line 4729
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MessageView;->allCCListCount:I

    move/from16 v21, v0

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/MessageView;->mListCcs:[Ljava/lang/String;

    .line 4731
    const/4 v15, 0x0

    .restart local v15       #num:I
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MessageView;->allCCListCount:I

    move/from16 v21, v0

    move v0, v15

    move/from16 v1, v21

    if-ge v0, v1, :cond_12

    .line 4733
    aget-object v21, v5, v15

    const/16 v22, 0x2

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 4734
    .local v6, ccSplitAddress:[Ljava/lang/String;
    move-object v0, v6

    array-length v0, v0

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_11

    .line 4735
    const/16 v21, 0x1

    aget-object v21, v6, v21

    if-eqz v21, :cond_d

    const/16 v21, 0x1

    aget-object v21, v6, v21

    const-string v22, "\t"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_10

    .line 4737
    :cond_d
    const/16 v21, 0x0

    aget-object v21, v6, v21

    move-object v0, v10

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4738
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mListCcs:[Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget-object v22, v6, v22

    aput-object v22, v21, v15

    .line 4750
    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MessageView;->allCCListCount:I

    move/from16 v21, v0

    const/16 v22, 0x1

    sub-int v21, v21, v22

    move v0, v15

    move/from16 v1, v21

    if-ge v0, v1, :cond_e

    .line 4751
    const-string v21, ", "

    move-object v0, v10

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4731
    :cond_e
    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    .line 4708
    .end local v5           #ccAddress:[Ljava/lang/String;
    .end local v6           #ccSplitAddress:[Ljava/lang/String;
    .end local v9           #listCc:Ljava/lang/String;
    .end local v10           #listCcBuf:Ljava/lang/StringBuffer;
    .end local v13           #message_mCc:Ljava/lang/String;
    .end local v15           #num:I
    .restart local v11       #listTo:Ljava/lang/String;
    .restart local v14       #message_mTo:Ljava/lang/String;
    .restart local v19       #toAddress:[Ljava/lang/String;
    :cond_f
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/email/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/email/mail/Address;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/android/email/mail/Address;->toFriendly([Lcom/android/email/mail/Address;)Ljava/lang/String;

    move-result-object v11

    .line 4710
    if-eqz v11, :cond_b

    .line 4711
    const-string v21, ","

    move-object v0, v11

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/MessageView;->mListTos:[Ljava/lang/String;

    .line 4712
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mListTos:[Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/email/activity/MessageView;->allToListCount:I

    goto/16 :goto_4

    .line 4741
    .end local v11           #listTo:Ljava/lang/String;
    .end local v14           #message_mTo:Ljava/lang/String;
    .end local v19           #toAddress:[Ljava/lang/String;
    .restart local v5       #ccAddress:[Ljava/lang/String;
    .restart local v6       #ccSplitAddress:[Ljava/lang/String;
    .restart local v9       #listCc:Ljava/lang/String;
    .restart local v10       #listCcBuf:Ljava/lang/StringBuffer;
    .restart local v13       #message_mCc:Ljava/lang/String;
    .restart local v15       #num:I
    :cond_10
    const/16 v21, 0x1

    aget-object v21, v6, v21

    move-object v0, v10

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4742
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mListCcs:[Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    aget-object v22, v6, v22

    aput-object v22, v21, v15

    goto :goto_6

    .line 4746
    :cond_11
    const/16 v21, 0x0

    aget-object v21, v6, v21

    move-object v0, v10

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4747
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mListCcs:[Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget-object v22, v6, v22

    aput-object v22, v21, v15

    goto :goto_6

    .line 4755
    .end local v6           #ccSplitAddress:[Ljava/lang/String;
    :cond_12
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    .line 4766
    .end local v10           #listCcBuf:Ljava/lang/StringBuffer;
    .end local v15           #num:I
    :cond_13
    :goto_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MessageView;->allCCListCount:I

    move/from16 v21, v0

    if-lez v21, :cond_14

    .line 4767
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mCcView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object v1, v9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4770
    .end local v5           #ccAddress:[Ljava/lang/String;
    .end local v9           #listCc:Ljava/lang/String;
    .end local v13           #message_mCc:Ljava/lang/String;
    :cond_14
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/email/provider/EmailContent$Message;->mImportance:I

    move/from16 v16, v0

    .line 4771
    .local v16, priority:I
    packed-switch v16, :pswitch_data_0

    .line 4792
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mPriorityLayout:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4799
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mAttachmentIcon:Landroid/widget/ImageView;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    if-eqz v22, :cond_19

    const/16 v22, 0x0

    :goto_9
    invoke-virtual/range {v21 .. v22}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4800
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mFavoriteIcon:Landroid/widget/ImageView;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/email/provider/EmailContent$Message;->mFlagFavorite:Z

    move/from16 v22, v0

    if-eqz v22, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mFavoriteIconOn:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    :goto_a
    invoke-virtual/range {v21 .. v22}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4803
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/email/activity/MessageView;->mAlldownloadIconVisible:Z

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1c

    .line 4804
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mAllDownloadIcon:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    if-eqz v22, :cond_1b

    const/16 v22, 0x0

    :goto_b
    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4815
    :goto_c
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/email/provider/EmailContent$Message;->mFlags:I

    move/from16 v21, v0

    and-int/lit8 v21, v21, 0x4

    if-eqz v21, :cond_1d

    .line 4817
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mMeetingYes:Landroid/widget/Button;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/Button;->setVisibility(I)V

    .line 4818
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mMeetingMaybe:Landroid/widget/Button;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/Button;->setVisibility(I)V

    .line 4819
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mMeetingNo:Landroid/widget/Button;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/Button;->setVisibility(I)V

    .line 4820
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->loadMoreMessageLinearLayout:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4821
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mAcceptButton:Landroid/widget/Button;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/Button;->setVisibility(I)V

    .line 4822
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mTentativeButton:Landroid/widget/Button;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/Button;->setVisibility(I)V

    .line 4823
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mDeclineButton:Landroid/widget/Button;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/Button;->setVisibility(I)V

    .line 4838
    :goto_d
    const-string v21, "View >>"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "allToListCount = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MessageView;->allToListCount:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " allCCListCount = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MessageView;->allCCListCount:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 4840
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MessageView;->allToListCount:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-gt v0, v1, :cond_15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MessageView;->allCCListCount:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_1e

    .line 4842
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mExpanderIcon:Landroid/widget/ImageButton;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 4852
    :goto_e
    invoke-direct/range {p0 .. p0}, Lcom/android/email/activity/MessageView;->updateColors()V

    .line 4854
    invoke-direct/range {p0 .. p0}, Lcom/android/email/activity/MessageView;->updateTextSize()V

    .line 4856
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/email/activity/MessageView;->mNeedToReloadMessage:Z

    .line 4857
    const-wide/16 v21, -0x1

    move-wide/from16 v0, v21

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/email/activity/MessageView;->mCurrentMessageID:J

    .line 4864
    if-eqz p2, :cond_20

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/email/provider/EmailContent$Message;->mFlagLoaded:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_20

    .line 4865
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Message;->mId:J

    move-wide/from16 v21, v0

    move-wide/from16 v0, v21

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/email/activity/MessageView;->mWaitForLoadMessageId:J

    .line 4868
    invoke-direct/range {p0 .. p0}, Lcom/android/email/activity/MessageView;->checkITPolicy_AllowPOPIMAP()Z

    move-result v21

    if-nez v21, :cond_1f

    .line 4870
    sget-object v21, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v22, "11111 MessageView.java >>>>> reloadUiFromMessage()  >>>>> 4220"

    invoke-virtual/range {v21 .. v22}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 4871
    const v21, 0x7f080188

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/widget/Toast;->show()V

    .line 4890
    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    move-object/from16 v21, v0

    const v22, 0x7f0700ec

    invoke-virtual/range {v21 .. v22}, Lcom/android/email/winset/NonScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v21

    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setVisibility(I)V

    .line 4891
    const/16 v18, 0x8

    .line 4893
    .local v18, reply_visibility:I
    const/16 v18, 0x0

    .line 4895
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    move-object/from16 v21, v0

    const v22, 0x7f0700f0

    invoke-virtual/range {v21 .. v22}, Lcom/android/email/winset/NonScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4899
    invoke-direct/range {p0 .. p0}, Lcom/android/email/activity/MessageView;->IsEAS()Z

    move-result v21

    if-eqz v21, :cond_21

    .line 4900
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/email/provider/EmailContent$Message;->getFollowupFlag(Landroid/content/Context;)Lcom/android/email/provider/EmailContent$FollowupFlag;

    move-result-object v21

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$FollowupFlag;->Status:Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagStatus;

    move-object v8, v0

    .line 4901
    .local v8, flag:Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagStatus;
    sget-object v21, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, ">>>>>>> flag : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 4903
    sget-object v21, Lcom/android/email/activity/MessageView$17;->$SwitchMap$com$android$email$provider$EmailContent$FollowupFlag$FollowupFlagStatus:[I

    invoke-virtual {v8}, Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagStatus;->ordinal()I

    move-result v22

    aget v21, v21, v22

    packed-switch v21, :pswitch_data_1

    .line 4906
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    move-object/from16 v21, v0

    const v22, 0x7f0700dd

    invoke-virtual/range {v21 .. v22}, Lcom/android/email/winset/NonScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v21

    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setVisibility(I)V

    .line 4919
    .end local p1
    :goto_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    move-object/from16 v21, v0

    const v22, 0x7f0700c5

    invoke-virtual/range {v21 .. v22}, Lcom/android/email/winset/NonScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v21

    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setVisibility(I)V

    .line 4925
    .end local v8           #flag:Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagStatus;
    :goto_11
    return-void

    .line 4758
    .end local v16           #priority:I
    .end local v18           #reply_visibility:I
    .restart local v5       #ccAddress:[Ljava/lang/String;
    .restart local v9       #listCc:Ljava/lang/String;
    .restart local v13       #message_mCc:Ljava/lang/String;
    .restart local p1
    :cond_16
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/email/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/email/mail/Address;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/android/email/mail/Address;->toFriendly([Lcom/android/email/mail/Address;)Ljava/lang/String;

    move-result-object v9

    .line 4760
    if-eqz v9, :cond_13

    .line 4761
    const-string v21, ","

    move-object v0, v9

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/MessageView;->mListCcs:[Ljava/lang/String;

    .line 4762
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mListCcs:[Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/email/activity/MessageView;->allCCListCount:I

    goto/16 :goto_7

    .line 4773
    .end local v5           #ccAddress:[Ljava/lang/String;
    .end local v9           #listCc:Ljava/lang/String;
    .end local v13           #message_mCc:Ljava/lang/String;
    .restart local v16       #priority:I
    :pswitch_0
    invoke-direct/range {p0 .. p0}, Lcom/android/email/activity/MessageView;->IsEAS()Z

    move-result v21

    if-eqz v21, :cond_17

    .line 4774
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mPriorityLayout:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4775
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mPriorityView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const v22, 0x7f08019c

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_8

    .line 4777
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mPriorityLayout:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_8

    .line 4781
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mPriorityLayout:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_8

    .line 4784
    :pswitch_2
    invoke-direct/range {p0 .. p0}, Lcom/android/email/activity/MessageView;->IsEAS()Z

    move-result v21

    if-eqz v21, :cond_18

    .line 4785
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mPriorityLayout:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4786
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mPriorityView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const v22, 0x7f08019d

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_8

    .line 4788
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mPriorityLayout:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_8

    .line 4799
    :cond_19
    const/16 v22, 0x8

    goto/16 :goto_9

    .line 4800
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mFavoriteIconOff:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    goto/16 :goto_a

    .line 4804
    :cond_1b
    const/16 v22, 0x8

    goto/16 :goto_b

    .line 4807
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mAllDownloadIcon:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_c

    .line 4827
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mMeetingYes:Landroid/widget/Button;

    move-object/from16 v21, v0

    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Landroid/widget/Button;->setVisibility(I)V

    .line 4828
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mMeetingMaybe:Landroid/widget/Button;

    move-object/from16 v21, v0

    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Landroid/widget/Button;->setVisibility(I)V

    .line 4829
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mMeetingNo:Landroid/widget/Button;

    move-object/from16 v21, v0

    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Landroid/widget/Button;->setVisibility(I)V

    .line 4830
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->loadMoreMessageLinearLayout:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4831
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mAcceptButton:Landroid/widget/Button;

    move-object/from16 v21, v0

    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Landroid/widget/Button;->setVisibility(I)V

    .line 4832
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mTentativeButton:Landroid/widget/Button;

    move-object/from16 v21, v0

    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Landroid/widget/Button;->setVisibility(I)V

    .line 4833
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mDeclineButton:Landroid/widget/Button;

    move-object/from16 v21, v0

    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_d

    .line 4846
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mExpanderIcon:Landroid/widget/ImageButton;

    move-object/from16 v21, v0

    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_e

    .line 4877
    :cond_1f
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/email/activity/MessageView;->mNeedToReloadMessage:Z

    .line 4878
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Message;->mId:J

    move-wide/from16 v21, v0

    move-wide/from16 v0, v21

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/email/activity/MessageView;->mCurrentMessageID:J

    .line 4879
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mController:Lcom/android/email/Controller;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Message;->mId:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mControllerCallback:Lcom/android/email/activity/MessageView$ControllerResults;

    move-object/from16 v24, v0

    invoke-virtual/range {v21 .. v24}, Lcom/android/email/Controller;->loadMessageForView(JLcom/android/email/Controller$Result;)V

    goto/16 :goto_f

    .line 4883
    :cond_20
    const-wide/16 v21, -0x1

    move-wide/from16 v0, v21

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/email/activity/MessageView;->mWaitForLoadMessageId:J

    .line 4885
    new-instance v21, Lcom/android/email/activity/MessageView$LoadBodyTask;

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Message;->mId:J

    move-wide/from16 v22, v0

    const/16 v24, 0x1

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-wide/from16 v2, v22

    move/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/email/activity/MessageView$LoadBodyTask;-><init>(Lcom/android/email/activity/MessageView;JZ)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/MessageView;->mLoadBodyTask:Lcom/android/email/activity/MessageView$LoadBodyTask;

    .line 4886
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mLoadBodyTask:Lcom/android/email/activity/MessageView$LoadBodyTask;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Void;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/android/email/activity/MessageView$LoadBodyTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_f

    .line 4910
    .restart local v8       #flag:Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagStatus;
    .restart local v18       #reply_visibility:I
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    move-object/from16 v21, v0

    const v22, 0x7f0700dd

    invoke-virtual/range {v21 .. v22}, Lcom/android/email/winset/NonScrollView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0200b8

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v21

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4911
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    move-object/from16 v21, v0

    const v22, 0x7f0700dd

    invoke-virtual/range {v21 .. v22}, Lcom/android/email/winset/NonScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v21

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_10

    .line 4915
    .restart local p1
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    move-object/from16 v21, v0

    const v22, 0x7f0700dd

    invoke-virtual/range {v21 .. v22}, Lcom/android/email/winset/NonScrollView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0200bd

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v21

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4916
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    move-object/from16 v21, v0

    const v22, 0x7f0700dd

    invoke-virtual/range {v21 .. v22}, Lcom/android/email/winset/NonScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v21

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_10

    .line 4922
    .end local v8           #flag:Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagStatus;
    .restart local p1
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    move-object/from16 v21, v0

    const v22, 0x7f0700c5

    invoke-virtual/range {v21 .. v22}, Lcom/android/email/winset/NonScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v21

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setVisibility(I)V

    .line 4923
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    move-object/from16 v21, v0

    const v22, 0x7f0700dd

    invoke-virtual/range {v21 .. v22}, Lcom/android/email/winset/NonScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v21

    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_11

    .line 4771
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 4903
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private repositionPrevNextCursor()V
    .locals 4

    .prologue
    .line 3567
    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 3568
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

    .line 3571
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mPrevNextCursor:Landroid/database/Cursor;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 3572
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

    .line 3574
    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mPrevNextCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3576
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->finish()V

    .line 3578
    :cond_3
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mPrevNextCursor:Landroid/database/Cursor;

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageView;->updatePrevNextArrows(Landroid/database/Cursor;)V

    .line 3579
    return-void
.end method

.method private saveAttachmentsTemporarily()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 2716
    iput v13, p0, Lcom/android/email/activity/MessageView;->mSaveAttachmentsCount:I

    .line 2717
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ge v12, v0, :cond_1

    .line 2718
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v12}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/email/activity/MessageView$AttachmentInfo;

    .line 2719
    .local v11, attachment:Lcom/android/email/activity/MessageView$AttachmentInfo;
    iget-wide v0, v11, Lcom/android/email/activity/MessageView$AttachmentInfo;->attachmentId:J

    iput-wide v0, p0, Lcom/android/email/activity/MessageView;->mLoadAttachmentId:J

    .line 2720
    iput-boolean v13, p0, Lcom/android/email/activity/MessageView;->mLoadAttachmentSave:Z

    .line 2722
    const-string v0, "View >>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveAttachmentsTemporarily called! mLoadAttachmentSave = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/email/activity/MessageView;->mLoadAttachmentSave:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 2724
    iget-object v0, v11, Lcom/android/email/activity/MessageView$AttachmentInfo;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mLoadAttachmentName:Ljava/lang/String;

    .line 2725
    if-nez v12, :cond_0

    .line 2726
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mController:Lcom/android/email/Controller;

    iget-wide v1, v11, Lcom/android/email/activity/MessageView$AttachmentInfo;->attachmentId:J

    iget-wide v3, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    iget-object v5, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    iget-wide v5, v5, Lcom/android/email/provider/EmailContent$Message;->mMailboxKey:J

    iget-wide v7, p0, Lcom/android/email/activity/MessageView;->mAccountId:J

    iget-object v9, p0, Lcom/android/email/activity/MessageView;->mControllerCallback:Lcom/android/email/activity/MessageView$ControllerResults;

    const/4 v10, 0x1

    invoke-virtual/range {v0 .. v10}, Lcom/android/email/Controller;->loadAttachment(JJJJLcom/android/email/Controller$Result;Z)V

    .line 2717
    :goto_1
    add-int/lit8 v12, v12, 0x1

    iget v0, p0, Lcom/android/email/activity/MessageView;->mSaveAttachmentsCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/email/activity/MessageView;->mSaveAttachmentsCount:I

    goto :goto_0

    .line 2729
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mController:Lcom/android/email/Controller;

    iget-wide v1, v11, Lcom/android/email/activity/MessageView$AttachmentInfo;->attachmentId:J

    iget-wide v3, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    iget-object v5, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    iget-wide v5, v5, Lcom/android/email/provider/EmailContent$Message;->mMailboxKey:J

    iget-wide v7, p0, Lcom/android/email/activity/MessageView;->mAccountId:J

    iget-object v9, p0, Lcom/android/email/activity/MessageView;->mControllerCallback:Lcom/android/email/activity/MessageView$ControllerResults;

    move v10, v13

    invoke-virtual/range {v0 .. v10}, Lcom/android/email/Controller;->loadAttachment(JJJJLcom/android/email/Controller$Result;Z)V

    goto :goto_1

    .line 2733
    .end local v11           #attachment:Lcom/android/email/activity/MessageView$AttachmentInfo;
    :cond_1
    return-void
.end method

.method private startPresenceCheck()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 3944
    iget-object v2, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    if-eqz v2, :cond_0

    .line 3945
    iget-object v2, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    iget-object v2, v2, Lcom/android/email/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/email/mail/Address;->unpackFirst(Ljava/lang/String;)Lcom/android/email/mail/Address;

    move-result-object v1

    .line 3946
    .local v1, sender:Lcom/android/email/mail/Address;
    if-eqz v1, :cond_0

    .line 3947
    invoke-virtual {v1}, Lcom/android/email/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 3948
    .local v0, email:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 3949
    new-instance v2, Lcom/android/email/activity/MessageView$PresenceCheckTask;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/email/activity/MessageView$PresenceCheckTask;-><init>(Lcom/android/email/activity/MessageView;Lcom/android/email/activity/MessageView$1;)V

    iput-object v2, p0, Lcom/android/email/activity/MessageView;->mPresenceCheckTask:Lcom/android/email/activity/MessageView$PresenceCheckTask;

    .line 3950
    iget-object v2, p0, Lcom/android/email/activity/MessageView;->mPresenceCheckTask:Lcom/android/email/activity/MessageView$PresenceCheckTask;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    aput-object v0, v3, v4

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MessageView$PresenceCheckTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 3956
    .end local v0           #email:Ljava/lang/String;
    .end local v1           #sender:Lcom/android/email/mail/Address;
    :goto_0
    return-void

    .line 3955
    :cond_0
    invoke-direct {p0, v4}, Lcom/android/email/activity/MessageView;->updateSenderPresence(I)V

    goto :goto_0
.end method

.method private updateAttachmentThumbnail(J)V
    .locals 6
    .parameter "attachmentId"

    .prologue
    .line 3668
    const/4 v2, 0x0

    .local v2, i:I
    iget-object v4, p0, Lcom/android/email/activity/MessageView;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .local v1, count:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 3669
    iget-object v4, p0, Lcom/android/email/activity/MessageView;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageView$AttachmentInfo;

    .line 3670
    .local v0, attachment:Lcom/android/email/activity/MessageView$AttachmentInfo;
    iget-wide v4, v0, Lcom/android/email/activity/MessageView$AttachmentInfo;->attachmentId:J

    cmp-long v4, v4, p1

    if-nez v4, :cond_1

    .line 3671
    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageView;->getPreviewIcon(Lcom/android/email/activity/MessageView$AttachmentInfo;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 3672
    .local v3, previewIcon:Landroid/graphics/Bitmap;
    if-eqz v3, :cond_0

    .line 3673
    iget-object v4, p0, Lcom/android/email/activity/MessageView;->mHandler:Lcom/android/email/activity/MessageView$MessageViewHandler;

    invoke-virtual {v4, v2, v3}, Lcom/android/email/activity/MessageView$MessageViewHandler;->updateAttachmentIcon(ILandroid/graphics/Bitmap;)V

    .line 3678
    .end local v0           #attachment:Lcom/android/email/activity/MessageView$AttachmentInfo;
    .end local v3           #previewIcon:Landroid/graphics/Bitmap;
    :cond_0
    return-void

    .line 3668
    .restart local v0       #attachment:Lcom/android/email/activity/MessageView$AttachmentInfo;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private updateColors()V
    .locals 5

    .prologue
    .line 5361
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 5362
    .local v3, resources:Landroid/content/res/Resources;
    const v2, 0x7f02007e

    .line 5363
    .local v2, headerBgResource:I
    const v4, 0x7f090007

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 5364
    .local v1, fontColor:I
    const v4, 0x7f090006

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 5367
    .local v0, backgroundColor:I
    iget v4, p0, Lcom/android/email/activity/MessageView;->mDisplayMode:I

    packed-switch v4, :pswitch_data_0

    .line 5417
    :goto_0
    :pswitch_0
    iget-object v4, p0, Lcom/android/email/activity/MessageView;->mMessageSwitchBar:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_0

    .line 5418
    iget-object v4, p0, Lcom/android/email/activity/MessageView;->mMessageSwitchBar:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 5419
    iget-object v4, p0, Lcom/android/email/activity/MessageView;->mMessageSwitchBar:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->invalidate()V

    .line 5422
    :cond_0
    iget-object v4, p0, Lcom/android/email/activity/MessageView;->mMessageContentView:Landroid/webkit/WebView;

    if-eqz v4, :cond_1

    .line 5423
    iget-object v4, p0, Lcom/android/email/activity/MessageView;->mMessageContentView:Landroid/webkit/WebView;

    invoke-virtual {v4, v0}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 5424
    iget-object v4, p0, Lcom/android/email/activity/MessageView;->mMessageContentView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->invalidate()V

    .line 5426
    :cond_1
    return-void

    .line 5373
    :pswitch_1
    const v4, 0x7f090008

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 5374
    const v2, 0x7f02007d

    .line 5375
    const v4, 0x7f090009

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 5376
    goto :goto_0

    .line 5378
    :pswitch_2
    const v4, 0x7f09000a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 5379
    const v2, 0x7f02007d

    .line 5380
    const v4, 0x7f09000b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 5381
    goto :goto_0

    .line 5383
    :pswitch_3
    const v4, 0x7f09000c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 5384
    const v2, 0x7f02007d

    .line 5385
    const v4, 0x7f09000d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 5386
    goto :goto_0

    .line 5388
    :pswitch_4
    const v4, 0x7f09000e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 5389
    const v2, 0x7f02007d

    .line 5390
    const v4, 0x7f09000f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 5391
    goto :goto_0

    .line 5393
    :pswitch_5
    const v4, 0x7f090010

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 5394
    const v2, 0x7f02007d

    .line 5395
    const v4, 0x7f090011

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    goto :goto_0

    .line 5367
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
    .locals 6
    .parameter "cursor"

    .prologue
    const/16 v5, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 3585
    if-eqz p1, :cond_1

    .line 3587
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3590
    :cond_0
    const/4 v0, 0x0

    .local v0, hasNext:Z
    move v1, v0

    .line 3597
    .local v1, hasPrev:Z
    :goto_0
    iget-boolean v2, p0, Lcom/android/email/activity/MessageView;->mLogView:Z

    if-nez v2, :cond_1

    .line 3598
    iget-object v2, p0, Lcom/android/email/activity/MessageView;->mPrevious:Landroid/view/View;

    if-eqz v1, :cond_5

    move v3, v4

    :goto_1
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 3599
    iget-object v2, p0, Lcom/android/email/activity/MessageView;->mNext:Landroid/view/View;

    if-eqz v0, :cond_6

    move v3, v4

    :goto_2
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 3602
    .end local v0           #hasNext:Z
    .end local v1           #hasPrev:Z
    :cond_1
    return-void

    .line 3592
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->isFirst()Z

    move-result v2

    if-nez v2, :cond_3

    move v1, v3

    .line 3593
    .restart local v1       #hasPrev:Z
    :goto_3
    invoke-interface {p1}, Landroid/database/Cursor;->isLast()Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v3

    .restart local v0       #hasNext:Z
    :goto_4
    goto :goto_0

    .end local v0           #hasNext:Z
    .end local v1           #hasPrev:Z
    :cond_3
    move v1, v4

    .line 3592
    goto :goto_3

    .restart local v1       #hasPrev:Z
    :cond_4
    move v0, v4

    .line 3593
    goto :goto_4

    .restart local v0       #hasNext:Z
    :cond_5
    move v3, v5

    .line 3598
    goto :goto_1

    :cond_6
    move v3, v5

    .line 3599
    goto :goto_2
.end method

.method private updateSenderPresence(I)V
    .locals 1
    .parameter "presenceIconId"

    .prologue
    .line 3963
    if-nez p1, :cond_0

    .line 3966
    const p1, 0x7f0200cd

    .line 3968
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mSenderPresenceView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3969
    return-void
.end method

.method private updateTextSize()V
    .locals 7

    .prologue
    const/high16 v6, 0x4000

    const/4 v5, 0x0

    .line 5430
    const/high16 v2, 0x41d0

    .line 5431
    .local v2, textSize:F
    const/high16 v1, 0x41e0

    .line 5433
    .local v1, subjectTextSize:F
    sget-object v0, Landroid/webkit/WebSettings$TextSize;->LARGER:Landroid/webkit/WebSettings$TextSize;

    .line 5434
    .local v0, MessageContentTextSize:Landroid/webkit/WebSettings$TextSize;
    const/16 v3, 0x16

    .line 5436
    .local v3, webViewTextSize:I
    sget v4, Lcom/android/email/activity/MessageView;->mTextSize:I

    packed-switch v4, :pswitch_data_0

    .line 5452
    :goto_0
    :pswitch_0
    iget-object v4, p0, Lcom/android/email/activity/MessageView;->mSubjectView_marquee:Landroid/widget/TextView;

    invoke-virtual {v4, v5, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 5453
    iget-object v4, p0, Lcom/android/email/activity/MessageView;->mSubjectView:Landroid/widget/TextView;

    invoke-virtual {v4, v5, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 5454
    iget-object v4, p0, Lcom/android/email/activity/MessageView;->mFromView:Landroid/widget/TextView;

    invoke-virtual {v4, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 5456
    iget-object v4, p0, Lcom/android/email/activity/MessageView;->mToHintView:Landroid/widget/TextView;

    invoke-virtual {v4, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 5457
    iget-object v4, p0, Lcom/android/email/activity/MessageView;->mToView:Landroid/widget/TextView;

    invoke-virtual {v4, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 5458
    iget-object v4, p0, Lcom/android/email/activity/MessageView;->mCcHintView:Landroid/widget/TextView;

    invoke-virtual {v4, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 5459
    iget-object v4, p0, Lcom/android/email/activity/MessageView;->mCcView:Landroid/widget/TextView;

    invoke-virtual {v4, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 5461
    iget-object v4, p0, Lcom/android/email/activity/MessageView;->mPriorityHintView:Landroid/widget/TextView;

    invoke-virtual {v4, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 5462
    iget-object v4, p0, Lcom/android/email/activity/MessageView;->mPriorityView:Landroid/widget/TextView;

    invoke-virtual {v4, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 5466
    iget-object v4, p0, Lcom/android/email/activity/MessageView;->mDateView:Landroid/widget/TextView;

    invoke-virtual {v4, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 5468
    iget-object v4, p0, Lcom/android/email/activity/MessageView;->mMessageContentView:Landroid/webkit/WebView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/email/activity/MessageView;->mMessageContentView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 5469
    iget-object v4, p0, Lcom/android/email/activity/MessageView;->mMessageContentView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/webkit/WebSettings;->setTextSize(Landroid/webkit/WebSettings$TextSize;)V

    .line 5472
    :cond_0
    iget-object v4, p0, Lcom/android/email/activity/MessageView;->mMessageSwitchBar:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_1

    .line 5473
    iget-object v4, p0, Lcom/android/email/activity/MessageView;->mMessageSwitchBar:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->invalidate()V

    .line 5476
    :cond_1
    iget-object v4, p0, Lcom/android/email/activity/MessageView;->mMessageContentView:Landroid/webkit/WebView;

    if-eqz v4, :cond_2

    .line 5477
    iget-object v4, p0, Lcom/android/email/activity/MessageView;->mMessageContentView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->invalidate()V

    .line 5480
    :cond_2
    return-void

    .line 5438
    :pswitch_1
    sub-float/2addr v2, v6

    .line 5439
    sub-float/2addr v1, v6

    .line 5440
    sget-object v0, Landroid/webkit/WebSettings$TextSize;->NORMAL:Landroid/webkit/WebSettings$TextSize;

    .line 5441
    const/16 v3, 0x12

    .line 5442
    goto :goto_0

    .line 5446
    :pswitch_2
    add-float/2addr v2, v6

    .line 5447
    add-float/2addr v1, v6

    .line 5448
    sget-object v0, Landroid/webkit/WebSettings$TextSize;->LARGEST:Landroid/webkit/WebSettings$TextSize;

    .line 5449
    const/16 v3, 0x1a

    goto :goto_0

    .line 5436
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .parameter "event"

    .prologue
    const/4 v8, 0x2

    const/4 v11, -0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1333
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1334
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 1452
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    return v6

    .line 1337
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iput v6, p0, Lcom/android/email/activity/MessageView;->mStartX:F

    .line 1338
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iput v6, p0, Lcom/android/email/activity/MessageView;->mStartY:F

    goto :goto_0

    .line 1342
    :pswitch_1
    iput-boolean v9, p0, Lcom/android/email/activity/MessageView;->mIsDragged:Z

    goto :goto_0

    .line 1352
    :pswitch_2
    iget-boolean v6, p0, Lcom/android/email/activity/MessageView;->mMultiTouch:Z

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    invoke-virtual {v6}, Lcom/android/email/winset/NonScrollView;->isShown()Z

    move-result v6

    if-ne v6, v10, :cond_2

    .line 1353
    iget v6, p0, Lcom/android/email/activity/MessageView;->mStartY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    sub-float/2addr v6, v7

    float-to-int v1, v6

    .line 1354
    .local v1, distance:I
    iget-object v6, p0, Lcom/android/email/activity/MessageView;->mMessageContentView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getScrollY()I

    move-result v6

    add-int v4, v6, v1

    .line 1356
    .local v4, nDiff:I
    iget-object v6, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    invoke-virtual {v6}, Lcom/android/email/winset/NonScrollView;->isScrollBottom()Z

    move-result v6

    if-ne v6, v10, :cond_2

    .line 1358
    if-le v4, v10, :cond_5

    if-eqz v1, :cond_5

    .line 1359
    new-array v3, v8, [I

    .line 1360
    .local v3, location:[I
    const/4 v5, 0x0

    .line 1361
    .local v5, nLocalBottom:I
    iget-object v6, p0, Lcom/android/email/activity/MessageView;->mMessageContentView:Landroid/webkit/WebView;

    invoke-virtual {v6, v3}, Landroid/webkit/WebView;->getLocationInWindow([I)V

    .line 1362
    aget v5, v3, v10

    .line 1363
    iget-boolean v6, p0, Lcom/android/email/activity/MessageView;->mIsDragged:Z

    if-eq v6, v10, :cond_0

    iget v6, p0, Lcom/android/email/activity/MessageView;->mStartY:F

    iget-object v7, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    invoke-virtual {v7}, Lcom/android/email/winset/NonScrollView;->getHeight()I

    move-result v7

    iget-object v8, p0, Lcom/android/email/activity/MessageView;->mMessageContentView:Landroid/webkit/WebView;

    invoke-virtual {v8}, Landroid/webkit/WebView;->getScrollY()I

    move-result v8

    sub-int/2addr v7, v8

    add-int/2addr v7, v5

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_1

    .line 1365
    :cond_0
    iget-object v6, p0, Lcom/android/email/activity/MessageView;->mMessageContentView:Landroid/webkit/WebView;

    invoke-virtual {v6, v9, v1}, Landroid/webkit/WebView;->scrollBy(II)V

    .line 1366
    iput-boolean v10, p0, Lcom/android/email/activity/MessageView;->mIsDragged:Z

    .line 1368
    :cond_1
    iget-object v6, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    invoke-virtual {v6, v10}, Lcom/android/email/winset/NonScrollView;->setIsScrollBottom(Z)V

    .line 1414
    .end local v1           #distance:I
    .end local v3           #location:[I
    .end local v4           #nDiff:I
    .end local v5           #nLocalBottom:I
    :cond_2
    :goto_1
    iget v6, p0, Lcom/android/email/activity/MessageView;->mStartY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_4

    iget-object v6, p0, Lcom/android/email/activity/MessageView;->mMessageContentView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getScrollY()I

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    invoke-virtual {v6}, Lcom/android/email/winset/NonScrollView;->isShown()Z

    move-result v6

    if-nez v6, :cond_4

    .line 1417
    iget-object v6, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    invoke-virtual {v6, v9}, Lcom/android/email/winset/NonScrollView;->setVisibility(I)V

    .line 1418
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->arrangeAttachments()V

    .line 1419
    iget-object v6, p0, Lcom/android/email/activity/MessageView;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v6

    if-ne v6, v10, :cond_6

    .line 1421
    iget-object v6, p0, Lcom/android/email/activity/MessageView;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1432
    :cond_3
    :goto_2
    iget-object v6, p0, Lcom/android/email/activity/MessageView;->mMessageContentView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->invalidate()V

    .line 1433
    iget-object v6, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    invoke-virtual {v6, v9, v9}, Lcom/android/email/winset/NonScrollView;->measure(II)V

    .line 1434
    iget-object v6, p0, Lcom/android/email/activity/MessageView;->mMessageContentView:Landroid/webkit/WebView;

    iget-object v7, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    invoke-virtual {v7}, Lcom/android/email/winset/NonScrollView;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v6, v9, v7}, Landroid/webkit/WebView;->scrollTo(II)V

    .line 1438
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iput v6, p0, Lcom/android/email/activity/MessageView;->mStartY:F

    goto/16 :goto_0

    .line 1370
    .restart local v1       #distance:I
    .restart local v4       #nDiff:I
    :cond_5
    if-ge v4, v8, :cond_2

    .line 1373
    iget-object v6, p0, Lcom/android/email/activity/MessageView;->mMessageContentView:Landroid/webkit/WebView;

    invoke-virtual {v6, v9, v9}, Landroid/webkit/WebView;->scrollTo(II)V

    .line 1374
    iget-object v6, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    invoke-virtual {v6, v9}, Lcom/android/email/winset/NonScrollView;->setIsScrollBottom(Z)V

    goto :goto_1

    .line 1423
    .end local v1           #distance:I
    .end local v4           #nDiff:I
    :cond_6
    iget-object v6, p0, Lcom/android/email/activity/MessageView;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v6

    if-le v6, v10, :cond_3

    .line 1425
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x3f80

    invoke-direct {v2, v11, v11, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1428
    .local v2, forTopMargin:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v6, -0x7

    iput v6, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1429
    iget-object v6, p0, Lcom/android/email/activity/MessageView;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 1334
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method handleMenuItem(I)Z
    .locals 6
    .parameter "menuItemId"

    .prologue
    const/4 v2, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3041
    sparse-switch p1, :sswitch_data_0

    move v2, v4

    .line 3153
    :goto_0
    return v2

    .line 3044
    :sswitch_0
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->checkITPolicy_AllowAttachmentDownload()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3046
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "11111 MessageView.java >>>>> handleMenuItem()  >>>>> show_pictures"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 3047
    const v2, 0x7f080189

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    :goto_1
    move v2, v5

    .line 3153
    goto :goto_0

    .line 3049
    :cond_0
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->onShowPictures()V

    goto :goto_1

    .line 3057
    :sswitch_1
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->onDeletePopup()V

    goto :goto_1

    .line 3061
    :sswitch_2
    new-array v1, v2, [Ljava/lang/String;

    const v2, 0x7f080077

    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageView;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const v2, 0x7f080078

    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageView;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    .line 3062
    .local v1, replayitems:[Ljava/lang/String;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f08014e

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/email/activity/MessageView$12;

    invoke-direct {v3, p0}, Lcom/android/email/activity/MessageView$12;-><init>(Lcom/android/email/activity/MessageView;)V

    invoke-virtual {v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_1

    .line 3103
    .end local v1           #replayitems:[Ljava/lang/String;
    :sswitch_3
    iput-boolean v4, p0, Lcom/android/email/activity/MessageView;->bForwardToOld:Z

    .line 3104
    new-array v0, v2, [Ljava/lang/String;

    const v2, 0x7f080079

    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageView;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    const v2, 0x7f08007a

    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageView;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v5

    .line 3105
    .local v0, forwarditems:[Ljava/lang/String;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f08014f

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/email/activity/MessageView$13;

    invoke-direct {v3, p0}, Lcom/android/email/activity/MessageView$13;-><init>(Lcom/android/email/activity/MessageView;)V

    invoke-virtual {v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_1

    .line 3120
    .end local v0           #forwarditems:[Ljava/lang/String;
    :sswitch_4
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->onSaveToCalendar()V

    goto :goto_1

    .line 3125
    :sswitch_5
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->onMoreMessage()V

    goto :goto_1

    .line 3130
    :sswitch_6
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->onDisplayMode()V

    goto :goto_1

    .line 3134
    :sswitch_7
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->onTextSize()V

    goto :goto_1

    .line 3138
    :sswitch_8
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->addToContacts()V

    goto :goto_1

    .line 3144
    :sswitch_9
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->onRestore()V

    goto :goto_1

    .line 3147
    :sswitch_a
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->onMovePopup()V

    goto/16 :goto_1

    .line 3041
    :sswitch_data_0
    .sparse-switch
        0x7f0700f0 -> :sswitch_5
        0x7f070123 -> :sswitch_1
        0x7f070124 -> :sswitch_3
        0x7f070126 -> :sswitch_2
        0x7f07013a -> :sswitch_7
        0x7f070141 -> :sswitch_9
        0x7f070142 -> :sswitch_a
        0x7f070143 -> :sswitch_0
        0x7f070144 -> :sswitch_6
        0x7f070145 -> :sswitch_8
        0x7f070146 -> :sswitch_4
    .end sparse-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 12
    .parameter "view"

    .prologue
    const v11, 0x7f08006f

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 2781
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 2842
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sparse-switch v3, :sswitch_data_1

    .line 2941
    :cond_1
    :goto_1
    return-void

    .line 2783
    :sswitch_0
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->onMoreMessage()V

    goto :goto_0

    .line 2786
    :sswitch_1
    invoke-direct {p0, v7, v11}, Lcom/android/email/activity/MessageView;->onRespond(II)V

    goto :goto_0

    .line 2790
    :sswitch_2
    const v3, 0x7f080070

    invoke-direct {p0, v9, v3}, Lcom/android/email/activity/MessageView;->onRespond(II)V

    goto :goto_0

    .line 2794
    :sswitch_3
    const v3, 0x7f080071

    invoke-direct {p0, v10, v3}, Lcom/android/email/activity/MessageView;->onRespond(II)V

    goto :goto_0

    .line 2804
    :sswitch_4
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->checkITPolicy_AllowPOPIMAP()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2806
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "11111 MessageView.java >>>>> onClick()  >>>>> 2537"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2807
    const v3, 0x7f080188

    invoke-static {p0, v3, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 2816
    :sswitch_5
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->checkITPolicy_AllowAttachmentDownload()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2818
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "11111 MessageView.java >>>>> onClick()  >>>>> download"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2819
    const v3, 0x7f080189

    invoke-static {p0, v3, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 2823
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageView$AttachmentInfo;

    .line 2824
    .local v0, attachment:Lcom/android/email/activity/MessageView$AttachmentInfo;
    const-wide/16 v1, 0x0

    .line 2825
    .local v1, limitedSize:J
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->checkITPolicy_getAllowedMaxAttachmentSize()I

    move-result v3

    int-to-long v1, v3

    .line 2828
    if-eqz v0, :cond_0

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    iget-wide v3, v0, Lcom/android/email/activity/MessageView$AttachmentInfo;->size:J

    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->checkITPolicy_getAllowedMaxAttachmentSize()I

    move-result v5

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    .line 2830
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "11111 MessageView.java >>>>> onClick()  >>>>> download"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2831
    const v3, 0x7f080189

    invoke-static {p0, v3, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 2845
    .end local v0           #attachment:Lcom/android/email/activity/MessageView$AttachmentInfo;
    .end local v1           #limitedSize:J
    :sswitch_6
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->onClickSender()V

    goto :goto_1

    .line 2848
    :sswitch_7
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->onClickFavorite()V

    goto :goto_1

    .line 2867
    :sswitch_8
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->onDeletePopup()V

    goto/16 :goto_1

    .line 2871
    :sswitch_9
    iget-boolean v3, p0, Lcom/android/email/activity/MessageView;->mNeedToReloadMessage:Z

    if-ne v3, v7, :cond_3

    .line 2872
    const-string v3, "View >>"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "on Click Prev/Next Current Message ID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/android/email/activity/MessageView;->mCurrentMessageID:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 2873
    iget-object v3, p0, Lcom/android/email/activity/MessageView;->mController:Lcom/android/email/Controller;

    iget-wide v4, p0, Lcom/android/email/activity/MessageView;->mCurrentMessageID:J

    invoke-virtual {v3, v4, v5}, Lcom/android/email/Controller;->cancelLoadRemoteMessage(J)V

    .line 2876
    :cond_3
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->onNext()Z

    goto/16 :goto_1

    .line 2879
    :sswitch_a
    iget-boolean v3, p0, Lcom/android/email/activity/MessageView;->mNeedToReloadMessage:Z

    if-ne v3, v7, :cond_4

    .line 2880
    const-string v3, "View >>"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "on Click Prev/Next Current Message ID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/android/email/activity/MessageView;->mCurrentMessageID:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 2881
    iget-object v3, p0, Lcom/android/email/activity/MessageView;->mController:Lcom/android/email/Controller;

    iget-wide v4, p0, Lcom/android/email/activity/MessageView;->mCurrentMessageID:J

    invoke-virtual {v3, v4, v5}, Lcom/android/email/Controller;->cancelLoadRemoteMessage(J)V

    .line 2884
    :cond_4
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->onPrevious()Z

    goto/16 :goto_1

    .line 2887
    :sswitch_b
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/email/activity/MessageView$AttachmentInfo;

    invoke-direct {p0, v3}, Lcom/android/email/activity/MessageView;->onDownloadAttachment(Lcom/android/email/activity/MessageView$AttachmentInfo;)V

    goto/16 :goto_1

    .line 2891
    :sswitch_c
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->onDownloadAttachmentAll()V

    goto/16 :goto_1

    .line 2897
    :sswitch_d
    iget-boolean v3, p0, Lcom/android/email/activity/MessageView;->mWaitToHideProgressDialog:Z

    if-eq v3, v7, :cond_1

    .line 2899
    iput-boolean v7, p0, Lcom/android/email/activity/MessageView;->mWaitToHideProgressDialog:Z

    .line 2900
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/email/activity/MessageView$AttachmentInfo;

    invoke-direct {p0, v3}, Lcom/android/email/activity/MessageView;->onViewAttachment(Lcom/android/email/activity/MessageView$AttachmentInfo;)V

    goto/16 :goto_1

    .line 2916
    :sswitch_e
    invoke-direct {p0, v7, v11}, Lcom/android/email/activity/MessageView;->onRespond(II)V

    goto/16 :goto_1

    .line 2920
    :sswitch_f
    const v3, 0x7f080070

    invoke-direct {p0, v9, v3}, Lcom/android/email/activity/MessageView;->onRespond(II)V

    goto/16 :goto_1

    .line 2924
    :sswitch_10
    const v3, 0x7f080071

    invoke-direct {p0, v10, v3}, Lcom/android/email/activity/MessageView;->onRespond(II)V

    goto/16 :goto_1

    .line 2931
    :sswitch_11
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->onReceiverList()V

    goto/16 :goto_1

    .line 2937
    :sswitch_12
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->onMoreMessage()V

    goto/16 :goto_1

    .line 2781
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f07001b -> :sswitch_4
        0x7f0700b0 -> :sswitch_5
        0x7f0700c5 -> :sswitch_4
        0x7f0700cd -> :sswitch_4
        0x7f0700cf -> :sswitch_0
        0x7f0700d1 -> :sswitch_1
        0x7f0700d2 -> :sswitch_2
        0x7f0700d3 -> :sswitch_3
        0x7f0700d5 -> :sswitch_5
        0x7f0700d6 -> :sswitch_5
        0x7f0700e6 -> :sswitch_4
        0x7f0700eb -> :sswitch_5
        0x7f070125 -> :sswitch_4
        0x7f070126 -> :sswitch_4
    .end sparse-switch

    .line 2842
    :sswitch_data_1
    .sparse-switch
        0x7f07001b -> :sswitch_9
        0x7f07007c -> :sswitch_6
        0x7f0700b0 -> :sswitch_d
        0x7f0700c5 -> :sswitch_7
        0x7f0700cd -> :sswitch_a
        0x7f0700d5 -> :sswitch_d
        0x7f0700d6 -> :sswitch_b
        0x7f0700e2 -> :sswitch_6
        0x7f0700e6 -> :sswitch_11
        0x7f0700eb -> :sswitch_c
        0x7f0700ed -> :sswitch_e
        0x7f0700ee -> :sswitch_f
        0x7f0700ef -> :sswitch_10
        0x7f0700f0 -> :sswitch_12
        0x7f070123 -> :sswitch_8
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 1082
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1084
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1085
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mSubjectView:Landroid/widget/TextView;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1086
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mSubjectView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1091
    :cond_0
    :goto_0
    return-void

    .line 1087
    :cond_1
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1088
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mSubjectView:Landroid/widget/TextView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1089
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mSubjectView:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "icicle"

    .prologue
    .line 791
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 792
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageView;->requestWindowFeature(I)Z

    .line 796
    const v0, 0x7f03002d

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageView;->setContentView(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 808
    :goto_0
    :try_start_1
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageView;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/LayoutInflater;

    .line 809
    .local v9, inflater:Landroid/view/LayoutInflater;
    const v0, 0x7f03002f

    const/4 v1, 0x0

    invoke-virtual {v9, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/email/winset/NonScrollView;

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 815
    .end local v9           #inflater:Landroid/view/LayoutInflater;
    :goto_1
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/email/winset/NonScrollView;->setVisibility(I)V

    .line 816
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mListTos:[Ljava/lang/String;

    .line 817
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mListCcs:[Ljava/lang/String;

    .line 818
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/email/activity/MessageView;->allToListCount:I

    .line 819
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/email/activity/MessageView;->allCCListCount:I

    .line 820
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/MessageView;->bForwardToOld:Z

    .line 821
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/email/activity/MessageView;->mLoadMessageComplete:Z

    .line 822
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

    .line 824
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    const v1, 0x7f07000a

    invoke-virtual {v0, v1}, Lcom/android/email/winset/NonScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mSubjectView:Landroid/widget/TextView;

    .line 825
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/email/activity/MessageView;->mCurrentOrientation:I

    .line 826
    iget v0, p0, Lcom/android/email/activity/MessageView;->mCurrentOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 827
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mSubjectView:Landroid/widget/TextView;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 828
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mSubjectView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 834
    :cond_0
    :goto_2
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    const v1, 0x7f07007d

    invoke-virtual {v0, v1}, Lcom/android/email/winset/NonScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mDateView:Landroid/widget/TextView;

    .line 835
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    const v1, 0x7f0700e6

    invoke-virtual {v0, v1}, Lcom/android/email/winset/NonScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mExpanderIcon:Landroid/widget/ImageButton;

    .line 839
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    const v1, 0x7f0700e3

    invoke-virtual {v0, v1}, Lcom/android/email/winset/NonScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mDetailContainer:Landroid/view/View;

    .line 841
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    const v1, 0x7f0700e7

    invoke-virtual {v0, v1}, Lcom/android/email/winset/NonScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mAttachmentContainer:Landroid/view/View;

    .line 842
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    const v1, 0x7f0700e8

    invoke-virtual {v0, v1}, Lcom/android/email/winset/NonScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mAttachmentInnerContainer:Landroid/view/View;

    .line 844
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    const v1, 0x7f0700e2

    invoke-virtual {v0, v1}, Lcom/android/email/winset/NonScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mSenderPresenceView:Landroid/widget/ImageView;

    .line 845
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    const v1, 0x7f07007c

    invoke-virtual {v0, v1}, Lcom/android/email/winset/NonScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mFromView:Landroid/widget/TextView;

    .line 846
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    const v1, 0x7f0700c3

    invoke-virtual {v0, v1}, Lcom/android/email/winset/NonScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mAttachmentIcon:Landroid/widget/ImageView;

    .line 847
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    const v1, 0x7f0700c5

    invoke-virtual {v0, v1}, Lcom/android/email/winset/NonScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mFavoriteIcon:Landroid/widget/ImageView;

    .line 849
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    const v1, 0x7f0700e4

    invoke-virtual {v0, v1}, Lcom/android/email/winset/NonScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mToHintView:Landroid/widget/TextView;

    .line 850
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    const v1, 0x7f07009b

    invoke-virtual {v0, v1}, Lcom/android/email/winset/NonScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mToView:Landroid/widget/TextView;

    .line 853
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    const v1, 0x7f0700e5

    invoke-virtual {v0, v1}, Lcom/android/email/winset/NonScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mCcHintView:Landroid/widget/TextView;

    .line 854
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    const v1, 0x7f07009d

    invoke-virtual {v0, v1}, Lcom/android/email/winset/NonScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mCcView:Landroid/widget/TextView;

    .line 858
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    const v1, 0x7f0700de

    invoke-virtual {v0, v1}, Lcom/android/email/winset/NonScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mPriorityLayout:Landroid/widget/LinearLayout;

    .line 859
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    const v1, 0x7f0700df

    invoke-virtual {v0, v1}, Lcom/android/email/winset/NonScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mPriorityHintView:Landroid/widget/TextView;

    .line 860
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    const v1, 0x7f0700e0

    invoke-virtual {v0, v1}, Lcom/android/email/winset/NonScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mPriorityView:Landroid/widget/TextView;

    .line 862
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    const v1, 0x7f0700a0

    invoke-virtual {v0, v1}, Lcom/android/email/winset/NonScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mAttachmentsHeader:Landroid/widget/LinearLayout;

    .line 864
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    const v1, 0x7f0700a3

    invoke-virtual {v0, v1}, Lcom/android/email/winset/NonScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mAttachments:Landroid/widget/LinearLayout;

    .line 866
    const v0, 0x7f07009f

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageContentView:Landroid/webkit/WebView;

    .line 870
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageContentView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setEmbeddedTitleBar(Landroid/view/View;)V

    .line 878
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageContentView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    .line 885
    const v0, 0x7f0700eb

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mAllDownloadIcon:Landroid/widget/TextView;

    .line 886
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/MessageView;->mAlldownloadIconVisible:Z

    .line 889
    const v0, 0x7f0700ce

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mSubjectView_marquee:Landroid/widget/TextView;

    .line 890
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mSubjectView_marquee:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 891
    const v0, 0x7f0700cf

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->loadMoreMessage:Landroid/widget/Button;

    .line 892
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->loadMoreMessage:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 893
    const v0, 0x7f0700d1

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mAcceptButton:Landroid/widget/Button;

    .line 894
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mAcceptButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 895
    const v0, 0x7f0700d2

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mTentativeButton:Landroid/widget/Button;

    .line 896
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mTentativeButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 897
    const v0, 0x7f0700d3

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mDeclineButton:Landroid/widget/Button;

    .line 898
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mDeclineButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 899
    const v0, 0x7f0700d0

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->loadMoreMessageLinearLayout:Landroid/widget/LinearLayout;

    .line 900
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->loadMoreMessage:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 901
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->loadMoreMessageLinearLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 903
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 904
    .local v12, resources:Landroid/content/res/Resources;
    const v0, 0x7f0200b7

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mSubjectAttachmentIcon:Landroid/graphics/drawable/Drawable;

    .line 910
    const v0, 0x7f07001b

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mNext:Landroid/view/View;

    .line 911
    const v0, 0x7f0700cd

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mPrevious:Landroid/view/View;

    .line 913
    const v0, 0x7f0700cc

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageSwitchBar:Landroid/widget/LinearLayout;

    .line 921
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mNext:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 922
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mPrevious:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 923
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mFromView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 924
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mSenderPresenceView:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 925
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mFavoriteIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 934
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/MessageView;->mRefreshedFromLoadMoreCB:Z

    .line 935
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/MessageView;->mNeedToReloadMessage:Z

    .line 936
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/email/activity/MessageView;->mCurrentMessageID:J

    .line 938
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 939
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/MessageView;->mWaitToHideProgressDialog:Z

    .line 940
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 941
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 942
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mLoadMoreDialog:Landroid/app/ProgressDialog;

    .line 943
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mLoadMoreDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 944
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mLoadMoreDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 947
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mForwardingDialog:Landroid/app/ProgressDialog;

    .line 948
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mForwardingDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 949
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mForwardingDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 952
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mDateFormat:Ljava/text/DateFormat;

    .line 953
    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mTimeFormat:Ljava/text/DateFormat;

    .line 955
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020045

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mFavoriteIconOn:Landroid/graphics/drawable/Drawable;

    .line 956
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020042

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mFavoriteIconOff:Landroid/graphics/drawable/Drawable;

    .line 958
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mExpanderIcon:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 960
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mAllDownloadIcon:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 962
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->getIntent()Landroid/content/Intent;

    move-result-object v10

    .line 963
    .local v10, intent:Landroid/content/Intent;
    const-string v0, "com.android.email.MessageView_message_id"

    const-wide/16 v1, -0x1

    invoke-virtual {v10, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    .line 965
    if-eqz p1, :cond_1

    .line 966
    const-string v0, "messageId"

    iget-wide v1, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    .line 968
    :cond_1
    const-string v0, "com.android.email.MessageView_mailbox_id"

    const-wide/16 v1, -0x1

    invoke-virtual {v10, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/activity/MessageView;->mMailboxId:J

    .line 971
    const-string v0, "com.android.email.MessageView_display_mode"

    const/4 v1, -0x1

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/MessageView;->mDisplayMode:I

    .line 974
    const-string v0, "com.android.email.MessageView_text_size"

    const/4 v1, -0x1

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/email/activity/MessageView;->mTextSize:I

    .line 978
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    const v1, 0x7f0700ed

    invoke-virtual {v0, v1}, Lcom/android/email/winset/NonScrollView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/email/activity/MessageView;->mMeetingYes:Landroid/widget/Button;

    .line 979
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    const v1, 0x7f0700ee

    invoke-virtual {v0, v1}, Lcom/android/email/winset/NonScrollView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/email/activity/MessageView;->mMeetingMaybe:Landroid/widget/Button;

    .line 980
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    const v1, 0x7f0700ef

    invoke-virtual {v0, v1}, Lcom/android/email/winset/NonScrollView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/email/activity/MessageView;->mMeetingNo:Landroid/widget/Button;

    .line 981
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMeetingYes:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 982
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMeetingMaybe:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 983
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMeetingNo:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 989
    const v0, 0x7f0700f0

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mMoreMessage:Landroid/view/View;

    .line 990
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMoreMessage:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 991
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMoreMessage:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 995
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageContentView:Landroid/webkit/WebView;

    new-instance v1, Lcom/android/email/activity/MessageView$1;

    invoke-direct {v1, p0}, Lcom/android/email/activity/MessageView$1;-><init>(Lcom/android/email/activity/MessageView;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1028
    iget-wide v0, p0, Lcom/android/email/activity/MessageView;->mMailboxId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 1029
    const-string v0, "com.android.email.LogProvider"

    invoke-virtual {v10, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1031
    .local v11, logView:Ljava/lang/String;
    if-eqz v11, :cond_2

    .line 1032
    const-string v0, "com.android.email.LogProvider"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1034
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->getContentResolver()Landroid/content/ContentResolver;

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

    move-result-object v6

    .line 1039
    .local v6, cur:Landroid/database/Cursor;
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1040
    const-string v0, "mailboxKey"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/activity/MessageView;->mMailboxId:J

    .line 1043
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mNext:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1044
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mPrevious:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1047
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/MessageView;->mLogView:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1057
    :goto_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1063
    .end local v6           #cur:Landroid/database/Cursor;
    .end local v11           #logView:Ljava/lang/String;
    :cond_2
    :goto_4
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mController:Lcom/android/email/Controller;

    .line 1065
    new-instance v0, Lcom/android/email/activity/MessageView$NextPrevObserver;

    iget-object v1, p0, Lcom/android/email/activity/MessageView;->mHandler:Lcom/android/email/activity/MessageView$MessageViewHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/email/activity/MessageView$NextPrevObserver;-><init>(Lcom/android/email/activity/MessageView;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mNextPrevObserver:Landroid/database/ContentObserver;

    .line 1067
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->messageChanged()V

    .line 1069
    iget v0, p0, Lcom/android/email/activity/MessageView;->mDisplayMode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    .line 1070
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->updateColors()V

    .line 1072
    :cond_3
    sget v0, Lcom/android/email/activity/MessageView;->mTextSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    .line 1073
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->updateTextSize()V

    .line 1076
    :cond_4
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mController:Lcom/android/email/Controller;

    iget-object v1, p0, Lcom/android/email/activity/MessageView;->mControllerCallback:Lcom/android/email/activity/MessageView$ControllerResults;

    invoke-virtual {v0, v1}, Lcom/android/email/Controller;->addResultCallback(Lcom/android/email/Controller$Result;)V

    .line 1077
    return-void

    .line 797
    .end local v10           #intent:Landroid/content/Intent;
    .end local v12           #resources:Landroid/content/res/Resources;
    .restart local p1
    :catch_0
    move-exception v7

    .line 798
    .local v7, e:Ljava/lang/Exception;
    const-string v0, "webview.db"

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageView;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    .line 799
    .local v8, f:Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 800
    const-string v0, "View >>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Viewer setContentView Error >> path : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 801
    const-string v0, "webviewCache.db"

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageView;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    .line 802
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 803
    const-string v0, "View >>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Viewer setContentView Error >> path : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 804
    const v0, 0x7f03002d

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageView;->setContentView(I)V

    goto/16 :goto_0

    .line 810
    .end local v7           #e:Ljava/lang/Exception;
    .end local v8           #f:Ljava/io/File;
    :catch_1
    move-exception v0

    move-object v7, v0

    .line 811
    .restart local v7       #e:Ljava/lang/Exception;
    const-string v0, "View >>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WebViewer Inflater call Error message : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 829
    .end local v7           #e:Ljava/lang/Exception;
    :cond_5
    iget v0, p0, Lcom/android/email/activity/MessageView;->mCurrentOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 830
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mSubjectView:Landroid/widget/TextView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 831
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mSubjectView:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto/16 :goto_2

    .line 1051
    .end local p1
    .restart local v6       #cur:Landroid/database/Cursor;
    .restart local v10       #intent:Landroid/content/Intent;
    .restart local v11       #logView:Ljava/lang/String;
    .restart local v12       #resources:Landroid/content/res/Resources;
    :cond_6
    :try_start_3
    const-string v0, "Email"

    const-string v1, "Exception on getting mMessageId"

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1052
    const v0, 0x7f080072

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageView;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_3

    .line 1054
    :catch_2
    move-exception v0

    .line 1057
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_4

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 6
    .parameter "id"

    .prologue
    .line 1098
    packed-switch p1, :pswitch_data_0

    .line 1148
    :goto_0
    const/4 v4, 0x0

    return-object v4

    .line 1102
    :pswitch_0
    const/4 v3, 0x0

    .line 1104
    .local v3, sortType:[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/email/activity/MessageView;->mMessageContentView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object v2

    .line 1105
    .local v2, result:Landroid/webkit/WebView$HitTestResult;
    invoke-virtual {v2}, Landroid/webkit/WebView$HitTestResult;->getExtra()Ljava/lang/String;

    move-result-object v1

    .line 1107
    .local v1, extra:Ljava/lang/String;
    const/4 v4, 0x2

    new-array v3, v4, [Ljava/lang/String;

    .end local v3           #sortType:[Ljava/lang/String;
    const/4 v4, 0x0

    const v5, 0x7f080157

    invoke-virtual {p0, v5}, Lcom/android/email/activity/MessageView;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const v5, 0x7f080158

    invoke-virtual {p0, v5}, Lcom/android/email/activity/MessageView;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1112
    .restart local v3       #sortType:[Ljava/lang/String;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1114
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    iget-object v4, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    iget-object v4, v4, Lcom/android/email/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    if-nez v4, :cond_0

    .line 1115
    const v4, 0x7f080159

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1119
    :goto_1
    const-string v4, "Cancel"

    new-instance v5, Lcom/android/email/activity/MessageView$2;

    invoke-direct {v5, p0}, Lcom/android/email/activity/MessageView$2;-><init>(Lcom/android/email/activity/MessageView;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1124
    new-instance v4, Lcom/android/email/activity/MessageView$3;

    invoke-direct {v4, p0, v1}, Lcom/android/email/activity/MessageView$3;-><init>(Lcom/android/email/activity/MessageView;Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1144
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 1117
    :cond_0
    iget-object v4, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    iget-object v4, v4, Lcom/android/email/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 1098
    :pswitch_data_0
    .packed-switch 0x3f7
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 10
    .parameter "menu"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 3174
    sget-object v4, Lcom/android/email/activity/MessageView;->mContext:Landroid/content/Context;

    check-cast v4, Lcom/android/email/activity/MessageList;

    if-nez v4, :cond_0

    move v4, v9

    .line 3232
    :goto_0
    return v4

    .line 3176
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 3177
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v4

    const v5, 0x7f0d0010

    invoke-virtual {v4, v5, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 3181
    iput-object p1, p0, Lcom/android/email/activity/MessageView;->mMenu:Landroid/view/Menu;

    .line 3182
    iget-object v4, p0, Lcom/android/email/activity/MessageView;->mMenu:Landroid/view/Menu;

    const v5, 0x7f070146

    invoke-interface {v4, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 3183
    .local v3, mi:Landroid/view/MenuItem;
    iget-boolean v4, p0, Lcom/android/email/activity/MessageView;->mSaveToCalendarEnabled:Z

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 3187
    iget-object v4, p0, Lcom/android/email/activity/MessageView;->mMenu:Landroid/view/Menu;

    const v5, 0x7f070143

    invoke-interface {v4, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iput-object v4, p0, Lcom/android/email/activity/MessageView;->mShowPicturesSection:Landroid/view/MenuItem;

    .line 3188
    iget-object v4, p0, Lcom/android/email/activity/MessageView;->mShowPicturesSection:Landroid/view/MenuItem;

    iget-boolean v5, p0, Lcom/android/email/activity/MessageView;->ShowPicturesEnabled:Z

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 3192
    iget-object v4, p0, Lcom/android/email/activity/MessageView;->mMenu:Landroid/view/Menu;

    const v5, 0x7f070141

    invoke-interface {v4, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 3193
    .local v1, mIRestore:Landroid/view/MenuItem;
    invoke-interface {v1, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3194
    const/4 v2, 0x0

    .line 3195
    .local v2, mailbox:Lcom/android/email/provider/EmailContent$Mailbox;
    iget-wide v4, p0, Lcom/android/email/activity/MessageView;->mMailboxId:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    .line 3196
    iget-wide v4, p0, Lcom/android/email/activity/MessageView;->mMailboxId:J

    invoke-static {p0, v4, v5}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v2

    .line 3197
    if-eqz v2, :cond_1

    .line 3199
    iget v4, v2, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_3

    .line 3201
    invoke-interface {v1, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3211
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/android/email/activity/MessageView;->mMenu:Landroid/view/Menu;

    const v5, 0x7f070142

    invoke-interface {v4, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 3212
    .local v0, mIMove:Landroid/view/MenuItem;
    iget-wide v4, p0, Lcom/android/email/activity/MessageView;->mMailboxId:J

    const-wide/16 v6, -0x2

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    iget-wide v4, p0, Lcom/android/email/activity/MessageView;->mMailboxId:J

    const-wide/16 v6, -0x3

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    iget-wide v4, p0, Lcom/android/email/activity/MessageView;->mMailboxId:J

    const-wide/16 v6, -0x4

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    iget-wide v4, p0, Lcom/android/email/activity/MessageView;->mMailboxId:J

    const-wide/16 v6, -0x5

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    iget-wide v4, p0, Lcom/android/email/activity/MessageView;->mMailboxId:J

    const-wide/16 v6, -0x6

    cmp-long v4, v4, v6

    if-nez v4, :cond_4

    .line 3218
    :cond_2
    invoke-interface {v0, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_2
    move v4, v9

    .line 3232
    goto/16 :goto_0

    .line 3205
    .end local v0           #mIMove:Landroid/view/MenuItem;
    :cond_3
    invoke-interface {v1, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 3222
    .restart local v0       #mIMove:Landroid/view/MenuItem;
    :cond_4
    if-eqz v2, :cond_5

    iget v4, v2, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_5

    iget v4, v2, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_6

    .line 3224
    :cond_5
    invoke-interface {v0, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2

    .line 3228
    :cond_6
    invoke-interface {v0, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 1274
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1275
    iget-object v1, p0, Lcom/android/email/activity/MessageView;->mController:Lcom/android/email/Controller;

    iget-object v2, p0, Lcom/android/email/activity/MessageView;->mControllerCallback:Lcom/android/email/activity/MessageView$ControllerResults;

    invoke-virtual {v1, v2}, Lcom/android/email/Controller;->removeResultCallback(Lcom/android/email/Controller$Result;)V

    .line 1276
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->cancelAllTasks()V

    .line 1279
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/email/activity/MessageView;->mCacheDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1280
    .local v0, targetDirectory:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1281
    invoke-static {v0}, Lorg/apache/commons/io/FileUtils;->deleteDirectory(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1290
    .end local v0           #targetDirectory:Ljava/io/File;
    :cond_0
    :goto_0
    monitor-enter p0

    .line 1291
    :try_start_1
    iget-object v1, p0, Lcom/android/email/activity/MessageView;->mMessageContentView:Landroid/webkit/WebView;

    if-eqz v1, :cond_1

    .line 1293
    iget-object v1, p0, Lcom/android/email/activity/MessageView;->mMessageContentView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->destroy()V

    .line 1294
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/email/activity/MessageView;->mMessageContentView:Landroid/webkit/WebView;

    .line 1296
    :cond_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1298
    iget-object v1, p0, Lcom/android/email/activity/MessageView;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_2

    .line 1299
    iget-object v1, p0, Lcom/android/email/activity/MessageView;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1301
    :cond_2
    iget-object v1, p0, Lcom/android/email/activity/MessageView;->mForwardingDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_3

    .line 1302
    iget-object v1, p0, Lcom/android/email/activity/MessageView;->mForwardingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1306
    :cond_3
    return-void

    .line 1296
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1285
    :catch_0
    move-exception v1

    goto :goto_0

    .line 1282
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 2945
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageView;->handleMenuItem(I)Z

    move-result v0

    .line 2946
    .local v0, handled:Z
    if-nez v0, :cond_0

    .line 2947
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 2949
    :cond_0
    return v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 1230
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 1232
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->closePrevNextCursor()V

    .line 1233
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    .line 1173
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 1175
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    if-eqz v0, :cond_0

    .line 1177
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    invoke-virtual {v0}, Lcom/android/email/winset/NonScrollView;->resume()V

    .line 1180
    :cond_0
    iput-wide v2, p0, Lcom/android/email/activity/MessageView;->mWaitForLoadMessageId:J

    .line 1182
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    if-eqz v0, :cond_2

    .line 1183
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->startPresenceCheck()V

    .line 1187
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mLoadPrevNextTask:Lcom/android/email/activity/MessageView$LoadPrevNextTask;

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/android/email/activity/MessageView;->mMailboxId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 1188
    new-instance v0, Lcom/android/email/activity/MessageView$LoadPrevNextTask;

    iget-wide v1, p0, Lcom/android/email/activity/MessageView;->mMailboxId:J

    invoke-direct {v0, p0, v1, v2}, Lcom/android/email/activity/MessageView$LoadPrevNextTask;-><init>(Lcom/android/email/activity/MessageView;J)V

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mLoadPrevNextTask:Lcom/android/email/activity/MessageView$LoadPrevNextTask;

    .line 1189
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mLoadPrevNextTask:Lcom/android/email/activity/MessageView$LoadPrevNextTask;

    new-array v1, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageView$LoadPrevNextTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1193
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

    .line 1194
    sget-boolean v0, Lcom/android/email/activity/MessageView;->mLoadMessageComplete:Z

    if-nez v0, :cond_2

    .line 1195
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mLoadMessageTask:Lcom/android/email/activity/MessageView$LoadMessageTask;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->cancelTask(Landroid/os/AsyncTask;)V

    .line 1196
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mLoadMessageTask:Lcom/android/email/activity/MessageView$LoadMessageTask;

    .line 1197
    new-instance v0, Lcom/android/email/activity/MessageView$LoadMessageTask;

    iget-wide v1, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/email/activity/MessageView$LoadMessageTask;-><init>(Lcom/android/email/activity/MessageView;JZ)V

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mLoadMessageTask:Lcom/android/email/activity/MessageView$LoadMessageTask;

    .line 1198
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mLoadMessageTask:Lcom/android/email/activity/MessageView$LoadMessageTask;

    new-array v1, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageView$LoadMessageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1226
    :cond_2
    return-void
.end method

.method public onSaveImage()V
    .locals 25

    .prologue
    .line 2955
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mMessageContentView:Landroid/webkit/WebView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/webkit/WebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object v18

    .line 2956
    .local v18, result:Landroid/webkit/WebView$HitTestResult;
    invoke-virtual/range {v18 .. v18}, Landroid/webkit/WebView$HitTestResult;->getExtra()Ljava/lang/String;

    move-result-object v6

    .line 2957
    .local v6, extra:Ljava/lang/String;
    const-string v8, ""

    .line 2958
    .local v8, filename:Ljava/lang/String;
    const/4 v11, 0x0

    .line 2959
    .local v11, in:Ljava/io/InputStream;
    const/4 v12, 0x0

    .line 2960
    .local v12, in2:Ljava/io/InputStream;
    const/4 v15, 0x0

    .line 2961
    .local v15, out:Ljava/io/OutputStream;
    const/4 v4, 0x0

    .line 2965
    .local v4, count:I
    :try_start_0
    sget-object v21, Lcom/android/email/activity/MessageView;->mBodyImageInfo:[Lcom/android/email/activity/MessageView$BodyImageInfo;

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    if-eqz v21, :cond_5

    .line 2967
    const/4 v9, 0x0

    .line 2968
    .local v9, found:Z
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    sget-object v21, Lcom/android/email/activity/MessageView;->mBodyImageInfo:[Lcom/android/email/activity/MessageView$BodyImageInfo;

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move v0, v10

    move/from16 v1, v21

    if-ge v0, v1, :cond_1

    if-nez v9, :cond_1

    .line 2969
    sget-object v21, Lcom/android/email/activity/MessageView;->mBodyImageInfo:[Lcom/android/email/activity/MessageView$BodyImageInfo;

    aget-object v21, v21, v10

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/email/activity/MessageView$BodyImageInfo;->mContentUri:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object v0, v6

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_0

    .line 2970
    sget-object v21, Lcom/android/email/activity/MessageView;->mBodyImageInfo:[Lcom/android/email/activity/MessageView$BodyImageInfo;

    aget-object v21, v21, v10

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/email/activity/MessageView$BodyImageInfo;->mFileName:Ljava/lang/String;

    move-object v8, v0

    .line 2971
    const/4 v9, 0x1

    .line 2968
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 2974
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MessageView;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v11

    .line 2985
    .end local v9           #found:Z
    .end local v10           #i:I
    :goto_1
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "/download/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 2986
    .local v19, targetDir:Ljava/lang/String;
    new-instance v20, Ljava/io/File;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2987
    .local v20, targetDirectory:Ljava/io/File;
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->isDirectory()Z

    move-result v21

    if-nez v21, :cond_2

    .line 2988
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->mkdirs()Z

    .line 2989
    :cond_2
    move-object/from16 v0, v20

    move-object v1, v8

    invoke-static {v0, v1}, Lcom/android/email/activity/MessageView;->createUniqueFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    .line 2992
    .local v7, file:Ljava/io/File;
    new-instance v16, Ljava/io/FileOutputStream;

    move-object/from16 v0, v16

    move-object v1, v7

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_5

    .line 2993
    .end local v15           #out:Ljava/io/OutputStream;
    .local v16, out:Ljava/io/OutputStream;
    :try_start_1
    move-object v0, v11

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 2994
    invoke-virtual/range {v16 .. v16}, Ljava/io/OutputStream;->flush()V

    .line 2996
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f080066

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_f
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_d

    .line 3018
    if-eqz v11, :cond_3

    .line 3020
    :try_start_2
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7

    .line 3023
    :cond_3
    :goto_2
    if-eqz v16, :cond_b

    .line 3025
    :try_start_3
    invoke-virtual/range {v16 .. v16}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-object/from16 v15, v16

    .line 3029
    .end local v7           #file:Ljava/io/File;
    .end local v16           #out:Ljava/io/OutputStream;
    .end local v19           #targetDir:Ljava/lang/String;
    .end local v20           #targetDirectory:Ljava/io/File;
    .restart local v15       #out:Ljava/io/OutputStream;
    :cond_4
    :goto_3
    return-void

    .line 2978
    :cond_5
    :try_start_4
    new-instance v3, Ljava/net/URL;

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v21

    move-object v0, v3

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 2980
    .local v3, Url:Ljava/net/URL;
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v21

    const-string v22, "/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 2981
    .local v17, path_buf:[Ljava/lang/String;
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v21, v0

    const/16 v22, 0x1

    sub-int v21, v21, v22

    aget-object v8, v17, v21

    .line 2982
    invoke-virtual {v3}, Ljava/net/URL;->openStream()Ljava/io/InputStream;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_5

    move-result-object v11

    goto/16 :goto_1

    .line 3026
    .end local v3           #Url:Ljava/net/URL;
    .end local v15           #out:Ljava/io/OutputStream;
    .end local v17           #path_buf:[Ljava/lang/String;
    .restart local v7       #file:Ljava/io/File;
    .restart local v16       #out:Ljava/io/OutputStream;
    .restart local v19       #targetDir:Ljava/lang/String;
    .restart local v20       #targetDirectory:Ljava/io/File;
    :catch_0
    move-exception v21

    move-object/from16 v15, v16

    .end local v16           #out:Ljava/io/OutputStream;
    .restart local v15       #out:Ljava/io/OutputStream;
    goto :goto_3

    .line 3001
    .end local v7           #file:Ljava/io/File;
    .end local v19           #targetDir:Ljava/lang/String;
    .end local v20           #targetDirectory:Ljava/io/File;
    :catch_1
    move-exception v21

    move-object/from16 v5, v21

    .line 3002
    .local v5, e:Landroid/content/ActivityNotFoundException;
    :goto_4
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mHandler:Lcom/android/email/activity/MessageView$MessageViewHandler;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/email/activity/MessageView$MessageViewHandler;->attachmentViewError()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 3018
    if-eqz v11, :cond_6

    .line 3020
    :try_start_6
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_8

    .line 3023
    :cond_6
    :goto_5
    if-eqz v15, :cond_4

    .line 3025
    :try_start_7
    invoke-virtual {v15}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_3

    .line 3026
    :catch_2
    move-exception v21

    goto :goto_3

    .line 3004
    .end local v5           #e:Landroid/content/ActivityNotFoundException;
    :catch_3
    move-exception v21

    move-object/from16 v13, v21

    .line 3005
    .local v13, ioe:Ljava/io/IOException;
    :goto_6
    :try_start_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f080067

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/widget/Toast;->show()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 3018
    if-eqz v11, :cond_7

    .line 3020
    :try_start_9
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    .line 3023
    :cond_7
    :goto_7
    if-eqz v15, :cond_4

    .line 3025
    :try_start_a
    invoke-virtual {v15}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    goto/16 :goto_3

    .line 3026
    :catch_4
    move-exception v21

    goto/16 :goto_3

    .line 3010
    .end local v13           #ioe:Ljava/io/IOException;
    :catch_5
    move-exception v21

    move-object/from16 v14, v21

    .line 3011
    .local v14, npe:Ljava/lang/NullPointerException;
    :goto_8
    :try_start_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f080067

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/widget/Toast;->show()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 3018
    if-eqz v11, :cond_8

    .line 3020
    :try_start_c
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_a

    .line 3023
    :cond_8
    :goto_9
    if-eqz v15, :cond_4

    .line 3025
    :try_start_d
    invoke-virtual {v15}, Ljava/io/OutputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6

    goto/16 :goto_3

    .line 3026
    :catch_6
    move-exception v21

    goto/16 :goto_3

    .line 3018
    .end local v14           #npe:Ljava/lang/NullPointerException;
    :catchall_0
    move-exception v21

    :goto_a
    if-eqz v11, :cond_9

    .line 3020
    :try_start_e
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_b

    .line 3023
    :cond_9
    :goto_b
    if-eqz v15, :cond_a

    .line 3025
    :try_start_f
    invoke-virtual {v15}, Ljava/io/OutputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_c

    .line 3026
    :cond_a
    :goto_c
    throw v21

    .line 3021
    .end local v15           #out:Ljava/io/OutputStream;
    .restart local v7       #file:Ljava/io/File;
    .restart local v16       #out:Ljava/io/OutputStream;
    .restart local v19       #targetDir:Ljava/lang/String;
    .restart local v20       #targetDirectory:Ljava/io/File;
    :catch_7
    move-exception v21

    goto/16 :goto_2

    .end local v7           #file:Ljava/io/File;
    .end local v16           #out:Ljava/io/OutputStream;
    .end local v19           #targetDir:Ljava/lang/String;
    .end local v20           #targetDirectory:Ljava/io/File;
    .restart local v5       #e:Landroid/content/ActivityNotFoundException;
    .restart local v15       #out:Ljava/io/OutputStream;
    :catch_8
    move-exception v21

    goto/16 :goto_5

    .end local v5           #e:Landroid/content/ActivityNotFoundException;
    .restart local v13       #ioe:Ljava/io/IOException;
    :catch_9
    move-exception v21

    goto :goto_7

    .end local v13           #ioe:Ljava/io/IOException;
    .restart local v14       #npe:Ljava/lang/NullPointerException;
    :catch_a
    move-exception v21

    goto :goto_9

    .end local v14           #npe:Ljava/lang/NullPointerException;
    :catch_b
    move-exception v22

    goto :goto_b

    .line 3026
    :catch_c
    move-exception v22

    goto :goto_c

    .line 3018
    .end local v15           #out:Ljava/io/OutputStream;
    .restart local v7       #file:Ljava/io/File;
    .restart local v16       #out:Ljava/io/OutputStream;
    .restart local v19       #targetDir:Ljava/lang/String;
    .restart local v20       #targetDirectory:Ljava/io/File;
    :catchall_1
    move-exception v21

    move-object/from16 v15, v16

    .end local v16           #out:Ljava/io/OutputStream;
    .restart local v15       #out:Ljava/io/OutputStream;
    goto :goto_a

    .line 3010
    .end local v15           #out:Ljava/io/OutputStream;
    .restart local v16       #out:Ljava/io/OutputStream;
    :catch_d
    move-exception v21

    move-object/from16 v14, v21

    move-object/from16 v15, v16

    .end local v16           #out:Ljava/io/OutputStream;
    .restart local v15       #out:Ljava/io/OutputStream;
    goto :goto_8

    .line 3004
    .end local v15           #out:Ljava/io/OutputStream;
    .restart local v16       #out:Ljava/io/OutputStream;
    :catch_e
    move-exception v21

    move-object/from16 v13, v21

    move-object/from16 v15, v16

    .end local v16           #out:Ljava/io/OutputStream;
    .restart local v15       #out:Ljava/io/OutputStream;
    goto/16 :goto_6

    .line 3001
    .end local v15           #out:Ljava/io/OutputStream;
    .restart local v16       #out:Ljava/io/OutputStream;
    :catch_f
    move-exception v21

    move-object/from16 v5, v21

    move-object/from16 v15, v16

    .end local v16           #out:Ljava/io/OutputStream;
    .restart local v15       #out:Ljava/io/OutputStream;
    goto/16 :goto_4

    .end local v15           #out:Ljava/io/OutputStream;
    .restart local v16       #out:Ljava/io/OutputStream;
    :cond_b
    move-object/from16 v15, v16

    .end local v16           #out:Ljava/io/OutputStream;
    .restart local v15       #out:Ljava/io/OutputStream;
    goto/16 :goto_3
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .parameter "state"

    .prologue
    .line 1154
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1155
    iget-wide v0, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 1156
    const-string v0, "messageId"

    iget-wide v1, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1160
    :cond_0
    return-void
.end method
