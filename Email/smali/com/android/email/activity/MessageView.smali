.class public Lcom/android/email/activity/MessageView;
.super Landroid/app/Activity;
.source "MessageView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/MessageView$18;,
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

    .line 212
    const-string v0, "<(?i)img\\s+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/email/activity/MessageView;->IMG_TAG_START_REGEX:Ljava/util/regex/Pattern;

    .line 214
    const-string v0, "(?i)http|https://"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/email/activity/MessageView;->WEB_URL_PROTOCOL:Ljava/util/regex/Pattern;

    .line 217
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

    .line 222
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "contact_presence"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/email/activity/MessageView;->PRESENCE_STATUS_PROJECTION:[Ljava/lang/String;

    .line 231
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v6, v0, v4

    const-string v1, "mailboxKey"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/email/activity/MessageView;->MESSAGEID_TO_MAILBOXID_PROJECTION:[Ljava/lang/String;

    .line 235
    sput v3, Lcom/android/email/activity/MessageView;->MESSAGEID_TO_MAILBOXID_COLUMN_MAILBOXID:I

    .line 236
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v6, v0, v4

    const-string v1, "accountKey"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/email/activity/MessageView;->MESSAGEID_TO_ACCOUNTID_PROJECTION:[Ljava/lang/String;

    .line 240
    sput v3, Lcom/android/email/activity/MessageView;->MESSAGEID_TO_ACCOUNTID_COLUMN_ACCOUNTID:I

    .line 401
    sput-boolean v3, Lcom/android/email/activity/MessageView;->mLoadMessageComplete:Z

    .line 403
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/android/email/activity/MessageView;->mCheckedAccountId:J

    .line 404
    sput-boolean v4, Lcom/android/email/activity/MessageView;->mIsEAS:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 173
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 298
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/email/activity/MessageView;->mPreviousMeetingResponse:I

    .line 336
    new-instance v0, Lcom/android/email/activity/MessageView$MessageViewHandler;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MessageView$MessageViewHandler;-><init>(Lcom/android/email/activity/MessageView;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mHandler:Lcom/android/email/activity/MessageView$MessageViewHandler;

    .line 338
    new-instance v0, Lcom/android/email/activity/MessageView$ControllerResults;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MessageView$ControllerResults;-><init>(Lcom/android/email/activity/MessageView;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mControllerCallback:Lcom/android/email/activity/MessageView$ControllerResults;

    .line 353
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/email/activity/MessageView;->mCurrentOrientation:I

    .line 369
    iput-boolean v2, p0, Lcom/android/email/activity/MessageView;->mLogView:Z

    .line 371
    iput-boolean v2, p0, Lcom/android/email/activity/MessageView;->mMultiTouch:Z

    .line 380
    iput v1, p0, Lcom/android/email/activity/MessageView;->mStartX:F

    .line 381
    iput v1, p0, Lcom/android/email/activity/MessageView;->mStartY:F

    .line 382
    iput-boolean v2, p0, Lcom/android/email/activity/MessageView;->mIsDragged:Z

    .line 393
    iput-boolean v2, p0, Lcom/android/email/activity/MessageView;->bForwardToOld:Z

    .line 394
    iput-object v3, p0, Lcom/android/email/activity/MessageView;->mCacheDir:Ljava/lang/String;

    .line 398
    iput-object v3, p0, Lcom/android/email/activity/MessageView;->mListTos:[Ljava/lang/String;

    .line 399
    iput-object v3, p0, Lcom/android/email/activity/MessageView;->mListCcs:[Ljava/lang/String;

    .line 406
    iput-boolean v2, p0, Lcom/android/email/activity/MessageView;->mRefreshedFromLoadMoreCB:Z

    .line 407
    iput-boolean v2, p0, Lcom/android/email/activity/MessageView;->mNeedToReloadMessage:Z

    .line 408
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/email/activity/MessageView;->mCurrentMessageID:J

    .line 2342
    iput-boolean v2, p0, Lcom/android/email/activity/MessageView;->mForwarding:Z

    .line 2343
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mForwarded:Ljava/lang/Boolean;

    .line 2690
    iput-boolean v2, p0, Lcom/android/email/activity/MessageView;->mDownloading:Z

    .line 3215
    iput-object v3, p0, Lcom/android/email/activity/MessageView;->mMenu:Landroid/view/Menu;

    .line 3216
    iput-boolean v2, p0, Lcom/android/email/activity/MessageView;->mSaveToCalendarEnabled:Z

    .line 3218
    iput-boolean v2, p0, Lcom/android/email/activity/MessageView;->ShowPicturesEnabled:Z

    .line 6249
    return-void
.end method

.method private IsEAS()Z
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 5516
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    .line 5518
    .local v1, context:Landroid/content/Context;
    sget-wide v4, Lcom/android/email/activity/MessageView;->mCheckedAccountId:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 5519
    iget-wide v4, p0, Lcom/android/email/activity/MessageView;->mAccountId:J

    sput-wide v4, Lcom/android/email/activity/MessageView;->mCheckedAccountId:J

    .line 5529
    :goto_0
    iget-wide v4, p0, Lcom/android/email/activity/MessageView;->mAccountId:J

    invoke-static {v1, v4, v5}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v0

    .line 5531
    .local v0, account:Lcom/android/email/provider/EmailContent$Account;
    if-nez v0, :cond_2

    .line 5532
    sput-boolean v8, Lcom/android/email/activity/MessageView;->mIsEAS:Z

    .line 5534
    sget-boolean v4, Lcom/android/email/activity/MessageView;->mIsEAS:Z

    .line 5549
    .end local v0           #account:Lcom/android/email/provider/EmailContent$Account;
    :goto_1
    return v4

    .line 5521
    :cond_0
    sget-wide v4, Lcom/android/email/activity/MessageView;->mCheckedAccountId:J

    iget-wide v6, p0, Lcom/android/email/activity/MessageView;->mAccountId:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 5523
    sget-boolean v4, Lcom/android/email/activity/MessageView;->mIsEAS:Z

    goto :goto_1

    .line 5526
    :cond_1
    iget-wide v4, p0, Lcom/android/email/activity/MessageView;->mAccountId:J

    sput-wide v4, Lcom/android/email/activity/MessageView;->mCheckedAccountId:J

    goto :goto_0

    .line 5537
    .restart local v0       #account:Lcom/android/email/provider/EmailContent$Account;
    :cond_2
    invoke-virtual {v0, v1}, Lcom/android/email/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/android/email/mail/Store$StoreInfo;->getStoreInfo(Ljava/lang/String;Landroid/content/Context;)Lcom/android/email/mail/Store$StoreInfo;

    move-result-object v2

    .line 5540
    .local v2, info:Lcom/android/email/mail/Store$StoreInfo;
    if-nez v2, :cond_3

    .line 5541
    sput-boolean v8, Lcom/android/email/activity/MessageView;->mIsEAS:Z

    .line 5543
    sget-boolean v4, Lcom/android/email/activity/MessageView;->mIsEAS:Z

    goto :goto_1

    .line 5546
    :cond_3
    iget-object v3, v2, Lcom/android/email/mail/Store$StoreInfo;->mScheme:Ljava/lang/String;

    .line 5547
    .local v3, scheme:Ljava/lang/String;
    const-string v4, "eas"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    sput-boolean v4, Lcom/android/email/activity/MessageView;->mIsEAS:Z

    .line 5549
    sget-boolean v4, Lcom/android/email/activity/MessageView;->mIsEAS:Z

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/email/activity/MessageView;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mLoadMoreDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/email/activity/MessageView;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mForwardingDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/email/activity/MessageView;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 173
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/MessageView;->doFinishLoadAttachment(J)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/email/activity/MessageView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 173
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->onDelete()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/email/activity/MessageView;)Lcom/android/email/MessagingController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mLegacyController:Lcom/android/email/MessagingController;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/email/activity/MessageView;)Lcom/android/email/activity/MessageView$MailBoxAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMoveListAdapter:Lcom/android/email/activity/MessageView$MailBoxAdapter;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/email/activity/MessageView;JLjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 173
    invoke-direct {p0, p1, p2, p3}, Lcom/android/email/activity/MessageView;->onMovePopupToOtherAccount(JLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/email/activity/MessageView;JJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 173
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/email/activity/MessageView;->onMove(JJ)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/email/activity/MessageView;)Lcom/android/email/activity/MessageView$MailBoxAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMoveListToOtherAccountAdapter:Lcom/android/email/activity/MessageView$MailBoxAdapter;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/email/activity/MessageView;JJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 173
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/email/activity/MessageView;->onMultiMoveOtherAccount(JJ)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/email/activity/MessageView;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 173
    iget-wide v0, p0, Lcom/android/email/activity/MessageView;->mAccountId:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/android/email/activity/MessageView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 173
    iget v0, p0, Lcom/android/email/activity/MessageView;->mSaveAttachmentsCount:I

    return v0
.end method

.method static synthetic access$2000(Lcom/android/email/activity/MessageView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 173
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->onReply()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/email/activity/MessageView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 173
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->onReplyAll()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/email/activity/MessageView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 173
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->onForward()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/email/activity/MessageView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 173
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->onForwardOld()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/email/activity/MessageView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 173
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageView;->onDisplayModeChange(I)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/email/activity/MessageView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 173
    iget v0, p0, Lcom/android/email/activity/MessageView;->mDisplayMode:I

    return v0
.end method

.method static synthetic access$2700(Lcom/android/email/activity/MessageView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 173
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageView;->onTextSizeChange(I)V

    return-void
.end method

.method static synthetic access$2800()I
    .locals 1

    .prologue
    .line 173
    sget v0, Lcom/android/email/activity/MessageView;->mTextSize:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/email/activity/MessageView;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/email/activity/MessageView;)Lcom/android/email/activity/MessageView$LoadPrevNextTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mLoadPrevNextTask:Lcom/android/email/activity/MessageView$LoadPrevNextTask;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/android/email/activity/MessageView;Lcom/android/email/activity/MessageView$LoadPrevNextTask;)Lcom/android/email/activity/MessageView$LoadPrevNextTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 173
    iput-object p1, p0, Lcom/android/email/activity/MessageView;->mLoadPrevNextTask:Lcom/android/email/activity/MessageView$LoadPrevNextTask;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/android/email/activity/MessageView;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mPrevNextCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$3102(Lcom/android/email/activity/MessageView;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 173
    iput-object p1, p0, Lcom/android/email/activity/MessageView;->mPrevNextCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$3200(Lcom/android/email/activity/MessageView;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 173
    iget-wide v0, p0, Lcom/android/email/activity/MessageView;->mMailboxId:J

    return-wide v0
.end method

.method static synthetic access$3400()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    sget-object v0, Lcom/android/email/activity/MessageView;->PRESENCE_STATUS_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/email/activity/MessageView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 173
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageView;->updateSenderPresence(I)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/email/activity/MessageView;)Lcom/android/email/provider/EmailContent$Message;
    .locals 1
    .parameter "x0"

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/email/activity/MessageView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 173
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->IsEAS()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3900(Lcom/android/email/activity/MessageView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 173
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->closePrevNextCursor()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/email/activity/MessageView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mLoadAttachmentName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/email/activity/MessageView;)Landroid/database/ContentObserver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mNextPrevObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/email/activity/MessageView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 173
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->repositionPrevNextCursor()V

    return-void
.end method

.method static synthetic access$4200()Landroid/content/Context;
    .locals 1

    .prologue
    .line 173
    sget-object v0, Lcom/android/email/activity/MessageView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4202(Landroid/content/Context;)Landroid/content/Context;
    .locals 0
    .parameter "x0"

    .prologue
    .line 173
    sput-object p0, Lcom/android/email/activity/MessageView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$4300(Lcom/android/email/activity/MessageView;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 173
    iget-wide v0, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    return-wide v0
.end method

.method static synthetic access$4400(Lcom/android/email/activity/MessageView;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMoreMessage:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/android/email/activity/MessageView;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->loadMoreMessage:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/android/email/activity/MessageView;Lcom/android/email/provider/EmailContent$Message;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 173
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/MessageView;->reloadUiFromMessage(Lcom/android/email/provider/EmailContent$Message;Z)V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/email/activity/MessageView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 173
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->startPresenceCheck()V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/email/activity/MessageView;)Lcom/android/email/activity/MessageView$MessageViewHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mHandler:Lcom/android/email/activity/MessageView$MessageViewHandler;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/android/email/activity/MessageView;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 173
    invoke-direct {p0, p1, p2, p3}, Lcom/android/email/activity/MessageView;->reloadUiFromBody(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$5000(Lcom/android/email/activity/MessageView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 173
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->checkITPolicy_AllowPOPIMAP()Z

    move-result v0

    return v0
.end method

.method static synthetic access$502(Lcom/android/email/activity/MessageView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 173
    iput-boolean p1, p0, Lcom/android/email/activity/MessageView;->mWaitToHideProgressDialog:Z

    return p1
.end method

.method static synthetic access$5100(Lcom/android/email/activity/MessageView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 173
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageView;->onMarkAsRead(Z)V

    return-void
.end method

.method static synthetic access$5200()[Lcom/android/email/activity/MessageView$BodyImageInfo;
    .locals 1

    .prologue
    .line 173
    sget-object v0, Lcom/android/email/activity/MessageView;->mBodyImageInfo:[Lcom/android/email/activity/MessageView$BodyImageInfo;

    return-object v0
.end method

.method static synthetic access$5202([Lcom/android/email/activity/MessageView$BodyImageInfo;)[Lcom/android/email/activity/MessageView$BodyImageInfo;
    .locals 0
    .parameter "x0"

    .prologue
    .line 173
    sput-object p0, Lcom/android/email/activity/MessageView;->mBodyImageInfo:[Lcom/android/email/activity/MessageView$BodyImageInfo;

    return-object p0
.end method

.method static synthetic access$5300()I
    .locals 1

    .prologue
    .line 173
    sget v0, Lcom/android/email/activity/MessageView;->mBodyImageCnt:I

    return v0
.end method

.method static synthetic access$5302(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 173
    sput p0, Lcom/android/email/activity/MessageView;->mBodyImageCnt:I

    return p0
.end method

.method static synthetic access$5400(Lcom/android/email/activity/MessageView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mHtmlText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5402(Lcom/android/email/activity/MessageView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 173
    iput-object p1, p0, Lcom/android/email/activity/MessageView;->mHtmlText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$5600(Lcom/android/email/activity/MessageView;Lcom/android/email/provider/EmailContent$Attachment;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 173
    invoke-direct {p0, p1, p2, p3}, Lcom/android/email/activity/MessageView;->addAttachment(Lcom/android/email/provider/EmailContent$Attachment;II)V

    return-void
.end method

.method static synthetic access$5700(Lcom/android/email/activity/MessageView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 173
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->arrangeAttachments()V

    return-void
.end method

.method static synthetic access$5800(Lcom/android/email/activity/MessageView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 173
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->checkITPolicy_AllowHTMLEmail()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5900(Lcom/android/email/activity/MessageView;)Lcom/android/email/activity/MessageView$LoadEmbeddedAttachmentsTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mLoadEmbeddedAttachmentsTask:Lcom/android/email/activity/MessageView$LoadEmbeddedAttachmentsTask;

    return-object v0
.end method

.method static synthetic access$5902(Lcom/android/email/activity/MessageView;Lcom/android/email/activity/MessageView$LoadEmbeddedAttachmentsTask;)Lcom/android/email/activity/MessageView$LoadEmbeddedAttachmentsTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 173
    iput-object p1, p0, Lcom/android/email/activity/MessageView;->mLoadEmbeddedAttachmentsTask:Lcom/android/email/activity/MessageView$LoadEmbeddedAttachmentsTask;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/email/activity/MessageView;)Landroid/webkit/WebView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageContentView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/android/email/activity/MessageView;)Lcom/android/email/activity/MessageView$ControllerResults;
    .locals 1
    .parameter "x0"

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mControllerCallback:Lcom/android/email/activity/MessageView$ControllerResults;

    return-object v0
.end method

.method static synthetic access$6100(Lcom/android/email/activity/MessageView;)Lcom/android/email/Controller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mController:Lcom/android/email/Controller;

    return-object v0
.end method

.method static synthetic access$6200(Lcom/android/email/activity/MessageView;)Lcom/android/email/winset/NonScrollView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    return-object v0
.end method

.method static synthetic access$6300(Lcom/android/email/activity/MessageView;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mAllDownloadIcon:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$6400(Lcom/android/email/activity/MessageView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 173
    iget-boolean v0, p0, Lcom/android/email/activity/MessageView;->mAlldownloadIconVisible:Z

    return v0
.end method

.method static synthetic access$6500(Lcom/android/email/activity/MessageView;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 173
    iget-wide v0, p0, Lcom/android/email/activity/MessageView;->mWaitForLoadMessageId:J

    return-wide v0
.end method

.method static synthetic access$6502(Lcom/android/email/activity/MessageView;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 173
    iput-wide p1, p0, Lcom/android/email/activity/MessageView;->mWaitForLoadMessageId:J

    return-wide p1
.end method

.method static synthetic access$6602(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 173
    sput-boolean p0, Lcom/android/email/activity/MessageView;->mLoadMessageComplete:Z

    return p0
.end method

.method static synthetic access$6700(Lcom/android/email/activity/MessageView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 173
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->cancelAllTasks()V

    return-void
.end method

.method static synthetic access$6800(Lcom/android/email/activity/MessageView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 173
    iget-boolean v0, p0, Lcom/android/email/activity/MessageView;->mNeedToReloadMessage:Z

    return v0
.end method

.method static synthetic access$6802(Lcom/android/email/activity/MessageView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 173
    iput-boolean p1, p0, Lcom/android/email/activity/MessageView;->mNeedToReloadMessage:Z

    return p1
.end method

.method static synthetic access$6900(Lcom/android/email/activity/MessageView;)Lcom/android/email/activity/MessageView$LoadMessageTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mLoadMessageTask:Lcom/android/email/activity/MessageView$LoadMessageTask;

    return-object v0
.end method

.method static synthetic access$6902(Lcom/android/email/activity/MessageView;Lcom/android/email/activity/MessageView$LoadMessageTask;)Lcom/android/email/activity/MessageView$LoadMessageTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 173
    iput-object p1, p0, Lcom/android/email/activity/MessageView;->mLoadMessageTask:Lcom/android/email/activity/MessageView$LoadMessageTask;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/email/activity/MessageView;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mAttachments:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$7000(Lcom/android/email/activity/MessageView;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 173
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/MessageView;->updateAttachmentThumbnail(J)V

    return-void
.end method

.method static synthetic access$7100(Lcom/android/email/activity/MessageView;)Lcom/android/email/activity/MessageView$LoadBodyTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mLoadBodyTask:Lcom/android/email/activity/MessageView$LoadBodyTask;

    return-object v0
.end method

.method static synthetic access$7102(Lcom/android/email/activity/MessageView;Lcom/android/email/activity/MessageView$LoadBodyTask;)Lcom/android/email/activity/MessageView$LoadBodyTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 173
    iput-object p1, p0, Lcom/android/email/activity/MessageView;->mLoadBodyTask:Lcom/android/email/activity/MessageView$LoadBodyTask;

    return-object p1
.end method

.method static synthetic access$7202(Lcom/android/email/activity/MessageView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 173
    iput-boolean p1, p0, Lcom/android/email/activity/MessageView;->mRefreshedFromLoadMoreCB:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/email/activity/MessageView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 173
    iget-boolean v0, p0, Lcom/android/email/activity/MessageView;->mForwarding:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/email/activity/MessageView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 173
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->doForward()V

    return-void
.end method

.method public static actionView(Landroid/content/Context;JJ)V
    .locals 2
    .parameter "context"
    .parameter "messageId"
    .parameter "mailboxId"

    .prologue
    .line 807
    sput-object p0, Lcom/android/email/activity/MessageView;->mContext:Landroid/content/Context;

    .line 808
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/MessageView;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 809
    .local v0, i:Landroid/content/Intent;
    const-string v1, "com.android.email.MessageView_message_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 810
    const-string v1, "com.android.email.MessageView_mailbox_id"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 811
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 812
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
    .line 821
    sput-object p0, Lcom/android/email/activity/MessageView;->mContext:Landroid/content/Context;

    .line 822
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/MessageView;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 823
    .local v0, i:Landroid/content/Intent;
    const-string v1, "com.android.email.MessageView_message_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 824
    const-string v1, "com.android.email.MessageView_mailbox_id"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 825
    const-string v1, "com.android.email.MessageView_display_mode"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 826
    const-string v1, "com.android.email.MessageView_text_size"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 827
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 828
    return-void
.end method

.method private addAttachment(Lcom/android/email/provider/EmailContent$Attachment;II)V
    .locals 22
    .parameter "attachment"
    .parameter "fontAttr"
    .parameter "bgResource"

    .prologue
    .line 3746
    new-instance v12, Lcom/android/email/activity/MessageView$AttachmentInfo;

    const/4 v4, 0x0

    invoke-direct {v12, v4}, Lcom/android/email/activity/MessageView$AttachmentInfo;-><init>(Lcom/android/email/activity/MessageView$1;)V

    .line 3747
    .local v12, attachmentInfo:Lcom/android/email/activity/MessageView$AttachmentInfo;
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Attachment;->mSize:J

    move-wide v4, v0

    iput-wide v4, v12, Lcom/android/email/activity/MessageView$AttachmentInfo;->size:J

    .line 3748
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    move-object v4, v0

    iput-object v4, v12, Lcom/android/email/activity/MessageView$AttachmentInfo;->contentType:Ljava/lang/String;

    .line 3749
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    move-object v4, v0

    iput-object v4, v12, Lcom/android/email/activity/MessageView$AttachmentInfo;->name:Ljava/lang/String;

    .line 3750
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Attachment;->mId:J

    move-wide v4, v0

    iput-wide v4, v12, Lcom/android/email/activity/MessageView$AttachmentInfo;->attachmentId:J

    .line 3751
    const/4 v15, 0x0

    .line 3754
    .local v15, bOpenAttachment:Z
    iget-object v4, v12, Lcom/android/email/activity/MessageView$AttachmentInfo;->contentType:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, v12, Lcom/android/email/activity/MessageView$AttachmentInfo;->contentType:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 3755
    :cond_0
    const-string v4, "application/octet-stream"

    iput-object v4, v12, Lcom/android/email/activity/MessageView$AttachmentInfo;->contentType:Ljava/lang/String;

    .line 3756
    const-string v4, "View >>"

    const-string v5, "+++ r2d209 check mime type 1 : null "

    invoke-static {v4, v5}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 3759
    :cond_1
    iget-object v4, v12, Lcom/android/email/activity/MessageView$AttachmentInfo;->name:Ljava/lang/String;

    if-eqz v4, :cond_4

    if-nez v15, :cond_4

    .line 3761
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

    .line 3762
    const/4 v15, 0x1

    .line 3765
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

    .line 3766
    :cond_2
    iget-object v4, v12, Lcom/android/email/activity/MessageView$AttachmentInfo;->contentType:Ljava/lang/String;

    const-string v5, "audio/amr-wb"

    if-eq v4, v5, :cond_3

    .line 3767
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mController:Lcom/android/email/Controller;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/activity/MessageView;->mAccountId:J

    move-wide v5, v0

    iget-wide v7, v12, Lcom/android/email/activity/MessageView$AttachmentInfo;->attachmentId:J

    const-string v9, "audio/amr-wb"

    invoke-virtual/range {v4 .. v9}, Lcom/android/email/Controller;->changeMimeType(JJLjava/lang/String;)Z

    .line 3768
    const-string v4, "audio/amr-wb"

    iput-object v4, v12, Lcom/android/email/activity/MessageView$AttachmentInfo;->contentType:Ljava/lang/String;

    .line 3801
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

    .line 3804
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MessageView;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v18

    .line 3805
    .local v18, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f03002e

    const/4 v5, 0x0

    move-object/from16 v0, v18

    move v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v21

    .line 3807
    .local v21, view:Landroid/view/View;
    const v4, 0x7f0700b0

    move-object/from16 v0, v21

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 3808
    .local v14, attachmentName:Landroid/widget/TextView;
    const v4, 0x7f0700d7

    move-object/from16 v0, v21

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 3809
    .local v13, attachmentInfoView:Landroid/widget/TextView;
    const v4, 0x7f0700d5

    move-object/from16 v0, v21

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    .line 3811
    .local v11, attachmentIcon:Landroid/widget/ImageView;
    const v4, 0x7f0700d6

    move-object/from16 v0, v21

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    .line 3813
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

    .line 3818
    :cond_5
    const/4 v15, 0x0

    .line 3824
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

    .line 3828
    :cond_6
    const/16 v4, 0x8

    invoke-virtual {v10, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 3831
    :cond_7
    iget-wide v4, v12, Lcom/android/email/activity/MessageView$AttachmentInfo;->size:J

    const-wide/32 v6, 0xa00000

    cmp-long v4, v4, v6

    if-lez v4, :cond_8

    .line 3833
    const/4 v15, 0x0

    .line 3834
    const/16 v4, 0x8

    invoke-virtual {v10, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 3837
    :cond_8
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/activity/MessageView;->mMailboxId:J

    move-wide v4, v0

    move-object/from16 v0, p0

    move-wide v1, v4

    invoke-static {v0, v1, v2}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v19

    .line 3838
    .local v19, mailbox:Lcom/android/email/provider/EmailContent$Mailbox;
    if-eqz v19, :cond_a

    .line 3839
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

    .line 3840
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

    .line 3841
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

    .line 3845
    :cond_9
    const/4 v15, 0x0

    .line 3846
    const/16 v4, 0x8

    invoke-virtual {v10, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 3847
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/email/activity/MessageView;->mAlldownloadIconVisible:Z

    .line 3856
    :cond_a
    :goto_2
    iput-object v10, v12, Lcom/android/email/activity/MessageView$AttachmentInfo;->downloadButton:Landroid/widget/Button;

    .line 3857
    iput-object v11, v12, Lcom/android/email/activity/MessageView$AttachmentInfo;->iconView:Landroid/widget/ImageView;

    .line 3859
    move-object/from16 v0, v21

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 3862
    if-eqz v15, :cond_b

    .line 3864
    move-object v0, v14

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3865
    invoke-virtual {v14, v12}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 3866
    move-object v0, v11

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3867
    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 3870
    :cond_b
    iget-object v4, v12, Lcom/android/email/activity/MessageView$AttachmentInfo;->name:Ljava/lang/String;

    invoke-virtual {v14, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3878
    new-instance v16, Ljava/lang/StringBuffer;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuffer;-><init>()V

    .line 3879
    .local v16, fileSize:Ljava/lang/StringBuffer;
    const-string v4, "("

    move-object/from16 v0, v16

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3880
    iget-wide v4, v12, Lcom/android/email/activity/MessageView$AttachmentInfo;->size:J

    long-to-float v4, v4

    invoke-static {v4}, Lcom/android/email/Utility;->formatSize(F)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3881
    const-string v4, ")"

    move-object/from16 v0, v16

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3882
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3885
    move-object/from16 v0, p0

    move-object v1, v12

    invoke-direct {v0, v1}, Lcom/android/email/activity/MessageView;->getPreviewIcon(Lcom/android/email/activity/MessageView$AttachmentInfo;)Landroid/graphics/Bitmap;

    move-result-object v20

    .line 3886
    .local v20, previewIcon:Landroid/graphics/Bitmap;
    if-eqz v20, :cond_c

    .line 3887
    move-object v0, v11

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 3916
    :cond_c
    move-object v0, v10

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3917
    invoke-virtual {v10, v12}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 3919
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mAttachments:Landroid/widget/LinearLayout;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    const/4 v5, 0x1

    if-lt v4, v5, :cond_d

    .line 3921
    new-instance v17, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x2

    const/high16 v6, 0x3f80

    move-object/from16 v0, v17

    move v1, v4

    move v2, v5

    move v3, v6

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 3924
    .local v17, forTopMargin:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v4, -0x7

    move v0, v4

    move-object/from16 v1, v17

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 3925
    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3928
    .end local v17           #forTopMargin:Landroid/widget/LinearLayout$LayoutParams;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mAttachments:Landroid/widget/LinearLayout;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 3929
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mAttachmentContainer:Landroid/view/View;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/view/View;->isShown()Z

    move-result v4

    if-nez v4, :cond_e

    .line 3931
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mAttachmentContainer:Landroid/view/View;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 3939
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/email/winset/NonScrollView;->isShown()Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_f

    .line 3940
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mAttachments:Landroid/widget/LinearLayout;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3944
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/email/activity/MessageView;->mAlldownloadIconVisible:Z

    move v4, v0

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1a

    .line 3945
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mAllDownloadIcon:Landroid/widget/TextView;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3952
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

    .line 3957
    return-void

    .line 3772
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

    .line 3773
    :cond_11
    iget-object v4, v12, Lcom/android/email/activity/MessageView$AttachmentInfo;->contentType:Ljava/lang/String;

    const-string v5, "audio/aac"

    if-eq v4, v5, :cond_3

    .line 3774
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mController:Lcom/android/email/Controller;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/activity/MessageView;->mAccountId:J

    move-wide v5, v0

    iget-wide v7, v12, Lcom/android/email/activity/MessageView$AttachmentInfo;->attachmentId:J

    const-string v9, "audio/aac"

    invoke-virtual/range {v4 .. v9}, Lcom/android/email/Controller;->changeMimeType(JJLjava/lang/String;)Z

    .line 3775
    const-string v4, "audio/aac"

    iput-object v4, v12, Lcom/android/email/activity/MessageView$AttachmentInfo;->contentType:Ljava/lang/String;

    goto/16 :goto_0

    .line 3779
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

    .line 3780
    :cond_13
    iget-object v4, v12, Lcom/android/email/activity/MessageView$AttachmentInfo;->contentType:Ljava/lang/String;

    const-string v5, "audio/ogg"

    if-eq v4, v5, :cond_3

    .line 3781
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mController:Lcom/android/email/Controller;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/activity/MessageView;->mAccountId:J

    move-wide v5, v0

    iget-wide v7, v12, Lcom/android/email/activity/MessageView$AttachmentInfo;->attachmentId:J

    const-string v9, "audio/ogg"

    invoke-virtual/range {v4 .. v9}, Lcom/android/email/Controller;->changeMimeType(JJLjava/lang/String;)Z

    .line 3782
    const-string v4, "audio/ogg"

    iput-object v4, v12, Lcom/android/email/activity/MessageView$AttachmentInfo;->contentType:Ljava/lang/String;

    goto/16 :goto_0

    .line 3786
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

    .line 3787
    :cond_15
    iget-object v4, v12, Lcom/android/email/activity/MessageView$AttachmentInfo;->contentType:Ljava/lang/String;

    const-string v5, "video/mp4"

    if-eq v4, v5, :cond_3

    .line 3788
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mController:Lcom/android/email/Controller;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/activity/MessageView;->mAccountId:J

    move-wide v5, v0

    iget-wide v7, v12, Lcom/android/email/activity/MessageView$AttachmentInfo;->attachmentId:J

    const-string v9, "video/mp4"

    invoke-virtual/range {v4 .. v9}, Lcom/android/email/Controller;->changeMimeType(JJLjava/lang/String;)Z

    .line 3789
    const-string v4, "video/mp4"

    iput-object v4, v12, Lcom/android/email/activity/MessageView$AttachmentInfo;->contentType:Ljava/lang/String;

    goto/16 :goto_0

    .line 3793
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

    .line 3794
    :cond_17
    iget-object v4, v12, Lcom/android/email/activity/MessageView$AttachmentInfo;->contentType:Ljava/lang/String;

    const-string v5, "audio/amr"

    if-eq v4, v5, :cond_3

    .line 3795
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mController:Lcom/android/email/Controller;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/activity/MessageView;->mAccountId:J

    move-wide v5, v0

    iget-wide v7, v12, Lcom/android/email/activity/MessageView$AttachmentInfo;->attachmentId:J

    const-string v9, "audio/amr"

    invoke-virtual/range {v4 .. v9}, Lcom/android/email/Controller;->changeMimeType(JJLjava/lang/String;)Z

    .line 3796
    const-string v4, "audio/amr"

    iput-object v4, v12, Lcom/android/email/activity/MessageView$AttachmentInfo;->contentType:Ljava/lang/String;

    goto/16 :goto_0

    .line 3821
    .restart local v10       #attachmentDownload:Landroid/widget/Button;
    .restart local v11       #attachmentIcon:Landroid/widget/ImageView;
    .restart local v13       #attachmentInfoView:Landroid/widget/TextView;
    .restart local v14       #attachmentName:Landroid/widget/TextView;
    .restart local v18       #inflater:Landroid/view/LayoutInflater;
    .restart local v21       #view:Landroid/view/View;
    :cond_18
    const/4 v15, 0x1

    goto/16 :goto_1

    .line 3851
    .restart local v19       #mailbox:Lcom/android/email/provider/EmailContent$Mailbox;
    :cond_19
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/email/activity/MessageView;->mAlldownloadIconVisible:Z

    goto/16 :goto_2

    .line 3948
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
    .line 2263
    iget-object v4, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    iget-object v4, v4, Lcom/android/email/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/email/mail/Address;->unpackFirst(Ljava/lang/String;)Lcom/android/email/mail/Address;

    move-result-object v2

    .line 2265
    .local v2, senderEmail:Lcom/android/email/mail/Address;
    const-string v4, "mailto"

    invoke-virtual {v2}, Lcom/android/email/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2266
    .local v1, mailUri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.android.contacts.action.SHOW_OR_CREATE_CONTACT"

    invoke-direct {v0, v4, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2270
    .local v0, intent:Landroid/content/Intent;
    const-string v4, "com.android.contacts.action.CREATE_DESCRIPTION"

    invoke-virtual {v2}, Lcom/android/email/mail/Address;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2274
    invoke-virtual {v2}, Lcom/android/email/mail/Address;->getPersonal()Ljava/lang/String;

    move-result-object v3

    .line 2275
    .local v3, senderPersonal:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2276
    const-string v4, "name"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2279
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageView;->startActivity(Landroid/content/Intent;)V

    .line 2280
    return-void
.end method

.method private arrangeAttachments()V
    .locals 12

    .prologue
    const/16 v11, 0x8

    const/4 v10, 0x1

    const/4 v8, 0x0

    const-string v9, ""

    .line 4660
    iget-object v7, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    invoke-virtual {v7}, Lcom/android/email/winset/NonScrollView;->isShown()Z

    move-result v7

    if-ne v7, v10, :cond_1

    iget-object v7, p0, Lcom/android/email/activity/MessageView;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v7

    if-le v7, v10, :cond_1

    .line 4661
    iget-object v7, p0, Lcom/android/email/activity/MessageView;->mAttachmentContainer:Landroid/view/View;

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 4662
    iget-object v7, p0, Lcom/android/email/activity/MessageView;->mAttachmentInnerContainer:Landroid/view/View;

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 4663
    iget-object v7, p0, Lcom/android/email/activity/MessageView;->mAttachmentsHeader:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4664
    iget-object v7, p0, Lcom/android/email/activity/MessageView;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4665
    iget-object v7, p0, Lcom/android/email/activity/MessageView;->mAllDownloadIcon:Landroid/widget/TextView;

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4667
    iget-object v7, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    const v8, 0x7f0700e9

    invoke-virtual {v7, v8}, Lcom/android/email/winset/NonScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    .line 4668
    .local v1, attachmentsExpander:Landroid/widget/ToggleButton;
    const-string v7, ""

    invoke-virtual {v1, v9}, Landroid/widget/ToggleButton;->setText(Ljava/lang/CharSequence;)V

    .line 4669
    const-string v7, ""

    invoke-virtual {v1, v9}, Landroid/widget/ToggleButton;->setTextOff(Ljava/lang/CharSequence;)V

    .line 4670
    const-string v7, ""

    invoke-virtual {v1, v9}, Landroid/widget/ToggleButton;->setTextOn(Ljava/lang/CharSequence;)V

    .line 4672
    new-instance v7, Lcom/android/email/activity/MessageView$17;

    invoke-direct {v7, p0}, Lcom/android/email/activity/MessageView$17;-><init>(Lcom/android/email/activity/MessageView;)V

    invoke-virtual {v1, v7}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4700
    iget-object v7, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    const v8, 0x7f0700a2

    invoke-virtual {v7, v8}, Lcom/android/email/winset/NonScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 4701
    .local v4, attachmentsHeaderInfo:Landroid/widget/TextView;
    const-wide/16 v2, 0x0

    .line 4702
    .local v2, attachmentsFileSize:J
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    iget-object v7, p0, Lcom/android/email/activity/MessageView;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v7

    if-ge v5, v7, :cond_0

    .line 4703
    iget-object v7, p0, Lcom/android/email/activity/MessageView;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 4704
    .local v6, view:Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageView$AttachmentInfo;

    .line 4705
    .local v0, attachmentInfo:Lcom/android/email/activity/MessageView$AttachmentInfo;
    iget-wide v7, v0, Lcom/android/email/activity/MessageView$AttachmentInfo;->size:J

    add-long/2addr v2, v7

    .line 4702
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 4715
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

    const v8, 0x7f080166

    invoke-virtual {p0, v8}, Lcom/android/email/activity/MessageView;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ("

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

    .line 4724
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

    .line 1306
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mLoadMessageTask:Lcom/android/email/activity/MessageView$LoadMessageTask;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->cancelTask(Landroid/os/AsyncTask;)V

    .line 1307
    iput-object v1, p0, Lcom/android/email/activity/MessageView;->mLoadMessageTask:Lcom/android/email/activity/MessageView$LoadMessageTask;

    .line 1308
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mLoadBodyTask:Lcom/android/email/activity/MessageView$LoadBodyTask;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->cancelTask(Landroid/os/AsyncTask;)V

    .line 1309
    iput-object v1, p0, Lcom/android/email/activity/MessageView;->mLoadBodyTask:Lcom/android/email/activity/MessageView$LoadBodyTask;

    .line 1310
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mLoadAttachmentsTask:Lcom/android/email/activity/MessageView$LoadAttachmentsTask;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->cancelTask(Landroid/os/AsyncTask;)V

    .line 1311
    iput-object v1, p0, Lcom/android/email/activity/MessageView;->mLoadAttachmentsTask:Lcom/android/email/activity/MessageView$LoadAttachmentsTask;

    .line 1312
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mLoadPrevNextTask:Lcom/android/email/activity/MessageView$LoadPrevNextTask;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->cancelTask(Landroid/os/AsyncTask;)V

    .line 1313
    iput-object v1, p0, Lcom/android/email/activity/MessageView;->mLoadPrevNextTask:Lcom/android/email/activity/MessageView$LoadPrevNextTask;

    .line 1314
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mPresenceCheckTask:Lcom/android/email/activity/MessageView$PresenceCheckTask;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->cancelTask(Landroid/os/AsyncTask;)V

    .line 1315
    iput-object v1, p0, Lcom/android/email/activity/MessageView;->mPresenceCheckTask:Lcom/android/email/activity/MessageView$PresenceCheckTask;

    .line 1316
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mChangeDisplayModeTask:Lcom/android/email/activity/MessageView$ChangeDisplayModeTask;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->cancelTask(Landroid/os/AsyncTask;)V

    .line 1317
    iput-object v1, p0, Lcom/android/email/activity/MessageView;->mChangeDisplayModeTask:Lcom/android/email/activity/MessageView$ChangeDisplayModeTask;

    .line 1318
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mTextSizeTask:Lcom/android/email/activity/MessageView$ChangeTextSizeTask;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->cancelTask(Landroid/os/AsyncTask;)V

    .line 1319
    iput-object v1, p0, Lcom/android/email/activity/MessageView;->mTextSizeTask:Lcom/android/email/activity/MessageView$ChangeTextSizeTask;

    .line 1320
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mLoadEmbeddedAttachmentsTask:Lcom/android/email/activity/MessageView$LoadEmbeddedAttachmentsTask;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->cancelTask(Landroid/os/AsyncTask;)V

    .line 1321
    iput-object v1, p0, Lcom/android/email/activity/MessageView;->mLoadEmbeddedAttachmentsTask:Lcom/android/email/activity/MessageView$LoadEmbeddedAttachmentsTask;

    .line 1322
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
    .line 1300
    .local p0, task:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<***>;"
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 1301
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 1303
    :cond_0
    return-void
.end method

.method private changeLoadMoreBtnText(Ljava/lang/String;)V
    .locals 2
    .parameter "btnTitle"

    .prologue
    .line 6369
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->loadMoreMessage:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 6370
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "jebarlin >>> Changing the Button Text >>>>>>>>>>>>>>>>>>>>>>>>>>>>"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 6371
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->loadMoreMessage:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 6373
    :cond_0
    return-void
.end method

.method private checkITPolicy_AllowAttachmentDownload()Z
    .locals 2

    .prologue
    .line 5457
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "11111 MessageView.java >>>>> checkITPolicy_AllowAttachmentDownload()  >>>>> 4600"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 5465
    invoke-static {p0}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/SecurityPolicy;->IsAllowAttachmentDownload()Z

    move-result v0

    return v0
.end method

.method private checkITPolicy_AllowHTMLEmail()Z
    .locals 2

    .prologue
    .line 5479
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "11111 MessageView.java >>>>> checkITPolicy_AllowHTMLEmail()  >>>>> 4513"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 5491
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
    .line 5444
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "11111 MessageView.java >>>>> checkITPolicy_AllowPOPIMAP()  >>>>> 4500"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 5445
    invoke-static {p0}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/SecurityPolicy;->IsAllowPOPIMAPEmailSetted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5447
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->IsEAS()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5449
    const/4 v0, 0x0

    .line 5452
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private checkITPolicy_getAllowedMaxAttachmentSize()I
    .locals 2

    .prologue
    .line 5470
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "11111 MessageView.java >>>>> checkITPolicy_getAllowedMaxAttachmentSize()  >>>>> 4700"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 5472
    invoke-static {p0}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/SecurityPolicy;->getAllowedMaxAttachmentSize()I

    move-result v0

    return v0
.end method

.method private closePrevNextCursor()V
    .locals 2

    .prologue
    .line 1292
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mPrevNextCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 1293
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mPrevNextCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/email/activity/MessageView;->mNextPrevObserver:Landroid/database/ContentObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1294
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mPrevNextCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1295
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mPrevNextCursor:Landroid/database/Cursor;

    .line 1297
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

    .line 2592
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2593
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    move-object v7, v2

    .line 2665
    :goto_0
    return-object v7

    .line 2597
    :cond_0
    const/16 v7, 0x2e

    invoke-virtual {p1, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    .line 2601
    .local v5, index:I
    const/4 v4, 0x2

    .local v4, i:I
    :goto_1
    const v7, 0x7fffffff

    if-ge v4, v7, :cond_5

    .line 2604
    const/4 v7, -0x1

    if-eq v5, v7, :cond_3

    .line 2605
    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {p1, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 2606
    .local v6, name:Ljava/lang/String;
    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 2607
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

    .line 2615
    .end local v1           #extension:Ljava/lang/String;
    .end local v6           #name:Ljava/lang/String;
    .local v3, filename_temp:Ljava/lang/String;
    :goto_4
    new-instance v2, Ljava/io/File;

    .end local v2           #file:Ljava/io/File;
    invoke-direct {v2, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2622
    .end local v3           #filename_temp:Ljava/lang/String;
    .restart local v2       #file:Ljava/io/File;
    :goto_5
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_4

    move-object v7, v2

    .line 2623
    goto :goto_0

    .restart local v1       #extension:Ljava/lang/String;
    .restart local v6       #name:Ljava/lang/String;
    :cond_1
    move-object v8, v6

    .line 2607
    goto :goto_2

    :cond_2
    move-object v8, v1

    goto :goto_3

    .line 2613
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

    .line 2616
    .end local v2           #file:Ljava/io/File;
    .end local v3           #filename_temp:Ljava/lang/String;
    :catch_0
    move-exception v7

    move-object v0, v7

    .line 2617
    .local v0, eI:Ljava/lang/Exception;
    const-string v7, "View >>"

    const-string v8, "createUniqueFile || Exception"

    invoke-static {v7, v8}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 2618
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2619
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

    .line 2601
    .end local v0           #eI:Ljava/lang/Exception;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 2665
    :cond_5
    const/4 v7, 0x0

    goto/16 :goto_0
.end method

.method private doFinishLoadAttachment(J)V
    .locals 22
    .parameter "attachmentId"

    .prologue
    .line 6037
    invoke-static/range {p0 .. p2}, Lcom/android/email/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Attachment;

    move-result-object v4

    .line 6039
    .local v4, attachment:Lcom/android/email/provider/EmailContent$Attachment;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/activity/MessageView;->mAccountId:J

    move-wide/from16 v18, v0

    move-object v0, v4

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Attachment;->mId:J

    move-wide/from16 v20, v0

    invoke-static/range {v18 .. v21}, Lcom/android/email/provider/AttachmentProvider;->getAttachmentUri(JJ)Landroid/net/Uri;

    move-result-object v5

    .line 6046
    .local v5, attachmentUri:Landroid/net/Uri;
    const/4 v7, 0x0

    .line 6049
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

    .line 6059
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/email/activity/MessageView;->mLoadAttachmentSave:Z

    move/from16 v18, v0

    if-eqz v18, :cond_6

    .line 6060
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

    .line 6062
    const/4 v11, 0x0

    .line 6063
    .local v11, in:Ljava/io/InputStream;
    const/4 v15, 0x0

    .line 6065
    .local v15, out:Ljava/io/OutputStream;
    :try_start_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v18

    move-object v0, v4

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v19}, Lcom/android/email/activity/MessageView;->createUniqueFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    .line 6067
    .local v9, file:Ljava/io/File;
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MessageView;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v11

    .line 6068
    new-instance v16, Ljava/io/FileOutputStream;

    move-object/from16 v0, v16

    move-object v1, v9

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_4

    .line 6069
    .end local v15           #out:Ljava/io/OutputStream;
    .local v16, out:Ljava/io/OutputStream;
    :try_start_2
    move-object v0, v11

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 6070
    invoke-virtual/range {v16 .. v16}, Ljava/io/OutputStream;->flush()V

    .line 6072
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

    .line 6077
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

    .line 6094
    if-eqz v11, :cond_0

    .line 6096
    :try_start_3
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_c

    .line 6099
    :cond_0
    :goto_0
    if-eqz v16, :cond_12

    .line 6101
    :try_start_4
    invoke-virtual/range {v16 .. v16}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-object/from16 v15, v16

    .line 6196
    .end local v9           #file:Ljava/io/File;
    .end local v11           #in:Ljava/io/InputStream;
    .end local v16           #out:Ljava/io/OutputStream;
    :cond_1
    :goto_1
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/email/activity/MessageView;->mDownloading:Z

    .line 6198
    :goto_2
    return-void

    .line 6050
    :catch_0
    move-exception v18

    move-object/from16 v14, v18

    .line 6051
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

    .line 6102
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

    .line 6079
    .end local v9           #file:Ljava/io/File;
    :catch_2
    move-exception v18

    move-object/from16 v13, v18

    .line 6080
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

    .line 6094
    if-eqz v11, :cond_2

    .line 6096
    :try_start_6
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_d

    .line 6099
    :cond_2
    :goto_4
    if-eqz v15, :cond_1

    .line 6101
    :try_start_7
    invoke-virtual {v15}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_1

    .line 6102
    :catch_3
    move-exception v18

    goto :goto_1

    .line 6085
    .end local v13           #ioe:Ljava/io/IOException;
    :catch_4
    move-exception v18

    move-object/from16 v14, v18

    .line 6086
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

    .line 6094
    if-eqz v11, :cond_3

    .line 6096
    :try_start_9
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_e

    .line 6099
    :cond_3
    :goto_6
    if-eqz v15, :cond_1

    .line 6101
    :try_start_a
    invoke-virtual {v15}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    goto :goto_1

    .line 6102
    :catch_5
    move-exception v18

    goto :goto_1

    .line 6094
    .end local v14           #npe:Ljava/lang/NullPointerException;
    :catchall_0
    move-exception v18

    :goto_7
    if-eqz v11, :cond_4

    .line 6096
    :try_start_b
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_f

    .line 6099
    :cond_4
    :goto_8
    if-eqz v15, :cond_5

    .line 6101
    :try_start_c
    invoke-virtual {v15}, Ljava/io/OutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_10

    .line 6102
    :cond_5
    :goto_9
    throw v18

    .line 6107
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

    .line 6108
    new-instance v12, Landroid/content/Intent;

    const-string v18, "android.intent.action.VIEW"

    move-object v0, v12

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6110
    .local v12, intent:Landroid/content/Intent;
    const-string v18, "text/x-vnote"

    move-object v0, v12

    move-object v1, v7

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 6112
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

    .line 6113
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

    .line 6114
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

    .line 6116
    const/16 v18, 0x1

    move-object v0, v12

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 6117
    move-object/from16 v0, p0

    move-object v1, v12

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageView;->startActivity(Landroid/content/Intent;)V
    :try_end_d
    .catch Landroid/content/ActivityNotFoundException; {:try_start_d .. :try_end_d} :catch_6

    goto/16 :goto_1

    .line 6188
    .end local v12           #intent:Landroid/content/Intent;
    :catch_6
    move-exception v18

    move-object/from16 v8, v18

    .line 6189
    .local v8, e:Landroid/content/ActivityNotFoundException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mHandler:Lcom/android/email/activity/MessageView$MessageViewHandler;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/email/activity/MessageView$MessageViewHandler;->attachmentViewError()V

    goto/16 :goto_1

    .line 6121
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

    .line 6123
    const/4 v11, 0x0

    .line 6124
    .restart local v11       #in:Ljava/io/InputStream;
    const/4 v15, 0x0

    .line 6125
    .restart local v15       #out:Ljava/io/OutputStream;
    const/4 v9, 0x0

    .line 6127
    .restart local v9       #file:Ljava/io/File;
    :try_start_f
    new-instance v17, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mCacheDir:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-direct/range {v17 .. v18}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6128
    .local v17, targetDirectory:Ljava/io/File;
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->isDirectory()Z

    move-result v18

    if-nez v18, :cond_8

    .line 6129
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->mkdirs()Z

    .line 6131
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

    .line 6132
    .local v6, checkFile:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v18

    if-nez v18, :cond_b

    .line 6133
    move-object v0, v4

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v17 .. v18}, Lcom/android/email/activity/MessageView;->createUniqueFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    .line 6140
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

    .line 6142
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MessageView;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v11

    .line 6143
    new-instance v16, Ljava/io/FileOutputStream;

    move-object/from16 v0, v16

    move-object v1, v9

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_8
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_f} :catch_a

    .line 6144
    .end local v15           #out:Ljava/io/OutputStream;
    .restart local v16       #out:Ljava/io/OutputStream;
    :try_start_10
    move-object v0, v11

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 6145
    invoke-virtual/range {v16 .. v16}, Ljava/io/OutputStream;->flush()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_17
    .catch Ljava/lang/NullPointerException; {:try_start_10 .. :try_end_10} :catch_16

    .line 6154
    if-eqz v11, :cond_9

    .line 6156
    :try_start_11
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_11
    .catch Landroid/content/ActivityNotFoundException; {:try_start_11 .. :try_end_11} :catch_6

    .line 6159
    :cond_9
    :goto_b
    if-eqz v16, :cond_11

    .line 6161
    :try_start_12
    invoke-virtual/range {v16 .. v16}, Ljava/io/OutputStream;->close()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_7
    .catch Landroid/content/ActivityNotFoundException; {:try_start_12 .. :try_end_12} :catch_6

    move-object/from16 v15, v16

    .line 6165
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

    .line 6166
    .local v10, fileName:Ljava/lang/String;
    new-instance v12, Landroid/content/Intent;

    const-string v18, "android.intent.action.VIEW"

    move-object v0, v12

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6167
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

    .line 6169
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

    .line 6170
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

    .line 6171
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

    .line 6173
    const/16 v18, 0x1

    move-object v0, v12

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 6174
    move-object/from16 v0, p0

    move-object v1, v12

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageView;->startActivity(Landroid/content/Intent;)V
    :try_end_13
    .catch Landroid/content/ActivityNotFoundException; {:try_start_13 .. :try_end_13} :catch_6

    goto/16 :goto_1

    .line 6135
    .end local v10           #fileName:Ljava/lang/String;
    .end local v12           #intent:Landroid/content/Intent;
    .restart local v6       #checkFile:Ljava/io/File;
    .restart local v17       #targetDirectory:Ljava/io/File;
    :cond_b
    :try_start_14
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 6137
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

    .line 6162
    .end local v15           #out:Ljava/io/OutputStream;
    .restart local v16       #out:Ljava/io/OutputStream;
    :catch_7
    move-exception v18

    move-object/from16 v15, v16

    .end local v16           #out:Ljava/io/OutputStream;
    .restart local v15       #out:Ljava/io/OutputStream;
    goto/16 :goto_c

    .line 6146
    .end local v6           #checkFile:Ljava/io/File;
    .end local v17           #targetDirectory:Ljava/io/File;
    :catch_8
    move-exception v18

    move-object/from16 v13, v18

    .line 6147
    .restart local v13       #ioe:Ljava/io/IOException;
    :goto_d
    :try_start_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mHandler:Lcom/android/email/activity/MessageView$MessageViewHandler;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/email/activity/MessageView$MessageViewHandler;->attachmentViewError()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    .line 6154
    if-eqz v11, :cond_c

    .line 6156
    :try_start_16
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_12
    .catch Landroid/content/ActivityNotFoundException; {:try_start_16 .. :try_end_16} :catch_6

    .line 6159
    :cond_c
    :goto_e
    if-eqz v15, :cond_a

    .line 6161
    :try_start_17
    invoke-virtual {v15}, Ljava/io/OutputStream;->close()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_9
    .catch Landroid/content/ActivityNotFoundException; {:try_start_17 .. :try_end_17} :catch_6

    goto/16 :goto_c

    .line 6162
    :catch_9
    move-exception v18

    goto/16 :goto_c

    .line 6149
    .end local v13           #ioe:Ljava/io/IOException;
    :catch_a
    move-exception v18

    move-object/from16 v14, v18

    .line 6150
    .restart local v14       #npe:Ljava/lang/NullPointerException;
    :goto_f
    :try_start_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mHandler:Lcom/android/email/activity/MessageView$MessageViewHandler;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/email/activity/MessageView$MessageViewHandler;->attachmentViewError()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_1

    .line 6154
    if-eqz v11, :cond_d

    .line 6156
    :try_start_19
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_13
    .catch Landroid/content/ActivityNotFoundException; {:try_start_19 .. :try_end_19} :catch_6

    .line 6159
    :cond_d
    :goto_10
    if-eqz v15, :cond_a

    .line 6161
    :try_start_1a
    invoke-virtual {v15}, Ljava/io/OutputStream;->close()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_b
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1a .. :try_end_1a} :catch_6

    goto/16 :goto_c

    .line 6162
    :catch_b
    move-exception v18

    goto/16 :goto_c

    .line 6154
    .end local v14           #npe:Ljava/lang/NullPointerException;
    :catchall_1
    move-exception v18

    :goto_11
    if-eqz v11, :cond_e

    .line 6156
    :try_start_1b
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_14
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1b .. :try_end_1b} :catch_6

    .line 6159
    :cond_e
    :goto_12
    if-eqz v15, :cond_f

    .line 6161
    :try_start_1c
    invoke-virtual {v15}, Ljava/io/OutputStream;->close()V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_15
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1c .. :try_end_1c} :catch_6

    .line 6162
    :cond_f
    :goto_13
    :try_start_1d
    throw v18

    .line 6178
    .end local v9           #file:Ljava/io/File;
    .end local v11           #in:Ljava/io/InputStream;
    .end local v15           #out:Ljava/io/OutputStream;
    :cond_10
    new-instance v12, Landroid/content/Intent;

    const-string v18, "android.intent.action.VIEW"

    move-object v0, v12

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6179
    .restart local v12       #intent:Landroid/content/Intent;
    invoke-virtual {v12, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 6181
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

    .line 6182
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

    .line 6183
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

    .line 6185
    const/16 v18, 0x1

    move-object v0, v12

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 6186
    move-object/from16 v0, p0

    move-object v1, v12

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageView;->startActivity(Landroid/content/Intent;)V
    :try_end_1d
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1d .. :try_end_1d} :catch_6

    goto/16 :goto_1

    .line 6097
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

    .line 6102
    :catch_10
    move-exception v19

    goto/16 :goto_9

    .line 6157
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

    .line 6162
    :catch_15
    move-exception v19

    goto/16 :goto_13

    .line 6154
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

    .line 6149
    .end local v15           #out:Ljava/io/OutputStream;
    .restart local v16       #out:Ljava/io/OutputStream;
    :catch_16
    move-exception v18

    move-object/from16 v14, v18

    move-object/from16 v15, v16

    .end local v16           #out:Ljava/io/OutputStream;
    .restart local v15       #out:Ljava/io/OutputStream;
    goto/16 :goto_f

    .line 6146
    .end local v15           #out:Ljava/io/OutputStream;
    .restart local v16       #out:Ljava/io/OutputStream;
    :catch_17
    move-exception v18

    move-object/from16 v13, v18

    move-object/from16 v15, v16

    .end local v16           #out:Ljava/io/OutputStream;
    .restart local v15       #out:Ljava/io/OutputStream;
    goto/16 :goto_d

    .line 6094
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

    .line 6085
    .end local v15           #out:Ljava/io/OutputStream;
    .restart local v16       #out:Ljava/io/OutputStream;
    :catch_18
    move-exception v18

    move-object/from16 v14, v18

    move-object/from16 v15, v16

    .end local v16           #out:Ljava/io/OutputStream;
    .restart local v15       #out:Ljava/io/OutputStream;
    goto/16 :goto_5

    .line 6079
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

    .line 6203
    iget-wide v5, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    invoke-static {p0, v5, v6}, Lcom/android/email/provider/EmailContent$Attachment;->restoreAttachmentsWithMessageId(Landroid/content/Context;J)[Lcom/android/email/provider/EmailContent$Attachment;

    move-result-object v2

    .line 6204
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

    .line 6206
    .local v1, attachment:Lcom/android/email/provider/EmailContent$Attachment;
    iget-object v5, v1, Lcom/android/email/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    if-eqz v5, :cond_1

    iget-object v5, v1, Lcom/android/email/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    const-string v6, "@namo.co.kr"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-ne v5, v9, :cond_1

    .line 6204
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6212
    :cond_1
    iget-wide v5, v1, Lcom/android/email/provider/EmailContent$Attachment;->mSize:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_0

    iget-object v5, v1, Lcom/android/email/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    if-nez v5, :cond_0

    .line 6241
    .end local v1           #attachment:Lcom/android/email/provider/EmailContent$Attachment;
    :goto_1
    return-void

    .line 6215
    :cond_2
    iget-object v5, p0, Lcom/android/email/activity/MessageView;->mForwarded:Ljava/lang/Boolean;

    monitor-enter v5

    .line 6216
    :try_start_0
    iget-object v6, p0, Lcom/android/email/activity/MessageView;->mForwarded:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_4

    .line 6217
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, p0, Lcom/android/email/activity/MessageView;->mForwarded:Ljava/lang/Boolean;

    .line 6224
    iget-object v6, p0, Lcom/android/email/activity/MessageView;->mForwardingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->dismiss()V

    .line 6226
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->isFinishing()Z

    move-result v6

    if-eqz v6, :cond_3

    monitor-exit v5

    goto :goto_1

    .line 6240
    :catchall_0
    move-exception v6

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 6229
    :cond_3
    :try_start_1
    iget-boolean v6, p0, Lcom/android/email/activity/MessageView;->bForwardToOld:Z

    if-ne v6, v9, :cond_5

    .line 6230
    iget-object v6, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    iget-wide v6, v6, Lcom/android/email/provider/EmailContent$Message;->mId:J

    const/4 v8, 0x1

    invoke-static {p0, v6, v7, v8}, Lcom/android/email/activity/MessageCompose;->actionForward(Landroid/content/Context;JZ)V

    .line 6231
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/email/activity/MessageView;->bForwardToOld:Z

    .line 6235
    :goto_2
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->finish()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 6240
    :cond_4
    :goto_3
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 6233
    :cond_5
    :try_start_3
    iget-object v6, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    iget-wide v6, v6, Lcom/android/email/provider/EmailContent$Message;->mId:J

    invoke-static {p0, v6, v7}, Lcom/android/email/activity/MessageCompose;->actionForward(Landroid/content/Context;J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 6236
    :catch_0
    move-exception v6

    goto :goto_3
.end method

.method private eventToWebview(Landroid/view/MotionEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 1379
    :try_start_0
    iget-object v1, p0, Lcom/android/email/activity/MessageView;->mMessageContentView:Landroid/webkit/WebView;

    invoke-virtual {v1, p1}, Landroid/webkit/WebView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1384
    :goto_0
    return-void

    .line 1380
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1381
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
    .line 1365
    sub-float v2, p3, p1

    .line 1366
    .local v2, dx:F
    sub-float v3, p4, p2

    .line 1368
    .local v3, dy:F
    float-to-double v6, v2

    float-to-double v8, v3

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    .line 1369
    .local v4, rad:D
    const-wide v6, 0x4066800000000000L

    mul-double/2addr v6, v4

    const-wide v8, 0x400921fb54442d18L

    div-double v0, v6, v8

    .line 1371
    .local v0, degree:D
    double-to-int v6, v0

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    return v6
.end method

.method private getContentId(J)V
    .locals 22
    .parameter "mId"

    .prologue
    .line 6376
    sget-object v4, Lcom/android/email/activity/MessageView;->mContext:Landroid/content/Context;

    move-object v0, v4

    move-wide/from16 v1, p1

    invoke-static {v0, v1, v2}, Lcom/android/email/provider/EmailContent$Body;->restoreBodyHtmlWithMessageId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v12

    .line 6377
    .local v12, bodyHtml:Ljava/lang/String;
    const/4 v11, 0x0

    .line 6378
    .local v11, attachmentUri:Landroid/net/Uri;
    sget-object v4, Lcom/android/email/activity/MessageView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 6380
    .local v3, resolver:Landroid/content/ContentResolver;
    const-string v4, "src=\"cid(?-i):[A-Z0-9a-z\\.\\_\\@]+"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v19

    .line 6381
    .local v19, p:Ljava/util/regex/Pattern;
    move-object/from16 v0, v19

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v17

    .line 6382
    .local v17, m:Ljava/util/regex/Matcher;
    const/4 v13, 0x0

    .line 6383
    .local v13, contentId:Ljava/lang/String;
    const/16 v18, 0x0

    .line 6384
    .local v18, nameOfTheFile:Ljava/lang/String;
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 6386
    .local v14, contentIdList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-virtual/range {v17 .. v17}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 6387
    invoke-virtual/range {v17 .. v17}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v13

    .line 6388
    if-eqz v13, :cond_0

    .line 6390
    const-string v4, ":"

    invoke-virtual {v13, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    .line 6391
    .local v20, tokens1:[Ljava/lang/String;
    if-eqz v20, :cond_1

    move-object/from16 v0, v20

    array-length v0, v0

    move v4, v0

    const/4 v5, 0x1

    if-le v4, v5, :cond_1

    .line 6392
    const/4 v4, 0x1

    aget-object v4, v20, v4

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6393
    const/4 v4, 0x1

    aget-object v18, v20, v4

    .line 6396
    :cond_1
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Jebarlin >>> Matched Content Id List one by one:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 6399
    .end local v20           #tokens1:[Ljava/lang/String;
    :cond_2
    if-eqz v3, :cond_5

    .line 6400
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 6401
    .local v15, contentValues:Landroid/content/ContentValues;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "Jebarlin >>> Content Resolver Value != null:"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 6402
    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v6, "_id"

    aput-object v6, v5, v4

    .line 6403
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

    .line 6404
    .local v6, selection:Ljava/lang/String;
    sget-object v4, Lcom/android/email/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 6406
    .local v10, attachmentCursor:Landroid/database/Cursor;
    const/16 v16, 0x0

    .end local v5           #prj:[Ljava/lang/String;
    .end local v6           #selection:Ljava/lang/String;
    .end local p0
    .local v16, i:I
    :goto_1
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v16

    move v1, v4

    if-ge v0, v1, :cond_4

    .line 6407
    move-object v0, v10

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 6408
    const/4 v4, 0x0

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 6409
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

    .line 6410
    const-string v4, "contentId"

    move-object v0, v14

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    move-object v0, v15

    move-object v1, v4

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6411
    sget-object v4, Lcom/android/email/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v7, v9

    invoke-static {v4, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v15, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v21

    .line 6412
    .local v21, updateResult:I
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "jebarlin >>>  Content ID Updated Result :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 6406
    .end local v9           #attId:I
    .end local v21           #updateResult:I
    :cond_3
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 6414
    :cond_4
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 6416
    .end local v10           #attachmentCursor:Landroid/database/Cursor;
    .end local v15           #contentValues:Landroid/content/ContentValues;
    .end local v16           #i:I
    :cond_5
    return-void
.end method

.method private getPreviewIcon(Lcom/android/email/activity/MessageView$AttachmentInfo;)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "attachment"

    .prologue
    .line 3684
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

    .line 3695
    :goto_0
    return-object v0

    .line 3691
    :catch_0
    move-exception v0

    move-object v6, v0

    .line 3695
    .local v6, e:Ljava/lang/Exception;
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasInlineDataImage(JI)Z
    .locals 9
    .parameter "mId"
    .parameter "isMimeLoaded"

    .prologue
    const-string v8, "jebarlin >> After Checking the Data image isDataImage:"

    .line 6290
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "jebarlin >> Entering the hasInlineDataImage() >>>>>>>>>>>>>>>>>>>>>>>>>>>>>"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 6291
    const/16 v0, 0xb9

    .line 6292
    .local v0, DATA_IMAGE_INDEX:I
    const/4 v2, 0x0

    .line 6293
    .local v2, isDataImage:Z
    sget-object v5, Lcom/android/email/activity/MessageView;->mContext:Landroid/content/Context;

    invoke-static {v5, p1, p2}, Lcom/android/email/provider/EmailContent$Body;->restoreBodyHtmlWithMessageId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    .line 6294
    .local v1, html:Ljava/lang/String;
    const/4 v4, 0x0

    .line 6296
    .local v4, matchStr:Ljava/lang/String;
    if-nez v1, :cond_0

    move v3, v2

    .line 6328
    .end local v2           #isDataImage:Z
    .local v3, isDataImage:I
    :goto_0
    return v3

    .line 6297
    .end local v3           #isDataImage:I
    .restart local v2       #isDataImage:Z
    :cond_0
    if-eqz p3, :cond_1

    move v3, v2

    .restart local v3       #isDataImage:I
    goto :goto_0

    .line 6300
    .end local v3           #isDataImage:I
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/email/activity/MessageView;->parseHtmlATag(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6301
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "jebarlin >> After Checking the Data image isDataImage:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 6302
    sget-object v5, Lcom/android/email/activity/MessageView;->mContext:Landroid/content/Context;

    const v6, 0x7f080196

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/email/activity/MessageView;->changeLoadMoreBtnText(Ljava/lang/String;)V

    .line 6304
    :cond_2
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "jebarlin >> After Checking the Data image isDataImage:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v3, v2

    .line 6328
    .restart local v3       #isDataImage:I
    goto :goto_0
.end method

.method private lookupAccountForMessage(J)J
    .locals 9
    .parameter "messageId"

    .prologue
    .line 1578
    move-object v7, p0

    .line 1579
    .local v7, context:Landroid/content/Context;
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1580
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

    .line 1584
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

    .line 1588
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    return-wide v1

    .line 1584
    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0

    .line 1588
    :catchall_0
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method private messageChanged()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/16 v3, 0x8

    .line 3593
    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 3594
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

    .line 3596
    :cond_0
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->cancelAllTasks()V

    .line 3597
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageView;->setTitle(Ljava/lang/CharSequence;)V

    .line 3598
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageContentView:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    .line 3599
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageContentView:Landroid/webkit/WebView;

    invoke-virtual {v0, v5, v5}, Landroid/webkit/WebView;->scrollTo(II)V

    .line 3600
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageContentView:Landroid/webkit/WebView;

    const-string v1, "file:///android_asset/empty.html"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 3603
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 3604
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3605
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mAllDownloadIcon:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3606
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mAttachmentIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3609
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mAttachmentContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 3610
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mAttachmentInnerContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 3611
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mAttachmentsHeader:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3615
    new-instance v0, Lcom/android/email/activity/MessageView$LoadMessageTask;

    iget-wide v2, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    const/4 v4, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/email/activity/MessageView$LoadMessageTask;-><init>(Lcom/android/email/activity/MessageView;JZZ)V

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mLoadMessageTask:Lcom/android/email/activity/MessageView$LoadMessageTask;

    .line 3616
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mLoadMessageTask:Lcom/android/email/activity/MessageView$LoadMessageTask;

    new-array v1, v5, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageView$LoadMessageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 3617
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mPrevNextCursor:Landroid/database/Cursor;

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageView;->updatePrevNextArrows(Landroid/database/Cursor;)V

    .line 3618
    return-void
.end method

.method private onClickFavorite()V
    .locals 4

    .prologue
    .line 2287
    iget-object v1, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    if-eqz v1, :cond_0

    .line 2289
    iget-object v1, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    iget-boolean v1, v1, Lcom/android/email/provider/EmailContent$Message;->mFlagFavorite:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    move v0, v1

    .line 2290
    .local v0, newFavorite:Z
    :goto_0
    iget-object v1, p0, Lcom/android/email/activity/MessageView;->mFavoriteIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/android/email/activity/MessageView;->mFavoriteIconOn:Landroid/graphics/drawable/Drawable;

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2311
    iget-object v1, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    iput-boolean v0, v1, Lcom/android/email/provider/EmailContent$Message;->mFlagFavorite:Z

    .line 2312
    iget-object v1, p0, Lcom/android/email/activity/MessageView;->mController:Lcom/android/email/Controller;

    iget-wide v2, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/email/Controller;->setMessageFavorite(JZ)V

    .line 2314
    .end local v0           #newFavorite:Z
    :cond_0
    return-void

    .line 2289
    :cond_1
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0

    .line 2290
    .restart local v0       #newFavorite:Z
    :cond_2
    iget-object v2, p0, Lcom/android/email/activity/MessageView;->mFavoriteIconOff:Landroid/graphics/drawable/Drawable;

    goto :goto_1
.end method

.method private onClickSender()V
    .locals 8

    .prologue
    .line 2236
    iget-object v5, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    if-nez v5, :cond_1

    .line 2259
    :cond_0
    :goto_0
    return-void

    .line 2238
    :cond_1
    iget-object v5, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    iget-object v5, v5, Lcom/android/email/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/email/mail/Address;->unpackFirst(Ljava/lang/String;)Lcom/android/email/mail/Address;

    move-result-object v4

    .line 2239
    .local v4, senderEmail:Lcom/android/email/mail/Address;
    if-eqz v4, :cond_0

    .line 2242
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 2243
    .local v3, resolver:Landroid/content/ContentResolver;
    invoke-virtual {v4}, Lcom/android/email/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 2244
    .local v0, address:Ljava/lang/String;
    sget-object v5, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2246
    .local v1, dataUri:Landroid/net/Uri;
    invoke-static {v3, v1}, Landroid/provider/ContactsContract$Data;->getContactLookupUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    .line 2248
    .local v2, lookupUri:Landroid/net/Uri;
    if-eqz v2, :cond_2

    .line 2250
    iget-object v5, p0, Lcom/android/email/activity/MessageView;->mSenderPresenceView:Landroid/widget/ImageView;

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static {p0, v5, v2, v6, v7}, Landroid/provider/ContactsContract$QuickContact;->showQuickContact(Landroid/content/Context;Landroid/view/View;Landroid/net/Uri;I[Ljava/lang/String;)V

    goto :goto_0

    .line 2256
    :cond_2
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->addToContacts()V

    goto :goto_0
.end method

.method private onDelete()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1545
    iget-object v4, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    if-eqz v4, :cond_0

    .line 1548
    iget-wide v0, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    .line 1549
    .local v0, messageIdToDelete:J
    iget-object v4, p0, Lcom/android/email/activity/MessageView;->mController:Lcom/android/email/Controller;

    iget-object v5, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    iget-wide v5, v5, Lcom/android/email/provider/EmailContent$Message;->mAccountKey:J

    invoke-virtual {v4, v0, v1, v5, v6}, Lcom/android/email/Controller;->deleteMessage(JJ)V

    .line 1551
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0006

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v4, v5, v8, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1552
    .local v3, reportString:Ljava/lang/String;
    invoke-static {p0, v3, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 1554
    sget-object v4, Lcom/android/email/activity/MessageView;->mContext:Landroid/content/Context;

    check-cast v4, Lcom/android/email/activity/MessageList;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/email/activity/MessageList;->removeMessage(Ljava/lang/Long;)V

    .line 1556
    iget-boolean v4, p0, Lcom/android/email/activity/MessageView;->mLogView:Z

    if-ne v4, v8, :cond_1

    .line 1557
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->finish()V

    .line 1570
    .end local v0           #messageIdToDelete:J
    .end local v3           #reportString:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1562
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

    .line 1564
    .local v2, moved:Z
    :goto_1
    if-nez v2, :cond_0

    .line 1567
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->finish()V

    goto :goto_0

    .end local v2           #moved:Z
    :cond_3
    move v2, v9

    .line 1562
    goto :goto_1
.end method

.method private onDeletePopup()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 1514
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1516
    .local v0, backWarning:Landroid/app/AlertDialog$Builder;
    const v2, 0x1080027

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 1517
    const v2, 0x7f080016

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1520
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

    .line 1523
    .local v1, reportString:Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1527
    const v2, 0x7f080011

    new-instance v3, Lcom/android/email/activity/MessageView$5;

    invoke-direct {v3, p0}, Lcom/android/email/activity/MessageView$5;-><init>(Lcom/android/email/activity/MessageView;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1535
    const v2, 0x7f080012

    new-instance v3, Lcom/android/email/activity/MessageView$6;

    invoke-direct {v3, p0}, Lcom/android/email/activity/MessageView$6;-><init>(Lcom/android/email/activity/MessageView;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1541
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1542
    return-void
.end method

.method private onDisplayMode()V
    .locals 8

    .prologue
    .line 3310
    const/4 v3, 0x6

    new-array v2, v3, [Lcom/android/email/activity/MessageView$DisplayViewType;

    .line 3311
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

    .line 3312
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

    .line 3313
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

    .line 3314
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

    .line 3315
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

    .line 3316
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

    .line 3318
    new-instance v0, Lcom/android/email/activity/MessageView$DisplayViewAdapter;

    invoke-direct {v0, p0, v2}, Lcom/android/email/activity/MessageView$DisplayViewAdapter;-><init>(Landroid/content/Context;[Lcom/android/email/activity/MessageView$DisplayViewType;)V

    .line 3322
    .local v0, adapter:Landroid/widget/ListAdapter;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3325
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const v3, 0x7f080109

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 3328
    iget v3, p0, Lcom/android/email/activity/MessageView;->mDisplayMode:I

    new-instance v4, Lcom/android/email/activity/MessageView$15;

    invoke-direct {v4, p0}, Lcom/android/email/activity/MessageView$15;-><init>(Lcom/android/email/activity/MessageView;)V

    invoke-virtual {v1, v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3337
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 3338
    return-void
.end method

.method private onDisplayModeChange(I)V
    .locals 4
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    .line 3413
    iput p1, p0, Lcom/android/email/activity/MessageView;->mDisplayMode:I

    .line 3415
    iget v0, p0, Lcom/android/email/activity/MessageView;->mDisplayMode:I

    if-nez v0, :cond_0

    .line 3417
    const v0, 0x7f08010b

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3419
    :cond_0
    new-instance v0, Lcom/android/email/activity/MessageView$ChangeDisplayModeTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/email/activity/MessageView$ChangeDisplayModeTask;-><init>(Lcom/android/email/activity/MessageView;Lcom/android/email/activity/MessageView$1;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mChangeDisplayModeTask:Lcom/android/email/activity/MessageView$ChangeDisplayModeTask;

    .line 3420
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mChangeDisplayModeTask:Lcom/android/email/activity/MessageView$ChangeDisplayModeTask;

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageView$ChangeDisplayModeTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 3422
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    if-eqz v0, :cond_1

    .line 3423
    new-instance v0, Lcom/android/email/activity/MessageView$LoadBodyTask;

    iget-object v1, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    iget-wide v1, v1, Lcom/android/email/provider/EmailContent$Message;->mId:J

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/email/activity/MessageView$LoadBodyTask;-><init>(Lcom/android/email/activity/MessageView;JZ)V

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mLoadBodyTask:Lcom/android/email/activity/MessageView$LoadBodyTask;

    .line 3424
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mLoadBodyTask:Lcom/android/email/activity/MessageView$LoadBodyTask;

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageView$LoadBodyTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 3426
    :cond_1
    return-void
.end method

.method private onDownloadAttachment(Lcom/android/email/activity/MessageView$AttachmentInfo;)V
    .locals 11
    .parameter "attachment"

    .prologue
    const/4 v10, 0x1

    .line 2694
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2699
    const v0, 0x7f080067

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageView;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2720
    :goto_0
    return-void

    .line 2705
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

    .line 2707
    iput v10, p0, Lcom/android/email/activity/MessageView;->mSaveAttachmentsCount:I

    .line 2708
    iget-wide v0, p1, Lcom/android/email/activity/MessageView$AttachmentInfo;->attachmentId:J

    iput-wide v0, p0, Lcom/android/email/activity/MessageView;->mLoadAttachmentId:J

    .line 2709
    iput-boolean v10, p0, Lcom/android/email/activity/MessageView;->mLoadAttachmentSave:Z

    .line 2710
    iget-object v0, p1, Lcom/android/email/activity/MessageView$AttachmentInfo;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mLoadAttachmentName:Ljava/lang/String;

    .line 2713
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mController:Lcom/android/email/Controller;

    iget-wide v1, p1, Lcom/android/email/activity/MessageView$AttachmentInfo;->attachmentId:J

    iget-wide v3, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    iget-object v5, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    iget-wide v5, v5, Lcom/android/email/provider/EmailContent$Message;->mMailboxKey:J

    iget-wide v7, p0, Lcom/android/email/activity/MessageView;->mAccountId:J

    iget-object v9, p0, Lcom/android/email/activity/MessageView;->mControllerCallback:Lcom/android/email/activity/MessageView$ControllerResults;

    invoke-virtual/range {v0 .. v10}, Lcom/android/email/Controller;->loadAttachment(JJJJLcom/android/email/Controller$Result;Z)V

    .line 2718
    iput-boolean v10, p0, Lcom/android/email/activity/MessageView;->mDownloading:Z

    goto :goto_0
.end method

.method private onDownloadAttachmentAll()V
    .locals 13

    .prologue
    .line 2723
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2728
    const v0, 0x7f080067

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageView;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2752
    :cond_0
    return-void

    .line 2734
    :cond_1
    const-string v0, "View >>"

    const-string v1, "onDownloadAttachmentAll called!"

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 2735
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/email/activity/MessageView;->mSaveAttachmentsCount:I

    .line 2737
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ge v12, v0, :cond_0

    .line 2738
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v12}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/email/activity/MessageView$AttachmentInfo;

    .line 2739
    .local v11, attachment:Lcom/android/email/activity/MessageView$AttachmentInfo;
    iget-wide v0, v11, Lcom/android/email/activity/MessageView$AttachmentInfo;->attachmentId:J

    iput-wide v0, p0, Lcom/android/email/activity/MessageView;->mLoadAttachmentId:J

    .line 2740
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/MessageView;->mLoadAttachmentSave:Z

    .line 2741
    iget-object v0, v11, Lcom/android/email/activity/MessageView$AttachmentInfo;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mLoadAttachmentName:Ljava/lang/String;

    .line 2743
    if-nez v12, :cond_2

    .line 2744
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mController:Lcom/android/email/Controller;

    iget-wide v1, v11, Lcom/android/email/activity/MessageView$AttachmentInfo;->attachmentId:J

    iget-wide v3, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    iget-object v5, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    iget-wide v5, v5, Lcom/android/email/provider/EmailContent$Message;->mMailboxKey:J

    iget-wide v7, p0, Lcom/android/email/activity/MessageView;->mAccountId:J

    iget-object v9, p0, Lcom/android/email/activity/MessageView;->mControllerCallback:Lcom/android/email/activity/MessageView$ControllerResults;

    const/4 v10, 0x1

    invoke-virtual/range {v0 .. v10}, Lcom/android/email/Controller;->loadAttachment(JJJJLcom/android/email/Controller$Result;Z)V

    .line 2737
    :goto_1
    add-int/lit8 v12, v12, 0x1

    iget v0, p0, Lcom/android/email/activity/MessageView;->mSaveAttachmentsCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/email/activity/MessageView;->mSaveAttachmentsCount:I

    goto :goto_0

    .line 2747
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

    .line 2812
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mDetailContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 2813
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mDetailContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2819
    :goto_0
    return-void

    .line 2816
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mDetailContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private onForward()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 2348
    iget-object v3, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    if-eqz v3, :cond_2

    .line 2351
    const/4 v0, 0x0

    .line 2352
    .local v0, isExchange:Z
    iget-object v3, p0, Lcom/android/email/activity/MessageView;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/email/activity/MessageView;->mController:Lcom/android/email/Controller;

    iget-object v4, p0, Lcom/android/email/activity/MessageView;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v3, v4}, Lcom/android/email/Controller;->isMessagingController(Lcom/android/email/provider/EmailContent$Account;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2353
    :cond_0
    const/4 v0, 0x0

    .line 2358
    :goto_0
    iget-object v3, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    iget-wide v3, v3, Lcom/android/email/provider/EmailContent$Message;->mMailboxKey:J

    invoke-static {p0, v3, v4}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v1

    .line 2360
    .local v1, mb:Lcom/android/email/provider/EmailContent$Mailbox;
    if-nez v0, :cond_4

    .line 2361
    iget v3, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1

    iget v3, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    const/4 v4, 0x6

    if-eq v3, v4, :cond_1

    iget v3, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_5

    .line 2364
    :cond_1
    iget-object v3, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    iget-wide v3, v3, Lcom/android/email/provider/EmailContent$Message;->mId:J

    invoke-static {p0, v3, v4}, Lcom/android/email/activity/MessageCompose;->actionForward(Landroid/content/Context;J)V

    .line 2365
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->finish()V

    .line 2412
    .end local v0           #isExchange:Z
    .end local v1           #mb:Lcom/android/email/provider/EmailContent$Mailbox;
    :cond_2
    :goto_1
    return-void

    .line 2355
    .restart local v0       #isExchange:Z
    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    .line 2371
    .restart local v1       #mb:Lcom/android/email/provider/EmailContent$Mailbox;
    :cond_4
    iget-object v3, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    iget-wide v3, v3, Lcom/android/email/provider/EmailContent$Message;->mId:J

    invoke-static {p0, v3, v4}, Lcom/android/email/activity/MessageCompose;->actionForward(Landroid/content/Context;J)V

    .line 2372
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->finish()V

    goto :goto_1

    .line 2379
    :cond_5
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 2381
    .local v2, sharedPref:Landroid/content/SharedPreferences;
    const-string v3, "forward_with_files"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_6

    .line 2382
    iget-object v3, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    iget-wide v3, v3, Lcom/android/email/provider/EmailContent$Message;->mId:J

    invoke-static {p0, v3, v4}, Lcom/android/email/activity/MessageCompose;->actionForward(Landroid/content/Context;J)V

    .line 2383
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->finish()V

    goto :goto_1

    .line 2386
    :cond_6
    iget-object v3, p0, Lcom/android/email/activity/MessageView;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-nez v3, :cond_7

    .line 2387
    iget-object v3, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    iget-wide v3, v3, Lcom/android/email/provider/EmailContent$Message;->mId:J

    invoke-static {p0, v3, v4}, Lcom/android/email/activity/MessageCompose;->actionForward(Landroid/content/Context;J)V

    .line 2388
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->finish()V

    goto :goto_1

    .line 2394
    :cond_7
    iget-object v3, p0, Lcom/android/email/activity/MessageView;->mForwardingDialog:Landroid/app/ProgressDialog;

    const v4, 0x7f080137

    invoke-virtual {p0, v4}, Lcom/android/email/activity/MessageView;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 2395
    iget-object v3, p0, Lcom/android/email/activity/MessageView;->mForwardingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->show()V

    .line 2396
    iget-object v3, p0, Lcom/android/email/activity/MessageView;->mForwardingDialog:Landroid/app/ProgressDialog;

    new-instance v4, Lcom/android/email/activity/MessageView$11;

    invoke-direct {v4, p0}, Lcom/android/email/activity/MessageView$11;-><init>(Lcom/android/email/activity/MessageView;)V

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 2404
    iput-boolean v5, p0, Lcom/android/email/activity/MessageView;->mForwarding:Z

    .line 2405
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/email/activity/MessageView;->mForwarded:Ljava/lang/Boolean;

    .line 2407
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->saveAttachmentsTemporarily()V

    goto :goto_1
.end method

.method private onForwardOld()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 2415
    iget-object v3, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    if-eqz v3, :cond_2

    .line 2418
    const/4 v0, 0x0

    .line 2419
    .local v0, isExchange:Z
    iget-object v3, p0, Lcom/android/email/activity/MessageView;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/email/activity/MessageView;->mController:Lcom/android/email/Controller;

    iget-object v4, p0, Lcom/android/email/activity/MessageView;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v3, v4}, Lcom/android/email/Controller;->isMessagingController(Lcom/android/email/provider/EmailContent$Account;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2420
    :cond_0
    const/4 v0, 0x0

    .line 2425
    :goto_0
    iget-object v3, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    iget-wide v3, v3, Lcom/android/email/provider/EmailContent$Message;->mMailboxKey:J

    invoke-static {p0, v3, v4}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v1

    .line 2427
    .local v1, mb:Lcom/android/email/provider/EmailContent$Mailbox;
    if-nez v0, :cond_4

    .line 2428
    iget v3, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1

    iget v3, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    const/4 v4, 0x6

    if-eq v3, v4, :cond_1

    iget v3, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_5

    .line 2431
    :cond_1
    iget-object v3, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    iget-wide v3, v3, Lcom/android/email/provider/EmailContent$Message;->mId:J

    invoke-static {p0, v3, v4, v5}, Lcom/android/email/activity/MessageCompose;->actionForward(Landroid/content/Context;JZ)V

    .line 2432
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->finish()V

    .line 2481
    .end local v0           #isExchange:Z
    .end local v1           #mb:Lcom/android/email/provider/EmailContent$Mailbox;
    :cond_2
    :goto_1
    return-void

    .line 2422
    .restart local v0       #isExchange:Z
    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    .line 2438
    .restart local v1       #mb:Lcom/android/email/provider/EmailContent$Mailbox;
    :cond_4
    iget-object v3, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    iget-wide v3, v3, Lcom/android/email/provider/EmailContent$Message;->mId:J

    invoke-static {p0, v3, v4, v5}, Lcom/android/email/activity/MessageCompose;->actionForward(Landroid/content/Context;JZ)V

    .line 2439
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->finish()V

    goto :goto_1

    .line 2446
    :cond_5
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 2448
    .local v2, sharedPref:Landroid/content/SharedPreferences;
    const-string v3, "forward_with_files"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_6

    .line 2449
    iget-object v3, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    iget-wide v3, v3, Lcom/android/email/provider/EmailContent$Message;->mId:J

    invoke-static {p0, v3, v4, v5}, Lcom/android/email/activity/MessageCompose;->actionForward(Landroid/content/Context;JZ)V

    .line 2450
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->finish()V

    goto :goto_1

    .line 2453
    :cond_6
    iget-object v3, p0, Lcom/android/email/activity/MessageView;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-nez v3, :cond_7

    .line 2454
    iget-object v3, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    iget-wide v3, v3, Lcom/android/email/provider/EmailContent$Message;->mId:J

    invoke-static {p0, v3, v4, v5}, Lcom/android/email/activity/MessageCompose;->actionForward(Landroid/content/Context;JZ)V

    .line 2455
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->finish()V

    goto :goto_1

    .line 2462
    :cond_7
    iget-object v3, p0, Lcom/android/email/activity/MessageView;->mForwardingDialog:Landroid/app/ProgressDialog;

    const v4, 0x7f080137

    invoke-virtual {p0, v4}, Lcom/android/email/activity/MessageView;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 2463
    iget-object v3, p0, Lcom/android/email/activity/MessageView;->mForwardingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->show()V

    .line 2464
    iget-object v3, p0, Lcom/android/email/activity/MessageView;->mForwardingDialog:Landroid/app/ProgressDialog;

    new-instance v4, Lcom/android/email/activity/MessageView$12;

    invoke-direct {v4, p0}, Lcom/android/email/activity/MessageView$12;-><init>(Lcom/android/email/activity/MessageView;)V

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 2472
    iput-boolean v5, p0, Lcom/android/email/activity/MessageView;->mForwarding:Z

    .line 2473
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/email/activity/MessageView;->mForwarded:Ljava/lang/Boolean;

    .line 2474
    iput-boolean v5, p0, Lcom/android/email/activity/MessageView;->bForwardToOld:Z

    .line 2476
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->saveAttachmentsTemporarily()V

    goto :goto_1
.end method

.method private onMarkAsRead(Z)V
    .locals 3
    .parameter "isRead"

    .prologue
    .line 2578
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    iget-boolean v0, v0, Lcom/android/email/provider/EmailContent$Message;->mFlagRead:Z

    if-eq v0, p1, :cond_0

    .line 2579
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    iput-boolean p1, v0, Lcom/android/email/provider/EmailContent$Message;->mFlagRead:Z

    .line 2580
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mController:Lcom/android/email/Controller;

    iget-wide v1, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/email/Controller;->setMessageRead(JZ)V

    .line 2582
    :cond_0
    return-void
.end method

.method private onMoreMessage()V
    .locals 3

    .prologue
    .line 2334
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    if-eqz v0, :cond_0

    .line 2335
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mController:Lcom/android/email/Controller;

    iget-object v1, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    iget-wide v1, v1, Lcom/android/email/provider/EmailContent$Message;->mId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/email/Controller;->loadMore(J)V

    .line 2336
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->loadMoreMessage:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 2338
    :cond_0
    return-void
.end method

.method private onMove(JJ)V
    .locals 11
    .parameter "accountKey"
    .parameter "mailboxId"

    .prologue
    .line 1953
    iget-wide v2, p0, Lcom/android/email/activity/MessageView;->mMailboxId:J

    invoke-static {p0, v2, v3}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v8

    .line 1954
    .local v8, mailbox:Lcom/android/email/provider/EmailContent$Mailbox;
    iget-wide v2, v8, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    cmp-long v0, v2, p1

    if-nez v0, :cond_0

    iget-wide v2, p0, Lcom/android/email/activity/MessageView;->mMailboxId:J

    cmp-long v0, v2, p3

    if-eqz v0, :cond_0

    .line 1956
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1957
    .local v1, cloneSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    iget-wide v2, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1958
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mController:Lcom/android/email/Controller;

    iget-wide v6, p0, Lcom/android/email/activity/MessageView;->mMailboxId:J

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v7}, Lcom/android/email/Controller;->moveMessage(Ljava/util/HashSet;JJJ)Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 1960
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

    .line 1963
    .local v10, reportString:Ljava/lang/String;
    const/4 v0, 0x0

    invoke-static {p0, v10, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1964
    sget-object p1, Lcom/android/email/activity/MessageView;->mContext:Landroid/content/Context;

    .end local p1
    check-cast p1, Lcom/android/email/activity/MessageList;

    iget-wide v2, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/email/activity/MessageList;->removeMessage(Ljava/lang/Long;)V

    .line 1966
    iget-boolean v0, p0, Lcom/android/email/activity/MessageView;->mLogView:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1967
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->finish()V

    .line 1985
    .end local v10           #reportString:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1971
    .restart local v10       #reportString:Ljava/lang/String;
    :cond_1
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->onPrevious()Z

    move-result v9

    .line 1973
    .local v9, moved:Z
    if-nez v9, :cond_0

    .line 1976
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->finish()V

    goto :goto_0

    .line 1982
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
    .line 1733
    move-object/from16 v22, p0

    .line 1734
    .local v22, context:Landroid/content/Context;
    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1735
    .local v3, resolver:Landroid/content/ContentResolver;
    const-string v6, "accountKey=? AND type<64 AND flagVisible=1"

    .line 1739
    .local v6, MAILBOX_SELECTION:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/activity/MessageView;->mMailboxId:J

    move-wide v4, v0

    move-object/from16 v0, p0

    move-wide v1, v4

    invoke-static {v0, v1, v2}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v29

    .line 1740
    .local v29, mailbox:Lcom/android/email/provider/EmailContent$Mailbox;
    if-nez v29, :cond_1

    .line 1741
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MessageView;->finish()V

    .line 1867
    .end local v6           #MAILBOX_SELECTION:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1746
    .restart local v6       #MAILBOX_SELECTION:Ljava/lang/String;
    :cond_1
    const/16 v27, 0x0

    .line 1747
    .local v27, mailBoxCnt:I
    const/16 v32, 0x0

    .line 1749
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

    .line 1757
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

    .line 1762
    const/4 v4, -0x1

    :try_start_1
    move-object/from16 v0, v23

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1763
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    move v0, v4

    new-array v0, v0, [Lcom/android/email/activity/MessageView$MailBoxType;

    move-object/from16 v32, v0
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1764
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

    .line 1765
    .end local v6           #MAILBOX_SELECTION:Ljava/lang/String;
    :goto_1
    :pswitch_0
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1766
    invoke-static/range {p0 .. p0}, Lcom/android/email/Utility$FolderProperties;->getInstance(Landroid/content/Context;)Lcom/android/email/Utility$FolderProperties;

    move-result-object v4

    const/4 v5, 0x2

    move-object/from16 v0, v23

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/email/Utility$FolderProperties;->getDisplayName(I)Ljava/lang/String;

    move-result-object v13

    .line 1767
    .local v13, text:Ljava/lang/String;
    if-nez v13, :cond_2

    .line 1768
    const/4 v4, 0x1

    move-object/from16 v0, v23

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 1770
    :cond_2
    const/4 v4, 0x2

    move-object/from16 v0, v23

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 1780
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

    .line 1782
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

    .line 1785
    .end local v27           #mailBoxCnt:I
    .restart local v28       #mailBoxCnt:I
    goto :goto_1

    .line 1786
    .end local v13           #text:Ljava/lang/String;
    .end local v28           #mailBoxCnt:I
    .restart local v27       #mailBoxCnt:I
    :catch_0
    move-exception v4

    move-object/from16 v26, v4

    .line 1787
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

    .line 1788
    invoke-virtual/range {v26 .. v26}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 1793
    .end local v23           #cursor:Landroid/database/Cursor;
    .end local v26           #ise:Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v4

    move-object/from16 v24, v4

    .line 1794
    .local v24, e:Ljava/lang/Exception;
    :goto_4
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 1791
    .end local v24           #e:Ljava/lang/Exception;
    .end local v27           #mailBoxCnt:I
    .restart local v23       #cursor:Landroid/database/Cursor;
    .restart local v28       #mailBoxCnt:I
    :cond_3
    :try_start_5
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    .line 1798
    const/16 v30, 0x0

    .line 1799
    .local v30, otherAccountsCnt:I
    const/16 v33, 0x0

    .line 1801
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

    .line 1803
    if-eqz v23, :cond_6

    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->getCount()I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    move-result v4

    if-lez v4, :cond_6

    .line 1805
    const/4 v4, -0x1

    :try_start_7
    move-object/from16 v0, v23

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1806
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    move v0, v4

    new-array v0, v0, [Lcom/android/email/activity/MessageView$MailBoxType;

    move-object/from16 v33, v0
    :try_end_7
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 1807
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

    .line 1808
    :cond_4
    :goto_5
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1809
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

    .line 1811
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

    .line 1818
    .end local v31           #otherAccountsCnt:I
    .restart local v30       #otherAccountsCnt:I
    :goto_6
    :try_start_a
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    .line 1824
    :cond_6
    :goto_7
    const/4 v4, 0x1

    move/from16 v0, v30

    move v1, v4

    if-ne v0, v1, :cond_7

    .line 1826
    const/16 v30, 0x0

    .line 1829
    :cond_7
    add-int v4, v28, v30

    move v0, v4

    new-array v0, v0, [Lcom/android/email/activity/MessageView$MailBoxType;

    move-object/from16 v34, v0

    .line 1831
    .local v34, viewType:[Lcom/android/email/activity/MessageView$MailBoxType;
    const/16 v25, 0x0

    .local v25, i:I
    :goto_8
    move/from16 v0, v25

    move/from16 v1, v28

    if-ge v0, v1, :cond_8

    .line 1832
    aget-object v4, v32, v25

    aput-object v4, v34, v25

    .line 1831
    add-int/lit8 v25, v25, 0x1

    goto :goto_8

    .line 1814
    .end local v25           #i:I
    .end local v34           #viewType:[Lcom/android/email/activity/MessageView$MailBoxType;
    :catch_2
    move-exception v4

    move-object/from16 v26, v4

    .line 1815
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

    .line 1816
    invoke-virtual/range {v26 .. v26}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    goto :goto_6

    .line 1820
    .end local v26           #ise:Ljava/lang/IllegalStateException;
    :catch_3
    move-exception v4

    move-object/from16 v24, v4

    .line 1821
    .restart local v24       #e:Ljava/lang/Exception;
    :goto_a
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    .line 1834
    .end local v24           #e:Ljava/lang/Exception;
    .restart local v25       #i:I
    .restart local v34       #viewType:[Lcom/android/email/activity/MessageView$MailBoxType;
    :cond_8
    const/16 v25, 0x0

    :goto_b
    move/from16 v0, v25

    move/from16 v1, v30

    if-ge v0, v1, :cond_9

    .line 1835
    add-int v4, v28, v25

    aget-object v5, v33, v25

    aput-object v5, v34, v4

    .line 1834
    add-int/lit8 v25, v25, 0x1

    goto :goto_b

    .line 1838
    :cond_9
    new-instance v4, Lcom/android/email/activity/MessageView$MailBoxAdapter;

    move-object v0, v4

    move-object/from16 v1, p0

    move-object/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lcom/android/email/activity/MessageView$MailBoxAdapter;-><init>(Landroid/content/Context;[Lcom/android/email/activity/MessageView$MailBoxType;)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/MessageView;->mMoveListAdapter:Lcom/android/email/activity/MessageView$MailBoxAdapter;

    .line 1840
    new-instance v21, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1843
    .local v21, builder:Landroid/app/AlertDialog$Builder;
    const v4, 0x7f080152

    move-object/from16 v0, v21

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1844
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mMoveListAdapter:Lcom/android/email/activity/MessageView$MailBoxAdapter;

    move-object v4, v0

    new-instance v5, Lcom/android/email/activity/MessageView$9;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/email/activity/MessageView$9;-><init>(Lcom/android/email/activity/MessageView;)V

    move-object/from16 v0, v21

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1866
    invoke-virtual/range {v21 .. v21}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 1820
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

    .line 1814
    .end local v30           #otherAccountsCnt:I
    .restart local v31       #otherAccountsCnt:I
    :catch_5
    move-exception v4

    move-object/from16 v26, v4

    move/from16 v30, v31

    .end local v31           #otherAccountsCnt:I
    .restart local v30       #otherAccountsCnt:I
    goto :goto_9

    .line 1793
    .end local v30           #otherAccountsCnt:I
    .end local v33           #tempTypeInOtherAccounts:[Lcom/android/email/activity/MessageView$MailBoxType;
    :catch_6
    move-exception v4

    move-object/from16 v24, v4

    move/from16 v27, v28

    .end local v28           #mailBoxCnt:I
    .restart local v27       #mailBoxCnt:I
    goto/16 :goto_4

    .line 1786
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

    .line 1770
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
    .line 1870
    move-object/from16 v15, p0

    .line 1871
    .local v15, context:Landroid/content/Context;
    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1872
    .local v3, resolver:Landroid/content/ContentResolver;
    const-string v6, "accountKey=? AND type<64 AND flagVisible=1"

    .line 1876
    .local v6, MAILBOX_SELECTION:Ljava/lang/String;
    const/16 v20, 0x0

    .line 1877
    .local v20, mailBoxCnt:I
    const/16 v22, 0x0

    .line 1880
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

    .line 1888
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

    .line 1950
    .end local v6           #MAILBOX_SELECTION:Ljava/lang/String;
    .end local v16           #cursor:Landroid/database/Cursor;
    :cond_0
    :goto_0
    return-void

    .line 1893
    .restart local v6       #MAILBOX_SELECTION:Ljava/lang/String;
    .restart local v16       #cursor:Landroid/database/Cursor;
    :cond_1
    const/4 v4, -0x1

    :try_start_1
    move-object/from16 v0, v16

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1894
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v4

    move v0, v4

    new-array v0, v0, [Lcom/android/email/activity/MessageView$MailBoxType;

    move-object/from16 v22, v0
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move/from16 v21, v20

    .line 1895
    .end local v20           #mailBoxCnt:I
    .local v21, mailBoxCnt:I
    :goto_1
    :pswitch_0
    :try_start_2
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1896
    invoke-static/range {p0 .. p0}, Lcom/android/email/Utility$FolderProperties;->getInstance(Landroid/content/Context;)Lcom/android/email/Utility$FolderProperties;

    move-result-object v4

    const/4 v5, 0x2

    move-object/from16 v0, v16

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/email/Utility$FolderProperties;->getDisplayName(I)Ljava/lang/String;

    move-result-object v13

    .line 1897
    .local v13, text:Ljava/lang/String;
    if-nez v13, :cond_2

    .line 1898
    const/4 v4, 0x1

    move-object/from16 v0, v16

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 1900
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

    .line 1910
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

    .line 1912
    .end local v20           #mailBoxCnt:I
    .restart local v21       #mailBoxCnt:I
    goto :goto_1

    .line 1913
    .end local v13           #text:Ljava/lang/String;
    .end local v21           #mailBoxCnt:I
    .restart local v20       #mailBoxCnt:I
    :catch_0
    move-exception v4

    move-object/from16 v19, v4

    .line 1914
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

    .line 1915
    invoke-virtual/range {v19 .. v19}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 1920
    .end local v16           #cursor:Landroid/database/Cursor;
    .end local v19           #ise:Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v4

    move-object/from16 v17, v4

    .line 1921
    .local v17, e:Ljava/lang/Exception;
    :goto_3
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 1918
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

    .line 1925
    move/from16 v0, v21

    new-array v0, v0, [Lcom/android/email/activity/MessageView$MailBoxType;

    move-object/from16 v23, v0

    .line 1927
    .local v23, viewType:[Lcom/android/email/activity/MessageView$MailBoxType;
    const/16 v18, 0x0

    .local v18, i:I
    :goto_4
    move/from16 v0, v18

    move/from16 v1, v21

    if-ge v0, v1, :cond_4

    .line 1928
    aget-object v4, v22, v18

    aput-object v4, v23, v18

    .line 1927
    add-int/lit8 v18, v18, 0x1

    goto :goto_4

    .line 1930
    :cond_4
    new-instance v4, Lcom/android/email/activity/MessageView$MailBoxAdapter;

    move-object v0, v4

    move-object/from16 v1, p0

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/email/activity/MessageView$MailBoxAdapter;-><init>(Landroid/content/Context;[Lcom/android/email/activity/MessageView$MailBoxType;)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/MessageView;->mMoveListToOtherAccountAdapter:Lcom/android/email/activity/MessageView$MailBoxAdapter;

    .line 1932
    new-instance v14, Landroid/app/AlertDialog$Builder;

    move-object v0, v14

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1934
    .local v14, builder:Landroid/app/AlertDialog$Builder;
    move-object v0, v14

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1935
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mMoveListToOtherAccountAdapter:Lcom/android/email/activity/MessageView$MailBoxAdapter;

    move-object v4, v0

    new-instance v5, Lcom/android/email/activity/MessageView$10;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/email/activity/MessageView$10;-><init>(Lcom/android/email/activity/MessageView;)V

    invoke-virtual {v14, v4, v5}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1949
    invoke-virtual {v14}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move/from16 v20, v21

    .line 1950
    .end local v21           #mailBoxCnt:I
    .restart local v20       #mailBoxCnt:I
    goto/16 :goto_0

    .line 1920
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

    .line 1913
    .end local v20           #mailBoxCnt:I
    .restart local v21       #mailBoxCnt:I
    :catch_3
    move-exception v4

    move-object/from16 v19, v4

    move/from16 v20, v21

    .end local v21           #mailBoxCnt:I
    .restart local v20       #mailBoxCnt:I
    goto :goto_2

    .line 1900
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
    .line 1988
    iget-wide v2, p0, Lcom/android/email/activity/MessageView;->mMailboxId:J

    invoke-static {p0, v2, v3}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v10

    .line 1989
    .local v10, mailbox:Lcom/android/email/provider/EmailContent$Mailbox;
    iget-wide v2, v10, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    cmp-long v0, v2, p1

    if-eqz v0, :cond_0

    iget-wide v2, p0, Lcom/android/email/activity/MessageView;->mMailboxId:J

    cmp-long v0, v2, p3

    if-eqz v0, :cond_0

    .line 1991
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1992
    .local v1, cloneSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    iget-wide v2, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1993
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mController:Lcom/android/email/Controller;

    iget-wide v2, v10, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    iget-wide v4, p0, Lcom/android/email/activity/MessageView;->mMailboxId:J

    move-wide v6, p1

    move-wide v8, p3

    invoke-virtual/range {v0 .. v9}, Lcom/android/email/Controller;->moveMessageToOtherAccountFolder(Ljava/util/HashSet;JJJJ)Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 1995
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

    .line 1998
    .local v11, reportString:Ljava/lang/String;
    const/4 v0, 0x0

    invoke-static {p0, v11, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1999
    sget-object p1, Lcom/android/email/activity/MessageView;->mContext:Landroid/content/Context;

    .end local p1
    check-cast p1, Lcom/android/email/activity/MessageList;

    iget-wide v2, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/email/activity/MessageList;->removeMessage(Ljava/lang/Long;)V

    .line 2006
    .end local v11           #reportString:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 2003
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

    .line 2487
    sget v0, Lcom/android/email/activity/MessageList;->mViewModeType:I

    sget v1, Lcom/android/email/activity/MessageList;->VIEW_MODE_CONVERSATION:I

    if-ne v0, v1, :cond_1

    .line 2488
    sget v7, Lcom/android/email/activity/MessageList;->mPositionOfSelectedMessage:I

    .line 2490
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

    .line 2491
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

    .line 2493
    sget v0, Lcom/android/email/activity/MessageList;->mTotalListCount:I

    sub-int/2addr v0, v8

    if-ge v7, v0, :cond_2

    .line 2495
    add-int/lit8 v7, v7, 0x1

    .line 2497
    sget-object v0, Lcom/android/email/activity/MessageList;->mMessageIdArray4ThreadList:[I

    aget v0, v0, v7

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    add-int/lit8 v7, v7, 0x1

    .line 2499
    :cond_0
    sget-object v0, Lcom/android/email/activity/MessageList;->mMessageIdArray4ThreadList:[I

    aget v0, v0, v7

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    .line 2501
    iget-wide v0, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    const-wide/16 v2, -0x2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 2503
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

    .line 2505
    sput v7, Lcom/android/email/activity/MessageList;->mPositionOfSelectedMessage:I

    .line 2507
    sget-object v0, Lcom/android/email/activity/MessageView;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    iget-wide v3, p0, Lcom/android/email/activity/MessageView;->mMailboxId:J

    iget v5, p0, Lcom/android/email/activity/MessageView;->mDisplayMode:I

    sget v6, Lcom/android/email/activity/MessageView;->mTextSize:I

    invoke-static/range {v0 .. v6}, Lcom/android/email/activity/MessageView;->actionView(Landroid/content/Context;JJII)V

    .line 2508
    invoke-virtual {p0, v9, v10}, Lcom/android/email/activity/MessageView;->overridePendingTransition(II)V

    .line 2509
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->finish()V

    move v0, v8

    .line 2528
    .end local v7           #position:I
    :goto_0
    return v0

    .line 2516
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mPrevNextCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mPrevNextCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2517
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mPrevNextCursor:Landroid/database/Cursor;

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    .line 2519
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->messageChanged()V

    .line 2521
    invoke-virtual {p0, v9, v10}, Lcom/android/email/activity/MessageView;->overridePendingTransition(II)V

    move v0, v8

    .line 2524
    goto :goto_0

    :cond_2
    move v0, v5

    .line 2528
    goto :goto_0
.end method

.method private onPrevious()Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    const-string v4, "View >>"

    .line 2533
    sget v0, Lcom/android/email/activity/MessageList;->mViewModeType:I

    sget v1, Lcom/android/email/activity/MessageList;->VIEW_MODE_CONVERSATION:I

    if-ne v0, v1, :cond_1

    .line 2534
    sget v7, Lcom/android/email/activity/MessageList;->mPositionOfSelectedMessage:I

    .line 2536
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

    .line 2537
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

    .line 2539
    if-lez v7, :cond_2

    .line 2541
    add-int/lit8 v7, v7, -0x1

    .line 2543
    sget-object v0, Lcom/android/email/activity/MessageList;->mMessageIdArray4ThreadList:[I

    aget v0, v0, v7

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    add-int/lit8 v7, v7, -0x1

    .line 2544
    :cond_0
    sget-object v0, Lcom/android/email/activity/MessageList;->mMessageIdArray4ThreadList:[I

    aget v0, v0, v7

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    .line 2546
    iget-wide v0, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    const-wide/16 v2, -0x2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 2548
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

    .line 2550
    sput v7, Lcom/android/email/activity/MessageList;->mPositionOfSelectedMessage:I

    .line 2552
    sget-object v0, Lcom/android/email/activity/MessageView;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    iget-wide v3, p0, Lcom/android/email/activity/MessageView;->mMailboxId:J

    iget v5, p0, Lcom/android/email/activity/MessageView;->mDisplayMode:I

    sget v6, Lcom/android/email/activity/MessageView;->mTextSize:I

    invoke-static/range {v0 .. v6}, Lcom/android/email/activity/MessageView;->actionView(Landroid/content/Context;JJII)V

    .line 2553
    const v0, 0x7f040004

    const v1, 0x7f040005

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/MessageView;->overridePendingTransition(II)V

    .line 2554
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->finish()V

    move v0, v8

    .line 2574
    .end local v7           #position:I
    :goto_0
    return v0

    .line 2562
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mPrevNextCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mPrevNextCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    if-lez v0, :cond_2

    .line 2563
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mPrevNextCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToPrevious()Z

    .line 2564
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mPrevNextCursor:Landroid/database/Cursor;

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    .line 2566
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->messageChanged()V

    .line 2568
    const v0, 0x7f040006

    const v1, 0x7f040007

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/MessageView;->overridePendingTransition(II)V

    move v0, v8

    .line 2571
    goto :goto_0

    :cond_2
    move v0, v5

    .line 2574
    goto :goto_0
.end method

.method private onReceiverList()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 1673
    const/4 v6, 0x0

    .line 1674
    .local v6, viewType:[Lcom/android/email/activity/MessageView$ReceiverViewType;
    const/4 v4, 0x0

    .line 1675
    .local v4, toNumber:I
    const/4 v1, 0x0

    .line 1676
    .local v1, ccNumber:I
    const/4 v5, 0x0

    .line 1677
    .local v5, totalNumber:I
    const/4 v2, 0x0

    .line 1679
    .local v2, index:I
    iget-object v7, p0, Lcom/android/email/activity/MessageView;->mListTos:[Ljava/lang/String;

    if-eqz v7, :cond_0

    .line 1680
    iget-object v7, p0, Lcom/android/email/activity/MessageView;->mListTos:[Ljava/lang/String;

    array-length v4, v7

    .line 1682
    :cond_0
    iget-object v7, p0, Lcom/android/email/activity/MessageView;->mListCcs:[Ljava/lang/String;

    if-eqz v7, :cond_1

    .line 1683
    iget-object v7, p0, Lcom/android/email/activity/MessageView;->mListCcs:[Ljava/lang/String;

    array-length v1, v7

    .line 1685
    :cond_1
    if-lez v4, :cond_2

    .line 1686
    add-int/lit8 v5, v4, 0x1

    .line 1688
    :cond_2
    if-lez v1, :cond_3

    .line 1689
    add-int/lit8 v7, v1, 0x1

    add-int/2addr v5, v7

    .line 1691
    :cond_3
    new-array v6, v5, [Lcom/android/email/activity/MessageView$ReceiverViewType;

    .line 1693
    if-lez v4, :cond_5

    .line 1694
    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v7, v4, 0x1

    if-ge v2, v7, :cond_5

    .line 1696
    if-nez v2, :cond_4

    .line 1697
    new-instance v7, Lcom/android/email/activity/MessageView$ReceiverViewType;

    const v8, 0x7f080054

    invoke-virtual {p0, v8}, Lcom/android/email/activity/MessageView;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, p0, v8, v11}, Lcom/android/email/activity/MessageView$ReceiverViewType;-><init>(Lcom/android/email/activity/MessageView;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v7, v6, v2

    .line 1694
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1699
    :cond_4
    new-instance v7, Lcom/android/email/activity/MessageView$ReceiverViewType;

    iget-object v8, p0, Lcom/android/email/activity/MessageView;->mListTos:[Ljava/lang/String;

    sub-int v9, v2, v12

    aget-object v8, v8, v9

    invoke-direct {v7, p0, v11, v8}, Lcom/android/email/activity/MessageView$ReceiverViewType;-><init>(Lcom/android/email/activity/MessageView;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v7, v6, v2

    goto :goto_1

    .line 1703
    :cond_5
    if-lez v1, :cond_8

    .line 1705
    if-eqz v4, :cond_6

    add-int/lit8 v7, v4, 0x1

    move v3, v7

    .line 1706
    .local v3, startCcIndex:I
    :goto_2
    const/4 v2, 0x0

    :goto_3
    add-int/lit8 v7, v1, 0x1

    if-ge v2, v7, :cond_8

    .line 1708
    if-nez v2, :cond_7

    .line 1709
    add-int v7, v2, v3

    new-instance v8, Lcom/android/email/activity/MessageView$ReceiverViewType;

    const v9, 0x7f080055

    invoke-virtual {p0, v9}, Lcom/android/email/activity/MessageView;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, p0, v9, v11}, Lcom/android/email/activity/MessageView$ReceiverViewType;-><init>(Lcom/android/email/activity/MessageView;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v8, v6, v7

    .line 1706
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1705
    .end local v3           #startCcIndex:I
    :cond_6
    const/4 v7, 0x0

    move v3, v7

    goto :goto_2

    .line 1711
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

    .line 1715
    .end local v3           #startCcIndex:I
    :cond_8
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1716
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v7, 0x7f08015e

    invoke-virtual {p0, v7}, Lcom/android/email/activity/MessageView;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1718
    new-instance v7, Lcom/android/email/activity/MessageView$ReceiverListAdapter;

    invoke-direct {v7, p0, v6}, Lcom/android/email/activity/MessageView$ReceiverListAdapter;-><init>(Landroid/content/Context;[Lcom/android/email/activity/MessageView$ReceiverViewType;)V

    iput-object v7, p0, Lcom/android/email/activity/MessageView;->mReceiverListAdapter:Lcom/android/email/activity/MessageView$ReceiverListAdapter;

    .line 1720
    iget-object v7, p0, Lcom/android/email/activity/MessageView;->mReceiverListAdapter:Lcom/android/email/activity/MessageView$ReceiverListAdapter;

    new-instance v8, Lcom/android/email/activity/MessageView$8;

    invoke-direct {v8, p0}, Lcom/android/email/activity/MessageView$8;-><init>(Lcom/android/email/activity/MessageView;)V

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1726
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1728
    return-void
.end method

.method private onReply()V
    .locals 3

    .prologue
    .line 2318
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    if-eqz v0, :cond_0

    .line 2319
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Message;->mId:J

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/android/email/activity/MessageCompose;->actionReply(Landroid/content/Context;JZ)V

    .line 2320
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->finish()V

    .line 2322
    :cond_0
    return-void
.end method

.method private onReplyAll()V
    .locals 3

    .prologue
    .line 2325
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    if-eqz v0, :cond_0

    .line 2326
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Message;->mId:J

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Lcom/android/email/activity/MessageCompose;->actionReply(Landroid/content/Context;JZ)V

    .line 2327
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->finish()V

    .line 2329
    :cond_0
    return-void
.end method

.method private onRespond(II)V
    .locals 6
    .parameter "response"
    .parameter "toastResId"

    .prologue
    const/4 v5, 0x0

    .line 2675
    iget-wide v0, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    .line 2676
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

    .line 2677
    .local v2, moved:Z
    :goto_0
    iget v3, p0, Lcom/android/email/activity/MessageView;->mPreviousMeetingResponse:I

    if-eq v3, p1, :cond_1

    .line 2678
    iget-object v3, p0, Lcom/android/email/activity/MessageView;->mController:Lcom/android/email/Controller;

    iget-object v4, p0, Lcom/android/email/activity/MessageView;->mControllerCallback:Lcom/android/email/activity/MessageView$ControllerResults;

    invoke-virtual {v3, v0, v1, p1, v4}, Lcom/android/email/Controller;->sendMeetingResponse(JILcom/android/email/Controller$Result;)V

    .line 2679
    iput p1, p0, Lcom/android/email/activity/MessageView;->mPreviousMeetingResponse:I

    .line 2681
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/email/activity/MessageView;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 2682
    if-nez v2, :cond_2

    .line 2683
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->finish()V

    .line 2686
    :cond_2
    return-void

    .end local v2           #moved:Z
    :cond_3
    move v2, v5

    .line 2676
    goto :goto_0
.end method

.method private onRestore()V
    .locals 24

    .prologue
    .line 1595
    move-object/from16 v13, p0

    .line 1596
    .local v13, context:Landroid/content/Context;
    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 1599
    .local v5, resolver:Landroid/content/ContentResolver;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/activity/MessageView;->mAccountId:J

    move-wide v6, v0

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    .line 1601
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

    .line 1603
    :cond_0
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/activity/MessageView;->mAccountId:J

    move-wide v6, v0

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-nez v6, :cond_2

    .line 1668
    .end local v5           #resolver:Landroid/content/ContentResolver;
    :cond_1
    :goto_0
    return-void

    .line 1609
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

    .line 1612
    .local v15, inboxMailboxId:J
    const-wide/16 v19, -0x1

    .line 1613
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

    .line 1617
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

    .line 1621
    :goto_1
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1627
    sget-object v6, Lcom/android/email/provider/EmailContent$Message;->SYNCED_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/activity/MessageView;->mMessageId:J

    move-wide v7, v0

    invoke-static {v6, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v23

    .line 1631
    .local v23, uri:Landroid/net/Uri;
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 1632
    .local v14, cv:Landroid/content/ContentValues;
    const-string v6, "mailboxKey"

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v14, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1634
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v5

    move-object/from16 v1, v23

    move-object v2, v14

    move-object v3, v6

    move-object v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1636
    invoke-static {v13}, Lcom/android/email/MessagingController;->getInstance(Landroid/content/Context;)Lcom/android/email/MessagingController;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/MessageView;->mLegacyController:Lcom/android/email/MessagingController;

    .line 1639
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/activity/MessageView;->mAccountId:J

    move-wide v6, v0

    invoke-static {v13, v6, v7}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v11

    .line 1640
    .local v11, account:Lcom/android/email/provider/EmailContent$Account;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mController:Lcom/android/email/Controller;

    move-object v6, v0

    invoke-virtual {v6, v11}, Lcom/android/email/Controller;->isMessagingController(Lcom/android/email/provider/EmailContent$Account;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1641
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/activity/MessageView;->mAccountId:J

    move-wide/from16 v21, v0

    .line 1642
    .local v21, syncAccountId:J
    new-instance v6, Lcom/android/email/activity/MessageView$7;

    move-object v0, v6

    move-object/from16 v1, p0

    move-wide/from16 v2, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/android/email/activity/MessageView$7;-><init>(Lcom/android/email/activity/MessageView;J)V

    invoke-virtual {v6}, Lcom/android/email/activity/MessageView$7;->start()V

    .line 1650
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

    .line 1651
    .local v18, reportString:Ljava/lang/String;
    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move v2, v6

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 1653
    sget-object v5, Lcom/android/email/activity/MessageView;->mContext:Landroid/content/Context;

    .end local v5           #resolver:Landroid/content/ContentResolver;
    check-cast v5, Lcom/android/email/activity/MessageList;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/activity/MessageView;->mMessageId:J

    move-wide v6, v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/email/activity/MessageList;->removeMessage(Ljava/lang/Long;)V

    .line 1655
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/email/activity/MessageView;->mLogView:Z

    move v6, v0

    const/4 v7, 0x1

    if-ne v6, v7, :cond_5

    .line 1656
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MessageView;->finish()V

    goto/16 :goto_0

    .line 1617
    .end local v14           #cv:Landroid/content/ContentValues;
    .end local v18           #reportString:Ljava/lang/String;
    .end local v23           #uri:Landroid/net/Uri;
    .restart local v5       #resolver:Landroid/content/ContentResolver;
    :cond_4
    const-wide/16 v6, -0x1

    move-wide/from16 v19, v6

    goto/16 :goto_1

    .line 1621
    :catchall_0
    move-exception v6

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v6

    .line 1660
    .end local v5           #resolver:Landroid/content/ContentResolver;
    .restart local v14       #cv:Landroid/content/ContentValues;
    .restart local v18       #reportString:Ljava/lang/String;
    .restart local v23       #uri:Landroid/net/Uri;
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/android/email/activity/MessageView;->onPrevious()Z

    move-result v17

    .line 1662
    .local v17, moved:Z
    if-nez v17, :cond_1

    .line 1665
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MessageView;->finish()V

    goto/16 :goto_0
.end method

.method private onSaveToCalendar()V
    .locals 5

    .prologue
    .line 2822
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.EDIT"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2823
    .local v1, intent:Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.android.calendar"

    const-string v4, "com.android.calendar.EditEvent"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2824
    .local v0, cn:Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2826
    iget-object v3, p0, Lcom/android/email/activity/MessageView;->mSaveToCalendarHtmlText:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    .line 2828
    .local v2, spanned:Landroid/text/Spanned;
    const-string v3, "description"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2830
    const-string v3, "title"

    iget-object v4, p0, Lcom/android/email/activity/MessageView;->mSubjectView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 2831
    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageView;->startActivity(Landroid/content/Intent;)V

    .line 2834
    return-void
.end method

.method private onShowPictures()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2795
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    if-eqz v0, :cond_1

    .line 2796
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageContentView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 2797
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageContentView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    .line 2802
    :cond_0
    iput-boolean v4, p0, Lcom/android/email/activity/MessageView;->ShowPicturesEnabled:Z

    .line 2803
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mShowPicturesSection:Landroid/view/MenuItem;

    iget-boolean v1, p0, Lcom/android/email/activity/MessageView;->ShowPicturesEnabled:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2806
    new-instance v0, Lcom/android/email/activity/MessageView$LoadEmbeddedAttachmentsTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/email/activity/MessageView$LoadEmbeddedAttachmentsTask;-><init>(Lcom/android/email/activity/MessageView;Lcom/android/email/activity/MessageView$1;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mLoadEmbeddedAttachmentsTask:Lcom/android/email/activity/MessageView$LoadEmbeddedAttachmentsTask;

    .line 2807
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mLoadEmbeddedAttachmentsTask:Lcom/android/email/activity/MessageView$LoadEmbeddedAttachmentsTask;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Long;

    iget-object v2, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    iget-wide v2, v2, Lcom/android/email/provider/EmailContent$Message;->mId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageView$LoadEmbeddedAttachmentsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2809
    :cond_1
    return-void
.end method

.method private onTextSize()V
    .locals 7

    .prologue
    .line 3457
    const/4 v3, 0x3

    new-array v2, v3, [Lcom/android/email/activity/MessageView$TextSizeType;

    .line 3458
    .local v2, textType:[Lcom/android/email/activity/MessageView$TextSizeType;
    const/4 v3, 0x0

    new-instance v4, Lcom/android/email/activity/MessageView$TextSizeType;

    const v5, 0x7f08011d

    invoke-virtual {p0, v5}, Lcom/android/email/activity/MessageView;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x1c

    invoke-direct {v4, p0, v5, v6}, Lcom/android/email/activity/MessageView$TextSizeType;-><init>(Lcom/android/email/activity/MessageView;Ljava/lang/String;I)V

    aput-object v4, v2, v3

    .line 3459
    const/4 v3, 0x1

    new-instance v4, Lcom/android/email/activity/MessageView$TextSizeType;

    const v5, 0x7f08011e

    invoke-virtual {p0, v5}, Lcom/android/email/activity/MessageView;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x1e

    invoke-direct {v4, p0, v5, v6}, Lcom/android/email/activity/MessageView$TextSizeType;-><init>(Lcom/android/email/activity/MessageView;Ljava/lang/String;I)V

    aput-object v4, v2, v3

    .line 3460
    const/4 v3, 0x2

    new-instance v4, Lcom/android/email/activity/MessageView$TextSizeType;

    const v5, 0x7f08011f

    invoke-virtual {p0, v5}, Lcom/android/email/activity/MessageView;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x21

    invoke-direct {v4, p0, v5, v6}, Lcom/android/email/activity/MessageView$TextSizeType;-><init>(Lcom/android/email/activity/MessageView;Ljava/lang/String;I)V

    aput-object v4, v2, v3

    .line 3462
    new-instance v0, Lcom/android/email/activity/MessageView$TextSizeAdapter;

    invoke-direct {v0, p0, v2}, Lcom/android/email/activity/MessageView$TextSizeAdapter;-><init>(Landroid/content/Context;[Lcom/android/email/activity/MessageView$TextSizeType;)V

    .line 3464
    .local v0, adapter:Landroid/widget/ListAdapter;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3466
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const v3, 0x7f08011c

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 3467
    sget v3, Lcom/android/email/activity/MessageView;->mTextSize:I

    new-instance v4, Lcom/android/email/activity/MessageView$16;

    invoke-direct {v4, p0}, Lcom/android/email/activity/MessageView$16;-><init>(Lcom/android/email/activity/MessageView;)V

    invoke-virtual {v1, v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3473
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 3474
    return-void
.end method

.method private onTextSizeChange(I)V
    .locals 4
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    .line 3556
    sput p1, Lcom/android/email/activity/MessageView;->mTextSize:I

    .line 3558
    new-instance v0, Lcom/android/email/activity/MessageView$ChangeTextSizeTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/email/activity/MessageView$ChangeTextSizeTask;-><init>(Lcom/android/email/activity/MessageView;Lcom/android/email/activity/MessageView$1;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mTextSizeTask:Lcom/android/email/activity/MessageView$ChangeTextSizeTask;

    .line 3559
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mTextSizeTask:Lcom/android/email/activity/MessageView$ChangeTextSizeTask;

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageView$ChangeTextSizeTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 3561
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    if-eqz v0, :cond_0

    .line 3562
    new-instance v0, Lcom/android/email/activity/MessageView$LoadBodyTask;

    iget-object v1, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    iget-wide v1, v1, Lcom/android/email/provider/EmailContent$Message;->mId:J

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/email/activity/MessageView$LoadBodyTask;-><init>(Lcom/android/email/activity/MessageView;JZ)V

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mLoadBodyTask:Lcom/android/email/activity/MessageView$LoadBodyTask;

    .line 3563
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mLoadBodyTask:Lcom/android/email/activity/MessageView$LoadBodyTask;

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageView$LoadBodyTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 3565
    :cond_0
    return-void
.end method

.method private onViewAttachment(Lcom/android/email/activity/MessageView$AttachmentInfo;)V
    .locals 11
    .parameter "attachment"

    .prologue
    const/4 v10, 0x1

    .line 2755
    iput v10, p0, Lcom/android/email/activity/MessageView;->mSaveAttachmentsCount:I

    .line 2756
    iget-wide v0, p1, Lcom/android/email/activity/MessageView$AttachmentInfo;->attachmentId:J

    iput-wide v0, p0, Lcom/android/email/activity/MessageView;->mLoadAttachmentId:J

    .line 2757
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/MessageView;->mLoadAttachmentSave:Z

    .line 2758
    iget-object v0, p1, Lcom/android/email/activity/MessageView$AttachmentInfo;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mLoadAttachmentName:Ljava/lang/String;

    .line 2760
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

    .line 2763
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mController:Lcom/android/email/Controller;

    iget-wide v1, p1, Lcom/android/email/activity/MessageView$AttachmentInfo;->attachmentId:J

    iget-wide v3, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    iget-object v5, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    iget-wide v5, v5, Lcom/android/email/provider/EmailContent$Message;->mMailboxKey:J

    iget-wide v7, p0, Lcom/android/email/activity/MessageView;->mAccountId:J

    iget-object v9, p0, Lcom/android/email/activity/MessageView;->mControllerCallback:Lcom/android/email/activity/MessageView$ControllerResults;

    invoke-virtual/range {v0 .. v10}, Lcom/android/email/Controller;->loadAttachment(JJJJLcom/android/email/Controller$Result;Z)V

    .line 2768
    iput-boolean v10, p0, Lcom/android/email/activity/MessageView;->mDownloading:Z

    .line 2770
    return-void
.end method

.method private parseHtmlATag(Ljava/lang/String;)Z
    .locals 8
    .parameter "htmlBody"

    .prologue
    .line 6332
    const-string v0, "<IMG+.*?>"

    .line 6333
    .local v0, REG_EXPRE_FOR_IMG:Ljava/lang/String;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "jebarlin >>> Entering parseHtmlATag Length :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 6334
    const/4 v1, 0x0

    .line 6337
    .local v1, hasDataImage:Z
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 6338
    .local v4, p:Ljava/util/regex/Pattern;
    invoke-virtual {v4, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 6339
    .local v3, m:Ljava/util/regex/Matcher;
    :cond_0
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 6340
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "jebarlin >>> Body Contains IMG tag"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 6341
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    .line 6342
    .local v2, imgTag:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 6343
    const-string v5, "SRC=\""

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 6344
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "jebarlin >>> Body Contains IMG tag but not SRC"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 6345
    const/4 v5, 0x1

    .line 6349
    .end local v2           #imgTag:Ljava/lang/String;
    :goto_0
    return v5

    :cond_1
    move v5, v1

    goto :goto_0
.end method

.method private reloadUiFromBody(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 31
    .parameter "bodyText"
    .parameter "bodyHtml"
    .parameter "loadAttachment"

    .prologue
    .line 5074
    const/4 v5, 0x0

    .line 5075
    .local v5, text:Ljava/lang/String;
    const/16 v30, 0x0

    .line 5076
    .local v30, text2:Ljava/lang/String;
    const/4 v3, 0x0

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/MessageView;->mHtmlText:Ljava/lang/String;

    .line 5077
    const/4 v14, 0x0

    .line 5080
    .local v14, hasImages:Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    .line 5082
    .local v27, resources:Landroid/content/res/Resources;
    const/4 v13, 0x0

    .line 5083
    .local v13, fontColor:Ljava/lang/String;
    const/4 v11, 0x0

    .line 5085
    .local v11, backgroundColor:Ljava/lang/String;
    const/high16 v10, -0x100

    .line 5086
    .local v10, attachFontAttrs:I
    const v9, 0x7f0200d6

    .line 5088
    .local v9, attachBgResource:I
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/sec/android/hardware/SecHardwareInterface;->setAmoledACL(Z)V

    .line 5089
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MessageView;->mDisplayMode:I

    move v3, v0

    packed-switch v3, :pswitch_data_0

    .line 5132
    .end local v5           #text:Ljava/lang/String;
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/android/email/activity/MessageView;->updateColors()V

    .line 5135
    invoke-direct/range {p0 .. p0}, Lcom/android/email/activity/MessageView;->updateTextSize()V

    .line 5137
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

    .line 5138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mAttachments:Landroid/widget/LinearLayout;

    move-object v3, v0

    move-object v0, v3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0700d4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/RelativeLayout;

    .line 5139
    .local v26, r:Landroid/widget/RelativeLayout;
    const-string v3, "View >>"

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 5142
    invoke-virtual/range {v26 .. v26}, Landroid/widget/RelativeLayout;->invalidate()V

    .line 5137
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 5091
    .end local v16           #i:I
    .end local v26           #r:Landroid/widget/RelativeLayout;
    .restart local v5       #text:Ljava/lang/String;
    :pswitch_0
    const v9, 0x7f0200d5

    .line 5093
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

    .line 5095
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

    .line 5098
    :catch_0
    move-exception v3

    move-object v12, v3

    .line 5100
    .local v12, e:Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v12}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 5095
    .end local v12           #e:Landroid/provider/Settings$SettingNotFoundException;
    :cond_0
    const/4 v3, 0x0

    goto :goto_2

    .line 5104
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

    .line 5105
    .restart local v13       #fontColor:Ljava/lang/String;
    new-instance v11, Ljava/lang/String;

    .end local v11           #backgroundColor:Ljava/lang/String;
    const v3, 0x7f080112

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageView;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v11, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 5106
    .restart local v11       #backgroundColor:Ljava/lang/String;
    const v3, 0x7f090009

    move-object/from16 v0, v27

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    .line 5107
    goto/16 :goto_0

    .line 5109
    :pswitch_2
    new-instance v13, Ljava/lang/String;

    .end local v13           #fontColor:Ljava/lang/String;
    const v3, 0x7f080115

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageView;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v13, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 5110
    .restart local v13       #fontColor:Ljava/lang/String;
    new-instance v11, Ljava/lang/String;

    .end local v11           #backgroundColor:Ljava/lang/String;
    const v3, 0x7f080114

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageView;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v11, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 5111
    .restart local v11       #backgroundColor:Ljava/lang/String;
    const v3, 0x7f09000b

    move-object/from16 v0, v27

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    .line 5112
    goto/16 :goto_0

    .line 5114
    :pswitch_3
    new-instance v13, Ljava/lang/String;

    .end local v13           #fontColor:Ljava/lang/String;
    const v3, 0x7f080117

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageView;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v13, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 5115
    .restart local v13       #fontColor:Ljava/lang/String;
    new-instance v11, Ljava/lang/String;

    .end local v11           #backgroundColor:Ljava/lang/String;
    const v3, 0x7f080116

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageView;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v11, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 5116
    .restart local v11       #backgroundColor:Ljava/lang/String;
    const v3, 0x7f09000d

    move-object/from16 v0, v27

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    .line 5117
    goto/16 :goto_0

    .line 5119
    :pswitch_4
    new-instance v13, Ljava/lang/String;

    .end local v13           #fontColor:Ljava/lang/String;
    const v3, 0x7f080119

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageView;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v13, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 5120
    .restart local v13       #fontColor:Ljava/lang/String;
    new-instance v11, Ljava/lang/String;

    .end local v11           #backgroundColor:Ljava/lang/String;
    const v3, 0x7f080118

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageView;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v11, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 5121
    .restart local v11       #backgroundColor:Ljava/lang/String;
    const v3, 0x7f09000f

    move-object/from16 v0, v27

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    .line 5122
    goto/16 :goto_0

    .line 5124
    :pswitch_5
    new-instance v13, Ljava/lang/String;

    .end local v13           #fontColor:Ljava/lang/String;
    const v3, 0x7f08011b

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageView;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v13, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 5125
    .restart local v13       #fontColor:Ljava/lang/String;
    new-instance v11, Ljava/lang/String;

    .end local v11           #backgroundColor:Ljava/lang/String;
    const v3, 0x7f08011a

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageView;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v11, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 5126
    .restart local v11       #backgroundColor:Ljava/lang/String;
    const v3, 0x7f090011

    move-object/from16 v0, v27

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    goto/16 :goto_0

    .line 5146
    .end local v5           #text:Ljava/lang/String;
    .restart local v16       #i:I
    :cond_1
    if-nez p2, :cond_e

    .line 5147
    const-string v3, "Email"

    const-string v4, "reloadUiFromBody : bodyHtml is null"

    invoke-static {v3, v4}, Lcom/android/email/Email;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 5148
    move-object/from16 v5, p1

    .line 5153
    .restart local v5       #text:Ljava/lang/String;
    new-instance v28, Ljava/lang/StringBuffer;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuffer;-><init>()V

    .line 5154
    .local v28, sb:Ljava/lang/StringBuffer;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MessageView;->mDisplayMode:I

    move v3, v0

    if-eqz v3, :cond_3

    .line 5155
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

    move-object/from16 v0, v28

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5160
    :goto_3
    if-eqz v5, :cond_8

    .line 5164
    invoke-static {v5}, Lcom/android/email/mail/internet/EmailHtmlUtil;->escapeCharacterToDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 5167
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual {v4}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/util/Patterns;->PHONE:Ljava/util/regex/Pattern;

    invoke-virtual {v4}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v4}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 5169
    .local v23, phoneOrWebOrEmail:Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v19

    .line 5171
    .local v19, mPhoneOrWebOrEmail:Ljava/util/regex/Matcher;
    :goto_4
    invoke-virtual/range {v19 .. v19}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 5173
    invoke-virtual/range {v19 .. v19}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v20

    .line 5175
    .local v20, matchedText:Ljava/lang/String;
    move-object/from16 v18, v20

    .line 5176
    .local v18, linkText:Ljava/lang/String;
    const/16 v25, 0x0

    .line 5178
    .local v25, protoType:Ljava/lang/String;
    sget-object v3, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v3}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 5179
    const-string v25, "mailto:"

    .line 5205
    :goto_5
    if-eqz v18, :cond_2

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 5207
    const-string v3, ":"

    move-object/from16 v0, v18

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    .line 5208
    .local v17, index:I
    const/4 v3, -0x1

    move/from16 v0, v17

    move v1, v3

    if-eq v0, v1, :cond_2

    .line 5210
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    move-object/from16 v0, v18

    move v1, v4

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 5214
    .end local v17           #index:I
    :cond_2
    const-string v3, "<a href=\"%s\">%s</a>"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v7

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x1

    aput-object v20, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 5215
    .local v15, href:Ljava/lang/String;
    move-object/from16 v0, v19

    move-object/from16 v1, v28

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto/16 :goto_4

    .line 5157
    .end local v15           #href:Ljava/lang/String;
    .end local v18           #linkText:Ljava/lang/String;
    .end local v19           #mPhoneOrWebOrEmail:Ljava/util/regex/Matcher;
    .end local v20           #matchedText:Ljava/lang/String;
    .end local v23           #phoneOrWebOrEmail:Ljava/lang/String;
    .end local v25           #protoType:Ljava/lang/String;
    :cond_3
    const-string v3, "<html><body>"

    move-object/from16 v0, v28

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_3

    .line 5182
    .restart local v18       #linkText:Ljava/lang/String;
    .restart local v19       #mPhoneOrWebOrEmail:Ljava/util/regex/Matcher;
    .restart local v20       #matchedText:Ljava/lang/String;
    .restart local v23       #phoneOrWebOrEmail:Ljava/lang/String;
    .restart local v25       #protoType:Ljava/lang/String;
    :cond_4
    sget-object v3, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual {v3}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 5188
    sget-object v3, Lcom/android/email/activity/MessageView;->WEB_URL_PROTOCOL:Ljava/util/regex/Pattern;

    move-object v0, v3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v24

    .line 5189
    .local v24, proto:Ljava/util/regex/Matcher;
    invoke-virtual/range {v24 .. v24}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 5192
    const-string v25, ""

    goto/16 :goto_5

    .line 5196
    :cond_5
    const-string v25, "http://"

    goto/16 :goto_5

    .line 5201
    .end local v24           #proto:Ljava/util/regex/Matcher;
    :cond_6
    const-string v25, "tel:"

    goto/16 :goto_5

    .line 5217
    .end local v18           #linkText:Ljava/lang/String;
    .end local v20           #matchedText:Ljava/lang/String;
    .end local v25           #protoType:Ljava/lang/String;
    :cond_7
    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 5346
    .end local v19           #mPhoneOrWebOrEmail:Ljava/util/regex/Matcher;
    .end local v23           #phoneOrWebOrEmail:Ljava/lang/String;
    :cond_8
    const-string v3, "</body></html>"

    move-object/from16 v0, v28

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5347
    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 5363
    :goto_6
    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/MessageView;->mSaveToCalendarHtmlText:Ljava/lang/String;

    .line 5366
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mMenu:Landroid/view/Menu;

    move-object v3, v0

    if-eqz v3, :cond_9

    .line 5367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mMenu:Landroid/view/Menu;

    move-object v3, v0

    const v4, 0x7f070146

    invoke-interface {v3, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v21

    .line 5368
    .local v21, mi:Landroid/view/MenuItem;
    const/4 v3, 0x1

    move-object/from16 v0, v21

    move v1, v3

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 5370
    .end local v21           #mi:Landroid/view/MenuItem;
    :cond_9
    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/email/activity/MessageView;->mSaveToCalendarEnabled:Z

    .line 5373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mMessageContentView:Landroid/webkit/WebView;

    move-object v3, v0

    if-eqz v3, :cond_c

    .line 5376
    invoke-direct/range {p0 .. p0}, Lcom/android/email/activity/MessageView;->checkITPolicy_AllowHTMLEmail()Z

    move-result v3

    if-nez v3, :cond_a

    .line 5378
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "11111 MessageView.java >>>>> reloadUiFromBody()  >>>>> 4451"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 5379
    const v3, 0x7f080189

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move v1, v3

    move v2, v4

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 5382
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mHtmlText:Ljava/lang/String;

    move-object v3, v0

    if-eqz v3, :cond_a

    .line 5385
    const-string v3, "<(/?)([^<>]*)?>"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v22

    .line 5386
    .local v22, p:Ljava/util/regex/Pattern;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mHtmlText:Ljava/lang/String;

    move-object v3, v0

    move-object/from16 v0, v22

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v29

    .line 5388
    .local v29, tempStr:Ljava/lang/String;
    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_a

    .line 5389
    move-object/from16 v5, v29

    .line 5395
    .end local v22           #p:Ljava/util/regex/Pattern;
    .end local v29           #tempStr:Ljava/lang/String;
    :cond_a
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/email/activity/MessageView;->ShowPicturesEnabled:Z

    .line 5396
    invoke-direct/range {p0 .. p0}, Lcom/android/email/activity/MessageView;->IsEAS()Z

    move-result v3

    if-nez v3, :cond_b

    .line 5398
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mMessageContentView:Landroid/webkit/WebView;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getBlockNetworkImage()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 5401
    if-eqz v14, :cond_10

    const/4 v3, 0x1

    :goto_7
    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/email/activity/MessageView;->ShowPicturesEnabled:Z

    .line 5406
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mMessageContentView:Landroid/webkit/WebView;

    move-object v3, v0

    const-string v4, "email://"

    const-string v6, "text/html"

    const-string v7, "utf-8"

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5407
    if-eqz p2, :cond_c

    .line 5408
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

    .line 5416
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mMenu:Landroid/view/Menu;

    move-object v3, v0

    if-eqz v3, :cond_d

    .line 5417
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mShowPicturesSection:Landroid/view/MenuItem;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/email/activity/MessageView;->ShowPicturesEnabled:Z

    move v4, v0

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 5431
    :cond_d
    const-string v3, "Email"

    const-string v4, "reloadUiFromBody mRefreshedFromLoadMoreCB == false"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5433
    new-instance v3, Lcom/android/email/activity/MessageView$LoadAttachmentsTask;

    move-object v0, v3

    move-object/from16 v1, p0

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/email/activity/MessageView$LoadAttachmentsTask;-><init>(Lcom/android/email/activity/MessageView;Z)V

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/MessageView;->mLoadAttachmentsTask:Lcom/android/email/activity/MessageView$LoadAttachmentsTask;

    .line 5435
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

    .line 5438
    return-void

    .line 5349
    .end local v28           #sb:Ljava/lang/StringBuffer;
    :cond_e
    const-string v3, "Email"

    const-string v4, "reloadUiFromBody : bodyHtml is not null"

    invoke-static {v3, v4}, Lcom/android/email/Email;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 5351
    new-instance v28, Ljava/lang/StringBuffer;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuffer;-><init>()V

    .line 5352
    .restart local v28       #sb:Ljava/lang/StringBuffer;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MessageView;->mDisplayMode:I

    move v3, v0

    if-eqz v3, :cond_f

    .line 5353
    const-string v3, "<style type=text/css>\n"

    move-object/from16 v0, v28

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5354
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

    move-object/from16 v0, v28

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5355
    const-string v3, "--></style>"

    move-object/from16 v0, v28

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5359
    :cond_f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 5360
    .restart local v5       #text:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

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

    .line 5361
    sget-object v3, Lcom/android/email/activity/MessageView;->IMG_TAG_START_REGEX:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v14

    goto/16 :goto_6

    .line 5401
    :cond_10
    const/4 v3, 0x0

    goto/16 :goto_7

    .line 5089
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
    .line 4737
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    .line 4738
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Message;->mAccountKey:J

    move-wide v5, v0

    move-wide v0, v5

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/email/activity/MessageView;->mAccountId:J

    .line 4740
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/activity/MessageView;->mAccountId:J

    move-wide v5, v0

    move-object/from16 v0, p0

    move-wide v1, v5

    invoke-static {v0, v1, v2}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/MessageView;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    .line 4741
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MessageView;->mDisplayMode:I

    move v5, v0

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    .line 4742
    const-string v5, "View >>"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "reloadUIFromMessage || display mode : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v7, v0

    invoke-virtual {v7}, Lcom/android/email/provider/EmailContent$Account;->getDisplayMode()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 4743
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/email/provider/EmailContent$Account;->getDisplayMode()I

    move-result v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/email/activity/MessageView;->mDisplayMode:I

    .line 4746
    :cond_0
    sget v5, Lcom/android/email/activity/MessageView;->mTextSize:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_1

    .line 4747
    const-string v5, "View >>"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "reloadUIFromMessage || text size : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v7, v0

    invoke-virtual {v7}, Lcom/android/email/provider/EmailContent$Account;->getTextSize()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 4748
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/email/provider/EmailContent$Account;->getTextSize()I

    move-result v5

    sput v5, Lcom/android/email/activity/MessageView;->mTextSize:I

    .line 4751
    :cond_1
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/activity/MessageView;->mMailboxId:J

    move-wide v5, v0

    const-wide/16 v7, -0x1

    cmp-long v5, v5, v7

    if-nez v5, :cond_2

    .line 4752
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Message;->mMailboxKey:J

    move-wide v5, v0

    move-wide v0, v5

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/email/activity/MessageView;->mMailboxId:J

    .line 4755
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mPrevNextCursor:Landroid/database/Cursor;

    move-object v5, v0

    if-nez v5, :cond_3

    .line 4756
    new-instance v5, Lcom/android/email/activity/MessageView$LoadPrevNextTask;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/activity/MessageView;->mMailboxId:J

    move-wide v6, v0

    move-object v0, v5

    move-object/from16 v1, p0

    move-wide v2, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/email/activity/MessageView$LoadPrevNextTask;-><init>(Lcom/android/email/activity/MessageView;J)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/MessageView;->mLoadPrevNextTask:Lcom/android/email/activity/MessageView$LoadPrevNextTask;

    .line 4757
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mLoadPrevNextTask:Lcom/android/email/activity/MessageView$LoadPrevNextTask;

    move-object v5, v0

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Void;

    invoke-virtual {v5, v6}, Lcom/android/email/activity/MessageView$LoadPrevNextTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 4760
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mSubjectView_marquee:Landroid/widget/TextView;

    move-object v5, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4761
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mSubjectView_marquee:Landroid/widget/TextView;

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    move-object v8, v0

    if-eqz v8, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mSubjectAttachmentIcon:Landroid/graphics/drawable/Drawable;

    move-object v8, v0

    :goto_0
    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 4764
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mSubjectView:Landroid/widget/TextView;

    move-object v5, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4765
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mFromView:Landroid/widget/TextView;

    move-object v5, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    move-object v6, v0

    invoke-static {v6}, Lcom/android/email/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/email/mail/Address;

    move-result-object v6

    invoke-static {v6}, Lcom/android/email/mail/Address;->toFriendly([Lcom/android/email/mail/Address;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4766
    new-instance v13, Ljava/util/Date;

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Message;->mTimeStamp:J

    move-wide v5, v0

    invoke-direct {v13, v5, v6}, Ljava/util/Date;-><init>(J)V

    .line 4768
    .local v13, date:Ljava/util/Date;
    new-instance v23, Ljava/lang/StringBuffer;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuffer;-><init>()V

    .line 4769
    .local v23, receiveDate:Ljava/lang/StringBuffer;
    const-string v5, "("

    move-object/from16 v0, v23

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4770
    invoke-static {v13}, Lcom/android/email/Utility;->isDateToday(Ljava/util/Date;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 4772
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mTimeFormat:Ljava/text/DateFormat;

    move-object v5, v0

    invoke-virtual {v5, v13}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v23

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4780
    :goto_1
    const-string v5, ")"

    move-object/from16 v0, v23

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4781
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mDateView:Landroid/widget/TextView;

    move-object v5, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4785
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/email/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/email/mail/Address;

    move-result-object v25

    .line 4786
    .local v25, toAddresses:[Lcom/android/email/mail/Address;
    move-object/from16 v0, v25

    array-length v0, v0

    move v5, v0

    new-array v5, v5, [Ljava/lang/String;

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/MessageView;->mListTos:[Ljava/lang/String;

    .line 4787
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mListTos:[Ljava/lang/String;

    move-object v5, v0

    array-length v5, v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/email/activity/MessageView;->allToListCount:I

    .line 4788
    new-instance v19, Ljava/lang/StringBuffer;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuffer;-><init>()V

    .line 4789
    .local v19, listTo:Ljava/lang/StringBuffer;
    const/16 v16, 0x0

    .local v16, i:I
    :goto_2
    move-object/from16 v0, v25

    array-length v0, v0

    move v5, v0

    move/from16 v0, v16

    move v1, v5

    if-ge v0, v1, :cond_8

    .line 4791
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    if-lez v5, :cond_4

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_4

    const-string v5, ", "

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    .line 4793
    :cond_4
    aget-object v5, v25, v16

    invoke-virtual {v5}, Lcom/android/email/mail/Address;->toFriendly()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_7

    aget-object v5, v25, v16

    invoke-virtual {v5}, Lcom/android/email/mail/Address;->toFriendly()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_7

    .line 4794
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mListTos:[Ljava/lang/String;

    move-object v5, v0

    aget-object v6, v25, v16

    invoke-virtual {v6}, Lcom/android/email/mail/Address;->toFriendly()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v16

    .line 4801
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mListTos:[Ljava/lang/String;

    move-object v5, v0

    aget-object v5, v5, v16

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    .line 4789
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 4761
    .end local v13           #date:Ljava/util/Date;
    .end local v16           #i:I
    .end local v19           #listTo:Ljava/lang/StringBuffer;
    .end local v23           #receiveDate:Ljava/lang/StringBuffer;
    .end local v25           #toAddresses:[Lcom/android/email/mail/Address;
    :cond_5
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 4776
    .restart local v13       #date:Ljava/util/Date;
    .restart local v23       #receiveDate:Ljava/lang/StringBuffer;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mDateFormat:Ljava/text/DateFormat;

    move-object v5, v0

    invoke-virtual {v5, v13}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v23

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4777
    const-string v5, "  "

    move-object/from16 v0, v23

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4778
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mTimeFormat:Ljava/text/DateFormat;

    move-object v5, v0

    invoke-virtual {v5, v13}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v23

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 4798
    .restart local v16       #i:I
    .restart local v19       #listTo:Ljava/lang/StringBuffer;
    .restart local v25       #toAddresses:[Lcom/android/email/mail/Address;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mListTos:[Ljava/lang/String;

    move-object v5, v0

    aget-object v6, v25, v16

    invoke-virtual {v6}, Lcom/android/email/mail/Address;->toFriendlyAddress()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v16

    goto :goto_3

    .line 4803
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MessageView;->allToListCount:I

    move v5, v0

    if-lez v5, :cond_9

    .line 4804
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mToView:Landroid/widget/TextView;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4806
    :cond_9
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/email/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/email/mail/Address;

    move-result-object v11

    .line 4807
    .local v11, ccAddresses:[Lcom/android/email/mail/Address;
    array-length v5, v11

    new-array v5, v5, [Ljava/lang/String;

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/MessageView;->mListCcs:[Ljava/lang/String;

    .line 4808
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mListCcs:[Ljava/lang/String;

    move-object v5, v0

    array-length v5, v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/email/activity/MessageView;->allCCListCount:I

    .line 4809
    new-instance v18, Ljava/lang/StringBuffer;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuffer;-><init>()V

    .line 4810
    .local v18, listCc:Ljava/lang/StringBuffer;
    const/16 v16, 0x0

    :goto_4
    array-length v5, v11

    move/from16 v0, v16

    move v1, v5

    if-ge v0, v1, :cond_c

    .line 4811
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    if-lez v5, :cond_a

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_a

    const-string v5, ", "

    move-object/from16 v0, v18

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    .line 4812
    :cond_a
    aget-object v5, v11, v16

    invoke-virtual {v5}, Lcom/android/email/mail/Address;->toFriendly()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_b

    aget-object v5, v11, v16

    invoke-virtual {v5}, Lcom/android/email/mail/Address;->toFriendly()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_b

    .line 4813
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mListCcs:[Ljava/lang/String;

    move-object v5, v0

    aget-object v6, v11, v16

    invoke-virtual {v6}, Lcom/android/email/mail/Address;->toFriendly()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v16

    .line 4818
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mListCcs:[Ljava/lang/String;

    move-object v5, v0

    aget-object v5, v5, v16

    move-object/from16 v0, v18

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    .line 4810
    add-int/lit8 v16, v16, 0x1

    goto :goto_4

    .line 4816
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mListCcs:[Ljava/lang/String;

    move-object v5, v0

    aget-object v6, v11, v16

    invoke-virtual {v6}, Lcom/android/email/mail/Address;->toFriendlyAddress()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v16

    goto :goto_5

    .line 4821
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MessageView;->allCCListCount:I

    move v5, v0

    if-lez v5, :cond_d

    .line 4822
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mCcView:Landroid/widget/TextView;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4824
    :cond_d
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/email/provider/EmailContent$Message;->mImportance:I

    move/from16 v21, v0

    .line 4825
    .local v21, priority:I
    packed-switch v21, :pswitch_data_0

    .line 4846
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mPriorityLayout:Landroid/widget/LinearLayout;

    move-object v5, v0

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4853
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mAttachmentIcon:Landroid/widget/ImageView;

    move-object v5, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    move-object v6, v0

    if-eqz v6, :cond_15

    const/4 v6, 0x0

    :goto_7
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4854
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mFavoriteIcon:Landroid/widget/ImageView;

    move-object v5, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/email/provider/EmailContent$Message;->mFlagFavorite:Z

    move v6, v0

    if-eqz v6, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mFavoriteIconOn:Landroid/graphics/drawable/Drawable;

    move-object v6, v0

    :goto_8
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4857
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/email/activity/MessageView;->mAlldownloadIconVisible:Z

    move v5, v0

    const/4 v6, 0x1

    if-ne v5, v6, :cond_18

    .line 4858
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mAllDownloadIcon:Landroid/widget/TextView;

    move-object v5, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    move-object v6, v0

    if-eqz v6, :cond_17

    const/4 v6, 0x0

    :goto_9
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4863
    :goto_a
    invoke-direct/range {p0 .. p0}, Lcom/android/email/activity/MessageView;->IsEAS()Z

    move-result v5

    if-eqz v5, :cond_11

    .line 4866
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MessageView;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v7, Lcom/android/email/provider/EmailContent$Message;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v8, "_id=?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/activity/MessageView;->mMessageId:J

    move-wide v11, v0

    .end local v11           #ccAddresses:[Lcom/android/email/mail/Address;
    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 4869
    .local v12, cur:Landroid/database/Cursor;
    const/16 v17, 0x0

    .line 4872
    .local v17, isMimeLoaded:I
    :try_start_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 4873
    const-string v5, "isMimeLoaded"

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 4878
    :cond_e
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "jebarlin >>>> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget-byte v0, v0, Lcom/android/email/provider/EmailContent$Message;->mFlagTruncated:B

    move v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 4879
    move-object/from16 v0, p1

    iget-byte v0, v0, Lcom/android/email/provider/EmailContent$Message;->mFlagTruncated:B

    move v5, v0

    const/4 v6, 0x1

    if-eq v5, v6, :cond_f

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Message;->mId:J

    move-wide v5, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/email/provider/EmailContent$Message;->mIsMimeLoaded:I

    move v7, v0

    move-object/from16 v0, p0

    move-wide v1, v5

    move v3, v7

    invoke-direct {v0, v1, v2, v3}, Lcom/android/email/activity/MessageView;->hasInlineDataImage(JI)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 4882
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mMoreMessage:Landroid/view/View;

    move-object v5, v0

    if-eqz v5, :cond_10

    .line 4883
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mMoreMessage:Landroid/view/View;

    move-object v5, v0

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 4885
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->loadMoreMessage:Landroid/widget/Button;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 4887
    const-string v5, "MessageView"

    const-string v6, "mFlagTruncated == FLAG_TRUNCATED_YES"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4929
    :goto_b
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 4948
    .end local v12           #cur:Landroid/database/Cursor;
    .end local v17           #isMimeLoaded:I
    :cond_11
    :goto_c
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/email/provider/EmailContent$Message;->mFlags:I

    move v5, v0

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_1e

    .line 4950
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mMeetingYes:Landroid/widget/Button;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 4951
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mMeetingMaybe:Landroid/widget/Button;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 4952
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mMeetingNo:Landroid/widget/Button;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 4953
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->loadMoreMessageLinearLayout:Landroid/widget/LinearLayout;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4954
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mAcceptButton:Landroid/widget/Button;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 4955
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mTentativeButton:Landroid/widget/Button;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 4956
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mDeclineButton:Landroid/widget/Button;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 4971
    :goto_d
    const-string v5, "View >>"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "allToListCount = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MessageView;->allToListCount:I

    move v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " allCCListCount = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MessageView;->allCCListCount:I

    move v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 4973
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MessageView;->allToListCount:I

    move v5, v0

    const/4 v6, 0x1

    if-gt v5, v6, :cond_12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MessageView;->allCCListCount:I

    move v5, v0

    const/4 v6, 0x1

    if-le v5, v6, :cond_1f

    .line 4975
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mExpanderIcon:Landroid/widget/ImageButton;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 4985
    :goto_e
    invoke-direct/range {p0 .. p0}, Lcom/android/email/activity/MessageView;->updateColors()V

    .line 4987
    invoke-direct/range {p0 .. p0}, Lcom/android/email/activity/MessageView;->updateTextSize()V

    .line 4989
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/email/activity/MessageView;->mNeedToReloadMessage:Z

    .line 4990
    const-wide/16 v5, -0x1

    move-wide v0, v5

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/email/activity/MessageView;->mCurrentMessageID:J

    .line 4997
    if-eqz p2, :cond_21

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/email/provider/EmailContent$Message;->mFlagLoaded:I

    move v5, v0

    const/4 v6, 0x1

    if-eq v5, v6, :cond_21

    .line 4998
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Message;->mId:J

    move-wide v5, v0

    move-wide v0, v5

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/email/activity/MessageView;->mWaitForLoadMessageId:J

    .line 5001
    invoke-direct/range {p0 .. p0}, Lcom/android/email/activity/MessageView;->checkITPolicy_AllowPOPIMAP()Z

    move-result v5

    if-nez v5, :cond_20

    .line 5003
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "11111 MessageView.java >>>>> reloadUiFromMessage()  >>>>> 4220"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 5004
    const v5, 0x7f08018a

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v1, v5

    move v2, v6

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 5027
    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    move-object v5, v0

    const v6, 0x7f0700ec

    invoke-virtual {v5, v6}, Lcom/android/email/winset/NonScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 5028
    const/16 v24, 0x8

    .line 5030
    .local v24, reply_visibility:I
    const/16 v24, 0x0

    .line 5032
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    move-object v5, v0

    const v6, 0x7f0700f0

    invoke-virtual {v5, v6}, Lcom/android/email/winset/NonScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5036
    invoke-direct/range {p0 .. p0}, Lcom/android/email/activity/MessageView;->IsEAS()Z

    move-result v5

    if-eqz v5, :cond_23

    .line 5037
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/email/provider/EmailContent$Message;->getFollowupFlag(Landroid/content/Context;)Lcom/android/email/provider/EmailContent$FollowupFlag;

    move-result-object v5

    iget-object v15, v5, Lcom/android/email/provider/EmailContent$FollowupFlag;->Status:Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagStatus;

    .line 5038
    .local v15, flag:Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagStatus;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ">>>>>>> flag : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 5040
    sget-object v5, Lcom/android/email/activity/MessageView$18;->$SwitchMap$com$android$email$provider$EmailContent$FollowupFlag$FollowupFlagStatus:[I

    invoke-virtual {v15}, Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagStatus;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_1

    .line 5043
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    move-object v5, v0

    const v6, 0x7f0700dd

    invoke-virtual {v5, v6}, Lcom/android/email/winset/NonScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 5056
    .end local p1
    :goto_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    move-object v5, v0

    const v6, 0x7f0700c5

    invoke-virtual {v5, v6}, Lcom/android/email/winset/NonScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 5062
    .end local v15           #flag:Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagStatus;
    :goto_11
    return-void

    .line 4827
    .end local v24           #reply_visibility:I
    .restart local v11       #ccAddresses:[Lcom/android/email/mail/Address;
    .restart local p1
    :pswitch_0
    invoke-direct/range {p0 .. p0}, Lcom/android/email/activity/MessageView;->IsEAS()Z

    move-result v5

    if-eqz v5, :cond_13

    .line 4828
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mPriorityLayout:Landroid/widget/LinearLayout;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4829
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mPriorityView:Landroid/widget/TextView;

    move-object v5, v0

    const v6, 0x7f08019f

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_6

    .line 4831
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mPriorityLayout:Landroid/widget/LinearLayout;

    move-object v5, v0

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_6

    .line 4835
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mPriorityLayout:Landroid/widget/LinearLayout;

    move-object v5, v0

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_6

    .line 4838
    :pswitch_2
    invoke-direct/range {p0 .. p0}, Lcom/android/email/activity/MessageView;->IsEAS()Z

    move-result v5

    if-eqz v5, :cond_14

    .line 4839
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mPriorityLayout:Landroid/widget/LinearLayout;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4840
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mPriorityView:Landroid/widget/TextView;

    move-object v5, v0

    const v6, 0x7f0801a0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_6

    .line 4842
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mPriorityLayout:Landroid/widget/LinearLayout;

    move-object v5, v0

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_6

    .line 4853
    :cond_15
    const/16 v6, 0x8

    goto/16 :goto_7

    .line 4854
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mFavoriteIconOff:Landroid/graphics/drawable/Drawable;

    move-object v6, v0

    goto/16 :goto_8

    .line 4858
    :cond_17
    const/16 v6, 0x8

    goto/16 :goto_9

    .line 4861
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mAllDownloadIcon:Landroid/widget/TextView;

    move-object v5, v0

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_a

    .line 4891
    .end local v11           #ccAddresses:[Lcom/android/email/mail/Address;
    .restart local v12       #cur:Landroid/database/Cursor;
    .restart local v17       #isMimeLoaded:I
    :cond_19
    :try_start_1
    sget-object v5, Lcom/android/email/activity/MessageView;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Message;->mAccountKey:J

    move-wide v6, v0

    invoke-static {v5, v6, v7}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v20

    .line 4892
    .local v20, mAccount:Lcom/android/email/provider/EmailContent$Account;
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 4894
    .local v22, protocolVer:Ljava/lang/String;
    if-eqz v22, :cond_1c

    const-string v5, "2.5"

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1c

    if-nez v17, :cond_1c

    .line 4898
    const-string v5, "MessageView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isEx2003 = true, Protocol Version = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Message Truncated = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget-byte v0, v0, Lcom/android/email/provider/EmailContent$Message;->mFlagTruncated:B

    move v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4900
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mMoreMessage:Landroid/view/View;

    move-object v5, v0

    if-eqz v5, :cond_1a

    .line 4901
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mMoreMessage:Landroid/view/View;

    move-object v5, v0

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 4903
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->loadMoreMessage:Landroid/widget/Button;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 4922
    :cond_1b
    :goto_12
    const-string v5, "MessageView"

    const-string v6, "mFlagTruncated == FLAG_TRUNCATED_NO"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_b

    .line 4925
    .end local v20           #mAccount:Lcom/android/email/provider/EmailContent$Account;
    .end local v22           #protocolVer:Ljava/lang/String;
    :catch_0
    move-exception v5

    move-object v14, v5

    .line 4926
    .local v14, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4929
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto/16 :goto_c

    .line 4910
    .end local v14           #e:Ljava/lang/Exception;
    .restart local v20       #mAccount:Lcom/android/email/provider/EmailContent$Account;
    .restart local v22       #protocolVer:Ljava/lang/String;
    :cond_1c
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mMoreMessage:Landroid/view/View;

    move-object v5, v0

    if-eqz v5, :cond_1d

    .line 4911
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mMoreMessage:Landroid/view/View;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 4912
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->loadMoreMessage:Landroid/widget/Button;

    move-object v5, v0

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 4915
    if-eqz v22, :cond_1b

    const-string v5, "2.5"

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 4917
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Message;->mId:J

    move-wide v5, v0

    move-object/from16 v0, p0

    move-wide v1, v5

    invoke-direct {v0, v1, v2}, Lcom/android/email/activity/MessageView;->getContentId(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_12

    .line 4929
    .end local v20           #mAccount:Lcom/android/email/provider/EmailContent$Account;
    .end local v22           #protocolVer:Ljava/lang/String;
    :catchall_0
    move-exception v5

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v5

    .line 4960
    .end local v12           #cur:Landroid/database/Cursor;
    .end local v17           #isMimeLoaded:I
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mMeetingYes:Landroid/widget/Button;

    move-object v5, v0

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 4961
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mMeetingMaybe:Landroid/widget/Button;

    move-object v5, v0

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 4962
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mMeetingNo:Landroid/widget/Button;

    move-object v5, v0

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 4963
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->loadMoreMessageLinearLayout:Landroid/widget/LinearLayout;

    move-object v5, v0

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4964
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mAcceptButton:Landroid/widget/Button;

    move-object v5, v0

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 4965
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mTentativeButton:Landroid/widget/Button;

    move-object v5, v0

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 4966
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mDeclineButton:Landroid/widget/Button;

    move-object v5, v0

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_d

    .line 4979
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mExpanderIcon:Landroid/widget/ImageButton;

    move-object v5, v0

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_e

    .line 5010
    :cond_20
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/email/activity/MessageView;->mNeedToReloadMessage:Z

    .line 5011
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Message;->mId:J

    move-wide v5, v0

    move-wide v0, v5

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/email/activity/MessageView;->mCurrentMessageID:J

    .line 5012
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mController:Lcom/android/email/Controller;

    move-object v5, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Message;->mId:J

    move-wide v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mControllerCallback:Lcom/android/email/activity/MessageView$ControllerResults;

    move-object v8, v0

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/email/Controller;->loadMessageForView(JLcom/android/email/Controller$Result;)V

    goto/16 :goto_f

    .line 5016
    :cond_21
    const-wide/16 v5, -0x1

    move-wide v0, v5

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/email/activity/MessageView;->mWaitForLoadMessageId:J

    .line 5018
    invoke-direct/range {p0 .. p0}, Lcom/android/email/activity/MessageView;->IsEAS()Z

    move-result v5

    if-eqz v5, :cond_22

    .line 5019
    new-instance v5, Lcom/android/email/activity/MessageView$LoadBodyTask;

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Message;->mId:J

    move-wide v6, v0

    move-object v0, v5

    move-object/from16 v1, p0

    move-wide v2, v6

    move/from16 v4, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/email/activity/MessageView$LoadBodyTask;-><init>(Lcom/android/email/activity/MessageView;JZ)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/MessageView;->mLoadBodyTask:Lcom/android/email/activity/MessageView$LoadBodyTask;

    .line 5023
    :goto_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mLoadBodyTask:Lcom/android/email/activity/MessageView$LoadBodyTask;

    move-object v5, v0

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Void;

    invoke-virtual {v5, v6}, Lcom/android/email/activity/MessageView$LoadBodyTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_f

    .line 5021
    :cond_22
    new-instance v5, Lcom/android/email/activity/MessageView$LoadBodyTask;

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Message;->mId:J

    move-wide v6, v0

    const/4 v8, 0x1

    move-object v0, v5

    move-object/from16 v1, p0

    move-wide v2, v6

    move v4, v8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/email/activity/MessageView$LoadBodyTask;-><init>(Lcom/android/email/activity/MessageView;JZ)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/MessageView;->mLoadBodyTask:Lcom/android/email/activity/MessageView$LoadBodyTask;

    goto :goto_13

    .line 5047
    .restart local v15       #flag:Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagStatus;
    .restart local v24       #reply_visibility:I
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    move-object v5, v0

    const v6, 0x7f0700dd

    invoke-virtual {v5, v6}, Lcom/android/email/winset/NonScrollView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0200b8

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 5048
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    move-object v5, v0

    const v6, 0x7f0700dd

    invoke-virtual {v5, v6}, Lcom/android/email/winset/NonScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_10

    .line 5052
    .restart local p1
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    move-object v5, v0

    const v6, 0x7f0700dd

    invoke-virtual {v5, v6}, Lcom/android/email/winset/NonScrollView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0200bd

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 5053
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    move-object v5, v0

    const v6, 0x7f0700dd

    invoke-virtual {v5, v6}, Lcom/android/email/winset/NonScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_10

    .line 5059
    .end local v15           #flag:Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagStatus;
    .restart local p1
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    move-object v5, v0

    const v6, 0x7f0700c5

    invoke-virtual {v5, v6}, Lcom/android/email/winset/NonScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 5060
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    move-object v5, v0

    const v6, 0x7f0700dd

    invoke-virtual {v5, v6}, Lcom/android/email/winset/NonScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_11

    .line 4825
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 5040
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private repositionPrevNextCursor()V
    .locals 4

    .prologue
    .line 3625
    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 3626
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

    .line 3629
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mPrevNextCursor:Landroid/database/Cursor;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 3630
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

    .line 3632
    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mPrevNextCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3634
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->finish()V

    .line 3636
    :cond_3
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mPrevNextCursor:Landroid/database/Cursor;

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageView;->updatePrevNextArrows(Landroid/database/Cursor;)V

    .line 3637
    return-void
.end method

.method private saveAttachmentsTemporarily()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 2774
    iput v13, p0, Lcom/android/email/activity/MessageView;->mSaveAttachmentsCount:I

    .line 2775
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ge v12, v0, :cond_1

    .line 2776
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v12}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/email/activity/MessageView$AttachmentInfo;

    .line 2777
    .local v11, attachment:Lcom/android/email/activity/MessageView$AttachmentInfo;
    iget-wide v0, v11, Lcom/android/email/activity/MessageView$AttachmentInfo;->attachmentId:J

    iput-wide v0, p0, Lcom/android/email/activity/MessageView;->mLoadAttachmentId:J

    .line 2778
    iput-boolean v13, p0, Lcom/android/email/activity/MessageView;->mLoadAttachmentSave:Z

    .line 2780
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

    .line 2782
    iget-object v0, v11, Lcom/android/email/activity/MessageView$AttachmentInfo;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mLoadAttachmentName:Ljava/lang/String;

    .line 2783
    if-nez v12, :cond_0

    .line 2784
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mController:Lcom/android/email/Controller;

    iget-wide v1, v11, Lcom/android/email/activity/MessageView$AttachmentInfo;->attachmentId:J

    iget-wide v3, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    iget-object v5, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    iget-wide v5, v5, Lcom/android/email/provider/EmailContent$Message;->mMailboxKey:J

    iget-wide v7, p0, Lcom/android/email/activity/MessageView;->mAccountId:J

    iget-object v9, p0, Lcom/android/email/activity/MessageView;->mControllerCallback:Lcom/android/email/activity/MessageView$ControllerResults;

    const/4 v10, 0x1

    invoke-virtual/range {v0 .. v10}, Lcom/android/email/Controller;->loadAttachment(JJJJLcom/android/email/Controller$Result;Z)V

    .line 2775
    :goto_1
    add-int/lit8 v12, v12, 0x1

    iget v0, p0, Lcom/android/email/activity/MessageView;->mSaveAttachmentsCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/email/activity/MessageView;->mSaveAttachmentsCount:I

    goto :goto_0

    .line 2787
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

    .line 2791
    .end local v11           #attachment:Lcom/android/email/activity/MessageView$AttachmentInfo;
    :cond_1
    return-void
.end method

.method private startPresenceCheck()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 4002
    iget-object v2, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    if-eqz v2, :cond_0

    .line 4003
    iget-object v2, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    iget-object v2, v2, Lcom/android/email/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/email/mail/Address;->unpackFirst(Ljava/lang/String;)Lcom/android/email/mail/Address;

    move-result-object v1

    .line 4004
    .local v1, sender:Lcom/android/email/mail/Address;
    if-eqz v1, :cond_0

    .line 4005
    invoke-virtual {v1}, Lcom/android/email/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 4006
    .local v0, email:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 4007
    new-instance v2, Lcom/android/email/activity/MessageView$PresenceCheckTask;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/email/activity/MessageView$PresenceCheckTask;-><init>(Lcom/android/email/activity/MessageView;Lcom/android/email/activity/MessageView$1;)V

    iput-object v2, p0, Lcom/android/email/activity/MessageView;->mPresenceCheckTask:Lcom/android/email/activity/MessageView$PresenceCheckTask;

    .line 4008
    iget-object v2, p0, Lcom/android/email/activity/MessageView;->mPresenceCheckTask:Lcom/android/email/activity/MessageView$PresenceCheckTask;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    aput-object v0, v3, v4

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MessageView$PresenceCheckTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 4014
    .end local v0           #email:Ljava/lang/String;
    .end local v1           #sender:Lcom/android/email/mail/Address;
    :goto_0
    return-void

    .line 4013
    :cond_0
    invoke-direct {p0, v4}, Lcom/android/email/activity/MessageView;->updateSenderPresence(I)V

    goto :goto_0
.end method

.method private updateAttachmentThumbnail(J)V
    .locals 6
    .parameter "attachmentId"

    .prologue
    .line 3726
    const/4 v2, 0x0

    .local v2, i:I
    iget-object v4, p0, Lcom/android/email/activity/MessageView;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .local v1, count:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 3727
    iget-object v4, p0, Lcom/android/email/activity/MessageView;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageView$AttachmentInfo;

    .line 3728
    .local v0, attachment:Lcom/android/email/activity/MessageView$AttachmentInfo;
    iget-wide v4, v0, Lcom/android/email/activity/MessageView$AttachmentInfo;->attachmentId:J

    cmp-long v4, v4, p1

    if-nez v4, :cond_1

    .line 3729
    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageView;->getPreviewIcon(Lcom/android/email/activity/MessageView$AttachmentInfo;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 3730
    .local v3, previewIcon:Landroid/graphics/Bitmap;
    if-eqz v3, :cond_0

    .line 3731
    iget-object v4, p0, Lcom/android/email/activity/MessageView;->mHandler:Lcom/android/email/activity/MessageView$MessageViewHandler;

    invoke-virtual {v4, v2, v3}, Lcom/android/email/activity/MessageView$MessageViewHandler;->updateAttachmentIcon(ILandroid/graphics/Bitmap;)V

    .line 3736
    .end local v0           #attachment:Lcom/android/email/activity/MessageView$AttachmentInfo;
    .end local v3           #previewIcon:Landroid/graphics/Bitmap;
    :cond_0
    return-void

    .line 3726
    .restart local v0       #attachment:Lcom/android/email/activity/MessageView$AttachmentInfo;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private updateColors()V
    .locals 5

    .prologue
    .line 5557
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 5558
    .local v3, resources:Landroid/content/res/Resources;
    const v2, 0x7f02007e

    .line 5559
    .local v2, headerBgResource:I
    const v4, 0x7f090007

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 5560
    .local v1, fontColor:I
    const v4, 0x7f090006

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 5563
    .local v0, backgroundColor:I
    iget v4, p0, Lcom/android/email/activity/MessageView;->mDisplayMode:I

    packed-switch v4, :pswitch_data_0

    .line 5613
    :goto_0
    :pswitch_0
    iget-object v4, p0, Lcom/android/email/activity/MessageView;->mMessageSwitchBar:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_0

    .line 5614
    iget-object v4, p0, Lcom/android/email/activity/MessageView;->mMessageSwitchBar:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 5615
    iget-object v4, p0, Lcom/android/email/activity/MessageView;->mMessageSwitchBar:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->invalidate()V

    .line 5618
    :cond_0
    iget-object v4, p0, Lcom/android/email/activity/MessageView;->mMessageContentView:Landroid/webkit/WebView;

    if-eqz v4, :cond_1

    .line 5619
    iget-object v4, p0, Lcom/android/email/activity/MessageView;->mMessageContentView:Landroid/webkit/WebView;

    invoke-virtual {v4, v0}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 5620
    iget-object v4, p0, Lcom/android/email/activity/MessageView;->mMessageContentView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->invalidate()V

    .line 5622
    :cond_1
    return-void

    .line 5569
    :pswitch_1
    const v4, 0x7f090008

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 5570
    const v2, 0x7f02007d

    .line 5571
    const v4, 0x7f090009

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 5572
    goto :goto_0

    .line 5574
    :pswitch_2
    const v4, 0x7f09000a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 5575
    const v2, 0x7f02007d

    .line 5576
    const v4, 0x7f09000b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 5577
    goto :goto_0

    .line 5579
    :pswitch_3
    const v4, 0x7f09000c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 5580
    const v2, 0x7f02007d

    .line 5581
    const v4, 0x7f09000d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 5582
    goto :goto_0

    .line 5584
    :pswitch_4
    const v4, 0x7f09000e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 5585
    const v2, 0x7f02007d

    .line 5586
    const v4, 0x7f09000f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 5587
    goto :goto_0

    .line 5589
    :pswitch_5
    const v4, 0x7f090010

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 5590
    const v2, 0x7f02007d

    .line 5591
    const v4, 0x7f090011

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    goto :goto_0

    .line 5563
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

    .line 3643
    if-eqz p1, :cond_1

    .line 3645
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3648
    :cond_0
    const/4 v0, 0x0

    .local v0, hasNext:Z
    move v1, v0

    .line 3655
    .local v1, hasPrev:Z
    :goto_0
    iget-boolean v2, p0, Lcom/android/email/activity/MessageView;->mLogView:Z

    if-nez v2, :cond_1

    .line 3656
    iget-object v2, p0, Lcom/android/email/activity/MessageView;->mPrevious:Landroid/view/View;

    if-eqz v1, :cond_5

    move v3, v4

    :goto_1
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 3657
    iget-object v2, p0, Lcom/android/email/activity/MessageView;->mNext:Landroid/view/View;

    if-eqz v0, :cond_6

    move v3, v4

    :goto_2
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 3660
    .end local v0           #hasNext:Z
    .end local v1           #hasPrev:Z
    :cond_1
    return-void

    .line 3650
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->isFirst()Z

    move-result v2

    if-nez v2, :cond_3

    move v1, v3

    .line 3651
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

    .line 3650
    goto :goto_3

    .restart local v1       #hasPrev:Z
    :cond_4
    move v0, v4

    .line 3651
    goto :goto_4

    .restart local v0       #hasNext:Z
    :cond_5
    move v3, v5

    .line 3656
    goto :goto_1

    :cond_6
    move v3, v5

    .line 3657
    goto :goto_2
.end method

.method private updateSenderPresence(I)V
    .locals 1
    .parameter "presenceIconId"

    .prologue
    .line 4021
    if-nez p1, :cond_0

    .line 4024
    const p1, 0x7f0200cd

    .line 4026
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mSenderPresenceView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4027
    return-void
.end method

.method private updateTextSize()V
    .locals 7

    .prologue
    const/high16 v6, 0x4000

    const/4 v5, 0x0

    .line 5626
    const/high16 v2, 0x41d0

    .line 5627
    .local v2, textSize:F
    const/high16 v1, 0x41e0

    .line 5629
    .local v1, subjectTextSize:F
    sget-object v0, Landroid/webkit/WebSettings$TextSize;->LARGER:Landroid/webkit/WebSettings$TextSize;

    .line 5630
    .local v0, MessageContentTextSize:Landroid/webkit/WebSettings$TextSize;
    const/16 v3, 0x16

    .line 5632
    .local v3, webViewTextSize:I
    sget v4, Lcom/android/email/activity/MessageView;->mTextSize:I

    packed-switch v4, :pswitch_data_0

    .line 5648
    :goto_0
    :pswitch_0
    iget-object v4, p0, Lcom/android/email/activity/MessageView;->mSubjectView_marquee:Landroid/widget/TextView;

    invoke-virtual {v4, v5, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 5649
    iget-object v4, p0, Lcom/android/email/activity/MessageView;->mSubjectView:Landroid/widget/TextView;

    invoke-virtual {v4, v5, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 5650
    iget-object v4, p0, Lcom/android/email/activity/MessageView;->mFromView:Landroid/widget/TextView;

    invoke-virtual {v4, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 5652
    iget-object v4, p0, Lcom/android/email/activity/MessageView;->mToHintView:Landroid/widget/TextView;

    invoke-virtual {v4, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 5653
    iget-object v4, p0, Lcom/android/email/activity/MessageView;->mToView:Landroid/widget/TextView;

    invoke-virtual {v4, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 5654
    iget-object v4, p0, Lcom/android/email/activity/MessageView;->mCcHintView:Landroid/widget/TextView;

    invoke-virtual {v4, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 5655
    iget-object v4, p0, Lcom/android/email/activity/MessageView;->mCcView:Landroid/widget/TextView;

    invoke-virtual {v4, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 5657
    iget-object v4, p0, Lcom/android/email/activity/MessageView;->mPriorityHintView:Landroid/widget/TextView;

    invoke-virtual {v4, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 5658
    iget-object v4, p0, Lcom/android/email/activity/MessageView;->mPriorityView:Landroid/widget/TextView;

    invoke-virtual {v4, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 5662
    iget-object v4, p0, Lcom/android/email/activity/MessageView;->mDateView:Landroid/widget/TextView;

    invoke-virtual {v4, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 5664
    iget-object v4, p0, Lcom/android/email/activity/MessageView;->mMessageContentView:Landroid/webkit/WebView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/email/activity/MessageView;->mMessageContentView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 5665
    iget-object v4, p0, Lcom/android/email/activity/MessageView;->mMessageContentView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/webkit/WebSettings;->setTextSize(Landroid/webkit/WebSettings$TextSize;)V

    .line 5668
    :cond_0
    iget-object v4, p0, Lcom/android/email/activity/MessageView;->mMessageSwitchBar:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_1

    .line 5669
    iget-object v4, p0, Lcom/android/email/activity/MessageView;->mMessageSwitchBar:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->invalidate()V

    .line 5672
    :cond_1
    iget-object v4, p0, Lcom/android/email/activity/MessageView;->mMessageContentView:Landroid/webkit/WebView;

    if-eqz v4, :cond_2

    .line 5673
    iget-object v4, p0, Lcom/android/email/activity/MessageView;->mMessageContentView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->invalidate()V

    .line 5676
    :cond_2
    return-void

    .line 5634
    :pswitch_1
    sub-float/2addr v2, v6

    .line 5635
    sub-float/2addr v1, v6

    .line 5636
    sget-object v0, Landroid/webkit/WebSettings$TextSize;->NORMAL:Landroid/webkit/WebSettings$TextSize;

    .line 5637
    const/16 v3, 0x12

    .line 5638
    goto :goto_0

    .line 5642
    :pswitch_2
    add-float/2addr v2, v6

    .line 5643
    add-float/2addr v1, v6

    .line 5644
    sget-object v0, Landroid/webkit/WebSettings$TextSize;->LARGEST:Landroid/webkit/WebSettings$TextSize;

    .line 5645
    const/16 v3, 0x1a

    goto :goto_0

    .line 5632
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

    .line 1389
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1390
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 1508
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    return v6

    .line 1393
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iput v6, p0, Lcom/android/email/activity/MessageView;->mStartX:F

    .line 1394
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iput v6, p0, Lcom/android/email/activity/MessageView;->mStartY:F

    goto :goto_0

    .line 1398
    :pswitch_1
    iput-boolean v9, p0, Lcom/android/email/activity/MessageView;->mIsDragged:Z

    goto :goto_0

    .line 1408
    :pswitch_2
    iget-boolean v6, p0, Lcom/android/email/activity/MessageView;->mMultiTouch:Z

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    invoke-virtual {v6}, Lcom/android/email/winset/NonScrollView;->isShown()Z

    move-result v6

    if-ne v6, v10, :cond_2

    .line 1409
    iget v6, p0, Lcom/android/email/activity/MessageView;->mStartY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    sub-float/2addr v6, v7

    float-to-int v1, v6

    .line 1410
    .local v1, distance:I
    iget-object v6, p0, Lcom/android/email/activity/MessageView;->mMessageContentView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getScrollY()I

    move-result v6

    add-int v4, v6, v1

    .line 1412
    .local v4, nDiff:I
    iget-object v6, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    invoke-virtual {v6}, Lcom/android/email/winset/NonScrollView;->isScrollBottom()Z

    move-result v6

    if-ne v6, v10, :cond_2

    .line 1414
    if-le v4, v10, :cond_5

    if-eqz v1, :cond_5

    .line 1415
    new-array v3, v8, [I

    .line 1416
    .local v3, location:[I
    const/4 v5, 0x0

    .line 1417
    .local v5, nLocalBottom:I
    iget-object v6, p0, Lcom/android/email/activity/MessageView;->mMessageContentView:Landroid/webkit/WebView;

    invoke-virtual {v6, v3}, Landroid/webkit/WebView;->getLocationInWindow([I)V

    .line 1418
    aget v5, v3, v10

    .line 1419
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

    .line 1421
    :cond_0
    iget-object v6, p0, Lcom/android/email/activity/MessageView;->mMessageContentView:Landroid/webkit/WebView;

    invoke-virtual {v6, v9, v1}, Landroid/webkit/WebView;->scrollBy(II)V

    .line 1422
    iput-boolean v10, p0, Lcom/android/email/activity/MessageView;->mIsDragged:Z

    .line 1424
    :cond_1
    iget-object v6, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    invoke-virtual {v6, v10}, Lcom/android/email/winset/NonScrollView;->setIsScrollBottom(Z)V

    .line 1470
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

    .line 1473
    iget-object v6, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    invoke-virtual {v6, v9}, Lcom/android/email/winset/NonScrollView;->setVisibility(I)V

    .line 1474
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->arrangeAttachments()V

    .line 1475
    iget-object v6, p0, Lcom/android/email/activity/MessageView;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v6

    if-ne v6, v10, :cond_6

    .line 1477
    iget-object v6, p0, Lcom/android/email/activity/MessageView;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1488
    :cond_3
    :goto_2
    iget-object v6, p0, Lcom/android/email/activity/MessageView;->mMessageContentView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->invalidate()V

    .line 1489
    iget-object v6, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    invoke-virtual {v6, v9, v9}, Lcom/android/email/winset/NonScrollView;->measure(II)V

    .line 1490
    iget-object v6, p0, Lcom/android/email/activity/MessageView;->mMessageContentView:Landroid/webkit/WebView;

    iget-object v7, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    invoke-virtual {v7}, Lcom/android/email/winset/NonScrollView;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v6, v9, v7}, Landroid/webkit/WebView;->scrollTo(II)V

    .line 1494
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iput v6, p0, Lcom/android/email/activity/MessageView;->mStartY:F

    goto/16 :goto_0

    .line 1426
    .restart local v1       #distance:I
    .restart local v4       #nDiff:I
    :cond_5
    if-ge v4, v8, :cond_2

    .line 1429
    iget-object v6, p0, Lcom/android/email/activity/MessageView;->mMessageContentView:Landroid/webkit/WebView;

    invoke-virtual {v6, v9, v9}, Landroid/webkit/WebView;->scrollTo(II)V

    .line 1430
    iget-object v6, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    invoke-virtual {v6, v9}, Lcom/android/email/winset/NonScrollView;->setIsScrollBottom(Z)V

    goto :goto_1

    .line 1479
    .end local v1           #distance:I
    .end local v4           #nDiff:I
    :cond_6
    iget-object v6, p0, Lcom/android/email/activity/MessageView;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v6

    if-le v6, v10, :cond_3

    .line 1481
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x3f80

    invoke-direct {v2, v11, v11, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1484
    .local v2, forTopMargin:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v6, -0x7

    iput v6, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1485
    iget-object v6, p0, Lcom/android/email/activity/MessageView;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 1390
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

    .line 3099
    sparse-switch p1, :sswitch_data_0

    move v2, v4

    .line 3211
    :goto_0
    return v2

    .line 3102
    :sswitch_0
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->checkITPolicy_AllowAttachmentDownload()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3104
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "11111 MessageView.java >>>>> handleMenuItem()  >>>>> show_pictures"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 3105
    const v2, 0x7f08018b

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    :goto_1
    move v2, v5

    .line 3211
    goto :goto_0

    .line 3107
    :cond_0
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->onShowPictures()V

    goto :goto_1

    .line 3115
    :sswitch_1
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->onDeletePopup()V

    goto :goto_1

    .line 3119
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

    .line 3120
    .local v1, replayitems:[Ljava/lang/String;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f08014e

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/email/activity/MessageView$13;

    invoke-direct {v3, p0}, Lcom/android/email/activity/MessageView$13;-><init>(Lcom/android/email/activity/MessageView;)V

    invoke-virtual {v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_1

    .line 3161
    .end local v1           #replayitems:[Ljava/lang/String;
    :sswitch_3
    iput-boolean v4, p0, Lcom/android/email/activity/MessageView;->bForwardToOld:Z

    .line 3162
    new-array v0, v2, [Ljava/lang/String;

    const v2, 0x7f080079

    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageView;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    const v2, 0x7f08007a

    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageView;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v5

    .line 3163
    .local v0, forwarditems:[Ljava/lang/String;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f08014f

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/email/activity/MessageView$14;

    invoke-direct {v3, p0}, Lcom/android/email/activity/MessageView$14;-><init>(Lcom/android/email/activity/MessageView;)V

    invoke-virtual {v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_1

    .line 3178
    .end local v0           #forwarditems:[Ljava/lang/String;
    :sswitch_4
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->onSaveToCalendar()V

    goto :goto_1

    .line 3183
    :sswitch_5
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->onMoreMessage()V

    goto :goto_1

    .line 3188
    :sswitch_6
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->onDisplayMode()V

    goto :goto_1

    .line 3192
    :sswitch_7
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->onTextSize()V

    goto :goto_1

    .line 3196
    :sswitch_8
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->addToContacts()V

    goto :goto_1

    .line 3202
    :sswitch_9
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->onRestore()V

    goto :goto_1

    .line 3205
    :sswitch_a
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->onMovePopup()V

    goto/16 :goto_1

    .line 3099
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

    .line 2839
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 2900
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sparse-switch v3, :sswitch_data_1

    .line 2999
    :cond_1
    :goto_1
    return-void

    .line 2841
    :sswitch_0
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->onMoreMessage()V

    goto :goto_0

    .line 2844
    :sswitch_1
    invoke-direct {p0, v7, v11}, Lcom/android/email/activity/MessageView;->onRespond(II)V

    goto :goto_0

    .line 2848
    :sswitch_2
    const v3, 0x7f080070

    invoke-direct {p0, v9, v3}, Lcom/android/email/activity/MessageView;->onRespond(II)V

    goto :goto_0

    .line 2852
    :sswitch_3
    const v3, 0x7f080071

    invoke-direct {p0, v10, v3}, Lcom/android/email/activity/MessageView;->onRespond(II)V

    goto :goto_0

    .line 2862
    :sswitch_4
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->checkITPolicy_AllowPOPIMAP()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2864
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "11111 MessageView.java >>>>> onClick()  >>>>> 2537"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2865
    const v3, 0x7f08018a

    invoke-static {p0, v3, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 2874
    :sswitch_5
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->checkITPolicy_AllowAttachmentDownload()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2876
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "11111 MessageView.java >>>>> onClick()  >>>>> download"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2877
    const v3, 0x7f08018b

    invoke-static {p0, v3, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 2881
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageView$AttachmentInfo;

    .line 2882
    .local v0, attachment:Lcom/android/email/activity/MessageView$AttachmentInfo;
    const-wide/16 v1, 0x0

    .line 2883
    .local v1, limitedSize:J
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->checkITPolicy_getAllowedMaxAttachmentSize()I

    move-result v3

    int-to-long v1, v3

    .line 2886
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

    .line 2888
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "11111 MessageView.java >>>>> onClick()  >>>>> download"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2889
    const v3, 0x7f08018b

    invoke-static {p0, v3, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 2903
    .end local v0           #attachment:Lcom/android/email/activity/MessageView$AttachmentInfo;
    .end local v1           #limitedSize:J
    :sswitch_6
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->onClickSender()V

    goto :goto_1

    .line 2906
    :sswitch_7
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->onClickFavorite()V

    goto :goto_1

    .line 2925
    :sswitch_8
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->onDeletePopup()V

    goto/16 :goto_1

    .line 2929
    :sswitch_9
    iget-boolean v3, p0, Lcom/android/email/activity/MessageView;->mNeedToReloadMessage:Z

    if-ne v3, v7, :cond_3

    .line 2930
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

    .line 2931
    iget-object v3, p0, Lcom/android/email/activity/MessageView;->mController:Lcom/android/email/Controller;

    iget-wide v4, p0, Lcom/android/email/activity/MessageView;->mCurrentMessageID:J

    invoke-virtual {v3, v4, v5}, Lcom/android/email/Controller;->cancelLoadRemoteMessage(J)V

    .line 2934
    :cond_3
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->onNext()Z

    goto/16 :goto_1

    .line 2937
    :sswitch_a
    iget-boolean v3, p0, Lcom/android/email/activity/MessageView;->mNeedToReloadMessage:Z

    if-ne v3, v7, :cond_4

    .line 2938
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

    .line 2939
    iget-object v3, p0, Lcom/android/email/activity/MessageView;->mController:Lcom/android/email/Controller;

    iget-wide v4, p0, Lcom/android/email/activity/MessageView;->mCurrentMessageID:J

    invoke-virtual {v3, v4, v5}, Lcom/android/email/Controller;->cancelLoadRemoteMessage(J)V

    .line 2942
    :cond_4
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->onPrevious()Z

    goto/16 :goto_1

    .line 2945
    :sswitch_b
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/email/activity/MessageView$AttachmentInfo;

    invoke-direct {p0, v3}, Lcom/android/email/activity/MessageView;->onDownloadAttachment(Lcom/android/email/activity/MessageView$AttachmentInfo;)V

    goto/16 :goto_1

    .line 2949
    :sswitch_c
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->onDownloadAttachmentAll()V

    goto/16 :goto_1

    .line 2955
    :sswitch_d
    iget-boolean v3, p0, Lcom/android/email/activity/MessageView;->mWaitToHideProgressDialog:Z

    if-eq v3, v7, :cond_1

    .line 2957
    iput-boolean v7, p0, Lcom/android/email/activity/MessageView;->mWaitToHideProgressDialog:Z

    .line 2958
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/email/activity/MessageView$AttachmentInfo;

    invoke-direct {p0, v3}, Lcom/android/email/activity/MessageView;->onViewAttachment(Lcom/android/email/activity/MessageView$AttachmentInfo;)V

    goto/16 :goto_1

    .line 2974
    :sswitch_e
    invoke-direct {p0, v7, v11}, Lcom/android/email/activity/MessageView;->onRespond(II)V

    goto/16 :goto_1

    .line 2978
    :sswitch_f
    const v3, 0x7f080070

    invoke-direct {p0, v9, v3}, Lcom/android/email/activity/MessageView;->onRespond(II)V

    goto/16 :goto_1

    .line 2982
    :sswitch_10
    const v3, 0x7f080071

    invoke-direct {p0, v10, v3}, Lcom/android/email/activity/MessageView;->onRespond(II)V

    goto/16 :goto_1

    .line 2989
    :sswitch_11
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->onReceiverList()V

    goto/16 :goto_1

    .line 2995
    :sswitch_12
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->onMoreMessage()V

    goto/16 :goto_1

    .line 2839
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

    .line 2900
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
    .line 1138
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1140
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1141
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mSubjectView:Landroid/widget/TextView;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1142
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mSubjectView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1147
    :cond_0
    :goto_0
    return-void

    .line 1143
    :cond_1
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1144
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mSubjectView:Landroid/widget/TextView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1145
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mSubjectView:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "icicle"

    .prologue
    .line 832
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 833
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageView;->requestWindowFeature(I)Z

    .line 837
    const v0, 0x7f03002d

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageView;->setContentView(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 849
    :goto_0
    :try_start_1
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageView;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/LayoutInflater;

    .line 850
    .local v9, inflater:Landroid/view/LayoutInflater;
    const v0, 0x7f03002f

    const/4 v1, 0x0

    invoke-virtual {v9, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/email/winset/NonScrollView;

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 856
    .end local v9           #inflater:Landroid/view/LayoutInflater;
    :goto_1
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/email/winset/NonScrollView;->setVisibility(I)V

    .line 857
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mListTos:[Ljava/lang/String;

    .line 858
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mListCcs:[Ljava/lang/String;

    .line 859
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/email/activity/MessageView;->allToListCount:I

    .line 860
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/email/activity/MessageView;->allCCListCount:I

    .line 861
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/MessageView;->bForwardToOld:Z

    .line 862
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/email/activity/MessageView;->mLoadMessageComplete:Z

    .line 863
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

    .line 865
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    const v1, 0x7f07000a

    invoke-virtual {v0, v1}, Lcom/android/email/winset/NonScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mSubjectView:Landroid/widget/TextView;

    .line 866
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/email/activity/MessageView;->mCurrentOrientation:I

    .line 867
    iget v0, p0, Lcom/android/email/activity/MessageView;->mCurrentOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 868
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mSubjectView:Landroid/widget/TextView;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 869
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mSubjectView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 875
    :cond_0
    :goto_2
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    const v1, 0x7f07007d

    invoke-virtual {v0, v1}, Lcom/android/email/winset/NonScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mDateView:Landroid/widget/TextView;

    .line 876
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    const v1, 0x7f0700e6

    invoke-virtual {v0, v1}, Lcom/android/email/winset/NonScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mExpanderIcon:Landroid/widget/ImageButton;

    .line 880
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    const v1, 0x7f0700e3

    invoke-virtual {v0, v1}, Lcom/android/email/winset/NonScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mDetailContainer:Landroid/view/View;

    .line 882
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    const v1, 0x7f0700e7

    invoke-virtual {v0, v1}, Lcom/android/email/winset/NonScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mAttachmentContainer:Landroid/view/View;

    .line 883
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    const v1, 0x7f0700e8

    invoke-virtual {v0, v1}, Lcom/android/email/winset/NonScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mAttachmentInnerContainer:Landroid/view/View;

    .line 885
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    const v1, 0x7f0700e2

    invoke-virtual {v0, v1}, Lcom/android/email/winset/NonScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mSenderPresenceView:Landroid/widget/ImageView;

    .line 886
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    const v1, 0x7f07007c

    invoke-virtual {v0, v1}, Lcom/android/email/winset/NonScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mFromView:Landroid/widget/TextView;

    .line 887
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    const v1, 0x7f0700c3

    invoke-virtual {v0, v1}, Lcom/android/email/winset/NonScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mAttachmentIcon:Landroid/widget/ImageView;

    .line 888
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    const v1, 0x7f0700c5

    invoke-virtual {v0, v1}, Lcom/android/email/winset/NonScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mFavoriteIcon:Landroid/widget/ImageView;

    .line 890
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    const v1, 0x7f0700e4

    invoke-virtual {v0, v1}, Lcom/android/email/winset/NonScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mToHintView:Landroid/widget/TextView;

    .line 891
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    const v1, 0x7f07009b

    invoke-virtual {v0, v1}, Lcom/android/email/winset/NonScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mToView:Landroid/widget/TextView;

    .line 894
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    const v1, 0x7f0700e5

    invoke-virtual {v0, v1}, Lcom/android/email/winset/NonScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mCcHintView:Landroid/widget/TextView;

    .line 895
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    const v1, 0x7f07009d

    invoke-virtual {v0, v1}, Lcom/android/email/winset/NonScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mCcView:Landroid/widget/TextView;

    .line 899
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    const v1, 0x7f0700de

    invoke-virtual {v0, v1}, Lcom/android/email/winset/NonScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mPriorityLayout:Landroid/widget/LinearLayout;

    .line 900
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    const v1, 0x7f0700df

    invoke-virtual {v0, v1}, Lcom/android/email/winset/NonScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mPriorityHintView:Landroid/widget/TextView;

    .line 901
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    const v1, 0x7f0700e0

    invoke-virtual {v0, v1}, Lcom/android/email/winset/NonScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mPriorityView:Landroid/widget/TextView;

    .line 903
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    const v1, 0x7f0700a0

    invoke-virtual {v0, v1}, Lcom/android/email/winset/NonScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mAttachmentsHeader:Landroid/widget/LinearLayout;

    .line 905
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    const v1, 0x7f0700a3

    invoke-virtual {v0, v1}, Lcom/android/email/winset/NonScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mAttachments:Landroid/widget/LinearLayout;

    .line 907
    const v0, 0x7f07009f

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageContentView:Landroid/webkit/WebView;

    .line 911
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageContentView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setEmbeddedTitleBar(Landroid/view/View;)V

    .line 919
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageContentView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    .line 926
    const v0, 0x7f0700eb

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mAllDownloadIcon:Landroid/widget/TextView;

    .line 927
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/MessageView;->mAlldownloadIconVisible:Z

    .line 930
    const v0, 0x7f0700ce

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mSubjectView_marquee:Landroid/widget/TextView;

    .line 931
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mSubjectView_marquee:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 932
    const v0, 0x7f0700cf

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->loadMoreMessage:Landroid/widget/Button;

    .line 933
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->loadMoreMessage:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 934
    const v0, 0x7f0700d1

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mAcceptButton:Landroid/widget/Button;

    .line 935
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mAcceptButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 936
    const v0, 0x7f0700d2

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mTentativeButton:Landroid/widget/Button;

    .line 937
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mTentativeButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 938
    const v0, 0x7f0700d3

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mDeclineButton:Landroid/widget/Button;

    .line 939
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mDeclineButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 940
    const v0, 0x7f0700d0

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->loadMoreMessageLinearLayout:Landroid/widget/LinearLayout;

    .line 941
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->loadMoreMessage:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 942
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->loadMoreMessageLinearLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 944
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 945
    .local v12, resources:Landroid/content/res/Resources;
    const v0, 0x7f0200b7

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mSubjectAttachmentIcon:Landroid/graphics/drawable/Drawable;

    .line 951
    const v0, 0x7f07001b

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mNext:Landroid/view/View;

    .line 952
    const v0, 0x7f0700cd

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mPrevious:Landroid/view/View;

    .line 954
    const v0, 0x7f0700cc

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageSwitchBar:Landroid/widget/LinearLayout;

    .line 962
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mNext:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 963
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mPrevious:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 964
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mFromView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 965
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mSenderPresenceView:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 966
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mFavoriteIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 975
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/MessageView;->mRefreshedFromLoadMoreCB:Z

    .line 976
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/MessageView;->mNeedToReloadMessage:Z

    .line 977
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/email/activity/MessageView;->mCurrentMessageID:J

    .line 979
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 980
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/MessageView;->mWaitToHideProgressDialog:Z

    .line 981
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 982
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 984
    new-instance v0, Lcom/android/email/activity/MessageView$1;

    invoke-direct {v0, p0, p0}, Lcom/android/email/activity/MessageView$1;-><init>(Lcom/android/email/activity/MessageView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mLoadMoreDialog:Landroid/app/ProgressDialog;

    .line 999
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mLoadMoreDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1000
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mLoadMoreDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 1003
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mForwardingDialog:Landroid/app/ProgressDialog;

    .line 1004
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mForwardingDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1005
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mForwardingDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 1008
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mDateFormat:Ljava/text/DateFormat;

    .line 1009
    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mTimeFormat:Ljava/text/DateFormat;

    .line 1011
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020045

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mFavoriteIconOn:Landroid/graphics/drawable/Drawable;

    .line 1012
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020042

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mFavoriteIconOff:Landroid/graphics/drawable/Drawable;

    .line 1014
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mExpanderIcon:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1016
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mAllDownloadIcon:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1018
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->getIntent()Landroid/content/Intent;

    move-result-object v10

    .line 1019
    .local v10, intent:Landroid/content/Intent;
    const-string v0, "com.android.email.MessageView_message_id"

    const-wide/16 v1, -0x1

    invoke-virtual {v10, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    .line 1021
    if-eqz p1, :cond_1

    .line 1022
    const-string v0, "messageId"

    iget-wide v1, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    .line 1024
    :cond_1
    const-string v0, "com.android.email.MessageView_mailbox_id"

    const-wide/16 v1, -0x1

    invoke-virtual {v10, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/activity/MessageView;->mMailboxId:J

    .line 1027
    const-string v0, "com.android.email.MessageView_display_mode"

    const/4 v1, -0x1

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/MessageView;->mDisplayMode:I

    .line 1030
    const-string v0, "com.android.email.MessageView_text_size"

    const/4 v1, -0x1

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/email/activity/MessageView;->mTextSize:I

    .line 1034
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    const v1, 0x7f0700ed

    invoke-virtual {v0, v1}, Lcom/android/email/winset/NonScrollView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/email/activity/MessageView;->mMeetingYes:Landroid/widget/Button;

    .line 1035
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    const v1, 0x7f0700ee

    invoke-virtual {v0, v1}, Lcom/android/email/winset/NonScrollView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/email/activity/MessageView;->mMeetingMaybe:Landroid/widget/Button;

    .line 1036
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    const v1, 0x7f0700ef

    invoke-virtual {v0, v1}, Lcom/android/email/winset/NonScrollView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/email/activity/MessageView;->mMeetingNo:Landroid/widget/Button;

    .line 1037
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMeetingYes:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1038
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMeetingMaybe:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1039
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMeetingNo:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1045
    const v0, 0x7f0700f0

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mMoreMessage:Landroid/view/View;

    .line 1046
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMoreMessage:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1047
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMoreMessage:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 1051
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageContentView:Landroid/webkit/WebView;

    new-instance v1, Lcom/android/email/activity/MessageView$2;

    invoke-direct {v1, p0}, Lcom/android/email/activity/MessageView$2;-><init>(Lcom/android/email/activity/MessageView;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1084
    iget-wide v0, p0, Lcom/android/email/activity/MessageView;->mMailboxId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 1085
    const-string v0, "com.android.email.LogProvider"

    invoke-virtual {v10, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1087
    .local v11, logView:Ljava/lang/String;
    if-eqz v11, :cond_2

    .line 1088
    const-string v0, "com.android.email.LogProvider"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1090
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

    .line 1095
    .local v6, cur:Landroid/database/Cursor;
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1096
    const-string v0, "mailboxKey"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/activity/MessageView;->mMailboxId:J

    .line 1099
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mNext:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1100
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mPrevious:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/MessageView;->mLogView:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1113
    :goto_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1119
    .end local v6           #cur:Landroid/database/Cursor;
    .end local v11           #logView:Ljava/lang/String;
    :cond_2
    :goto_4
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mController:Lcom/android/email/Controller;

    .line 1121
    new-instance v0, Lcom/android/email/activity/MessageView$NextPrevObserver;

    iget-object v1, p0, Lcom/android/email/activity/MessageView;->mHandler:Lcom/android/email/activity/MessageView$MessageViewHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/email/activity/MessageView$NextPrevObserver;-><init>(Lcom/android/email/activity/MessageView;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mNextPrevObserver:Landroid/database/ContentObserver;

    .line 1123
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->messageChanged()V

    .line 1125
    iget v0, p0, Lcom/android/email/activity/MessageView;->mDisplayMode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    .line 1126
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->updateColors()V

    .line 1128
    :cond_3
    sget v0, Lcom/android/email/activity/MessageView;->mTextSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    .line 1129
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->updateTextSize()V

    .line 1132
    :cond_4
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mController:Lcom/android/email/Controller;

    iget-object v1, p0, Lcom/android/email/activity/MessageView;->mControllerCallback:Lcom/android/email/activity/MessageView$ControllerResults;

    invoke-virtual {v0, v1}, Lcom/android/email/Controller;->addResultCallback(Lcom/android/email/Controller$Result;)V

    .line 1133
    return-void

    .line 838
    .end local v10           #intent:Landroid/content/Intent;
    .end local v12           #resources:Landroid/content/res/Resources;
    .restart local p1
    :catch_0
    move-exception v7

    .line 839
    .local v7, e:Ljava/lang/Exception;
    const-string v0, "webview.db"

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageView;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    .line 840
    .local v8, f:Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 841
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

    .line 842
    const-string v0, "webviewCache.db"

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageView;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    .line 843
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 844
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

    .line 845
    const v0, 0x7f03002d

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageView;->setContentView(I)V

    goto/16 :goto_0

    .line 851
    .end local v7           #e:Ljava/lang/Exception;
    .end local v8           #f:Ljava/io/File;
    :catch_1
    move-exception v0

    move-object v7, v0

    .line 852
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

    .line 870
    .end local v7           #e:Ljava/lang/Exception;
    :cond_5
    iget v0, p0, Lcom/android/email/activity/MessageView;->mCurrentOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 871
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mSubjectView:Landroid/widget/TextView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 872
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mSubjectView:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto/16 :goto_2

    .line 1107
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

    .line 1108
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

    .line 1110
    :catch_2
    move-exception v0

    .line 1113
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
    .line 1154
    packed-switch p1, :pswitch_data_0

    .line 1204
    :goto_0
    const/4 v4, 0x0

    return-object v4

    .line 1158
    :pswitch_0
    const/4 v3, 0x0

    .line 1160
    .local v3, sortType:[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/email/activity/MessageView;->mMessageContentView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object v2

    .line 1161
    .local v2, result:Landroid/webkit/WebView$HitTestResult;
    invoke-virtual {v2}, Landroid/webkit/WebView$HitTestResult;->getExtra()Ljava/lang/String;

    move-result-object v1

    .line 1163
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

    .line 1168
    .restart local v3       #sortType:[Ljava/lang/String;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1170
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    iget-object v4, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    iget-object v4, v4, Lcom/android/email/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    if-nez v4, :cond_0

    .line 1171
    const v4, 0x7f080159

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1175
    :goto_1
    const-string v4, "Cancel"

    new-instance v5, Lcom/android/email/activity/MessageView$3;

    invoke-direct {v5, p0}, Lcom/android/email/activity/MessageView$3;-><init>(Lcom/android/email/activity/MessageView;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1180
    new-instance v4, Lcom/android/email/activity/MessageView$4;

    invoke-direct {v4, p0, v1}, Lcom/android/email/activity/MessageView$4;-><init>(Lcom/android/email/activity/MessageView;Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1200
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 1173
    :cond_0
    iget-object v4, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    iget-object v4, v4, Lcom/android/email/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 1154
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

    .line 3232
    sget-object v4, Lcom/android/email/activity/MessageView;->mContext:Landroid/content/Context;

    check-cast v4, Lcom/android/email/activity/MessageList;

    if-nez v4, :cond_0

    move v4, v9

    .line 3290
    :goto_0
    return v4

    .line 3234
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 3235
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v4

    const v5, 0x7f0d0010

    invoke-virtual {v4, v5, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 3239
    iput-object p1, p0, Lcom/android/email/activity/MessageView;->mMenu:Landroid/view/Menu;

    .line 3240
    iget-object v4, p0, Lcom/android/email/activity/MessageView;->mMenu:Landroid/view/Menu;

    const v5, 0x7f070146

    invoke-interface {v4, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 3241
    .local v3, mi:Landroid/view/MenuItem;
    iget-boolean v4, p0, Lcom/android/email/activity/MessageView;->mSaveToCalendarEnabled:Z

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 3245
    iget-object v4, p0, Lcom/android/email/activity/MessageView;->mMenu:Landroid/view/Menu;

    const v5, 0x7f070143

    invoke-interface {v4, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iput-object v4, p0, Lcom/android/email/activity/MessageView;->mShowPicturesSection:Landroid/view/MenuItem;

    .line 3246
    iget-object v4, p0, Lcom/android/email/activity/MessageView;->mShowPicturesSection:Landroid/view/MenuItem;

    iget-boolean v5, p0, Lcom/android/email/activity/MessageView;->ShowPicturesEnabled:Z

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 3250
    iget-object v4, p0, Lcom/android/email/activity/MessageView;->mMenu:Landroid/view/Menu;

    const v5, 0x7f070141

    invoke-interface {v4, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 3251
    .local v1, mIRestore:Landroid/view/MenuItem;
    invoke-interface {v1, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3252
    const/4 v2, 0x0

    .line 3253
    .local v2, mailbox:Lcom/android/email/provider/EmailContent$Mailbox;
    iget-wide v4, p0, Lcom/android/email/activity/MessageView;->mMailboxId:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    .line 3254
    iget-wide v4, p0, Lcom/android/email/activity/MessageView;->mMailboxId:J

    invoke-static {p0, v4, v5}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v2

    .line 3255
    if-eqz v2, :cond_1

    .line 3257
    iget v4, v2, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_3

    .line 3259
    invoke-interface {v1, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3269
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/android/email/activity/MessageView;->mMenu:Landroid/view/Menu;

    const v5, 0x7f070142

    invoke-interface {v4, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 3270
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

    .line 3276
    :cond_2
    invoke-interface {v0, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_2
    move v4, v9

    .line 3290
    goto/16 :goto_0

    .line 3263
    .end local v0           #mIMove:Landroid/view/MenuItem;
    :cond_3
    invoke-interface {v1, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 3280
    .restart local v0       #mIMove:Landroid/view/MenuItem;
    :cond_4
    if-eqz v2, :cond_5

    iget v4, v2, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_5

    iget v4, v2, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_6

    .line 3282
    :cond_5
    invoke-interface {v0, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2

    .line 3286
    :cond_6
    invoke-interface {v0, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 1330
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1331
    iget-object v1, p0, Lcom/android/email/activity/MessageView;->mController:Lcom/android/email/Controller;

    iget-object v2, p0, Lcom/android/email/activity/MessageView;->mControllerCallback:Lcom/android/email/activity/MessageView$ControllerResults;

    invoke-virtual {v1, v2}, Lcom/android/email/Controller;->removeResultCallback(Lcom/android/email/Controller$Result;)V

    .line 1332
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->cancelAllTasks()V

    .line 1335
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/email/activity/MessageView;->mCacheDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1336
    .local v0, targetDirectory:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1337
    invoke-static {v0}, Lorg/apache/commons/io/FileUtils;->deleteDirectory(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1346
    .end local v0           #targetDirectory:Ljava/io/File;
    :cond_0
    :goto_0
    monitor-enter p0

    .line 1347
    :try_start_1
    iget-object v1, p0, Lcom/android/email/activity/MessageView;->mMessageContentView:Landroid/webkit/WebView;

    if-eqz v1, :cond_1

    .line 1349
    iget-object v1, p0, Lcom/android/email/activity/MessageView;->mMessageContentView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->destroy()V

    .line 1350
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/email/activity/MessageView;->mMessageContentView:Landroid/webkit/WebView;

    .line 1352
    :cond_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1354
    iget-object v1, p0, Lcom/android/email/activity/MessageView;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_2

    .line 1355
    iget-object v1, p0, Lcom/android/email/activity/MessageView;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1357
    :cond_2
    iget-object v1, p0, Lcom/android/email/activity/MessageView;->mForwardingDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_3

    .line 1358
    iget-object v1, p0, Lcom/android/email/activity/MessageView;->mForwardingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1362
    :cond_3
    return-void

    .line 1352
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1341
    :catch_0
    move-exception v1

    goto :goto_0

    .line 1338
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 3003
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageView;->handleMenuItem(I)Z

    move-result v0

    .line 3004
    .local v0, handled:Z
    if-nez v0, :cond_0

    .line 3005
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 3007
    :cond_0
    return v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 1286
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 1288
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->closePrevNextCursor()V

    .line 1289
    return-void
.end method

.method public onResume()V
    .locals 6

    .prologue
    const-wide/16 v2, -0x1

    const/4 v5, 0x0

    .line 1229
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 1231
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    if-eqz v0, :cond_0

    .line 1233
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageViewHeader:Lcom/android/email/winset/NonScrollView;

    invoke-virtual {v0}, Lcom/android/email/winset/NonScrollView;->resume()V

    .line 1236
    :cond_0
    iput-wide v2, p0, Lcom/android/email/activity/MessageView;->mWaitForLoadMessageId:J

    .line 1238
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessage:Lcom/android/email/provider/EmailContent$Message;

    if-eqz v0, :cond_2

    .line 1239
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->startPresenceCheck()V

    .line 1243
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mLoadPrevNextTask:Lcom/android/email/activity/MessageView$LoadPrevNextTask;

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/android/email/activity/MessageView;->mMailboxId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 1244
    new-instance v0, Lcom/android/email/activity/MessageView$LoadPrevNextTask;

    iget-wide v1, p0, Lcom/android/email/activity/MessageView;->mMailboxId:J

    invoke-direct {v0, p0, v1, v2}, Lcom/android/email/activity/MessageView$LoadPrevNextTask;-><init>(Lcom/android/email/activity/MessageView;J)V

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mLoadPrevNextTask:Lcom/android/email/activity/MessageView$LoadPrevNextTask;

    .line 1245
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mLoadPrevNextTask:Lcom/android/email/activity/MessageView$LoadPrevNextTask;

    new-array v1, v5, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageView$LoadPrevNextTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1249
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

    .line 1250
    sget-boolean v0, Lcom/android/email/activity/MessageView;->mLoadMessageComplete:Z

    if-nez v0, :cond_2

    .line 1251
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mLoadMessageTask:Lcom/android/email/activity/MessageView$LoadMessageTask;

    invoke-static {v0}, Lcom/android/email/activity/MessageView;->cancelTask(Landroid/os/AsyncTask;)V

    .line 1252
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mLoadMessageTask:Lcom/android/email/activity/MessageView$LoadMessageTask;

    .line 1253
    new-instance v0, Lcom/android/email/activity/MessageView$LoadMessageTask;

    iget-wide v2, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    const/4 v4, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/email/activity/MessageView$LoadMessageTask;-><init>(Lcom/android/email/activity/MessageView;JZZ)V

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mLoadMessageTask:Lcom/android/email/activity/MessageView$LoadMessageTask;

    .line 1254
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mLoadMessageTask:Lcom/android/email/activity/MessageView$LoadMessageTask;

    new-array v1, v5, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageView$LoadMessageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1282
    :cond_2
    return-void
.end method

.method public onSaveImage()V
    .locals 25

    .prologue
    .line 3013
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mMessageContentView:Landroid/webkit/WebView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/webkit/WebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object v18

    .line 3014
    .local v18, result:Landroid/webkit/WebView$HitTestResult;
    invoke-virtual/range {v18 .. v18}, Landroid/webkit/WebView$HitTestResult;->getExtra()Ljava/lang/String;

    move-result-object v6

    .line 3015
    .local v6, extra:Ljava/lang/String;
    const-string v8, ""

    .line 3016
    .local v8, filename:Ljava/lang/String;
    const/4 v11, 0x0

    .line 3017
    .local v11, in:Ljava/io/InputStream;
    const/4 v12, 0x0

    .line 3018
    .local v12, in2:Ljava/io/InputStream;
    const/4 v15, 0x0

    .line 3019
    .local v15, out:Ljava/io/OutputStream;
    const/4 v4, 0x0

    .line 3023
    .local v4, count:I
    :try_start_0
    sget-object v21, Lcom/android/email/activity/MessageView;->mBodyImageInfo:[Lcom/android/email/activity/MessageView$BodyImageInfo;

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    if-eqz v21, :cond_5

    .line 3025
    const/4 v9, 0x0

    .line 3026
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

    .line 3027
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

    .line 3028
    sget-object v21, Lcom/android/email/activity/MessageView;->mBodyImageInfo:[Lcom/android/email/activity/MessageView$BodyImageInfo;

    aget-object v21, v21, v10

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/email/activity/MessageView$BodyImageInfo;->mFileName:Ljava/lang/String;

    move-object v8, v0

    .line 3029
    const/4 v9, 0x1

    .line 3026
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 3032
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MessageView;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v11

    .line 3043
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

    .line 3044
    .local v19, targetDir:Ljava/lang/String;
    new-instance v20, Ljava/io/File;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3045
    .local v20, targetDirectory:Ljava/io/File;
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->isDirectory()Z

    move-result v21

    if-nez v21, :cond_2

    .line 3046
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->mkdirs()Z

    .line 3047
    :cond_2
    move-object/from16 v0, v20

    move-object v1, v8

    invoke-static {v0, v1}, Lcom/android/email/activity/MessageView;->createUniqueFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    .line 3050
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

    .line 3051
    .end local v15           #out:Ljava/io/OutputStream;
    .local v16, out:Ljava/io/OutputStream;
    :try_start_1
    move-object v0, v11

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 3052
    invoke-virtual/range {v16 .. v16}, Ljava/io/OutputStream;->flush()V

    .line 3054
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

    .line 3076
    if-eqz v11, :cond_3

    .line 3078
    :try_start_2
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7

    .line 3081
    :cond_3
    :goto_2
    if-eqz v16, :cond_b

    .line 3083
    :try_start_3
    invoke-virtual/range {v16 .. v16}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-object/from16 v15, v16

    .line 3087
    .end local v7           #file:Ljava/io/File;
    .end local v16           #out:Ljava/io/OutputStream;
    .end local v19           #targetDir:Ljava/lang/String;
    .end local v20           #targetDirectory:Ljava/io/File;
    .restart local v15       #out:Ljava/io/OutputStream;
    :cond_4
    :goto_3
    return-void

    .line 3036
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

    .line 3038
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

    .line 3039
    .local v17, path_buf:[Ljava/lang/String;
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v21, v0

    const/16 v22, 0x1

    sub-int v21, v21, v22

    aget-object v8, v17, v21

    .line 3040
    invoke-virtual {v3}, Ljava/net/URL;->openStream()Ljava/io/InputStream;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_5

    move-result-object v11

    goto/16 :goto_1

    .line 3084
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

    .line 3059
    .end local v7           #file:Ljava/io/File;
    .end local v19           #targetDir:Ljava/lang/String;
    .end local v20           #targetDirectory:Ljava/io/File;
    :catch_1
    move-exception v21

    move-object/from16 v5, v21

    .line 3060
    .local v5, e:Landroid/content/ActivityNotFoundException;
    :goto_4
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageView;->mHandler:Lcom/android/email/activity/MessageView$MessageViewHandler;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/email/activity/MessageView$MessageViewHandler;->attachmentViewError()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 3076
    if-eqz v11, :cond_6

    .line 3078
    :try_start_6
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_8

    .line 3081
    :cond_6
    :goto_5
    if-eqz v15, :cond_4

    .line 3083
    :try_start_7
    invoke-virtual {v15}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_3

    .line 3084
    :catch_2
    move-exception v21

    goto :goto_3

    .line 3062
    .end local v5           #e:Landroid/content/ActivityNotFoundException;
    :catch_3
    move-exception v21

    move-object/from16 v13, v21

    .line 3063
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

    .line 3076
    if-eqz v11, :cond_7

    .line 3078
    :try_start_9
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    .line 3081
    :cond_7
    :goto_7
    if-eqz v15, :cond_4

    .line 3083
    :try_start_a
    invoke-virtual {v15}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    goto/16 :goto_3

    .line 3084
    :catch_4
    move-exception v21

    goto/16 :goto_3

    .line 3068
    .end local v13           #ioe:Ljava/io/IOException;
    :catch_5
    move-exception v21

    move-object/from16 v14, v21

    .line 3069
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

    .line 3076
    if-eqz v11, :cond_8

    .line 3078
    :try_start_c
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_a

    .line 3081
    :cond_8
    :goto_9
    if-eqz v15, :cond_4

    .line 3083
    :try_start_d
    invoke-virtual {v15}, Ljava/io/OutputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6

    goto/16 :goto_3

    .line 3084
    :catch_6
    move-exception v21

    goto/16 :goto_3

    .line 3076
    .end local v14           #npe:Ljava/lang/NullPointerException;
    :catchall_0
    move-exception v21

    :goto_a
    if-eqz v11, :cond_9

    .line 3078
    :try_start_e
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_b

    .line 3081
    :cond_9
    :goto_b
    if-eqz v15, :cond_a

    .line 3083
    :try_start_f
    invoke-virtual {v15}, Ljava/io/OutputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_c

    .line 3084
    :cond_a
    :goto_c
    throw v21

    .line 3079
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

    .line 3084
    :catch_c
    move-exception v22

    goto :goto_c

    .line 3076
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

    .line 3068
    .end local v15           #out:Ljava/io/OutputStream;
    .restart local v16       #out:Ljava/io/OutputStream;
    :catch_d
    move-exception v21

    move-object/from16 v14, v21

    move-object/from16 v15, v16

    .end local v16           #out:Ljava/io/OutputStream;
    .restart local v15       #out:Ljava/io/OutputStream;
    goto :goto_8

    .line 3062
    .end local v15           #out:Ljava/io/OutputStream;
    .restart local v16       #out:Ljava/io/OutputStream;
    :catch_e
    move-exception v21

    move-object/from16 v13, v21

    move-object/from16 v15, v16

    .end local v16           #out:Ljava/io/OutputStream;
    .restart local v15       #out:Ljava/io/OutputStream;
    goto/16 :goto_6

    .line 3059
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
    .line 1210
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1211
    iget-wide v0, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 1212
    const-string v0, "messageId"

    iget-wide v1, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1216
    :cond_0
    return-void
.end method
