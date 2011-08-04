.class public Lcom/android/email/activity/MessageList;
.super Lcom/android/email/winset/TwTabActivity;
.source "MessageList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/android/email/winset/TwTabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/MessageList$MessageData;,
        Lcom/android/email/activity/MessageList$MessageListAdapter;,
        Lcom/android/email/activity/MessageList$ControllerResults;,
        Lcom/android/email/activity/MessageList$MessageListHandler;,
        Lcom/android/email/activity/MessageList$RefreshFolderListTask;,
        Lcom/android/email/activity/MessageList$ProgressDialogForMessageMove;,
        Lcom/android/email/activity/MessageList$MoveMessageTask;,
        Lcom/android/email/activity/MessageList$SetTitleTask;,
        Lcom/android/email/activity/MessageList$LoadMessagesTask;,
        Lcom/android/email/activity/MessageList$FindMailboxTask;,
        Lcom/android/email/activity/MessageList$SetFooterTask;,
        Lcom/android/email/activity/MessageList$MultiToggleHelper;,
        Lcom/android/email/activity/MessageList$MailBoxAdapter;,
        Lcom/android/email/activity/MessageList$MailBoxType;,
        Lcom/android/email/activity/MessageList$ListItem;
    }
.end annotation


# static fields
.field private static final ACCOUNT_NAME_PROJECTION:[Ljava/lang/String;

.field private static final ACCOUNT_UNREAD_COUNT_PROJECTION:[Ljava/lang/String;

.field private static final MAILBOX_ACCOUNT_AND_TYPE_PROJECTION:[Ljava/lang/String;

.field public static final MAILBOX_FIND_INBOX_PROJECTION:[Ljava/lang/String;

.field private static final MAILBOX_NAME_PROJECTION:[Ljava/lang/String;

.field private static final MAILBOX_UNREAD_COUNT_PROJECTION:[Ljava/lang/String;

.field private static MESSAGEID_TO_MAILBOXID_COLUMN_MAILBOXID:I

.field private static MESSAGEID_TO_MAILBOXID_PROJECTION:[Ljava/lang/String;

.field public static final SORT_QUERY:[Ljava/lang/String;

.field public static VIEW_MODE_CONVERSATION:I

.field public static VIEW_MODE_CONVERSATION_READY:I

.field public static VIEW_MODE_STANDARD:I

.field public static isSms:Z

.field public static isStartedFromMailboxList:Z

.field private static final mColorChipResIds:[I

.field public static mMessageIdArray4ThreadList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mOpenedThreadList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mOpenedThreadListConv:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mPositionOfSelectedMessage:I

.field private static mSearchBar:Landroid/widget/EditText;

.field public static mSortType:I

.field private static mTextSize:I

.field public static mTotalListCount:I

.field private static sRealPosition:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/email/activity/MessageList$ListItem;",
            ">;"
        }
    .end annotation
.end field

.field private static sSelectedSearchType:I


# instance fields
.field private final COMBINED_MAILBOX:I

.field private DPMReceiver:Landroid/content/BroadcastReceiver;

.field private final MESSAGE_LIST_ADAPTER_PROJECTION:[Ljava/lang/String;

.field private final TEXT_SIZE_LARGE:I

.field private final TEXT_SIZE_MEDIUM:I

.field private final TEXT_SIZE_SMALL:I

.field broadcastReceiver:Landroid/content/BroadcastReceiver;

.field private followUpFlagAlert:Landroid/app/AlertDialog;

.field private followUpFlagMode:I

.field private mAccountId:J

.field mAdapterIsChanged:Z

.field private mAnimaiotn_centerY:F

.field private mAnimation_centerX:F

.field private mAnimation_depth:F

.field private mAnimation_midnext:F

.field private mAnimation_midpre:F

.field private mAnimation_startend:F

.field private mCanAutoRefresh:Z

.field private mCheckedAccountId:J

.field private mCombinedFlag:I

.field private mController:Lcom/android/email/Controller;

.field private mControllerCallback:Lcom/android/email/activity/MessageList$ControllerResults;

.field private mConvViewFlag:Z

.field private mCurrentOrientation:I

.field private mCurrentPortraitMode:I

.field private mDeleteButton:Landroid/widget/Button;

.field private mEmptyListBanner:Landroid/widget/TextView;

.field private mErrorBanner:Landroid/widget/TextView;

.field private mEvent:Landroid/view/MotionEvent;

.field private mFavoriteButton:Landroid/widget/Button;

.field private mFindMailboxTask:Lcom/android/email/activity/MessageList$FindMailboxTask;

.field private mFlagButton:Landroid/widget/Button;

.field private mFlipper:Lcom/android/email/winset/TwTabWidget;

.field private mFlipper2:Landroid/widget/LinearLayout;

.field private mFolderListTask:Lcom/android/email/activity/MessageList$RefreshFolderListTask;

.field private mHandler:Lcom/android/email/activity/MessageList$MessageListHandler;

.field private mIgnore:I

.field private mIndexView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

.field private mInputManager:Landroid/view/inputmethod/InputMethodManager;

.field private mIsEAS:I

.field private mIsLandScape:Z

.field private mLastSortType:I

.field private mListAdapter:Lcom/android/email/activity/MessageList$MessageListAdapter;

.field private mListFooterEmptyView:Landroid/view/View;

.field private mListFooterMode:I

.field private mListFooterText:Landroid/widget/TextView;

.field private mListFooterView:Landroid/view/View;

.field private mListView:Lcom/android/email/winset/EmailListView;

.field private mLoadMessagesTask:Lcom/android/email/activity/MessageList$LoadMessagesTask;

.field private mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

.field private mMailboxCurrentIndex:I

.field private mMailboxId:J

.field private mMailboxType:I

.field private mMessageListCursor:Landroid/database/Cursor;

.field private mMoveButton:Landroid/widget/Button;

.field mMoveDialogVisible:Z

.field private mMoveListAdapter:Lcom/android/email/activity/MessageList$MailBoxAdapter;

.field private mMoveListToOtherAccountAdapter:Lcom/android/email/activity/MessageList$MailBoxAdapter;

.field private mMoveMessageTask:Lcom/android/email/activity/MessageList$MoveMessageTask;

.field private mMsgList:Lcom/android/email/activity/MessageList;

.field private mMultiSelectPanel:Landroid/view/View;

.field private mNewMessageIdArray4ThreadList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mNewOpenedThreadList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNewOpenedThreadListConv:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNewThreadListVisibility:[S

.field private mProgressDialog:Lcom/android/email/activity/MessageList$ProgressDialogForMessageMove;

.field private mProgressIcon:Landroid/widget/ProgressBar;

.field private mPushModeMailbox:Ljava/lang/Boolean;

.field private mReadUnreadButton:Landroid/widget/Button;

.field private mRemovePosition:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mResolver:Landroid/content/ContentResolver;

.field private mRightTitle:Landroid/widget/TextView;

.field private mRightTitle_Layout:Landroid/widget/LinearLayout;

.field private mSavedItemPosition:I

.field private mSavedItemTop:I

.field private mSearchId:I

.field private mSearchListString:[Ljava/lang/String;

.field private mSearchType:Landroid/widget/TextView;

.field private mSetFooterTask:Lcom/android/email/activity/MessageList$SetFooterTask;

.field private mSetTitleTask:Lcom/android/email/activity/MessageList$SetTitleTask;

.field private mShowDeleteSection:Landroid/view/MenuItem;

.field private mShowRestoreSection:Landroid/view/MenuItem;

.field private mSortQuery:Ljava/lang/String;

.field private mTabHost:Lcom/android/email/winset/TwTabHost;

.field private mThreadListVisibility:[S

.field private mTitleSearchBar:Landroid/widget/LinearLayout;

.field private mToast:Landroid/widget/Toast;

.field private mTotalSubtitleCount:I

.field private mVersionDouble:D

.field public mViewModeType:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v7, "_id"

    .line 233
    sput-boolean v3, Lcom/android/email/activity/MessageList;->isSms:Z

    .line 264
    sput v3, Lcom/android/email/activity/MessageList;->sSelectedSearchType:I

    .line 289
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "timeStamp COLLATE NOCASE DESC"

    aput-object v1, v0, v3

    const-string v1, "timeStamp COLLATE NOCASE ASC"

    aput-object v1, v0, v4

    const-string v1, "displayName COLLATE NOCASE ASC, timeStamp DESC"

    aput-object v1, v0, v5

    const-string v1, "displayName COLLATE NOCASE DESC, timeStamp DESC"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "flagRead COLLATE NOCASE ASC, timeStamp DESC"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "flagFavorite COLLATE NOCASE DESC, timeStamp DESC"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "timeStamp COLLATE NOCASE DESC"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "timeStamp COLLATE NOCASE DESC"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/activity/MessageList;->SORT_QUERY:[Ljava/lang/String;

    .line 341
    const/16 v0, 0x15

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/email/activity/MessageList;->mColorChipResIds:[I

    .line 388
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v7, v0, v3

    const-string v1, "type"

    aput-object v1, v0, v4

    const-string v1, "flagVisible"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/email/activity/MessageList;->MAILBOX_FIND_INBOX_PROJECTION:[Ljava/lang/String;

    .line 395
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "displayName"

    aput-object v1, v0, v3

    const-string v1, "accountKey"

    aput-object v1, v0, v4

    const-string v1, "type"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/email/activity/MessageList;->MAILBOX_NAME_PROJECTION:[Ljava/lang/String;

    .line 401
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "displayName"

    aput-object v1, v0, v3

    const-string v1, "emailAddress"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/email/activity/MessageList;->ACCOUNT_NAME_PROJECTION:[Ljava/lang/String;

    .line 422
    sput v3, Lcom/android/email/activity/MessageList;->VIEW_MODE_STANDARD:I

    .line 423
    sput v4, Lcom/android/email/activity/MessageList;->VIEW_MODE_CONVERSATION:I

    .line 424
    sput v5, Lcom/android/email/activity/MessageList;->VIEW_MODE_CONVERSATION_READY:I

    .line 438
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/email/activity/MessageList;->mOpenedThreadList:Ljava/util/HashSet;

    .line 441
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/email/activity/MessageList;->mOpenedThreadListConv:Ljava/util/HashSet;

    .line 448
    sput v3, Lcom/android/email/activity/MessageList;->mTotalListCount:I

    .line 482
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "unreadCount"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/email/activity/MessageList;->MAILBOX_UNREAD_COUNT_PROJECTION:[Ljava/lang/String;

    .line 486
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "unreadCount"

    aput-object v1, v0, v3

    const-string v1, "_id"

    aput-object v7, v0, v4

    sput-object v0, Lcom/android/email/activity/MessageList;->ACCOUNT_UNREAD_COUNT_PROJECTION:[Ljava/lang/String;

    .line 500
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v7, v0, v3

    const-string v1, "mailboxKey"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/email/activity/MessageList;->MESSAGEID_TO_MAILBOXID_PROJECTION:[Ljava/lang/String;

    .line 504
    sput v4, Lcom/android/email/activity/MessageList;->MESSAGEID_TO_MAILBOXID_COLUMN_MAILBOXID:I

    .line 5511
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "accountKey"

    aput-object v1, v0, v3

    const-string v1, "type"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/email/activity/MessageList;->MAILBOX_ACCOUNT_AND_TYPE_PROJECTION:[Ljava/lang/String;

    return-void

    .line 341
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
    .locals 8

    .prologue
    const/4 v7, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const-string v6, "flagRead"

    .line 178
    invoke-direct {p0}, Lcom/android/email/winset/TwTabActivity;-><init>()V

    .line 235
    iput-object v4, p0, Lcom/android/email/activity/MessageList;->mToast:Landroid/widget/Toast;

    .line 244
    iput v7, p0, Lcom/android/email/activity/MessageList;->followUpFlagMode:I

    .line 248
    iput v3, p0, Lcom/android/email/activity/MessageList;->TEXT_SIZE_SMALL:I

    .line 249
    iput v5, p0, Lcom/android/email/activity/MessageList;->TEXT_SIZE_MEDIUM:I

    .line 250
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/email/activity/MessageList;->TEXT_SIZE_LARGE:I

    .line 252
    iput-object v4, p0, Lcom/android/email/activity/MessageList;->mPushModeMailbox:Ljava/lang/Boolean;

    .line 265
    iput v3, p0, Lcom/android/email/activity/MessageList;->mSearchId:I

    .line 266
    iput-object v4, p0, Lcom/android/email/activity/MessageList;->mSearchListString:[Ljava/lang/String;

    .line 274
    iput-boolean v5, p0, Lcom/android/email/activity/MessageList;->mIsLandScape:Z

    .line 287
    iput v5, p0, Lcom/android/email/activity/MessageList;->mCurrentOrientation:I

    .line 288
    iput v3, p0, Lcom/android/email/activity/MessageList;->mCurrentPortraitMode:I

    .line 311
    const/16 v0, 0x16

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "mailboxKey"

    aput-object v1, v0, v5

    const/4 v1, 0x2

    const-string v2, "accountKey"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "displayName"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "subject"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "timeStamp"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "flagRead"

    aput-object v6, v0, v1

    const/4 v1, 0x7

    const-string v2, "flagFavorite"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "flagAttachment"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "toList"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "threadName"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "flags"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "importance"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "flagStatus"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "smimeFlags"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "lastVerb"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "messageType"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "conversationId"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "flagRead"

    aput-object v6, v0, v1

    const/16 v1, 0x14

    const-string v2, "flagRead"

    aput-object v6, v0, v1

    const/16 v1, 0x15

    const-string v2, "flagRead"

    aput-object v6, v0, v1

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->MESSAGE_LIST_ADAPTER_PROJECTION:[Ljava/lang/String;

    .line 331
    new-instance v0, Lcom/android/email/activity/MessageList$MessageListHandler;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MessageList$MessageListHandler;-><init>(Lcom/android/email/activity/MessageList;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mHandler:Lcom/android/email/activity/MessageList$MessageListHandler;

    .line 332
    invoke-virtual {p0}, Lcom/android/email/activity/MessageList;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mController:Lcom/android/email/Controller;

    .line 333
    new-instance v0, Lcom/android/email/activity/MessageList$ControllerResults;

    invoke-direct {v0, p0, v4}, Lcom/android/email/activity/MessageList$ControllerResults;-><init>(Lcom/android/email/activity/MessageList;Lcom/android/email/activity/MessageList$1;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mControllerCallback:Lcom/android/email/activity/MessageList$ControllerResults;

    .line 368
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/email/activity/MessageList;->mAccountId:J

    .line 369
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/email/activity/MessageList;->mCheckedAccountId:J

    .line 370
    iput v7, p0, Lcom/android/email/activity/MessageList;->mIsEAS:I

    .line 372
    iput v3, p0, Lcom/android/email/activity/MessageList;->mCombinedFlag:I

    .line 373
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/email/activity/MessageList;->mVersionDouble:D

    .line 374
    iput v5, p0, Lcom/android/email/activity/MessageList;->COMBINED_MAILBOX:I

    .line 375
    iput-boolean v3, p0, Lcom/android/email/activity/MessageList;->mConvViewFlag:Z

    .line 378
    iput v3, p0, Lcom/android/email/activity/MessageList;->mIgnore:I

    .line 408
    iput v3, p0, Lcom/android/email/activity/MessageList;->mSavedItemTop:I

    .line 409
    iput v7, p0, Lcom/android/email/activity/MessageList;->mSavedItemPosition:I

    .line 410
    iput-boolean v3, p0, Lcom/android/email/activity/MessageList;->mCanAutoRefresh:Z

    .line 447
    iput v3, p0, Lcom/android/email/activity/MessageList;->mTotalSubtitleCount:I

    .line 450
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mRemovePosition:Ljava/util/ArrayList;

    .line 510
    iput-object v4, p0, Lcom/android/email/activity/MessageList;->mIndexView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    .line 513
    iput-object v4, p0, Lcom/android/email/activity/MessageList;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    .line 818
    new-instance v0, Lcom/android/email/activity/MessageList$2;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MessageList$2;-><init>(Lcom/android/email/activity/MessageList;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 7650
    new-instance v0, Lcom/android/email/activity/MessageList$34;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MessageList$34;-><init>(Lcom/android/email/activity/MessageList;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->DPMReceiver:Landroid/content/BroadcastReceiver;

    .line 9520
    return-void
.end method

.method private IsEAS()I
    .locals 8

    .prologue
    const/4 v7, 0x0

    const-string v6, "isEAS(): return - :"

    const-string v5, "MessageList >>"

    .line 7680
    invoke-virtual {p0}, Lcom/android/email/activity/MessageList;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 7682
    iget-wide v1, p0, Lcom/android/email/activity/MessageList;->mCheckedAccountId:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 7683
    iget-wide v1, p0, Lcom/android/email/activity/MessageList;->mAccountId:J

    iput-wide v1, p0, Lcom/android/email/activity/MessageList;->mCheckedAccountId:J

    .line 7693
    :goto_0
    iget-wide v1, p0, Lcom/android/email/activity/MessageList;->mAccountId:J

    invoke-static {v0, v1, v2}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v1

    .line 7695
    if-nez v1, :cond_2

    .line 7696
    iput v7, p0, Lcom/android/email/activity/MessageList;->mIsEAS:I

    .line 7697
    const-string v0, "MessageList >>"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isEAS(): return - :"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/email/activity/MessageList;->mIsEAS:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  CHECKED 1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 7698
    iget v0, p0, Lcom/android/email/activity/MessageList;->mIsEAS:I

    .line 7720
    :goto_1
    return v0

    .line 7685
    :cond_0
    iget-wide v1, p0, Lcom/android/email/activity/MessageList;->mCheckedAccountId:J

    iget-wide v3, p0, Lcom/android/email/activity/MessageList;->mAccountId:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 7686
    const-string v0, "MessageList >>"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isEAS(): return - :"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/email/activity/MessageList;->mIsEAS:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  NOT CHECKED "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 7687
    iget v0, p0, Lcom/android/email/activity/MessageList;->mIsEAS:I

    goto :goto_1

    .line 7690
    :cond_1
    iget-wide v1, p0, Lcom/android/email/activity/MessageList;->mAccountId:J

    iput-wide v1, p0, Lcom/android/email/activity/MessageList;->mCheckedAccountId:J

    goto :goto_0

    .line 7701
    :cond_2
    invoke-virtual {v1, v0}, Lcom/android/email/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/email/mail/Store$StoreInfo;->getStoreInfo(Ljava/lang/String;Landroid/content/Context;)Lcom/android/email/mail/Store$StoreInfo;

    move-result-object v0

    .line 7704
    if-nez v0, :cond_3

    .line 7705
    iput v7, p0, Lcom/android/email/activity/MessageList;->mIsEAS:I

    .line 7706
    const-string v0, "MessageList >>"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isEAS(): return - :"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/email/activity/MessageList;->mIsEAS:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  CHECKED 2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 7707
    iget v0, p0, Lcom/android/email/activity/MessageList;->mIsEAS:I

    goto :goto_1

    .line 7710
    :cond_3
    iget-object v0, v0, Lcom/android/email/mail/Store$StoreInfo;->mScheme:Ljava/lang/String;

    .line 7711
    const-string v1, "eas"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 7712
    const-string v0, "MessageList >>"

    const-string v0, "isEAS(): This is EAS account"

    invoke-static {v5, v0}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 7713
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/email/activity/MessageList;->mIsEAS:I

    .line 7719
    :goto_2
    const-string v0, "MessageList >>"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isEAS(): return - :"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/email/activity/MessageList;->mIsEAS:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  CHECKED 3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 7720
    iget v0, p0, Lcom/android/email/activity/MessageList;->mIsEAS:I

    goto/16 :goto_1

    .line 7716
    :cond_4
    const-string v0, "MessageList >>"

    const-string v0, "isEAS(): This isn\'t EAS account"

    invoke-static {v5, v0}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 7717
    iput v7, p0, Lcom/android/email/activity/MessageList;->mIsEAS:I

    goto :goto_2
.end method

.method private IsEAS_account(J)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 7726
    const-string v0, "MessageList >>"

    const-string v1, "IsEAS_account() CALLED"

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 7727
    invoke-virtual {p0}, Lcom/android/email/activity/MessageList;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 7728
    invoke-static {v0, p1, p2}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v1

    .line 7730
    if-nez v1, :cond_0

    move v0, v2

    .line 7740
    :goto_0
    return v0

    .line 7733
    :cond_0
    invoke-virtual {v1, v0}, Lcom/android/email/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/email/mail/Store$StoreInfo;->getStoreInfo(Ljava/lang/String;Landroid/content/Context;)Lcom/android/email/mail/Store$StoreInfo;

    move-result-object v0

    .line 7736
    if-nez v0, :cond_1

    move v0, v2

    .line 7737
    goto :goto_0

    .line 7739
    :cond_1
    iget-object v0, v0, Lcom/android/email/mail/Store$StoreInfo;->mScheme:Ljava/lang/String;

    .line 7740
    const-string v1, "eas"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$MessageListHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mHandler:Lcom/android/email/activity/MessageList$MessageListHandler;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/email/activity/MessageList;)Lcom/android/email/winset/EmailListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mListView:Lcom/android/email/winset/EmailListView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/email/activity/MessageList;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mTitleSearchBar:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/email/activity/MessageList;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 178
    iget v0, p0, Lcom/android/email/activity/MessageList;->mAnimation_midnext:F

    return v0
.end method

.method static synthetic access$1500(Lcom/android/email/activity/MessageList;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 178
    iget v0, p0, Lcom/android/email/activity/MessageList;->mAnimation_startend:F

    return v0
.end method

.method static synthetic access$1600(Lcom/android/email/activity/MessageList;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 178
    iget v0, p0, Lcom/android/email/activity/MessageList;->mAnimation_centerX:F

    return v0
.end method

.method static synthetic access$1700(Lcom/android/email/activity/MessageList;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 178
    iget v0, p0, Lcom/android/email/activity/MessageList;->mAnimaiotn_centerY:F

    return v0
.end method

.method static synthetic access$1800(Lcom/android/email/activity/MessageList;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 178
    iget v0, p0, Lcom/android/email/activity/MessageList;->mAnimation_depth:F

    return v0
.end method

.method static synthetic access$1900(Lcom/android/email/activity/MessageList;)Lcom/android/email/winset/TwTabWidget;
    .locals 1
    .parameter "x0"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mFlipper:Lcom/android/email/winset/TwTabWidget;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/email/activity/MessageList;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 178
    iget-wide v0, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    return-wide v0
.end method

.method static synthetic access$2000(Lcom/android/email/activity/MessageList;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mFlipper2:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/email/activity/MessageList;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 178
    iput-wide p1, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    return-wide p1
.end method

.method static synthetic access$2100(Lcom/android/email/activity/MessageList;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 178
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageList;->onTextSizeChange(I)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/email/activity/MessageList;)Lcom/android/email/Controller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mController:Lcom/android/email/Controller;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/email/activity/MessageList;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 178
    iget v0, p0, Lcom/android/email/activity/MessageList;->mIgnore:I

    return v0
.end method

.method static synthetic access$2400(Lcom/android/email/activity/MessageList;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 178
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageList;->onViewModeBy(I)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/email/activity/MessageList;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 178
    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->IsEAS()I

    move-result v0

    return v0
.end method

.method static synthetic access$2600(Lcom/android/email/activity/MessageList;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 178
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageList;->onSortBy(I)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$MessageListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mListAdapter:Lcom/android/email/activity/MessageList$MessageListAdapter;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/email/activity/MessageList;Ljava/util/Set;ZI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 178
    invoke-direct {p0, p1, p2, p3}, Lcom/android/email/activity/MessageList;->onMultiToggleFavorite(Ljava/util/Set;ZI)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/email/activity/MessageList;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 178
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageList;->showMultiPanel(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$ControllerResults;
    .locals 1
    .parameter "x0"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mControllerCallback:Lcom/android/email/activity/MessageList$ControllerResults;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/email/activity/MessageList;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->followUpFlagAlert:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/email/activity/MessageList;JI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 178
    invoke-direct {p0, p1, p2, p3}, Lcom/android/email/activity/MessageList;->onSetFollowupFlag(JI)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/email/activity/MessageList;JJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 178
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/email/activity/MessageList;->onDelete(JJ)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/email/activity/MessageList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 178
    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->onDeleteAll()V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/email/activity/MessageList;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 178
    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->getSearchResultsCursor()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/email/activity/MessageList;JZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 178
    invoke-direct {p0, p1, p2, p3}, Lcom/android/email/activity/MessageList;->onSetMessageRead(JZ)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/email/activity/MessageList;JZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 178
    invoke-direct {p0, p1, p2, p3}, Lcom/android/email/activity/MessageList;->onSetMessageFavorite(JZ)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/email/activity/MessageList;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/email/activity/MessageList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 178
    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->onMultiDelete()V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$MailBoxAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMoveListAdapter:Lcom/android/email/activity/MessageList$MailBoxAdapter;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/email/activity/MessageList;JLjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 178
    invoke-direct {p0, p1, p2, p3}, Lcom/android/email/activity/MessageList;->onMultiMovePopupToOtherAccount(JLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/email/activity/MessageList;JJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 178
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/email/activity/MessageList;->onMultiMove(JJ)V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$MailBoxAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMoveListToOtherAccountAdapter:Lcom/android/email/activity/MessageList$MailBoxAdapter;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/email/activity/MessageList;JJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 178
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/email/activity/MessageList;->onMultiMoveOtherAccount(JJ)V

    return-void
.end method

.method static synthetic access$4500()[I
    .locals 1

    .prologue
    .line 178
    sget-object v0, Lcom/android/email/activity/MessageList;->mColorChipResIds:[I

    return-object v0
.end method

.method static synthetic access$4700()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    sget-object v0, Lcom/android/email/activity/MessageList;->MAILBOX_ACCOUNT_AND_TYPE_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/android/email/activity/MessageList;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 178
    iget v0, p0, Lcom/android/email/activity/MessageList;->mMailboxType:I

    return v0
.end method

.method static synthetic access$4802(Lcom/android/email/activity/MessageList;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 178
    iput p1, p0, Lcom/android/email/activity/MessageList;->mMailboxType:I

    return p1
.end method

.method static synthetic access$4900(Lcom/android/email/activity/MessageList;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 178
    iget v0, p0, Lcom/android/email/activity/MessageList;->mIsEAS:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$LoadMessagesTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mLoadMessagesTask:Lcom/android/email/activity/MessageList$LoadMessagesTask;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/android/email/activity/MessageList;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 178
    iget v0, p0, Lcom/android/email/activity/MessageList;->mSearchId:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/email/activity/MessageList;Lcom/android/email/activity/MessageList$LoadMessagesTask;)Lcom/android/email/activity/MessageList$LoadMessagesTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 178
    iput-object p1, p0, Lcom/android/email/activity/MessageList;->mLoadMessagesTask:Lcom/android/email/activity/MessageList$LoadMessagesTask;

    return-object p1
.end method

.method static synthetic access$5100(Lcom/android/email/activity/MessageList;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 178
    iget-wide v0, p0, Lcom/android/email/activity/MessageList;->mAccountId:J

    return-wide v0
.end method

.method static synthetic access$5200(Lcom/android/email/activity/MessageList;IJZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 178
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/email/activity/MessageList;->finishFooterView(IJZ)V

    return-void
.end method

.method static synthetic access$5400(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$RefreshFolderListTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mFolderListTask:Lcom/android/email/activity/MessageList$RefreshFolderListTask;

    return-object v0
.end method

.method static synthetic access$5402(Lcom/android/email/activity/MessageList;Lcom/android/email/activity/MessageList$RefreshFolderListTask;)Lcom/android/email/activity/MessageList$RefreshFolderListTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 178
    iput-object p1, p0, Lcom/android/email/activity/MessageList;->mFolderListTask:Lcom/android/email/activity/MessageList$RefreshFolderListTask;

    return-object p1
.end method

.method static synthetic access$5500(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$SetTitleTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mSetTitleTask:Lcom/android/email/activity/MessageList$SetTitleTask;

    return-object v0
.end method

.method static synthetic access$5502(Lcom/android/email/activity/MessageList;Lcom/android/email/activity/MessageList$SetTitleTask;)Lcom/android/email/activity/MessageList$SetTitleTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 178
    iput-object p1, p0, Lcom/android/email/activity/MessageList;->mSetTitleTask:Lcom/android/email/activity/MessageList$SetTitleTask;

    return-object p1
.end method

.method static synthetic access$5600(Lcom/android/email/activity/MessageList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 178
    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->loadMessagesTask_Cancel()V

    return-void
.end method

.method static synthetic access$5700(Lcom/android/email/activity/MessageList;J)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 178
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/MessageList;->IsEAS_account(J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5800(Lcom/android/email/activity/MessageList;)D
    .locals 2
    .parameter "x0"

    .prologue
    .line 178
    iget-wide v0, p0, Lcom/android/email/activity/MessageList;->mVersionDouble:D

    return-wide v0
.end method

.method static synthetic access$5802(Lcom/android/email/activity/MessageList;D)D
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 178
    iput-wide p1, p0, Lcom/android/email/activity/MessageList;->mVersionDouble:D

    return-wide p1
.end method

.method static synthetic access$5900(Lcom/android/email/activity/MessageList;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 178
    iget v0, p0, Lcom/android/email/activity/MessageList;->mCombinedFlag:I

    return v0
.end method

.method static synthetic access$5902(Lcom/android/email/activity/MessageList;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 178
    iput p1, p0, Lcom/android/email/activity/MessageList;->mCombinedFlag:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/email/activity/MessageList;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mSearchListString:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/android/email/activity/MessageList;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->MESSAGE_LIST_ADAPTER_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6100()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 178
    sget-object v0, Lcom/android/email/activity/MessageList;->mSearchBar:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$6200(Lcom/android/email/activity/MessageList;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mSortQuery:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6300(Lcom/android/email/activity/MessageList;)Ljava/util/HashSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mNewOpenedThreadList:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$6302(Lcom/android/email/activity/MessageList;Ljava/util/HashSet;)Ljava/util/HashSet;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 178
    iput-object p1, p0, Lcom/android/email/activity/MessageList;->mNewOpenedThreadList:Ljava/util/HashSet;

    return-object p1
.end method

.method static synthetic access$6400(Lcom/android/email/activity/MessageList;)[S
    .locals 1
    .parameter "x0"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mNewThreadListVisibility:[S

    return-object v0
.end method

.method static synthetic access$6402(Lcom/android/email/activity/MessageList;[S)[S
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 178
    iput-object p1, p0, Lcom/android/email/activity/MessageList;->mNewThreadListVisibility:[S

    return-object p1
.end method

.method static synthetic access$6500(Lcom/android/email/activity/MessageList;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mNewMessageIdArray4ThreadList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$6502(Lcom/android/email/activity/MessageList;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 178
    iput-object p1, p0, Lcom/android/email/activity/MessageList;->mNewMessageIdArray4ThreadList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$6600()Ljava/util/HashSet;
    .locals 1

    .prologue
    .line 178
    sget-object v0, Lcom/android/email/activity/MessageList;->mOpenedThreadList:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$6602(Ljava/util/HashSet;)Ljava/util/HashSet;
    .locals 0
    .parameter "x0"

    .prologue
    .line 178
    sput-object p0, Lcom/android/email/activity/MessageList;->mOpenedThreadList:Ljava/util/HashSet;

    return-object p0
.end method

.method static synthetic access$6700(Lcom/android/email/activity/MessageList;)Ljava/util/HashSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mNewOpenedThreadListConv:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$6702(Lcom/android/email/activity/MessageList;Ljava/util/HashSet;)Ljava/util/HashSet;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 178
    iput-object p1, p0, Lcom/android/email/activity/MessageList;->mNewOpenedThreadListConv:Ljava/util/HashSet;

    return-object p1
.end method

.method static synthetic access$6800()Ljava/util/HashSet;
    .locals 1

    .prologue
    .line 178
    sget-object v0, Lcom/android/email/activity/MessageList;->mOpenedThreadListConv:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$6802(Ljava/util/HashSet;)Ljava/util/HashSet;
    .locals 0
    .parameter "x0"

    .prologue
    .line 178
    sput-object p0, Lcom/android/email/activity/MessageList;->mOpenedThreadListConv:Ljava/util/HashSet;

    return-object p0
.end method

.method static synthetic access$6900(Lcom/android/email/activity/MessageList;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mProgressIcon:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/email/activity/MessageList;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mSearchType:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$7000(Lcom/android/email/activity/MessageList;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 178
    iget v0, p0, Lcom/android/email/activity/MessageList;->mMailboxCurrentIndex:I

    return v0
.end method

.method static synthetic access$7002(Lcom/android/email/activity/MessageList;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 178
    iput p1, p0, Lcom/android/email/activity/MessageList;->mMailboxCurrentIndex:I

    return p1
.end method

.method static synthetic access$7100(Lcom/android/email/activity/MessageList;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMessageListCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$7102(Lcom/android/email/activity/MessageList;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 178
    iput-object p1, p0, Lcom/android/email/activity/MessageList;->mMessageListCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$7200(Lcom/android/email/activity/MessageList;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 178
    iget-boolean v0, p0, Lcom/android/email/activity/MessageList;->mConvViewFlag:Z

    return v0
.end method

.method static synthetic access$7202(Lcom/android/email/activity/MessageList;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 178
    iput-boolean p1, p0, Lcom/android/email/activity/MessageList;->mConvViewFlag:Z

    return p1
.end method

.method static synthetic access$7300(Lcom/android/email/activity/MessageList;)[S
    .locals 1
    .parameter "x0"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mThreadListVisibility:[S

    return-object v0
.end method

.method static synthetic access$7302(Lcom/android/email/activity/MessageList;[S)[S
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 178
    iput-object p1, p0, Lcom/android/email/activity/MessageList;->mThreadListVisibility:[S

    return-object p1
.end method

.method static synthetic access$7402(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"

    .prologue
    .line 178
    sput-object p0, Lcom/android/email/activity/MessageList;->sRealPosition:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$7500(Lcom/android/email/activity/MessageList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 178
    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->restoreListPosition()V

    return-void
.end method

.method static synthetic access$7600(Lcom/android/email/activity/MessageList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 178
    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->autoRefreshStaleMailbox()V

    return-void
.end method

.method static synthetic access$7700(Lcom/android/email/activity/MessageList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 178
    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->onAddIndexScroll()V

    return-void
.end method

.method static synthetic access$7800(Lcom/android/email/activity/MessageList;Landroid/database/Cursor;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 178
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageList;->onRefreshIndexScroll(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$7900(Lcom/android/email/activity/MessageList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 178
    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->onRemoveIndexScroll()V

    return-void
.end method

.method static synthetic access$800()I
    .locals 1

    .prologue
    .line 178
    sget v0, Lcom/android/email/activity/MessageList;->sSelectedSearchType:I

    return v0
.end method

.method static synthetic access$8000()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    sget-object v0, Lcom/android/email/activity/MessageList;->MAILBOX_NAME_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 178
    sput p0, Lcom/android/email/activity/MessageList;->sSelectedSearchType:I

    return p0
.end method

.method static synthetic access$8100(Lcom/android/email/activity/MessageList;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mEmptyListBanner:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$8200()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    sget-object v0, Lcom/android/email/activity/MessageList;->ACCOUNT_NAME_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8300(Lcom/android/email/activity/MessageList;Ljava/lang/String;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 178
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/MessageList;->setTitleAccountName(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$8400(Lcom/android/email/activity/MessageList;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mRightTitle_Layout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$8500(Lcom/android/email/activity/MessageList;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mRightTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$8600(Lcom/android/email/activity/MessageList;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMoveButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$8700(Lcom/android/email/activity/MessageList;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mDeleteButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$8800(Lcom/android/email/activity/MessageList;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mErrorBanner:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$8900(Lcom/android/email/activity/MessageList;)Lcom/android/email/winset/TwTabHost;
    .locals 1
    .parameter "x0"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mTabHost:Lcom/android/email/winset/TwTabHost;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/email/activity/MessageList;)Lcom/android/email/provider/EmailContent$Mailbox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    return-object v0
.end method

.method static synthetic access$9000(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$ProgressDialogForMessageMove;
    .locals 1
    .parameter "x0"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mProgressDialog:Lcom/android/email/activity/MessageList$ProgressDialogForMessageMove;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/email/activity/MessageList;Lcom/android/email/provider/EmailContent$Mailbox;)Lcom/android/email/provider/EmailContent$Mailbox;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 178
    iput-object p1, p0, Lcom/android/email/activity/MessageList;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    return-object p1
.end method

.method static synthetic access$9100(Lcom/android/email/activity/MessageList;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 178
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageList;->setListFooterText(Z)V

    return-void
.end method

.method static synthetic access$9200(Lcom/android/email/activity/MessageList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 178
    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->onRefresh()V

    return-void
.end method

.method static synthetic access$9300(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$FindMailboxTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mFindMailboxTask:Lcom/android/email/activity/MessageList$FindMailboxTask;

    return-object v0
.end method

.method static synthetic access$9302(Lcom/android/email/activity/MessageList;Lcom/android/email/activity/MessageList$FindMailboxTask;)Lcom/android/email/activity/MessageList$FindMailboxTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 178
    iput-object p1, p0, Lcom/android/email/activity/MessageList;->mFindMailboxTask:Lcom/android/email/activity/MessageList$FindMailboxTask;

    return-object p1
.end method

.method static synthetic access$9400(Lcom/android/email/activity/MessageList;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMultiSelectPanel:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$9500(Lcom/android/email/activity/MessageList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 178
    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->updateFooterButtonNames()V

    return-void
.end method

.method static synthetic access$9600(Lcom/android/email/activity/MessageList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 178
    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->updateInboxUnreadCount()V

    return-void
.end method

.method static synthetic access$9700(Lcom/android/email/activity/MessageList;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 178
    iget v0, p0, Lcom/android/email/activity/MessageList;->mListFooterMode:I

    return v0
.end method

.method static synthetic access$9800(Lcom/android/email/activity/MessageList;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 178
    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->checkITPolicy_AllowPOPIMAP()Z

    move-result v0

    return v0
.end method

.method public static actionHandleAccount(Landroid/content/Context;JI)V
    .locals 2
    .parameter "context"
    .parameter "accountId"
    .parameter "mailboxType"

    .prologue
    .line 567
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/MessageList;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 568
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 569
    const-string v1, "com.android.email.activity._ACCOUNT_ID"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 570
    const-string v1, "com.android.email.activity.MAILBOX_TYPE"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 571
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 572
    return-void
.end method

.method public static actionHandleAccountIntent(Landroid/content/Context;JJI)Landroid/content/Intent;
    .locals 2
    .parameter "context"
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "mailboxType"

    .prologue
    .line 585
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/MessageList;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 586
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 587
    const-string v1, "com.android.email.activity._ACCOUNT_ID"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 588
    const-string v1, "com.android.email.activity.MAILBOX_ID"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 589
    const-string v1, "com.android.email.activity.MAILBOX_TYPE"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 590
    return-object v0
.end method

.method public static actionHandleAccountUriIntent(Landroid/content/Context;JI)Landroid/content/Intent;
    .locals 8
    .parameter "context"
    .parameter "accountId"
    .parameter "mailboxType"

    .prologue
    .line 603
    const-wide/16 v3, -0x1

    move-object v0, p0

    move-wide v1, p1

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/android/email/activity/MessageList;->actionHandleAccountIntent(Landroid/content/Context;JJI)Landroid/content/Intent;

    move-result-object v6

    .line 604
    .local v6, i:Landroid/content/Intent;
    const-string v0, "com.android.email.activity._ACCOUNT_ID"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 605
    sget-object v0, Lcom/android/email/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    .line 606
    .local v7, uri:Landroid/net/Uri;
    invoke-virtual {v6, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 607
    return-object v6
.end method

.method public static actionHandleMailbox(Landroid/content/Context;J)V
    .locals 2
    .parameter "context"
    .parameter "id"

    .prologue
    .line 533
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/MessageList;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 534
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 535
    const-string v1, "com.android.email.activity.MAILBOX_ID"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 536
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 537
    return-void
.end method

.method public static actionHandleMailbox(Landroid/content/Context;JZ)V
    .locals 3
    .parameter "context"
    .parameter "id"
    .parameter "displayProgress"

    .prologue
    .line 550
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/MessageList;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 551
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 552
    const-string v1, "com.android.email.activity.MAILBOX_ID"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 553
    const-string v1, "com.android.email.server.search"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 554
    const-string v1, "com.android.email.activity.DISPLAY_PROGRESS"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 555
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 556
    return-void
.end method

.method public static actionOpenAccountInboxUuid(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .parameter "context"
    .parameter "accountUuid"

    .prologue
    const-wide/16 v1, -0x1

    .line 3840
    const/4 v5, 0x0

    move-object v0, p0

    move-wide v3, v1

    invoke-static/range {v0 .. v5}, Lcom/android/email/activity/MessageList;->createIntent(Landroid/content/Context;JJI)Landroid/content/Intent;

    move-result-object v6

    .line 3841
    .local v6, i:Landroid/content/Intent;
    invoke-static {p1}, Lcom/android/email/provider/EmailContent$Account;->getShortcutSafeUriFromUuid(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3842
    invoke-virtual {p0, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 3843
    return-void
.end method

.method private addFooterView(JJIZ)V
    .locals 4
    .parameter "mailboxId"
    .parameter "accountId"
    .parameter "mailboxType"
    .parameter "bRefreshPosition"

    .prologue
    const/4 v2, 0x3

    const/4 v3, 0x0

    .line 5487
    const-wide/16 v0, -0x2

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x3

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x4

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 5490
    :cond_0
    invoke-direct {p0, v3, p1, p2, p6}, Lcom/android/email/activity/MessageList;->finishFooterView(IJZ)V

    .line 5509
    :goto_0
    return-void

    .line 5495
    :cond_1
    const-wide/16 v0, -0x5

    cmp-long v0, p1, v0

    if-eqz v0, :cond_2

    if-ne p5, v2, :cond_3

    .line 5496
    :cond_2
    invoke-direct {p0, v3, p1, p2, p6}, Lcom/android/email/activity/MessageList;->finishFooterView(IJZ)V

    goto :goto_0

    .line 5500
    :cond_3
    const-wide/16 v0, -0x6

    cmp-long v0, p1, v0

    if-eqz v0, :cond_4

    const/4 v0, 0x4

    if-ne p5, v0, :cond_5

    .line 5501
    :cond_4
    invoke-direct {p0, v2, p1, p2, p6}, Lcom/android/email/activity/MessageList;->finishFooterView(IJZ)V

    goto :goto_0

    .line 5507
    :cond_5
    new-instance v0, Lcom/android/email/activity/MessageList$SetFooterTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/email/activity/MessageList$SetFooterTask;-><init>(Lcom/android/email/activity/MessageList;Lcom/android/email/activity/MessageList$1;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mSetFooterTask:Lcom/android/email/activity/MessageList$SetFooterTask;

    .line 5508
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mSetFooterTask:Lcom/android/email/activity/MessageList$SetFooterTask;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v3

    const/4 v2, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageList$SetFooterTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private animation_title2(I)V
    .locals 7
    .parameter

    .prologue
    const/high16 v1, 0x4000

    .line 2081
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/email/activity/MessageList;->mAnimation_startend:F

    .line 2082
    const/high16 v0, 0x42b4

    iput v0, p0, Lcom/android/email/activity/MessageList;->mAnimation_midpre:F

    .line 2083
    const/high16 v0, -0x3d4c

    iput v0, p0, Lcom/android/email/activity/MessageList;->mAnimation_midnext:F

    .line 2084
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/email/activity/MessageList;->mAnimation_depth:F

    .line 2085
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mFlipper2:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/email/activity/MessageList;->mAnimation_centerX:F

    .line 2086
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mFlipper2:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/email/activity/MessageList;->mAnimaiotn_centerY:F

    .line 2089
    new-instance v0, Lcom/android/email/activity/Rotate3dAnimation;

    iget v1, p0, Lcom/android/email/activity/MessageList;->mAnimation_startend:F

    iget v2, p0, Lcom/android/email/activity/MessageList;->mAnimation_midpre:F

    iget v3, p0, Lcom/android/email/activity/MessageList;->mAnimation_centerX:F

    iget v4, p0, Lcom/android/email/activity/MessageList;->mAnimaiotn_centerY:F

    iget v5, p0, Lcom/android/email/activity/MessageList;->mAnimation_depth:F

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/android/email/activity/Rotate3dAnimation;-><init>(FFFFFZ)V

    .line 2091
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/Rotate3dAnimation;->setDuration(J)V

    .line 2092
    new-instance v1, Lcom/android/email/activity/MessageList$7;

    invoke-direct {v1, p0, p1}, Lcom/android/email/activity/MessageList$7;-><init>(Lcom/android/email/activity/MessageList;I)V

    invoke-virtual {v0, v1}, Lcom/android/email/activity/Rotate3dAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2120
    iget-object v1, p0, Lcom/android/email/activity/MessageList;->mFlipper2:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2121
    return-void
.end method

.method private autoRefreshStaleMailbox()V
    .locals 5

    .prologue
    const-string v4, "MessageList >>"

    .line 5145
    :try_start_0
    iget-wide v0, p0, Lcom/android/email/activity/MessageList;->mAccountId:J

    invoke-static {p0, v0, v1}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 5150
    :goto_0
    iget v1, p0, Lcom/android/email/activity/MessageList;->mIsEAS:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    if-eqz v0, :cond_1

    iget v0, v0, Lcom/android/email/provider/EmailContent$Account;->mSyncInterval:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 5179
    :cond_0
    :goto_1
    return-void

    .line 5146
    :catch_0
    move-exception v0

    .line 5147
    const-string v1, "MessageList >>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5148
    const/4 v0, 0x0

    goto :goto_0

    .line 5155
    :cond_1
    iget-boolean v0, p0, Lcom/android/email/activity/MessageList;->mCanAutoRefresh:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mListAdapter:Lcom/android/email/activity/MessageList$MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageList$MessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 5161
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/MessageList;->mCanAutoRefresh:Z

    .line 5162
    iget-wide v0, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    invoke-static {v0, v1}, Lcom/android/email/Email;->mailboxRequiresRefresh(J)Z

    move-result v0

    if-nez v0, :cond_2

    .line 5163
    const-string v0, "MessageList >>"

    const-string v0, "autoRefreshStaleMailbox :: mailbox require refresh NOT"

    invoke-static {v4, v0}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 5166
    :cond_2
    const-string v0, "MessageList >>"

    const-string v0, "autoRefreshStaleMailbox :: mailbox require >>"

    invoke-static {v4, v0}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 5170
    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->checkITPolicy_AllowPOPIMAP()Z

    move-result v0

    if-nez v0, :cond_3

    .line 5172
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "11111 MessageList.java >>>>> autoRefreshStaleMailbox()  >>>>> 2942"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 5178
    :cond_3
    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->onRefresh()V

    goto :goto_1
.end method

.method private checkITPolicy_AllowPOPIMAP()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 7664
    invoke-static {p0}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/SecurityPolicy;->IsAllowPOPIMAPEmailSetted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7667
    iget v0, p0, Lcom/android/email/activity/MessageList;->mIsEAS:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 7668
    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->IsEAS()I

    .line 7670
    :cond_0
    iget v0, p0, Lcom/android/email/activity/MessageList;->mIsEAS:I

    if-eq v0, v2, :cond_1

    .line 7672
    const/4 v0, 0x0

    .line 7675
    :goto_0
    return v0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public static createIntent(Landroid/content/Context;JJI)Landroid/content/Intent;
    .locals 4
    .parameter "context"
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "mailboxType"

    .prologue
    const-wide/16 v2, -0x1

    .line 3855
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/MessageList;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3856
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3857
    cmp-long v1, p1, v2

    if-eqz v1, :cond_0

    const-string v1, "com.android.email.activity._ACCOUNT_ID"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3858
    :cond_0
    cmp-long v1, p3, v2

    if-eqz v1, :cond_1

    const-string v1, "com.android.email.activity.MAILBOX_ID"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3859
    :cond_1
    const/4 v1, -0x1

    if-eq p5, v1, :cond_2

    const-string v1, "com.android.email.activity.MAILBOX_TYPE"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3860
    :cond_2
    return-object v0
.end method

.method private doFooterClick()V
    .locals 2

    .prologue
    .line 5717
    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->checkITPolicy_AllowPOPIMAP()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5719
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "11111 MessageList.java >>>>> doFooterClick()  >>>>> 3327"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 5720
    const v0, 0x7f0801a5

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 5743
    :goto_0
    :pswitch_0
    return-void

    .line 5726
    :cond_0
    iget v0, p0, Lcom/android/email/activity/MessageList;->mListFooterMode:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 5730
    :pswitch_1
    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->onRefresh()V

    goto :goto_0

    .line 5733
    :pswitch_2
    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->onLoadMoreMessages()V

    goto :goto_0

    .line 5736
    :pswitch_3
    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->onSendPendingMessages()V

    goto :goto_0

    .line 5740
    :pswitch_4
    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->onSearchOnServer()V

    goto :goto_0

    .line 5726
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private finishFooterView(IJZ)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    const/4 v3, 0x0

    const-string v6, "footer remove ERROR ~~~~~~~~~~~~~~"

    const-string v2, "MessageList >>"

    .line 5613
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mListAdapter:Lcom/android/email/activity/MessageList$MessageListAdapter;

    if-nez v0, :cond_1

    .line 5677
    :cond_0
    :goto_0
    return-void

    .line 5616
    :cond_1
    iput p1, p0, Lcom/android/email/activity/MessageList;->mListFooterMode:I

    .line 5617
    iget v0, p0, Lcom/android/email/activity/MessageList;->mListFooterMode:I

    if-eqz v0, :cond_5

    .line 5618
    const-string v0, "MessageList >>"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "finish Footer || MODE OK "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mode :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/email/activity/MessageList;->mListFooterMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 5621
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mListFooterView:Landroid/view/View;

    if-nez v0, :cond_8

    .line 5622
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mListFooterEmptyView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 5624
    :try_start_0
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mListView:Lcom/android/email/winset/EmailListView;

    iget-object v1, p0, Lcom/android/email/activity/MessageList;->mListFooterEmptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/email/winset/EmailListView;->removeFooterView(Landroid/view/View;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5628
    :goto_1
    iput-object v4, p0, Lcom/android/email/activity/MessageList;->mListFooterEmptyView:Landroid/view/View;

    .line 5630
    :cond_2
    const-string v0, "MessageList >>"

    const-string v0, "finish Footer || footer is NULL"

    invoke-static {v2, v0}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 5631
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageList;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f030032

    iget-object v2, p0, Lcom/android/email/activity/MessageList;->mListView:Lcom/android/email/winset/EmailListView;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mListFooterView:Landroid/view/View;

    .line 5634
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mListView:Lcom/android/email/winset/EmailListView;

    iget-object v1, p0, Lcom/android/email/activity/MessageList;->mListFooterView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/email/winset/EmailListView;->addFooterView(Landroid/view/View;)V

    .line 5635
    iget v0, p0, Lcom/android/email/activity/MessageList;->mListFooterMode:I

    if-eq v0, v5, :cond_3

    .line 5636
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mListAdapter:Lcom/android/email/activity/MessageList$MessageListAdapter;

    invoke-static {v0}, Lcom/android/email/activity/MessageList$MessageListAdapter;->access$5300(Lcom/android/email/activity/MessageList$MessageListAdapter;)V

    .line 5639
    :cond_3
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mListFooterView:Landroid/view/View;

    const v1, 0x7f07009a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mListFooterText:Landroid/widget/TextView;

    .line 5641
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mListView:Lcom/android/email/winset/EmailListView;

    iget-object v1, p0, Lcom/android/email/activity/MessageList;->mListAdapter:Lcom/android/email/activity/MessageList$MessageListAdapter;

    invoke-virtual {v0, v1}, Lcom/android/email/winset/EmailListView;->setAdapter(Landroid/widget/ListAdapter;)V

    move v0, v3

    .line 5647
    :goto_2
    if-eqz v0, :cond_4

    .line 5648
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mListView:Lcom/android/email/winset/EmailListView;

    iget-object v1, p0, Lcom/android/email/activity/MessageList;->mListAdapter:Lcom/android/email/activity/MessageList$MessageListAdapter;

    invoke-virtual {v0, v1}, Lcom/android/email/winset/EmailListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 5652
    :cond_4
    invoke-direct {p0, v3}, Lcom/android/email/activity/MessageList;->setListFooterText(Z)V

    goto/16 :goto_0

    .line 5625
    :catch_0
    move-exception v0

    .line 5626
    const-string v0, "MessageList >>"

    const-string v0, "footer remove ERROR ~~~~~~~~~~~~~~"

    invoke-static {v2, v6}, Lcom/android/email/Email;->logv(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 5655
    :cond_5
    const-string v0, "MessageList >>"

    const-string v0, "finish Footer || MODE NONE !!!! "

    invoke-static {v2, v0}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 5656
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mListFooterEmptyView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 5658
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mListFooterView:Landroid/view/View;

    if-eqz v0, :cond_6

    .line 5660
    :try_start_1
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mListView:Lcom/android/email/winset/EmailListView;

    iget-object v1, p0, Lcom/android/email/activity/MessageList;->mListFooterView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/email/winset/EmailListView;->removeFooterView(Landroid/view/View;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 5664
    :goto_3
    iput-object v4, p0, Lcom/android/email/activity/MessageList;->mListFooterView:Landroid/view/View;

    .line 5667
    :cond_6
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageList;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f030031

    iget-object v2, p0, Lcom/android/email/activity/MessageList;->mListView:Lcom/android/email/winset/EmailListView;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mListFooterEmptyView:Landroid/view/View;

    .line 5670
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mListView:Lcom/android/email/winset/EmailListView;

    iget-object v1, p0, Lcom/android/email/activity/MessageList;->mListFooterEmptyView:Landroid/view/View;

    invoke-virtual {v0, v1, v4, v3}, Lcom/android/email/winset/EmailListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 5671
    iget v0, p0, Lcom/android/email/activity/MessageList;->mListFooterMode:I

    if-eq v0, v5, :cond_7

    .line 5672
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mListAdapter:Lcom/android/email/activity/MessageList$MessageListAdapter;

    invoke-static {v0}, Lcom/android/email/activity/MessageList$MessageListAdapter;->access$5300(Lcom/android/email/activity/MessageList$MessageListAdapter;)V

    .line 5674
    :cond_7
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mListView:Lcom/android/email/winset/EmailListView;

    iget-object v1, p0, Lcom/android/email/activity/MessageList;->mListAdapter:Lcom/android/email/activity/MessageList$MessageListAdapter;

    invoke-virtual {v0, v1}, Lcom/android/email/winset/EmailListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_0

    .line 5661
    :catch_1
    move-exception v0

    .line 5662
    const-string v0, "MessageList >>"

    const-string v0, "footer remove ERROR ~~~~~~~~~~~~~~"

    invoke-static {v2, v6}, Lcom/android/email/Email;->logv(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    move v0, p4

    goto :goto_2
.end method

.method private getMultipleAddress(Ljava/util/Set;)Ljava/lang/String;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x3

    .line 5276
    const/4 v0, 0x0

    .line 5277
    iget-object v1, p0, Lcom/android/email/activity/MessageList;->mListAdapter:Lcom/android/email/activity/MessageList$MessageListAdapter;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageList$MessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 5278
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5291
    :cond_0
    return-object v0

    .line 5281
    :cond_1
    const/4 v2, -0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 5282
    :cond_2
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5283
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v2, v2

    .line 5284
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5285
    if-nez v0, :cond_3

    .line 5286
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 5288
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getSearchResultsCursor()Landroid/database/Cursor;
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 4116
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4117
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mailboxKey="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4118
    sget-object v1, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/activity/MessageList;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private getSelectedItemsFlagStatus()I
    .locals 11

    .prologue
    const/4 v4, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 3722
    .line 3723
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mListAdapter:Lcom/android/email/activity/MessageList$MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageList$MessageListAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v0

    .line 3724
    iget-object v1, p0, Lcom/android/email/activity/MessageList;->mListAdapter:Lcom/android/email/activity/MessageList$MessageListAdapter;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageList$MessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 3725
    invoke-interface {v1, v8}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 3726
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3727
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v5, v2

    .line 3728
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3729
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/email/provider/EmailContent$FollowupFlag;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/email/provider/EmailContent$FollowupFlag;->CONTENT_PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "messageKey=\'"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 3732
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    move v0, v8

    .line 3755
    :goto_0
    packed-switch v0, :pswitch_data_0

    move v0, v10

    .line 3767
    :goto_1
    :pswitch_0
    return v0

    .line 3738
    :cond_2
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move v1, v9

    .line 3739
    :goto_2
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_3

    .line 3740
    const/4 v1, 0x6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 3741
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 3743
    :catch_0
    move-exception v1

    .line 3744
    :try_start_1
    const-string v2, "MessageList >>"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IllegalStateException >>> syncFavorites"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 3745
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3749
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move v0, v8

    .line 3750
    goto :goto_0

    .line 3749
    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move v0, v1

    .line 3750
    goto :goto_0

    .line 3749
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1

    :pswitch_1
    move v0, v10

    .line 3758
    goto :goto_1

    :pswitch_2
    move v0, v9

    .line 3763
    goto :goto_1

    :cond_4
    move v0, v9

    goto :goto_0

    .line 3755
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private getSelectedItemsFlagStatus(J)I
    .locals 11
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 3619
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Selected Set: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/MessageList;->mListAdapter:Lcom/android/email/activity/MessageList$MessageListAdapter;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageList$MessageListAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 3622
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mListAdapter:Lcom/android/email/activity/MessageList$MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageList$MessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 3623
    invoke-interface {v0, v8}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 3624
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3625
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v5, v1

    .line 3626
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v1, p1, v1

    if-nez v1, :cond_0

    .line 3627
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/email/provider/EmailContent$FollowupFlag;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/email/provider/EmailContent$FollowupFlag;->CONTENT_PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "messageKey=\'"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 3630
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3631
    :cond_1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, ">>>>>>>>>>>  ff >>>>>>>>>>>>>>>>>>>>>>> ff  is null of closed <<<<<<<<<<"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v0, v8

    .line 3652
    :goto_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "flag value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 3656
    :goto_1
    packed-switch v0, :pswitch_data_0

    move v0, v10

    .line 3668
    :goto_2
    :pswitch_0
    return v0

    .line 3637
    :cond_2
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move v1, v9

    .line 3638
    :goto_3
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_3

    .line 3639
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>>>>>>>>>>  ff.isAfterLast() >>>>>>>>>>>>>>>>>>>>>>> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<<<<<<<<<<"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 3640
    const/4 v1, 0x6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 3641
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 3643
    :catch_0
    move-exception v1

    .line 3644
    :try_start_1
    const-string v2, "MessageList >>"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IllegalStateException >>> syncFavorites"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 3645
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3649
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move v0, v8

    .line 3650
    goto :goto_0

    .line 3649
    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move v0, v1

    .line 3650
    goto :goto_0

    .line 3649
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1

    :pswitch_1
    move v0, v10

    .line 3659
    goto :goto_2

    :pswitch_2
    move v0, v9

    .line 3664
    goto :goto_2

    :cond_4
    move v0, v9

    goto :goto_1

    .line 3656
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static getSelectedSearchType()I
    .locals 1

    .prologue
    .line 961
    sget v0, Lcom/android/email/activity/MessageList;->sSelectedSearchType:I

    return v0
.end method

.method public static getstrSearchWord()Ljava/lang/String;
    .locals 1

    .prologue
    .line 966
    sget-object v0, Lcom/android/email/activity/MessageList;->mSearchBar:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private loadMessagesTask(JJZI)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1061
    packed-switch p6, :pswitch_data_0

    .line 1067
    :goto_0
    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->loadMessagesTask_Cancel()V

    .line 1069
    new-instance v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/email/activity/MessageList$LoadMessagesTask;-><init>(Lcom/android/email/activity/MessageList;JJZ)V

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mLoadMessagesTask:Lcom/android/email/activity/MessageList$LoadMessagesTask;

    .line 1070
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mLoadMessagesTask:Lcom/android/email/activity/MessageList$LoadMessagesTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageList$LoadMessagesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1071
    return-void

    .line 1063
    :pswitch_0
    const-string v0, "TAG"

    const-string v1, "loadMessagesTask call by : SEARCH "

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1061
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method private loadMessagesTask_Cancel()V
    .locals 2

    .prologue
    .line 996
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mLoadMessagesTask:Lcom/android/email/activity/MessageList$LoadMessagesTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mLoadMessagesTask:Lcom/android/email/activity/MessageList$LoadMessagesTask;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageList$LoadMessagesTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 998
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mLoadMessagesTask:Lcom/android/email/activity/MessageList$LoadMessagesTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageList$LoadMessagesTask;->cancel(Z)Z

    .line 999
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mLoadMessagesTask:Lcom/android/email/activity/MessageList$LoadMessagesTask;

    .line 1001
    :cond_0
    return-void
.end method

.method private lookupAccountIdFromMailboxId(J)J
    .locals 3
    .parameter "mailboxId"

    .prologue
    .line 3193
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-gez v1, :cond_0

    .line 3194
    const-wide/16 v1, -0x1

    .line 3198
    :goto_0
    return-wide v1

    .line 3196
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v0

    .line 3198
    .local v0, mailbox:Lcom/android/email/provider/EmailContent$Mailbox;
    iget-wide v1, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    goto :goto_0
.end method

.method private onAccounts()V
    .locals 0

    .prologue
    .line 3186
    invoke-static {p0}, Lcom/android/email/activity/AccountFolderList;->actionShowAccounts(Landroid/content/Context;)V

    .line 3187
    invoke-virtual {p0}, Lcom/android/email/activity/MessageList;->finish()V

    .line 3188
    return-void
.end method

.method private onAddIndexScroll()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1977
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mIndexView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    if-eqz v0, :cond_0

    .line 1997
    :goto_0
    return-void

    .line 1981
    :cond_0
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mIndexView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    .line 1982
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mIndexView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->setSubscrollLimit(I)V

    .line 1983
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mIndexView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    new-instance v1, Lcom/android/email/activity/MessageList$5;

    invoke-direct {v1, p0}, Lcom/android/email/activity/MessageList$5;-><init>(Lcom/android/email/activity/MessageList;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->setOnIndexSelectedListener(Lcom/sec/android/touchwiz/widget/TwIndexScrollView$OnIndexSelectedListener;)V

    .line 1988
    const v0, 0x7f0700f3

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/email/activity/MessageList;->mIndexView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1990
    const v0, 0x7f0700f4

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1991
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1992
    const/16 v2, 0xf

    invoke-virtual {v1, v3, v3, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 1993
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1995
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mListView:Lcom/android/email/winset/EmailListView;

    iget-object v1, p0, Lcom/android/email/activity/MessageList;->mIndexView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    invoke-virtual {v0, v1}, Lcom/android/email/winset/EmailListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    goto :goto_0
.end method

.method private onClearSearchResults()V
    .locals 4

    .prologue
    .line 4165
    iget-wide v2, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    invoke-direct {p0, v2, v3}, Lcom/android/email/activity/MessageList;->lookupAccountIdFromMailboxId(J)J

    move-result-wide v0

    .line 4166
    .local v0, accountId:J
    new-instance v2, Lcom/android/email/activity/MessageList$1ClearSearchResultsTask;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/email/activity/MessageList$1ClearSearchResultsTask;-><init>(Lcom/android/email/activity/MessageList;J)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MessageList$1ClearSearchResultsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 4167
    return-void
.end method

.method private onCompose()V
    .locals 6

    .prologue
    .line 3203
    iget-wide v4, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    invoke-direct {p0, v4, v5}, Lcom/android/email/activity/MessageList;->lookupAccountIdFromMailboxId(J)J

    move-result-wide v0

    .line 3204
    .local v0, accountKey:J
    const-wide/16 v4, -0x2

    cmp-long v4, v0, v4

    if-lez v4, :cond_2

    .line 3207
    iget-wide v4, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    invoke-static {p0, v4, v5}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v2

    .line 3208
    .local v2, mailbox:Lcom/android/email/provider/EmailContent$Mailbox;
    if-eqz v2, :cond_1

    const/16 v4, 0x61

    invoke-static {v2, v4}, Lcom/android/email/Utility;->isMailboxType(Lcom/android/email/provider/EmailContent$Mailbox;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3210
    iget-object v4, p0, Lcom/android/email/activity/MessageList;->mListAdapter:Lcom/android/email/activity/MessageList$MessageListAdapter;

    invoke-virtual {v4}, Lcom/android/email/activity/MessageList$MessageListAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/email/activity/MessageList;->getMultipleAddress(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v3

    .line 3211
    .local v3, toAddress:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 3212
    invoke-static {p0, v3, v0, v1}, Lcom/android/email/activity/MessageCompose;->actionCompose(Landroid/content/Context;Ljava/lang/String;J)Z

    .line 3213
    iget-object v4, p0, Lcom/android/email/activity/MessageList;->mListAdapter:Lcom/android/email/activity/MessageList$MessageListAdapter;

    invoke-virtual {v4}, Lcom/android/email/activity/MessageList$MessageListAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->clear()V

    .line 3214
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/email/activity/MessageList;->showMultiPanel(Z)V

    .line 3227
    .end local v2           #mailbox:Lcom/android/email/provider/EmailContent$Mailbox;
    .end local v3           #toAddress:Ljava/lang/String;
    :goto_0
    return-void

    .line 3216
    .restart local v2       #mailbox:Lcom/android/email/provider/EmailContent$Mailbox;
    .restart local v3       #toAddress:Ljava/lang/String;
    :cond_0
    invoke-static {p0, v0, v1}, Lcom/android/email/activity/MessageCompose;->actionCompose(Landroid/content/Context;J)V

    goto :goto_0

    .line 3219
    .end local v3           #toAddress:Ljava/lang/String;
    :cond_1
    iget-wide v4, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    invoke-direct {p0, v4, v5}, Lcom/android/email/activity/MessageList;->lookupAccountIdFromMailboxId(J)J

    move-result-wide v4

    invoke-static {p0, v4, v5}, Lcom/android/email/activity/MessageCompose;->actionCompose(Landroid/content/Context;J)V

    goto :goto_0

    .line 3224
    .end local v2           #mailbox:Lcom/android/email/provider/EmailContent$Mailbox;
    :cond_2
    invoke-virtual {p0}, Lcom/android/email/activity/MessageList;->finish()V

    goto :goto_0
.end method

.method private onDelete(JJ)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 3951
    iget-wide v0, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    invoke-static {p0, v0, v1}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v0

    .line 3952
    if-eqz v0, :cond_0

    .line 3953
    const/16 v1, 0x61

    invoke-static {v0, v1}, Lcom/android/email/Utility;->isMailboxType(Lcom/android/email/provider/EmailContent$Mailbox;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3954
    const-string v0, "Delete operation is not allowed in Recipient_Information_Cache"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3970
    :goto_0
    return-void

    .line 3962
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMoveMessageTask:Lcom/android/email/activity/MessageList$MoveMessageTask;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMoveMessageTask:Lcom/android/email/activity/MessageList$MoveMessageTask;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageList$MoveMessageTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_1

    .line 3964
    const v0, 0x7f08017a

    invoke-static {p0, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 3967
    :cond_1
    new-instance v0, Lcom/android/email/activity/MessageList$MoveMessageTask;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/email/activity/MessageList$MoveMessageTask;-><init>(Lcom/android/email/activity/MessageList;JJ)V

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mMoveMessageTask:Lcom/android/email/activity/MessageList$MoveMessageTask;

    .line 3968
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMoveMessageTask:Lcom/android/email/activity/MessageList$MoveMessageTask;

    new-array v1, v6, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageList$MoveMessageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private onDeleteAll()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 4011
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMoveMessageTask:Lcom/android/email/activity/MessageList$MoveMessageTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMoveMessageTask:Lcom/android/email/activity/MessageList$MoveMessageTask;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageList$MoveMessageTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 4013
    const v0, 0x7f08017a

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 4019
    :goto_0
    return-void

    .line 4016
    :cond_0
    new-instance v0, Lcom/android/email/activity/MessageList$MoveMessageTask;

    iget-wide v1, p0, Lcom/android/email/activity/MessageList;->mAccountId:J

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/email/activity/MessageList$MoveMessageTask;-><init>(Lcom/android/email/activity/MessageList;JZ)V

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mMoveMessageTask:Lcom/android/email/activity/MessageList$MoveMessageTask;

    .line 4017
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMoveMessageTask:Lcom/android/email/activity/MessageList$MoveMessageTask;

    new-array v1, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageList$MoveMessageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private onDeleteAllPopup()V
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v4, -0x1

    .line 3974
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3976
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 3977
    const v1, 0x7f08001d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 3980
    iget-object v1, p0, Lcom/android/email/activity/MessageList;->mListAdapter:Lcom/android/email/activity/MessageList$MessageListAdapter;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageList$MessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 3981
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 3982
    invoke-interface {v1, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 3983
    :cond_0
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3984
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-ne v3, v4, :cond_0

    .line 3985
    sub-int/2addr v2, v5

    goto :goto_0

    .line 3988
    :cond_1
    invoke-virtual {p0}, Lcom/android/email/activity/MessageList;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0b0006

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v1, v3, v2, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 3989
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 3991
    const v1, 0x7f080011

    new-instance v2, Lcom/android/email/activity/MessageList$25;

    invoke-direct {v2, p0}, Lcom/android/email/activity/MessageList$25;-><init>(Lcom/android/email/activity/MessageList;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 4000
    const v1, 0x7f080012

    new-instance v2, Lcom/android/email/activity/MessageList$26;

    invoke-direct {v2, p0}, Lcom/android/email/activity/MessageList$26;-><init>(Lcom/android/email/activity/MessageList;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 4006
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 4007
    return-void
.end method

.method private onDeleteConversation(JJ)V
    .locals 8
    .parameter
    .parameter

    .prologue
    .line 2708
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f08001d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f08001c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f080011

    new-instance v0, Lcom/android/email/activity/MessageList$10;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/email/activity/MessageList$10;-><init>(Lcom/android/email/activity/MessageList;JJ)V

    invoke-virtual {v6, v7, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080012

    new-instance v2, Lcom/android/email/activity/MessageList$9;

    invoke-direct {v2, p0}, Lcom/android/email/activity/MessageList$9;-><init>(Lcom/android/email/activity/MessageList;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 2724
    return-void
.end method

.method private onDeletePopup(JJ)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 3892
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3895
    const v0, 0x1080027

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 3896
    const v0, 0x7f08001d

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 3898
    invoke-virtual {p0}, Lcom/android/email/activity/MessageList;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0006

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v5, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 3900
    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 3903
    const v7, 0x7f080011

    new-instance v0, Lcom/android/email/activity/MessageList$21;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/email/activity/MessageList$21;-><init>(Lcom/android/email/activity/MessageList;JJ)V

    invoke-virtual {v6, v7, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3912
    const v0, 0x7f080012

    new-instance v1, Lcom/android/email/activity/MessageList$22;

    invoke-direct {v1, p0}, Lcom/android/email/activity/MessageList$22;-><init>(Lcom/android/email/activity/MessageList;)V

    invoke-virtual {v6, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3918
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 3919
    return-void
.end method

.method private onDeleteSmsConversation(JJ)V
    .locals 8
    .parameter
    .parameter

    .prologue
    .line 2728
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f08001d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, " Sms Conversation will be deleted permanently. Do you want to do it? "

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f080011

    new-instance v0, Lcom/android/email/activity/MessageList$12;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/email/activity/MessageList$12;-><init>(Lcom/android/email/activity/MessageList;JJ)V

    invoke-virtual {v6, v7, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080012

    new-instance v2, Lcom/android/email/activity/MessageList$11;

    invoke-direct {v2, p0}, Lcom/android/email/activity/MessageList$11;-><init>(Lcom/android/email/activity/MessageList;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 2744
    return-void
.end method

.method private onDeleteSmsPopup(JJ)V
    .locals 8
    .parameter
    .parameter

    .prologue
    .line 3921
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3924
    const v0, 0x1080027

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 3925
    const v0, 0x7f08001d

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 3927
    const-string v0, " Sms will be deleted permanently. Do you want to do it? "

    .line 3928
    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 3931
    const v7, 0x7f080011

    new-instance v0, Lcom/android/email/activity/MessageList$23;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/email/activity/MessageList$23;-><init>(Lcom/android/email/activity/MessageList;JJ)V

    invoke-virtual {v6, v7, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3940
    const v0, 0x7f080012

    new-instance v1, Lcom/android/email/activity/MessageList$24;

    invoke-direct {v1, p0}, Lcom/android/email/activity/MessageList$24;-><init>(Lcom/android/email/activity/MessageList;)V

    invoke-virtual {v6, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3946
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 3947
    return-void
.end method

.method private onDeselectAll()V
    .locals 1

    .prologue
    .line 3236
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mListAdapter:Lcom/android/email/activity/MessageList$MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageList$MessageListAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 3237
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mListView:Lcom/android/email/winset/EmailListView;

    invoke-virtual {v0}, Lcom/android/email/winset/EmailListView;->invalidateViews()V

    .line 3238
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageList;->showMultiPanel(Z)V

    .line 3239
    return-void
.end method

.method private onEditAccount()V
    .locals 2

    .prologue
    .line 3231
    iget-wide v0, p0, Lcom/android/email/activity/MessageList;->mAccountId:J

    invoke-static {p0, v0, v1}, Lcom/android/email/activity/setup/AccountSettings;->actionSettings(Landroid/app/Activity;J)V

    .line 3233
    return-void
.end method

.method private onFollowUpFlag()V
    .locals 4

    .prologue
    .line 3243
    invoke-virtual {p0}, Lcom/android/email/activity/MessageList;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 3244
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3245
    const v2, 0x7f0801c1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 3246
    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->getSelectedItemsFlagStatus()I

    move-result v2

    new-instance v3, Lcom/android/email/activity/MessageList$17;

    invoke-direct {v3, p0}, Lcom/android/email/activity/MessageList$17;-><init>(Lcom/android/email/activity/MessageList;)V

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3261
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->followUpFlagAlert:Landroid/app/AlertDialog;

    .line 3262
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->followUpFlagAlert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 3263
    return-void
.end method

.method private onFollowUpFlag(J)V
    .locals 4
    .parameter

    .prologue
    .line 3268
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "follow up through context menu"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 3270
    invoke-virtual {p0}, Lcom/android/email/activity/MessageList;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 3271
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3272
    const v2, 0x7f0801c1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 3273
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/MessageList;->getSelectedItemsFlagStatus(J)I

    move-result v2

    new-instance v3, Lcom/android/email/activity/MessageList$18;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/email/activity/MessageList$18;-><init>(Lcom/android/email/activity/MessageList;J)V

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3295
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->followUpFlagAlert:Landroid/app/AlertDialog;

    .line 3296
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->followUpFlagAlert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 3297
    return-void
.end method

.method private onFollowUpFlagConv(JJ)V
    .locals 9
    .parameter
    .parameter

    .prologue
    .line 3583
    invoke-virtual {p0}, Lcom/android/email/activity/MessageList;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 3585
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3586
    const v0, 0x7f0801c1

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 3587
    const/4 v8, 0x2

    new-instance v0, Lcom/android/email/activity/MessageList$19;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/email/activity/MessageList$19;-><init>(Lcom/android/email/activity/MessageList;JJ)V

    invoke-virtual {v7, v6, v8, v0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3611
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->followUpFlagAlert:Landroid/app/AlertDialog;

    .line 3612
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->followUpFlagAlert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 3614
    return-void
.end method

.method private onForward(J)V
    .locals 3
    .parameter

    .prologue
    .line 3800
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const v2, 0x7f080083

    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageList;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const v2, 0x7f080084

    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageList;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 3801
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f080167

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/email/activity/MessageList$20;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/email/activity/MessageList$20;-><init>(Lcom/android/email/activity/MessageList;J)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 3814
    return-void
.end method

.method private onIgnoreConversation(JLjava/lang/String;)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v9, 0x0

    .line 2842
    iget-wide v0, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    invoke-static {p0, v0, v1}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v6

    .line 2843
    iput v2, p0, Lcom/android/email/activity/MessageList;->mIgnore:I

    .line 2847
    :try_start_0
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/email/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "accountKey=? AND type=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-wide v7, v6, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x1

    const/4 v7, 0x6

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 2852
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2853
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mController:Lcom/android/email/Controller;

    iget-wide v4, v6, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iget v8, p0, Lcom/android/email/activity/MessageList;->mIgnore:I

    move-wide v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v8}, Lcom/android/email/Controller;->moveConversationAlways(JLjava/lang/String;JJI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2856
    if-eqz v9, :cond_0

    .line 2857
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 2859
    :cond_0
    return-void

    .line 2856
    :catchall_0
    move-exception v0

    move-object v1, v9

    :goto_0
    if-eqz v1, :cond_1

    .line 2857
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2856
    :cond_1
    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v9

    goto :goto_0
.end method

.method private onListbySearch()V
    .locals 7

    .prologue
    const v6, 0x7f080168

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x3

    .line 1159
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    if-nez v0, :cond_0

    .line 1160
    iget-wide v0, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    invoke-static {p0, v0, v1}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    .line 1161
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    if-nez v0, :cond_0

    .line 1235
    :goto_0
    return-void

    .line 1166
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    if-nez v0, :cond_2

    .line 1168
    new-array v0, v2, [Ljava/lang/String;

    const v1, 0x7f080169

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageList;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const v1, 0x7f080115

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageList;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-virtual {p0, v6}, Lcom/android/email/activity/MessageList;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    .line 1169
    sget v1, Lcom/android/email/activity/MessageList;->sSelectedSearchType:I

    if-ne v1, v2, :cond_1

    .line 1171
    sput v3, Lcom/android/email/activity/MessageList;->sSelectedSearchType:I

    .line 1192
    :cond_1
    :goto_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1193
    const v2, 0x7f08002c

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1195
    sget v2, Lcom/android/email/activity/MessageList;->sSelectedSearchType:I

    new-instance v3, Lcom/android/email/activity/MessageList$3;

    invoke-direct {v3, p0}, Lcom/android/email/activity/MessageList$3;-><init>(Lcom/android/email/activity/MessageList;)V

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1234
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 1174
    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    .line 1177
    :cond_3
    new-array v0, v2, [Ljava/lang/String;

    const v1, 0x7f080169

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageList;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const v1, 0x7f080116

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageList;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-virtual {p0, v6}, Lcom/android/email/activity/MessageList;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    .line 1178
    sget v1, Lcom/android/email/activity/MessageList;->sSelectedSearchType:I

    if-ne v1, v2, :cond_1

    .line 1180
    sput v3, Lcom/android/email/activity/MessageList;->sSelectedSearchType:I

    goto :goto_1

    .line 1185
    :cond_4
    new-array v0, v2, [Ljava/lang/String;

    const v1, 0x7f080169

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageList;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const v1, 0x7f080115

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageList;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-virtual {p0, v6}, Lcom/android/email/activity/MessageList;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    .line 1186
    sget v1, Lcom/android/email/activity/MessageList;->sSelectedSearchType:I

    if-ne v1, v2, :cond_1

    .line 1188
    sput v3, Lcom/android/email/activity/MessageList;->sSelectedSearchType:I

    goto :goto_1
.end method

.method private onLoadMoreMessages()V
    .locals 4

    .prologue
    .line 3819
    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->checkITPolicy_AllowPOPIMAP()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3821
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "11111 MessageList.java >>>>> onLoadMoreMessages()  >>>>> 2147"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 3822
    const v0, 0x7f0801a5

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3833
    :cond_0
    :goto_0
    return-void

    .line 3827
    :cond_1
    iget-wide v0, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    .line 3828
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mController:Lcom/android/email/Controller;

    iget-wide v1, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    iget-object v3, p0, Lcom/android/email/activity/MessageList;->mControllerCallback:Lcom/android/email/activity/MessageList$ControllerResults;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/Controller;->loadMoreMessages(JLcom/android/email/Controller$Result;)V

    goto :goto_0

    .line 3830
    :cond_2
    iget-wide v0, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 3831
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageList;->updateMessageLists(Z)V

    goto :goto_0
.end method

.method private onMoveConversation(J)V
    .locals 9
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    const-string v8, "displayName"

    .line 2747
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v7

    const-string v0, "displayName"

    aput-object v8, v2, v6

    const/4 v0, 0x2

    const-string v1, "type"

    aput-object v1, v2, v0

    .line 2749
    const-string v0, "Vinay"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "messagelist onMoveConversation messageId:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2750
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "accountKey=? AND type<64 AND type<>3 AND type<>4 AND type<>5 AND type<>8 AND type<>82 AND type<>83 AND type<>81 AND type<>85 AND type<>84 AND type<>97 AND flagVisible=1  AND _id<>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v3, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2772
    iget-wide v0, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    invoke-static {p0, v0, v1}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v5

    .line 2774
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/email/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    new-array v4, v6, [Ljava/lang/String;

    iget-wide v5, v5, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2778
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f08016a

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/email/activity/MessageList$13;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/android/email/activity/MessageList$13;-><init>(Lcom/android/email/activity/MessageList;JLandroid/database/Cursor;)V

    const-string v3, "displayName"

    invoke-virtual {v1, v0, v2, v8}, Landroid/app/AlertDialog$Builder;->setCursor(Landroid/database/Cursor;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 2797
    return-void
.end method

.method private onMultiDelete()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 4419
    iget-wide v0, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    invoke-static {p0, v0, v1}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v0

    .line 4420
    if-eqz v0, :cond_1

    const/16 v1, 0x61

    invoke-static {v0, v1}, Lcom/android/email/Utility;->isMailboxType(Lcom/android/email/provider/EmailContent$Mailbox;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4422
    iget-wide v0, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/MessageList;->lookupAccountIdFromMailboxId(J)J

    move-result-wide v0

    .line 4423
    const-wide/16 v2, -0x2

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 4424
    iget-object v2, p0, Lcom/android/email/activity/MessageList;->mListAdapter:Lcom/android/email/activity/MessageList$MessageListAdapter;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageList$MessageListAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageList;->getMultipleAddress(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v2

    .line 4425
    invoke-static {p0, v2, v0, v1}, Lcom/android/email/activity/MessageCompose;->actionCompose(Landroid/content/Context;Ljava/lang/String;J)Z

    .line 4427
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mListAdapter:Lcom/android/email/activity/MessageList$MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageList$MessageListAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 4428
    invoke-direct {p0, v4}, Lcom/android/email/activity/MessageList;->showMultiPanel(Z)V

    .line 4442
    :goto_0
    return-void

    .line 4431
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMoveMessageTask:Lcom/android/email/activity/MessageList$MoveMessageTask;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMoveMessageTask:Lcom/android/email/activity/MessageList$MoveMessageTask;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageList$MoveMessageTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_2

    .line 4433
    const v0, 0x7f08017a

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 4434
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mListAdapter:Lcom/android/email/activity/MessageList$MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageList$MessageListAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 4435
    invoke-direct {p0, v4}, Lcom/android/email/activity/MessageList;->showMultiPanel(Z)V

    goto :goto_0

    .line 4438
    :cond_2
    new-instance v0, Lcom/android/email/activity/MessageList$MoveMessageTask;

    iget-wide v1, p0, Lcom/android/email/activity/MessageList;->mAccountId:J

    invoke-direct {v0, p0, v1, v2, v4}, Lcom/android/email/activity/MessageList$MoveMessageTask;-><init>(Lcom/android/email/activity/MessageList;JZ)V

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mMoveMessageTask:Lcom/android/email/activity/MessageList$MoveMessageTask;

    .line 4439
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMoveMessageTask:Lcom/android/email/activity/MessageList$MoveMessageTask;

    new-array v1, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageList$MoveMessageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private onMultiDeletePopup()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 4376
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4378
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 4379
    const v1, 0x7f08001d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 4381
    invoke-virtual {p0}, Lcom/android/email/activity/MessageList;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0006

    iget-object v3, p0, Lcom/android/email/activity/MessageList;->mListAdapter:Lcom/android/email/activity/MessageList$MessageListAdapter;

    invoke-static {v3}, Lcom/android/email/activity/MessageList$MessageListAdapter;->access$1100(Lcom/android/email/activity/MessageList$MessageListAdapter;)Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    new-array v4, v7, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/email/activity/MessageList;->mListAdapter:Lcom/android/email/activity/MessageList$MessageListAdapter;

    invoke-static {v6}, Lcom/android/email/activity/MessageList$MessageListAdapter;->access$1100(Lcom/android/email/activity/MessageList$MessageListAdapter;)Ljava/util/HashSet;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashSet;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 4384
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Inside onMultiDeletePopUp "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/activity/MessageList;->mListAdapter:Lcom/android/email/activity/MessageList$MessageListAdapter;

    invoke-static {v4}, Lcom/android/email/activity/MessageList$MessageListAdapter;->access$3800(Lcom/android/email/activity/MessageList$MessageListAdapter;)Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 4385
    iget-object v2, p0, Lcom/android/email/activity/MessageList;->mListAdapter:Lcom/android/email/activity/MessageList$MessageListAdapter;

    invoke-static {v2}, Lcom/android/email/activity/MessageList$MessageListAdapter;->access$3800(Lcom/android/email/activity/MessageList$MessageListAdapter;)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-lt v2, v7, :cond_0

    .line 4386
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/email/activity/MessageList;->mListAdapter:Lcom/android/email/activity/MessageList$MessageListAdapter;

    invoke-static {v2}, Lcom/android/email/activity/MessageList$MessageListAdapter;->access$3800(Lcom/android/email/activity/MessageList$MessageListAdapter;)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Sms will be deleted permanently. Do you want to do it? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 4395
    :goto_0
    const v1, 0x7f080011

    new-instance v2, Lcom/android/email/activity/MessageList$30;

    invoke-direct {v2, p0}, Lcom/android/email/activity/MessageList$30;-><init>(Lcom/android/email/activity/MessageList;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 4403
    const v1, 0x7f080012

    new-instance v2, Lcom/android/email/activity/MessageList$31;

    invoke-direct {v2, p0}, Lcom/android/email/activity/MessageList$31;-><init>(Lcom/android/email/activity/MessageList;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 4409
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 4410
    return-void

    .line 4390
    :cond_0
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method private onMultiMove(JJ)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x0

    const-string v4, "MessageList >>"

    .line 4707
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    if-nez v0, :cond_2

    .line 4709
    iget-wide v0, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 4710
    iget-wide v0, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    invoke-static {p0, v0, v1}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    .line 4711
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    if-nez v0, :cond_2

    .line 4712
    const-string v0, "MessageList >>"

    const-string v0, "onMultiMove : mMailbox is null."

    invoke-static {v4, v0}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 4753
    :cond_0
    :goto_0
    return-void

    .line 4718
    :cond_1
    const-string v0, "MessageList >>"

    const-string v0, "onMultiMove : mMailboxId is invalid."

    invoke-static {v4, v0}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4726
    :cond_2
    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->checkITPolicy_AllowPOPIMAP()Z

    move-result v0

    if-nez v0, :cond_3

    .line 4728
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "11111 MessageList.java >>>>> onMultiMove()  >>>>> 2658"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 4729
    const v0, 0x7f0801a5

    invoke-static {p0, v0, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 4733
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mListAdapter:Lcom/android/email/activity/MessageList$MessageListAdapter;

    invoke-static {v0}, Lcom/android/email/activity/MessageList$MessageListAdapter;->access$1100(Lcom/android/email/activity/MessageList$MessageListAdapter;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 4734
    invoke-direct {p0, v8}, Lcom/android/email/activity/MessageList;->showMultiPanel(Z)V

    goto :goto_0

    .line 4740
    :cond_3
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    cmp-long v0, v0, p3

    if-eqz v0, :cond_0

    .line 4742
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMoveMessageTask:Lcom/android/email/activity/MessageList$MoveMessageTask;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMoveMessageTask:Lcom/android/email/activity/MessageList$MoveMessageTask;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageList$MoveMessageTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_4

    .line 4744
    const v0, 0x7f080177

    invoke-static {p0, v0, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 4745
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mListAdapter:Lcom/android/email/activity/MessageList$MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageList$MessageListAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 4746
    invoke-direct {p0, v8}, Lcom/android/email/activity/MessageList;->showMultiPanel(Z)V

    goto :goto_0

    .line 4749
    :cond_4
    new-instance v0, Lcom/android/email/activity/MessageList$MoveMessageTask;

    iget-wide v6, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/email/activity/MessageList$MoveMessageTask;-><init>(Lcom/android/email/activity/MessageList;JJJ)V

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mMoveMessageTask:Lcom/android/email/activity/MessageList$MoveMessageTask;

    .line 4750
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMoveMessageTask:Lcom/android/email/activity/MessageList$MoveMessageTask;

    new-array v1, v8, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageList$MoveMessageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private onMultiMoveOtherAccount(JJ)V
    .locals 11
    .parameter
    .parameter

    .prologue
    const/4 v10, 0x0

    const-string v4, "MessageList >>"

    .line 4757
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    if-nez v0, :cond_2

    .line 4759
    iget-wide v0, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 4760
    iget-wide v0, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    invoke-static {p0, v0, v1}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    .line 4761
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    if-nez v0, :cond_2

    .line 4762
    const-string v0, "MessageList >>"

    const-string v0, "onMultiMoveOtherAccount : mMailbox is null."

    invoke-static {v4, v0}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 4801
    :cond_0
    :goto_0
    return-void

    .line 4768
    :cond_1
    const-string v0, "MessageList >>"

    const-string v0, "onMultiMoveOtherAccount : mMailboxId is invalid."

    invoke-static {v4, v0}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4775
    :cond_2
    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->checkITPolicy_AllowPOPIMAP()Z

    move-result v0

    if-nez v0, :cond_3

    .line 4777
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "11111 MessageList.java >>>>> onMultiMoveOtherAccount()  >>>>> 2692"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 4778
    const v0, 0x7f0801a5

    invoke-static {p0, v0, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 4781
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mListAdapter:Lcom/android/email/activity/MessageList$MessageListAdapter;

    invoke-static {v0}, Lcom/android/email/activity/MessageList$MessageListAdapter;->access$1100(Lcom/android/email/activity/MessageList$MessageListAdapter;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 4782
    invoke-direct {p0, v10}, Lcom/android/email/activity/MessageList;->showMultiPanel(Z)V

    goto :goto_0

    .line 4788
    :cond_3
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    cmp-long v0, v0, p3

    if-eqz v0, :cond_0

    .line 4790
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMoveMessageTask:Lcom/android/email/activity/MessageList$MoveMessageTask;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMoveMessageTask:Lcom/android/email/activity/MessageList$MoveMessageTask;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageList$MoveMessageTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_4

    .line 4792
    const v0, 0x7f080177

    invoke-static {p0, v0, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 4793
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mListAdapter:Lcom/android/email/activity/MessageList$MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageList$MessageListAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 4794
    invoke-direct {p0, v10}, Lcom/android/email/activity/MessageList;->showMultiPanel(Z)V

    goto :goto_0

    .line 4797
    :cond_4
    new-instance v0, Lcom/android/email/activity/MessageList$MoveMessageTask;

    iget-object v1, p0, Lcom/android/email/activity/MessageList;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-wide v2, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    iget-wide v4, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    move-object v1, p0

    move-wide v6, p1

    move-wide v8, p3

    invoke-direct/range {v0 .. v9}, Lcom/android/email/activity/MessageList$MoveMessageTask;-><init>(Lcom/android/email/activity/MessageList;JJJJ)V

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mMoveMessageTask:Lcom/android/email/activity/MessageList$MoveMessageTask;

    .line 4798
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMoveMessageTask:Lcom/android/email/activity/MessageList$MoveMessageTask;

    new-array v1, v10, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageList$MoveMessageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private onMultiMovePopup()V
    .locals 13

    .prologue
    .line 4445
    const-string v3, "accountKey=? AND type<64 AND flagVisible=1"

    .line 4450
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    if-nez v0, :cond_1

    .line 4451
    iget-wide v0, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    invoke-static {p0, v0, v1}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    .line 4452
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    if-nez v0, :cond_1

    .line 4453
    const-string v0, "MessageList >>"

    const-string v1, "onFolders : mMailbox is null."

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 4454
    invoke-virtual {p0}, Lcom/android/email/activity/MessageList;->finish()V

    .line 4616
    :cond_0
    :goto_0
    return-void

    .line 4464
    :cond_1
    const/4 v6, 0x0

    .line 4467
    :try_start_0
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mResolver:Landroid/content/ContentResolver;

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

    iget-object v7, p0, Lcom/android/email/activity/MessageList;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-wide v7, v7, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const-string v5, "type,displayName"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 4475
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4478
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_2

    .line 4480
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4528
    :catch_0
    move-exception v0

    .line 4529
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 4485
    :cond_2
    const/4 v0, -0x1

    :try_start_1
    invoke-interface {v7, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 4486
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v8, v0, [Lcom/android/email/activity/MessageList$MailBoxType;

    .line 4487
    add-int/lit8 v0, v6, 0x1

    new-instance v1, Lcom/android/email/activity/MessageList$MailBoxType;

    const v2, 0x7f08016b

    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageList;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/email/activity/MessageList$MailBoxType;-><init>(Lcom/android/email/activity/MessageList;Ljava/lang/String;)V

    aput-object v1, v8, v6

    move v9, v0

    .line 4488
    :goto_1
    :pswitch_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4489
    invoke-static {p0}, Lcom/android/email/Utility$FolderProperties;->getInstance(Landroid/content/Context;)Lcom/android/email/Utility$FolderProperties;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/email/Utility$FolderProperties;->getDisplayName(I)Ljava/lang/String;

    move-result-object v0

    .line 4490
    if-nez v0, :cond_10

    .line 4491
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    .line 4493
    :goto_2
    const/4 v0, 0x2

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 4504
    :pswitch_1
    iget-wide v0, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    const/4 v2, 0x0

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_f

    .line 4506
    add-int/lit8 v10, v9, 0x1

    new-instance v0, Lcom/android/email/activity/MessageList$MailBoxType;

    iget-object v1, p0, Lcom/android/email/activity/MessageList;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-wide v2, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/email/activity/MessageList$MailBoxType;-><init>(Lcom/android/email/activity/MessageList;JJLjava/lang/String;)V

    aput-object v0, v8, v9
    :try_end_1
    .catch Landroid/database/sqlite/DatabaseObjectNotClosedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v10

    :goto_3
    move v9, v0

    .line 4509
    goto :goto_1

    .line 4510
    :catch_1
    move-exception v0

    .line 4511
    :try_start_2
    const-string v1, "MessageList >>"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DatabaseObjectNotClosedException >>> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 4512
    invoke-virtual {v0}, Landroid/database/sqlite/DatabaseObjectNotClosedException;->printStackTrace()V

    .line 4513
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4514
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 4517
    :catch_2
    move-exception v0

    .line 4518
    const-string v1, "MessageList >>"

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

    .line 4519
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 4520
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4521
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 4525
    :cond_3
    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_4

    .line 4526
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 4533
    :cond_4
    const/4 v6, 0x0

    .line 4534
    const/4 v7, 0x0

    .line 4536
    :try_start_3
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mResolver:Landroid/content/ContentResolver;

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

    iget-object v10, p0, Lcom/android/email/activity/MessageList;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-wide v10, v10, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 4538
    if-eqz v10, :cond_e

    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_e

    .line 4539
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    move-result v0

    if-lez v0, :cond_d

    .line 4541
    const/4 v0, -0x1

    :try_start_4
    invoke-interface {v10, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 4542
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v7, v0, [Lcom/android/email/activity/MessageList$MailBoxType;
    :try_end_4
    .catch Landroid/database/sqlite/DatabaseObjectNotClosedException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    .line 4543
    add-int/lit8 v0, v6, 0x1

    :try_start_5
    new-instance v1, Lcom/android/email/activity/MessageList$MailBoxType;

    const v2, 0x7f08016c

    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageList;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/email/activity/MessageList$MailBoxType;-><init>(Lcom/android/email/activity/MessageList;Ljava/lang/String;)V

    aput-object v1, v7, v6
    :try_end_5
    .catch Landroid/database/sqlite/DatabaseObjectNotClosedException; {:try_start_5 .. :try_end_5} :catch_e
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    move v6, v0

    .line 4544
    :cond_5
    :goto_4
    :try_start_6
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4545
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mController:Lcom/android/email/Controller;

    const/4 v1, 0x0

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/email/Controller;->returnAccountType(J)I
    :try_end_6
    .catch Landroid/database/sqlite/DatabaseObjectNotClosedException; {:try_start_6 .. :try_end_6} :catch_f
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_c
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    .line 4547
    add-int/lit8 v11, v6, 0x1

    :try_start_7
    new-instance v0, Lcom/android/email/activity/MessageList$MailBoxType;

    const/4 v1, 0x0

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x2

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/email/activity/MessageList$MailBoxType;-><init>(Lcom/android/email/activity/MessageList;JLjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v6
    :try_end_7
    .catch Landroid/database/sqlite/DatabaseObjectNotClosedException; {:try_start_7 .. :try_end_7} :catch_10
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_d
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_8

    move v6, v11

    goto :goto_4

    :cond_6
    move-object v0, v7

    move v1, v6

    .line 4564
    :goto_5
    if-eqz v10, :cond_7

    :try_start_8
    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_7

    .line 4565
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_a

    .line 4572
    :cond_7
    :goto_6
    const/4 v2, 0x1

    if-ne v1, v2, :cond_8

    .line 4574
    const/4 v1, 0x0

    .line 4577
    :cond_8
    add-int v2, v9, v1

    new-array v2, v2, [Lcom/android/email/activity/MessageList$MailBoxType;

    .line 4579
    const/4 v3, 0x0

    :goto_7
    if-ge v3, v9, :cond_b

    .line 4580
    aget-object v4, v8, v3

    aput-object v4, v2, v3

    .line 4579
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 4550
    :catch_3
    move-exception v0

    move-object v1, v7

    move v2, v6

    .line 4551
    :goto_8
    :try_start_9
    const-string v3, "MessageList >>"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DatabaseObjectNotClosedException >>> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 4552
    invoke-virtual {v0}, Landroid/database/sqlite/DatabaseObjectNotClosedException;->printStackTrace()V

    .line 4553
    if-eqz v10, :cond_9

    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_9

    .line 4554
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_9
    move-object v0, v1

    move v1, v2

    .line 4562
    goto :goto_5

    .line 4556
    :catch_4
    move-exception v0

    move-object v1, v7

    move v2, v6

    .line 4557
    :goto_9
    const-string v3, "MessageList >>"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IllegalStateException >>> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 4558
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 4559
    if-eqz v10, :cond_a

    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_a

    .line 4560
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    :cond_a
    move-object v0, v1

    move v1, v2

    goto :goto_5

    .line 4568
    :catch_5
    move-exception v0

    move-object v1, v7

    move v2, v6

    .line 4569
    :goto_a
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    move v1, v2

    goto :goto_6

    .line 4582
    :cond_b
    const/4 v3, 0x0

    :goto_b
    if-ge v3, v1, :cond_c

    .line 4583
    add-int v4, v9, v3

    aget-object v5, v0, v3

    aput-object v5, v2, v4

    .line 4582
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 4586
    :cond_c
    new-instance v0, Lcom/android/email/activity/MessageList$MailBoxAdapter;

    invoke-direct {v0, p0, v2}, Lcom/android/email/activity/MessageList$MailBoxAdapter;-><init>(Landroid/content/Context;[Lcom/android/email/activity/MessageList$MailBoxType;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mMoveListAdapter:Lcom/android/email/activity/MessageList$MailBoxAdapter;

    .line 4588
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4591
    const v1, 0x7f08016a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 4592
    iget-object v1, p0, Lcom/android/email/activity/MessageList;->mMoveListAdapter:Lcom/android/email/activity/MessageList$MailBoxAdapter;

    new-instance v2, Lcom/android/email/activity/MessageList$32;

    invoke-direct {v2, p0}, Lcom/android/email/activity/MessageList$32;-><init>(Lcom/android/email/activity/MessageList;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 4615
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 4568
    :catch_6
    move-exception v1

    move v2, v0

    move-object v0, v1

    move-object v1, v7

    goto :goto_a

    :catch_7
    move-exception v0

    move-object v1, v7

    move v2, v6

    goto :goto_a

    :catch_8
    move-exception v0

    move-object v1, v7

    move v2, v11

    goto :goto_a

    :catch_9
    move-exception v0

    goto :goto_a

    :catch_a
    move-exception v2

    move-object v12, v2

    move v2, v1

    move-object v1, v0

    move-object v0, v12

    goto :goto_a

    .line 4556
    :catch_b
    move-exception v1

    move v2, v0

    move-object v0, v1

    move-object v1, v7

    goto :goto_9

    :catch_c
    move-exception v0

    move-object v1, v7

    move v2, v6

    goto :goto_9

    :catch_d
    move-exception v0

    move-object v1, v7

    move v2, v11

    goto :goto_9

    .line 4550
    :catch_e
    move-exception v1

    move v2, v0

    move-object v0, v1

    move-object v1, v7

    goto/16 :goto_8

    :catch_f
    move-exception v0

    move-object v1, v7

    move v2, v6

    goto/16 :goto_8

    :catch_10
    move-exception v0

    move-object v1, v7

    move v2, v11

    goto/16 :goto_8

    :cond_d
    move-object v0, v7

    move v1, v6

    goto/16 :goto_5

    :cond_e
    move-object v0, v7

    move v1, v6

    goto/16 :goto_6

    :cond_f
    move v0, v9

    goto/16 :goto_3

    :cond_10
    move-object v6, v0

    goto/16 :goto_2

    .line 4493
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

.method private onMultiMovePopupToOtherAccount(JLjava/lang/String;)V
    .locals 12
    .parameter
    .parameter

    .prologue
    const/4 v11, 0x0

    .line 4619
    const-string v3, "accountKey=? AND type<64 AND flagVisible=1"

    .line 4627
    :try_start_0
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mResolver:Landroid/content/ContentResolver;

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

    .line 4635
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4703
    :cond_0
    :goto_0
    return-void

    .line 4638
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_2

    .line 4640
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4672
    :catch_0
    move-exception v0

    .line 4673
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 4645
    :cond_2
    const/4 v0, -0x1

    :try_start_1
    invoke-interface {v7, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 4646
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v8, v0, [Lcom/android/email/activity/MessageList$MailBoxType;

    move v9, v11

    .line 4647
    :goto_1
    :pswitch_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4648
    invoke-static {p0}, Lcom/android/email/Utility$FolderProperties;->getInstance(Landroid/content/Context;)Lcom/android/email/Utility$FolderProperties;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/email/Utility$FolderProperties;->getDisplayName(I)Ljava/lang/String;

    move-result-object v0

    .line 4649
    if-nez v0, :cond_5

    .line 4650
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    .line 4652
    :goto_2
    const/4 v0, 0x2

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 4662
    add-int/lit8 v10, v9, 0x1

    new-instance v0, Lcom/android/email/activity/MessageList$MailBoxType;

    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object v1, p0

    move-wide v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/email/activity/MessageList$MailBoxType;-><init>(Lcom/android/email/activity/MessageList;JJLjava/lang/String;)V

    aput-object v0, v8, v9
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v9, v10

    .line 4664
    goto :goto_1

    .line 4665
    :catch_1
    move-exception v0

    .line 4666
    :try_start_2
    const-string v1, "MessageList >>"

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

    .line 4667
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 4670
    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 4677
    new-array v0, v9, [Lcom/android/email/activity/MessageList$MailBoxType;

    move v1, v11

    .line 4679
    :goto_3
    if-ge v1, v9, :cond_4

    .line 4680
    aget-object v2, v8, v1

    aput-object v2, v0, v1

    .line 4679
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 4682
    :cond_4
    new-instance v1, Lcom/android/email/activity/MessageList$MailBoxAdapter;

    invoke-direct {v1, p0, v0}, Lcom/android/email/activity/MessageList$MailBoxAdapter;-><init>(Landroid/content/Context;[Lcom/android/email/activity/MessageList$MailBoxType;)V

    iput-object v1, p0, Lcom/android/email/activity/MessageList;->mMoveListToOtherAccountAdapter:Lcom/android/email/activity/MessageList$MailBoxAdapter;

    .line 4684
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4686
    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 4687
    iget-object v1, p0, Lcom/android/email/activity/MessageList;->mMoveListToOtherAccountAdapter:Lcom/android/email/activity/MessageList$MailBoxAdapter;

    new-instance v2, Lcom/android/email/activity/MessageList$33;

    invoke-direct {v2, p0}, Lcom/android/email/activity/MessageList$33;-><init>(Lcom/android/email/activity/MessageList;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 4702
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    :cond_5
    move-object v6, v0

    goto :goto_2

    .line 4652
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private onMultiToggleFavorite(Ljava/util/Set;ZI)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;ZI)V"
        }
    .end annotation

    .prologue
    .line 4281
    if-eqz p2, :cond_0

    .line 4283
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>>>>>>>>>>  FollowUp >>>>>>>>>>>>>>>>>>>>>>>>> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">>>>>>>>><<<<<<<<<<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 4284
    new-instance v0, Lcom/android/email/activity/MessageList$28;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MessageList$28;-><init>(Lcom/android/email/activity/MessageList;)V

    invoke-direct {p0, p1, v0}, Lcom/android/email/activity/MessageList;->toggleMultiple(Ljava/util/Set;Lcom/android/email/activity/MessageList$MultiToggleHelper;)I

    .line 4372
    :goto_0
    return-void

    .line 4314
    :cond_0
    new-instance v0, Lcom/android/email/activity/MessageList$29;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MessageList$29;-><init>(Lcom/android/email/activity/MessageList;)V

    invoke-direct {p0, p1, v0, p3}, Lcom/android/email/activity/MessageList;->toggleFlag(Ljava/util/Set;Lcom/android/email/activity/MessageList$MultiToggleHelper;I)I

    goto :goto_0
.end method

.method private onMultiToggleRead(Ljava/util/Set;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4247
    .local p1, selectedSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    new-instance v0, Lcom/android/email/activity/MessageList$27;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MessageList$27;-><init>(Lcom/android/email/activity/MessageList;)V

    invoke-direct {p0, p1, v0}, Lcom/android/email/activity/MessageList;->toggleMultiple(Ljava/util/Set;Lcom/android/email/activity/MessageList$MultiToggleHelper;)I

    .line 4272
    return-void
.end method

.method private onOpenMessage(JJ)V
    .locals 5
    .parameter "messageId"
    .parameter "mailboxId"

    .prologue
    .line 3774
    invoke-static {p0, p3, p4}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v1

    .line 3776
    .local v1, mailbox:Lcom/android/email/provider/EmailContent$Mailbox;
    iget v3, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 3777
    invoke-static {p0, p1, p2}, Lcom/android/email/activity/MessageCompose;->actionEditDraft(Landroid/content/Context;J)V

    .line 3789
    :goto_0
    return-void

    .line 3782
    :cond_0
    iget-wide v3, p0, Lcom/android/email/activity/MessageList;->mAccountId:J

    invoke-static {p0, v3, v4}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v0

    .line 3784
    .local v0, account:Lcom/android/email/provider/EmailContent$Account;
    :try_start_0
    iget-wide v3, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    invoke-static {p0, p1, p2, v3, v4}, Lcom/android/email/activity/MessageView;->actionView(Landroid/content/Context;JJ)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3785
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 3786
    .local v2, ne:Ljava/lang/NullPointerException;
    iget-wide v3, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    invoke-static {p0, p1, p2, v3, v4}, Lcom/android/email/activity/MessageView;->actionView(Landroid/content/Context;JJ)V

    goto :goto_0
.end method

.method private onRefresh()V
    .locals 6

    .prologue
    .line 2874
    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->checkITPolicy_AllowPOPIMAP()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2876
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "11111 MessageList.java >>>>> onRefresh()  >>>>> 1839"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2877
    const v0, 0x7f0801a5

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2901
    :cond_0
    :goto_0
    return-void

    .line 2881
    :cond_1
    invoke-static {p0}, Lcom/android/email/activity/MessageView$CheckNetworkInfo;->isWirelessAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2882
    const v0, 0x7f0800db

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageList;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2883
    iget-object v1, p0, Lcom/android/email/activity/MessageList;->mHandler:Lcom/android/email/activity/MessageList$MessageListHandler;

    invoke-virtual {v1, v0}, Lcom/android/email/activity/MessageList$MessageListHandler;->showErrorBanner(Ljava/lang/String;)V

    goto :goto_0

    .line 2889
    :cond_2
    iget-wide v0, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 2891
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    if-nez v0, :cond_3

    .line 2892
    iget-wide v0, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    invoke-static {p0, v0, v1}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    .line 2893
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    if-nez v0, :cond_3

    .line 2894
    const-string v0, "MessageList >>"

    const-string v1, "onRefresh : mMailbox is null."

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2898
    :cond_3
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mController:Lcom/android/email/Controller;

    iget-object v1, p0, Lcom/android/email/activity/MessageList;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-wide v1, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    iget-wide v3, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    iget-object v5, p0, Lcom/android/email/activity/MessageList;->mControllerCallback:Lcom/android/email/activity/MessageList$ControllerResults;

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/Controller;->updateMailbox(JJLcom/android/email/Controller$Result;)V

    goto :goto_0
.end method

.method private onRefreshIndexScroll(Landroid/database/Cursor;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x3

    .line 3123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3127
    const/4 v1, -0x1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 3128
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3129
    sget v1, Lcom/android/email/activity/MessageList;->mSortType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v1, v3

    :goto_1
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3134
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3129
    :cond_0
    sget v1, Lcom/android/email/activity/MessageList;->mSortType:I

    if-ne v1, v3, :cond_1

    const/16 v1, 0x9

    goto :goto_1

    :cond_1
    const/4 v1, 0x4

    goto :goto_1

    .line 3160
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_3

    .line 3182
    :goto_2
    return-void

    .line 3166
    :cond_3
    new-instance v1, Lcom/sec/android/touchwiz/widget/TwArrayIndexer;

    const-string v2, "ABCDEFGHIJKLMNOPQRSTUVWXYZ"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/sec/android/touchwiz/widget/TwArrayIndexer;-><init>(Ljava/util/List;Ljava/lang/CharSequence;)V

    .line 3180
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mIndexView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->setIndexer(Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;)V

    .line 3181
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mIndexView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->refreshDrawableState()V

    goto :goto_2
.end method

.method private onRemoveIndexScroll()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2001
    const v0, 0x7f0700f4

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 2002
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2003
    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 2004
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2007
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mIndexView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    if-nez v0, :cond_0

    .line 2013
    :goto_0
    return-void

    .line 2011
    :cond_0
    const v0, 0x7f0700f3

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/email/activity/MessageList;->mIndexView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 2012
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mIndexView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    goto :goto_0
.end method

.method private onReply(J)V
    .locals 1
    .parameter "messageId"

    .prologue
    .line 3792
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/email/activity/MessageCompose;->actionReply(Landroid/content/Context;JZ)V

    .line 3793
    return-void
.end method

.method private onReplyAll(J)V
    .locals 1
    .parameter "messageId"

    .prologue
    .line 3796
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/android/email/activity/MessageCompose;->actionReply(Landroid/content/Context;JZ)V

    .line 3797
    return-void
.end method

.method private onRestoreAll(Ljava/util/Set;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 4025
    const-string v0, "MessageList >>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRestoreAll : Account ID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/email/activity/MessageList;->mAccountId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 4026
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMoveMessageTask:Lcom/android/email/activity/MessageList$MoveMessageTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMoveMessageTask:Lcom/android/email/activity/MessageList$MoveMessageTask;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageList$MoveMessageTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 4028
    const v0, 0x7f080177

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 4034
    :goto_0
    return-void

    .line 4031
    :cond_0
    new-instance v0, Lcom/android/email/activity/MessageList$MoveMessageTask;

    iget-wide v1, p0, Lcom/android/email/activity/MessageList;->mAccountId:J

    invoke-direct {v0, p0, v1, v2, v4}, Lcom/android/email/activity/MessageList$MoveMessageTask;-><init>(Lcom/android/email/activity/MessageList;JI)V

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mMoveMessageTask:Lcom/android/email/activity/MessageList$MoveMessageTask;

    .line 4032
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMoveMessageTask:Lcom/android/email/activity/MessageList$MoveMessageTask;

    new-array v1, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageList$MoveMessageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private onSearchConversation(Ljava/lang/String;)V
    .locals 8
    .parameter "conversationId"

    .prologue
    const/4 v6, 0x1

    .line 2865
    iget-wide v3, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    invoke-direct {p0, v3, v4}, Lcom/android/email/activity/MessageList;->lookupAccountIdFromMailboxId(J)J

    move-result-wide v1

    .line 2866
    .local v1, accountId:J
    iget-wide v3, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    move-object v0, p0

    move-object v5, p1

    move v7, v6

    invoke-static/range {v0 .. v7}, Lcom/android/email/activity/EmailSearchQuery;->startActivity(Landroid/app/Activity;JJLjava/lang/String;IZ)V

    .line 2867
    return-void
.end method

.method private onSearchFinish()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 1075
    sput v3, Lcom/android/email/activity/MessageList;->sSelectedSearchType:I

    .line 1076
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mSearchType:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/email/activity/MessageList;->mSearchListString:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1077
    sget-object v0, Lcom/android/email/activity/MessageList;->mSearchBar:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1078
    sget-object v0, Lcom/android/email/activity/MessageList;->mSearchBar:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 1079
    sget-object v0, Lcom/android/email/activity/MessageList;->mSearchBar:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 1080
    sget-object v0, Lcom/android/email/activity/MessageList;->mSearchBar:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 1083
    iget-wide v0, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    const/16 v2, 0x8

    invoke-static {p0, v0, v1, v2}, Lcom/android/email/Utility;->isMailboxType(Landroid/content/Context;JI)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1089
    invoke-virtual {p0}, Lcom/android/email/activity/MessageList;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.email.activity.DISPLAY_PROGRESS"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1090
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mHandler:Lcom/android/email/activity/MessageList$MessageListHandler;

    invoke-virtual {v0, v6}, Lcom/android/email/activity/MessageList$MessageListHandler;->progress(Z)V

    .line 1093
    :cond_0
    iput-boolean v3, p0, Lcom/android/email/activity/MessageList;->mCanAutoRefresh:Z

    .line 1098
    :cond_1
    iput v3, p0, Lcom/android/email/activity/MessageList;->mSearchId:I

    .line 1099
    iget v0, p0, Lcom/android/email/activity/MessageList;->mLastSortType:I

    sput v0, Lcom/android/email/activity/MessageList;->mSortType:I

    .line 1102
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mController:Lcom/android/email/Controller;

    iget-wide v1, p0, Lcom/android/email/activity/MessageList;->mAccountId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/email/Controller;->returnAccountType(J)I

    move-result v0

    iget-object v1, p0, Lcom/android/email/activity/MessageList;->mController:Lcom/android/email/Controller;

    if-eq v0, v6, :cond_2

    iget v0, p0, Lcom/android/email/activity/MessageList;->mIsEAS:I

    if-ne v0, v6, :cond_3

    .line 1104
    :cond_2
    iget-wide v1, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    iget-wide v3, p0, Lcom/android/email/activity/MessageList;->mAccountId:J

    const/4 v5, -0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/email/activity/MessageList;->addFooterView(JJIZ)V

    .line 1106
    :cond_3
    return-void
.end method

.method private onSearchOnServer()V
    .locals 7

    .prologue
    const/4 v5, 0x1

    const-string v4, " FROM "

    .line 1110
    iget-wide v0, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 1111
    sget-object v0, Lcom/android/email/activity/MessageList;->mSearchBar:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 1112
    const v0, 0x7f080271

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/MessageList;->showToast(II)V

    .line 1138
    :cond_0
    :goto_0
    return-void

    .line 1116
    :cond_1
    iget v0, p0, Lcom/android/email/activity/MessageList;->mIsEAS:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 1117
    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->IsEAS()I

    .line 1119
    :cond_2
    iget v0, p0, Lcom/android/email/activity/MessageList;->mIsEAS:I

    if-ne v0, v5, :cond_3

    .line 1121
    sget-object v0, Lcom/android/email/activity/MessageList;->mSearchBar:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1122
    iget-wide v0, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/MessageList;->lookupAccountIdFromMailboxId(J)J

    move-result-wide v1

    .line 1123
    iget-wide v3, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/android/email/activity/CustomizeDate;->startActivity(Landroid/app/Activity;JJILjava/lang/String;)V

    goto :goto_0

    .line 1126
    :cond_3
    sget v0, Lcom/android/email/activity/MessageList;->sSelectedSearchType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 1127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " SUBJECT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/email/activity/MessageList;->mSearchBar:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1135
    :goto_1
    iget-object v1, p0, Lcom/android/email/activity/MessageList;->mController:Lcom/android/email/Controller;

    iget-wide v2, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    iget-object v4, p0, Lcom/android/email/activity/MessageList;->mControllerCallback:Lcom/android/email/activity/MessageList$ControllerResults;

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/android/email/Controller;->searchOnServer(JLcom/android/email/Controller$Result;Ljava/lang/String;)V

    goto :goto_0

    .line 1129
    :cond_4
    sget v0, Lcom/android/email/activity/MessageList;->sSelectedSearchType:I

    if-ne v0, v5, :cond_5

    .line 1130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " FROM "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/email/activity/MessageList;->mSearchBar:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1133
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " OR SUBJECT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/email/activity/MessageList;->mSearchBar:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " FROM "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/email/activity/MessageList;->mSearchBar:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private onSendPendingMessages()V
    .locals 10

    .prologue
    .line 3864
    iget-wide v0, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    const-wide/16 v2, -0x6

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 3866
    const/4 v8, 0x0

    .line 3868
    .local v8, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/email/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/email/provider/EmailContent$Account;->ID_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 3869
    if-eqz v8, :cond_3

    .line 3871
    const/4 v0, -0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 3872
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3873
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mController:Lcom/android/email/Controller;

    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v1, v1

    iget-object v3, p0, Lcom/android/email/activity/MessageList;->mControllerCallback:Lcom/android/email/activity/MessageList$ControllerResults;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/Controller;->sendPendingMessages(JLcom/android/email/Controller$Result;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3876
    :catch_0
    move-exception v0

    move-object v9, v0

    .line 3877
    .local v9, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3879
    if-eqz v8, :cond_0

    .line 3880
    .end local v9           #e:Ljava/lang/Exception;
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 3889
    .end local v8           #c:Landroid/database/Cursor;
    :cond_0
    :goto_2
    return-void

    .line 3879
    .restart local v8       #c:Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_1

    .line 3880
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 3879
    :cond_1
    throw v0

    .line 3886
    .end local v8           #c:Landroid/database/Cursor;
    :cond_2
    iget-wide v0, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/MessageList;->lookupAccountIdFromMailboxId(J)J

    move-result-wide v6

    .line 3887
    .local v6, accountId:J
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mController:Lcom/android/email/Controller;

    iget-object v1, p0, Lcom/android/email/activity/MessageList;->mControllerCallback:Lcom/android/email/activity/MessageList$ControllerResults;

    invoke-virtual {v0, v6, v7, v1}, Lcom/android/email/Controller;->sendPendingMessages(JLcom/android/email/Controller$Result;)V

    goto :goto_2

    .line 3879
    .end local v6           #accountId:J
    .restart local v8       #c:Landroid/database/Cursor;
    :cond_3
    if-eqz v8, :cond_0

    goto :goto_1
.end method

.method private onSetConversationMoveAlways(JLjava/lang/String;)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v8, 0x0

    const-string v9, "displayName"

    .line 2802
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v8

    const-string v0, "displayName"

    aput-object v9, v2, v5

    const/4 v0, 0x2

    const-string v1, "type"

    aput-object v1, v2, v0

    .line 2805
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "accountKey=? AND type<64 AND type<>3 AND type<>4 AND type<>5 AND type<>8 AND type<>6 AND type<>82 AND type<>83 AND type<>81 AND type<>85 AND type<>84 AND type<>97 AND flagVisible=1  AND _id<>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v3, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2823
    iget-wide v0, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    invoke-static {p0, v0, v1}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v7

    .line 2825
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/email/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    new-array v4, v5, [Ljava/lang/String;

    iget-wide v5, v7, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2828
    iput v8, p0, Lcom/android/email/activity/MessageList;->mIgnore:I

    .line 2829
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f080017

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    new-instance v0, Lcom/android/email/activity/MessageList$14;

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/email/activity/MessageList$14;-><init>(Lcom/android/email/activity/MessageList;JLjava/lang/String;Lcom/android/email/provider/EmailContent$Mailbox;Landroid/database/Cursor;)V

    const-string v1, "displayName"

    invoke-virtual {v8, v6, v0, v9}, Landroid/app/AlertDialog$Builder;->setCursor(Landroid/database/Cursor;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 2839
    return-void
.end method

.method private onSetConversationRead(Ljava/lang/String;JZ)V
    .locals 1
    .parameter "convId"
    .parameter "mailboxId"
    .parameter "newRead"

    .prologue
    .line 4063
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mController:Lcom/android/email/Controller;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/email/Controller;->setConversationRead(Ljava/lang/String;JZ)V

    .line 4064
    return-void
.end method

.method private onSetConversationUnread(Ljava/lang/String;JZ)V
    .locals 1
    .parameter "convId"
    .parameter "mailboxId"
    .parameter "newRead"

    .prologue
    .line 4066
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mController:Lcom/android/email/Controller;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/email/Controller;->setConversationRead(Ljava/lang/String;JZ)V

    .line 4067
    return-void
.end method

.method private onSetFollowupFlag(JI)V
    .locals 12
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v11, ">>>>>>>>>>> ff1 newFavorite >>>>>>>>>>>>>>>>>>>>>>> "

    const-string v10, "<<<<<<<<<<"

    .line 4174
    invoke-virtual {p0}, Lcom/android/email/activity/MessageList;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    .line 4175
    invoke-static {v6, p1, p2}, Lcom/android/email/provider/EmailContent$FollowupFlag;->restoreFollowupFlagWithEmailId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$FollowupFlag;

    move-result-object v7

    .line 4178
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/email/provider/EmailContent$Message;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v3, "_id=?"

    new-array v4, v9, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 4182
    if-eqz v0, :cond_7

    .line 4184
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 4186
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>>>>>>>>>> ff1.moveToFirst() >>>>>>>>>>>>>>>>>>>>>>> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<<<<<<<<<<"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 4188
    const/4 v1, 0x6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v9, :cond_2

    move v1, v9

    .line 4192
    :goto_0
    iget v2, p0, Lcom/android/email/activity/MessageList;->mIsEAS:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 4193
    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->IsEAS()I

    .line 4195
    :cond_0
    if-nez v7, :cond_5

    iget v2, p0, Lcom/android/email/activity/MessageList;->mIsEAS:I

    if-ne v2, v9, :cond_5

    .line 4197
    new-instance v2, Lcom/android/email/provider/EmailContent$FollowupFlag;

    invoke-direct {v2}, Lcom/android/email/provider/EmailContent$FollowupFlag;-><init>()V

    .line 4198
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v3, v3

    iput-wide v3, v2, Lcom/android/email/provider/EmailContent$FollowupFlag;->MsgId:J

    .line 4199
    const/16 v3, 0x9

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/email/provider/EmailContent$FollowupFlag;->MsgSyncServerId:Ljava/lang/String;

    .line 4202
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move v0, v1

    move-object v1, v2

    .line 4208
    :goto_2
    if-eqz v1, :cond_1

    .line 4209
    packed-switch p3, :pswitch_data_0

    .line 4229
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>>>>>>>>>> ff1 newFavorite >>>>>>>>>>>>>>>>>>>>>>> "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<<<<<<<<<<"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 4231
    :goto_3
    iget-object v1, p0, Lcom/android/email/activity/MessageList;->mController:Lcom/android/email/Controller;

    if-nez v0, :cond_3

    move v2, v9

    :goto_4
    invoke-virtual {v1, p1, p2, v2}, Lcom/android/email/Controller;->setMessageFavorite(JZ)V

    .line 4234
    iget-object v1, p0, Lcom/android/email/activity/MessageList;->mController:Lcom/android/email/Controller;

    if-nez v0, :cond_4

    move v0, v9

    :goto_5
    invoke-virtual {v1, p1, p2, v0, p3}, Lcom/android/email/Controller;->setMessageFavorite(JZI)V

    .line 4238
    :cond_1
    return-void

    :cond_2
    move v1, v8

    .line 4188
    goto :goto_0

    .line 4212
    :pswitch_0
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">>>>>>>>>>> ff1 newFavorite >>>>>>>>>>>>>>>>>>>>>>> "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "<<<<<<<<<<"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 4214
    sget-object v2, Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagDefaultState;->CLEAR:Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagDefaultState;

    invoke-virtual {v1, v2, v6}, Lcom/android/email/provider/EmailContent$FollowupFlag;->setDefaults(Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagDefaultState;Landroid/content/Context;)Ljava/lang/Boolean;

    goto :goto_3

    .line 4217
    :pswitch_1
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">>>>>>>>>>> ff1 newFavorite >>>>>>>>>>>>>>>>>>>>>>> "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "<<<<<<<<<<"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 4219
    sget-object v2, Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagDefaultState;->MARK_COMPLETE:Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagDefaultState;

    invoke-virtual {v1, v2, v6}, Lcom/android/email/provider/EmailContent$FollowupFlag;->setDefaults(Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagDefaultState;Landroid/content/Context;)Ljava/lang/Boolean;

    goto :goto_3

    .line 4223
    :pswitch_2
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">>>>>>>>>>> ff1 newFavorite >>>>>>>>>>>>>>>>>>>>>>> "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "<<<<<<<<<<"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 4225
    sget-object v2, Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagDefaultState;->NEXT_WEEK:Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagDefaultState;

    invoke-virtual {v1, v2, v6}, Lcom/android/email/provider/EmailContent$FollowupFlag;->setDefaults(Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagDefaultState;Landroid/content/Context;)Ljava/lang/Boolean;

    goto :goto_3

    :cond_3
    move v2, v8

    .line 4231
    goto :goto_4

    :cond_4
    move v0, v8

    .line 4234
    goto :goto_5

    :cond_5
    move-object v2, v7

    goto/16 :goto_1

    :cond_6
    move v1, v8

    move-object v2, v7

    goto/16 :goto_1

    :cond_7
    move v0, v8

    move-object v1, v7

    goto/16 :goto_2

    .line 4209
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private onSetMessageFavorite(JZ)V
    .locals 2
    .parameter "messageId"
    .parameter "newFavorite"

    .prologue
    .line 4074
    invoke-virtual {p0}, Lcom/android/email/activity/MessageList;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 4094
    .local v0, context:Landroid/content/Context;
    iget-object v1, p0, Lcom/android/email/activity/MessageList;->mController:Lcom/android/email/Controller;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/email/Controller;->setMessageFavorite(JZ)V

    .line 4095
    return-void
.end method

.method private onSetMessageRead(JZ)V
    .locals 1
    .parameter "messageId"
    .parameter "newRead"

    .prologue
    .line 4037
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mController:Lcom/android/email/Controller;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/email/Controller;->setMessageRead(JZ)V

    .line 4038
    return-void
.end method

.method private onSort()V
    .locals 10

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x3

    .line 2967
    iget-wide v0, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    if-nez v0, :cond_0

    .line 2968
    iget-wide v0, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    invoke-static {p0, v0, v1}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    .line 2969
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    if-nez v0, :cond_0

    .line 2970
    const-string v0, "MessageList >>"

    const-string v1, "onSort : mMailbox is null."

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 3059
    :goto_0
    return-void

    .line 2976
    :cond_0
    sget v0, Lcom/android/email/activity/MessageList;->mSortType:I

    .line 2980
    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->IsEAS()I

    move-result v1

    if-ne v1, v5, :cond_8

    .line 2982
    iget-object v1, p0, Lcom/android/email/activity/MessageList;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget v1, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    if-nez v1, :cond_2

    .line 2983
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const v2, 0x7f080117

    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageList;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    const v2, 0x7f080115

    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageList;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const v2, 0x7f080022

    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageList;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    const v2, 0x7f0801bd

    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageList;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const v2, 0x7f0801c6

    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageList;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    .line 2984
    sget v2, Lcom/android/email/activity/MessageList;->mSortType:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_1

    move-object v0, v1

    move v1, v4

    .line 3024
    :goto_1
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3025
    const v3, 0x7f080118

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 3026
    new-instance v3, Lcom/android/email/activity/MessageList$16;

    invoke-direct {v3, p0}, Lcom/android/email/activity/MessageList$16;-><init>(Lcom/android/email/activity/MessageList;)V

    invoke-virtual {v2, v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3057
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 2986
    :cond_1
    sget v2, Lcom/android/email/activity/MessageList;->mSortType:I

    const/16 v3, 0x9

    if-ne v2, v3, :cond_c

    move-object v0, v1

    move v1, v8

    .line 2987
    goto :goto_1

    .line 2989
    :cond_2
    iget-object v1, p0, Lcom/android/email/activity/MessageList;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget v1, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    if-eq v1, v4, :cond_3

    iget-object v1, p0, Lcom/android/email/activity/MessageList;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget v1, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    if-eq v1, v8, :cond_3

    iget-object v1, p0, Lcom/android/email/activity/MessageList;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget v1, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_6

    .line 2991
    :cond_3
    new-array v1, v8, [Ljava/lang/String;

    const v2, 0x7f080117

    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageList;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    const v2, 0x7f080116

    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageList;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const v2, 0x7f0801bd

    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageList;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    const v2, 0x7f0801c6

    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageList;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 2993
    sget v2, Lcom/android/email/activity/MessageList;->mSortType:I

    if-ne v2, v4, :cond_4

    move-object v0, v1

    move v1, v5

    .line 2994
    goto :goto_1

    .line 2995
    :cond_4
    sget v2, Lcom/android/email/activity/MessageList;->mSortType:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_5

    move-object v0, v1

    move v1, v6

    .line 2996
    goto :goto_1

    .line 2997
    :cond_5
    sget v2, Lcom/android/email/activity/MessageList;->mSortType:I

    const/16 v3, 0x9

    if-ne v2, v3, :cond_c

    move-object v0, v1

    move v1, v4

    .line 2998
    goto :goto_1

    .line 3000
    :cond_6
    new-array v1, v8, [Ljava/lang/String;

    const v2, 0x7f080117

    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageList;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    const v2, 0x7f080115

    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageList;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const v2, 0x7f0801bd

    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageList;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    const v2, 0x7f0801c6

    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageList;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 3002
    sget v2, Lcom/android/email/activity/MessageList;->mSortType:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_7

    move-object v0, v1

    move v1, v6

    .line 3003
    goto/16 :goto_1

    .line 3004
    :cond_7
    sget v2, Lcom/android/email/activity/MessageList;->mSortType:I

    const/16 v3, 0x9

    if-ne v2, v3, :cond_c

    move-object v0, v1

    move v1, v4

    .line 3005
    goto/16 :goto_1

    .line 3010
    :cond_8
    iget-object v1, p0, Lcom/android/email/activity/MessageList;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget v1, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    if-nez v1, :cond_9

    .line 3011
    new-array v1, v4, [Ljava/lang/String;

    const v2, 0x7f080117

    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageList;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    const v2, 0x7f080115

    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageList;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const v2, 0x7f080022

    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageList;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    move-object v9, v1

    move v1, v0

    move-object v0, v9

    goto/16 :goto_1

    .line 3012
    :cond_9
    iget-object v1, p0, Lcom/android/email/activity/MessageList;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget v1, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    if-eq v1, v4, :cond_a

    iget-object v1, p0, Lcom/android/email/activity/MessageList;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget v1, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    if-eq v1, v8, :cond_a

    iget-object v1, p0, Lcom/android/email/activity/MessageList;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget v1, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_b

    .line 3014
    :cond_a
    new-array v1, v6, [Ljava/lang/String;

    const v2, 0x7f080117

    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageList;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    const v2, 0x7f080116

    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageList;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    .line 3016
    sget v2, Lcom/android/email/activity/MessageList;->mSortType:I

    if-ne v2, v4, :cond_c

    move-object v0, v1

    move v1, v5

    .line 3017
    goto/16 :goto_1

    .line 3019
    :cond_b
    new-array v1, v6, [Ljava/lang/String;

    const v2, 0x7f080117

    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageList;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    const v2, 0x7f080115

    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageList;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    move-object v9, v1

    move v1, v0

    move-object v0, v9

    goto/16 :goto_1

    :cond_c
    move-object v9, v1

    move v1, v0

    move-object v0, v9

    goto/16 :goto_1
.end method

.method private onSortBy(I)V
    .locals 8
    .parameter

    .prologue
    const/4 v4, 0x3

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 3062
    iget-wide v0, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 3063
    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->IsEAS()I

    move-result v0

    if-ne v0, v6, :cond_0

    .line 3065
    packed-switch p1, :pswitch_data_0

    .line 3076
    :cond_0
    :goto_0
    packed-switch p1, :pswitch_data_1

    .line 3106
    :goto_1
    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->loadMessagesTask_Cancel()V

    .line 3109
    new-instance v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;

    iget-wide v2, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    iget-wide v4, p0, Lcom/android/email/activity/MessageList;->mAccountId:J

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/email/activity/MessageList$LoadMessagesTask;-><init>(Lcom/android/email/activity/MessageList;JJZ)V

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mLoadMessagesTask:Lcom/android/email/activity/MessageList$LoadMessagesTask;

    .line 3110
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mLoadMessagesTask:Lcom/android/email/activity/MessageList$LoadMessagesTask;

    new-array v1, v7, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageList$LoadMessagesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 3113
    iget v0, p0, Lcom/android/email/activity/MessageList;->mSearchId:I

    if-ne v0, v6, :cond_1

    .line 3115
    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->onSearchFinish()V

    .line 3116
    invoke-direct {p0, v6}, Lcom/android/email/activity/MessageList;->animation_title2(I)V

    .line 3120
    :cond_1
    :goto_2
    return-void

    .line 3067
    :pswitch_0
    const-string v0, "importance COLLATE NOCASE DESC"

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mSortQuery:Ljava/lang/String;

    .line 3068
    const/16 v0, 0x8

    sput v0, Lcom/android/email/activity/MessageList;->mSortType:I

    goto :goto_0

    .line 3071
    :pswitch_1
    const-string v0, "flagStatus COLLATE NOCASE DESC"

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mSortQuery:Ljava/lang/String;

    .line 3072
    const/16 v0, 0x9

    sput v0, Lcom/android/email/activity/MessageList;->mSortType:I

    goto :goto_0

    .line 3078
    :pswitch_2
    const-string v0, "timeStamp COLLATE NOCASE DESC"

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mSortQuery:Ljava/lang/String;

    .line 3079
    sput v7, Lcom/android/email/activity/MessageList;->mSortType:I

    goto :goto_1

    .line 3083
    :pswitch_3
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    if-nez v0, :cond_2

    .line 3084
    iget-wide v0, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    invoke-static {p0, v0, v1}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    .line 3085
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    if-nez v0, :cond_2

    .line 3086
    const-string v0, "MessageList >>"

    const-string v1, "onSortBy : mMailbox is null."

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 3091
    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    if-eq v0, v4, :cond_3

    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    .line 3093
    :cond_3
    const-string v0, "toList COLLATE NOCASE"

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mSortQuery:Ljava/lang/String;

    .line 3094
    sput v4, Lcom/android/email/activity/MessageList;->mSortType:I

    goto :goto_1

    .line 3096
    :cond_4
    const-string v0, "displayName COLLATE NOCASE"

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mSortQuery:Ljava/lang/String;

    .line 3097
    sput v6, Lcom/android/email/activity/MessageList;->mSortType:I

    goto :goto_1

    .line 3101
    :pswitch_4
    const-string v0, "flagRead COLLATE NOCASE"

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mSortQuery:Ljava/lang/String;

    .line 3102
    const/4 v0, 0x2

    sput v0, Lcom/android/email/activity/MessageList;->mSortType:I

    goto :goto_1

    .line 3065
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 3076
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private onTextSize()V
    .locals 4

    .prologue
    .line 2178
    .line 2179
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const v2, 0x7f080133

    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageList;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const v2, 0x7f080134

    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageList;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const v2, 0x7f080135

    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageList;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 2181
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2183
    const v2, 0x7f080132

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2184
    sget v2, Lcom/android/email/activity/MessageList;->mTextSize:I

    new-instance v3, Lcom/android/email/activity/MessageList$8;

    invoke-direct {v3, p0}, Lcom/android/email/activity/MessageList$8;-><init>(Lcom/android/email/activity/MessageList;)V

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2191
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 2192
    return-void
.end method

.method private onTextSizeChange(I)V
    .locals 2
    .parameter "id"

    .prologue
    .line 2195
    sput p1, Lcom/android/email/activity/MessageList;->mTextSize:I

    .line 2196
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mListAdapter:Lcom/android/email/activity/MessageList$MessageListAdapter;

    sget v1, Lcom/android/email/activity/MessageList;->mTextSize:I

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageList$MessageListAdapter;->updateTextSize(I)V

    .line 2197
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mListAdapter:Lcom/android/email/activity/MessageList$MessageListAdapter;

    sget v1, Lcom/android/email/activity/MessageList;->mTextSize:I

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageList$MessageListAdapter;->setTextSizeValue(I)V

    .line 2198
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageList;->updateMessageLists(Z)V

    .line 2199
    return-void
.end method

.method private onViewMode()V
    .locals 4

    .prologue
    .line 2926
    .line 2927
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const v2, 0x7f080173

    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageList;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const v2, 0x7f080174

    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageList;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 2929
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2930
    const v2, 0x7f080172

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2931
    iget v2, p0, Lcom/android/email/activity/MessageList;->mViewModeType:I

    new-instance v3, Lcom/android/email/activity/MessageList$15;

    invoke-direct {v3, p0}, Lcom/android/email/activity/MessageList$15;-><init>(Lcom/android/email/activity/MessageList;)V

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2938
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 2940
    return-void
.end method

.method private onViewModeBy(I)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 2943
    iget-wide v0, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 2944
    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->loadMessagesTask_Cancel()V

    .line 2946
    packed-switch p1, :pswitch_data_0

    .line 2955
    :goto_0
    new-instance v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;

    iget-wide v2, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    iget-wide v4, p0, Lcom/android/email/activity/MessageList;->mAccountId:J

    const/4 v6, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/email/activity/MessageList$LoadMessagesTask;-><init>(Lcom/android/email/activity/MessageList;JJZ)V

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mLoadMessagesTask:Lcom/android/email/activity/MessageList$LoadMessagesTask;

    .line 2956
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mLoadMessagesTask:Lcom/android/email/activity/MessageList$LoadMessagesTask;

    new-array v1, v7, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageList$LoadMessagesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2958
    const-string v0, "AndroidMail.MessageList"

    invoke-virtual {p0, v0, v7}, Lcom/android/email/activity/MessageList;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2959
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "prefer_view_mode"

    iget v2, p0, Lcom/android/email/activity/MessageList;->mViewModeType:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2961
    :cond_0
    return-void

    .line 2948
    :pswitch_0
    sget v0, Lcom/android/email/activity/MessageList;->VIEW_MODE_STANDARD:I

    iput v0, p0, Lcom/android/email/activity/MessageList;->mViewModeType:I

    goto :goto_0

    .line 2952
    :pswitch_1
    sget v0, Lcom/android/email/activity/MessageList;->VIEW_MODE_CONVERSATION_READY:I

    iput v0, p0, Lcom/android/email/activity/MessageList;->mViewModeType:I

    goto :goto_0

    .line 2946
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private restoreListPosition()V
    .locals 3

    .prologue
    .line 1625
    const-string v0, "MessageList >>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restoreListPosition | mSavedItemPos : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/email/activity/MessageList;->mSavedItemPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " top : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/email/activity/MessageList;->mSavedItemTop:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 1626
    iget v0, p0, Lcom/android/email/activity/MessageList;->mSavedItemPosition:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/email/activity/MessageList;->mSavedItemPosition:I

    iget-object v1, p0, Lcom/android/email/activity/MessageList;->mListView:Lcom/android/email/winset/EmailListView;

    invoke-virtual {v1}, Lcom/android/email/winset/EmailListView;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1628
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mListView:Lcom/android/email/winset/EmailListView;

    invoke-virtual {v0}, Lcom/android/email/winset/EmailListView;->recoverExcessScroll()V

    .line 1629
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mListView:Lcom/android/email/winset/EmailListView;

    iget-object v1, p0, Lcom/android/email/activity/MessageList;->mListAdapter:Lcom/android/email/activity/MessageList$MessageListAdapter;

    invoke-virtual {v0, v1}, Lcom/android/email/winset/EmailListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1630
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mListView:Lcom/android/email/winset/EmailListView;

    iget v1, p0, Lcom/android/email/activity/MessageList;->mSavedItemPosition:I

    iget v2, p0, Lcom/android/email/activity/MessageList;->mSavedItemTop:I

    invoke-virtual {v0, v1, v2}, Lcom/android/email/winset/EmailListView;->setSelectionFromTop(II)V

    .line 1631
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/email/activity/MessageList;->mSavedItemPosition:I

    .line 1632
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/email/activity/MessageList;->mSavedItemTop:I

    .line 1634
    :cond_0
    return-void
.end method

.method private saveListPosition()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1608
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mListView:Lcom/android/email/winset/EmailListView;

    invoke-virtual {v0}, Lcom/android/email/winset/EmailListView;->getSelectedItemPosition()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/MessageList;->mSavedItemPosition:I

    .line 1609
    iget v0, p0, Lcom/android/email/activity/MessageList;->mSavedItemPosition:I

    if-ltz v0, :cond_1

    .line 1610
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mListView:Lcom/android/email/winset/EmailListView;

    invoke-virtual {v0}, Lcom/android/email/winset/EmailListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/MessageList;->mSavedItemTop:I

    .line 1621
    :cond_0
    :goto_0
    const-string v0, "MessageList >>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveListPosition 2 | mSaveItemPos : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/email/activity/MessageList;->mSavedItemPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mSavedItemTop : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/email/activity/MessageList;->mSavedItemTop:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1622
    return-void

    .line 1612
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mListView:Lcom/android/email/winset/EmailListView;

    invoke-virtual {v0}, Lcom/android/email/winset/EmailListView;->getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/MessageList;->mSavedItemPosition:I

    .line 1613
    iget v0, p0, Lcom/android/email/activity/MessageList;->mSavedItemPosition:I

    if-ltz v0, :cond_0

    .line 1614
    iput v1, p0, Lcom/android/email/activity/MessageList;->mSavedItemTop:I

    .line 1615
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mListView:Lcom/android/email/winset/EmailListView;

    invoke-virtual {v0, v1}, Lcom/android/email/winset/EmailListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1616
    if-eqz v0, :cond_0

    .line 1617
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/MessageList;->mSavedItemTop:I

    goto :goto_0
.end method

.method private setListFooterText(Z)V
    .locals 3
    .parameter

    .prologue
    const v2, 0x7f080038

    .line 5683
    iget v0, p0, Lcom/android/email/activity/MessageList;->mListFooterMode:I

    if-eqz v0, :cond_0

    .line 5684
    const/4 v0, 0x0

    .line 5685
    iget v1, p0, Lcom/android/email/activity/MessageList;->mListFooterMode:I

    packed-switch v1, :pswitch_data_0

    .line 5704
    :goto_0
    iget-object v1, p0, Lcom/android/email/activity/MessageList;->mListFooterText:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 5705
    iget-object v1, p0, Lcom/android/email/activity/MessageList;->mListFooterText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 5708
    :cond_0
    return-void

    .line 5687
    :pswitch_0
    if-eqz p1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    const v0, 0x7f080028

    goto :goto_0

    .line 5691
    :pswitch_1
    if-eqz p1, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    const v0, 0x7f08005b

    goto :goto_0

    .line 5695
    :pswitch_2
    if-eqz p1, :cond_3

    const v0, 0x7f080039

    goto :goto_0

    :cond_3
    const v0, 0x7f08005c

    goto :goto_0

    .line 5700
    :pswitch_3
    if-eqz p1, :cond_4

    const v0, 0x7f08016e

    goto :goto_0

    :cond_4
    const v0, 0x7f08016d

    goto :goto_0

    .line 5685
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setTitleAccountName(Ljava/lang/String;Z)V
    .locals 10
    .parameter "accountName"
    .parameter "showAccountsButton"

    .prologue
    const/16 v9, 0x73

    const/4 v8, 0x0

    .line 7289
    const v6, 0x7f0700b5

    invoke-virtual {p0, v6}, Lcom/android/email/activity/MessageList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 7290
    .local v0, accountsButton:Landroid/widget/TextView;
    if-eqz p2, :cond_2

    .line 7291
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7293
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 7294
    .local v3, strBuff:Ljava/lang/StringBuffer;
    new-instance v5, Landroid/text/TextPaint;

    invoke-direct {v5}, Landroid/text/TextPaint;-><init>()V

    .line 7295
    .local v5, textPaint:Landroid/text/TextPaint;
    const/4 v2, 0x0

    .line 7296
    .local v2, measuredTextWidth:I
    const/4 v4, 0x0

    .line 7298
    .local v4, strBuffLen:I
    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 7300
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v6

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v2, v6

    .line 7302
    if-le v2, v9, :cond_1

    .line 7303
    const/4 v1, 0x0

    .line 7305
    .local v1, measureStrBuf:Ljava/lang/StringBuffer;
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    .line 7307
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    .end local v1           #measureStrBuf:Ljava/lang/StringBuffer;
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 7310
    .restart local v1       #measureStrBuf:Ljava/lang/StringBuffer;
    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v8, v4}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 7311
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v6

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v2, v6

    .line 7313
    if-gt v2, v9, :cond_0

    .line 7315
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7321
    .end local v1           #measureStrBuf:Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7326
    .end local v2           #measuredTextWidth:I
    .end local v3           #strBuff:Ljava/lang/StringBuffer;
    .end local v4           #strBuffLen:I
    .end local v5           #textPaint:Landroid/text/TextPaint;
    :goto_1
    return-void

    .line 7318
    .restart local v2       #measuredTextWidth:I
    .restart local v3       #strBuff:Ljava/lang/StringBuffer;
    .restart local v4       #strBuffLen:I
    .restart local v5       #textPaint:Landroid/text/TextPaint;
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 7324
    .end local v2           #measuredTextWidth:I
    .end local v3           #strBuff:Ljava/lang/StringBuffer;
    .end local v4           #strBuffLen:I
    .end local v5           #textPaint:Landroid/text/TextPaint;
    :cond_2
    const/16 v6, 0x8

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method private showMultiPanel(Z)V
    .locals 11
    .parameter

    .prologue
    const-wide/16 v9, -0x5

    const-wide/16 v7, -0x6

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 5344
    if-eqz p1, :cond_11

    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMultiSelectPanel:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_11

    .line 5345
    iget-wide v0, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    const-wide/16 v2, -0x2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    const-wide/16 v2, -0x3

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    const-wide/16 v2, -0x4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    cmp-long v0, v0, v9

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    cmp-long v0, v0, v7

    if-nez v0, :cond_a

    .line 5351
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMoveButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 5352
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMoveButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 5384
    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/email/activity/MessageList;->mIsEAS:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 5385
    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->IsEAS()I

    .line 5387
    :cond_2
    iget v0, p0, Lcom/android/email/activity/MessageList;->mIsEAS:I

    if-eq v0, v6, :cond_3

    sget-boolean v0, Lcom/android/email/activity/MessageList;->isStartedFromMailboxList:Z

    if-eqz v0, :cond_10

    .line 5388
    :cond_3
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mFavoriteButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 5389
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mFlagButton:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 5397
    :goto_1
    iget-wide v0, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    const-wide/16 v2, -0x2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    iget-wide v0, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    const-wide/16 v2, -0x3

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    iget-wide v0, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    cmp-long v0, v0, v9

    if-eqz v0, :cond_4

    iget-wide v0, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    cmp-long v0, v0, v7

    if-nez v0, :cond_5

    .line 5402
    :cond_4
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mFavoriteButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    .line 5403
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mFavoriteButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 5419
    :cond_5
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    if-ne v0, v4, :cond_7

    .line 5420
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mFavoriteButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_6

    .line 5421
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mFavoriteButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 5422
    :cond_6
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mFlagButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_7

    .line 5423
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mFlagButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 5426
    :cond_7
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMultiSelectPanel:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 5427
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMultiSelectPanel:Landroid/view/View;

    const/high16 v1, 0x7f04

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 5436
    :cond_8
    :goto_2
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mListAdapter:Lcom/android/email/activity/MessageList$MessageListAdapter;

    invoke-static {v0}, Lcom/android/email/activity/MessageList$MessageListAdapter;->access$1100(Lcom/android/email/activity/MessageList$MessageListAdapter;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-eqz v0, :cond_13

    .line 5437
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mListAdapter:Lcom/android/email/activity/MessageList$MessageListAdapter;

    invoke-static {v0}, Lcom/android/email/activity/MessageList$MessageListAdapter;->access$3800(Lcom/android/email/activity/MessageList$MessageListAdapter;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_12

    .line 5439
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMoveButton:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 5443
    :goto_3
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mDeleteButton:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 5465
    :goto_4
    if-eqz p1, :cond_9

    .line 5466
    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->updateFooterButtonNames()V

    .line 5468
    :cond_9
    return-void

    .line 5358
    :cond_a
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_b

    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_c

    .line 5360
    :cond_b
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMoveButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 5362
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMoveButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    .line 5364
    :cond_c
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    if-ne v0, v4, :cond_e

    .line 5365
    :cond_d
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mDeleteButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 5367
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mDeleteButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 5368
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMoveButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    .line 5371
    :cond_e
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMoveButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 5373
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mListAdapter:Lcom/android/email/activity/MessageList$MessageListAdapter;

    invoke-static {v0}, Lcom/android/email/activity/MessageList$MessageListAdapter;->access$3800(Lcom/android/email/activity/MessageList$MessageListAdapter;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_f

    .line 5375
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMoveButton:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 5379
    :goto_5
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mDeleteButton:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    .line 5378
    :cond_f
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMoveButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_5

    .line 5392
    :cond_10
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mFavoriteButton:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 5393
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mFlagButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_1

    .line 5431
    :cond_11
    if-nez p1, :cond_8

    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMultiSelectPanel:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v4, :cond_8

    .line 5432
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMultiSelectPanel:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 5433
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMultiSelectPanel:Landroid/view/View;

    const v1, 0x7f040001

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_2

    .line 5442
    :cond_12
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMoveButton:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_3

    .line 5445
    :cond_13
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMoveMessageTask:Lcom/android/email/activity/MessageList$MoveMessageTask;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMoveMessageTask:Lcom/android/email/activity/MessageList$MoveMessageTask;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageList$MoveMessageTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_15

    .line 5448
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mListAdapter:Lcom/android/email/activity/MessageList$MessageListAdapter;

    invoke-static {v0}, Lcom/android/email/activity/MessageList$MessageListAdapter;->access$3800(Lcom/android/email/activity/MessageList$MessageListAdapter;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_14

    .line 5450
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMoveButton:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 5454
    :goto_6
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mDeleteButton:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_4

    .line 5453
    :cond_14
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMoveButton:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_6

    .line 5457
    :cond_15
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mListAdapter:Lcom/android/email/activity/MessageList$MessageListAdapter;

    invoke-static {v0}, Lcom/android/email/activity/MessageList$MessageListAdapter;->access$3800(Lcom/android/email/activity/MessageList$MessageListAdapter;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_16

    .line 5459
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMoveButton:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 5463
    :goto_7
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mDeleteButton:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_4

    .line 5462
    :cond_16
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMoveButton:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_7
.end method

.method private showToast(II)V
    .locals 1
    .parameter "resID"
    .parameter "duration"

    .prologue
    .line 1239
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 1240
    invoke-virtual {p0}, Lcom/android/email/activity/MessageList;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mToast:Landroid/widget/Toast;

    .line 1247
    :goto_0
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1248
    return-void

    .line 1242
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 1243
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(I)V

    .line 1244
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p2}, Landroid/widget/Toast;->setDuration(I)V

    goto :goto_0
.end method

.method private testMultiple(Ljava/util/Set;IZ)Z
    .locals 8
    .parameter
    .parameter "column_id"
    .parameter "defaultflag"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;IZ)Z"
        }
    .end annotation

    .prologue
    .local p1, selectedSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 5106
    iget-object v4, p0, Lcom/android/email/activity/MessageList;->mListAdapter:Lcom/android/email/activity/MessageList$MessageListAdapter;

    invoke-virtual {v4}, Lcom/android/email/activity/MessageList$MessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 5107
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    move v4, v6

    .line 5130
    :goto_0
    return v4

    .line 5114
    :cond_1
    const/4 v4, -0x1

    :try_start_0
    invoke-interface {v0, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 5115
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 5116
    const/4 v4, 0x0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v2, v4

    .line 5117
    .local v2, id:J
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 5118
    invoke-interface {v0, p2}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz p3, :cond_3

    move v5, v7

    :goto_1
    if-ne v4, v5, :cond_2

    move v4, v7

    .line 5119
    goto :goto_0

    :cond_3
    move v5, v6

    .line 5118
    goto :goto_1

    .line 5124
    .end local v2           #id:J
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 5125
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "MessageList >>"

    const-string v5, "testMultiple >> exception occured"

    invoke-static {v4, v5}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 5126
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move v4, v6

    .line 5127
    goto :goto_0

    .end local v1           #e:Ljava/lang/Exception;
    :cond_4
    move v4, v6

    .line 5130
    goto :goto_0
.end method

.method private toggleFlag(Ljava/util/Set;Lcom/android/email/activity/MessageList$MultiToggleHelper;I)I
    .locals 9
    .parameter
    .parameter "helper"
    .parameter "flag"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/android/email/activity/MessageList$MultiToggleHelper;",
            "I)I"
        }
    .end annotation

    .prologue
    .local p1, selectedSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 5056
    iget-object v6, p0, Lcom/android/email/activity/MessageList;->mListAdapter:Lcom/android/email/activity/MessageList$MessageListAdapter;

    invoke-virtual {v6}, Lcom/android/email/activity/MessageList$MessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    .line 5057
    .local v2, c:Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 5059
    .local v1, anyWereFound:Z
    if-nez p3, :cond_1

    .line 5060
    const/4 v0, 0x2

    .line 5065
    .local v0, allWereSet:I
    :goto_0
    invoke-interface {v2, v7}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 5066
    :cond_0
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 5067
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    int-to-long v3, v6

    .line 5068
    .local v3, id:J
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 5070
    const/4 v1, 0x1

    goto :goto_1

    .line 5061
    .end local v0           #allWereSet:I
    .end local v3           #id:J
    :cond_1
    const/4 v6, 0x1

    if-ne p3, v6, :cond_2

    .line 5062
    const/4 v0, 0x1

    .restart local v0       #allWereSet:I
    goto :goto_0

    .line 5064
    .end local v0           #allWereSet:I
    :cond_2
    const/4 v0, 0x0

    .restart local v0       #allWereSet:I
    goto :goto_0

    .line 5078
    :cond_3
    const/4 v5, 0x0

    .line 5080
    .local v5, numChanged:I
    if-eqz v1, :cond_5

    .line 5081
    invoke-interface {v2, v7}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 5082
    :cond_4
    :goto_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 5083
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    int-to-long v3, v6

    .line 5084
    .restart local v3       #id:J
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 5085
    invoke-interface {p2, v3, v4, v2, v0}, Lcom/android/email/activity/MessageList$MultiToggleHelper;->setFlagField(JLandroid/database/Cursor;I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 5086
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 5092
    .end local v3           #id:J
    :cond_5
    return v5
.end method

.method private toggleMultiple(Ljava/util/Set;Lcom/android/email/activity/MessageList$MultiToggleHelper;)I
    .locals 10
    .parameter
    .parameter "helper"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/android/email/activity/MessageList$MultiToggleHelper;",
            ")I"
        }
    .end annotation

    .prologue
    .local p1, selectedSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    const/4 v9, -0x1

    const/4 v8, 0x0

    .line 5011
    iget-object v7, p0, Lcom/android/email/activity/MessageList;->mListAdapter:Lcom/android/email/activity/MessageList$MessageListAdapter;

    invoke-virtual {v7}, Lcom/android/email/activity/MessageList$MessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    .line 5012
    .local v2, c:Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 5013
    .local v1, anyWereFound:Z
    const/4 v0, 0x1

    .line 5015
    .local v0, allWereSet:Z
    invoke-interface {v2, v9}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 5016
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 5017
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    int-to-long v3, v7

    .line 5018
    .local v3, id:J
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {p1, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 5019
    const/4 v1, 0x1

    .line 5020
    invoke-interface {p2, v3, v4, v2}, Lcom/android/email/activity/MessageList$MultiToggleHelper;->getField(JLandroid/database/Cursor;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 5021
    const/4 v0, 0x0

    .line 5027
    .end local v3           #id:J
    :cond_1
    const/4 v6, 0x0

    .line 5029
    .local v6, numChanged:I
    if-eqz v1, :cond_4

    .line 5030
    if-nez v0, :cond_3

    const/4 v7, 0x1

    move v5, v7

    .line 5031
    .local v5, newValue:Z
    :goto_0
    invoke-interface {v2, v9}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 5032
    :cond_2
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 5033
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    int-to-long v3, v7

    .line 5034
    .restart local v3       #id:J
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {p1, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 5035
    invoke-interface {p2, v3, v4, v2, v5}, Lcom/android/email/activity/MessageList$MultiToggleHelper;->setField(JLandroid/database/Cursor;Z)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 5036
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .end local v3           #id:J
    .end local v5           #newValue:Z
    :cond_3
    move v5, v8

    .line 5030
    goto :goto_0

    .line 5042
    :cond_4
    return v6
.end method

.method private updateBadgeProvider()V
    .locals 6

    .prologue
    const-string v5, "package"

    const-string v4, "class"

    .line 1252
    invoke-virtual {p0}, Lcom/android/email/activity/MessageList;->getCountofAccounts()I

    move-result v0

    .line 1253
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1254
    const-string v2, "package"

    const-string v2, "com.android.email"

    invoke-virtual {v1, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1255
    const-string v2, "class"

    const-string v2, "com.android.email.activity.Welcome"

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1256
    const-string v2, "badgecount"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1257
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 1258
    const-string v3, "package"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "=\'com.android.email\' AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "class"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "=\'com.android.email.activity.Welcome\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1259
    iget-object v3, p0, Lcom/android/email/activity/MessageList;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "content://com.sec.badge/apps"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v1, v2, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1260
    const-string v1, "MessageList >>"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[updateBadgeProvider] - cnt : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1261
    return-void
.end method

.method private updateFooterButtonNames()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 5298
    iget-wide v0, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    invoke-static {p0, v0, v1}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v0

    .line 5299
    if-eqz v0, :cond_0

    .line 5300
    const/16 v1, 0x61

    invoke-static {v0, v1}, Lcom/android/email/Utility;->isMailboxType(Lcom/android/email/provider/EmailContent$Mailbox;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5303
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mDeleteButton:Landroid/widget/Button;

    const v1, 0x7f08002b

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 5309
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mListAdapter:Lcom/android/email/activity/MessageList$MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageList$MessageListAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x6

    invoke-direct {p0, v0, v1, v3}, Lcom/android/email/activity/MessageList;->testMultiple(Ljava/util/Set;IZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5310
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mReadUnreadButton:Landroid/widget/Button;

    const v1, 0x7f080024

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 5324
    :goto_0
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mListAdapter:Lcom/android/email/activity/MessageList$MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageList$MessageListAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v0

    .line 5325
    iget-object v1, p0, Lcom/android/email/activity/MessageList;->mListAdapter:Lcom/android/email/activity/MessageList$MessageListAdapter;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageList$MessageListAdapter;->getFavorites()Ljava/util/Set;

    move-result-object v1

    .line 5327
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 5328
    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 5329
    const/4 v0, 0x0

    :goto_2
    move v3, v0

    goto :goto_1

    .line 5312
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mReadUnreadButton:Landroid/widget/Button;

    const v1, 0x7f080023

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 5332
    :cond_2
    if-nez v3, :cond_3

    .line 5333
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mFavoriteButton:Landroid/widget/Button;

    const v1, 0x7f080026

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 5338
    :goto_3
    return-void

    .line 5335
    :cond_3
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mFavoriteButton:Landroid/widget/Button;

    const v1, 0x7f080027

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_3

    :cond_4
    move v0, v3

    goto :goto_2
.end method

.method private updateInboxUnreadCount()V
    .locals 14

    .prologue
    const/4 v12, 0x0

    const/4 v10, 0x0

    const-string v11, "MessageList >>"

    .line 5182
    iget-wide v0, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 5272
    :cond_0
    :goto_0
    return-void

    .line 5188
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    if-nez v0, :cond_2

    .line 5189
    iget-wide v0, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    invoke-static {p0, v0, v1}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    .line 5190
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    if-nez v0, :cond_2

    .line 5191
    const-string v0, "MessageList >>"

    const-string v0, "Mailbox Type is not TYPE_INBOX."

    invoke-static {v11, v0}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5195
    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    if-eqz v0, :cond_3

    .line 5196
    const-string v0, "MessageList >>"

    const-string v0, "Mailbox Type is not TYPE_INBOX."

    invoke-static {v11, v0}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5200
    :cond_3
    const-string v3, "accountKey=? AND type=0 AND flagVisible=1"

    .line 5206
    :try_start_0
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mResolver:Landroid/content/ContentResolver;

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

    iget-object v6, p0, Lcom/android/email/activity/MessageList;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-wide v6, v6, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const-string v5, "type,displayName"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 5219
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5222
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_4

    .line 5224
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 5214
    :catch_0
    move-exception v0

    .line 5215
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 5229
    :cond_4
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 5230
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_6

    .line 5232
    invoke-static {p0}, Lcom/android/email/Utility$FolderProperties;->getInstance(Landroid/content/Context;)Lcom/android/email/Utility$FolderProperties;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/email/Utility$FolderProperties;->getDisplayName(I)Ljava/lang/String;

    move-result-object v0

    .line 5233
    if-nez v0, :cond_9

    .line 5234
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    .line 5237
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "accountKey=? AND flagRead =0 AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageList;->mResolver:Landroid/content/ContentResolver;

    iget-wide v2, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    invoke-static {v1, v2, v3}, Lcom/android/email/Utility;->buildMailboxIdSelection(Landroid/content/ContentResolver;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 5242
    :try_start_2
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const/16 v5, 0xc

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v8, p0, Lcom/android/email/activity/MessageList;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-wide v8, v8, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 5247
    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v1

    .line 5251
    if-eqz v0, :cond_5

    :try_start_4
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_5

    .line 5252
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 5255
    :cond_5
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 5256
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    move v2, v10

    .line 5258
    :goto_2
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mTabHost:Lcom/android/email/winset/TwTabHost;

    invoke-virtual {v0}, Lcom/android/email/winset/TwTabHost;->getTabCount()I

    move-result v0

    if-ge v2, v0, :cond_6

    .line 5260
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mTabHost:Lcom/android/email/winset/TwTabHost;

    invoke-virtual {v0}, Lcom/android/email/winset/TwTabHost;->getTabLists()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/winset/TwTabHost$TabSpec;

    invoke-virtual {v0}, Lcom/android/email/winset/TwTabHost$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 5262
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mTabHost:Lcom/android/email/winset/TwTabHost;

    invoke-virtual {v0}, Lcom/android/email/winset/TwTabHost;->getTabLists()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/email/winset/TwTabHost$TabSpec;

    invoke-virtual {p0, v1}, Lcom/android/email/winset/TwTabHost$TabSpec;->setLabelText(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 5271
    :cond_6
    :goto_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 5251
    :catchall_0
    move-exception v0

    move-object v1, v12

    :goto_4
    if-eqz v1, :cond_7

    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_7

    .line 5252
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 5251
    :cond_7
    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 5267
    :catch_1
    move-exception v0

    .line 5268
    const-string v1, "MessageList >>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception >>> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 5269
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 5258
    :cond_8
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 5251
    :catchall_1
    move-exception v1

    move-object v13, v1

    move-object v1, v0

    move-object v0, v13

    goto :goto_4

    :cond_9
    move-object v7, v0

    goto/16 :goto_1
.end method

.method private updateMessageLists(Z)V
    .locals 12
    .parameter

    .prologue
    .line 1467
    const-string v0, "MessageList >>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateMessageLists :: mMailboxId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1469
    iget-wide v0, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_6

    .line 1472
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mLoadMessagesTask:Lcom/android/email/activity/MessageList$LoadMessagesTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mLoadMessagesTask:Lcom/android/email/activity/MessageList$LoadMessagesTask;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageList$LoadMessagesTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 1474
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mLoadMessagesTask:Lcom/android/email/activity/MessageList$LoadMessagesTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageList$LoadMessagesTask;->cancel(Z)Z

    .line 1475
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mLoadMessagesTask:Lcom/android/email/activity/MessageList$LoadMessagesTask;

    .line 1479
    :cond_0
    new-instance v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;

    iget-wide v2, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    iget-wide v4, p0, Lcom/android/email/activity/MessageList;->mAccountId:J

    const/4 v6, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/email/activity/MessageList$LoadMessagesTask;-><init>(Lcom/android/email/activity/MessageList;JJZ)V

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mLoadMessagesTask:Lcom/android/email/activity/MessageList$LoadMessagesTask;

    .line 1481
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mLoadMessagesTask:Lcom/android/email/activity/MessageList$LoadMessagesTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageList$LoadMessagesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1483
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mSetTitleTask:Lcom/android/email/activity/MessageList$SetTitleTask;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mSetTitleTask:Lcom/android/email/activity/MessageList$SetTitleTask;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageList$SetTitleTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_1

    .line 1485
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mSetTitleTask:Lcom/android/email/activity/MessageList$SetTitleTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageList$SetTitleTask;->cancel(Z)Z

    .line 1486
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mSetTitleTask:Lcom/android/email/activity/MessageList$SetTitleTask;

    .line 1488
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mSetFooterTask:Lcom/android/email/activity/MessageList$SetFooterTask;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mSetFooterTask:Lcom/android/email/activity/MessageList$SetFooterTask;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageList$SetFooterTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_2

    .line 1490
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mSetFooterTask:Lcom/android/email/activity/MessageList$SetFooterTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageList$SetFooterTask;->cancel(Z)Z

    .line 1491
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mSetFooterTask:Lcom/android/email/activity/MessageList$SetFooterTask;

    .line 1497
    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mTabHost:Lcom/android/email/winset/TwTabHost;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mTabHost:Lcom/android/email/winset/TwTabHost;

    invoke-virtual {v0}, Lcom/android/email/winset/TwTabHost;->getTabCount()I

    move-result v0

    if-gtz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/email/activity/MessageList;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.email.server.search"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1499
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mFolderListTask:Lcom/android/email/activity/MessageList$RefreshFolderListTask;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mFolderListTask:Lcom/android/email/activity/MessageList$RefreshFolderListTask;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageList$RefreshFolderListTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_3

    .line 1501
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mFolderListTask:Lcom/android/email/activity/MessageList$RefreshFolderListTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageList$RefreshFolderListTask;->cancel(Z)Z

    .line 1502
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mFolderListTask:Lcom/android/email/activity/MessageList$RefreshFolderListTask;

    .line 1505
    :cond_3
    new-instance v0, Lcom/android/email/activity/MessageList$RefreshFolderListTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/email/activity/MessageList$RefreshFolderListTask;-><init>(Lcom/android/email/activity/MessageList;Lcom/android/email/activity/MessageList$1;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mFolderListTask:Lcom/android/email/activity/MessageList$RefreshFolderListTask;

    .line 1506
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mFolderListTask:Lcom/android/email/activity/MessageList$RefreshFolderListTask;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/email/activity/MessageList;->mMailboxCurrentIndex:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageList$RefreshFolderListTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1508
    :cond_4
    new-instance v0, Lcom/android/email/activity/MessageList$SetTitleTask;

    iget-wide v1, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    invoke-direct {v0, p0, v1, v2}, Lcom/android/email/activity/MessageList$SetTitleTask;-><init>(Lcom/android/email/activity/MessageList;J)V

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mSetTitleTask:Lcom/android/email/activity/MessageList$SetTitleTask;

    .line 1509
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mSetTitleTask:Lcom/android/email/activity/MessageList$SetTitleTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageList$SetTitleTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1512
    iget-wide v1, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    const-wide/16 v3, -0x1

    const/4 v5, -0x1

    move-object v0, p0

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/email/activity/MessageList;->addFooterView(JJIZ)V

    .line 1571
    :cond_5
    :goto_0
    return-void

    .line 1516
    :cond_6
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mFindMailboxTask:Lcom/android/email/activity/MessageList$FindMailboxTask;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mFindMailboxTask:Lcom/android/email/activity/MessageList$FindMailboxTask;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageList$FindMailboxTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_7

    .line 1518
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mFindMailboxTask:Lcom/android/email/activity/MessageList$FindMailboxTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageList$FindMailboxTask;->cancel(Z)Z

    .line 1519
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mFindMailboxTask:Lcom/android/email/activity/MessageList$FindMailboxTask;

    .line 1521
    :cond_7
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mSetFooterTask:Lcom/android/email/activity/MessageList$SetFooterTask;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mSetFooterTask:Lcom/android/email/activity/MessageList$SetFooterTask;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageList$SetFooterTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_8

    .line 1523
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mSetFooterTask:Lcom/android/email/activity/MessageList$SetFooterTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageList$SetFooterTask;->cancel(Z)Z

    .line 1524
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mSetFooterTask:Lcom/android/email/activity/MessageList$SetFooterTask;

    .line 1528
    :cond_8
    const-wide/16 v1, -0x1

    .line 1529
    invoke-virtual {p0}, Lcom/android/email/activity/MessageList;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "com.android.email.activity.MAILBOX_TYPE"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 1530
    invoke-virtual {p0}, Lcom/android/email/activity/MessageList;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 1531
    if-eqz v0, :cond_9

    const-string v3, "content"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    const-string v3, "com.android.email.provider"

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1535
    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1536
    if-eqz v0, :cond_a

    .line 1537
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    move-wide v2, v0

    .line 1539
    :goto_1
    new-instance v0, Lcom/android/email/activity/MessageList$FindMailboxTask;

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/email/activity/MessageList$FindMailboxTask;-><init>(Lcom/android/email/activity/MessageList;JIZ)V

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mFindMailboxTask:Lcom/android/email/activity/MessageList$FindMailboxTask;

    .line 1540
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mFindMailboxTask:Lcom/android/email/activity/MessageList$FindMailboxTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageList$FindMailboxTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-wide v8, v2

    .line 1547
    :goto_2
    iput-wide v8, p0, Lcom/android/email/activity/MessageList;->mAccountId:J

    .line 1548
    const-wide/16 v6, -0x1

    move-object v5, p0

    move v10, v4

    move v11, p1

    invoke-direct/range {v5 .. v11}, Lcom/android/email/activity/MessageList;->addFooterView(JJIZ)V

    .line 1550
    iget-wide v0, p0, Lcom/android/email/activity/MessageList;->mAccountId:J

    invoke-static {p0, v0, v1}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v0

    .line 1551
    if-eqz v0, :cond_5

    iget v1, v0, Lcom/android/email/provider/EmailContent$Account;->mFlags:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_5

    iget-object v1, v0, Lcom/android/email/provider/EmailContent$Account;->mSecuritySyncKey:Ljava/lang/String;

    if-nez v1, :cond_5

    iget-object v1, v0, Lcom/android/email/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 1554
    const v1, 0x7f08017e

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/android/email/provider/EmailContent$Account;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/email/activity/MessageList;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1555
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1557
    invoke-virtual {p0}, Lcom/android/email/activity/MessageList;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.email.activity._ACCOUNT_ID"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 1559
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_5

    .line 1560
    new-instance v2, Lcom/android/email/activity/MessageList$4;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/email/activity/MessageList$4;-><init>(Lcom/android/email/activity/MessageList;J)V

    invoke-virtual {v2}, Lcom/android/email/activity/MessageList$4;->start()V

    goto/16 :goto_0

    .line 1543
    :cond_9
    invoke-virtual {p0}, Lcom/android/email/activity/MessageList;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.email.activity._ACCOUNT_ID"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 1544
    new-instance v0, Lcom/android/email/activity/MessageList$FindMailboxTask;

    const/4 v5, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/email/activity/MessageList$FindMailboxTask;-><init>(Lcom/android/email/activity/MessageList;JIZ)V

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mFindMailboxTask:Lcom/android/email/activity/MessageList$FindMailboxTask;

    .line 1545
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mFindMailboxTask:Lcom/android/email/activity/MessageList$FindMailboxTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageList$FindMailboxTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-wide v8, v2

    goto :goto_2

    :cond_a
    move-wide v2, v1

    goto/16 :goto_1
.end method


# virtual methods
.method public clearConversation(JJ)V
    .locals 10
    .parameter
    .parameter

    .prologue
    .line 3510
    .line 3511
    const-string v0, ""

    .line 3513
    const/4 v6, 0x0

    .line 3514
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/email/Controller;->MESSAGEID_TO_CONVERSATIONID_PROJECTION:[Ljava/lang/String;

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 3518
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    sget v1, Lcom/android/email/Controller;->MESSAGEID_TO_CONVERSATIONID_COLUMN_MAILBOXID:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    move-wide v7, v1

    .line 3521
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_5

    sget v1, Lcom/android/email/Controller;->MESSAGEID_TO_CONVERSDATIONID_COLUMN_CONVID:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    move-object v5, v1

    .line 3525
    :goto_1
    if-eqz v0, :cond_0

    .line 3526
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 3531
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/email/provider/EmailContent$Message;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v3, "conversationId =? AND mailboxKey=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v5, v4, v9

    const/4 v5, 0x1

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 3534
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3539
    :cond_1
    if-eqz v7, :cond_2

    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_7

    .line 3540
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Byte array to encript cannot be null or zero length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3576
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    .line 3577
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 3576
    :cond_3
    throw v0

    .line 3518
    :cond_4
    const-wide/16 v1, -0x1

    move-wide v7, v1

    goto :goto_0

    .line 3521
    :cond_5
    const/4 v1, 0x0

    move-object v5, v1

    goto :goto_1

    .line 3525
    :catchall_1
    move-exception v1

    if-eqz v0, :cond_6

    .line 3526
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 3525
    :cond_6
    throw v1

    .line 3541
    :cond_7
    const/4 v0, -0x1

    :try_start_2
    invoke-interface {v7, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 3542
    :cond_8
    :goto_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 3543
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 3544
    const-wide/16 v0, -0x1

    cmp-long v0, v8, v0

    if-eqz v0, :cond_8

    .line 3546
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/email/provider/EmailContent$FollowupFlag;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/email/provider/EmailContent$FollowupFlag;->CONTENT_PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "messageKey=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "status"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "<>\'0\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 3549
    if-eqz v0, :cond_9

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    if-eqz v1, :cond_9

    .line 3553
    :cond_9
    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_a

    .line 3560
    invoke-direct {p0, v8, v9, v6}, Lcom/android/email/activity/MessageList;->onSetFollowupFlag(JI)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0

    .line 3569
    :cond_a
    if-eqz v0, :cond_8

    .line 3570
    :try_start_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 3563
    :catch_0
    move-exception v1

    .line 3564
    :try_start_5
    const-string v2, "Error"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IllegalStateException >>> syncFavorites"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3565
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 3569
    if-eqz v0, :cond_8

    .line 3570
    :try_start_6
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 3569
    :catchall_2
    move-exception v1

    if-eqz v0, :cond_b

    .line 3570
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 3569
    :cond_b
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 3576
    :cond_c
    if-eqz v7, :cond_d

    .line 3577
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 3581
    :cond_d
    return-void
.end method

.method public completeConversation(JJ)V
    .locals 14
    .parameter
    .parameter

    .prologue
    .line 3405
    .line 3406
    const-string v0, ""

    .line 3408
    const/4 v6, 0x1

    .line 3409
    const/4 v7, 0x0

    .line 3410
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/email/Controller;->MESSAGEID_TO_CONVERSATIONID_PROJECTION:[Ljava/lang/String;

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 3414
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    sget v1, Lcom/android/email/Controller;->MESSAGEID_TO_CONVERSATIONID_COLUMN_MAILBOXID:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    move-wide v8, v1

    .line 3417
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_5

    sget v1, Lcom/android/email/Controller;->MESSAGEID_TO_CONVERSDATIONID_COLUMN_CONVID:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    move-object v10, v1

    .line 3421
    :goto_1
    if-eqz v0, :cond_0

    .line 3422
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 3427
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/email/provider/EmailContent$Message;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v3, "conversationId =? AND mailboxKey=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v10, v4, v5

    const/4 v5, 0x1

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 3430
    if-eqz v11, :cond_1

    invoke-interface {v11}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3434
    :cond_1
    if-eqz v11, :cond_2

    :try_start_1
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_7

    .line 3435
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Byte array to encript cannot be null or zero length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3472
    :catchall_0
    move-exception v0

    if-eqz v11, :cond_3

    .line 3473
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 3472
    :cond_3
    throw v0

    .line 3414
    :cond_4
    const-wide/16 v1, -0x1

    move-wide v8, v1

    goto :goto_0

    .line 3417
    :cond_5
    const/4 v1, 0x0

    move-object v10, v1

    goto :goto_1

    .line 3421
    :catchall_1
    move-exception v1

    if-eqz v0, :cond_6

    .line 3422
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 3421
    :cond_6
    throw v1

    .line 3436
    :cond_7
    const/4 v0, -0x1

    :try_start_2
    invoke-interface {v11, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 3437
    :goto_2
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 3438
    const/4 v0, 0x0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 3439
    const-wide/16 v0, -0x1

    cmp-long v0, v12, v0

    if-eqz v0, :cond_14

    .line 3441
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/email/provider/EmailContent$FollowupFlag;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/email/provider/EmailContent$FollowupFlag;->CONTENT_PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "messageKey=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "status"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=\'2\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 3444
    if-eqz v0, :cond_8

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    if-eqz v1, :cond_8

    .line 3448
    :cond_8
    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_13

    .line 3455
    invoke-direct {p0, v12, v13, v6}, Lcom/android/email/activity/MessageList;->onSetFollowupFlag(JI)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0

    .line 3456
    const/4 v1, 0x1

    .line 3465
    :goto_3
    if-eqz v0, :cond_9

    .line 3466
    :try_start_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_9
    move v0, v1

    :goto_4
    move v7, v0

    .line 3469
    goto :goto_2

    .line 3459
    :catch_0
    move-exception v1

    .line 3460
    :try_start_5
    const-string v2, "Error"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IllegalStateException >>> syncFavorites"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3461
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 3465
    if-eqz v0, :cond_a

    .line 3466
    :try_start_6
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_a
    move v0, v7

    .line 3467
    goto :goto_4

    .line 3465
    :catchall_2
    move-exception v1

    if-eqz v0, :cond_b

    .line 3466
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 3465
    :cond_b
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 3472
    :cond_c
    if-eqz v11, :cond_d

    .line 3473
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 3476
    :cond_d
    if-nez v7, :cond_10

    .line 3479
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/email/provider/EmailContent$Message;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v3, "conversationId =? AND mailboxKey=? ORDER BY timeStamp desc"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v10, v4, v5

    const/4 v5, 0x1

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 3482
    if-eqz v0, :cond_e

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 3486
    :cond_e
    :try_start_7
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3487
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    .line 3488
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_12

    .line 3490
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_1

    move-result-wide v1

    .line 3501
    if-eqz v0, :cond_f

    .line 3502
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 3504
    :cond_f
    invoke-direct {p0, v1, v2, v6}, Lcom/android/email/activity/MessageList;->onSetFollowupFlag(JI)V

    .line 3507
    :cond_10
    :goto_5
    return-void

    .line 3494
    :catch_1
    move-exception v1

    .line 3495
    :try_start_8
    const-string v2, "Error"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IllegalStateException >>> syncFavorites"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3496
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 3501
    if-eqz v0, :cond_10

    .line 3502
    :goto_6
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_5

    .line 3501
    :catchall_3
    move-exception v1

    if-eqz v0, :cond_11

    .line 3502
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 3501
    :cond_11
    throw v1

    :cond_12
    if-eqz v0, :cond_10

    goto :goto_6

    :cond_13
    move v1, v7

    goto/16 :goto_3

    :cond_14
    move v0, v7

    goto/16 :goto_4
.end method

.method public getCountofAccounts()I
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 1266
    .line 1269
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "flagRead =0 AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageList;->mResolver:Landroid/content/ContentResolver;

    const-wide/16 v2, -0x2

    invoke-static {v1, v2, v3}, Lcom/android/email/Utility;->buildMailboxIdSelection(Landroid/content/ContentResolver;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1271
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const/16 v5, 0xc

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1276
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v1

    .line 1280
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1281
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1283
    :cond_0
    const-string v0, "MessageList >>"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "In getCountofAccounts, total email count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1284
    return v1

    .line 1280
    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1281
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1280
    :cond_1
    throw v0

    :catchall_1
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_0
.end method

.method public getFlag(J)I
    .locals 8
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v7, -0x1

    .line 3301
    const/4 v6, 0x0

    .line 3302
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/email/provider/EmailContent$FollowupFlag;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/email/provider/EmailContent$FollowupFlag;->CONTENT_PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "messageKey=\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 3305
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move v0, v7

    .line 3322
    :goto_0
    return v0

    .line 3309
    :cond_1
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move v1, v6

    .line 3310
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_2

    .line 3311
    const/4 v1, 0x6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 3312
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 3314
    :catch_0
    move-exception v1

    .line 3315
    :try_start_1
    const-string v2, "MessageList >>"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IllegalStateException >>> syncFavorites"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 3316
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3320
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move v0, v7

    .line 3317
    goto :goto_0

    .line 3320
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move v0, v1

    .line 3322
    goto :goto_0
.end method

.method public getMsgFollowupstatus(I)Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagStatus;
    .locals 7
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 1005
    sget-object v6, Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagStatus;->FOLLOWUP_STATUS_CLEARED:Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagStatus;

    .line 1023
    const/4 v0, -0x1

    if-eq p1, v0, :cond_7

    .line 1025
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/email/provider/EmailContent$FollowupFlag;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/email/provider/EmailContent$FollowupFlag;->CONTENT_PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "messageKey=\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1028
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1029
    :cond_0
    sget-object v0, Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagStatus;->FOLLOWUP_STATUS_CLEARED:Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagStatus;

    .line 1051
    :goto_0
    return-object v0

    .line 1033
    :cond_1
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_6

    .line 1035
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1036
    const/4 v1, 0x6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 1037
    sget-object v1, Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagStatus;->FOLLOWUP_STATUS_COMPLETE:Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1047
    :goto_1
    if-eqz v0, :cond_2

    .line 1048
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v1

    .line 1049
    goto :goto_0

    .line 1038
    :cond_3
    const/4 v1, 0x6

    :try_start_1
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_6

    .line 1039
    sget-object v1, Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagStatus;->FOLLOWUP_STATUS_ACTIVE:Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagStatus;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1041
    :catch_0
    move-exception v1

    .line 1042
    :try_start_2
    const-string v2, "Error"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IllegalStateException >>> syncFavorites"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1047
    if-eqz v0, :cond_4

    .line 1048
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v0, v6

    .line 1044
    goto :goto_0

    .line 1047
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_5

    .line 1048
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1047
    :cond_5
    throw v1

    :cond_6
    move-object v1, v6

    goto :goto_1

    :cond_7
    move-object v0, v6

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 4

    .prologue
    .line 897
    iget v1, p0, Lcom/android/email/activity/MessageList;->mSearchId:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 899
    invoke-virtual {p0}, Lcom/android/email/activity/MessageList;->onSearchRequested()Z

    .line 908
    :goto_0
    return-void

    .line 902
    :cond_0
    invoke-virtual {p0}, Lcom/android/email/activity/MessageList;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.android.email.server.search"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 903
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/Welcome;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 904
    .local v0, mIntent:Landroid/content/Intent;
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 905
    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageList;->startActivity(Landroid/content/Intent;)V

    .line 907
    .end local v0           #mIntent:Landroid/content/Intent;
    :cond_1
    invoke-super {p0}, Lcom/android/email/winset/TwTabActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1710
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 1731
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_1

    .line 1788
    :cond_1
    :goto_0
    return-void

    .line 1719
    :sswitch_0
    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->checkITPolicy_AllowPOPIMAP()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1721
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "11111 MessageList.java >>>>> onClick()  >>>>> 1265"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1722
    const v0, 0x7f0801a5

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1734
    :sswitch_1
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mListAdapter:Lcom/android/email/activity/MessageList$MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageList$MessageListAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageList;->onMultiToggleRead(Ljava/util/Set;)V

    .line 1736
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mListAdapter:Lcom/android/email/activity/MessageList$MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageList$MessageListAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 1737
    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageList;->showMultiPanel(Z)V

    goto :goto_0

    .line 1742
    :sswitch_2
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mListAdapter:Lcom/android/email/activity/MessageList$MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageList$MessageListAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/email/activity/MessageList;->onMultiToggleFavorite(Ljava/util/Set;ZI)V

    .line 1744
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mListAdapter:Lcom/android/email/activity/MessageList$MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageList$MessageListAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 1745
    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageList;->showMultiPanel(Z)V

    goto :goto_0

    .line 1750
    :sswitch_3
    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->onFollowUpFlag()V

    goto :goto_0

    .line 1756
    :sswitch_4
    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->onMultiDeletePopup()V

    goto :goto_0

    .line 1766
    :sswitch_5
    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->onMultiMovePopup()V

    goto :goto_0

    .line 1770
    :sswitch_6
    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->onAccounts()V

    goto :goto_0

    .line 1776
    :sswitch_7
    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->onListbySearch()V

    goto :goto_0

    .line 1780
    :sswitch_8
    sget-object v0, Lcom/android/email/activity/MessageList;->mSearchBar:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1781
    sget-object v0, Lcom/android/email/activity/MessageList;->mSearchBar:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 1782
    sget-object v0, Lcom/android/email/activity/MessageList;->mSearchBar:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 1783
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1784
    sget-object v0, Lcom/android/email/activity/MessageList;->mSearchBar:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/email/activity/MessageList;->mEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 1710
    :sswitch_data_0
    .sparse-switch
        0x7f0700ee -> :sswitch_0
        0x7f0700ef -> :sswitch_0
        0x7f0700f7 -> :sswitch_0
        0x7f0700fa -> :sswitch_0
        0x7f0700fb -> :sswitch_0
        0x7f0700fd -> :sswitch_0
        0x7f070100 -> :sswitch_0
        0x7f070101 -> :sswitch_0
    .end sparse-switch

    .line 1731
    :sswitch_data_1
    .sparse-switch
        0x7f0700b5 -> :sswitch_6
        0x7f0700ee -> :sswitch_7
        0x7f0700ef -> :sswitch_8
        0x7f0700f7 -> :sswitch_1
        0x7f0700f8 -> :sswitch_2
        0x7f0700f9 -> :sswitch_3
        0x7f0700fa -> :sswitch_4
        0x7f0700fb -> :sswitch_5
        0x7f0700fd -> :sswitch_1
        0x7f0700fe -> :sswitch_2
        0x7f0700ff -> :sswitch_3
        0x7f070100 -> :sswitch_4
        0x7f070101 -> :sswitch_5
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 8
    .parameter "newConfig"

    .prologue
    const v7, 0x7f0700fc

    const v6, 0x7f0700f6

    const/16 v5, 0x8

    const/4 v4, 0x1

    .line 1792
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v4, :cond_0

    iget-wide v0, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    const-wide/16 v2, -0x2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    const-wide/16 v2, -0x3

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    const-wide/16 v2, -0x5

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    const-wide/16 v2, -0x6

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 1798
    invoke-virtual {p0, v7}, Lcom/android/email/activity/MessageList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mMultiSelectPanel:Landroid/view/View;

    .line 1799
    const v0, 0x7f0700fd

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mReadUnreadButton:Landroid/widget/Button;

    .line 1800
    const v0, 0x7f0700fe

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mFavoriteButton:Landroid/widget/Button;

    .line 1801
    const v0, 0x7f0700ff

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mFlagButton:Landroid/widget/Button;

    .line 1802
    const v0, 0x7f070100

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mDeleteButton:Landroid/widget/Button;

    .line 1803
    const v0, 0x7f070101

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mMoveButton:Landroid/widget/Button;

    .line 1804
    invoke-virtual {p0, v6}, Lcom/android/email/activity/MessageList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1815
    :goto_0
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mListAdapter:Lcom/android/email/activity/MessageList$MessageListAdapter;

    invoke-static {v0}, Lcom/android/email/activity/MessageList$MessageListAdapter;->access$1100(Lcom/android/email/activity/MessageList$MessageListAdapter;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_1

    move v0, v4

    :goto_1
    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageList;->showMultiPanel(Z)V

    .line 1816
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mReadUnreadButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1817
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mFavoriteButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1818
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mFlagButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1819
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mDeleteButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1820
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMoveButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1821
    invoke-super {p0, p1}, Lcom/android/email/winset/TwTabActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1822
    return-void

    .line 1807
    :cond_0
    invoke-virtual {p0, v6}, Lcom/android/email/activity/MessageList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mMultiSelectPanel:Landroid/view/View;

    .line 1808
    const v0, 0x7f0700f7

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mReadUnreadButton:Landroid/widget/Button;

    .line 1809
    const v0, 0x7f0700f8

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mFavoriteButton:Landroid/widget/Button;

    .line 1810
    const v0, 0x7f0700f9

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mFlagButton:Landroid/widget/Button;

    .line 1811
    const v0, 0x7f0700fa

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mDeleteButton:Landroid/widget/Button;

    .line 1812
    const v0, 0x7f0700fb

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mMoveButton:Landroid/widget/Button;

    .line 1813
    invoke-virtual {p0, v7}, Lcom/android/email/activity/MessageList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1815
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter "item"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2602
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 2604
    .local v0, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-object v1, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    check-cast v1, Lcom/android/email/activity/MessageListItem;

    .line 2606
    .local v1, itemView:Lcom/android/email/activity/MessageListItem;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 2703
    :goto_0
    invoke-super {p0, p1}, Lcom/android/email/winset/TwTabActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    return v2

    .line 2608
    :sswitch_0
    iget v2, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    sput v2, Lcom/android/email/activity/MessageList;->mPositionOfSelectedMessage:I

    .line 2609
    const-string v2, "MessageList >>"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onContextItemSelected: mPositionOfSelectedMessage = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/email/activity/MessageList;->mPositionOfSelectedMessage:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 2610
    iget-wide v2, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    iget-wide v4, v1, Lcom/android/email/activity/MessageListItem;->mMailboxId:J

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/email/activity/MessageList;->onOpenMessage(JJ)V

    goto :goto_0

    .line 2613
    :sswitch_1
    iget-boolean v2, v1, Lcom/android/email/activity/MessageListItem;->mSms:Z

    if-eqz v2, :cond_0

    .line 2614
    iget-wide v2, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    iget-wide v4, v1, Lcom/android/email/activity/MessageListItem;->mAccountId:J

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/email/activity/MessageList;->onDeleteSmsPopup(JJ)V

    goto :goto_0

    .line 2616
    :cond_0
    iget-wide v2, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    iget-wide v4, v1, Lcom/android/email/activity/MessageListItem;->mAccountId:J

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/email/activity/MessageList;->onDeletePopup(JJ)V

    goto :goto_0

    .line 2619
    :sswitch_2
    iget-wide v2, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    invoke-direct {p0, v2, v3}, Lcom/android/email/activity/MessageList;->onReply(J)V

    goto :goto_0

    .line 2622
    :sswitch_3
    iget-wide v2, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    invoke-direct {p0, v2, v3}, Lcom/android/email/activity/MessageList;->onReplyAll(J)V

    goto :goto_0

    .line 2625
    :sswitch_4
    iget-wide v2, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    invoke-direct {p0, v2, v3}, Lcom/android/email/activity/MessageList;->onForward(J)V

    goto :goto_0

    .line 2628
    :sswitch_5
    iget-boolean v2, v1, Lcom/android/email/activity/MessageListItem;->mFavorite:Z

    if-eqz v2, :cond_1

    .line 2629
    iget-object v2, p0, Lcom/android/email/activity/MessageList;->mListAdapter:Lcom/android/email/activity/MessageList$MessageListAdapter;

    invoke-virtual {v2, v1, v5}, Lcom/android/email/activity/MessageList$MessageListAdapter;->updateFavorite(Lcom/android/email/activity/MessageListItem;Z)V

    goto :goto_0

    .line 2631
    :cond_1
    iget-object v2, p0, Lcom/android/email/activity/MessageList;->mListAdapter:Lcom/android/email/activity/MessageList$MessageListAdapter;

    invoke-virtual {v2, v1, v6}, Lcom/android/email/activity/MessageList$MessageListAdapter;->updateFavorite(Lcom/android/email/activity/MessageListItem;Z)V

    goto :goto_0

    .line 2635
    :sswitch_6
    iget-wide v2, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    invoke-direct {p0, v2, v3}, Lcom/android/email/activity/MessageList;->onFollowUpFlag(J)V

    goto :goto_0

    .line 2638
    :sswitch_7
    iget-wide v2, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    iget-boolean v4, v1, Lcom/android/email/activity/MessageListItem;->mRead:Z

    if-nez v4, :cond_2

    move v4, v6

    :goto_1
    invoke-direct {p0, v2, v3, v4}, Lcom/android/email/activity/MessageList;->onSetMessageRead(JZ)V

    goto :goto_0

    :cond_2
    move v4, v5

    goto :goto_1

    .line 2666
    :sswitch_8
    iget v2, v1, Lcom/android/email/activity/MessageListItem;->mConvThreadId:I

    int-to-long v2, v2

    iget-object v4, v1, Lcom/android/email/activity/MessageListItem;->mConvId:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v4}, Lcom/android/email/activity/MessageList;->onSetConversationMoveAlways(JLjava/lang/String;)V

    goto :goto_0

    .line 2669
    :sswitch_9
    iget v2, v1, Lcom/android/email/activity/MessageListItem;->mConvThreadId:I

    int-to-long v2, v2

    iget-object v4, v1, Lcom/android/email/activity/MessageListItem;->mConvId:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v4}, Lcom/android/email/activity/MessageList;->onIgnoreConversation(JLjava/lang/String;)V

    goto/16 :goto_0

    .line 2672
    :sswitch_a
    iget-object v2, v1, Lcom/android/email/activity/MessageListItem;->mConvId:Ljava/lang/String;

    iget-wide v3, v1, Lcom/android/email/activity/MessageListItem;->mMailboxId:J

    invoke-direct {p0, v2, v3, v4, v6}, Lcom/android/email/activity/MessageList;->onSetConversationRead(Ljava/lang/String;JZ)V

    goto/16 :goto_0

    .line 2675
    :sswitch_b
    iget-object v2, v1, Lcom/android/email/activity/MessageListItem;->mConvId:Ljava/lang/String;

    iget-wide v3, v1, Lcom/android/email/activity/MessageListItem;->mMailboxId:J

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/email/activity/MessageList;->onSetConversationUnread(Ljava/lang/String;JZ)V

    goto/16 :goto_0

    .line 2678
    :sswitch_c
    iget-object v2, v1, Lcom/android/email/activity/MessageListItem;->mConvId:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageList;->onSearchConversation(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2683
    :sswitch_d
    iget v2, v1, Lcom/android/email/activity/MessageListItem;->mConvThreadId:I

    int-to-long v2, v2

    invoke-direct {p0, v2, v3}, Lcom/android/email/activity/MessageList;->onMoveConversation(J)V

    goto/16 :goto_0

    .line 2687
    :sswitch_e
    iget-boolean v2, v1, Lcom/android/email/activity/MessageListItem;->mSms:Z

    if-eqz v2, :cond_3

    .line 2689
    iget v2, v1, Lcom/android/email/activity/MessageListItem;->mConvThreadId:I

    int-to-long v2, v2

    iget-wide v4, v1, Lcom/android/email/activity/MessageListItem;->mAccountId:J

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/email/activity/MessageList;->onDeleteSmsConversation(JJ)V

    goto/16 :goto_0

    .line 2693
    :cond_3
    iget v2, v1, Lcom/android/email/activity/MessageListItem;->mConvThreadId:I

    int-to-long v2, v2

    iget-wide v4, v1, Lcom/android/email/activity/MessageListItem;->mAccountId:J

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/email/activity/MessageList;->onDeleteConversation(JJ)V

    goto/16 :goto_0

    .line 2699
    :sswitch_f
    iget v2, v1, Lcom/android/email/activity/MessageListItem;->mConvThreadId:I

    int-to-long v2, v2

    iget-wide v4, v1, Lcom/android/email/activity/MessageListItem;->mAccountId:J

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/email/activity/MessageList;->onFollowUpFlagConv(JJ)V

    goto/16 :goto_0

    .line 2606
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f070108 -> :sswitch_6
        0x7f07017e -> :sswitch_8
        0x7f07017f -> :sswitch_9
        0x7f070180 -> :sswitch_a
        0x7f070181 -> :sswitch_b
        0x7f070182 -> :sswitch_c
        0x7f070183 -> :sswitch_d
        0x7f070184 -> :sswitch_e
        0x7f070185 -> :sswitch_f
        0x7f070187 -> :sswitch_0
        0x7f070188 -> :sswitch_1
        0x7f070189 -> :sswitch_4
        0x7f07018a -> :sswitch_3
        0x7f07018b -> :sswitch_2
        0x7f07018c -> :sswitch_7
        0x7f070198 -> :sswitch_5
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter

    .prologue
    const/4 v9, -0x1

    const-wide/16 v6, -0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v8, "MessageList >>"

    .line 612
    invoke-super {p0, p1}, Lcom/android/email/winset/TwTabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 614
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mController:Lcom/android/email/Controller;

    iget-object v1, p0, Lcom/android/email/activity/MessageList;->mControllerCallback:Lcom/android/email/activity/MessageList$ControllerResults;

    invoke-virtual {v0, v1}, Lcom/android/email/Controller;->addResultCallback(Lcom/android/email/Controller$Result;)V

    .line 616
    const-string v0, "MessageList >>"

    const-string v0, "onCreate ----------------------------------------- mirror branch"

    invoke-static {v8, v0}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    invoke-virtual {p0}, Lcom/android/email/activity/MessageList;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.email.activity.MAILBOX_ID"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    .line 622
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->DPMReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/MessageList;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 623
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "11111 MessageList.java >>>>> onCreate()  >>>>> 528"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 626
    iget-wide v0, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/MessageList;->setMailboxInfo(J)V

    .line 627
    iget-wide v0, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    cmp-long v0, v0, v6

    if-lez v0, :cond_1

    .line 629
    invoke-virtual {p0, v5}, Lcom/android/email/activity/MessageList;->requestWindowFeature(I)Z

    .line 635
    :goto_0
    const v0, 0x7f03002f

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageList;->setContentView(I)V

    .line 638
    iget-wide v0, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    cmp-long v0, v0, v6

    if-lez v0, :cond_2

    .line 639
    invoke-virtual {p0}, Lcom/android/email/activity/MessageList;->getTabHost()Lcom/android/email/winset/TwTabHost;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mTabHost:Lcom/android/email/winset/TwTabHost;

    .line 640
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mTabHost:Lcom/android/email/winset/TwTabHost;

    invoke-virtual {v0}, Lcom/android/email/winset/TwTabHost;->clearAllTabs()V

    .line 641
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mTabHost:Lcom/android/email/winset/TwTabHost;

    invoke-virtual {v0, p0}, Lcom/android/email/winset/TwTabHost;->setOnTabChangedListener(Lcom/android/email/winset/TwTabHost$OnTabChangeListener;)V

    .line 643
    const v0, 0x7f0700f1

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mRightTitle:Landroid/widget/TextView;

    .line 644
    const v0, 0x7f0700f2

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mProgressIcon:Landroid/widget/ProgressBar;

    .line 654
    :goto_1
    const v0, 0x7f0700f0

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mRightTitle_Layout:Landroid/widget/LinearLayout;

    .line 656
    iput-boolean v4, p0, Lcom/android/email/activity/MessageList;->mAdapterIsChanged:Z

    .line 658
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mMessageListCursor:Landroid/database/Cursor;

    .line 659
    iput-boolean v5, p0, Lcom/android/email/activity/MessageList;->mCanAutoRefresh:Z

    .line 660
    const v0, 0x7f0700f5

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/email/winset/EmailListView;

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mListView:Lcom/android/email/winset/EmailListView;

    .line 661
    invoke-virtual {p0}, Lcom/android/email/activity/MessageList;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 662
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v5, :cond_3

    iget-wide v0, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    cmp-long v0, v0, v6

    if-eqz v0, :cond_3

    iget-wide v0, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    const-wide/16 v2, -0x3

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-wide v0, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    const-wide/16 v2, -0x5

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-wide v0, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    const-wide/16 v2, -0x6

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    .line 668
    const v0, 0x7f0700fc

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mMultiSelectPanel:Landroid/view/View;

    .line 669
    const v0, 0x7f0700fd

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mReadUnreadButton:Landroid/widget/Button;

    .line 670
    const v0, 0x7f0700fe

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mFavoriteButton:Landroid/widget/Button;

    .line 671
    const v0, 0x7f0700ff

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mFlagButton:Landroid/widget/Button;

    .line 672
    const v0, 0x7f070100

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mDeleteButton:Landroid/widget/Button;

    .line 673
    const v0, 0x7f070101

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mMoveButton:Landroid/widget/Button;

    .line 686
    :goto_2
    const v0, 0x7f070059

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mErrorBanner:Landroid/widget/TextView;

    .line 688
    new-instance v0, Lcom/android/email/activity/MessageList$ProgressDialogForMessageMove;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MessageList$ProgressDialogForMessageMove;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mProgressDialog:Lcom/android/email/activity/MessageList$ProgressDialogForMessageMove;

    .line 689
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mProgressDialog:Lcom/android/email/activity/MessageList$ProgressDialogForMessageMove;

    invoke-virtual {v0, v5}, Lcom/android/email/activity/MessageList$ProgressDialogForMessageMove;->setIndeterminate(Z)V

    .line 690
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mProgressDialog:Lcom/android/email/activity/MessageList$ProgressDialogForMessageMove;

    invoke-virtual {v0, v4}, Lcom/android/email/activity/MessageList$ProgressDialogForMessageMove;->setProgressStyle(I)V

    .line 691
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mProgressDialog:Lcom/android/email/activity/MessageList$ProgressDialogForMessageMove;

    const v1, 0x7f0800f2

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageList$ProgressDialogForMessageMove;->setMessage(Ljava/lang/CharSequence;)V

    .line 692
    iput-boolean v4, p0, Lcom/android/email/activity/MessageList;->mMoveDialogVisible:Z

    .line 695
    const v0, 0x7f070094

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mEmptyListBanner:Landroid/widget/TextView;

    .line 697
    const v0, 0x7f0700b5

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 698
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mReadUnreadButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 699
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mFavoriteButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 700
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mFlagButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 701
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mDeleteButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 702
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMoveButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 704
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mListView:Lcom/android/email/winset/EmailListView;

    invoke-virtual {v0, p0}, Lcom/android/email/winset/EmailListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 705
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mListView:Lcom/android/email/winset/EmailListView;

    invoke-virtual {v0, v5}, Lcom/android/email/winset/EmailListView;->setItemsCanFocus(Z)V

    .line 706
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mListView:Lcom/android/email/winset/EmailListView;

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageList;->registerForContextMenu(Landroid/view/View;)V

    .line 708
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mListAdapter:Lcom/android/email/activity/MessageList$MessageListAdapter;

    if-nez v0, :cond_0

    .line 709
    new-instance v0, Lcom/android/email/activity/MessageList$MessageListAdapter;

    invoke-direct {v0, p0, p0}, Lcom/android/email/activity/MessageList$MessageListAdapter;-><init>(Lcom/android/email/activity/MessageList;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mListAdapter:Lcom/android/email/activity/MessageList$MessageListAdapter;

    .line 712
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mListView:Lcom/android/email/winset/EmailListView;

    iget-object v1, p0, Lcom/android/email/activity/MessageList;->mListAdapter:Lcom/android/email/activity/MessageList$MessageListAdapter;

    invoke-virtual {v0, v1}, Lcom/android/email/winset/EmailListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 714
    iput v9, p0, Lcom/android/email/activity/MessageList;->mIsEAS:I

    .line 718
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mListAdapter:Lcom/android/email/activity/MessageList$MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageList$MessageListAdapter;->getTextSizeValue()I

    move-result v0

    .line 719
    if-eq v0, v9, :cond_4

    .line 721
    const-string v1, "MessageList >>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MessageList Loaded TextSize = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    iget-object v1, p0, Lcom/android/email/activity/MessageList;->mListAdapter:Lcom/android/email/activity/MessageList$MessageListAdapter;

    invoke-virtual {v1, v0}, Lcom/android/email/activity/MessageList$MessageListAdapter;->updateTextSize(I)V

    .line 723
    sput v0, Lcom/android/email/activity/MessageList;->mTextSize:I

    .line 733
    :goto_3
    iput-object p0, p0, Lcom/android/email/activity/MessageList;->mMsgList:Lcom/android/email/activity/MessageList;

    .line 735
    invoke-virtual {p0}, Lcom/android/email/activity/MessageList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mResolver:Landroid/content/ContentResolver;

    .line 745
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.EMAILSEARCH_COMPLETED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 746
    iget-object v1, p0, Lcom/android/email/activity/MessageList;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/email/activity/MessageList;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 750
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ITEM_ESTIMATE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 751
    iget-object v1, p0, Lcom/android/email/activity/MessageList;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/email/activity/MessageList;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 755
    sput v4, Lcom/android/email/activity/MessageList;->mSortType:I

    .line 756
    iput v4, p0, Lcom/android/email/activity/MessageList;->mLastSortType:I

    .line 757
    const-string v0, "timeStamp COLLATE NOCASE DESC"

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mSortQuery:Ljava/lang/String;

    .line 765
    const-string v0, "AndroidMail.MessageList"

    invoke-virtual {p0, v0, v4}, Lcom/android/email/activity/MessageList;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 766
    if-eqz v0, :cond_5

    .line 767
    const-string v1, "prefer_view_mode"

    sget v2, Lcom/android/email/activity/MessageList;->VIEW_MODE_STANDARD:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/MessageList;->mViewModeType:I

    .line 776
    :goto_4
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const v1, 0x7f080169

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageList;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const v1, 0x7f080115

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageList;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const/4 v1, 0x2

    const v2, 0x7f080168

    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageList;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const v2, 0x7f080116

    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageList;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mSearchListString:[Ljava/lang/String;

    .line 782
    const v0, 0x1020013

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/email/winset/TwTabWidget;

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mFlipper:Lcom/android/email/winset/TwTabWidget;

    .line 783
    const v0, 0x7f0700ed

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mFlipper2:Landroid/widget/LinearLayout;

    .line 785
    const v0, 0x7f0700ee

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mSearchType:Landroid/widget/TextView;

    .line 786
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mSearchType:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 787
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mSearchType:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/email/activity/MessageList;->mSearchListString:[Ljava/lang/String;

    sget v2, Lcom/android/email/activity/MessageList;->sSelectedSearchType:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 788
    const v0, 0x7f0700ed

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mTitleSearchBar:Landroid/widget/LinearLayout;

    .line 790
    const v0, 0x7f0700ef

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    sput-object v0, Lcom/android/email/activity/MessageList;->mSearchBar:Landroid/widget/EditText;

    .line 791
    sget-object v0, Lcom/android/email/activity/MessageList;->mSearchBar:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 796
    sget-object v0, Lcom/android/email/activity/MessageList;->mSearchBar:Landroid/widget/EditText;

    new-instance v1, Lcom/android/email/activity/MessageList$1;

    invoke-direct {v1, p0}, Lcom/android/email/activity/MessageList$1;-><init>(Lcom/android/email/activity/MessageList;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 813
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageList;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    .line 816
    return-void

    .line 633
    :cond_1
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageList;->requestWindowFeature(I)Z

    goto/16 :goto_0

    .line 646
    :cond_2
    const v0, 0x7f0700f0

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 647
    const v0, 0x1020013

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 649
    invoke-virtual {p0}, Lcom/android/email/activity/MessageList;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x7

    const v2, 0x7f030028

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFeatureInt(II)V

    .line 651
    const v0, 0x7f0700b6

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mProgressIcon:Landroid/widget/ProgressBar;

    .line 652
    const v0, 0x7f0700b3

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mRightTitle:Landroid/widget/TextView;

    goto/16 :goto_1

    .line 677
    :cond_3
    const v0, 0x7f0700f6

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mMultiSelectPanel:Landroid/view/View;

    .line 678
    const v0, 0x7f0700f7

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mReadUnreadButton:Landroid/widget/Button;

    .line 679
    const v0, 0x7f0700f8

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mFavoriteButton:Landroid/widget/Button;

    .line 680
    const v0, 0x7f0700f9

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mFlagButton:Landroid/widget/Button;

    .line 681
    const v0, 0x7f0700fa

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mDeleteButton:Landroid/widget/Button;

    .line 682
    const v0, 0x7f0700fb

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mMoveButton:Landroid/widget/Button;

    goto/16 :goto_2

    .line 727
    :cond_4
    sput v5, Lcom/android/email/activity/MessageList;->mTextSize:I

    .line 728
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mListAdapter:Lcom/android/email/activity/MessageList$MessageListAdapter;

    sget v1, Lcom/android/email/activity/MessageList;->mTextSize:I

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageList$MessageListAdapter;->updateTextSize(I)V

    .line 729
    const-string v0, "MessageList >>"

    const-string v0, "MessageList Default TextSize(medium) = 1"

    invoke-static {v8, v0}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 770
    :cond_5
    sget v0, Lcom/android/email/activity/MessageList;->VIEW_MODE_STANDARD:I

    iput v0, p0, Lcom/android/email/activity/MessageList;->mViewModeType:I

    goto/16 :goto_4
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 21
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2294
    invoke-super/range {p0 .. p3}, Lcom/android/email/winset/TwTabActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 2296
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 2298
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList;->mListFooterView:Landroid/view/View;

    move-object v4, v0

    if-eq v3, v4, :cond_0

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList;->mListFooterEmptyView:Landroid/view/View;

    move-object v4, v0

    if-eq v3, v4, :cond_0

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    move-object v3, v0

    instance-of v3, v3, Landroid/widget/TextView;

    if-eqz v3, :cond_1

    .line 2598
    :cond_0
    :goto_0
    return-void

    .line 2302
    :cond_1
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    move-object/from16 p2, v0

    check-cast p2, Lcom/android/email/activity/MessageListItem;

    .line 2304
    const/4 v3, 0x0

    .line 2306
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MessageList;->mViewModeType:I

    move v4, v0

    sget v5, Lcom/android/email/activity/MessageList;->VIEW_MODE_CONVERSATION:I

    if-ne v4, v5, :cond_2

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/activity/MessageList;->mVersionDouble:D

    move-wide v4, v0

    const-wide/high16 v6, 0x402c

    cmpg-double v4, v4, v6

    if-ltz v4, :cond_3

    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MessageList;->mViewModeType:I

    move v4, v0

    sget v5, Lcom/android/email/activity/MessageList;->VIEW_MODE_CONVERSATION:I

    if-ne v4, v5, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MessageList;->mCombinedFlag:I

    move v4, v0

    const/4 v5, 0x1

    if-ne v4, v5, :cond_9

    .line 2307
    :cond_3
    const-string v4, "MessageList >>"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCreateContextMenu(): info.id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    iget-wide v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    move-wide v6, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 2308
    const-string v4, "MessageList >>"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCreateContextMenu(): itemView.mMessageId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/email/activity/MessageListItem;->mMessageId:J

    move-wide v6, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 2309
    move-object/from16 v0, p3

    iget-wide v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    move-wide v4, v0

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-ltz v4, :cond_0

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/email/activity/MessageListItem;->mMessageId:J

    move-wide v4, v0

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-ltz v4, :cond_0

    :cond_4
    move v9, v3

    .line 2324
    :goto_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList;->mListView:Lcom/android/email/winset/EmailListView;

    move-object v3, v0

    move-object/from16 v0, p3

    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    move v4, v0

    invoke-virtual {v3, v4}, Lcom/android/email/winset/EmailListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/database/Cursor;

    .line 2325
    const/4 v3, 0x4

    move-object/from16 v0, p3

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2326
    const/16 v4, 0x10

    move-object/from16 v0, p3

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    and-int/lit16 v4, v4, 0x100

    const/16 v5, 0x100

    if-ne v4, v5, :cond_a

    const/4 v4, 0x1

    move v10, v4

    .line 2327
    :goto_2
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Value of sMS flag is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2333
    const/4 v4, 0x0

    .line 2334
    if-nez v9, :cond_21

    .line 2335
    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/email/activity/MessageListItem;->mMessageId:J

    move-wide v4, v0

    move-object/from16 v0, p0

    move-wide v1, v4

    invoke-static {v0, v1, v2}, Lcom/android/email/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Message;

    move-result-object v4

    .line 2338
    if-eqz v4, :cond_b

    .line 2339
    iget-object v5, v4, Lcom/android/email/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/email/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/email/mail/Address;

    move-result-object v5

    invoke-static {v5}, Lcom/android/email/mail/Address;->toFriendly1([Lcom/android/email/mail/Address;)I

    move-result v5

    .line 2340
    iget-object v4, v4, Lcom/android/email/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/email/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/email/mail/Address;

    move-result-object v4

    invoke-static {v4}, Lcom/android/email/mail/Address;->toFriendly1([Lcom/android/email/mail/Address;)I

    move-result v4

    .line 2346
    add-int/2addr v4, v5

    move v11, v4

    .line 2348
    :goto_3
    move-object/from16 v0, p1

    move-object v1, v3

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 2351
    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/email/activity/MessageListItem;->mMailboxId:J

    move-wide v3, v0

    move-object/from16 v0, p0

    move-wide v1, v3

    invoke-static {v0, v1, v2}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v12

    .line 2354
    const/4 v13, -0x1

    .line 2355
    const/4 v3, -0x1

    .line 2356
    const/4 v14, 0x0

    .line 2358
    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 2359
    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/email/activity/MessageListItem;->mAccountId:J

    move-wide v4, v0

    move-object/from16 v0, p0

    move-wide v1, v4

    invoke-static {v0, v1, v2}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v4

    .line 2361
    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/email/activity/MessageListItem;->mAccountId:J

    move-wide v5, v0

    move-object/from16 v0, p0

    move-wide v1, v5

    invoke-direct {v0, v1, v2}, Lcom/android/email/activity/MessageList;->IsEAS_account(J)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 2362
    iget-object v4, v4, Lcom/android/email/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v15

    .line 2363
    invoke-virtual {v15}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const-wide/high16 v6, 0x402c

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_20

    const/4 v4, 0x1

    if-ne v9, v4, :cond_20

    .line 2364
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/email/activity/MessageListItem;->mConvId:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 2367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList;->mResolver:Landroid/content/ContentResolver;

    move-object v3, v0

    sget-object v4, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/android/email/provider/EmailContent$Message;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v6, "conversationId =? AND mailboxKey=?"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v16, v7, v8

    const/4 v8, 0x1

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/email/activity/MessageListItem;->mMailboxId:J

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v7, v8

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 2374
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList;->mResolver:Landroid/content/ContentResolver;

    move-object v3, v0

    sget-object v4, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/android/email/provider/EmailContent$Message;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v6, "conversationId =? AND mailboxKey=? AND flagRead=?"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v16, v7, v8

    const/4 v8, 0x1

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/email/activity/MessageListItem;->mMailboxId:J

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v7, v8

    const/4 v8, 0x2

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v7, v8

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 2385
    if-eqz v17, :cond_1f

    .line 2386
    :try_start_1
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2387
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->getCount()I

    move-result v4

    .line 2390
    :goto_4
    if-eqz v3, :cond_c

    .line 2391
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2392
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    .line 2397
    :goto_5
    if-eqz v17, :cond_5

    .line 2398
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 2401
    :cond_5
    if-eqz v3, :cond_6

    .line 2402
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_6
    move-object v3, v15

    move/from16 v20, v5

    move v5, v4

    move/from16 v4, v20

    .line 2412
    :goto_6
    iget v6, v12, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    sparse-switch v6, :sswitch_data_0

    .line 2485
    if-nez v9, :cond_18

    .line 2486
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MessageList;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v3

    const v4, 0x7f0d000c

    move-object v0, v3

    move v1, v4

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 2489
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/android/email/activity/MessageListItem;->mRead:Z

    move v3, v0

    if-eqz v3, :cond_7

    .line 2490
    const v3, 0x7f07018c

    move-object/from16 v0, p1

    move v1, v3

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x7f080033

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 2493
    :cond_7
    const/4 v3, 0x1

    if-le v11, v3, :cond_14

    .line 2494
    const v3, 0x7f07018a

    move-object/from16 v0, p1

    move v1, v3

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2510
    :goto_7
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    move-wide v3, v0

    const-wide/16 v5, -0x2

    cmp-long v3, v3, v5

    if-nez v3, :cond_8

    .line 2513
    invoke-virtual/range {p2 .. p2}, Lcom/android/email/activity/MessageListItem;->IsEAS()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 2514
    const v3, 0x7f070108

    move-object/from16 v0, p1

    move v1, v3

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2524
    :cond_8
    :goto_8
    const v3, 0x7f070189

    move-object/from16 v0, p1

    move v1, v3

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    if-nez v10, :cond_16

    const/4 v4, 0x1

    :goto_9
    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2525
    const v3, 0x7f07018b

    move-object/from16 v0, p1

    move v1, v3

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    if-nez v10, :cond_17

    const/4 v4, 0x1

    :goto_a
    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 2310
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MessageList;->mViewModeType:I

    move v4, v0

    sget v5, Lcom/android/email/activity/MessageList;->VIEW_MODE_CONVERSATION:I

    if-ne v4, v5, :cond_4

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/activity/MessageList;->mVersionDouble:D

    move-wide v4, v0

    const-wide/high16 v6, 0x402c

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_4

    .line 2313
    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/email/activity/MessageListItem;->mMessageId:J

    move-wide v4, v0

    const-wide/16 v6, -0x2

    cmp-long v4, v4, v6

    if-nez v4, :cond_4

    .line 2314
    const/4 v3, 0x1

    move v9, v3

    goto/16 :goto_1

    .line 2326
    :cond_a
    const/4 v4, 0x0

    move v10, v4

    goto/16 :goto_2

    .line 2328
    :catch_0
    move-exception v3

    .line 2329
    const-string v3, "MessageList >>"

    const-string v4, "onCreateContextMenu-----"

    invoke-static {v3, v4}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2343
    :cond_b
    const-string v3, "MessageList >>"

    const-string v4, "onCreateContextMenu-----No Selected Message"

    invoke-static {v3, v4}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2394
    :cond_c
    const/4 v5, 0x0

    goto/16 :goto_5

    .line 2397
    :catchall_0
    move-exception v4

    if-eqz v17, :cond_d

    .line 2398
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 2401
    :cond_d
    if-eqz v3, :cond_e

    .line 2402
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 2397
    :cond_e
    throw v4

    .line 2408
    :cond_f
    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    move v5, v13

    move/from16 v20, v3

    move-object v3, v4

    move/from16 v4, v20

    goto/16 :goto_6

    .line 2415
    :sswitch_0
    if-nez v9, :cond_0

    .line 2416
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MessageList;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v3

    const v4, 0x7f0d000d

    move-object v0, v3

    move v1, v4

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto/16 :goto_0

    .line 2420
    :sswitch_1
    if-nez v9, :cond_0

    .line 2421
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MessageList;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v3

    const v4, 0x7f0d000e

    move-object v0, v3

    move v1, v4

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto/16 :goto_0

    .line 2425
    :sswitch_2
    if-nez v9, :cond_10

    .line 2426
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MessageList;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v3

    const v4, 0x7f0d0011

    move-object v0, v3

    move v1, v4

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto/16 :goto_0

    .line 2429
    :cond_10
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    const-wide/high16 v5, 0x402c

    cmpl-double v3, v3, v5

    if-ltz v3, :cond_0

    .line 2430
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MessageList;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v3

    const v4, 0x7f0d0005

    move-object v0, v3

    move v1, v4

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 2431
    iget-wide v3, v12, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    move-object/from16 v0, p0

    move-wide v1, v3

    invoke-static {v0, v1, v2}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v3

    .line 2433
    if-eqz v3, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList;->mController:Lcom/android/email/Controller;

    move-object v4, v0

    invoke-virtual {v4, v3}, Lcom/android/email/Controller;->isMessagingController(Lcom/android/email/provider/EmailContent$Account;)Z

    move-result v4

    if-nez v4, :cond_11

    .line 2436
    const v4, 0x7f07017e

    move-object/from16 v0, p1

    move v1, v4

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2437
    const v4, 0x7f070183

    move-object/from16 v0, p1

    move v1, v4

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2438
    const v4, 0x7f070184

    move-object/from16 v0, p1

    move v1, v4

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2439
    const v4, 0x7f070185

    move-object/from16 v0, p1

    move v1, v4

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2440
    const v4, 0x7f07017f

    move-object/from16 v0, p1

    move v1, v4

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2443
    const v4, 0x7f070181

    move-object/from16 v0, p1

    move v1, v4

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    const v5, 0x7f08001a

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2446
    const v4, 0x7f070180

    move-object/from16 v0, p1

    move v1, v4

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    const v5, 0x7f080019

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2457
    :cond_11
    if-eqz v3, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList;->mController:Lcom/android/email/Controller;

    move-object v4, v0

    invoke-virtual {v4, v3}, Lcom/android/email/Controller;->isMessagingController(Lcom/android/email/provider/EmailContent$Account;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 2460
    const v3, 0x7f070182

    move-object/from16 v0, p1

    move v1, v3

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2466
    :cond_12
    const v3, 0x7f070183

    move-object/from16 v0, p1

    move v1, v3

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    if-nez v10, :cond_13

    const/4 v4, 0x1

    :goto_b
    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    :cond_13
    const/4 v4, 0x0

    goto :goto_b

    .line 2473
    :sswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MessageList;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v3

    const v4, 0x7f0d000f

    move-object v0, v3

    move v1, v4

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto/16 :goto_0

    .line 2479
    :sswitch_4
    if-nez v9, :cond_0

    .line 2480
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MessageList;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v3

    const v4, 0x7f0d0010

    move-object v0, v3

    move v1, v4

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto/16 :goto_0

    .line 2497
    :cond_14
    const v3, 0x7f07018a

    move-object/from16 v0, p1

    move v1, v3

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_7

    .line 2516
    :cond_15
    const v3, 0x7f070198

    move-object/from16 v0, p1

    move v1, v3

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2517
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/android/email/activity/MessageListItem;->mFavorite:Z

    move v3, v0

    if-eqz v3, :cond_8

    .line 2518
    const v3, 0x7f070198

    move-object/from16 v0, p1

    move v1, v3

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x7f080027

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto/16 :goto_8

    .line 2524
    :cond_16
    const/4 v4, 0x0

    goto/16 :goto_9

    .line 2525
    :cond_17
    const/4 v4, 0x0

    goto/16 :goto_a

    .line 2530
    :cond_18
    iget v6, v12, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    const/16 v7, 0x8

    if-eq v6, v7, :cond_0

    .line 2535
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MessageList;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v6

    const v7, 0x7f0d0005

    move-object v0, v6

    move v1, v7

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 2536
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    const-wide/high16 v8, 0x402c

    cmpl-double v3, v6, v8

    if-ltz v3, :cond_1b

    .line 2537
    iget v3, v12, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    const/4 v6, 0x3

    if-eq v3, v6, :cond_19

    iget v3, v12, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    const/4 v6, 0x4

    if-eq v3, v6, :cond_19

    iget v3, v12, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    const/4 v6, 0x5

    if-eq v3, v6, :cond_19

    .line 2540
    iget-wide v6, v12, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    move-object/from16 v0, p0

    move-wide v1, v6

    invoke-static {v0, v1, v2}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v3

    .line 2542
    if-eqz v3, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList;->mController:Lcom/android/email/Controller;

    move-object v6, v0

    invoke-virtual {v6, v3}, Lcom/android/email/Controller;->isMessagingController(Lcom/android/email/provider/EmailContent$Account;)Z

    move-result v3

    if-nez v3, :cond_19

    .line 2545
    const v3, 0x7f07017e

    move-object/from16 v0, p1

    move v1, v3

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    const/4 v6, 0x1

    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2546
    const v3, 0x7f070183

    move-object/from16 v0, p1

    move v1, v3

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    const/4 v6, 0x1

    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2547
    const v3, 0x7f070184

    move-object/from16 v0, p1

    move v1, v3

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    const/4 v6, 0x1

    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2548
    const v3, 0x7f070185

    move-object/from16 v0, p1

    move v1, v3

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    const/4 v6, 0x1

    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2549
    const v3, 0x7f07017f

    move-object/from16 v0, p1

    move v1, v3

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    const/4 v6, 0x1

    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2559
    :cond_19
    iget-wide v6, v12, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    move-object/from16 v0, p0

    move-wide v1, v6

    invoke-static {v0, v1, v2}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v3

    .line 2561
    if-eqz v3, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList;->mController:Lcom/android/email/Controller;

    move-object v6, v0

    invoke-virtual {v6, v3}, Lcom/android/email/Controller;->isMessagingController(Lcom/android/email/provider/EmailContent$Account;)Z

    move-result v3

    if-nez v3, :cond_1a

    .line 2564
    const v3, 0x7f070182

    move-object/from16 v0, p1

    move v1, v3

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    const/4 v6, 0x1

    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2576
    :cond_1a
    if-nez v4, :cond_1c

    .line 2577
    const v3, 0x7f070181

    move-object/from16 v0, p1

    move v1, v3

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x7f08001a

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2593
    :cond_1b
    :goto_c
    const v3, 0x7f070183

    move-object/from16 v0, p1

    move v1, v3

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    if-nez v10, :cond_1e

    const/4 v4, 0x1

    :goto_d
    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 2580
    :cond_1c
    if-ne v5, v4, :cond_1d

    .line 2581
    const v3, 0x7f070180

    move-object/from16 v0, p1

    move v1, v3

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x7f080019

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_c

    .line 2585
    :cond_1d
    const v3, 0x7f070181

    move-object/from16 v0, p1

    move v1, v3

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x7f08001a

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2588
    const v3, 0x7f070180

    move-object/from16 v0, p1

    move v1, v3

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x7f080019

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_c

    .line 2593
    :cond_1e
    const/4 v4, 0x0

    goto :goto_d

    :cond_1f
    move v4, v13

    goto/16 :goto_4

    :cond_20
    move v4, v3

    move v5, v13

    move-object v3, v15

    goto/16 :goto_6

    :cond_21
    move v11, v4

    goto/16 :goto_3

    .line 2412
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x4 -> :sswitch_1
        0x6 -> :sswitch_2
        0x8 -> :sswitch_3
        0x61 -> :sswitch_4
    .end sparse-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 1826
    invoke-super {p0, p1}, Lcom/android/email/winset/TwTabActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 1828
    iget-wide v0, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 1829
    invoke-virtual {p0}, Lcom/android/email/activity/MessageList;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0014

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    :goto_0
    move v0, v4

    .line 1848
    :goto_1
    return v0

    .line 1834
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    if-nez v0, :cond_1

    .line 1835
    iget-wide v0, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    invoke-static {p0, v0, v1}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    .line 1836
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    if-nez v0, :cond_1

    .line 1837
    const-string v0, "MessageList >>"

    const-string v1, "onCreateOptionMenu : mMailbox is null."

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 1838
    const/4 v0, 0x0

    goto :goto_1

    .line 1841
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    move v0, v4

    .line 1842
    goto :goto_1

    .line 1845
    :cond_2
    invoke-virtual {p0}, Lcom/android/email/activity/MessageList;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0012

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1368
    invoke-super {p0}, Lcom/android/email/winset/TwTabActivity;->onDestroy()V

    .line 1370
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/email/activity/MessageList;->isStartedFromMailboxList:Z

    .line 1374
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "11111 MessageList.java >>>>> onDestroy()  >>>>> 998"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1375
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->DPMReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageList;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1380
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mLoadMessagesTask:Lcom/android/email/activity/MessageList$LoadMessagesTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mLoadMessagesTask:Lcom/android/email/activity/MessageList$LoadMessagesTask;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageList$LoadMessagesTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 1382
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mLoadMessagesTask:Lcom/android/email/activity/MessageList$LoadMessagesTask;

    invoke-virtual {v0, v3}, Lcom/android/email/activity/MessageList$LoadMessagesTask;->cancel(Z)Z

    .line 1383
    iput-object v2, p0, Lcom/android/email/activity/MessageList;->mLoadMessagesTask:Lcom/android/email/activity/MessageList$LoadMessagesTask;

    .line 1385
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mFindMailboxTask:Lcom/android/email/activity/MessageList$FindMailboxTask;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mFindMailboxTask:Lcom/android/email/activity/MessageList$FindMailboxTask;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageList$FindMailboxTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_1

    .line 1387
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mFindMailboxTask:Lcom/android/email/activity/MessageList$FindMailboxTask;

    invoke-virtual {v0, v3}, Lcom/android/email/activity/MessageList$FindMailboxTask;->cancel(Z)Z

    .line 1388
    iput-object v2, p0, Lcom/android/email/activity/MessageList;->mFindMailboxTask:Lcom/android/email/activity/MessageList$FindMailboxTask;

    .line 1390
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mSetTitleTask:Lcom/android/email/activity/MessageList$SetTitleTask;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mSetTitleTask:Lcom/android/email/activity/MessageList$SetTitleTask;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageList$SetTitleTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_2

    .line 1392
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mSetTitleTask:Lcom/android/email/activity/MessageList$SetTitleTask;

    invoke-virtual {v0, v3}, Lcom/android/email/activity/MessageList$SetTitleTask;->cancel(Z)Z

    .line 1393
    iput-object v2, p0, Lcom/android/email/activity/MessageList;->mSetTitleTask:Lcom/android/email/activity/MessageList$SetTitleTask;

    .line 1395
    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mSetFooterTask:Lcom/android/email/activity/MessageList$SetFooterTask;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mSetFooterTask:Lcom/android/email/activity/MessageList$SetFooterTask;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageList$SetFooterTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_3

    .line 1397
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mSetFooterTask:Lcom/android/email/activity/MessageList$SetFooterTask;

    invoke-virtual {v0, v3}, Lcom/android/email/activity/MessageList$SetFooterTask;->cancel(Z)Z

    .line 1398
    iput-object v2, p0, Lcom/android/email/activity/MessageList;->mSetFooterTask:Lcom/android/email/activity/MessageList$SetFooterTask;

    .line 1400
    :cond_3
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mFolderListTask:Lcom/android/email/activity/MessageList$RefreshFolderListTask;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mFolderListTask:Lcom/android/email/activity/MessageList$RefreshFolderListTask;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageList$RefreshFolderListTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_4

    .line 1402
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mFolderListTask:Lcom/android/email/activity/MessageList$RefreshFolderListTask;

    invoke-virtual {v0, v3}, Lcom/android/email/activity/MessageList$RefreshFolderListTask;->cancel(Z)Z

    .line 1403
    iput-object v2, p0, Lcom/android/email/activity/MessageList;->mFolderListTask:Lcom/android/email/activity/MessageList$RefreshFolderListTask;

    .line 1406
    :cond_4
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mProgressDialog:Lcom/android/email/activity/MessageList$ProgressDialogForMessageMove;

    if-eqz v0, :cond_5

    .line 1407
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mProgressDialog:Lcom/android/email/activity/MessageList$ProgressDialogForMessageMove;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageList$ProgressDialogForMessageMove;->dismiss()V

    .line 1410
    :cond_5
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMoveMessageTask:Lcom/android/email/activity/MessageList$MoveMessageTask;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMoveMessageTask:Lcom/android/email/activity/MessageList$MoveMessageTask;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageList$MoveMessageTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_6

    .line 1412
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMoveMessageTask:Lcom/android/email/activity/MessageList$MoveMessageTask;

    invoke-virtual {v0, v3}, Lcom/android/email/activity/MessageList$MoveMessageTask;->cancel(Z)Z

    .line 1413
    iput-object v2, p0, Lcom/android/email/activity/MessageList;->mMoveMessageTask:Lcom/android/email/activity/MessageList$MoveMessageTask;

    .line 1416
    :cond_6
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMessageListCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_7

    .line 1417
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMessageListCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1418
    iput-object v2, p0, Lcom/android/email/activity/MessageList;->mMessageListCursor:Landroid/database/Cursor;

    .line 1421
    :cond_7
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mListAdapter:Lcom/android/email/activity/MessageList$MessageListAdapter;

    if-eqz v0, :cond_8

    .line 1422
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mListAdapter:Lcom/android/email/activity/MessageList$MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageList$MessageListAdapter;->stopTimer()V

    .line 1423
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mListAdapter:Lcom/android/email/activity/MessageList$MessageListAdapter;

    invoke-virtual {v0, v2}, Lcom/android/email/activity/MessageList$MessageListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 1424
    iput-object v2, p0, Lcom/android/email/activity/MessageList;->mListAdapter:Lcom/android/email/activity/MessageList$MessageListAdapter;

    .line 1427
    :cond_8
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mListView:Lcom/android/email/winset/EmailListView;

    invoke-virtual {v0}, Lcom/android/email/winset/EmailListView;->invalidateViews()V

    .line 1428
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mListView:Lcom/android/email/winset/EmailListView;

    invoke-virtual {v0}, Lcom/android/email/winset/EmailListView;->invalidate()V

    .line 1430
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMoveMessageTask:Lcom/android/email/activity/MessageList$MoveMessageTask;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMoveMessageTask:Lcom/android/email/activity/MessageList$MoveMessageTask;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageList$MoveMessageTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_a

    .line 1431
    :cond_9
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mProgressDialog:Lcom/android/email/activity/MessageList$ProgressDialogForMessageMove;

    if-eqz v0, :cond_a

    .line 1432
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mProgressDialog:Lcom/android/email/activity/MessageList$ProgressDialogForMessageMove;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageList$ProgressDialogForMessageMove;->dismiss()V

    .line 1436
    :cond_a
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageList;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1439
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mController:Lcom/android/email/Controller;

    iget-object v1, p0, Lcom/android/email/activity/MessageList;->mControllerCallback:Lcom/android/email/activity/MessageList$ControllerResults;

    invoke-virtual {v0, v1}, Lcom/android/email/Controller;->removeResultCallback(Lcom/android/email/Controller$Result;)V

    .line 1441
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1656
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    instance-of v3, p2, Landroid/widget/TextView;

    if-eqz v3, :cond_1

    .line 1704
    :cond_0
    :goto_0
    return-void

    .line 1658
    :cond_1
    iget-object v3, p0, Lcom/android/email/activity/MessageList;->mListFooterView:Landroid/view/View;

    if-eq p2, v3, :cond_8

    iget-object v3, p0, Lcom/android/email/activity/MessageList;->mListFooterEmptyView:Landroid/view/View;

    if-eq p2, v3, :cond_8

    .line 1661
    :try_start_0
    move-object v0, p2

    check-cast v0, Lcom/android/email/activity/MessageListItem;

    move-object v2, v0

    .line 1663
    .local v2, itemView:Lcom/android/email/activity/MessageListItem;
    const-string v3, "MessageList >>"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onItemClick: clicked item id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1664
    const-string v3, "MessageList >>"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onItemClick: itemView.mMessageId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v2, Lcom/android/email/activity/MessageListItem;->mMessageId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1665
    const-string v3, "MessageList >>"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onItemClick: itemView.mThreadName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/email/activity/MessageListItem;->mThreadName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1667
    iget v3, p0, Lcom/android/email/activity/MessageList;->mViewModeType:I

    sget v4, Lcom/android/email/activity/MessageList;->VIEW_MODE_CONVERSATION:I

    if-ne v3, v4, :cond_2

    iget-wide v3, v2, Lcom/android/email/activity/MessageListItem;->mMessageId:J

    const-wide/16 v5, -0x2

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-wide v3, p0, Lcom/android/email/activity/MessageList;->mVersionDouble:D

    const-wide/high16 v5, 0x402c

    cmpg-double v3, v3, v5

    if-ltz v3, :cond_3

    :cond_2
    iget v3, p0, Lcom/android/email/activity/MessageList;->mViewModeType:I

    sget v4, Lcom/android/email/activity/MessageList;->VIEW_MODE_CONVERSATION:I

    if-ne v3, v4, :cond_5

    iget-wide v3, v2, Lcom/android/email/activity/MessageListItem;->mMessageId:J

    const-wide/16 v5, -0x2

    cmp-long v3, v3, v5

    if-nez v3, :cond_5

    iget v3, p0, Lcom/android/email/activity/MessageList;->mCombinedFlag:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5

    .line 1672
    :cond_3
    sget-object v3, Lcom/android/email/activity/MessageList;->mOpenedThreadList:Ljava/util/HashSet;

    iget-object v4, v2, Lcom/android/email/activity/MessageListItem;->mThreadName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1673
    sget-object v3, Lcom/android/email/activity/MessageList;->mOpenedThreadList:Ljava/util/HashSet;

    iget-object v4, v2, Lcom/android/email/activity/MessageListItem;->mThreadName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1674
    const-string v3, "MessageList >>"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onItemClick: STATUS_THREAD_TITLE_HIDE: mOpenedThreadList.count = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/email/activity/MessageList;->mOpenedThreadList:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1675
    iget-object v3, p0, Lcom/android/email/activity/MessageList;->mListAdapter:Lcom/android/email/activity/MessageList$MessageListAdapter;

    const/4 v4, 0x1

    invoke-virtual {v3, p3, v4}, Lcom/android/email/activity/MessageList$MessageListAdapter;->updateThreadListVisibility(IZ)V

    goto/16 :goto_0

    .line 1698
    .end local v2           #itemView:Lcom/android/email/activity/MessageListItem;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 1699
    .local v1, e:Ljava/lang/Exception;
    goto/16 :goto_0

    .line 1677
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v2       #itemView:Lcom/android/email/activity/MessageListItem;
    :cond_4
    sget-object v3, Lcom/android/email/activity/MessageList;->mOpenedThreadList:Ljava/util/HashSet;

    iget-object v4, v2, Lcom/android/email/activity/MessageListItem;->mThreadName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1678
    const-string v3, "MessageList >>"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onItemClick: STATUS_THREAD_TITLE_OPEN: mOpenedThreadList.count = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/email/activity/MessageList;->mOpenedThreadList:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1679
    iget-object v3, p0, Lcom/android/email/activity/MessageList;->mListAdapter:Lcom/android/email/activity/MessageList$MessageListAdapter;

    const/4 v4, 0x0

    invoke-virtual {v3, p3, v4}, Lcom/android/email/activity/MessageList$MessageListAdapter;->updateThreadListVisibility(IZ)V

    goto/16 :goto_0

    .line 1682
    :cond_5
    iget v3, p0, Lcom/android/email/activity/MessageList;->mViewModeType:I

    sget v4, Lcom/android/email/activity/MessageList;->VIEW_MODE_CONVERSATION:I

    if-ne v3, v4, :cond_7

    iget-wide v3, v2, Lcom/android/email/activity/MessageListItem;->mMessageId:J

    const-wide/16 v5, -0x2

    cmp-long v3, v3, v5

    if-nez v3, :cond_7

    iget-wide v3, p0, Lcom/android/email/activity/MessageList;->mVersionDouble:D

    const-wide/high16 v5, 0x402c

    cmpl-double v3, v3, v5

    if-ltz v3, :cond_7

    .line 1684
    sget-object v3, Lcom/android/email/activity/MessageList;->mOpenedThreadListConv:Ljava/util/HashSet;

    iget-object v4, v2, Lcom/android/email/activity/MessageListItem;->mConvId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 1685
    sget-object v3, Lcom/android/email/activity/MessageList;->mOpenedThreadListConv:Ljava/util/HashSet;

    iget-object v4, v2, Lcom/android/email/activity/MessageListItem;->mConvId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1686
    iget-object v3, p0, Lcom/android/email/activity/MessageList;->mListAdapter:Lcom/android/email/activity/MessageList$MessageListAdapter;

    const/4 v4, 0x1

    invoke-virtual {v3, p3, v4}, Lcom/android/email/activity/MessageList$MessageListAdapter;->updateThreadListVisibility(IZ)V

    goto/16 :goto_0

    .line 1688
    :cond_6
    sget-object v3, Lcom/android/email/activity/MessageList;->mOpenedThreadListConv:Ljava/util/HashSet;

    iget-object v4, v2, Lcom/android/email/activity/MessageListItem;->mConvId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1689
    iget-object v3, p0, Lcom/android/email/activity/MessageList;->mListAdapter:Lcom/android/email/activity/MessageList$MessageListAdapter;

    const/4 v4, 0x0

    invoke-virtual {v3, p3, v4}, Lcom/android/email/activity/MessageList$MessageListAdapter;->updateThreadListVisibility(IZ)V

    goto/16 :goto_0

    .line 1692
    :cond_7
    iget-wide v3, v2, Lcom/android/email/activity/MessageListItem;->mMessageId:J

    const-wide/16 v5, -0x2

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    const-wide/16 v3, -0x2

    cmp-long v3, p4, v3

    if-eqz v3, :cond_0

    .line 1693
    sput p3, Lcom/android/email/activity/MessageList;->mPositionOfSelectedMessage:I

    .line 1694
    const-string v3, "MessageList >>"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onItemClick: mPositionOfSelectedMessage = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/email/activity/MessageList;->mPositionOfSelectedMessage:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1695
    iget-wide v3, v2, Lcom/android/email/activity/MessageListItem;->mMailboxId:J

    invoke-direct {p0, p4, p5, v3, v4}, Lcom/android/email/activity/MessageList;->onOpenMessage(JJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1702
    .end local v2           #itemView:Lcom/android/email/activity/MessageListItem;
    :cond_8
    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->doFooterClick()V

    goto/16 :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 2204
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 2285
    invoke-super {p0, p1}, Lcom/android/email/winset/TwTabActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    :goto_0
    move v0, v1

    .line 2288
    :goto_1
    return v0

    .line 2206
    :sswitch_0
    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->onRefresh()V

    goto :goto_0

    .line 2210
    :sswitch_1
    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->onSort()V

    goto :goto_0

    .line 2216
    :sswitch_2
    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->onDeleteAllPopup()V

    goto :goto_0

    .line 2221
    :sswitch_3
    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->onAccounts()V

    goto :goto_0

    .line 2224
    :sswitch_4
    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->onCompose()V

    goto :goto_0

    .line 2227
    :sswitch_5
    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->onEditAccount()V

    goto :goto_0

    .line 2230
    :sswitch_6
    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->onDeselectAll()V

    goto :goto_0

    .line 2235
    :sswitch_7
    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->onFollowUpFlag()V

    goto :goto_0

    .line 2242
    :sswitch_8
    invoke-virtual {p0}, Lcom/android/email/activity/MessageList;->onSearchRequested()Z

    goto :goto_0

    .line 2248
    :sswitch_9
    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->onTextSize()V

    goto :goto_0

    .line 2253
    :sswitch_a
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mListAdapter:Lcom/android/email/activity/MessageList$MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageList$MessageListAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageList;->onRestoreAll(Ljava/util/Set;)V

    goto :goto_0

    .line 2267
    :sswitch_b
    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->onClearSearchResults()V

    move v0, v1

    .line 2268
    goto :goto_1

    .line 2281
    :sswitch_c
    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->onViewMode()V

    goto :goto_0

    .line 2204
    :sswitch_data_0
    .sparse-switch
        0x7f070108 -> :sswitch_7
        0x7f070178 -> :sswitch_4
        0x7f07018d -> :sswitch_0
        0x7f07018e -> :sswitch_3
        0x7f07018f -> :sswitch_5
        0x7f07019a -> :sswitch_2
        0x7f07019c -> :sswitch_a
        0x7f07019d -> :sswitch_8
        0x7f07019e -> :sswitch_1
        0x7f07019f -> :sswitch_9
        0x7f0701a1 -> :sswitch_c
        0x7f0701a3 -> :sswitch_6
        0x7f0701a5 -> :sswitch_b
    .end sparse-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 1289
    invoke-super {p0}, Lcom/android/email/winset/TwTabActivity;->onPause()V

    .line 1292
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mHandler:Lcom/android/email/activity/MessageList$MessageListHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageList$MessageListHandler;->progress(Z)V

    .line 1296
    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->updateBadgeProvider()V

    .line 1297
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 9
    .parameter

    .prologue
    const v8, 0x7f07019e

    const v7, 0x7f07018d

    const/4 v6, 0x6

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1854
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mListAdapter:Lcom/android/email/activity/MessageList$MessageListAdapter;

    if-nez v0, :cond_0

    move v0, v5

    .line 1971
    :goto_0
    return v0

    .line 1857
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mListAdapter:Lcom/android/email/activity/MessageList$MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageList$MessageListAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_8

    move v0, v5

    .line 1858
    :goto_1
    const v1, 0x7f0701a2

    invoke-interface {p1, v1, v0}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 1863
    iget v1, p0, Lcom/android/email/activity/MessageList;->mIsEAS:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 1864
    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->IsEAS()I

    .line 1866
    :cond_1
    iget v1, p0, Lcom/android/email/activity/MessageList;->mIsEAS:I

    if-eq v1, v5, :cond_2

    sget-boolean v1, Lcom/android/email/activity/MessageList;->isStartedFromMailboxList:Z

    if-eqz v1, :cond_9

    .line 1867
    :cond_2
    const v1, 0x7f0701a0

    invoke-interface {p1, v1, v0}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 1880
    :goto_2
    iget-wide v0, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_7

    .line 1883
    const v0, 0x7f070199

    iget v1, p0, Lcom/android/email/activity/MessageList;->mMailboxType:I

    if-eq v1, v6, :cond_a

    move v1, v4

    :goto_3
    invoke-interface {p1, v0, v1}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 1884
    const v0, 0x7f07019b

    iget v1, p0, Lcom/android/email/activity/MessageList;->mMailboxType:I

    if-eq v1, v6, :cond_b

    move v1, v4

    :goto_4
    invoke-interface {p1, v0, v1}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 1889
    iget v0, p0, Lcom/android/email/activity/MessageList;->mMailboxType:I

    if-ne v0, v6, :cond_4

    .line 1891
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMoveMessageTask:Lcom/android/email/activity/MessageList$MoveMessageTask;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMoveMessageTask:Lcom/android/email/activity/MessageList$MoveMessageTask;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageList$MoveMessageTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_c

    .line 1893
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mShowRestoreSection:Landroid/view/MenuItem;

    if-eqz v0, :cond_3

    .line 1895
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mShowRestoreSection:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1897
    :cond_3
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mShowDeleteSection:Landroid/view/MenuItem;

    if-eqz v0, :cond_4

    .line 1899
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mShowDeleteSection:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1923
    :cond_4
    :goto_5
    iget v0, p0, Lcom/android/email/activity/MessageList;->mMailboxType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    iget v0, p0, Lcom/android/email/activity/MessageList;->mMailboxType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_10

    .line 1924
    :cond_5
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1926
    if-eqz v0, :cond_6

    .line 1928
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1941
    :cond_6
    :goto_6
    iget v0, p0, Lcom/android/email/activity/MessageList;->mViewModeType:I

    sget v1, Lcom/android/email/activity/MessageList;->VIEW_MODE_CONVERSATION:I

    if-ne v0, v1, :cond_11

    .line 1944
    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1946
    if-eqz v0, :cond_7

    .line 1948
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_7
    :goto_7
    move v0, v5

    .line 1971
    goto/16 :goto_0

    :cond_8
    move v0, v4

    .line 1857
    goto/16 :goto_1

    .line 1872
    :cond_9
    const v0, 0x7f0701a0

    invoke-interface {p1, v0, v4}, Landroid/view/Menu;->setGroupVisible(IZ)V

    goto :goto_2

    :cond_a
    move v1, v5

    .line 1883
    goto :goto_3

    :cond_b
    move v1, v5

    .line 1884
    goto :goto_4

    .line 1903
    :cond_c
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mListAdapter:Lcom/android/email/activity/MessageList$MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageList$MessageListAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_e

    move v0, v5

    .line 1904
    :goto_8
    const v1, 0x7f07019c

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MessageList;->mShowRestoreSection:Landroid/view/MenuItem;

    .line 1907
    iget-object v1, p0, Lcom/android/email/activity/MessageList;->mShowRestoreSection:Landroid/view/MenuItem;

    if-eqz v1, :cond_d

    .line 1909
    iget-object v1, p0, Lcom/android/email/activity/MessageList;->mShowRestoreSection:Landroid/view/MenuItem;

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1913
    :cond_d
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mListAdapter:Lcom/android/email/activity/MessageList$MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageList$MessageListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_f

    move v0, v5

    .line 1914
    :goto_9
    const v1, 0x7f07019a

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MessageList;->mShowDeleteSection:Landroid/view/MenuItem;

    .line 1916
    iget-object v1, p0, Lcom/android/email/activity/MessageList;->mShowDeleteSection:Landroid/view/MenuItem;

    if-eqz v1, :cond_4

    .line 1918
    iget-object v1, p0, Lcom/android/email/activity/MessageList;->mShowDeleteSection:Landroid/view/MenuItem;

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_5

    :cond_e
    move v0, v4

    .line 1903
    goto :goto_8

    :cond_f
    move v0, v4

    .line 1913
    goto :goto_9

    .line 1932
    :cond_10
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1934
    if-eqz v0, :cond_6

    .line 1936
    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_6

    .line 1955
    :cond_11
    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1957
    if-eqz v0, :cond_7

    .line 1959
    iget v1, p0, Lcom/android/email/activity/MessageList;->mSearchId:I

    if-ne v1, v5, :cond_12

    .line 1961
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_7

    .line 1965
    :cond_12
    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_7
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 6
    .parameter

    .prologue
    const-wide/16 v3, -0x1

    const/4 v2, 0x0

    const-string v5, "MessageList >>"

    .line 1591
    invoke-super {p0, p1}, Lcom/android/email/winset/TwTabActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1592
    const-string v0, "com.android.email.activity.MessageList.selectedAccountId"

    invoke-virtual {p1, v0, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/activity/MessageList;->mAccountId:J

    .line 1593
    const-string v0, "com.android.email.activity.MessageList.selectedMailboxId"

    invoke-virtual {p1, v0, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    .line 1594
    const-string v0, "com.android.email.activity.MessageList.selectedItemTop"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/MessageList;->mSavedItemTop:I

    .line 1595
    const-string v0, "com.android.email.activity.MessageList.selectedPosition"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/MessageList;->mSavedItemPosition:I

    .line 1596
    iget-wide v0, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/MessageList;->setMailboxInfo(J)V

    .line 1597
    const-string v0, "com.android.email.activity.MessageList.selectedTab"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/MessageList;->mMailboxCurrentIndex:I

    .line 1598
    const-string v0, "com.android.email.activity.MessageList.selectedSearch"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/MessageList;->mSearchId:I

    .line 1600
    const-string v0, "com.android.email.activity.MessageList.viewMode"

    sget v1, Lcom/android/email/activity/MessageList;->VIEW_MODE_STANDARD:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/MessageList;->mViewModeType:I

    .line 1602
    const-string v0, "MessageList >>"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRestore | mSaveItemPos : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/email/activity/MessageList;->mSavedItemPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mSavedItemTop : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/email/activity/MessageList;->mSavedItemTop:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/android/email/Email;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1604
    const-string v0, "MessageList >>"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRestoreInstanceState | mSearchId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/email/activity/MessageList;->mSearchId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/android/email/Email;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1605
    return-void
.end method

.method public onResultSearchRequested()Z
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x1

    .line 1141
    sget-object v0, Lcom/android/email/activity/MessageList;->mSearchBar:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 1142
    const/4 v0, 0x0

    sput v0, Lcom/android/email/activity/MessageList;->mSortType:I

    .line 1144
    iget-wide v1, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    iget-wide v3, p0, Lcom/android/email/activity/MessageList;->mAccountId:J

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/email/activity/MessageList;->loadMessagesTask(JJZI)V

    .line 1151
    :goto_0
    return v5

    .line 1146
    :cond_0
    const/4 v0, 0x6

    sput v0, Lcom/android/email/activity/MessageList;->mSortType:I

    .line 1148
    iget-wide v1, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    iget-wide v3, p0, Lcom/android/email/activity/MessageList;->mAccountId:J

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/email/activity/MessageList;->loadMessagesTask(JJZI)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 10

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    const-string v1, "MessageList >>"

    .line 1301
    invoke-super {p0}, Lcom/android/email/winset/TwTabActivity;->onResume()V

    .line 1302
    const-string v0, "MessageList >>"

    const-string v0, "onResume -----------------------------------------"

    invoke-static {v1, v0}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 1307
    :try_start_0
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/email/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/email/provider/EmailContent$Account;->ID_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1311
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ge v1, v8, :cond_1

    .line 1312
    const-string v1, "MessageList >>"

    const-string v2, " onResume Account count == 0  "

    invoke-static {v1, v2}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1313
    invoke-virtual {p0}, Lcom/android/email/activity/MessageList;->finish()V

    .line 1314
    invoke-static {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->actionNewAccount(Landroid/app/Activity;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 1322
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1364
    :cond_0
    :goto_0
    return-void

    .line 1319
    :catch_0
    move-exception v0

    move-object v0, v6

    .line 1320
    :goto_1
    :try_start_2
    const-string v1, "MessageList >>"

    const-string v2, " onResume "

    invoke-static {v1, v2}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1322
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1325
    iget-wide v0, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/MessageList;->lookupAccountIdFromMailboxId(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/activity/MessageList;->mAccountId:J

    .line 1329
    invoke-direct {p0, v7}, Lcom/android/email/activity/MessageList;->updateMessageLists(Z)V

    .line 1334
    :try_start_3
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageList;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1337
    if-eqz v0, :cond_2

    .line 1338
    sget v1, Lcom/android/email/service/MailService;->NOTIFICATION_ID_NEW_MESSAGES:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1340
    :cond_2
    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->restoreListPosition()V

    .line 1341
    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->autoRefreshStaleMailbox()V

    .line 1345
    iget v0, p0, Lcom/android/email/activity/MessageList;->mSearchId:I

    if-ne v0, v8, :cond_3

    .line 1346
    const-string v0, "MessageList >>"

    const-string v1, "onResume -----------mSearchId == 1"

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 1348
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mTitleSearchBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1350
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/email/activity/MessageList;->mSearchId:I

    .line 1351
    invoke-virtual {p0}, Lcom/android/email/activity/MessageList;->onSearchRequested()Z
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 1361
    :catch_1
    move-exception v0

    .line 1362
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 1322
    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    .line 1359
    :cond_3
    :try_start_4
    const-string v0, "MessageList >>"

    const-string v1, "onResume ------------------mSearchId == 0"

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 1322
    :catchall_1
    move-exception v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto :goto_2

    .line 1319
    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 1575
    invoke-super {p0, p1}, Lcom/android/email/winset/TwTabActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1576
    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->saveListPosition()V

    .line 1577
    const-string v0, "com.android.email.activity.MessageList.selectedAccountId"

    iget-wide v1, p0, Lcom/android/email/activity/MessageList;->mAccountId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1578
    const-string v0, "com.android.email.activity.MessageList.selectedPosition"

    iget v1, p0, Lcom/android/email/activity/MessageList;->mSavedItemPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1579
    const-string v0, "com.android.email.activity.MessageList.selectedItemTop"

    iget v1, p0, Lcom/android/email/activity/MessageList;->mSavedItemTop:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1580
    const-string v0, "com.android.email.activity.MessageList.selectedMailboxId"

    iget-wide v1, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1581
    const-string v0, "com.android.email.activity.MessageList.selectedTab"

    iget v1, p0, Lcom/android/email/activity/MessageList;->mMailboxCurrentIndex:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1582
    const-string v0, "com.android.email.activity.MessageList.selectedSearch"

    iget v1, p0, Lcom/android/email/activity/MessageList;->mSearchId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1584
    const-string v0, "com.android.email.activity.MessageList.viewMode"

    iget v1, p0, Lcom/android/email/activity/MessageList;->mViewModeType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1586
    const-string v0, "MessageList >>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSaveInstanceState | mSearchId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/email/activity/MessageList;->mSearchId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1587
    return-void
.end method

.method public onSearchRequested()Z
    .locals 8

    .prologue
    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const-string v2, "MessageList >>"

    .line 2127
    const-string v0, "MessageList >>"

    const-string v0, "onSearchRequested() called : Search key pressed"

    invoke-static {v2, v0}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 2130
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    if-nez v0, :cond_0

    .line 2132
    iget-wide v0, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    invoke-static {p0, v0, v1}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    .line 2133
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    if-nez v0, :cond_0

    .line 2134
    const-string v0, "MessageList >>"

    const-string v0, "onSearchRequested() called : Search key pressed on other mail boxes"

    invoke-static {v2, v0}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v7

    .line 2172
    :goto_0
    return v0

    .line 2140
    :cond_0
    iget v0, p0, Lcom/android/email/activity/MessageList;->mSearchId:I

    if-nez v0, :cond_4

    .line 2143
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mTitleSearchBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2144
    sget-object v0, Lcom/android/email/activity/MessageList;->mSearchBar:Landroid/widget/EditText;

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 2145
    sget-object v0, Lcom/android/email/activity/MessageList;->mSearchBar:Landroid/widget/EditText;

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 2146
    sget-object v0, Lcom/android/email/activity/MessageList;->mSearchBar:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 2149
    iput v7, p0, Lcom/android/email/activity/MessageList;->mSearchId:I

    .line 2150
    sget v0, Lcom/android/email/activity/MessageList;->mSortType:I

    iput v0, p0, Lcom/android/email/activity/MessageList;->mLastSortType:I

    .line 2155
    iget v0, p0, Lcom/android/email/activity/MessageList;->mIsEAS:I

    if-ne v0, v5, :cond_1

    .line 2156
    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->IsEAS()I

    .line 2158
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mController:Lcom/android/email/Controller;

    iget-wide v1, p0, Lcom/android/email/activity/MessageList;->mAccountId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/email/Controller;->returnAccountType(J)I

    move-result v0

    iget-object v1, p0, Lcom/android/email/activity/MessageList;->mController:Lcom/android/email/Controller;

    if-eq v0, v7, :cond_2

    iget v0, p0, Lcom/android/email/activity/MessageList;->mIsEAS:I

    if-ne v0, v7, :cond_3

    .line 2160
    :cond_2
    iget-wide v1, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    iget-wide v3, p0, Lcom/android/email/activity/MessageList;->mAccountId:J

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/email/activity/MessageList;->addFooterView(JJIZ)V

    .line 2171
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/email/activity/MessageList;->closeOptionsMenu()V

    move v0, v7

    .line 2172
    goto :goto_0

    .line 2166
    :cond_4
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mTitleSearchBar:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2168
    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->onSearchFinish()V

    .line 2169
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    sget-object v1, Lcom/android/email/activity/MessageList;->mSearchBar:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_1
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 7
    .parameter

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x1

    .line 1444
    const-string v0, "MessageList >>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTabChanged :: tag : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | mMailboxId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 1445
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 1446
    iget-wide v1, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    iget-wide v1, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 1464
    :cond_0
    :goto_0
    return-void

    .line 1448
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    .line 1449
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mErrorBanner:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1451
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mEmptyListBanner:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1453
    iget-wide v0, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/MessageList;->setMailboxInfo(J)V

    .line 1454
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mTabHost:Lcom/android/email/winset/TwTabHost;

    invoke-virtual {v0}, Lcom/android/email/winset/TwTabHost;->getCurrentTab()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/MessageList;->mMailboxCurrentIndex:I

    .line 1455
    iput-boolean v5, p0, Lcom/android/email/activity/MessageList;->mCanAutoRefresh:Z

    .line 1456
    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->onRemoveIndexScroll()V

    .line 1457
    invoke-direct {p0, v5}, Lcom/android/email/activity/MessageList;->updateMessageLists(Z)V

    .line 1460
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mListAdapter:Lcom/android/email/activity/MessageList$MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageList$MessageListAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 1461
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageList;->showMultiPanel(Z)V

    goto :goto_0
.end method

.method public removeMessage(Ljava/lang/Long;)V
    .locals 1
    .parameter "messageId"

    .prologue
    .line 989
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mListAdapter:Lcom/android/email/activity/MessageList$MessageListAdapter;

    if-nez v0, :cond_0

    .line 993
    :goto_0
    return-void

    .line 992
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mListAdapter:Lcom/android/email/activity/MessageList$MessageListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/email/activity/MessageList$MessageListAdapter;->removeMessage(Ljava/lang/Long;)V

    goto :goto_0
.end method

.method public setConversation(JJ)V
    .locals 11
    .parameter
    .parameter

    .prologue
    .line 3329
    .line 3330
    const-string v0, ""

    .line 3331
    const/4 v6, 0x0

    .line 3332
    const/4 v7, 0x2

    .line 3333
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/email/Controller;->MESSAGEID_TO_CONVERSATIONID_PROJECTION:[Ljava/lang/String;

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 3337
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_6

    sget v1, Lcom/android/email/Controller;->MESSAGEID_TO_CONVERSATIONID_COLUMN_MAILBOXID:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    move-wide v8, v1

    .line 3340
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_7

    sget v1, Lcom/android/email/Controller;->MESSAGEID_TO_CONVERSDATIONID_COLUMN_CONVID:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    move-object v5, v1

    .line 3344
    :goto_1
    if-eqz v0, :cond_0

    .line 3345
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 3350
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/email/provider/EmailContent$Message;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v3, "conversationId =? AND mailboxKey=? ORDER BY timeStamp desc"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v5, v4, v10

    const/4 v5, 0x1

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 3353
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3357
    :cond_1
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3358
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    .line 3359
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_d

    .line 3361
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v8

    .line 3372
    if-eqz v0, :cond_2

    .line 3373
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 3376
    :cond_2
    const-wide/16 v0, -0x1

    cmp-long v0, v8, v0

    if-eqz v0, :cond_f

    .line 3378
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/email/provider/EmailContent$FollowupFlag;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/email/provider/EmailContent$FollowupFlag;->CONTENT_PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "messageKey=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 3381
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 3382
    :cond_3
    const/4 v1, -0x1

    .line 3385
    :goto_2
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3386
    :goto_3
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_a

    .line 3387
    const/4 v1, 0x6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 3388
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 3390
    :catch_0
    move-exception v1

    .line 3391
    :try_start_3
    const-string v2, "Error"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IllegalStateException >>> syncFavorites"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3392
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 3393
    const/4 v1, -0x1

    .line 3396
    if-eqz v0, :cond_4

    .line 3397
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4
    move v0, v1

    .line 3400
    :goto_4
    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    if-eq v0, v7, :cond_5

    .line 3401
    invoke-direct {p0, v8, v9, v7}, Lcom/android/email/activity/MessageList;->onSetFollowupFlag(JI)V

    .line 3402
    :cond_5
    :goto_5
    return-void

    .line 3337
    :cond_6
    const-wide/16 v1, -0x1

    move-wide v8, v1

    goto/16 :goto_0

    .line 3340
    :cond_7
    const/4 v1, 0x0

    move-object v5, v1

    goto/16 :goto_1

    .line 3344
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_8

    .line 3345
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 3344
    :cond_8
    throw v1

    .line 3365
    :catch_1
    move-exception v1

    .line 3366
    :try_start_4
    const-string v2, "Error"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IllegalStateException >>> syncFavorites"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3367
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 3372
    if-eqz v0, :cond_5

    .line 3373
    :goto_6
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_5

    .line 3372
    :catchall_1
    move-exception v1

    if-eqz v0, :cond_9

    .line 3373
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 3372
    :cond_9
    throw v1

    .line 3396
    :cond_a
    if-eqz v0, :cond_b

    .line 3397
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_b
    move v0, v1

    .line 3398
    goto :goto_4

    .line 3396
    :catchall_2
    move-exception v1

    if-eqz v0, :cond_c

    .line 3397
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 3396
    :cond_c
    throw v1

    .line 3372
    :cond_d
    if-eqz v0, :cond_5

    goto :goto_6

    :cond_e
    move v1, v6

    goto/16 :goto_2

    :cond_f
    move v0, v6

    goto :goto_4
.end method

.method public setMailboxInfo(J)V
    .locals 10
    .parameter

    .prologue
    const-wide/16 v6, -0x1

    const-string v9, "setMailboxInfo : mailboxId < 0"

    const-string v8, "MessageList >>"

    .line 913
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 914
    invoke-static {p0, p1, p2}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    .line 953
    :goto_0
    return-void

    .line 918
    :cond_0
    invoke-virtual {p0}, Lcom/android/email/activity/MessageList;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.email.activity.MAILBOX_TYPE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 920
    invoke-virtual {p0}, Lcom/android/email/activity/MessageList;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 921
    if-eqz v0, :cond_1

    const-string v2, "content"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "com.android.email.provider"

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 925
    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 926
    if-eqz v0, :cond_4

    .line 927
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 934
    :goto_1
    cmp-long v0, v2, v6

    if-eqz v0, :cond_3

    .line 936
    invoke-static {p0, v2, v3, v1}, Lcom/android/email/provider/EmailContent$Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v4

    .line 937
    cmp-long v0, v4, v6

    if-eqz v0, :cond_2

    .line 938
    iput-wide v4, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    .line 939
    iput-wide v2, p0, Lcom/android/email/activity/MessageList;->mAccountId:J

    .line 940
    iput v1, p0, Lcom/android/email/activity/MessageList;->mMailboxType:I

    .line 941
    invoke-static {p0, v4, v5}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    goto :goto_0

    .line 931
    :cond_1
    invoke-virtual {p0}, Lcom/android/email/activity/MessageList;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "com.android.email.activity._ACCOUNT_ID"

    invoke-virtual {v0, v2, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    goto :goto_1

    .line 945
    :cond_2
    const-string v0, "MessageList >>"

    const-string v0, "setMailboxInfo : mailboxId < 0"

    invoke-static {v8, v9}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 950
    :cond_3
    const-string v0, "MessageList >>"

    const-string v0, "setMailboxInfo : mailboxId < 0"

    invoke-static {v8, v9}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move-wide v2, v6

    goto :goto_1
.end method
