.class public Lcom/android/email/activity/MessageList;
.super Lcom/android/email/winset/TwTabActivity;
.source "MessageList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/email/winset/TwTabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/MessageList$MyMatrixCursor;,
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
        Lcom/android/email/activity/MessageList$TextSizeAdapter;,
        Lcom/android/email/activity/MessageList$TextSizeType;,
        Lcom/android/email/activity/MessageList$ListItem;
    }
.end annotation


# static fields
.field private static final ACCOUNT_DISPLAY_NAME_COLUMN_ID:I = 0x0

.field private static final ACCOUNT_EMAIL_ADDRESS_COLUMN_ID:I = 0x1

.field private static final ACCOUNT_ID_SELECTION:Ljava/lang/String; = "accountKey =?"

.field private static final ACCOUNT_NAME_PROJECTION:[Ljava/lang/String; = null

.field private static final ACCOUNT_UNREAD_COUNT_PROJECTION:[Ljava/lang/String; = null

.field public static final BADGE_APPS_CLASS:Ljava/lang/String; = "class"

.field public static final BADGE_APPS_COUNT:Ljava/lang/String; = "badgecount"

.field public static final BADGE_APPS_PACKAGE:Ljava/lang/String; = "package"

.field public static final BADGE_AUTHORITY:Ljava/lang/String; = "com.sec.badge"

.field public static final BADGE_TABLE_APPS:Ljava/lang/String; = "apps"

.field private static final EXTRA_ACCOUNT_ID:Ljava/lang/String; = "com.android.email.activity._ACCOUNT_ID"

.field private static final EXTRA_DISPLAY_PROGRESS:Ljava/lang/String; = "com.android.email.activity.DISPLAY_PROGRESS"

.field private static final EXTRA_MAILBOX_ID:Ljava/lang/String; = "com.android.email.activity.MAILBOX_ID"

.field private static final EXTRA_MAILBOX_TYPE:Ljava/lang/String; = "com.android.email.activity.MAILBOX_TYPE"

.field private static final HIGH_PRIORITY:I = 0x2

.field private static final ID_SELECTION:Ljava/lang/String; = "_id=?"

.field private static final LIST_FOOTER_MODE_MORE:I = 0x2

.field private static final LIST_FOOTER_MODE_NONE:I = 0x0

.field private static final LIST_FOOTER_MODE_REFRESH:I = 0x1

.field private static final LIST_FOOTER_MODE_SEARCH:I = 0x4

.field private static final LIST_FOOTER_MODE_SEND:I = 0x3

.field private static final LOAD_MSG_BY_SEARCH:I = 0x3

.field private static final LOW_PRIORITY:I = 0x0

.field private static final MAILBOX_ACCOUNT_AND_TYPE_PROJECTION:[Ljava/lang/String; = null

.field public static final MAILBOX_FIND_INBOX_PROJECTION:[Ljava/lang/String; = null

.field private static final MAILBOX_INBOX_SELECTION:Ljava/lang/String; = "accountKey =? AND type = 0"

.field private static final MAILBOX_NAME_COLUMN_ACCOUNT_KEY:I = 0x1

.field private static final MAILBOX_NAME_COLUMN_ID:I = 0x0

.field private static final MAILBOX_NAME_COLUMN_TYPE:I = 0x2

.field private static final MAILBOX_NAME_PROJECTION:[Ljava/lang/String; = null

.field private static final MAILBOX_UNREAD_COUNT_COLUMN_UNREAD_COUNT:I = 0x0

.field private static final MAILBOX_UNREAD_COUNT_PROJECTION:[Ljava/lang/String; = null

.field private static MESSAGEID_TO_MAILBOXID_COLUMN_MAILBOXID:I = 0x0

.field private static MESSAGEID_TO_MAILBOXID_PROJECTION:[Ljava/lang/String; = null

.field public static final MESSAGE_ID_THREAD_TITLE:I = -0x2

.field private static final NORMAL_PRIORITY:I = 0x1

.field private static final NORMAL_TO_SEARCH:I = 0x0

.field public static final POPUPWIN_SEARCH:I = 0x3

.field private static final PORTRAIT_MODE_DEFAULT:I = 0x0

.field private static final PORTRAIT_MODE_LIST:I = 0x2

.field private static final PORTRAIT_MODE_VIEWER:I = 0x1

.field private static final PREFERENCES_FILE:Ljava/lang/String; = "AndroidMail.MessageList"

.field private static final PREFERENCES_THREAD_VIEW_MODE:Ljava/lang/String; = "prefer_view_mode"

.field public static final SEARCH_ALL:I = 0x0

.field public static final SEARCH_SENDER:I = 0x1

.field public static final SEARCH_TITLE:I = 0x2

.field public static final SEARCH_TO:I = 0x3

.field private static final SEARCH_TO_NORMAL:I = 0x1

.field private static final SERVER_SEARCH:Ljava/lang/String; = "com.android.email.server.search"

.field public static final SORT_BY_DATE:I = 0x0

.field public static final SORT_BY_FLAGSTATUS:I = 0x9

.field public static final SORT_BY_IMPORTANCE:I = 0x8

.field public static final SORT_BY_READ:I = 0x2

.field public static final SORT_BY_RECIPIENT:I = 0x3

.field public static final SORT_BY_SEARCH:I = 0x6

.field public static final SORT_BY_SENDER:I = 0x1

.field public static final SORT_QUERY:[Ljava/lang/String; = null

.field private static final STATE_SELECTED_ITEM_TOP:Ljava/lang/String; = "com.android.email.activity.MessageList.selectedItemTop"

.field private static final STATE_SELECTED_MAILBOX_ID:Ljava/lang/String; = "com.android.email.activity.MessageList.selectedMailboxId"

.field private static final STATE_SELECTED_POSITION:Ljava/lang/String; = "com.android.email.activity.MessageList.selectedPosition"

.field private static final STATE_SELECTED_SEARCH:Ljava/lang/String; = "com.android.email.activity.MessageList.selectedSearch"

.field private static final STATE_SELECTED_TAB:Ljava/lang/String; = "com.android.email.activity.MessageList.selectedTab"

.field private static final STATE_VIEW_MODE:Ljava/lang/String; = "com.android.email.activity.MessageList.viewMode"

.field private static final STATUS_THREAD_MEMBER_HIDE:S = 0x10s

.field private static final STATUS_THREAD_MEMBER_MASK:S = 0xf0s

.field private static final STATUS_THREAD_MEMBER_OPEN:S = 0x20s

.field private static final STATUS_THREAD_NONE:S = 0x0s

.field private static final STATUS_THREAD_TITLE_HIDE:S = 0x1s

.field private static final STATUS_THREAD_TITLE_MASK:S = 0xfs

.field private static final STATUS_THREAD_TITLE_OPEN:S = 0x2s

.field private static final TAG:Ljava/lang/String; = "MessageList >>"

.field public static VIEW_MODE_CONVERSATION:I

.field public static VIEW_MODE_CONVERSATION_READY:I

.field public static VIEW_MODE_STANDARD:I

.field public static isStartedFromMailboxList:Z

.field private static final mColorChipResIds:[I

.field public static mMessageIdArray4ThreadList:[I

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

.field public static mPositionOfSelectedMessage:I

.field private static mSearchBar:Landroid/widget/EditText;

.field public static mSortType:I

.field private static mTextSize:I

.field private static mThreadListVisibility:[S

.field public static mTotalListCount:I

.field public static mViewModeType:I

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

.field private static sSharedPreferences:Landroid/content/SharedPreferences;


# instance fields
.field private DPMReceiver:Landroid/content/BroadcastReceiver;

.field private final MESSAGE_LIST_ADAPTER_PROJECTION:[Ljava/lang/String;

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

.field private mController:Lcom/android/email/Controller;

.field private mControllerCallback:Lcom/android/email/activity/MessageList$ControllerResults;

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

.field private mIndexView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

.field private mInputManager:Landroid/view/inputmethod/InputMethodManager;

.field private mIsEAS:I

.field private mIsLandScape:Z

.field private mLastSortType:I

.field private mLegacyController:Lcom/android/email/MessagingController;

.field private mListAdapter:Lcom/android/email/activity/MessageList$MessageListAdapter;

.field private mListByMenu:Landroid/view/View;

.field private mListFooterEmptyView:Landroid/view/View;

.field private mListFooterMode:I

.field private mListFooterProgress:Landroid/view/View;

.field private mListFooterText:Landroid/widget/TextView;

.field private mListFooterView:Landroid/view/View;

.field private mListView:Landroid/widget/ListView;

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

.field private mNewMessageIdArray4ThreadList:[I

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

.field private mNewThreadListVisibility:[S

.field private mPopView:Landroid/widget/LinearLayout;

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

.field private mThreadBtn:Landroid/widget/ToggleButton;

.field private mTitleBar:Landroid/widget/LinearLayout;

.field private mTitleDeleteMoveBar:Landroid/widget/LinearLayout;

.field private mTitleSearchBar:Landroid/widget/LinearLayout;

.field private mToast:Landroid/widget/Toast;

.field private mTotalSubtitleCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v7, "_id"

    .line 248
    sput v3, Lcom/android/email/activity/MessageList;->sSelectedSearchType:I

    .line 273
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

    .line 315
    const/16 v0, 0x15

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/email/activity/MessageList;->mColorChipResIds:[I

    .line 354
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v7, v0, v3

    const-string v1, "type"

    aput-object v1, v0, v4

    const-string v1, "flagVisible"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/email/activity/MessageList;->MAILBOX_FIND_INBOX_PROJECTION:[Ljava/lang/String;

    .line 361
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "displayName"

    aput-object v1, v0, v3

    const-string v1, "accountKey"

    aput-object v1, v0, v4

    const-string v1, "type"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/email/activity/MessageList;->MAILBOX_NAME_PROJECTION:[Ljava/lang/String;

    .line 367
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "displayName"

    aput-object v1, v0, v3

    const-string v1, "emailAddress"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/email/activity/MessageList;->ACCOUNT_NAME_PROJECTION:[Ljava/lang/String;

    .line 388
    sput v3, Lcom/android/email/activity/MessageList;->VIEW_MODE_STANDARD:I

    .line 389
    sput v4, Lcom/android/email/activity/MessageList;->VIEW_MODE_CONVERSATION:I

    .line 390
    sput v5, Lcom/android/email/activity/MessageList;->VIEW_MODE_CONVERSATION_READY:I

    .line 404
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/email/activity/MessageList;->mOpenedThreadList:Ljava/util/HashSet;

    .line 411
    sput v3, Lcom/android/email/activity/MessageList;->mTotalListCount:I

    .line 445
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "unreadCount"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/email/activity/MessageList;->MAILBOX_UNREAD_COUNT_PROJECTION:[Ljava/lang/String;

    .line 449
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "unreadCount"

    aput-object v1, v0, v3

    const-string v1, "_id"

    aput-object v7, v0, v4

    sput-object v0, Lcom/android/email/activity/MessageList;->ACCOUNT_UNREAD_COUNT_PROJECTION:[Ljava/lang/String;

    .line 463
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v7, v0, v3

    const-string v1, "mailboxKey"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/email/activity/MessageList;->MESSAGEID_TO_MAILBOXID_PROJECTION:[Ljava/lang/String;

    .line 467
    sput v4, Lcom/android/email/activity/MessageList;->MESSAGEID_TO_MAILBOXID_COLUMN_MAILBOXID:I

    .line 4265
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "accountKey"

    aput-object v1, v0, v3

    const-string v1, "type"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/email/activity/MessageList;->MAILBOX_ACCOUNT_AND_TYPE_PROJECTION:[Ljava/lang/String;

    return-void

    .line 315
    nop

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
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 166
    invoke-direct {p0}, Lcom/android/email/winset/TwTabActivity;-><init>()V

    .line 222
    iput-object v4, p0, Lcom/android/email/activity/MessageList;->mToast:Landroid/widget/Toast;

    .line 231
    iput v5, p0, Lcom/android/email/activity/MessageList;->followUpFlagMode:I

    .line 236
    iput-object v4, p0, Lcom/android/email/activity/MessageList;->mPushModeMailbox:Ljava/lang/Boolean;

    .line 249
    iput v3, p0, Lcom/android/email/activity/MessageList;->mSearchId:I

    .line 250
    iput-object v4, p0, Lcom/android/email/activity/MessageList;->mSearchListString:[Ljava/lang/String;

    .line 258
    iput-boolean v2, p0, Lcom/android/email/activity/MessageList;->mIsLandScape:Z

    .line 271
    iput v2, p0, Lcom/android/email/activity/MessageList;->mCurrentOrientation:I

    .line 272
    iput v3, p0, Lcom/android/email/activity/MessageList;->mCurrentPortraitMode:I

    .line 295
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "mailboxKey"

    aput-object v1, v0, v2

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

    aput-object v2, v0, v1

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

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->MESSAGE_LIST_ADAPTER_PROJECTION:[Ljava/lang/String;

    .line 305
    new-instance v0, Lcom/android/email/activity/MessageList$MessageListHandler;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MessageList$MessageListHandler;-><init>(Lcom/android/email/activity/MessageList;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mHandler:Lcom/android/email/activity/MessageList$MessageListHandler;

    .line 306
    invoke-virtual {p0}, Lcom/android/email/activity/MessageList;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mController:Lcom/android/email/Controller;

    .line 307
    new-instance v0, Lcom/android/email/activity/MessageList$ControllerResults;

    invoke-direct {v0, p0, v4}, Lcom/android/email/activity/MessageList$ControllerResults;-><init>(Lcom/android/email/activity/MessageList;Lcom/android/email/activity/MessageList$1;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mControllerCallback:Lcom/android/email/activity/MessageList$ControllerResults;

    .line 343
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/email/activity/MessageList;->mCheckedAccountId:J

    .line 344
    iput v5, p0, Lcom/android/email/activity/MessageList;->mIsEAS:I

    .line 374
    iput v3, p0, Lcom/android/email/activity/MessageList;->mSavedItemTop:I

    .line 375
    iput v5, p0, Lcom/android/email/activity/MessageList;->mSavedItemPosition:I

    .line 376
    iput-boolean v3, p0, Lcom/android/email/activity/MessageList;->mCanAutoRefresh:Z

    .line 410
    iput v3, p0, Lcom/android/email/activity/MessageList;->mTotalSubtitleCount:I

    .line 413
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mRemovePosition:Ljava/util/ArrayList;

    .line 473
    iput-object v4, p0, Lcom/android/email/activity/MessageList;->mIndexView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    .line 476
    iput-object v4, p0, Lcom/android/email/activity/MessageList;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    .line 737
    new-instance v0, Lcom/android/email/activity/MessageList$2;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MessageList$2;-><init>(Lcom/android/email/activity/MessageList;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 6028
    new-instance v0, Lcom/android/email/activity/MessageList$24;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MessageList$24;-><init>(Lcom/android/email/activity/MessageList;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->DPMReceiver:Landroid/content/BroadcastReceiver;

    .line 7348
    return-void
.end method

.method private IsEAS()I
    .locals 11

    .prologue
    const/4 v10, 0x0

    const-string v9, "isEAS(): return - :"

    const-string v8, "MessageList >>"

    .line 6058
    invoke-virtual {p0}, Lcom/android/email/activity/MessageList;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    .line 6060
    .local v1, context:Landroid/content/Context;
    iget-wide v4, p0, Lcom/android/email/activity/MessageList;->mCheckedAccountId:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 6061
    iget-wide v4, p0, Lcom/android/email/activity/MessageList;->mAccountId:J

    iput-wide v4, p0, Lcom/android/email/activity/MessageList;->mCheckedAccountId:J

    .line 6071
    :goto_0
    iget-wide v4, p0, Lcom/android/email/activity/MessageList;->mAccountId:J

    invoke-static {v1, v4, v5}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v0

    .line 6073
    .local v0, account:Lcom/android/email/provider/EmailContent$Account;
    if-nez v0, :cond_2

    .line 6074
    iput v10, p0, Lcom/android/email/activity/MessageList;->mIsEAS:I

    .line 6075
    const-string v4, "MessageList >>"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isEAS(): return - :"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/email/activity/MessageList;->mIsEAS:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  CHECKED 1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 6076
    iget v4, p0, Lcom/android/email/activity/MessageList;->mIsEAS:I

    .line 6098
    .end local v0           #account:Lcom/android/email/provider/EmailContent$Account;
    :goto_1
    return v4

    .line 6063
    :cond_0
    iget-wide v4, p0, Lcom/android/email/activity/MessageList;->mCheckedAccountId:J

    iget-wide v6, p0, Lcom/android/email/activity/MessageList;->mAccountId:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 6064
    const-string v4, "MessageList >>"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isEAS(): return - :"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/email/activity/MessageList;->mIsEAS:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  NOT CHECKED "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 6065
    iget v4, p0, Lcom/android/email/activity/MessageList;->mIsEAS:I

    goto :goto_1

    .line 6068
    :cond_1
    iget-wide v4, p0, Lcom/android/email/activity/MessageList;->mAccountId:J

    iput-wide v4, p0, Lcom/android/email/activity/MessageList;->mCheckedAccountId:J

    goto :goto_0

    .line 6079
    .restart local v0       #account:Lcom/android/email/provider/EmailContent$Account;
    :cond_2
    invoke-virtual {v0, v1}, Lcom/android/email/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/android/email/mail/Store$StoreInfo;->getStoreInfo(Ljava/lang/String;Landroid/content/Context;)Lcom/android/email/mail/Store$StoreInfo;

    move-result-object v2

    .line 6082
    .local v2, info:Lcom/android/email/mail/Store$StoreInfo;
    if-nez v2, :cond_3

    .line 6083
    iput v10, p0, Lcom/android/email/activity/MessageList;->mIsEAS:I

    .line 6084
    const-string v4, "MessageList >>"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isEAS(): return - :"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/email/activity/MessageList;->mIsEAS:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  CHECKED 2"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 6085
    iget v4, p0, Lcom/android/email/activity/MessageList;->mIsEAS:I

    goto :goto_1

    .line 6088
    :cond_3
    iget-object v3, v2, Lcom/android/email/mail/Store$StoreInfo;->mScheme:Ljava/lang/String;

    .line 6089
    .local v3, scheme:Ljava/lang/String;
    const-string v4, "eas"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 6090
    const-string v4, "MessageList >>"

    const-string v4, "isEAS(): This is EAS account"

    invoke-static {v8, v4}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 6091
    const/4 v4, 0x1

    iput v4, p0, Lcom/android/email/activity/MessageList;->mIsEAS:I

    .line 6097
    :goto_2
    const-string v4, "MessageList >>"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isEAS(): return - :"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/email/activity/MessageList;->mIsEAS:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  CHECKED 3"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 6098
    iget v4, p0, Lcom/android/email/activity/MessageList;->mIsEAS:I

    goto/16 :goto_1

    .line 6094
    :cond_4
    const-string v4, "MessageList >>"

    const-string v4, "isEAS(): This isn\'t EAS account"

    invoke-static {v8, v4}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 6095
    iput v10, p0, Lcom/android/email/activity/MessageList;->mIsEAS:I

    goto :goto_2
.end method

.method private IsEAS_account(J)Z
    .locals 7
    .parameter "mAccountId"

    .prologue
    const/4 v6, 0x0

    .line 6104
    const-string v4, "MessageList >>"

    const-string v5, "IsEAS_account() CALLED"

    invoke-static {v4, v5}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 6105
    invoke-virtual {p0}, Lcom/android/email/activity/MessageList;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    .line 6106
    .local v1, context:Landroid/content/Context;
    invoke-static {v1, p1, p2}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v0

    .line 6108
    .local v0, account:Lcom/android/email/provider/EmailContent$Account;
    if-nez v0, :cond_0

    move v4, v6

    .line 6118
    :goto_0
    return v4

    .line 6111
    :cond_0
    invoke-virtual {v0, v1}, Lcom/android/email/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/android/email/mail/Store$StoreInfo;->getStoreInfo(Ljava/lang/String;Landroid/content/Context;)Lcom/android/email/mail/Store$StoreInfo;

    move-result-object v2

    .line 6114
    .local v2, info:Lcom/android/email/mail/Store$StoreInfo;
    if-nez v2, :cond_1

    move v4, v6

    .line 6115
    goto :goto_0

    .line 6117
    :cond_1
    iget-object v3, v2, Lcom/android/email/mail/Store$StoreInfo;->mScheme:Ljava/lang/String;

    .line 6118
    .local v3, scheme:Ljava/lang/String;
    const-string v4, "eas"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$MessageListHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mHandler:Lcom/android/email/activity/MessageList$MessageListHandler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/email/activity/MessageList;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mTitleSearchBar:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/email/activity/MessageList;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 166
    iget v0, p0, Lcom/android/email/activity/MessageList;->mAnimation_midnext:F

    return v0
.end method

.method static synthetic access$1200(Lcom/android/email/activity/MessageList;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 166
    iget v0, p0, Lcom/android/email/activity/MessageList;->mAnimation_startend:F

    return v0
.end method

.method static synthetic access$1300(Lcom/android/email/activity/MessageList;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 166
    iget v0, p0, Lcom/android/email/activity/MessageList;->mAnimation_centerX:F

    return v0
.end method

.method static synthetic access$1400(Lcom/android/email/activity/MessageList;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 166
    iget v0, p0, Lcom/android/email/activity/MessageList;->mAnimaiotn_centerY:F

    return v0
.end method

.method static synthetic access$1500(Lcom/android/email/activity/MessageList;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 166
    iget v0, p0, Lcom/android/email/activity/MessageList;->mAnimation_depth:F

    return v0
.end method

.method static synthetic access$1600(Lcom/android/email/activity/MessageList;)Lcom/android/email/winset/TwTabWidget;
    .locals 1
    .parameter "x0"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mFlipper:Lcom/android/email/winset/TwTabWidget;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/email/activity/MessageList;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mFlipper2:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/email/activity/MessageList;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 166
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageList;->onTextSizeChange(I)V

    return-void
.end method

.method static synthetic access$1900()I
    .locals 1

    .prologue
    .line 166
    sget v0, Lcom/android/email/activity/MessageList;->mTextSize:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$LoadMessagesTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mLoadMessagesTask:Lcom/android/email/activity/MessageList$LoadMessagesTask;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/email/activity/MessageList;)Lcom/android/email/Controller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mController:Lcom/android/email/Controller;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/email/activity/MessageList;Lcom/android/email/activity/MessageList$LoadMessagesTask;)Lcom/android/email/activity/MessageList$LoadMessagesTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 166
    iput-object p1, p0, Lcom/android/email/activity/MessageList;->mLoadMessagesTask:Lcom/android/email/activity/MessageList$LoadMessagesTask;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/email/activity/MessageList;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 166
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageList;->onViewModeBy(I)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/email/activity/MessageList;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 166
    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->IsEAS()I

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/android/email/activity/MessageList;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 166
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageList;->onSortBy(I)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$MessageListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mListAdapter:Lcom/android/email/activity/MessageList$MessageListAdapter;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/email/activity/MessageList;Ljava/util/Set;ZI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 166
    invoke-direct {p0, p1, p2, p3}, Lcom/android/email/activity/MessageList;->onMultiToggleFavorite(Ljava/util/Set;ZI)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/email/activity/MessageList;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 166
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageList;->showMultiPanel(Z)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/email/activity/MessageList;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->followUpFlagAlert:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/email/activity/MessageList;JI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 166
    invoke-direct {p0, p1, p2, p3}, Lcom/android/email/activity/MessageList;->onSetFollowupFlag(JI)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/email/activity/MessageList;JJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 166
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/email/activity/MessageList;->onDelete(JJ)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/email/activity/MessageList;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 166
    iget-wide v0, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    return-wide v0
.end method

.method static synthetic access$3000(Lcom/android/email/activity/MessageList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 166
    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->onDeleteAll()V

    return-void
.end method

.method static synthetic access$302(Lcom/android/email/activity/MessageList;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 166
    iput-wide p1, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    return-wide p1
.end method

.method static synthetic access$3100(Lcom/android/email/activity/MessageList;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 166
    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->getSearchResultsCursor()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/email/activity/MessageList;JZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 166
    invoke-direct {p0, p1, p2, p3}, Lcom/android/email/activity/MessageList;->onSetMessageRead(JZ)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/email/activity/MessageList;JZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 166
    invoke-direct {p0, p1, p2, p3}, Lcom/android/email/activity/MessageList;->onSetMessageFavorite(JZ)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/email/activity/MessageList;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/email/activity/MessageList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 166
    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->onMultiDelete()V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$MailBoxAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMoveListAdapter:Lcom/android/email/activity/MessageList$MailBoxAdapter;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/email/activity/MessageList;JLjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 166
    invoke-direct {p0, p1, p2, p3}, Lcom/android/email/activity/MessageList;->onMultiMovePopupToOtherAccount(JLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/email/activity/MessageList;JJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 166
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/email/activity/MessageList;->onMultiMove(JJ)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/email/activity/MessageList;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mSearchListString:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$MailBoxAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMoveListToOtherAccountAdapter:Lcom/android/email/activity/MessageList$MailBoxAdapter;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/email/activity/MessageList;JJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 166
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/email/activity/MessageList;->onMultiMoveOtherAccount(JJ)V

    return-void
.end method

.method static synthetic access$4300()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    sget-object v0, Lcom/android/email/activity/MessageList;->MAILBOX_ACCOUNT_AND_TYPE_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/email/activity/MessageList;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 166
    iget v0, p0, Lcom/android/email/activity/MessageList;->mMailboxType:I

    return v0
.end method

.method static synthetic access$4402(Lcom/android/email/activity/MessageList;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 166
    iput p1, p0, Lcom/android/email/activity/MessageList;->mMailboxType:I

    return p1
.end method

.method static synthetic access$4500(Lcom/android/email/activity/MessageList;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 166
    iget v0, p0, Lcom/android/email/activity/MessageList;->mIsEAS:I

    return v0
.end method

.method static synthetic access$4600(Lcom/android/email/activity/MessageList;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 166
    iget v0, p0, Lcom/android/email/activity/MessageList;->mSearchId:I

    return v0
.end method

.method static synthetic access$4700(Lcom/android/email/activity/MessageList;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 166
    iget-wide v0, p0, Lcom/android/email/activity/MessageList;->mAccountId:J

    return-wide v0
.end method

.method static synthetic access$4800(Lcom/android/email/activity/MessageList;IJZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 166
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/email/activity/MessageList;->finishFooterView(IJZ)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/email/activity/MessageList;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mSearchType:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$ControllerResults;
    .locals 1
    .parameter "x0"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mControllerCallback:Lcom/android/email/activity/MessageList$ControllerResults;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$RefreshFolderListTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mFolderListTask:Lcom/android/email/activity/MessageList$RefreshFolderListTask;

    return-object v0
.end method

.method static synthetic access$5102(Lcom/android/email/activity/MessageList;Lcom/android/email/activity/MessageList$RefreshFolderListTask;)Lcom/android/email/activity/MessageList$RefreshFolderListTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 166
    iput-object p1, p0, Lcom/android/email/activity/MessageList;->mFolderListTask:Lcom/android/email/activity/MessageList$RefreshFolderListTask;

    return-object p1
.end method

.method static synthetic access$5200(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$SetTitleTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mSetTitleTask:Lcom/android/email/activity/MessageList$SetTitleTask;

    return-object v0
.end method

.method static synthetic access$5202(Lcom/android/email/activity/MessageList;Lcom/android/email/activity/MessageList$SetTitleTask;)Lcom/android/email/activity/MessageList$SetTitleTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 166
    iput-object p1, p0, Lcom/android/email/activity/MessageList;->mSetTitleTask:Lcom/android/email/activity/MessageList$SetTitleTask;

    return-object p1
.end method

.method static synthetic access$5300(Lcom/android/email/activity/MessageList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 166
    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->loadMessagesTask_Cancel()V

    return-void
.end method

.method static synthetic access$5400(Lcom/android/email/activity/MessageList;J)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 166
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/MessageList;->IsEAS_account(J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5500(Lcom/android/email/activity/MessageList;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->MESSAGE_LIST_ADAPTER_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5600()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 166
    sget-object v0, Lcom/android/email/activity/MessageList;->mSearchBar:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/android/email/activity/MessageList;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mSortQuery:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5800(Lcom/android/email/activity/MessageList;)Ljava/util/HashSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mNewOpenedThreadList:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$5802(Lcom/android/email/activity/MessageList;Ljava/util/HashSet;)Ljava/util/HashSet;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 166
    iput-object p1, p0, Lcom/android/email/activity/MessageList;->mNewOpenedThreadList:Ljava/util/HashSet;

    return-object p1
.end method

.method static synthetic access$5900(Lcom/android/email/activity/MessageList;)[S
    .locals 1
    .parameter "x0"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mNewThreadListVisibility:[S

    return-object v0
.end method

.method static synthetic access$5902(Lcom/android/email/activity/MessageList;[S)[S
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 166
    iput-object p1, p0, Lcom/android/email/activity/MessageList;->mNewThreadListVisibility:[S

    return-object p1
.end method

.method static synthetic access$600()I
    .locals 1

    .prologue
    .line 166
    sget v0, Lcom/android/email/activity/MessageList;->sSelectedSearchType:I

    return v0
.end method

.method static synthetic access$6000(Lcom/android/email/activity/MessageList;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mNewMessageIdArray4ThreadList:[I

    return-object v0
.end method

.method static synthetic access$6002(Lcom/android/email/activity/MessageList;[I)[I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 166
    iput-object p1, p0, Lcom/android/email/activity/MessageList;->mNewMessageIdArray4ThreadList:[I

    return-object p1
.end method

.method static synthetic access$602(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 166
    sput p0, Lcom/android/email/activity/MessageList;->sSelectedSearchType:I

    return p0
.end method

.method static synthetic access$6100()Ljava/util/HashSet;
    .locals 1

    .prologue
    .line 166
    sget-object v0, Lcom/android/email/activity/MessageList;->mOpenedThreadList:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$6102(Ljava/util/HashSet;)Ljava/util/HashSet;
    .locals 0
    .parameter "x0"

    .prologue
    .line 166
    sput-object p0, Lcom/android/email/activity/MessageList;->mOpenedThreadList:Ljava/util/HashSet;

    return-object p0
.end method

.method static synthetic access$6200(Lcom/android/email/activity/MessageList;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mProgressIcon:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$6300(Lcom/android/email/activity/MessageList;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 166
    iget v0, p0, Lcom/android/email/activity/MessageList;->mMailboxCurrentIndex:I

    return v0
.end method

.method static synthetic access$6302(Lcom/android/email/activity/MessageList;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 166
    iput p1, p0, Lcom/android/email/activity/MessageList;->mMailboxCurrentIndex:I

    return p1
.end method

.method static synthetic access$6400(Lcom/android/email/activity/MessageList;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMessageListCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$6402(Lcom/android/email/activity/MessageList;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 166
    iput-object p1, p0, Lcom/android/email/activity/MessageList;->mMessageListCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$6500()[S
    .locals 1

    .prologue
    .line 166
    sget-object v0, Lcom/android/email/activity/MessageList;->mThreadListVisibility:[S

    return-object v0
.end method

.method static synthetic access$6502([S)[S
    .locals 0
    .parameter "x0"

    .prologue
    .line 166
    sput-object p0, Lcom/android/email/activity/MessageList;->mThreadListVisibility:[S

    return-object p0
.end method

.method static synthetic access$6602(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"

    .prologue
    .line 166
    sput-object p0, Lcom/android/email/activity/MessageList;->sRealPosition:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$6700(Lcom/android/email/activity/MessageList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 166
    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->restoreListPosition()V

    return-void
.end method

.method static synthetic access$6800(Lcom/android/email/activity/MessageList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 166
    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->autoRefreshStaleMailbox()V

    return-void
.end method

.method static synthetic access$6900(Lcom/android/email/activity/MessageList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 166
    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->onAddIndexScroll()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/email/activity/MessageList;)Lcom/android/email/provider/EmailContent$Mailbox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    return-object v0
.end method

.method static synthetic access$7000(Lcom/android/email/activity/MessageList;Landroid/database/Cursor;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 166
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageList;->onRefreshIndexScroll(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$702(Lcom/android/email/activity/MessageList;Lcom/android/email/provider/EmailContent$Mailbox;)Lcom/android/email/provider/EmailContent$Mailbox;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 166
    iput-object p1, p0, Lcom/android/email/activity/MessageList;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    return-object p1
.end method

.method static synthetic access$7100(Lcom/android/email/activity/MessageList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 166
    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->onRemoveIndexScroll()V

    return-void
.end method

.method static synthetic access$7200()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    sget-object v0, Lcom/android/email/activity/MessageList;->MAILBOX_NAME_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7300(Lcom/android/email/activity/MessageList;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mEmptyListBanner:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$7400()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    sget-object v0, Lcom/android/email/activity/MessageList;->ACCOUNT_NAME_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7500(Lcom/android/email/activity/MessageList;Ljava/lang/String;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 166
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/MessageList;->setTitleAccountName(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$7600(Lcom/android/email/activity/MessageList;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mRightTitle_Layout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$7700(Lcom/android/email/activity/MessageList;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mRightTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$7800(Lcom/android/email/activity/MessageList;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMoveButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$7900(Lcom/android/email/activity/MessageList;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mDeleteButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$8000(Lcom/android/email/activity/MessageList;)Lcom/android/email/winset/TwTabHost;
    .locals 1
    .parameter "x0"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mTabHost:Lcom/android/email/winset/TwTabHost;

    return-object v0
.end method

.method static synthetic access$8100(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$ProgressDialogForMessageMove;
    .locals 1
    .parameter "x0"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mProgressDialog:Lcom/android/email/activity/MessageList$ProgressDialogForMessageMove;

    return-object v0
.end method

.method static synthetic access$8200(Lcom/android/email/activity/MessageList;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mListFooterProgress:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$8300(Lcom/android/email/activity/MessageList;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 166
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageList;->setListFooterText(Z)V

    return-void
.end method

.method static synthetic access$8400(Lcom/android/email/activity/MessageList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 166
    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->onRefresh()V

    return-void
.end method

.method static synthetic access$8500(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$FindMailboxTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mFindMailboxTask:Lcom/android/email/activity/MessageList$FindMailboxTask;

    return-object v0
.end method

.method static synthetic access$8502(Lcom/android/email/activity/MessageList;Lcom/android/email/activity/MessageList$FindMailboxTask;)Lcom/android/email/activity/MessageList$FindMailboxTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 166
    iput-object p1, p0, Lcom/android/email/activity/MessageList;->mFindMailboxTask:Lcom/android/email/activity/MessageList$FindMailboxTask;

    return-object p1
.end method

.method static synthetic access$8600(Lcom/android/email/activity/MessageList;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mErrorBanner:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$8700(Lcom/android/email/activity/MessageList;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMultiSelectPanel:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$8800(Lcom/android/email/activity/MessageList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 166
    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->updateFooterButtonNames()V

    return-void
.end method

.method static synthetic access$8900(Lcom/android/email/activity/MessageList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 166
    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->updateInboxUnreadCount()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/email/activity/MessageList;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$9000(Lcom/android/email/activity/MessageList;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 166
    iget v0, p0, Lcom/android/email/activity/MessageList;->mListFooterMode:I

    return v0
.end method

.method static synthetic access$9100()[I
    .locals 1

    .prologue
    .line 166
    sget-object v0, Lcom/android/email/activity/MessageList;->mColorChipResIds:[I

    return-object v0
.end method

.method static synthetic access$9200(Lcom/android/email/activity/MessageList;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 166
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
    .line 530
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/MessageList;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 531
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 532
    const-string v1, "com.android.email.activity._ACCOUNT_ID"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 533
    const-string v1, "com.android.email.activity.MAILBOX_TYPE"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 534
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 535
    return-void
.end method

.method public static actionHandleAccountIntent(Landroid/content/Context;JJI)Landroid/content/Intent;
    .locals 2
    .parameter "context"
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "mailboxType"

    .prologue
    .line 548
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/MessageList;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 549
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 550
    const-string v1, "com.android.email.activity._ACCOUNT_ID"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 551
    const-string v1, "com.android.email.activity.MAILBOX_ID"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 552
    const-string v1, "com.android.email.activity.MAILBOX_TYPE"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 553
    return-object v0
.end method

.method public static actionHandleAccountUriIntent(Landroid/content/Context;JI)Landroid/content/Intent;
    .locals 8
    .parameter "context"
    .parameter "accountId"
    .parameter "mailboxType"

    .prologue
    .line 566
    const-wide/16 v3, -0x1

    move-object v0, p0

    move-wide v1, p1

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/android/email/activity/MessageList;->actionHandleAccountIntent(Landroid/content/Context;JJI)Landroid/content/Intent;

    move-result-object v6

    .line 567
    .local v6, i:Landroid/content/Intent;
    const-string v0, "com.android.email.activity._ACCOUNT_ID"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 568
    sget-object v0, Lcom/android/email/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    .line 569
    .local v7, uri:Landroid/net/Uri;
    invoke-virtual {v6, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 570
    return-object v6
.end method

.method public static actionHandleMailbox(Landroid/content/Context;J)V
    .locals 2
    .parameter "context"
    .parameter "id"

    .prologue
    .line 496
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/MessageList;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 497
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 498
    const-string v1, "com.android.email.activity.MAILBOX_ID"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 499
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 500
    return-void
.end method

.method public static actionHandleMailbox(Landroid/content/Context;JZ)V
    .locals 3
    .parameter "context"
    .parameter "id"
    .parameter "displayProgress"

    .prologue
    .line 513
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/MessageList;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 514
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 515
    const-string v1, "com.android.email.activity.MAILBOX_ID"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 516
    const-string v1, "com.android.email.server.search"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 517
    const-string v1, "com.android.email.activity.DISPLAY_PROGRESS"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 518
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 519
    return-void
.end method

.method public static actionOpenAccountInboxUuid(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .parameter "context"
    .parameter "accountUuid"

    .prologue
    const-wide/16 v1, -0x1

    .line 2877
    const/4 v5, 0x0

    move-object v0, p0

    move-wide v3, v1

    invoke-static/range {v0 .. v5}, Lcom/android/email/activity/MessageList;->createIntent(Landroid/content/Context;JJI)Landroid/content/Intent;

    move-result-object v6

    .line 2878
    .local v6, i:Landroid/content/Intent;
    invoke-static {p1}, Lcom/android/email/provider/EmailContent$Account;->getShortcutSafeUriFromUuid(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2879
    invoke-virtual {p0, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2880
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

    .line 4241
    const-wide/16 v0, -0x2

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x3

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x4

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 4244
    :cond_0
    invoke-direct {p0, v3, p1, p2, p6}, Lcom/android/email/activity/MessageList;->finishFooterView(IJZ)V

    .line 4263
    :goto_0
    return-void

    .line 4249
    :cond_1
    const-wide/16 v0, -0x5

    cmp-long v0, p1, v0

    if-eqz v0, :cond_2

    if-ne p5, v2, :cond_3

    .line 4250
    :cond_2
    invoke-direct {p0, v3, p1, p2, p6}, Lcom/android/email/activity/MessageList;->finishFooterView(IJZ)V

    goto :goto_0

    .line 4254
    :cond_3
    const-wide/16 v0, -0x6

    cmp-long v0, p1, v0

    if-eqz v0, :cond_4

    const/4 v0, 0x4

    if-ne p5, v0, :cond_5

    .line 4255
    :cond_4
    invoke-direct {p0, v2, p1, p2, p6}, Lcom/android/email/activity/MessageList;->finishFooterView(IJZ)V

    goto :goto_0

    .line 4261
    :cond_5
    new-instance v0, Lcom/android/email/activity/MessageList$SetFooterTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/email/activity/MessageList$SetFooterTask;-><init>(Lcom/android/email/activity/MessageList;Lcom/android/email/activity/MessageList$1;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mSetFooterTask:Lcom/android/email/activity/MessageList$SetFooterTask;

    .line 4262
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

.method private animation_title(I)V
    .locals 7
    .parameter "ANIMATION_TYPE"

    .prologue
    const/high16 v2, 0x4000

    .line 1726
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/email/activity/MessageList;->mAnimation_startend:F

    .line 1727
    const/high16 v1, 0x42b4

    iput v1, p0, Lcom/android/email/activity/MessageList;->mAnimation_midpre:F

    .line 1728
    const/high16 v1, -0x3d4c

    iput v1, p0, Lcom/android/email/activity/MessageList;->mAnimation_midnext:F

    .line 1729
    const/high16 v1, 0x3f80

    iput v1, p0, Lcom/android/email/activity/MessageList;->mAnimation_depth:F

    .line 1730
    iget-object v1, p0, Lcom/android/email/activity/MessageList;->mFlipper:Lcom/android/email/winset/TwTabWidget;

    invoke-virtual {v1}, Lcom/android/email/winset/TwTabWidget;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    iput v1, p0, Lcom/android/email/activity/MessageList;->mAnimation_centerX:F

    .line 1731
    iget-object v1, p0, Lcom/android/email/activity/MessageList;->mFlipper:Lcom/android/email/winset/TwTabWidget;

    invoke-virtual {v1}, Lcom/android/email/winset/TwTabWidget;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    iput v1, p0, Lcom/android/email/activity/MessageList;->mAnimaiotn_centerY:F

    .line 1734
    new-instance v0, Lcom/android/email/activity/Rotate3dAnimation;

    iget v1, p0, Lcom/android/email/activity/MessageList;->mAnimation_startend:F

    iget v2, p0, Lcom/android/email/activity/MessageList;->mAnimation_midpre:F

    iget v3, p0, Lcom/android/email/activity/MessageList;->mAnimation_centerX:F

    iget v4, p0, Lcom/android/email/activity/MessageList;->mAnimaiotn_centerY:F

    iget v5, p0, Lcom/android/email/activity/MessageList;->mAnimation_depth:F

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/android/email/activity/Rotate3dAnimation;-><init>(FFFFFZ)V

    .line 1736
    .local v0, rot:Lcom/android/email/activity/Rotate3dAnimation;
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/Rotate3dAnimation;->setDuration(J)V

    .line 1737
    new-instance v1, Lcom/android/email/activity/MessageList$5;

    invoke-direct {v1, p0, p1}, Lcom/android/email/activity/MessageList$5;-><init>(Lcom/android/email/activity/MessageList;I)V

    invoke-virtual {v0, v1}, Lcom/android/email/activity/Rotate3dAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1765
    iget-object v1, p0, Lcom/android/email/activity/MessageList;->mFlipper:Lcom/android/email/winset/TwTabWidget;

    invoke-virtual {v1, v0}, Lcom/android/email/winset/TwTabWidget;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1766
    return-void
.end method

.method private animation_title2(I)V
    .locals 7
    .parameter "ANIMATION_TYPE"

    .prologue
    const/high16 v2, 0x4000

    .line 1769
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/email/activity/MessageList;->mAnimation_startend:F

    .line 1770
    const/high16 v1, 0x42b4

    iput v1, p0, Lcom/android/email/activity/MessageList;->mAnimation_midpre:F

    .line 1771
    const/high16 v1, -0x3d4c

    iput v1, p0, Lcom/android/email/activity/MessageList;->mAnimation_midnext:F

    .line 1772
    const/high16 v1, 0x3f80

    iput v1, p0, Lcom/android/email/activity/MessageList;->mAnimation_depth:F

    .line 1773
    iget-object v1, p0, Lcom/android/email/activity/MessageList;->mFlipper2:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    iput v1, p0, Lcom/android/email/activity/MessageList;->mAnimation_centerX:F

    .line 1774
    iget-object v1, p0, Lcom/android/email/activity/MessageList;->mFlipper2:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    iput v1, p0, Lcom/android/email/activity/MessageList;->mAnimaiotn_centerY:F

    .line 1777
    new-instance v0, Lcom/android/email/activity/Rotate3dAnimation;

    iget v1, p0, Lcom/android/email/activity/MessageList;->mAnimation_startend:F

    iget v2, p0, Lcom/android/email/activity/MessageList;->mAnimation_midpre:F

    iget v3, p0, Lcom/android/email/activity/MessageList;->mAnimation_centerX:F

    iget v4, p0, Lcom/android/email/activity/MessageList;->mAnimaiotn_centerY:F

    iget v5, p0, Lcom/android/email/activity/MessageList;->mAnimation_depth:F

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/android/email/activity/Rotate3dAnimation;-><init>(FFFFFZ)V

    .line 1779
    .local v0, rot:Lcom/android/email/activity/Rotate3dAnimation;
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/Rotate3dAnimation;->setDuration(J)V

    .line 1780
    new-instance v1, Lcom/android/email/activity/MessageList$6;

    invoke-direct {v1, p0, p1}, Lcom/android/email/activity/MessageList$6;-><init>(Lcom/android/email/activity/MessageList;I)V

    invoke-virtual {v0, v1}, Lcom/android/email/activity/Rotate3dAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1808
    iget-object v1, p0, Lcom/android/email/activity/MessageList;->mFlipper2:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1809
    return-void
.end method

.method private autoRefreshStaleMailbox()V
    .locals 5

    .prologue
    const-string v4, "MessageList >>"

    .line 3984
    iget-boolean v0, p0, Lcom/android/email/activity/MessageList;->mCanAutoRefresh:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mListAdapter:Lcom/android/email/activity/MessageList$MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageList$MessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 4008
    :cond_0
    :goto_0
    return-void

    .line 3990
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/MessageList;->mCanAutoRefresh:Z

    .line 3991
    iget-wide v0, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    invoke-static {v0, v1}, Lcom/android/email/Email;->mailboxRequiresRefresh(J)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3992
    const-string v0, "MessageList >>"

    const-string v0, "autoRefreshStaleMailbox :: mailbox require refresh NOT"

    invoke-static {v4, v0}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3995
    :cond_2
    const-string v0, "MessageList >>"

    const-string v0, "autoRefreshStaleMailbox :: mailbox require >>"

    invoke-static {v4, v0}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 3999
    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->checkITPolicy_AllowPOPIMAP()Z

    move-result v0

    if-nez v0, :cond_3

    .line 4001
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "11111 MessageList.java >>>>> autoRefreshStaleMailbox()  >>>>> 2942"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 4007
    :cond_3
    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->onRefresh()V

    goto :goto_0
.end method

.method private changeLocalVal(Lcom/android/email/activity/MessageListItem;I)V
    .locals 6
    .parameter "itemView"
    .parameter "newVal"

    .prologue
    .line 3023
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, " setting new val for importance in UI"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 3024
    const v3, 0x7f07000a

    invoke-virtual {p1, v3}, Lcom/android/email/activity/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3025
    .local v0, subjectView:Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3026
    .local v1, text:Ljava/lang/String;
    const-string v3, "-"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 3027
    .local v2, vals:[Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 3028
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    aget-object v4, v2, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3030
    :cond_0
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " this is the new val "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 3032
    return-void
.end method

.method private checkITPolicy_AllowPOPIMAP()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 6042
    invoke-static {p0}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/SecurityPolicy;->IsAllowPOPIMAPEmailSetted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6045
    iget v0, p0, Lcom/android/email/activity/MessageList;->mIsEAS:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 6046
    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->IsEAS()I

    .line 6048
    :cond_0
    iget v0, p0, Lcom/android/email/activity/MessageList;->mIsEAS:I

    if-eq v0, v2, :cond_1

    .line 6050
    const/4 v0, 0x0

    .line 6053
    :goto_0
    return v0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method private clearEmailSearchResult()V
    .locals 9

    .prologue
    .line 3064
    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->getSearchResultsCursor()Landroid/database/Cursor;

    move-result-object v2

    .line 3065
    .local v2, c:Landroid/database/Cursor;
    iget-wide v7, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    invoke-direct {p0, v7, v8}, Lcom/android/email/activity/MessageList;->lookupAccountIdFromMailboxId(J)J

    move-result-wide v0

    .line 3066
    .local v0, accountId:J
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3067
    .local v4, ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 3069
    :cond_0
    const/4 v7, 0x0

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3070
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-nez v7, :cond_0

    .line 3073
    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 3074
    .local v5, msgId:J
    iget-object v7, p0, Lcom/android/email/activity/MessageList;->mController:Lcom/android/email/Controller;

    invoke-virtual {v7, v5, v6, v0, v1}, Lcom/android/email/Controller;->deleteMessage(JJ)V

    goto :goto_0

    .line 3076
    .end local v5           #msgId:J
    :cond_2
    return-void
.end method

.method public static createIntent(Landroid/content/Context;JJI)Landroid/content/Intent;
    .locals 4
    .parameter "context"
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "mailboxType"

    .prologue
    const-wide/16 v2, -0x1

    .line 2892
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/MessageList;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2893
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2894
    cmp-long v1, p1, v2

    if-eqz v1, :cond_0

    const-string v1, "com.android.email.activity._ACCOUNT_ID"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2895
    :cond_0
    cmp-long v1, p3, v2

    if-eqz v1, :cond_1

    const-string v1, "com.android.email.activity.MAILBOX_ID"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2896
    :cond_1
    const/4 v1, -0x1

    if-eq p5, v1, :cond_2

    const-string v1, "com.android.email.activity.MAILBOX_TYPE"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2897
    :cond_2
    return-object v0
.end method

.method private doFooterClick()V
    .locals 2

    .prologue
    .line 4470
    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->checkITPolicy_AllowPOPIMAP()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4472
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "11111 MessageList.java >>>>> doFooterClick()  >>>>> 3327"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 4473
    const v0, 0x7f080188

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 4496
    :goto_0
    :pswitch_0
    return-void

    .line 4479
    :cond_0
    iget v0, p0, Lcom/android/email/activity/MessageList;->mListFooterMode:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 4483
    :pswitch_1
    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->onRefresh()V

    goto :goto_0

    .line 4486
    :pswitch_2
    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->onLoadMoreMessages()V

    goto :goto_0

    .line 4489
    :pswitch_3
    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->onSendPendingMessages()V

    goto :goto_0

    .line 4493
    :pswitch_4
    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->onSearchOnServer()V

    goto :goto_0

    .line 4479
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
    .locals 8
    .parameter "listFooterMode"
    .parameter "mailboxId"
    .parameter "bRefreshPosition"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x4

    const/4 v4, 0x0

    const-string v7, "footer remove ERROR ~~~~~~~~~~~~~~"

    const-string v3, "MessageList >>"

    .line 4365
    iget-object v1, p0, Lcom/android/email/activity/MessageList;->mListAdapter:Lcom/android/email/activity/MessageList$MessageListAdapter;

    if-nez v1, :cond_1

    .line 4430
    :cond_0
    :goto_0
    return-void

    .line 4368
    :cond_1
    iput p1, p0, Lcom/android/email/activity/MessageList;->mListFooterMode:I

    .line 4369
    iget v1, p0, Lcom/android/email/activity/MessageList;->mListFooterMode:I

    if-eqz v1, :cond_6

    .line 4370
    const-string v1, "MessageList >>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finish Footer || MODE OK "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mode :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/email/activity/MessageList;->mListFooterMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 4373
    iget-object v1, p0, Lcom/android/email/activity/MessageList;->mListFooterView:Landroid/view/View;

    if-nez v1, :cond_4

    .line 4374
    iget-object v1, p0, Lcom/android/email/activity/MessageList;->mListFooterEmptyView:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 4376
    :try_start_0
    iget-object v1, p0, Lcom/android/email/activity/MessageList;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/email/activity/MessageList;->mListFooterEmptyView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4380
    :goto_1
    iput-object v6, p0, Lcom/android/email/activity/MessageList;->mListFooterEmptyView:Landroid/view/View;

    .line 4382
    :cond_2
    const-string v1, "MessageList >>"

    const-string v1, "finish Footer || footer is NULL"

    invoke-static {v3, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 4383
    const-string v1, "layout_inflater"

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageList;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v2, 0x7f03002b

    iget-object v3, p0, Lcom/android/email/activity/MessageList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MessageList;->mListFooterView:Landroid/view/View;

    .line 4386
    iget-object v1, p0, Lcom/android/email/activity/MessageList;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/email/activity/MessageList;->mListFooterView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 4387
    iget v1, p0, Lcom/android/email/activity/MessageList;->mListFooterMode:I

    if-eq v1, v5, :cond_3

    .line 4388
    iget-object v1, p0, Lcom/android/email/activity/MessageList;->mListAdapter:Lcom/android/email/activity/MessageList$MessageListAdapter;

    invoke-static {v1}, Lcom/android/email/activity/MessageList$MessageListAdapter;->access$4900(Lcom/android/email/activity/MessageList$MessageListAdapter;)V

    .line 4391
    :cond_3
    iget-object v1, p0, Lcom/android/email/activity/MessageList;->mListFooterView:Landroid/view/View;

    const v2, 0x7f070021

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MessageList;->mListFooterProgress:Landroid/view/View;

    .line 4392
    iget-object v1, p0, Lcom/android/email/activity/MessageList;->mListFooterView:Landroid/view/View;

    const v2, 0x7f07007e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/email/activity/MessageList;->mListFooterText:Landroid/widget/TextView;

    .line 4394
    iget-object v1, p0, Lcom/android/email/activity/MessageList;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/email/activity/MessageList;->mListAdapter:Lcom/android/email/activity/MessageList$MessageListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 4395
    const/4 p4, 0x0

    .line 4400
    :cond_4
    if-eqz p4, :cond_5

    .line 4401
    iget-object v1, p0, Lcom/android/email/activity/MessageList;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/email/activity/MessageList;->mListAdapter:Lcom/android/email/activity/MessageList$MessageListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 4405
    :cond_5
    invoke-direct {p0, v4}, Lcom/android/email/activity/MessageList;->setListFooterText(Z)V

    goto/16 :goto_0

    .line 4377
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 4378
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "MessageList >>"

    const-string v1, "footer remove ERROR ~~~~~~~~~~~~~~"

    invoke-static {v3, v7}, Lcom/android/email/Email;->logv(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 4408
    .end local v0           #e:Ljava/lang/Exception;
    :cond_6
    const-string v1, "MessageList >>"

    const-string v1, "finish Footer || MODE NONE !!!! "

    invoke-static {v3, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 4409
    iget-object v1, p0, Lcom/android/email/activity/MessageList;->mListFooterEmptyView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 4411
    iget-object v1, p0, Lcom/android/email/activity/MessageList;->mListFooterView:Landroid/view/View;

    if-eqz v1, :cond_7

    .line 4413
    :try_start_1
    iget-object v1, p0, Lcom/android/email/activity/MessageList;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/email/activity/MessageList;->mListFooterView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 4417
    :goto_2
    iput-object v6, p0, Lcom/android/email/activity/MessageList;->mListFooterView:Landroid/view/View;

    .line 4420
    :cond_7
    const-string v1, "layout_inflater"

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageList;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v2, 0x7f03002a

    iget-object v3, p0, Lcom/android/email/activity/MessageList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MessageList;->mListFooterEmptyView:Landroid/view/View;

    .line 4423
    iget-object v1, p0, Lcom/android/email/activity/MessageList;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/email/activity/MessageList;->mListFooterEmptyView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 4424
    iget v1, p0, Lcom/android/email/activity/MessageList;->mListFooterMode:I

    if-eq v1, v5, :cond_8

    .line 4425
    iget-object v1, p0, Lcom/android/email/activity/MessageList;->mListAdapter:Lcom/android/email/activity/MessageList$MessageListAdapter;

    invoke-static {v1}, Lcom/android/email/activity/MessageList$MessageListAdapter;->access$4900(Lcom/android/email/activity/MessageList$MessageListAdapter;)V

    .line 4427
    :cond_8
    iget-object v1, p0, Lcom/android/email/activity/MessageList;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/email/activity/MessageList;->mListAdapter:Lcom/android/email/activity/MessageList$MessageListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_0

    .line 4414
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 4415
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "MessageList >>"

    const-string v1, "footer remove ERROR ~~~~~~~~~~~~~~"

    invoke-static {v3, v7}, Lcom/android/email/Email;->logv(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private getSearchResultsCursor()Landroid/database/Cursor;
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 3081
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3082
    .local v6, selection:Ljava/lang/StringBuilder;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mailboxKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3083
    sget-object v1, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/activity/MessageList;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private getSelectedItemsFlagStatus()I
    .locals 13

    .prologue
    const/4 v4, 0x0

    .line 2775
    const/4 v8, 0x0

    .line 2776
    .local v8, flag:I
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mListAdapter:Lcom/android/email/activity/MessageList$MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageList$MessageListAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v12

    .line 2777
    .local v12, selectedSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mListAdapter:Lcom/android/email/activity/MessageList$MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageList$MessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v6

    .line 2778
    .local v6, c:Landroid/database/Cursor;
    const/4 v0, -0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 2779
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2780
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v9, v0

    .line 2781
    .local v9, id:J
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v12, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2782
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/email/provider/EmailContent$FollowupFlag;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/email/provider/EmailContent$FollowupFlag;->CONTENT_PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "messageKey=\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2785
    .local v7, ff:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2786
    :cond_1
    const/4 v8, -0x1

    .line 2789
    :cond_2
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2790
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2791
    const/4 v0, 0x6

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 2792
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2794
    :catch_0
    move-exception v0

    move-object v11, v0

    .line 2795
    .local v11, ise:Ljava/lang/IllegalStateException;
    :try_start_1
    const-string v0, "MessageList >>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IllegalStateException >>> syncFavorites"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 2796
    invoke-virtual {v11}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2797
    const/4 v8, -0x1

    .line 2800
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2805
    .end local v7           #ff:Landroid/database/Cursor;
    .end local v9           #id:J
    .end local v11           #ise:Ljava/lang/IllegalStateException;
    :cond_3
    :goto_1
    packed-switch v8, :pswitch_data_0

    .line 2815
    const/4 v8, 0x2

    .line 2817
    :goto_2
    :pswitch_0
    return v8

    .line 2800
    .restart local v7       #ff:Landroid/database/Cursor;
    .restart local v9       #id:J
    :cond_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    .line 2807
    .end local v7           #ff:Landroid/database/Cursor;
    .end local v9           #id:J
    :pswitch_1
    const/4 v8, 0x2

    .line 2808
    goto :goto_2

    .line 2812
    :pswitch_2
    const/4 v8, 0x0

    .line 2813
    goto :goto_2

    .line 2805
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private getSelectedItemsFlagStatus(J)I
    .locals 13
    .parameter "messageId"

    .prologue
    const/4 v4, 0x0

    const-string v12, "<<<<<<<<<<"

    .line 2675
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

    .line 2676
    const/4 v8, 0x0

    .line 2678
    .local v8, flag:I
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mListAdapter:Lcom/android/email/activity/MessageList$MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageList$MessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v6

    .line 2679
    .local v6, c:Landroid/database/Cursor;
    const/4 v0, -0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 2680
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2681
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v9, v0

    .line 2682
    .local v9, id:J
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 2683
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/email/provider/EmailContent$FollowupFlag;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/email/provider/EmailContent$FollowupFlag;->CONTENT_PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "messageKey=\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2686
    .local v7, ff:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2687
    :cond_1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>>>>>>>>>>  ff >>>>>>>>>>>>>>>>>>>>>>> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<<<<<<<<<<"

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2688
    const/4 v8, -0x1

    .line 2691
    :cond_2
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2692
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2693
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>>>>>>>>>>  ff.isAfterLast() >>>>>>>>>>>>>>>>>>>>>>> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<<<<<<<<<<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2694
    const/4 v0, 0x6

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 2695
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2697
    :catch_0
    move-exception v0

    move-object v11, v0

    .line 2698
    .local v11, ise:Ljava/lang/IllegalStateException;
    :try_start_1
    const-string v0, "MessageList >>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IllegalStateException >>> syncFavorites"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 2699
    invoke-virtual {v11}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2700
    const/4 v8, -0x1

    .line 2703
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2705
    .end local v11           #ise:Ljava/lang/IllegalStateException;
    :goto_1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "flag value is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2709
    .end local v7           #ff:Landroid/database/Cursor;
    .end local v9           #id:J
    :cond_3
    packed-switch v8, :pswitch_data_0

    .line 2719
    const/4 v8, 0x2

    .line 2721
    :goto_2
    :pswitch_0
    return v8

    .line 2703
    .restart local v7       #ff:Landroid/database/Cursor;
    .restart local v9       #id:J
    :cond_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    .line 2711
    .end local v7           #ff:Landroid/database/Cursor;
    .end local v9           #id:J
    :pswitch_1
    const/4 v8, 0x2

    .line 2712
    goto :goto_2

    .line 2716
    :pswitch_2
    const/4 v8, 0x0

    .line 2717
    goto :goto_2

    .line 2709
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
    .line 804
    sget v0, Lcom/android/email/activity/MessageList;->sSelectedSearchType:I

    return v0
.end method

.method public static getstrSearchWord()Ljava/lang/String;
    .locals 1

    .prologue
    .line 809
    sget-object v0, Lcom/android/email/activity/MessageList;->mSearchBar:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private loadMessagesTask(JJZI)V
    .locals 7
    .parameter "mailboxKey"
    .parameter "accountKey"
    .parameter "refreshView"
    .parameter "callBy"

    .prologue
    .line 850
    packed-switch p6, :pswitch_data_0

    .line 856
    :goto_0
    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->loadMessagesTask_Cancel()V

    .line 858
    new-instance v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/email/activity/MessageList$LoadMessagesTask;-><init>(Lcom/android/email/activity/MessageList;JJZ)V

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mLoadMessagesTask:Lcom/android/email/activity/MessageList$LoadMessagesTask;

    .line 859
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mLoadMessagesTask:Lcom/android/email/activity/MessageList$LoadMessagesTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageList$LoadMessagesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 860
    return-void

    .line 852
    :pswitch_0
    const-string v0, "TAG"

    const-string v1, "loadMessagesTask call by : SEARCH "

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 850
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method private loadMessagesTask_Cancel()V
    .locals 2

    .prologue
    .line 839
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mLoadMessagesTask:Lcom/android/email/activity/MessageList$LoadMessagesTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mLoadMessagesTask:Lcom/android/email/activity/MessageList$LoadMessagesTask;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageList$LoadMessagesTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 841
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mLoadMessagesTask:Lcom/android/email/activity/MessageList$LoadMessagesTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageList$LoadMessagesTask;->cancel(Z)Z

    .line 842
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mLoadMessagesTask:Lcom/android/email/activity/MessageList$LoadMessagesTask;

    .line 844
    :cond_0
    return-void
.end method

.method private lookupAccountIdFromMailboxId(J)J
    .locals 3
    .parameter "mailboxId"

    .prologue
    .line 2567
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-gez v1, :cond_0

    .line 2568
    const-wide/16 v1, -0x1

    .line 2572
    :goto_0
    return-wide v1

    .line 2570
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v0

    .line 2572
    .local v0, mailbox:Lcom/android/email/provider/EmailContent$Mailbox;
    iget-wide v1, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    goto :goto_0
.end method

.method private onAccounts()V
    .locals 0

    .prologue
    .line 2560
    invoke-static {p0}, Lcom/android/email/activity/AccountFolderList;->actionShowAccounts(Landroid/content/Context;)V

    .line 2561
    invoke-virtual {p0}, Lcom/android/email/activity/MessageList;->finish()V

    .line 2562
    return-void
.end method

.method private onAddIndexScroll()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1665
    iget-object v2, p0, Lcom/android/email/activity/MessageList;->mIndexView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    if-eqz v2, :cond_0

    .line 1685
    :goto_0
    return-void

    .line 1669
    :cond_0
    new-instance v2, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    invoke-direct {v2, p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/email/activity/MessageList;->mIndexView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    .line 1670
    iget-object v2, p0, Lcom/android/email/activity/MessageList;->mIndexView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->setSubscrollLimit(I)V

    .line 1671
    iget-object v2, p0, Lcom/android/email/activity/MessageList;->mIndexView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    new-instance v3, Lcom/android/email/activity/MessageList$4;

    invoke-direct {v3, p0}, Lcom/android/email/activity/MessageList$4;-><init>(Lcom/android/email/activity/MessageList;)V

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->setOnIndexSelectedListener(Lcom/sec/android/touchwiz/widget/TwIndexScrollView$OnIndexSelectedListener;)V

    .line 1676
    const v2, 0x7f0700b8

    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageList;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/android/email/activity/MessageList;->mIndexView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1678
    const v2, 0x7f0700b9

    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1679
    .local v0, listLayout:Landroid/widget/LinearLayout;
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1680
    .local v1, mlp:Landroid/view/ViewGroup$MarginLayoutParams;
    const/16 v2, 0xf

    invoke-virtual {v1, v4, v4, v2, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 1681
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1683
    iget-object v2, p0, Lcom/android/email/activity/MessageList;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/email/activity/MessageList;->mIndexView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    goto :goto_0
.end method

.method private onClearSearchResults()V
    .locals 4

    .prologue
    .line 3130
    iget-wide v2, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    invoke-direct {p0, v2, v3}, Lcom/android/email/activity/MessageList;->lookupAccountIdFromMailboxId(J)J

    move-result-wide v0

    .line 3131
    .local v0, accountId:J
    new-instance v2, Lcom/android/email/activity/MessageList$1ClearSearchResultsTask;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/email/activity/MessageList$1ClearSearchResultsTask;-><init>(Lcom/android/email/activity/MessageList;J)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MessageList$1ClearSearchResultsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 3132
    return-void
.end method

.method private onCompose()V
    .locals 2

    .prologue
    .line 2576
    iget-wide v0, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/MessageList;->lookupAccountIdFromMailboxId(J)J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/android/email/activity/MessageCompose;->actionCompose(Landroid/content/Context;J)V

    .line 2577
    return-void
.end method

.method private onDelete(JJ)V
    .locals 7
    .parameter "messageId"
    .parameter "accountId"

    .prologue
    const/4 v6, 0x0

    .line 2936
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMoveMessageTask:Lcom/android/email/activity/MessageList$MoveMessageTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMoveMessageTask:Lcom/android/email/activity/MessageList$MoveMessageTask;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageList$MoveMessageTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 2938
    const v0, 0x7f080162

    invoke-static {p0, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2944
    :goto_0
    return-void

    .line 2941
    :cond_0
    new-instance v0, Lcom/android/email/activity/MessageList$MoveMessageTask;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/email/activity/MessageList$MoveMessageTask;-><init>(Lcom/android/email/activity/MessageList;JJ)V

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mMoveMessageTask:Lcom/android/email/activity/MessageList$MoveMessageTask;

    .line 2942
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMoveMessageTask:Lcom/android/email/activity/MessageList$MoveMessageTask;

    new-array v1, v6, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageList$MoveMessageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private onDeleteAll()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2985
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMoveMessageTask:Lcom/android/email/activity/MessageList$MoveMessageTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMoveMessageTask:Lcom/android/email/activity/MessageList$MoveMessageTask;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageList$MoveMessageTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 2987
    const v0, 0x7f080162

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2993
    :goto_0
    return-void

    .line 2990
    :cond_0
    new-instance v0, Lcom/android/email/activity/MessageList$MoveMessageTask;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MessageList$MoveMessageTask;-><init>(Lcom/android/email/activity/MessageList;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mMoveMessageTask:Lcom/android/email/activity/MessageList$MoveMessageTask;

    .line 2991
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMoveMessageTask:Lcom/android/email/activity/MessageList$MoveMessageTask;

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageList$MoveMessageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private onDeleteAllPopup()V
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v5, -0x1

    .line 2948
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2950
    .local v0, backWarning:Landroid/app/AlertDialog$Builder;
    const v4, 0x1080027

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 2951
    const v4, 0x7f080016

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2954
    iget-object v4, p0, Lcom/android/email/activity/MessageList;->mListAdapter:Lcom/android/email/activity/MessageList$MessageListAdapter;

    invoke-virtual {v4}, Lcom/android/email/activity/MessageList$MessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 2955
    .local v1, c:Landroid/database/Cursor;
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 2956
    .local v2, count:I
    invoke-interface {v1, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 2957
    :cond_0
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2958
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-ne v4, v5, :cond_0

    .line 2959
    sub-int/2addr v2, v6

    goto :goto_0

    .line 2962
    :cond_1
    invoke-virtual {p0}, Lcom/android/email/activity/MessageList;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0006

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v2, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 2963
    .local v3, reportString:Ljava/lang/String;
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2965
    const v4, 0x7f080011

    new-instance v5, Lcom/android/email/activity/MessageList$15;

    invoke-direct {v5, p0}, Lcom/android/email/activity/MessageList$15;-><init>(Lcom/android/email/activity/MessageList;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2974
    const v4, 0x7f080012

    new-instance v5, Lcom/android/email/activity/MessageList$16;

    invoke-direct {v5, p0}, Lcom/android/email/activity/MessageList$16;-><init>(Lcom/android/email/activity/MessageList;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2980
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 2981
    return-void
.end method

.method private onDeletePopup(JJ)V
    .locals 11
    .parameter "messageId"
    .parameter "accountId"

    .prologue
    .line 2906
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2907
    .local v6, backWarning:Landroid/app/AlertDialog$Builder;
    move-wide v2, p1

    .line 2908
    .local v2, messageIdforDelete:J
    move-wide v4, p3

    .line 2909
    .local v4, accountIdforDelete:J
    const v0, 0x1080027

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 2910
    const v0, 0x7f080016

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2912
    invoke-virtual {p0}, Lcom/android/email/activity/MessageList;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0006

    const/4 v7, 0x1

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v0, v1, v7, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 2914
    .local v7, reportString:Ljava/lang/String;
    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2917
    const v7, 0x7f080011

    new-instance v0, Lcom/android/email/activity/MessageList$13;

    .end local v7           #reportString:Ljava/lang/String;
    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/email/activity/MessageList$13;-><init>(Lcom/android/email/activity/MessageList;JJ)V

    invoke-virtual {v6, v7, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2926
    const v0, 0x7f080012

    new-instance v1, Lcom/android/email/activity/MessageList$14;

    invoke-direct {v1, p0}, Lcom/android/email/activity/MessageList$14;-><init>(Lcom/android/email/activity/MessageList;)V

    invoke-virtual {v6, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2932
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 2933
    return-void
.end method

.method private onDeselectAll()V
    .locals 1

    .prologue
    .line 2584
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mListAdapter:Lcom/android/email/activity/MessageList$MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageList$MessageListAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 2585
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 2586
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageList;->showMultiPanel(Z)V

    .line 2587
    return-void
.end method

.method private onEditAccount()V
    .locals 2

    .prologue
    .line 2580
    iget-wide v0, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/MessageList;->lookupAccountIdFromMailboxId(J)J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/android/email/activity/setup/AccountSettings;->actionSettings(Landroid/app/Activity;J)V

    .line 2581
    return-void
.end method

.method private onEmptyMailbox()Landroid/database/Cursor;
    .locals 6

    .prologue
    const v4, 0x7f080140

    const/4 v3, 0x0

    const-string v5, "MessageList >>"

    .line 1707
    const-string v2, "MessageList >>"

    const-string v2, "onEmptyMailbox() called : MailBox is empty"

    invoke-static {v5, v2}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1709
    new-instance v0, Landroid/database/MatrixCursor;

    iget-object v2, p0, Lcom/android/email/activity/MessageList;->MESSAGE_LIST_ADAPTER_PROJECTION:[Ljava/lang/String;

    invoke-direct {v0, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1713
    .local v0, childCursor:Landroid/database/MatrixCursor;
    invoke-virtual {v0}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v1

    .line 1714
    .local v1, row:Landroid/database/MatrixCursor$RowBuilder;
    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 1715
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 1716
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 1717
    invoke-virtual {p0, v4}, Lcom/android/email/activity/MessageList;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 1719
    const-string v2, "MessageList >>"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onEmptyMailbox() called : MailBox string : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v4}, Lcom/android/email/activity/MessageList;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1721
    return-object v0
.end method

.method private onFolders()V
    .locals 4

    .prologue
    .line 2277
    iget-wide v0, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 2280
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    if-nez v0, :cond_1

    .line 2281
    iget-wide v0, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    invoke-static {p0, v0, v1}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    .line 2282
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    if-nez v0, :cond_0

    .line 2283
    const-string v0, "MessageList >>"

    const-string v1, "onFolders : mMailbox is null."

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 2292
    :cond_0
    :goto_0
    return-void

    .line 2288
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-static {p0, v0, v1}, Lcom/android/email/activity/MailboxList;->actionHandleAccount(Landroid/content/Context;J)V

    .line 2289
    invoke-virtual {p0}, Lcom/android/email/activity/MessageList;->finish()V

    goto :goto_0
.end method

.method private onFollowUpFlag()V
    .locals 4

    .prologue
    .line 2591
    invoke-virtual {p0}, Lcom/android/email/activity/MessageList;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060018

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 2592
    .local v1, followUpFlagOptions:[Ljava/lang/String;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2593
    .local v0, flagOptions:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f08019a

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2594
    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->getSelectedItemsFlagStatus()I

    move-result v2

    new-instance v3, Lcom/android/email/activity/MessageList$11;

    invoke-direct {v3, p0}, Lcom/android/email/activity/MessageList$11;-><init>(Lcom/android/email/activity/MessageList;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2609
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/activity/MessageList;->followUpFlagAlert:Landroid/app/AlertDialog;

    .line 2610
    iget-object v2, p0, Lcom/android/email/activity/MessageList;->followUpFlagAlert:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 2611
    return-void
.end method

.method private onFollowUpFlag(J)V
    .locals 6
    .parameter "messageId"

    .prologue
    .line 2616
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "follow up through context menu"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2617
    move-wide v2, p1

    .line 2618
    .local v2, id:J
    invoke-virtual {p0}, Lcom/android/email/activity/MessageList;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060018

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 2619
    .local v1, followUpFlagOptions:[Ljava/lang/String;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2620
    .local v0, flagOptions:Landroid/app/AlertDialog$Builder;
    const v4, 0x7f08019a

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2621
    invoke-direct {p0, v2, v3}, Lcom/android/email/activity/MessageList;->getSelectedItemsFlagStatus(J)I

    move-result v4

    new-instance v5, Lcom/android/email/activity/MessageList$12;

    invoke-direct {v5, p0, v2, v3}, Lcom/android/email/activity/MessageList$12;-><init>(Lcom/android/email/activity/MessageList;J)V

    invoke-virtual {v0, v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2643
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/email/activity/MessageList;->followUpFlagAlert:Landroid/app/AlertDialog;

    .line 2644
    iget-object v4, p0, Lcom/android/email/activity/MessageList;->followUpFlagAlert:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 2645
    return-void
.end method

.method private onForward(J)V
    .locals 0
    .parameter "messageId"

    .prologue
    .line 2850
    invoke-static {p0, p1, p2}, Lcom/android/email/activity/MessageCompose;->actionForward(Landroid/content/Context;J)V

    .line 2851
    return-void
.end method

.method private onListbySearch()V
    .locals 9

    .prologue
    const v8, 0x7f080150

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x3

    .line 948
    iget-object v2, p0, Lcom/android/email/activity/MessageList;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    if-nez v2, :cond_0

    .line 949
    iget-wide v2, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    invoke-static {p0, v2, v3}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/activity/MessageList;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    .line 950
    iget-object v2, p0, Lcom/android/email/activity/MessageList;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    if-nez v2, :cond_0

    .line 1024
    :goto_0
    return-void

    .line 954
    :cond_0
    const/4 v1, 0x0

    .line 955
    .local v1, sortType:[Ljava/lang/String;
    iget-object v2, p0, Lcom/android/email/activity/MessageList;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget v2, v2, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    if-nez v2, :cond_2

    .line 957
    new-array v1, v4, [Ljava/lang/String;

    .end local v1           #sortType:[Ljava/lang/String;
    const v2, 0x7f080151

    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageList;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    const v2, 0x7f0800ff

    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageList;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p0, v8}, Lcom/android/email/activity/MessageList;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    .line 958
    .restart local v1       #sortType:[Ljava/lang/String;
    sget v2, Lcom/android/email/activity/MessageList;->sSelectedSearchType:I

    if-ne v2, v4, :cond_1

    .line 960
    sput v5, Lcom/android/email/activity/MessageList;->sSelectedSearchType:I

    .line 981
    :cond_1
    :goto_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 982
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f080025

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 984
    sget v2, Lcom/android/email/activity/MessageList;->sSelectedSearchType:I

    new-instance v3, Lcom/android/email/activity/MessageList$3;

    invoke-direct {v3, p0}, Lcom/android/email/activity/MessageList$3;-><init>(Lcom/android/email/activity/MessageList;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1023
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 963
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :cond_2
    iget-object v2, p0, Lcom/android/email/activity/MessageList;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget v2, v2, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    if-eq v2, v4, :cond_3

    iget-object v2, p0, Lcom/android/email/activity/MessageList;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget v2, v2, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/android/email/activity/MessageList;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget v2, v2, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_4

    .line 966
    :cond_3
    new-array v1, v4, [Ljava/lang/String;

    .end local v1           #sortType:[Ljava/lang/String;
    const v2, 0x7f080151

    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageList;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    const v2, 0x7f080100

    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageList;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p0, v8}, Lcom/android/email/activity/MessageList;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    .line 967
    .restart local v1       #sortType:[Ljava/lang/String;
    sget v2, Lcom/android/email/activity/MessageList;->sSelectedSearchType:I

    if-ne v2, v4, :cond_1

    .line 969
    sput v5, Lcom/android/email/activity/MessageList;->sSelectedSearchType:I

    goto :goto_1

    .line 974
    :cond_4
    new-array v1, v4, [Ljava/lang/String;

    .end local v1           #sortType:[Ljava/lang/String;
    const v2, 0x7f080151

    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageList;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    const v2, 0x7f0800ff

    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageList;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p0, v8}, Lcom/android/email/activity/MessageList;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    .line 975
    .restart local v1       #sortType:[Ljava/lang/String;
    sget v2, Lcom/android/email/activity/MessageList;->sSelectedSearchType:I

    if-ne v2, v4, :cond_1

    .line 977
    sput v5, Lcom/android/email/activity/MessageList;->sSelectedSearchType:I

    goto :goto_1
.end method

.method private onLoadMoreMessages()V
    .locals 4

    .prologue
    .line 2856
    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->checkITPolicy_AllowPOPIMAP()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2858
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "11111 MessageList.java >>>>> onLoadMoreMessages()  >>>>> 2147"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2859
    const v0, 0x7f080188

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2870
    :cond_0
    :goto_0
    return-void

    .line 2864
    :cond_1
    iget-wide v0, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    .line 2865
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mController:Lcom/android/email/Controller;

    iget-wide v1, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    iget-object v3, p0, Lcom/android/email/activity/MessageList;->mControllerCallback:Lcom/android/email/activity/MessageList$ControllerResults;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/Controller;->loadMoreMessages(JLcom/android/email/Controller$Result;)V

    goto :goto_0

    .line 2867
    :cond_2
    iget-wide v0, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 2868
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageList;->updateMessageLists(Z)V

    goto :goto_0
.end method

.method private onMove(J)V
    .locals 11
    .parameter "messageId"

    .prologue
    const/4 v7, 0x1

    const/4 v9, 0x0

    const-string v10, "displayName"

    .line 2211
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v9

    const-string v0, "displayName"

    aput-object v10, v2, v7

    const/4 v0, 0x2

    const-string v1, "type"

    aput-object v1, v2, v0

    .line 2214
    .local v2, MAILBOX_LIST_PROJECTION:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "accountKey=? AND type<64 AND type<>3 AND type<>4 AND type<>5 AND type<>8 AND flagVisible=1  AND _id<>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v4, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2227
    .local v3, MAILBOX_SELECTION:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    if-nez v0, :cond_0

    .line 2228
    iget-wide v0, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    invoke-static {p0, v0, v1}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    .line 2229
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    if-nez v0, :cond_0

    .line 2230
    const-string v0, "MessageList >>"

    const-string v1, "onMove : mMailbox is null."

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 2247
    :goto_0
    return-void

    .line 2235
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/email/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    new-array v4, v7, [Ljava/lang/String;

    iget-object v5, p0, Lcom/android/email/activity/MessageList;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-wide v7, v5, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2239
    .local v6, c:Landroid/database/Cursor;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f080152

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/email/activity/MessageList$8;

    invoke-direct {v1, p0, p1, p2, v6}, Lcom/android/email/activity/MessageList$8;-><init>(Lcom/android/email/activity/MessageList;JLandroid/database/Cursor;)V

    const-string v4, "displayName"

    invoke-virtual {v0, v6, v1, v10}, Landroid/app/AlertDialog$Builder;->setCursor(Landroid/database/Cursor;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private onMultiDelete()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3370
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMoveMessageTask:Lcom/android/email/activity/MessageList$MoveMessageTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMoveMessageTask:Lcom/android/email/activity/MessageList$MoveMessageTask;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageList$MoveMessageTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 3372
    const v0, 0x7f080162

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3373
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mListAdapter:Lcom/android/email/activity/MessageList$MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageList$MessageListAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 3374
    invoke-direct {p0, v3}, Lcom/android/email/activity/MessageList;->showMultiPanel(Z)V

    .line 3380
    :goto_0
    return-void

    .line 3377
    :cond_0
    new-instance v0, Lcom/android/email/activity/MessageList$MoveMessageTask;

    iget-wide v1, p0, Lcom/android/email/activity/MessageList;->mAccountId:J

    invoke-direct {v0, p0, v1, v2}, Lcom/android/email/activity/MessageList$MoveMessageTask;-><init>(Lcom/android/email/activity/MessageList;J)V

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mMoveMessageTask:Lcom/android/email/activity/MessageList$MoveMessageTask;

    .line 3378
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMoveMessageTask:Lcom/android/email/activity/MessageList$MoveMessageTask;

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageList$MoveMessageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private onMultiDeletePopup()V
    .locals 8

    .prologue
    .line 3341
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3343
    .local v0, backWarning:Landroid/app/AlertDialog$Builder;
    const v2, 0x1080027

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 3344
    const v2, 0x7f080016

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 3346
    invoke-virtual {p0}, Lcom/android/email/activity/MessageList;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0006

    iget-object v4, p0, Lcom/android/email/activity/MessageList;->mListAdapter:Lcom/android/email/activity/MessageList$MessageListAdapter;

    invoke-static {v4}, Lcom/android/email/activity/MessageList$MessageListAdapter;->access$3500(Lcom/android/email/activity/MessageList$MessageListAdapter;)Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/email/activity/MessageList;->mListAdapter:Lcom/android/email/activity/MessageList$MessageListAdapter;

    invoke-static {v7}, Lcom/android/email/activity/MessageList$MessageListAdapter;->access$3500(Lcom/android/email/activity/MessageList$MessageListAdapter;)Ljava/util/HashSet;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/HashSet;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 3349
    .local v1, reportString:Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 3352
    const v2, 0x7f080011

    new-instance v3, Lcom/android/email/activity/MessageList$20;

    invoke-direct {v3, p0}, Lcom/android/email/activity/MessageList$20;-><init>(Lcom/android/email/activity/MessageList;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3360
    const v2, 0x7f080012

    new-instance v3, Lcom/android/email/activity/MessageList$21;

    invoke-direct {v3, p0}, Lcom/android/email/activity/MessageList$21;-><init>(Lcom/android/email/activity/MessageList;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3366
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 3367
    return-void
.end method

.method private onMultiMove(JJ)V
    .locals 9
    .parameter "accountKey"
    .parameter "mailboxId"

    .prologue
    const/4 v8, 0x0

    .line 3632
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 3633
    iget-wide v0, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    invoke-static {p0, v0, v1}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    .line 3634
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    if-nez v0, :cond_1

    .line 3635
    const-string v0, "MessageList >>"

    const-string v1, "onMultiMove : mMailbox is null."

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 3670
    :cond_0
    :goto_0
    return-void

    .line 3643
    :cond_1
    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->checkITPolicy_AllowPOPIMAP()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3645
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "11111 MessageList.java >>>>> onMultiMove()  >>>>> 2658"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 3646
    const v0, 0x7f080188

    invoke-static {p0, v0, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3650
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mListAdapter:Lcom/android/email/activity/MessageList$MessageListAdapter;

    invoke-static {v0}, Lcom/android/email/activity/MessageList$MessageListAdapter;->access$3500(Lcom/android/email/activity/MessageList$MessageListAdapter;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 3651
    invoke-direct {p0, v8}, Lcom/android/email/activity/MessageList;->showMultiPanel(Z)V

    goto :goto_0

    .line 3657
    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    cmp-long v0, v0, p3

    if-eqz v0, :cond_0

    .line 3659
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMoveMessageTask:Lcom/android/email/activity/MessageList$MoveMessageTask;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMoveMessageTask:Lcom/android/email/activity/MessageList$MoveMessageTask;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageList$MoveMessageTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_3

    .line 3661
    const v0, 0x7f08015f

    invoke-static {p0, v0, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3662
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mListAdapter:Lcom/android/email/activity/MessageList$MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageList$MessageListAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 3663
    invoke-direct {p0, v8}, Lcom/android/email/activity/MessageList;->showMultiPanel(Z)V

    goto :goto_0

    .line 3666
    :cond_3
    new-instance v0, Lcom/android/email/activity/MessageList$MoveMessageTask;

    iget-wide v6, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/email/activity/MessageList$MoveMessageTask;-><init>(Lcom/android/email/activity/MessageList;JJJ)V

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mMoveMessageTask:Lcom/android/email/activity/MessageList$MoveMessageTask;

    .line 3667
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMoveMessageTask:Lcom/android/email/activity/MessageList$MoveMessageTask;

    new-array v1, v8, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageList$MoveMessageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private onMultiMoveOtherAccount(JJ)V
    .locals 11
    .parameter "accountKey"
    .parameter "mailboxId"

    .prologue
    const/4 v10, 0x0

    .line 3674
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 3675
    iget-wide v0, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    invoke-static {p0, v0, v1}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    .line 3676
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    if-nez v0, :cond_1

    .line 3677
    const-string v0, "MessageList >>"

    const-string v1, "onMultiMoveOtherAccount : mMailbox is null."

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 3710
    :cond_0
    :goto_0
    return-void

    .line 3684
    :cond_1
    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->checkITPolicy_AllowPOPIMAP()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3686
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "11111 MessageList.java >>>>> onMultiMoveOtherAccount()  >>>>> 2692"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 3687
    const v0, 0x7f080188

    invoke-static {p0, v0, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3690
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mListAdapter:Lcom/android/email/activity/MessageList$MessageListAdapter;

    invoke-static {v0}, Lcom/android/email/activity/MessageList$MessageListAdapter;->access$3500(Lcom/android/email/activity/MessageList$MessageListAdapter;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 3691
    invoke-direct {p0, v10}, Lcom/android/email/activity/MessageList;->showMultiPanel(Z)V

    goto :goto_0

    .line 3697
    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    cmp-long v0, v0, p3

    if-eqz v0, :cond_0

    .line 3699
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMoveMessageTask:Lcom/android/email/activity/MessageList$MoveMessageTask;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMoveMessageTask:Lcom/android/email/activity/MessageList$MoveMessageTask;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageList$MoveMessageTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_3

    .line 3701
    const v0, 0x7f08015f

    invoke-static {p0, v0, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3702
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mListAdapter:Lcom/android/email/activity/MessageList$MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageList$MessageListAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 3703
    invoke-direct {p0, v10}, Lcom/android/email/activity/MessageList;->showMultiPanel(Z)V

    goto :goto_0

    .line 3706
    :cond_3
    new-instance v0, Lcom/android/email/activity/MessageList$MoveMessageTask;

    iget-object v1, p0, Lcom/android/email/activity/MessageList;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-wide v2, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    iget-wide v4, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    move-object v1, p0

    move-wide v6, p1

    move-wide v8, p3

    invoke-direct/range {v0 .. v9}, Lcom/android/email/activity/MessageList$MoveMessageTask;-><init>(Lcom/android/email/activity/MessageList;JJJJ)V

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mMoveMessageTask:Lcom/android/email/activity/MessageList$MoveMessageTask;

    .line 3707
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMoveMessageTask:Lcom/android/email/activity/MessageList$MoveMessageTask;

    new-array v1, v10, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageList$MoveMessageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private onMultiMovePopup()V
    .locals 34

    .prologue
    .line 3383
    const-string v6, "accountKey=? AND type<64 AND flagVisible=1"

    .line 3388
    .local v6, MAILBOX_SELECTION:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    move-object v3, v0

    if-nez v3, :cond_1

    .line 3389
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    move-wide v3, v0

    move-object/from16 v0, p0

    move-wide v1, v3

    invoke-static {v0, v1, v2}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/MessageList;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    .line 3390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    move-object v3, v0

    if-nez v3, :cond_1

    .line 3391
    const-string v3, "MessageList >>"

    const-string v4, "onFolders : mMailbox is null."

    invoke-static {v3, v4}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 3392
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MessageList;->finish()V

    .line 3546
    :cond_0
    :goto_0
    return-void

    .line 3402
    :cond_1
    const/16 v26, 0x0

    .line 3403
    .local v26, mailBoxCnt:I
    const/16 v31, 0x0

    .line 3405
    .local v31, tempTypeInCurrentAccount:[Lcom/android/email/activity/MessageList$MailBoxType;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList;->mResolver:Landroid/content/ContentResolver;

    move-object v3, v0

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

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    move-object v9, v0

    iget-wide v9, v9, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const-string v8, "type,displayName"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v22

    .line 3413
    .local v22, cursor:Landroid/database/Cursor;
    if-eqz v22, :cond_0

    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-lez v3, :cond_0

    .line 3418
    const/4 v3, -0x1

    :try_start_1
    move-object/from16 v0, v22

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 3419
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    move v0, v3

    new-array v0, v0, [Lcom/android/email/activity/MessageList$MailBoxType;

    move-object/from16 v31, v0
    :try_end_1
    .catch Landroid/database/sqlite/DatabaseObjectNotClosedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 3420
    add-int/lit8 v27, v26, 0x1

    .end local v26           #mailBoxCnt:I
    .local v27, mailBoxCnt:I
    :try_start_2
    new-instance v7, Lcom/android/email/activity/MessageList$MailBoxType;

    const-wide/16 v9, -0x1

    const-wide/16 v11, -0x1

    const v3, 0x7f080153

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageList;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v13}, Lcom/android/email/activity/MessageList$MailBoxType;-><init>(Lcom/android/email/activity/MessageList;JJLjava/lang/String;)V

    aput-object v7, v31, v26

    .line 3421
    :goto_1
    :pswitch_0
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3422
    invoke-static/range {p0 .. p0}, Lcom/android/email/Utility$FolderProperties;->getInstance(Landroid/content/Context;)Lcom/android/email/Utility$FolderProperties;

    move-result-object v3

    const/4 v4, 0x2

    move-object/from16 v0, v22

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/email/Utility$FolderProperties;->getDisplayName(I)Ljava/lang/String;

    move-result-object v13

    .line 3423
    .local v13, text:Ljava/lang/String;
    if-nez v13, :cond_2

    .line 3424
    const/4 v3, 0x1

    move-object/from16 v0, v22

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 3426
    :cond_2
    const/4 v3, 0x2

    move-object/from16 v0, v22

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 3436
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    move-wide v3, v0

    const/4 v5, 0x0

    move-object/from16 v0, v22

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J
    :try_end_2
    .catch Landroid/database/sqlite/DatabaseObjectNotClosedException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_9

    move-result-wide v5

    cmp-long v3, v3, v5

    if-eqz v3, :cond_c

    .line 3438
    add-int/lit8 v26, v27, 0x1

    .end local v27           #mailBoxCnt:I
    .restart local v26       #mailBoxCnt:I
    :try_start_3
    new-instance v7, Lcom/android/email/activity/MessageList$MailBoxType;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    move-object v3, v0

    iget-wide v9, v3, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    const/4 v3, 0x0

    move-object/from16 v0, v22

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v13}, Lcom/android/email/activity/MessageList$MailBoxType;-><init>(Lcom/android/email/activity/MessageList;JJLjava/lang/String;)V

    aput-object v7, v31, v27
    :try_end_3
    .catch Landroid/database/sqlite/DatabaseObjectNotClosedException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :goto_2
    move/from16 v27, v26

    .line 3441
    .end local v26           #mailBoxCnt:I
    .restart local v27       #mailBoxCnt:I
    goto :goto_1

    .line 3442
    .end local v13           #text:Ljava/lang/String;
    .end local v27           #mailBoxCnt:I
    .restart local v26       #mailBoxCnt:I
    :catch_0
    move-exception v3

    move-object/from16 v28, v3

    .line 3443
    .local v28, nce:Landroid/database/sqlite/DatabaseObjectNotClosedException;
    :goto_3
    :try_start_4
    const-string v3, "MessageList >>"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DatabaseObjectNotClosedException >>> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 3444
    invoke-virtual/range {v28 .. v28}, Landroid/database/sqlite/DatabaseObjectNotClosedException;->printStackTrace()V

    .line 3445
    if-eqz v22, :cond_0

    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3446
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 3460
    .end local v22           #cursor:Landroid/database/Cursor;
    .end local v28           #nce:Landroid/database/sqlite/DatabaseObjectNotClosedException;
    :catch_1
    move-exception v3

    move-object/from16 v23, v3

    .line 3461
    .local v23, e:Ljava/lang/Exception;
    :goto_4
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 3449
    .end local v23           #e:Ljava/lang/Exception;
    .restart local v22       #cursor:Landroid/database/Cursor;
    :catch_2
    move-exception v3

    move-object/from16 v25, v3

    .line 3450
    .local v25, ise:Ljava/lang/IllegalStateException;
    :goto_5
    :try_start_5
    const-string v3, "MessageList >>"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IllegalStateException >>> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 3451
    invoke-virtual/range {v25 .. v25}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 3452
    if-eqz v22, :cond_0

    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3453
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    .line 3457
    .end local v25           #ise:Ljava/lang/IllegalStateException;
    .end local v26           #mailBoxCnt:I
    .restart local v27       #mailBoxCnt:I
    :cond_3
    if-eqz v22, :cond_4

    :try_start_6
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_4

    .line 3458
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_9

    .line 3465
    :cond_4
    const/16 v29, 0x0

    .line 3466
    .local v29, otherAccountsCnt:I
    const/16 v32, 0x0

    .line 3468
    .local v32, tempTypeInOtherAccounts:[Lcom/android/email/activity/MessageList$MailBoxType;
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList;->mResolver:Landroid/content/ContentResolver;

    move-object v7, v0

    sget-object v8, Lcom/android/email/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x2

    new-array v9, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v9, v3

    const/4 v3, 0x1

    const-string v4, "displayName"

    aput-object v4, v9, v3

    const-string v10, "_id!=?"

    const/4 v3, 0x1

    new-array v11, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    move-object v4, v0

    iget-wide v4, v4, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v11, v3

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v22

    .line 3470
    if-eqz v22, :cond_8

    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_8

    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->getCount()I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    move-result v3

    if-lez v3, :cond_8

    .line 3472
    const/4 v3, -0x1

    :try_start_8
    move-object/from16 v0, v22

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 3473
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    move v0, v3

    new-array v0, v0, [Lcom/android/email/activity/MessageList$MailBoxType;

    move-object/from16 v32, v0
    :try_end_8
    .catch Landroid/database/sqlite/DatabaseObjectNotClosedException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    .line 3474
    add-int/lit8 v30, v29, 0x1

    .end local v29           #otherAccountsCnt:I
    .local v30, otherAccountsCnt:I
    :try_start_9
    new-instance v14, Lcom/android/email/activity/MessageList$MailBoxType;

    const-wide/16 v16, -0x1

    const-wide/16 v18, -0x1

    const v3, 0x7f080154

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageList;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v15, p0

    invoke-direct/range {v14 .. v20}, Lcom/android/email/activity/MessageList$MailBoxType;-><init>(Lcom/android/email/activity/MessageList;JJLjava/lang/String;)V

    aput-object v14, v32, v29

    .line 3475
    :cond_5
    :goto_6
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 3476
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList;->mController:Lcom/android/email/Controller;

    move-object v3, v0

    const/4 v4, 0x0

    move-object/from16 v0, v22

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/android/email/Controller;->returnAccountType(J)I
    :try_end_9
    .catch Landroid/database/sqlite/DatabaseObjectNotClosedException; {:try_start_9 .. :try_end_9} :catch_8
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_9} :catch_7
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_5

    .line 3478
    add-int/lit8 v29, v30, 0x1

    .end local v30           #otherAccountsCnt:I
    .restart local v29       #otherAccountsCnt:I
    :try_start_a
    new-instance v14, Lcom/android/email/activity/MessageList$MailBoxType;

    const/4 v3, 0x0

    move-object/from16 v0, v22

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    const-wide/16 v18, -0x1

    const/4 v3, 0x1

    move-object/from16 v0, v22

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v15, p0

    invoke-direct/range {v14 .. v20}, Lcom/android/email/activity/MessageList$MailBoxType;-><init>(Lcom/android/email/activity/MessageList;JJLjava/lang/String;)V

    aput-object v14, v32, v30
    :try_end_a
    .catch Landroid/database/sqlite/DatabaseObjectNotClosedException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    move/from16 v30, v29

    .end local v29           #otherAccountsCnt:I
    .restart local v30       #otherAccountsCnt:I
    goto :goto_6

    :cond_6
    move/from16 v29, v30

    .line 3494
    .end local v30           #otherAccountsCnt:I
    .restart local v29       #otherAccountsCnt:I
    :cond_7
    :goto_7
    if-eqz v22, :cond_8

    :try_start_b
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_8

    .line 3495
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    .line 3502
    :cond_8
    :goto_8
    const/4 v3, 0x1

    move/from16 v0, v29

    move v1, v3

    if-ne v0, v1, :cond_9

    .line 3504
    const/16 v29, 0x0

    .line 3507
    :cond_9
    add-int v3, v27, v29

    move v0, v3

    new-array v0, v0, [Lcom/android/email/activity/MessageList$MailBoxType;

    move-object/from16 v33, v0

    .line 3509
    .local v33, viewType:[Lcom/android/email/activity/MessageList$MailBoxType;
    const/16 v24, 0x0

    .local v24, i:I
    :goto_9
    move/from16 v0, v24

    move/from16 v1, v27

    if-ge v0, v1, :cond_a

    .line 3510
    aget-object v3, v31, v24

    aput-object v3, v33, v24

    .line 3509
    add-int/lit8 v24, v24, 0x1

    goto :goto_9

    .line 3481
    .end local v24           #i:I
    .end local v33           #viewType:[Lcom/android/email/activity/MessageList$MailBoxType;
    :catch_3
    move-exception v3

    move-object/from16 v28, v3

    .line 3482
    .restart local v28       #nce:Landroid/database/sqlite/DatabaseObjectNotClosedException;
    :goto_a
    :try_start_c
    const-string v3, "MessageList >>"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DatabaseObjectNotClosedException >>> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 3483
    invoke-virtual/range {v28 .. v28}, Landroid/database/sqlite/DatabaseObjectNotClosedException;->printStackTrace()V

    .line 3484
    if-eqz v22, :cond_7

    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_7

    .line 3485
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4

    goto :goto_7

    .line 3498
    .end local v28           #nce:Landroid/database/sqlite/DatabaseObjectNotClosedException;
    :catch_4
    move-exception v3

    move-object/from16 v23, v3

    .line 3499
    .restart local v23       #e:Ljava/lang/Exception;
    :goto_b
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8

    .line 3487
    .end local v23           #e:Ljava/lang/Exception;
    :catch_5
    move-exception v3

    move-object/from16 v25, v3

    .line 3488
    .restart local v25       #ise:Ljava/lang/IllegalStateException;
    :goto_c
    :try_start_d
    const-string v3, "MessageList >>"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IllegalStateException >>> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 3489
    invoke-virtual/range {v25 .. v25}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 3490
    if-eqz v22, :cond_7

    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_7

    .line 3491
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4

    goto/16 :goto_7

    .line 3512
    .end local v25           #ise:Ljava/lang/IllegalStateException;
    .restart local v24       #i:I
    .restart local v33       #viewType:[Lcom/android/email/activity/MessageList$MailBoxType;
    :cond_a
    const/16 v24, 0x0

    :goto_d
    move/from16 v0, v24

    move/from16 v1, v29

    if-ge v0, v1, :cond_b

    .line 3513
    add-int v3, v27, v24

    aget-object v4, v32, v24

    aput-object v4, v33, v3

    .line 3512
    add-int/lit8 v24, v24, 0x1

    goto :goto_d

    .line 3516
    :cond_b
    new-instance v3, Lcom/android/email/activity/MessageList$MailBoxAdapter;

    move-object v0, v3

    move-object/from16 v1, p0

    move-object/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/android/email/activity/MessageList$MailBoxAdapter;-><init>(Landroid/content/Context;[Lcom/android/email/activity/MessageList$MailBoxType;)V

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/MessageList;->mMoveListAdapter:Lcom/android/email/activity/MessageList$MailBoxAdapter;

    .line 3518
    new-instance v21, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3521
    .local v21, builder:Landroid/app/AlertDialog$Builder;
    const v3, 0x7f080152

    move-object/from16 v0, v21

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 3522
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList;->mMoveListAdapter:Lcom/android/email/activity/MessageList$MailBoxAdapter;

    move-object v3, v0

    new-instance v4, Lcom/android/email/activity/MessageList$22;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/email/activity/MessageList$22;-><init>(Lcom/android/email/activity/MessageList;)V

    move-object/from16 v0, v21

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3545
    invoke-virtual/range {v21 .. v21}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 3498
    .end local v21           #builder:Landroid/app/AlertDialog$Builder;
    .end local v24           #i:I
    .end local v29           #otherAccountsCnt:I
    .end local v33           #viewType:[Lcom/android/email/activity/MessageList$MailBoxType;
    .restart local v30       #otherAccountsCnt:I
    :catch_6
    move-exception v3

    move-object/from16 v23, v3

    move/from16 v29, v30

    .end local v30           #otherAccountsCnt:I
    .restart local v29       #otherAccountsCnt:I
    goto/16 :goto_b

    .line 3487
    .end local v29           #otherAccountsCnt:I
    .restart local v30       #otherAccountsCnt:I
    :catch_7
    move-exception v3

    move-object/from16 v25, v3

    move/from16 v29, v30

    .end local v30           #otherAccountsCnt:I
    .restart local v29       #otherAccountsCnt:I
    goto/16 :goto_c

    .line 3481
    .end local v29           #otherAccountsCnt:I
    .restart local v30       #otherAccountsCnt:I
    :catch_8
    move-exception v3

    move-object/from16 v28, v3

    move/from16 v29, v30

    .end local v30           #otherAccountsCnt:I
    .restart local v29       #otherAccountsCnt:I
    goto/16 :goto_a

    .line 3460
    .end local v29           #otherAccountsCnt:I
    .end local v32           #tempTypeInOtherAccounts:[Lcom/android/email/activity/MessageList$MailBoxType;
    :catch_9
    move-exception v3

    move-object/from16 v23, v3

    move/from16 v26, v27

    .end local v27           #mailBoxCnt:I
    .restart local v26       #mailBoxCnt:I
    goto/16 :goto_4

    .line 3449
    .end local v26           #mailBoxCnt:I
    .restart local v27       #mailBoxCnt:I
    :catch_a
    move-exception v3

    move-object/from16 v25, v3

    move/from16 v26, v27

    .end local v27           #mailBoxCnt:I
    .restart local v26       #mailBoxCnt:I
    goto/16 :goto_5

    .line 3442
    .end local v26           #mailBoxCnt:I
    .restart local v27       #mailBoxCnt:I
    :catch_b
    move-exception v3

    move-object/from16 v28, v3

    move/from16 v26, v27

    .end local v27           #mailBoxCnt:I
    .restart local v26       #mailBoxCnt:I
    goto/16 :goto_3

    .end local v26           #mailBoxCnt:I
    .restart local v13       #text:Ljava/lang/String;
    .restart local v27       #mailBoxCnt:I
    :cond_c
    move/from16 v26, v27

    .end local v27           #mailBoxCnt:I
    .restart local v26       #mailBoxCnt:I
    goto/16 :goto_2

    .line 3426
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private onMultiMovePopupToOtherAccount(JLjava/lang/String;)V
    .locals 23
    .parameter "accountKey"
    .parameter "name"

    .prologue
    .line 3549
    const-string v6, "accountKey=? AND type<64 AND flagVisible=1"

    .line 3553
    .local v6, MAILBOX_SELECTION:Ljava/lang/String;
    const/16 v19, 0x0

    .line 3554
    .local v19, mailBoxCnt:I
    const/16 v21, 0x0

    .line 3557
    .local v21, tempTypeInOtherAccounts:[Lcom/android/email/activity/MessageList$MailBoxType;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList;->mResolver:Landroid/content/ContentResolver;

    move-object v3, v0

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

    move-result-object v15

    .line 3565
    .local v15, cursor:Landroid/database/Cursor;
    if-eqz v15, :cond_0

    invoke-interface {v15}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-gtz v3, :cond_1

    .line 3628
    .end local v15           #cursor:Landroid/database/Cursor;
    :cond_0
    :goto_0
    return-void

    .line 3570
    .restart local v15       #cursor:Landroid/database/Cursor;
    :cond_1
    const/4 v3, -0x1

    :try_start_1
    invoke-interface {v15, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 3571
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v3

    move v0, v3

    new-array v0, v0, [Lcom/android/email/activity/MessageList$MailBoxType;

    move-object/from16 v21, v0
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move/from16 v20, v19

    .line 3572
    .end local v19           #mailBoxCnt:I
    .local v20, mailBoxCnt:I
    :goto_1
    :pswitch_0
    :try_start_2
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3573
    invoke-static/range {p0 .. p0}, Lcom/android/email/Utility$FolderProperties;->getInstance(Landroid/content/Context;)Lcom/android/email/Utility$FolderProperties;

    move-result-object v3

    const/4 v4, 0x2

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/email/Utility$FolderProperties;->getDisplayName(I)Ljava/lang/String;

    move-result-object v13

    .line 3574
    .local v13, text:Ljava/lang/String;
    if-nez v13, :cond_2

    .line 3575
    const/4 v3, 0x1

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 3577
    :cond_2
    const/4 v3, 0x2

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getInt(I)I
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 3587
    add-int/lit8 v19, v20, 0x1

    .end local v20           #mailBoxCnt:I
    .restart local v19       #mailBoxCnt:I
    :try_start_3
    new-instance v7, Lcom/android/email/activity/MessageList$MailBoxType;

    const/4 v3, 0x0

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    move-object/from16 v8, p0

    move-wide/from16 v9, p1

    invoke-direct/range {v7 .. v13}, Lcom/android/email/activity/MessageList$MailBoxType;-><init>(Lcom/android/email/activity/MessageList;JJLjava/lang/String;)V

    aput-object v7, v21, v20
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move/from16 v20, v19

    .line 3589
    .end local v19           #mailBoxCnt:I
    .restart local v20       #mailBoxCnt:I
    goto :goto_1

    .line 3590
    .end local v13           #text:Ljava/lang/String;
    .end local v20           #mailBoxCnt:I
    .restart local v19       #mailBoxCnt:I
    :catch_0
    move-exception v3

    move-object/from16 v18, v3

    .line 3591
    .local v18, ise:Ljava/lang/IllegalStateException;
    :goto_2
    :try_start_4
    const-string v3, "MessageList >>"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IllegalStateException >>> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 3592
    invoke-virtual/range {v18 .. v18}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 3597
    .end local v15           #cursor:Landroid/database/Cursor;
    .end local v18           #ise:Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v3

    move-object/from16 v16, v3

    .line 3598
    .local v16, e:Ljava/lang/Exception;
    :goto_3
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 3595
    .end local v16           #e:Ljava/lang/Exception;
    .end local v19           #mailBoxCnt:I
    .restart local v15       #cursor:Landroid/database/Cursor;
    .restart local v20       #mailBoxCnt:I
    :cond_3
    :try_start_5
    invoke-interface {v15}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 3602
    move/from16 v0, v20

    new-array v0, v0, [Lcom/android/email/activity/MessageList$MailBoxType;

    move-object/from16 v22, v0

    .line 3604
    .local v22, viewType:[Lcom/android/email/activity/MessageList$MailBoxType;
    const/16 v17, 0x0

    .local v17, i:I
    :goto_4
    move/from16 v0, v17

    move/from16 v1, v20

    if-ge v0, v1, :cond_4

    .line 3605
    aget-object v3, v21, v17

    aput-object v3, v22, v17

    .line 3604
    add-int/lit8 v17, v17, 0x1

    goto :goto_4

    .line 3607
    :cond_4
    new-instance v3, Lcom/android/email/activity/MessageList$MailBoxAdapter;

    move-object v0, v3

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/email/activity/MessageList$MailBoxAdapter;-><init>(Landroid/content/Context;[Lcom/android/email/activity/MessageList$MailBoxType;)V

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/MessageList;->mMoveListToOtherAccountAdapter:Lcom/android/email/activity/MessageList$MailBoxAdapter;

    .line 3609
    new-instance v14, Landroid/app/AlertDialog$Builder;

    move-object v0, v14

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3611
    .local v14, builder:Landroid/app/AlertDialog$Builder;
    move-object v0, v14

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 3612
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList;->mMoveListToOtherAccountAdapter:Lcom/android/email/activity/MessageList$MailBoxAdapter;

    move-object v3, v0

    new-instance v4, Lcom/android/email/activity/MessageList$23;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/email/activity/MessageList$23;-><init>(Lcom/android/email/activity/MessageList;)V

    invoke-virtual {v14, v3, v4}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3627
    invoke-virtual {v14}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move/from16 v19, v20

    .line 3628
    .end local v20           #mailBoxCnt:I
    .restart local v19       #mailBoxCnt:I
    goto/16 :goto_0

    .line 3597
    .end local v14           #builder:Landroid/app/AlertDialog$Builder;
    .end local v17           #i:I
    .end local v19           #mailBoxCnt:I
    .end local v22           #viewType:[Lcom/android/email/activity/MessageList$MailBoxType;
    .restart local v20       #mailBoxCnt:I
    :catch_2
    move-exception v3

    move-object/from16 v16, v3

    move/from16 v19, v20

    .end local v20           #mailBoxCnt:I
    .restart local v19       #mailBoxCnt:I
    goto :goto_3

    .line 3590
    .end local v19           #mailBoxCnt:I
    .restart local v20       #mailBoxCnt:I
    :catch_3
    move-exception v3

    move-object/from16 v18, v3

    move/from16 v19, v20

    .end local v20           #mailBoxCnt:I
    .restart local v19       #mailBoxCnt:I
    goto :goto_2

    .line 3577
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
    .parameter "toToggle"
    .parameter "flag"
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
    .line 3246
    .local p1, selectedSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    if-eqz p2, :cond_0

    .line 3248
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

    .line 3249
    new-instance v0, Lcom/android/email/activity/MessageList$18;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MessageList$18;-><init>(Lcom/android/email/activity/MessageList;)V

    invoke-direct {p0, p1, v0}, Lcom/android/email/activity/MessageList;->toggleMultiple(Ljava/util/Set;Lcom/android/email/activity/MessageList$MultiToggleHelper;)I

    .line 3337
    :goto_0
    return-void

    .line 3279
    :cond_0
    new-instance v0, Lcom/android/email/activity/MessageList$19;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MessageList$19;-><init>(Lcom/android/email/activity/MessageList;)V

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
    .line 3212
    .local p1, selectedSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    new-instance v0, Lcom/android/email/activity/MessageList$17;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MessageList$17;-><init>(Lcom/android/email/activity/MessageList;)V

    invoke-direct {p0, p1, v0}, Lcom/android/email/activity/MessageList;->toggleMultiple(Ljava/util/Set;Lcom/android/email/activity/MessageList$MultiToggleHelper;)I

    .line 3237
    return-void
.end method

.method private onOpenMessage(JJ)V
    .locals 5
    .parameter "messageId"
    .parameter "mailboxId"

    .prologue
    .line 2824
    invoke-static {p0, p3, p4}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v1

    .line 2826
    .local v1, mailbox:Lcom/android/email/provider/EmailContent$Mailbox;
    iget v3, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 2827
    invoke-static {p0, p1, p2}, Lcom/android/email/activity/MessageCompose;->actionEditDraft(Landroid/content/Context;J)V

    .line 2839
    :goto_0
    return-void

    .line 2832
    :cond_0
    iget-wide v3, p0, Lcom/android/email/activity/MessageList;->mAccountId:J

    invoke-static {p0, v3, v4}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v0

    .line 2834
    .local v0, account:Lcom/android/email/provider/EmailContent$Account;
    :try_start_0
    iget-wide v3, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    invoke-static {p0, p1, p2, v3, v4}, Lcom/android/email/activity/MessageView;->actionView(Landroid/content/Context;JJ)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2835
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 2836
    .local v2, ne:Ljava/lang/NullPointerException;
    iget-wide v3, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    invoke-static {p0, p1, p2, v3, v4}, Lcom/android/email/activity/MessageView;->actionView(Landroid/content/Context;JJ)V

    goto :goto_0
.end method

.method private onRefresh()V
    .locals 6

    .prologue
    .line 2253
    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->checkITPolicy_AllowPOPIMAP()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2255
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "11111 MessageList.java >>>>> onRefresh()  >>>>> 1839"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2256
    const v0, 0x7f080188

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2273
    :cond_0
    :goto_0
    return-void

    .line 2261
    :cond_1
    iget-wide v0, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 2263
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    if-nez v0, :cond_2

    .line 2264
    iget-wide v0, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    invoke-static {p0, v0, v1}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    .line 2265
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    if-nez v0, :cond_2

    .line 2266
    const-string v0, "MessageList >>"

    const-string v1, "onRefresh : mMailbox is null."

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2270
    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mController:Lcom/android/email/Controller;

    iget-object v1, p0, Lcom/android/email/activity/MessageList;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-wide v1, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    iget-wide v3, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    iget-object v5, p0, Lcom/android/email/activity/MessageList;->mControllerCallback:Lcom/android/email/activity/MessageList$ControllerResults;

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/Controller;->updateMailbox(JJLcom/android/email/Controller$Result;)V

    goto :goto_0
.end method

.method private onRefreshIndexScroll(Landroid/database/Cursor;)V
    .locals 6
    .parameter "c"

    .prologue
    const/4 v5, 0x3

    .line 2497
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2501
    .local v0, arr:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, -0x1

    invoke-interface {p1, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 2502
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2503
    sget v3, Lcom/android/email/activity/MessageList;->mSortType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    move v3, v5

    :goto_1
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2508
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2503
    .end local v2           #s:Ljava/lang/String;
    :cond_0
    sget v3, Lcom/android/email/activity/MessageList;->mSortType:I

    if-ne v3, v5, :cond_1

    const/16 v3, 0x9

    goto :goto_1

    :cond_1
    const/4 v3, 0x4

    goto :goto_1

    .line 2534
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_3

    .line 2556
    :goto_2
    return-void

    .line 2539
    :cond_3
    const/4 v1, 0x0

    .line 2540
    .local v1, listIndexer:Lcom/sec/android/touchwiz/widget/TwArrayIndexer;
    new-instance v1, Lcom/sec/android/touchwiz/widget/TwArrayIndexer;

    .end local v1           #listIndexer:Lcom/sec/android/touchwiz/widget/TwArrayIndexer;
    const-string v3, "ABCDEFGHIJKLMNOPQRSTUVWXYZ"

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Lcom/sec/android/touchwiz/widget/TwArrayIndexer;-><init>(Ljava/util/List;Ljava/lang/CharSequence;)V

    .line 2554
    .restart local v1       #listIndexer:Lcom/sec/android/touchwiz/widget/TwArrayIndexer;
    iget-object v3, p0, Lcom/android/email/activity/MessageList;->mIndexView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    invoke-virtual {v3, v1}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->setIndexer(Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;)V

    .line 2555
    iget-object v3, p0, Lcom/android/email/activity/MessageList;->mIndexView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->refreshDrawableState()V

    goto :goto_2
.end method

.method private onRemoveIndexScroll()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1689
    const v2, 0x7f0700b9

    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1690
    .local v0, listLayout:Landroid/widget/LinearLayout;
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1691
    .local v1, mlp:Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 1692
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1695
    iget-object v2, p0, Lcom/android/email/activity/MessageList;->mIndexView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    if-nez v2, :cond_0

    .line 1701
    :goto_0
    return-void

    .line 1699
    :cond_0
    const v2, 0x7f0700b8

    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageList;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/android/email/activity/MessageList;->mIndexView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1700
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/email/activity/MessageList;->mIndexView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    goto :goto_0
.end method

.method private onReply(J)V
    .locals 1
    .parameter "messageId"

    .prologue
    .line 2842
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/email/activity/MessageCompose;->actionReply(Landroid/content/Context;JZ)V

    .line 2843
    return-void
.end method

.method private onReplyAll(J)V
    .locals 1
    .parameter "messageId"

    .prologue
    .line 2846
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/android/email/activity/MessageCompose;->actionReply(Landroid/content/Context;JZ)V

    .line 2847
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
    .local p1, selectedSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    const/4 v4, 0x0

    .line 2999
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

    .line 3000
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMoveMessageTask:Lcom/android/email/activity/MessageList$MoveMessageTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMoveMessageTask:Lcom/android/email/activity/MessageList$MoveMessageTask;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageList$MoveMessageTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 3002
    const v0, 0x7f08015f

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3008
    :goto_0
    return-void

    .line 3005
    :cond_0
    new-instance v0, Lcom/android/email/activity/MessageList$MoveMessageTask;

    iget-wide v1, p0, Lcom/android/email/activity/MessageList;->mAccountId:J

    invoke-direct {v0, p0, v1, v2, v4}, Lcom/android/email/activity/MessageList$MoveMessageTask;-><init>(Lcom/android/email/activity/MessageList;JI)V

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mMoveMessageTask:Lcom/android/email/activity/MessageList$MoveMessageTask;

    .line 3006
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMoveMessageTask:Lcom/android/email/activity/MessageList$MoveMessageTask;

    new-array v1, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageList$MoveMessageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private onSearchFinish()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 864
    sput v3, Lcom/android/email/activity/MessageList;->sSelectedSearchType:I

    .line 865
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mSearchType:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/email/activity/MessageList;->mSearchListString:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 866
    sget-object v0, Lcom/android/email/activity/MessageList;->mSearchBar:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 867
    sget-object v0, Lcom/android/email/activity/MessageList;->mSearchBar:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 868
    sget-object v0, Lcom/android/email/activity/MessageList;->mSearchBar:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 869
    sget-object v0, Lcom/android/email/activity/MessageList;->mSearchBar:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 872
    iget-wide v0, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    const/16 v2, 0x8

    invoke-static {p0, v0, v1, v2}, Lcom/android/email/Utility;->isMailboxType(Landroid/content/Context;JI)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 878
    invoke-virtual {p0}, Lcom/android/email/activity/MessageList;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.email.activity.DISPLAY_PROGRESS"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 879
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mHandler:Lcom/android/email/activity/MessageList$MessageListHandler;

    invoke-virtual {v0, v6}, Lcom/android/email/activity/MessageList$MessageListHandler;->progress(Z)V

    .line 882
    :cond_0
    iput-boolean v3, p0, Lcom/android/email/activity/MessageList;->mCanAutoRefresh:Z

    .line 887
    :cond_1
    iput v3, p0, Lcom/android/email/activity/MessageList;->mSearchId:I

    .line 888
    iget v0, p0, Lcom/android/email/activity/MessageList;->mLastSortType:I

    sput v0, Lcom/android/email/activity/MessageList;->mSortType:I

    .line 891
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mController:Lcom/android/email/Controller;

    iget-wide v1, p0, Lcom/android/email/activity/MessageList;->mAccountId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/email/Controller;->returnAccountType(J)I

    move-result v0

    iget-object v1, p0, Lcom/android/email/activity/MessageList;->mController:Lcom/android/email/Controller;

    if-eq v0, v6, :cond_2

    iget v0, p0, Lcom/android/email/activity/MessageList;->mIsEAS:I

    if-ne v0, v6, :cond_3

    .line 893
    :cond_2
    iget-wide v1, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    iget-wide v3, p0, Lcom/android/email/activity/MessageList;->mAccountId:J

    const/4 v5, -0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/email/activity/MessageList;->addFooterView(JJIZ)V

    .line 895
    :cond_3
    return-void
.end method

.method private onSearchOnServer()V
    .locals 10

    .prologue
    const/4 v5, 0x1

    const-string v9, " FROM "

    .line 899
    iget-wide v3, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    const-wide/16 v7, 0x0

    cmp-long v0, v3, v7

    if-ltz v0, :cond_0

    .line 900
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

    .line 901
    const v0, 0x7f080242

    const/4 v3, 0x0

    invoke-direct {p0, v0, v3}, Lcom/android/email/activity/MessageList;->showToast(II)V

    .line 927
    :cond_0
    :goto_0
    return-void

    .line 905
    :cond_1
    iget v0, p0, Lcom/android/email/activity/MessageList;->mIsEAS:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_2

    .line 906
    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->IsEAS()I

    .line 908
    :cond_2
    iget v0, p0, Lcom/android/email/activity/MessageList;->mIsEAS:I

    if-ne v0, v5, :cond_3

    .line 910
    sget-object v0, Lcom/android/email/activity/MessageList;->mSearchBar:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 911
    .local v6, searchText:Ljava/lang/String;
    iget-wide v3, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    invoke-direct {p0, v3, v4}, Lcom/android/email/activity/MessageList;->lookupAccountIdFromMailboxId(J)J

    move-result-wide v1

    .line 912
    .local v1, accountId:J
    iget-wide v3, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/android/email/activity/CustomizeDate;->startActivity(Landroid/app/Activity;JJILjava/lang/String;)V

    goto :goto_0

    .line 915
    .end local v1           #accountId:J
    .end local v6           #searchText:Ljava/lang/String;
    :cond_3
    sget v0, Lcom/android/email/activity/MessageList;->sSelectedSearchType:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_4

    .line 916
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " SUBJECT "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Lcom/android/email/activity/MessageList;->mSearchBar:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 924
    .restart local v6       #searchText:Ljava/lang/String;
    :goto_1
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mController:Lcom/android/email/Controller;

    iget-wide v3, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    iget-object v5, p0, Lcom/android/email/activity/MessageList;->mControllerCallback:Lcom/android/email/activity/MessageList$ControllerResults;

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/android/email/Controller;->searchOnServer(JLcom/android/email/Controller$Result;Ljava/lang/String;)V

    goto :goto_0

    .line 918
    .end local v6           #searchText:Ljava/lang/String;
    :cond_4
    sget v0, Lcom/android/email/activity/MessageList;->sSelectedSearchType:I

    if-ne v0, v5, :cond_5

    .line 919
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " FROM "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Lcom/android/email/activity/MessageList;->mSearchBar:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .restart local v6       #searchText:Ljava/lang/String;
    goto :goto_1

    .line 922
    .end local v6           #searchText:Ljava/lang/String;
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " OR SUBJECT "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Lcom/android/email/activity/MessageList;->mSearchBar:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " FROM "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Lcom/android/email/activity/MessageList;->mSearchBar:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .restart local v6       #searchText:Ljava/lang/String;
    goto :goto_1
.end method

.method private onSendPendingMessages()V
    .locals 4

    .prologue
    .line 2901
    iget-wide v2, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    invoke-direct {p0, v2, v3}, Lcom/android/email/activity/MessageList;->lookupAccountIdFromMailboxId(J)J

    move-result-wide v0

    .line 2902
    .local v0, accountId:J
    iget-object v2, p0, Lcom/android/email/activity/MessageList;->mController:Lcom/android/email/Controller;

    iget-object v3, p0, Lcom/android/email/activity/MessageList;->mControllerCallback:Lcom/android/email/activity/MessageList$ControllerResults;

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/email/Controller;->sendPendingMessages(JLcom/android/email/Controller$Result;)V

    .line 2903
    return-void
.end method

.method private onSetFollowupFlag(JI)V
    .locals 10
    .parameter "messageId"
    .parameter "newFavorite"

    .prologue
    .line 3139
    invoke-virtual {p0}, Lcom/android/email/activity/MessageList;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    .line 3140
    .local v6, context:Landroid/content/Context;
    invoke-static {v6, p1, p2}, Lcom/android/email/provider/EmailContent$FollowupFlag;->restoreFollowupFlagWithEmailId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$FollowupFlag;

    move-result-object v7

    .line 3141
    .local v7, ff:Lcom/android/email/provider/EmailContent$FollowupFlag;
    const/4 v9, 0x0

    .line 3143
    .local v9, oldfavorite:Z
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/email/provider/EmailContent$Message;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 3147
    .local v8, ff1:Landroid/database/Cursor;
    if-eqz v8, :cond_2

    .line 3149
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3151
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>>>>>>>>>> ff1.moveToFirst() >>>>>>>>>>>>>>>>>>>>>>> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<<<<<<<<<<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 3153
    const/4 v0, 0x6

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    const/4 v0, 0x1

    move v9, v0

    .line 3157
    :goto_0
    iget v0, p0, Lcom/android/email/activity/MessageList;->mIsEAS:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 3158
    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->IsEAS()I

    .line 3160
    :cond_0
    if-nez v7, :cond_1

    iget v0, p0, Lcom/android/email/activity/MessageList;->mIsEAS:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 3162
    new-instance v7, Lcom/android/email/provider/EmailContent$FollowupFlag;

    .end local v7           #ff:Lcom/android/email/provider/EmailContent$FollowupFlag;
    invoke-direct {v7}, Lcom/android/email/provider/EmailContent$FollowupFlag;-><init>()V

    .line 3163
    .restart local v7       #ff:Lcom/android/email/provider/EmailContent$FollowupFlag;
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, v7, Lcom/android/email/provider/EmailContent$FollowupFlag;->MsgId:J

    .line 3164
    const/16 v0, 0x9

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/android/email/provider/EmailContent$FollowupFlag;->MsgSyncServerId:Ljava/lang/String;

    .line 3167
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 3173
    :cond_2
    if-eqz v7, :cond_3

    .line 3174
    packed-switch p3, :pswitch_data_0

    .line 3194
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>>>>>>>>>> ff1 newFavorite >>>>>>>>>>>>>>>>>>>>>>> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<<<<<<<<<<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 3196
    :goto_1
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mController:Lcom/android/email/Controller;

    if-nez v9, :cond_5

    const/4 v1, 0x1

    :goto_2
    invoke-virtual {v0, p1, p2, v1}, Lcom/android/email/Controller;->setMessageFavorite(JZ)V

    .line 3199
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mController:Lcom/android/email/Controller;

    if-nez v9, :cond_6

    const/4 v1, 0x1

    :goto_3
    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/android/email/Controller;->setMessageFavorite(JZI)V

    .line 3203
    :cond_3
    return-void

    .line 3153
    :cond_4
    const/4 v0, 0x0

    move v9, v0

    goto :goto_0

    .line 3177
    :pswitch_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>>>>>>>>>> ff1 newFavorite >>>>>>>>>>>>>>>>>>>>>>> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<<<<<<<<<<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 3179
    sget-object v0, Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagDefaultState;->CLEAR:Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagDefaultState;

    invoke-virtual {v7, v0, v6}, Lcom/android/email/provider/EmailContent$FollowupFlag;->setDefaults(Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagDefaultState;Landroid/content/Context;)Ljava/lang/Boolean;

    goto :goto_1

    .line 3182
    :pswitch_1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>>>>>>>>>> ff1 newFavorite >>>>>>>>>>>>>>>>>>>>>>> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<<<<<<<<<<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 3184
    sget-object v0, Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagDefaultState;->MARK_COMPLETE:Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagDefaultState;

    invoke-virtual {v7, v0, v6}, Lcom/android/email/provider/EmailContent$FollowupFlag;->setDefaults(Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagDefaultState;Landroid/content/Context;)Ljava/lang/Boolean;

    goto :goto_1

    .line 3188
    :pswitch_2
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>>>>>>>>>> ff1 newFavorite >>>>>>>>>>>>>>>>>>>>>>> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<<<<<<<<<<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 3190
    sget-object v0, Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagDefaultState;->NEXT_WEEK:Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagDefaultState;

    invoke-virtual {v7, v0, v6}, Lcom/android/email/provider/EmailContent$FollowupFlag;->setDefaults(Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagDefaultState;Landroid/content/Context;)Ljava/lang/Boolean;

    goto :goto_1

    .line 3196
    :cond_5
    const/4 v1, 0x0

    goto :goto_2

    .line 3199
    :cond_6
    const/4 v1, 0x0

    goto :goto_3

    .line 3174
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
    .line 3039
    invoke-virtual {p0}, Lcom/android/email/activity/MessageList;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 3059
    .local v0, context:Landroid/content/Context;
    iget-object v1, p0, Lcom/android/email/activity/MessageList;->mController:Lcom/android/email/Controller;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/email/Controller;->setMessageFavorite(JZ)V

    .line 3060
    return-void
.end method

.method private onSetMessageRead(JZ)V
    .locals 1
    .parameter "messageId"
    .parameter "newRead"

    .prologue
    .line 3011
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mController:Lcom/android/email/Controller;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/email/Controller;->setMessageRead(JZ)V

    .line 3012
    return-void
.end method

.method private onSort()V
    .locals 12

    .prologue
    const v11, 0x7f080101

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x3

    .line 2341
    iget-wide v3, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-ltz v3, :cond_0

    iget-object v3, p0, Lcom/android/email/activity/MessageList;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    if-nez v3, :cond_0

    .line 2342
    iget-wide v3, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    invoke-static {p0, v3, v4}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v3

    iput-object v3, p0, Lcom/android/email/activity/MessageList;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    .line 2343
    iget-object v3, p0, Lcom/android/email/activity/MessageList;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    if-nez v3, :cond_0

    .line 2344
    const-string v3, "MessageList >>"

    const-string v4, "onSort : mMailbox is null."

    invoke-static {v3, v4}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 2433
    :goto_0
    return-void

    .line 2350
    :cond_0
    sget v1, Lcom/android/email/activity/MessageList;->mSortType:I

    .line 2352
    .local v1, mSelectedSortType:I
    const/4 v2, 0x0

    .line 2354
    .local v2, sortType:[Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->IsEAS()I

    move-result v3

    if-ne v3, v8, :cond_9

    .line 2356
    iget-object v3, p0, Lcom/android/email/activity/MessageList;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget v3, v3, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    if-nez v3, :cond_3

    .line 2357
    const/4 v3, 0x5

    new-array v2, v3, [Ljava/lang/String;

    .end local v2           #sortType:[Ljava/lang/String;
    invoke-virtual {p0, v11}, Lcom/android/email/activity/MessageList;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v9

    const v3, 0x7f0800ff

    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageList;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    const v3, 0x7f08001b

    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageList;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v10

    const v3, 0x7f080196

    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageList;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    const/4 v3, 0x4

    const v4, 0x7f08019f

    invoke-virtual {p0, v4}, Lcom/android/email/activity/MessageList;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 2358
    .restart local v2       #sortType:[Ljava/lang/String;
    sget v3, Lcom/android/email/activity/MessageList;->mSortType:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_2

    .line 2359
    const/4 v1, 0x3

    .line 2398
    :cond_1
    :goto_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2399
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v3, 0x7f080102

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2400
    new-instance v3, Lcom/android/email/activity/MessageList$10;

    invoke-direct {v3, p0}, Lcom/android/email/activity/MessageList$10;-><init>(Lcom/android/email/activity/MessageList;)V

    invoke-virtual {v0, v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2431
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 2360
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :cond_2
    sget v3, Lcom/android/email/activity/MessageList;->mSortType:I

    const/16 v4, 0x9

    if-ne v3, v4, :cond_1

    .line 2361
    const/4 v1, 0x4

    goto :goto_1

    .line 2363
    :cond_3
    iget-object v3, p0, Lcom/android/email/activity/MessageList;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget v3, v3, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    if-eq v3, v7, :cond_4

    iget-object v3, p0, Lcom/android/email/activity/MessageList;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget v3, v3, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    const/4 v4, 0x4

    if-eq v3, v4, :cond_4

    iget-object v3, p0, Lcom/android/email/activity/MessageList;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget v3, v3, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_7

    .line 2365
    :cond_4
    const/4 v3, 0x4

    new-array v2, v3, [Ljava/lang/String;

    .end local v2           #sortType:[Ljava/lang/String;
    invoke-virtual {p0, v11}, Lcom/android/email/activity/MessageList;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v9

    const v3, 0x7f080100

    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageList;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    const v3, 0x7f080196

    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageList;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v10

    const v3, 0x7f08019f

    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageList;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    .line 2367
    .restart local v2       #sortType:[Ljava/lang/String;
    sget v3, Lcom/android/email/activity/MessageList;->mSortType:I

    if-ne v3, v7, :cond_5

    .line 2368
    const/4 v1, 0x1

    goto :goto_1

    .line 2369
    :cond_5
    sget v3, Lcom/android/email/activity/MessageList;->mSortType:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_6

    .line 2370
    const/4 v1, 0x2

    goto :goto_1

    .line 2371
    :cond_6
    sget v3, Lcom/android/email/activity/MessageList;->mSortType:I

    const/16 v4, 0x9

    if-ne v3, v4, :cond_1

    .line 2372
    const/4 v1, 0x3

    goto :goto_1

    .line 2374
    :cond_7
    const/4 v3, 0x4

    new-array v2, v3, [Ljava/lang/String;

    .end local v2           #sortType:[Ljava/lang/String;
    invoke-virtual {p0, v11}, Lcom/android/email/activity/MessageList;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v9

    const v3, 0x7f0800ff

    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageList;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    const v3, 0x7f080196

    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageList;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v10

    const v3, 0x7f08019f

    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageList;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    .line 2376
    .restart local v2       #sortType:[Ljava/lang/String;
    sget v3, Lcom/android/email/activity/MessageList;->mSortType:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_8

    .line 2377
    const/4 v1, 0x2

    goto/16 :goto_1

    .line 2378
    :cond_8
    sget v3, Lcom/android/email/activity/MessageList;->mSortType:I

    const/16 v4, 0x9

    if-ne v3, v4, :cond_1

    .line 2379
    const/4 v1, 0x3

    goto/16 :goto_1

    .line 2384
    :cond_9
    iget-object v3, p0, Lcom/android/email/activity/MessageList;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget v3, v3, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    if-nez v3, :cond_a

    .line 2385
    new-array v2, v7, [Ljava/lang/String;

    .end local v2           #sortType:[Ljava/lang/String;
    invoke-virtual {p0, v11}, Lcom/android/email/activity/MessageList;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v9

    const v3, 0x7f0800ff

    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageList;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    const v3, 0x7f08001b

    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageList;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v10

    .restart local v2       #sortType:[Ljava/lang/String;
    goto/16 :goto_1

    .line 2386
    :cond_a
    iget-object v3, p0, Lcom/android/email/activity/MessageList;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget v3, v3, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    if-eq v3, v7, :cond_b

    iget-object v3, p0, Lcom/android/email/activity/MessageList;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget v3, v3, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    const/4 v4, 0x4

    if-eq v3, v4, :cond_b

    iget-object v3, p0, Lcom/android/email/activity/MessageList;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget v3, v3, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_c

    .line 2388
    :cond_b
    new-array v2, v10, [Ljava/lang/String;

    .end local v2           #sortType:[Ljava/lang/String;
    invoke-virtual {p0, v11}, Lcom/android/email/activity/MessageList;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v9

    const v3, 0x7f080100

    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageList;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    .line 2390
    .restart local v2       #sortType:[Ljava/lang/String;
    sget v3, Lcom/android/email/activity/MessageList;->mSortType:I

    if-ne v3, v7, :cond_1

    .line 2391
    const/4 v1, 0x1

    goto/16 :goto_1

    .line 2393
    :cond_c
    new-array v2, v10, [Ljava/lang/String;

    .end local v2           #sortType:[Ljava/lang/String;
    invoke-virtual {p0, v11}, Lcom/android/email/activity/MessageList;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v9

    const v3, 0x7f0800ff

    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageList;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    .restart local v2       #sortType:[Ljava/lang/String;
    goto/16 :goto_1
.end method

.method private onSortBy(I)V
    .locals 8
    .parameter "id"

    .prologue
    const/4 v4, 0x3

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 2436
    iget-wide v0, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 2437
    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->IsEAS()I

    move-result v0

    if-ne v0, v6, :cond_0

    .line 2439
    packed-switch p1, :pswitch_data_0

    .line 2450
    :cond_0
    :goto_0
    packed-switch p1, :pswitch_data_1

    .line 2480
    :goto_1
    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->loadMessagesTask_Cancel()V

    .line 2483
    new-instance v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;

    iget-wide v2, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    iget-wide v4, p0, Lcom/android/email/activity/MessageList;->mAccountId:J

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/email/activity/MessageList$LoadMessagesTask;-><init>(Lcom/android/email/activity/MessageList;JJZ)V

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mLoadMessagesTask:Lcom/android/email/activity/MessageList$LoadMessagesTask;

    .line 2484
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mLoadMessagesTask:Lcom/android/email/activity/MessageList$LoadMessagesTask;

    new-array v1, v7, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageList$LoadMessagesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2487
    iget v0, p0, Lcom/android/email/activity/MessageList;->mSearchId:I

    if-ne v0, v6, :cond_1

    .line 2489
    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->onSearchFinish()V

    .line 2490
    invoke-direct {p0, v6}, Lcom/android/email/activity/MessageList;->animation_title2(I)V

    .line 2494
    :cond_1
    :goto_2
    return-void

    .line 2441
    :pswitch_0
    const-string v0, "importance COLLATE NOCASE DESC"

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mSortQuery:Ljava/lang/String;

    .line 2442
    const/16 v0, 0x8

    sput v0, Lcom/android/email/activity/MessageList;->mSortType:I

    goto :goto_0

    .line 2445
    :pswitch_1
    const-string v0, "flagStatus COLLATE NOCASE DESC"

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mSortQuery:Ljava/lang/String;

    .line 2446
    const/16 v0, 0x9

    sput v0, Lcom/android/email/activity/MessageList;->mSortType:I

    goto :goto_0

    .line 2452
    :pswitch_2
    const-string v0, "timeStamp COLLATE NOCASE DESC"

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mSortQuery:Ljava/lang/String;

    .line 2453
    sput v7, Lcom/android/email/activity/MessageList;->mSortType:I

    goto :goto_1

    .line 2457
    :pswitch_3
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    if-nez v0, :cond_2

    .line 2458
    iget-wide v0, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    invoke-static {p0, v0, v1}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    .line 2459
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    if-nez v0, :cond_2

    .line 2460
    const-string v0, "MessageList >>"

    const-string v1, "onSortBy : mMailbox is null."

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 2465
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

    .line 2467
    :cond_3
    const-string v0, "toList COLLATE NOCASE"

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mSortQuery:Ljava/lang/String;

    .line 2468
    sput v4, Lcom/android/email/activity/MessageList;->mSortType:I

    goto :goto_1

    .line 2470
    :cond_4
    const-string v0, "displayName COLLATE NOCASE"

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mSortQuery:Ljava/lang/String;

    .line 2471
    sput v6, Lcom/android/email/activity/MessageList;->mSortType:I

    goto :goto_1

    .line 2475
    :pswitch_4
    const-string v0, "flagRead COLLATE NOCASE"

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mSortQuery:Ljava/lang/String;

    .line 2476
    const/4 v0, 0x2

    sput v0, Lcom/android/email/activity/MessageList;->mSortType:I

    goto :goto_1

    .line 2439
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 2450
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private onTextSize()V
    .locals 7

    .prologue
    .line 1867
    const/4 v3, 0x3

    new-array v2, v3, [Lcom/android/email/activity/MessageList$TextSizeType;

    .line 1868
    .local v2, textType:[Lcom/android/email/activity/MessageList$TextSizeType;
    const/4 v3, 0x0

    new-instance v4, Lcom/android/email/activity/MessageList$TextSizeType;

    const v5, 0x7f08011d

    invoke-virtual {p0, v5}, Lcom/android/email/activity/MessageList;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x1c

    invoke-direct {v4, p0, v5, v6}, Lcom/android/email/activity/MessageList$TextSizeType;-><init>(Lcom/android/email/activity/MessageList;Ljava/lang/String;I)V

    aput-object v4, v2, v3

    .line 1869
    const/4 v3, 0x1

    new-instance v4, Lcom/android/email/activity/MessageList$TextSizeType;

    const v5, 0x7f08011e

    invoke-virtual {p0, v5}, Lcom/android/email/activity/MessageList;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x1e

    invoke-direct {v4, p0, v5, v6}, Lcom/android/email/activity/MessageList$TextSizeType;-><init>(Lcom/android/email/activity/MessageList;Ljava/lang/String;I)V

    aput-object v4, v2, v3

    .line 1870
    const/4 v3, 0x2

    new-instance v4, Lcom/android/email/activity/MessageList$TextSizeType;

    const v5, 0x7f08011f

    invoke-virtual {p0, v5}, Lcom/android/email/activity/MessageList;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x21

    invoke-direct {v4, p0, v5, v6}, Lcom/android/email/activity/MessageList$TextSizeType;-><init>(Lcom/android/email/activity/MessageList;Ljava/lang/String;I)V

    aput-object v4, v2, v3

    .line 1872
    new-instance v0, Lcom/android/email/activity/MessageList$TextSizeAdapter;

    invoke-direct {v0, p0, v2}, Lcom/android/email/activity/MessageList$TextSizeAdapter;-><init>(Landroid/content/Context;[Lcom/android/email/activity/MessageList$TextSizeType;)V

    .line 1874
    .local v0, adapter:Landroid/widget/ListAdapter;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1876
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const v3, 0x7f08011c

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1877
    sget v3, Lcom/android/email/activity/MessageList;->mTextSize:I

    new-instance v4, Lcom/android/email/activity/MessageList$7;

    invoke-direct {v4, p0}, Lcom/android/email/activity/MessageList$7;-><init>(Lcom/android/email/activity/MessageList;)V

    invoke-virtual {v1, v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1883
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1884
    return-void
.end method

.method private onTextSizeChange(I)V
    .locals 2
    .parameter "id"

    .prologue
    .line 1965
    sput p1, Lcom/android/email/activity/MessageList;->mTextSize:I

    .line 1966
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mListAdapter:Lcom/android/email/activity/MessageList$MessageListAdapter;

    sget v1, Lcom/android/email/activity/MessageList;->mTextSize:I

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageList$MessageListAdapter;->updateTextSize(I)V

    .line 1967
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mListAdapter:Lcom/android/email/activity/MessageList$MessageListAdapter;

    sget v1, Lcom/android/email/activity/MessageList;->mTextSize:I

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageList$MessageListAdapter;->setTextSizeValue(I)V

    .line 1968
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageList;->updateMessageLists(Z)V

    .line 1969
    return-void
.end method

.method private onViewMode()V
    .locals 4

    .prologue
    .line 2298
    const/4 v1, 0x0

    .line 2299
    .local v1, viewModeType:[Ljava/lang/String;
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    .end local v1           #viewModeType:[Ljava/lang/String;
    const/4 v2, 0x0

    const v3, 0x7f08015b

    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageList;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const v3, 0x7f08015c

    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageList;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 2301
    .restart local v1       #viewModeType:[Ljava/lang/String;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2302
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f08015a

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2303
    sget v2, Lcom/android/email/activity/MessageList;->mViewModeType:I

    new-instance v3, Lcom/android/email/activity/MessageList$9;

    invoke-direct {v3, p0}, Lcom/android/email/activity/MessageList$9;-><init>(Lcom/android/email/activity/MessageList;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2310
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 2312
    return-void
.end method

.method private onViewModeBy(I)V
    .locals 9
    .parameter "id"

    .prologue
    const/4 v8, 0x0

    .line 2315
    iget-wide v0, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 2316
    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->loadMessagesTask_Cancel()V

    .line 2318
    packed-switch p1, :pswitch_data_0

    .line 2328
    :goto_0
    const-string v0, "AndroidMail.MessageList"

    invoke-virtual {p0, v0, v8}, Lcom/android/email/activity/MessageList;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 2329
    .local v7, sp:Landroid/content/SharedPreferences;
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "prefer_view_mode"

    sget v2, Lcom/android/email/activity/MessageList;->mViewModeType:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2332
    new-instance v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;

    iget-wide v2, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    iget-wide v4, p0, Lcom/android/email/activity/MessageList;->mAccountId:J

    const/4 v6, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/email/activity/MessageList$LoadMessagesTask;-><init>(Lcom/android/email/activity/MessageList;JJZ)V

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mLoadMessagesTask:Lcom/android/email/activity/MessageList$LoadMessagesTask;

    .line 2333
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mLoadMessagesTask:Lcom/android/email/activity/MessageList$LoadMessagesTask;

    new-array v1, v8, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageList$LoadMessagesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2335
    .end local v7           #sp:Landroid/content/SharedPreferences;
    :cond_0
    return-void

    .line 2320
    :pswitch_0
    sget v0, Lcom/android/email/activity/MessageList;->VIEW_MODE_STANDARD:I

    sput v0, Lcom/android/email/activity/MessageList;->mViewModeType:I

    goto :goto_0

    .line 2324
    :pswitch_1
    sget v0, Lcom/android/email/activity/MessageList;->VIEW_MODE_CONVERSATION_READY:I

    sput v0, Lcom/android/email/activity/MessageList;->mViewModeType:I

    goto :goto_0

    .line 2318
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
    .line 1392
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

    .line 1393
    iget v0, p0, Lcom/android/email/activity/MessageList;->mSavedItemPosition:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/email/activity/MessageList;->mSavedItemPosition:I

    iget-object v1, p0, Lcom/android/email/activity/MessageList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1395
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/email/activity/MessageList;->mListAdapter:Lcom/android/email/activity/MessageList$MessageListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1396
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mListView:Landroid/widget/ListView;

    iget v1, p0, Lcom/android/email/activity/MessageList;->mSavedItemPosition:I

    iget v2, p0, Lcom/android/email/activity/MessageList;->mSavedItemTop:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 1397
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/email/activity/MessageList;->mSavedItemPosition:I

    .line 1398
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/email/activity/MessageList;->mSavedItemTop:I

    .line 1400
    :cond_0
    return-void
.end method

.method private saveListPosition()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1375
    iget-object v1, p0, Lcom/android/email/activity/MessageList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/MessageList;->mSavedItemPosition:I

    .line 1376
    iget v1, p0, Lcom/android/email/activity/MessageList;->mSavedItemPosition:I

    if-ltz v1, :cond_1

    .line 1377
    iget-object v1, p0, Lcom/android/email/activity/MessageList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/MessageList;->mSavedItemTop:I

    .line 1388
    :cond_0
    :goto_0
    const-string v1, "MessageList >>"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveListPosition 2 | mSaveItemPos : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/email/activity/MessageList;->mSavedItemPosition:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mSavedItemTop : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/email/activity/MessageList;->mSavedItemTop:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1389
    return-void

    .line 1379
    :cond_1
    iget-object v1, p0, Lcom/android/email/activity/MessageList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/MessageList;->mSavedItemPosition:I

    .line 1380
    iget v1, p0, Lcom/android/email/activity/MessageList;->mSavedItemPosition:I

    if-ltz v1, :cond_0

    .line 1381
    iput v2, p0, Lcom/android/email/activity/MessageList;->mSavedItemTop:I

    .line 1382
    iget-object v1, p0, Lcom/android/email/activity/MessageList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1383
    .local v0, topChild:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1384
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/MessageList;->mSavedItemTop:I

    goto :goto_0
.end method

.method private setEmailPriority(JLcom/android/email/activity/MessageListItem;I)V
    .locals 2
    .parameter "messageId"
    .parameter "itemView"
    .parameter "newVal"

    .prologue
    .line 3016
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, " yes inside changeEmailPriority"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 3017
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mController:Lcom/android/email/Controller;

    invoke-virtual {v0, p1, p2, p4}, Lcom/android/email/Controller;->setEmailPriority(JI)V

    .line 3018
    invoke-direct {p0, p3, p4}, Lcom/android/email/activity/MessageList;->changeLocalVal(Lcom/android/email/activity/MessageListItem;I)V

    .line 3019
    return-void
.end method

.method private setListFooterText(Z)V
    .locals 3
    .parameter "active"

    .prologue
    const v2, 0x7f080031

    .line 4436
    iget v1, p0, Lcom/android/email/activity/MessageList;->mListFooterMode:I

    if-eqz v1, :cond_0

    .line 4437
    const/4 v0, 0x0

    .line 4438
    .local v0, footerTextId:I
    iget v1, p0, Lcom/android/email/activity/MessageList;->mListFooterMode:I

    packed-switch v1, :pswitch_data_0

    .line 4457
    :goto_0
    iget-object v1, p0, Lcom/android/email/activity/MessageList;->mListFooterText:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 4458
    iget-object v1, p0, Lcom/android/email/activity/MessageList;->mListFooterText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 4461
    .end local v0           #footerTextId:I
    :cond_0
    return-void

    .line 4440
    .restart local v0       #footerTextId:I
    :pswitch_0
    if-eqz p1, :cond_1

    move v0, v2

    .line 4442
    :goto_1
    goto :goto_0

    .line 4440
    :cond_1
    const v1, 0x7f080021

    move v0, v1

    goto :goto_1

    .line 4444
    :pswitch_1
    if-eqz p1, :cond_2

    move v0, v2

    .line 4446
    :goto_2
    goto :goto_0

    .line 4444
    :cond_2
    const v1, 0x7f080051

    move v0, v1

    goto :goto_2

    .line 4448
    :pswitch_2
    if-eqz p1, :cond_3

    const v1, 0x7f080032

    move v0, v1

    .line 4450
    :goto_3
    goto :goto_0

    .line 4448
    :cond_3
    const v1, 0x7f080052

    move v0, v1

    goto :goto_3

    .line 4453
    :pswitch_3
    if-eqz p1, :cond_4

    const v1, 0x7f080156

    move v0, v1

    :goto_4
    goto :goto_0

    :cond_4
    const v1, 0x7f080155

    move v0, v1

    goto :goto_4

    .line 4438
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

    .line 5690
    const v6, 0x7f070091

    invoke-virtual {p0, v6}, Lcom/android/email/activity/MessageList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 5691
    .local v0, accountsButton:Landroid/widget/TextView;
    if-eqz p2, :cond_2

    .line 5692
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5694
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 5695
    .local v3, strBuff:Ljava/lang/StringBuffer;
    new-instance v5, Landroid/text/TextPaint;

    invoke-direct {v5}, Landroid/text/TextPaint;-><init>()V

    .line 5696
    .local v5, textPaint:Landroid/text/TextPaint;
    const/4 v2, 0x0

    .line 5697
    .local v2, measuredTextWidth:I
    const/4 v4, 0x0

    .line 5699
    .local v4, strBuffLen:I
    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5701
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v6

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v2, v6

    .line 5703
    if-le v2, v9, :cond_1

    .line 5704
    const/4 v1, 0x0

    .line 5706
    .local v1, measureStrBuf:Ljava/lang/StringBuffer;
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    .line 5708
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    .end local v1           #measureStrBuf:Ljava/lang/StringBuffer;
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 5711
    .restart local v1       #measureStrBuf:Ljava/lang/StringBuffer;
    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v8, v4}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5712
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v6

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v2, v6

    .line 5714
    if-gt v2, v9, :cond_0

    .line 5716
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5722
    .end local v1           #measureStrBuf:Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5727
    .end local v2           #measuredTextWidth:I
    .end local v3           #strBuff:Ljava/lang/StringBuffer;
    .end local v4           #strBuffLen:I
    .end local v5           #textPaint:Landroid/text/TextPaint;
    :goto_1
    return-void

    .line 5719
    .restart local v2       #measuredTextWidth:I
    .restart local v3       #strBuff:Ljava/lang/StringBuffer;
    .restart local v4       #strBuffLen:I
    .restart local v5       #textPaint:Landroid/text/TextPaint;
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 5725
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
    .parameter "show"

    .prologue
    const-wide/16 v9, -0x5

    const-wide/16 v7, -0x6

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 4135
    if-eqz p1, :cond_e

    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMultiSelectPanel:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_e

    .line 4136
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

    .line 4142
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMoveButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 4143
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMoveButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 4163
    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/email/activity/MessageList;->mIsEAS:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 4164
    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->IsEAS()I

    .line 4166
    :cond_2
    iget v0, p0, Lcom/android/email/activity/MessageList;->mIsEAS:I

    if-eq v0, v6, :cond_3

    sget-boolean v0, Lcom/android/email/activity/MessageList;->isStartedFromMailboxList:Z

    if-eqz v0, :cond_d

    .line 4167
    :cond_3
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mFavoriteButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 4168
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mFlagButton:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 4176
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

    .line 4181
    :cond_4
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mFavoriteButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    .line 4182
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mFavoriteButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 4186
    :cond_5
    iget-wide v0, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    const-wide/16 v2, -0x2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_6

    iget-wide v0, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    const-wide/16 v2, -0x3

    cmp-long v0, v0, v2

    if-eqz v0, :cond_6

    iget-wide v0, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    cmp-long v0, v0, v9

    if-eqz v0, :cond_6

    iget-wide v0, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    cmp-long v0, v0, v7

    if-nez v0, :cond_7

    .line 4191
    :cond_6
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mFavoriteButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_7

    .line 4192
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mFavoriteButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 4195
    :cond_7
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMultiSelectPanel:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 4196
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMultiSelectPanel:Landroid/view/View;

    const/high16 v1, 0x7f04

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 4205
    :cond_8
    :goto_2
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mListAdapter:Lcom/android/email/activity/MessageList$MessageListAdapter;

    invoke-static {v0}, Lcom/android/email/activity/MessageList$MessageListAdapter;->access$3500(Lcom/android/email/activity/MessageList$MessageListAdapter;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-eqz v0, :cond_f

    .line 4206
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMoveButton:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 4207
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mDeleteButton:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 4219
    :goto_3
    if-eqz p1, :cond_9

    .line 4220
    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->updateFooterButtonNames()V

    .line 4222
    :cond_9
    return-void

    .line 4149
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

    .line 4151
    :cond_b
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMoveButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 4153
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMoveButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    .line 4156
    :cond_c
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMoveButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 4158
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMoveButton:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    .line 4171
    :cond_d
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mFavoriteButton:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 4172
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mFlagButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_1

    .line 4200
    :cond_e
    if-nez p1, :cond_8

    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMultiSelectPanel:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v4, :cond_8

    .line 4201
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMultiSelectPanel:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 4202
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMultiSelectPanel:Landroid/view/View;

    const v1, 0x7f040001

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_2

    .line 4209
    :cond_f
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMoveMessageTask:Lcom/android/email/activity/MessageList$MoveMessageTask;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMoveMessageTask:Lcom/android/email/activity/MessageList$MoveMessageTask;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageList$MoveMessageTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_10

    .line 4212
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMoveButton:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 4213
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mDeleteButton:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_3

    .line 4216
    :cond_10
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMoveButton:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 4217
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mDeleteButton:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_3
.end method

.method private showToast(II)V
    .locals 1
    .parameter "resID"
    .parameter "duration"

    .prologue
    .line 1028
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 1029
    invoke-virtual {p0}, Lcom/android/email/activity/MessageList;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mToast:Landroid/widget/Toast;

    .line 1036
    :goto_0
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1037
    return-void

    .line 1031
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 1032
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(I)V

    .line 1033
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

    .line 3948
    iget-object v4, p0, Lcom/android/email/activity/MessageList;->mListAdapter:Lcom/android/email/activity/MessageList$MessageListAdapter;

    invoke-virtual {v4}, Lcom/android/email/activity/MessageList$MessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 3949
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    move v4, v6

    .line 3972
    :goto_0
    return v4

    .line 3956
    :cond_1
    const/4 v4, -0x1

    :try_start_0
    invoke-interface {v0, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 3957
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3958
    const/4 v4, 0x0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v2, v4

    .line 3959
    .local v2, id:J
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3960
    invoke-interface {v0, p2}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz p3, :cond_3

    move v5, v7

    :goto_1
    if-ne v4, v5, :cond_2

    move v4, v7

    .line 3961
    goto :goto_0

    :cond_3
    move v5, v6

    .line 3960
    goto :goto_1

    .line 3966
    .end local v2           #id:J
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 3967
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "MessageList >>"

    const-string v5, "testMultiple >> exception occured"

    invoke-static {v4, v5}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 3968
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move v4, v6

    .line 3969
    goto :goto_0

    .end local v1           #e:Ljava/lang/Exception;
    :cond_4
    move v4, v6

    .line 3972
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

    .line 3898
    iget-object v6, p0, Lcom/android/email/activity/MessageList;->mListAdapter:Lcom/android/email/activity/MessageList$MessageListAdapter;

    invoke-virtual {v6}, Lcom/android/email/activity/MessageList$MessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    .line 3899
    .local v2, c:Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 3901
    .local v1, anyWereFound:Z
    if-nez p3, :cond_1

    .line 3902
    const/4 v0, 0x2

    .line 3907
    .local v0, allWereSet:I
    :goto_0
    invoke-interface {v2, v7}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 3908
    :cond_0
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 3909
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    int-to-long v3, v6

    .line 3910
    .local v3, id:J
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 3912
    const/4 v1, 0x1

    goto :goto_1

    .line 3903
    .end local v0           #allWereSet:I
    .end local v3           #id:J
    :cond_1
    const/4 v6, 0x1

    if-ne p3, v6, :cond_2

    .line 3904
    const/4 v0, 0x1

    .restart local v0       #allWereSet:I
    goto :goto_0

    .line 3906
    .end local v0           #allWereSet:I
    :cond_2
    const/4 v0, 0x0

    .restart local v0       #allWereSet:I
    goto :goto_0

    .line 3920
    :cond_3
    const/4 v5, 0x0

    .line 3922
    .local v5, numChanged:I
    if-eqz v1, :cond_5

    .line 3923
    invoke-interface {v2, v7}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 3924
    :cond_4
    :goto_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 3925
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    int-to-long v3, v6

    .line 3926
    .restart local v3       #id:J
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 3927
    invoke-interface {p2, v3, v4, v2, v0}, Lcom/android/email/activity/MessageList$MultiToggleHelper;->setFlagField(JLandroid/database/Cursor;I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 3928
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 3934
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

    .line 3853
    iget-object v7, p0, Lcom/android/email/activity/MessageList;->mListAdapter:Lcom/android/email/activity/MessageList$MessageListAdapter;

    invoke-virtual {v7}, Lcom/android/email/activity/MessageList$MessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    .line 3854
    .local v2, c:Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 3855
    .local v1, anyWereFound:Z
    const/4 v0, 0x1

    .line 3857
    .local v0, allWereSet:Z
    invoke-interface {v2, v9}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 3858
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 3859
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    int-to-long v3, v7

    .line 3860
    .local v3, id:J
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {p1, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 3861
    const/4 v1, 0x1

    .line 3862
    invoke-interface {p2, v3, v4, v2}, Lcom/android/email/activity/MessageList$MultiToggleHelper;->getField(JLandroid/database/Cursor;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 3863
    const/4 v0, 0x0

    .line 3869
    .end local v3           #id:J
    :cond_1
    const/4 v6, 0x0

    .line 3871
    .local v6, numChanged:I
    if-eqz v1, :cond_4

    .line 3872
    if-nez v0, :cond_3

    const/4 v7, 0x1

    move v5, v7

    .line 3873
    .local v5, newValue:Z
    :goto_0
    invoke-interface {v2, v9}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 3874
    :cond_2
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 3875
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    int-to-long v3, v7

    .line 3876
    .restart local v3       #id:J
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {p1, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 3877
    invoke-interface {p2, v3, v4, v2, v5}, Lcom/android/email/activity/MessageList$MultiToggleHelper;->setField(JLandroid/database/Cursor;Z)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 3878
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .end local v3           #id:J
    .end local v5           #newValue:Z
    :cond_3
    move v5, v8

    .line 3872
    goto :goto_0

    .line 3884
    :cond_4
    return v6
.end method

.method private updateBadgeProvider()V
    .locals 7

    .prologue
    .line 1042
    invoke-virtual {p0}, Lcom/android/email/activity/MessageList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1043
    .local v1, cr:Landroid/content/ContentResolver;
    invoke-virtual {p0}, Lcom/android/email/activity/MessageList;->getCountofAccounts()I

    move-result v0

    .line 1044
    .local v0, cnt:I
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1045
    .local v2, newValues:Landroid/content/ContentValues;
    const-string v4, "package"

    const-string v5, "com.android.email"

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1046
    const-string v4, "class"

    const-string v5, "com.android.email.activity.Welcome"

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1047
    const-string v4, "badgecount"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1048
    const-string v3, "package=\'com.android.email\' AND class=\'com.android.email.activity.Welcome\'"

    .line 1049
    .local v3, where:Ljava/lang/String;
    const-string v4, "content://com.sec.badge/apps"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v2, v3, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1050
    const-string v4, "MessageList >>"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[updateBadgeProvider] - cnt : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1051
    return-void
.end method

.method private updateFooterButtonNames()V
    .locals 8

    .prologue
    .line 4100
    iget-object v5, p0, Lcom/android/email/activity/MessageList;->mListAdapter:Lcom/android/email/activity/MessageList$MessageListAdapter;

    invoke-virtual {v5}, Lcom/android/email/activity/MessageList$MessageListAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v5

    const/4 v6, 0x6

    const/4 v7, 0x1

    invoke-direct {p0, v5, v6, v7}, Lcom/android/email/activity/MessageList;->testMultiple(Ljava/util/Set;IZ)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 4101
    iget-object v5, p0, Lcom/android/email/activity/MessageList;->mReadUnreadButton:Landroid/widget/Button;

    const v6, 0x7f08001d

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(I)V

    .line 4115
    :goto_0
    iget-object v5, p0, Lcom/android/email/activity/MessageList;->mListAdapter:Lcom/android/email/activity/MessageList$MessageListAdapter;

    invoke-virtual {v5}, Lcom/android/email/activity/MessageList$MessageListAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v4

    .line 4116
    .local v4, selecteds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    iget-object v5, p0, Lcom/android/email/activity/MessageList;->mListAdapter:Lcom/android/email/activity/MessageList$MessageListAdapter;

    invoke-virtual {v5}, Lcom/android/email/activity/MessageList$MessageListAdapter;->getFavorites()Ljava/util/Set;

    move-result-object v1

    .line 4117
    .local v1, favorites:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    const/4 v0, 0x1

    .line 4118
    .local v0, allOfSelectedsIsFavorite:Z
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 4119
    .local v3, id:Ljava/lang/Long;
    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 4120
    const/4 v0, 0x0

    goto :goto_1

    .line 4103
    .end local v0           #allOfSelectedsIsFavorite:Z
    .end local v1           #favorites:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #id:Ljava/lang/Long;
    .end local v4           #selecteds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    :cond_1
    iget-object v5, p0, Lcom/android/email/activity/MessageList;->mReadUnreadButton:Landroid/widget/Button;

    const v6, 0x7f08001c

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 4123
    .restart local v0       #allOfSelectedsIsFavorite:Z
    .restart local v1       #favorites:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v4       #selecteds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    :cond_2
    if-nez v0, :cond_3

    .line 4124
    iget-object v5, p0, Lcom/android/email/activity/MessageList;->mFavoriteButton:Landroid/widget/Button;

    const v6, 0x7f08001f

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(I)V

    .line 4129
    :goto_2
    return-void

    .line 4126
    :cond_3
    iget-object v5, p0, Lcom/android/email/activity/MessageList;->mFavoriteButton:Landroid/widget/Button;

    const v6, 0x7f080020

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(I)V

    goto :goto_2
.end method

.method private updateInboxUnreadCount()V
    .locals 21

    .prologue
    .line 4011
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    move-wide v3, v0

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-gez v3, :cond_1

    .line 4096
    .end local p0
    :cond_0
    :goto_0
    return-void

    .line 4017
    .restart local p0
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    move-object v3, v0

    if-nez v3, :cond_2

    .line 4018
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    move-wide v3, v0

    move-object/from16 v0, p0

    move-wide v1, v3

    invoke-static {v0, v1, v2}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/MessageList;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    .line 4019
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    move-object v3, v0

    if-nez v3, :cond_2

    .line 4020
    const-string v3, "MessageList >>"

    const-string v4, "Mailbox Type is not TYPE_INBOX."

    invoke-static {v3, v4}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4024
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    move-object v3, v0

    iget v3, v3, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    if-eqz v3, :cond_3

    .line 4025
    const-string v3, "MessageList >>"

    const-string v4, "Mailbox Type is not TYPE_INBOX."

    invoke-static {v3, v4}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4029
    :cond_3
    const-string v6, "accountKey=? AND type=0 AND flagVisible=1"

    .line 4033
    .local v6, MAILBOX_SELECTION:Ljava/lang/String;
    const/4 v14, 0x0

    .line 4035
    .local v14, count:I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList;->mResolver:Landroid/content/ContentResolver;

    move-object v3, v0

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

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    move-object v9, v0

    iget-wide v9, v9, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const-string v8, "type,displayName"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v15

    .line 4048
    .local v15, cursor:Landroid/database/Cursor;
    if-eqz v15, :cond_0

    invoke-interface {v15}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_0

    .line 4053
    :try_start_1
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4054
    const/4 v3, 0x2

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-nez v3, :cond_6

    .line 4056
    invoke-static/range {p0 .. p0}, Lcom/android/email/Utility$FolderProperties;->getInstance(Landroid/content/Context;)Lcom/android/email/Utility$FolderProperties;

    move-result-object v3

    const/4 v4, 0x2

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/email/Utility$FolderProperties;->getDisplayName(I)Ljava/lang/String;

    move-result-object v20

    .line 4057
    .local v20, text:Ljava/lang/String;
    if-nez v20, :cond_4

    .line 4058
    const/4 v3, 0x1

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 4061
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "accountKey=? AND flagRead =0 AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList;->mResolver:Landroid/content/ContentResolver;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    move-wide v5, v0

    invoke-static {v4, v5, v6}, Lcom/android/email/Utility;->buildMailboxIdSelection(Landroid/content/ContentResolver;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v10

    .line 4064
    .local v10, selection_unread:Ljava/lang/String;
    const/4 v13, 0x0

    .line 4066
    .local v13, c_unread:Landroid/database/Cursor;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList;->mResolver:Landroid/content/ContentResolver;

    move-object v7, v0

    sget-object v8, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    new-array v9, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const/16 v4, 0xc

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v9, v3

    const/4 v3, 0x1

    new-array v11, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    move-object v4, v0

    iget-wide v4, v4, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v11, v3

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 4071
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v14

    .line 4075
    if-eqz v13, :cond_5

    :try_start_3
    invoke-interface {v13}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_5

    .line 4076
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 4079
    :cond_5
    new-instance v19, Ljava/lang/StringBuffer;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuffer;-><init>()V

    .line 4080
    .local v19, sTextbuf:Ljava/lang/StringBuffer;
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v20

    .line 4081
    const/16 v17, 0x0

    .line 4082
    .local v17, i:I
    const/16 v17, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList;->mTabHost:Lcom/android/email/winset/TwTabHost;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/email/winset/TwTabHost;->getTabCount()I

    move-result v3

    move/from16 v0, v17

    move v1, v3

    if-ge v0, v1, :cond_6

    .line 4084
    const/4 v3, 0x0

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList;->mTabHost:Lcom/android/email/winset/TwTabHost;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/email/winset/TwTabHost;->getTabLists()Ljava/util/List;

    move-result-object v3

    move-object v0, v3

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/email/winset/TwTabHost$TabSpec;

    invoke-virtual {v3}, Lcom/android/email/winset/TwTabHost$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 4086
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList;->mTabHost:Lcom/android/email/winset/TwTabHost;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/email/winset/TwTabHost;->getTabLists()Ljava/util/List;

    move-result-object v3

    move-object v0, v3

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/email/winset/TwTabHost$TabSpec;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/email/winset/TwTabHost$TabSpec;->setLabelText(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1

    .line 4095
    .end local v10           #selection_unread:Ljava/lang/String;
    .end local v13           #c_unread:Landroid/database/Cursor;
    .end local v17           #i:I
    .end local v19           #sTextbuf:Ljava/lang/StringBuffer;
    .end local v20           #text:Ljava/lang/String;
    :cond_6
    :goto_2
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 4043
    .end local v15           #cursor:Landroid/database/Cursor;
    .restart local p0
    :catch_0
    move-exception v3

    move-object/from16 v16, v3

    .line 4044
    .local v16, e:Ljava/lang/Exception;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 4075
    .end local v16           #e:Ljava/lang/Exception;
    .restart local v10       #selection_unread:Ljava/lang/String;
    .restart local v13       #c_unread:Landroid/database/Cursor;
    .restart local v15       #cursor:Landroid/database/Cursor;
    .restart local v20       #text:Ljava/lang/String;
    :catchall_0
    move-exception v3

    if-eqz v13, :cond_7

    :try_start_4
    invoke-interface {v13}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_7

    .line 4076
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v3
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_1

    .line 4091
    .end local v10           #selection_unread:Ljava/lang/String;
    .end local v13           #c_unread:Landroid/database/Cursor;
    .end local v20           #text:Ljava/lang/String;
    .end local p0
    :catch_1
    move-exception v3

    move-object/from16 v18, v3

    .line 4092
    .local v18, ise:Ljava/lang/IllegalStateException;
    const-string v3, "MessageList >>"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IllegalStateException >>> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 4093
    invoke-virtual/range {v18 .. v18}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_2

    .line 4082
    .end local v18           #ise:Ljava/lang/IllegalStateException;
    .restart local v10       #selection_unread:Ljava/lang/String;
    .restart local v13       #c_unread:Landroid/database/Cursor;
    .restart local v17       #i:I
    .restart local v19       #sTextbuf:Ljava/lang/StringBuffer;
    .restart local v20       #text:Ljava/lang/String;
    .restart local p0
    :cond_8
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_1
.end method

.method private updateMessageLists(Z)V
    .locals 20
    .parameter "bRefreshPosition"

    .prologue
    .line 1252
    const-string v4, "MessageList >>"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateMessageLists :: mMailboxId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    move-wide v6, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1254
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    move-wide v4, v0

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_6

    .line 1257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList;->mLoadMessagesTask:Lcom/android/email/activity/MessageList$LoadMessagesTask;

    move-object v4, v0

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList;->mLoadMessagesTask:Lcom/android/email/activity/MessageList$LoadMessagesTask;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/email/activity/MessageList$LoadMessagesTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v4

    sget-object v5, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v4, v5, :cond_0

    .line 1259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList;->mLoadMessagesTask:Lcom/android/email/activity/MessageList$LoadMessagesTask;

    move-object v4, v0

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/email/activity/MessageList$LoadMessagesTask;->cancel(Z)Z

    .line 1260
    const/4 v4, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/MessageList;->mLoadMessagesTask:Lcom/android/email/activity/MessageList$LoadMessagesTask;

    .line 1262
    :cond_0
    new-instance v4, Lcom/android/email/activity/MessageList$LoadMessagesTask;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    move-wide v6, v0

    const-wide/16 v8, -0x1

    const/4 v10, 0x1

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v10}, Lcom/android/email/activity/MessageList$LoadMessagesTask;-><init>(Lcom/android/email/activity/MessageList;JJZ)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/MessageList;->mLoadMessagesTask:Lcom/android/email/activity/MessageList$LoadMessagesTask;

    .line 1263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList;->mLoadMessagesTask:Lcom/android/email/activity/MessageList$LoadMessagesTask;

    move-object v4, v0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Void;

    invoke-virtual {v4, v5}, Lcom/android/email/activity/MessageList$LoadMessagesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList;->mSetTitleTask:Lcom/android/email/activity/MessageList$SetTitleTask;

    move-object v4, v0

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList;->mSetTitleTask:Lcom/android/email/activity/MessageList$SetTitleTask;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/email/activity/MessageList$SetTitleTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v4

    sget-object v5, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v4, v5, :cond_1

    .line 1267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList;->mSetTitleTask:Lcom/android/email/activity/MessageList$SetTitleTask;

    move-object v4, v0

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/email/activity/MessageList$SetTitleTask;->cancel(Z)Z

    .line 1268
    const/4 v4, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/MessageList;->mSetTitleTask:Lcom/android/email/activity/MessageList$SetTitleTask;

    .line 1270
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList;->mSetFooterTask:Lcom/android/email/activity/MessageList$SetFooterTask;

    move-object v4, v0

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList;->mSetFooterTask:Lcom/android/email/activity/MessageList$SetFooterTask;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/email/activity/MessageList$SetFooterTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v4

    sget-object v5, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v4, v5, :cond_2

    .line 1272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList;->mSetFooterTask:Lcom/android/email/activity/MessageList$SetFooterTask;

    move-object v4, v0

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/email/activity/MessageList$SetFooterTask;->cancel(Z)Z

    .line 1273
    const/4 v4, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/MessageList;->mSetFooterTask:Lcom/android/email/activity/MessageList$SetFooterTask;

    .line 1279
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList;->mTabHost:Lcom/android/email/winset/TwTabHost;

    move-object v4, v0

    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList;->mTabHost:Lcom/android/email/winset/TwTabHost;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/email/winset/TwTabHost;->getTabCount()I

    move-result v4

    if-gtz v4, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MessageList;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "com.android.email.server.search"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList;->mFolderListTask:Lcom/android/email/activity/MessageList$RefreshFolderListTask;

    move-object v4, v0

    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList;->mFolderListTask:Lcom/android/email/activity/MessageList$RefreshFolderListTask;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/email/activity/MessageList$RefreshFolderListTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v4

    sget-object v5, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v4, v5, :cond_3

    .line 1283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList;->mFolderListTask:Lcom/android/email/activity/MessageList$RefreshFolderListTask;

    move-object v4, v0

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/email/activity/MessageList$RefreshFolderListTask;->cancel(Z)Z

    .line 1284
    const/4 v4, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/MessageList;->mFolderListTask:Lcom/android/email/activity/MessageList$RefreshFolderListTask;

    .line 1287
    :cond_3
    new-instance v4, Lcom/android/email/activity/MessageList$RefreshFolderListTask;

    const/4 v5, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/email/activity/MessageList$RefreshFolderListTask;-><init>(Lcom/android/email/activity/MessageList;Lcom/android/email/activity/MessageList$1;)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/MessageList;->mFolderListTask:Lcom/android/email/activity/MessageList$RefreshFolderListTask;

    .line 1288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList;->mFolderListTask:Lcom/android/email/activity/MessageList$RefreshFolderListTask;

    move-object v4, v0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MessageList;->mMailboxCurrentIndex:I

    move v7, v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v4, v5}, Lcom/android/email/activity/MessageList$RefreshFolderListTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1290
    :cond_4
    new-instance v4, Lcom/android/email/activity/MessageList$SetTitleTask;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    move-wide v5, v0

    move-object v0, v4

    move-object/from16 v1, p0

    move-wide v2, v5

    invoke-direct {v0, v1, v2, v3}, Lcom/android/email/activity/MessageList$SetTitleTask;-><init>(Lcom/android/email/activity/MessageList;J)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/MessageList;->mSetTitleTask:Lcom/android/email/activity/MessageList$SetTitleTask;

    .line 1291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList;->mSetTitleTask:Lcom/android/email/activity/MessageList$SetTitleTask;

    move-object v4, v0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Void;

    invoke-virtual {v4, v5}, Lcom/android/email/activity/MessageList$SetTitleTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1294
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    move-wide v5, v0

    const-wide/16 v7, -0x1

    const/4 v9, -0x1

    move-object/from16 v4, p0

    move/from16 v10, p1

    invoke-direct/range {v4 .. v10}, Lcom/android/email/activity/MessageList;->addFooterView(JJIZ)V

    .line 1340
    :cond_5
    :goto_0
    return-void

    .line 1298
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList;->mFindMailboxTask:Lcom/android/email/activity/MessageList$FindMailboxTask;

    move-object v4, v0

    if-eqz v4, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList;->mFindMailboxTask:Lcom/android/email/activity/MessageList$FindMailboxTask;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/email/activity/MessageList$FindMailboxTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v4

    sget-object v5, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v4, v5, :cond_7

    .line 1300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList;->mFindMailboxTask:Lcom/android/email/activity/MessageList$FindMailboxTask;

    move-object v4, v0

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/email/activity/MessageList$FindMailboxTask;->cancel(Z)Z

    .line 1301
    const/4 v4, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/MessageList;->mFindMailboxTask:Lcom/android/email/activity/MessageList$FindMailboxTask;

    .line 1303
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList;->mSetFooterTask:Lcom/android/email/activity/MessageList$SetFooterTask;

    move-object v4, v0

    if-eqz v4, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList;->mSetFooterTask:Lcom/android/email/activity/MessageList$SetFooterTask;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/email/activity/MessageList$SetFooterTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v4

    sget-object v5, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v4, v5, :cond_8

    .line 1305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList;->mSetFooterTask:Lcom/android/email/activity/MessageList$SetFooterTask;

    move-object v4, v0

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/email/activity/MessageList$SetFooterTask;->cancel(Z)Z

    .line 1306
    const/4 v4, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/MessageList;->mSetFooterTask:Lcom/android/email/activity/MessageList$SetFooterTask;

    .line 1310
    :cond_8
    const-wide/16 v6, -0x1

    .line 1311
    .local v6, accountId:J
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MessageList;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "com.android.email.activity.MAILBOX_TYPE"

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 1312
    .local v8, mailboxType:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MessageList;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v19

    .line 1313
    .local v19, uri:Landroid/net/Uri;
    if-eqz v19, :cond_a

    const-string v4, "content"

    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    const-string v4, "com.android.email.provider"

    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1317
    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 1318
    .local v17, accountIdString:Ljava/lang/String;
    if-eqz v17, :cond_9

    .line 1319
    invoke-static/range {v17 .. v17}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 1321
    :cond_9
    new-instance v4, Lcom/android/email/activity/MessageList$FindMailboxTask;

    const/4 v9, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/email/activity/MessageList$FindMailboxTask;-><init>(Lcom/android/email/activity/MessageList;JIZ)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/MessageList;->mFindMailboxTask:Lcom/android/email/activity/MessageList$FindMailboxTask;

    .line 1322
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList;->mFindMailboxTask:Lcom/android/email/activity/MessageList$FindMailboxTask;

    move-object v4, v0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Void;

    invoke-virtual {v4, v5}, Lcom/android/email/activity/MessageList$FindMailboxTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1329
    .end local v17           #accountIdString:Ljava/lang/String;
    :goto_1
    move-wide v0, v6

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/email/activity/MessageList;->mAccountId:J

    .line 1330
    const-wide/16 v10, -0x1

    move-object/from16 v9, p0

    move-wide v12, v6

    move v14, v8

    move/from16 v15, p1

    invoke-direct/range {v9 .. v15}, Lcom/android/email/activity/MessageList;->addFooterView(JJIZ)V

    .line 1332
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/activity/MessageList;->mAccountId:J

    move-wide v4, v0

    move-object/from16 v0, p0

    move-wide v1, v4

    invoke-static {v0, v1, v2}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v16

    .line 1333
    .local v16, account:Lcom/android/email/provider/EmailContent$Account;
    if-eqz v16, :cond_5

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/email/provider/EmailContent$Account;->mFlags:I

    move v4, v0

    and-int/lit8 v4, v4, 0x20

    if-eqz v4, :cond_5

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Account;->mSecuritySyncKey:Ljava/lang/String;

    move-object v4, v0

    if-nez v4, :cond_5

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    move-object v4, v0

    if-eqz v4, :cond_5

    .line 1336
    const v4, 0x7f080166

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual/range {v16 .. v16}, Lcom/android/email/provider/EmailContent$Account;->getDisplayName()Ljava/lang/String;

    .end local v6           #accountId:J
    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, p0

    move v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/MessageList;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    .line 1337
    .local v18, tickerText:Ljava/lang/String;
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move v2, v4

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 1325
    .end local v16           #account:Lcom/android/email/provider/EmailContent$Account;
    .end local v18           #tickerText:Ljava/lang/String;
    .restart local v6       #accountId:J
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MessageList;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "com.android.email.activity._ACCOUNT_ID"

    const-wide/16 v6, -0x1

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    .end local v6           #accountId:J
    move-result-wide v6

    .line 1326
    .restart local v6       #accountId:J
    new-instance v4, Lcom/android/email/activity/MessageList$FindMailboxTask;

    const/4 v9, 0x1

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/email/activity/MessageList$FindMailboxTask;-><init>(Lcom/android/email/activity/MessageList;JIZ)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/MessageList;->mFindMailboxTask:Lcom/android/email/activity/MessageList$FindMailboxTask;

    .line 1327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList;->mFindMailboxTask:Lcom/android/email/activity/MessageList$FindMailboxTask;

    move-object v4, v0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Void;

    invoke-virtual {v4, v5}, Lcom/android/email/activity/MessageList$FindMailboxTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1
.end method


# virtual methods
.method public getCountofAccounts()I
    .locals 8

    .prologue
    .line 1056
    const/4 v6, 0x0

    .line 1057
    .local v6, ac_count:I
    const/4 v7, 0x0

    .line 1059
    .local v7, c_unread:Landroid/database/Cursor;
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "flagRead =0 AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/email/activity/MessageList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-wide/16 v4, -0x2

    invoke-static {v1, v4, v5}, Lcom/android/email/Utility;->buildMailboxIdSelection(Landroid/content/ContentResolver;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1061
    .local v3, selection_unread:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/email/activity/MessageList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

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

    move-result-object v7

    .line 1066
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    .line 1070
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1071
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1073
    :cond_0
    const-string v0, "MessageList >>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In getCountofAccounts, total email count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1074
    return v6

    .line 1070
    .end local v3           #selection_unread:Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1071
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0
.end method

.method public getFlag(J)I
    .locals 10
    .parameter "messageId"

    .prologue
    const/4 v4, 0x0

    const/4 v9, -0x1

    .line 2649
    const/4 v8, 0x0

    .line 2650
    .local v8, value:I
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

    move-result-object v6

    .line 2653
    .local v6, ff:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v9

    .line 2670
    :goto_0
    return v0

    .line 2657
    :cond_1
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2658
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2659
    const/4 v0, 0x6

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 2660
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2662
    :catch_0
    move-exception v0

    move-object v7, v0

    .line 2663
    .local v7, ise:Ljava/lang/IllegalStateException;
    :try_start_1
    const-string v0, "MessageList >>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IllegalStateException >>> syncFavorites"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 2664
    invoke-virtual {v7}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2668
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v9

    goto :goto_0

    .end local v7           #ise:Ljava/lang/IllegalStateException;
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v8

    .line 2670
    goto :goto_0

    .line 2668
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1465
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 1483
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_1

    .line 1529
    :cond_1
    :goto_0
    return-void

    .line 1471
    :sswitch_0
    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->checkITPolicy_AllowPOPIMAP()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1473
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "11111 MessageList.java >>>>> onClick()  >>>>> 1265"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1474
    const v0, 0x7f080188

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1485
    :sswitch_1
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mListAdapter:Lcom/android/email/activity/MessageList$MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageList$MessageListAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageList;->onMultiToggleRead(Ljava/util/Set;)V

    .line 1487
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mListAdapter:Lcom/android/email/activity/MessageList$MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageList$MessageListAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 1488
    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageList;->showMultiPanel(Z)V

    goto :goto_0

    .line 1492
    :sswitch_2
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mListAdapter:Lcom/android/email/activity/MessageList$MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageList$MessageListAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/email/activity/MessageList;->onMultiToggleFavorite(Ljava/util/Set;ZI)V

    .line 1494
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mListAdapter:Lcom/android/email/activity/MessageList$MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageList$MessageListAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 1495
    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageList;->showMultiPanel(Z)V

    goto :goto_0

    .line 1499
    :sswitch_3
    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->onFollowUpFlag()V

    .line 1500
    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageList;->showMultiPanel(Z)V

    goto :goto_0

    .line 1504
    :sswitch_4
    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->onMultiDeletePopup()V

    goto :goto_0

    .line 1508
    :sswitch_5
    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->onMultiMovePopup()V

    goto :goto_0

    .line 1511
    :sswitch_6
    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->onAccounts()V

    goto :goto_0

    .line 1517
    :sswitch_7
    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->onListbySearch()V

    goto :goto_0

    .line 1521
    :sswitch_8
    sget-object v0, Lcom/android/email/activity/MessageList;->mSearchBar:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1522
    sget-object v0, Lcom/android/email/activity/MessageList;->mSearchBar:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 1523
    sget-object v0, Lcom/android/email/activity/MessageList;->mSearchBar:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 1524
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1525
    sget-object v0, Lcom/android/email/activity/MessageList;->mSearchBar:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/email/activity/MessageList;->mEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 1465
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0700b4 -> :sswitch_0
        0x7f0700b5 -> :sswitch_0
        0x7f0700bc -> :sswitch_0
        0x7f0700bf -> :sswitch_0
        0x7f0700c0 -> :sswitch_0
    .end sparse-switch

    .line 1483
    :sswitch_data_1
    .sparse-switch
        0x7f070091 -> :sswitch_6
        0x7f0700b4 -> :sswitch_7
        0x7f0700b5 -> :sswitch_8
        0x7f0700bc -> :sswitch_1
        0x7f0700bd -> :sswitch_2
        0x7f0700be -> :sswitch_3
        0x7f0700bf -> :sswitch_4
        0x7f0700c0 -> :sswitch_5
    .end sparse-switch
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter "item"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2147
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 2149
    .local v0, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-object v1, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    check-cast v1, Lcom/android/email/activity/MessageListItem;

    .line 2151
    .local v1, itemView:Lcom/android/email/activity/MessageListItem;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 2206
    :goto_0
    invoke-super {p0, p1}, Lcom/android/email/winset/TwTabActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    return v2

    .line 2153
    :sswitch_0
    iget v2, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    sput v2, Lcom/android/email/activity/MessageList;->mPositionOfSelectedMessage:I

    .line 2154
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

    .line 2155
    iget-wide v2, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    iget-wide v4, v1, Lcom/android/email/activity/MessageListItem;->mMailboxId:J

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/email/activity/MessageList;->onOpenMessage(JJ)V

    goto :goto_0

    .line 2158
    :sswitch_1
    iget-wide v2, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    iget-wide v4, v1, Lcom/android/email/activity/MessageListItem;->mAccountId:J

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/email/activity/MessageList;->onDeletePopup(JJ)V

    goto :goto_0

    .line 2161
    :sswitch_2
    iget-wide v2, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    invoke-direct {p0, v2, v3}, Lcom/android/email/activity/MessageList;->onReply(J)V

    goto :goto_0

    .line 2164
    :sswitch_3
    iget-wide v2, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    invoke-direct {p0, v2, v3}, Lcom/android/email/activity/MessageList;->onReplyAll(J)V

    goto :goto_0

    .line 2167
    :sswitch_4
    iget-wide v2, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    invoke-direct {p0, v2, v3}, Lcom/android/email/activity/MessageList;->onForward(J)V

    goto :goto_0

    .line 2170
    :sswitch_5
    iget-boolean v2, v1, Lcom/android/email/activity/MessageListItem;->mFavorite:Z

    if-eqz v2, :cond_0

    .line 2171
    iget-object v2, p0, Lcom/android/email/activity/MessageList;->mListAdapter:Lcom/android/email/activity/MessageList$MessageListAdapter;

    invoke-virtual {v2, v1, v5}, Lcom/android/email/activity/MessageList$MessageListAdapter;->updateFavorite(Lcom/android/email/activity/MessageListItem;Z)V

    goto :goto_0

    .line 2173
    :cond_0
    iget-object v2, p0, Lcom/android/email/activity/MessageList;->mListAdapter:Lcom/android/email/activity/MessageList$MessageListAdapter;

    invoke-virtual {v2, v1, v6}, Lcom/android/email/activity/MessageList$MessageListAdapter;->updateFavorite(Lcom/android/email/activity/MessageListItem;Z)V

    goto :goto_0

    .line 2177
    :sswitch_6
    iget-wide v2, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    invoke-direct {p0, v2, v3}, Lcom/android/email/activity/MessageList;->onFollowUpFlag(J)V

    goto :goto_0

    .line 2180
    :sswitch_7
    iget-wide v2, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    iget-boolean v4, v1, Lcom/android/email/activity/MessageListItem;->mRead:Z

    if-nez v4, :cond_1

    move v4, v6

    :goto_1
    invoke-direct {p0, v2, v3, v4}, Lcom/android/email/activity/MessageList;->onSetMessageRead(JZ)V

    goto :goto_0

    :cond_1
    move v4, v5

    goto :goto_1

    .line 2151
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0700c4 -> :sswitch_6
        0x7f070122 -> :sswitch_0
        0x7f070123 -> :sswitch_1
        0x7f070124 -> :sswitch_4
        0x7f070125 -> :sswitch_3
        0x7f070126 -> :sswitch_2
        0x7f070127 -> :sswitch_7
        0x7f070133 -> :sswitch_5
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "icicle"

    .prologue
    const v11, 0x1020013

    const/4 v10, -0x1

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v7, "MessageList >>"

    .line 575
    invoke-super {p0, p1}, Lcom/android/email/winset/TwTabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 576
    const-string v4, "MessageList >>"

    const-string v4, "onCreate ----------------------------------------- mirror branch"

    invoke-static {v7, v4}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    iget-object v4, p0, Lcom/android/email/activity/MessageList;->DPMReceiver:Landroid/content/BroadcastReceiver;

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4, v5}, Lcom/android/email/activity/MessageList;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 580
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "11111 MessageList.java >>>>> onCreate()  >>>>> 528"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 583
    invoke-virtual {p0, v9}, Lcom/android/email/activity/MessageList;->requestWindowFeature(I)Z

    .line 584
    const v4, 0x7f030028

    invoke-virtual {p0, v4}, Lcom/android/email/activity/MessageList;->setContentView(I)V

    .line 586
    iput-boolean v8, p0, Lcom/android/email/activity/MessageList;->mAdapterIsChanged:Z

    .line 588
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/email/activity/MessageList;->mMessageListCursor:Landroid/database/Cursor;

    .line 589
    iput-boolean v9, p0, Lcom/android/email/activity/MessageList;->mCanAutoRefresh:Z

    .line 590
    const v4, 0x7f0700ba

    invoke-virtual {p0, v4}, Lcom/android/email/activity/MessageList;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    iput-object v4, p0, Lcom/android/email/activity/MessageList;->mListView:Landroid/widget/ListView;

    .line 591
    const v4, 0x7f0700bb

    invoke-virtual {p0, v4}, Lcom/android/email/activity/MessageList;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/email/activity/MessageList;->mMultiSelectPanel:Landroid/view/View;

    .line 592
    const v4, 0x7f0700bc

    invoke-virtual {p0, v4}, Lcom/android/email/activity/MessageList;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/email/activity/MessageList;->mReadUnreadButton:Landroid/widget/Button;

    .line 593
    const v4, 0x7f0700bd

    invoke-virtual {p0, v4}, Lcom/android/email/activity/MessageList;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/email/activity/MessageList;->mFavoriteButton:Landroid/widget/Button;

    .line 594
    const v4, 0x7f0700be

    invoke-virtual {p0, v4}, Lcom/android/email/activity/MessageList;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/email/activity/MessageList;->mFlagButton:Landroid/widget/Button;

    .line 595
    const v4, 0x7f0700bf

    invoke-virtual {p0, v4}, Lcom/android/email/activity/MessageList;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/email/activity/MessageList;->mDeleteButton:Landroid/widget/Button;

    .line 596
    const v4, 0x7f0700c0

    invoke-virtual {p0, v4}, Lcom/android/email/activity/MessageList;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/email/activity/MessageList;->mMoveButton:Landroid/widget/Button;

    .line 598
    const v4, 0x7f0700b6

    invoke-virtual {p0, v4}, Lcom/android/email/activity/MessageList;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/email/activity/MessageList;->mRightTitle_Layout:Landroid/widget/LinearLayout;

    .line 599
    const v4, 0x7f0700b7

    invoke-virtual {p0, v4}, Lcom/android/email/activity/MessageList;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/email/activity/MessageList;->mRightTitle:Landroid/widget/TextView;

    .line 600
    const v4, 0x7f070092

    invoke-virtual {p0, v4}, Lcom/android/email/activity/MessageList;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ProgressBar;

    iput-object v4, p0, Lcom/android/email/activity/MessageList;->mProgressIcon:Landroid/widget/ProgressBar;

    .line 601
    const v4, 0x7f070046

    invoke-virtual {p0, v4}, Lcom/android/email/activity/MessageList;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/email/activity/MessageList;->mErrorBanner:Landroid/widget/TextView;

    .line 603
    new-instance v4, Lcom/android/email/activity/MessageList$ProgressDialogForMessageMove;

    invoke-direct {v4, p0}, Lcom/android/email/activity/MessageList$ProgressDialogForMessageMove;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/email/activity/MessageList;->mProgressDialog:Lcom/android/email/activity/MessageList$ProgressDialogForMessageMove;

    .line 604
    iget-object v4, p0, Lcom/android/email/activity/MessageList;->mProgressDialog:Lcom/android/email/activity/MessageList$ProgressDialogForMessageMove;

    invoke-virtual {v4, v9}, Lcom/android/email/activity/MessageList$ProgressDialogForMessageMove;->setIndeterminate(Z)V

    .line 605
    iget-object v4, p0, Lcom/android/email/activity/MessageList;->mProgressDialog:Lcom/android/email/activity/MessageList$ProgressDialogForMessageMove;

    invoke-virtual {v4, v8}, Lcom/android/email/activity/MessageList$ProgressDialogForMessageMove;->setProgressStyle(I)V

    .line 606
    iget-object v4, p0, Lcom/android/email/activity/MessageList;->mProgressDialog:Lcom/android/email/activity/MessageList$ProgressDialogForMessageMove;

    const v5, 0x7f0800e7

    invoke-virtual {p0, v5}, Lcom/android/email/activity/MessageList;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/email/activity/MessageList$ProgressDialogForMessageMove;->setMessage(Ljava/lang/CharSequence;)V

    .line 607
    iput-boolean v8, p0, Lcom/android/email/activity/MessageList;->mMoveDialogVisible:Z

    .line 610
    const v4, 0x7f070079

    invoke-virtual {p0, v4}, Lcom/android/email/activity/MessageList;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/email/activity/MessageList;->mEmptyListBanner:Landroid/widget/TextView;

    .line 612
    const v4, 0x7f070091

    invoke-virtual {p0, v4}, Lcom/android/email/activity/MessageList;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 613
    iget-object v4, p0, Lcom/android/email/activity/MessageList;->mReadUnreadButton:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 614
    iget-object v4, p0, Lcom/android/email/activity/MessageList;->mFavoriteButton:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 615
    iget-object v4, p0, Lcom/android/email/activity/MessageList;->mFlagButton:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 616
    iget-object v4, p0, Lcom/android/email/activity/MessageList;->mDeleteButton:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 617
    iget-object v4, p0, Lcom/android/email/activity/MessageList;->mMoveButton:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 619
    iget-object v4, p0, Lcom/android/email/activity/MessageList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 620
    iget-object v4, p0, Lcom/android/email/activity/MessageList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, v9}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 621
    iget-object v4, p0, Lcom/android/email/activity/MessageList;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0, v4}, Lcom/android/email/activity/MessageList;->registerForContextMenu(Landroid/view/View;)V

    .line 623
    iget-object v4, p0, Lcom/android/email/activity/MessageList;->mListAdapter:Lcom/android/email/activity/MessageList$MessageListAdapter;

    if-nez v4, :cond_0

    .line 624
    new-instance v4, Lcom/android/email/activity/MessageList$MessageListAdapter;

    invoke-direct {v4, p0, p0}, Lcom/android/email/activity/MessageList$MessageListAdapter;-><init>(Lcom/android/email/activity/MessageList;Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/email/activity/MessageList;->mListAdapter:Lcom/android/email/activity/MessageList$MessageListAdapter;

    .line 627
    :cond_0
    iget-object v4, p0, Lcom/android/email/activity/MessageList;->mListView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/android/email/activity/MessageList;->mListAdapter:Lcom/android/email/activity/MessageList$MessageListAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 629
    iput v10, p0, Lcom/android/email/activity/MessageList;->mIsEAS:I

    .line 633
    iget-object v4, p0, Lcom/android/email/activity/MessageList;->mListAdapter:Lcom/android/email/activity/MessageList$MessageListAdapter;

    invoke-virtual {v4}, Lcom/android/email/activity/MessageList$MessageListAdapter;->getTextSizeValue()I

    move-result v3

    .line 634
    .local v3, textsize:I
    if-eq v3, v10, :cond_1

    .line 636
    const-string v4, "MessageList >>"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MessageList Loaded TextSize = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    iget-object v4, p0, Lcom/android/email/activity/MessageList;->mListAdapter:Lcom/android/email/activity/MessageList$MessageListAdapter;

    invoke-virtual {v4, v3}, Lcom/android/email/activity/MessageList$MessageListAdapter;->updateTextSize(I)V

    .line 638
    sput v3, Lcom/android/email/activity/MessageList;->mTextSize:I

    .line 647
    :goto_0
    iput-object p0, p0, Lcom/android/email/activity/MessageList;->mMsgList:Lcom/android/email/activity/MessageList;

    .line 649
    invoke-virtual {p0}, Lcom/android/email/activity/MessageList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iput-object v4, p0, Lcom/android/email/activity/MessageList;->mResolver:Landroid/content/ContentResolver;

    .line 655
    invoke-virtual {p0}, Lcom/android/email/activity/MessageList;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "com.android.email.activity.MAILBOX_ID"

    const-wide/16 v6, -0x1

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    .line 656
    iget-wide v4, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    invoke-virtual {p0, v4, v5}, Lcom/android/email/activity/MessageList;->setMailboxInfo(J)V

    .line 660
    new-instance v1, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.EMAILSEARCH_COMPLETED"

    invoke-direct {v1, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 661
    .local v1, filter:Landroid/content/IntentFilter;
    iget-object v4, p0, Lcom/android/email/activity/MessageList;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v1}, Lcom/android/email/activity/MessageList;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 665
    iget-wide v4, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    const-wide/16 v6, -0x2

    cmp-long v4, v4, v6

    if-lez v4, :cond_2

    .line 666
    invoke-virtual {p0}, Lcom/android/email/activity/MessageList;->getTabHost()Lcom/android/email/winset/TwTabHost;

    move-result-object v4

    iput-object v4, p0, Lcom/android/email/activity/MessageList;->mTabHost:Lcom/android/email/winset/TwTabHost;

    .line 667
    iget-object v4, p0, Lcom/android/email/activity/MessageList;->mTabHost:Lcom/android/email/winset/TwTabHost;

    invoke-virtual {v4}, Lcom/android/email/winset/TwTabHost;->clearAllTabs()V

    .line 668
    iget-object v4, p0, Lcom/android/email/activity/MessageList;->mTabHost:Lcom/android/email/winset/TwTabHost;

    invoke-virtual {v4, p0}, Lcom/android/email/winset/TwTabHost;->setOnTabChangedListener(Lcom/android/email/winset/TwTabHost$OnTabChangeListener;)V

    .line 674
    :goto_1
    sput v8, Lcom/android/email/activity/MessageList;->mSortType:I

    .line 675
    iput v8, p0, Lcom/android/email/activity/MessageList;->mLastSortType:I

    .line 676
    const-string v4, "timeStamp COLLATE NOCASE DESC"

    iput-object v4, p0, Lcom/android/email/activity/MessageList;->mSortQuery:Ljava/lang/String;

    .line 684
    const-string v4, "AndroidMail.MessageList"

    invoke-virtual {p0, v4, v8}, Lcom/android/email/activity/MessageList;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 685
    .local v2, sp:Landroid/content/SharedPreferences;
    if-eqz v2, :cond_3

    .line 686
    const-string v4, "prefer_view_mode"

    invoke-interface {v2, v4, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    sput v4, Lcom/android/email/activity/MessageList;->mViewModeType:I

    .line 695
    :goto_2
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const v5, 0x7f080151

    invoke-virtual {p0, v5}, Lcom/android/email/activity/MessageList;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    const v5, 0x7f0800ff

    invoke-virtual {p0, v5}, Lcom/android/email/activity/MessageList;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    const/4 v5, 0x2

    const v6, 0x7f080150

    invoke-virtual {p0, v6}, Lcom/android/email/activity/MessageList;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const v6, 0x7f080100

    invoke-virtual {p0, v6}, Lcom/android/email/activity/MessageList;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    iput-object v4, p0, Lcom/android/email/activity/MessageList;->mSearchListString:[Ljava/lang/String;

    .line 701
    invoke-virtual {p0, v11}, Lcom/android/email/activity/MessageList;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/email/winset/TwTabWidget;

    iput-object v4, p0, Lcom/android/email/activity/MessageList;->mFlipper:Lcom/android/email/winset/TwTabWidget;

    .line 702
    const v4, 0x7f0700b3

    invoke-virtual {p0, v4}, Lcom/android/email/activity/MessageList;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/email/activity/MessageList;->mFlipper2:Landroid/widget/LinearLayout;

    .line 704
    const v4, 0x7f0700b4

    invoke-virtual {p0, v4}, Lcom/android/email/activity/MessageList;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/email/activity/MessageList;->mSearchType:Landroid/widget/TextView;

    .line 705
    iget-object v4, p0, Lcom/android/email/activity/MessageList;->mSearchType:Landroid/widget/TextView;

    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 706
    iget-object v4, p0, Lcom/android/email/activity/MessageList;->mSearchType:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/email/activity/MessageList;->mSearchListString:[Ljava/lang/String;

    sget v6, Lcom/android/email/activity/MessageList;->sSelectedSearchType:I

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 707
    const v4, 0x7f0700b3

    invoke-virtual {p0, v4}, Lcom/android/email/activity/MessageList;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/email/activity/MessageList;->mTitleSearchBar:Landroid/widget/LinearLayout;

    .line 708
    const/4 v0, 0x0

    .line 709
    .local v0, colorWatcher:Landroid/text/TextWatcher;
    const v4, 0x7f0700b5

    invoke-virtual {p0, v4}, Lcom/android/email/activity/MessageList;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    sput-object v4, Lcom/android/email/activity/MessageList;->mSearchBar:Landroid/widget/EditText;

    .line 710
    sget-object v4, Lcom/android/email/activity/MessageList;->mSearchBar:Landroid/widget/EditText;

    invoke-virtual {v4, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 715
    sget-object v4, Lcom/android/email/activity/MessageList;->mSearchBar:Landroid/widget/EditText;

    new-instance v5, Lcom/android/email/activity/MessageList$1;

    invoke-direct {v5, p0}, Lcom/android/email/activity/MessageList$1;-><init>(Lcom/android/email/activity/MessageList;)V

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 732
    const-string v4, "input_method"

    invoke-virtual {p0, v4}, Lcom/android/email/activity/MessageList;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodManager;

    iput-object v4, p0, Lcom/android/email/activity/MessageList;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    .line 735
    return-void

    .line 642
    .end local v0           #colorWatcher:Landroid/text/TextWatcher;
    .end local v1           #filter:Landroid/content/IntentFilter;
    .end local v2           #sp:Landroid/content/SharedPreferences;
    :cond_1
    iget-object v4, p0, Lcom/android/email/activity/MessageList;->mListAdapter:Lcom/android/email/activity/MessageList$MessageListAdapter;

    invoke-virtual {v4, v8}, Lcom/android/email/activity/MessageList$MessageListAdapter;->updateTextSize(I)V

    .line 643
    const-string v4, "MessageList >>"

    const-string v4, "MessageList Default TextSize(small) = 0"

    invoke-static {v7, v4}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    sput v8, Lcom/android/email/activity/MessageList;->mTextSize:I

    goto/16 :goto_0

    .line 670
    .restart local v1       #filter:Landroid/content/IntentFilter;
    :cond_2
    invoke-virtual {p0, v11}, Lcom/android/email/activity/MessageList;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 689
    .restart local v2       #sp:Landroid/content/SharedPreferences;
    :cond_3
    sget v4, Lcom/android/email/activity/MessageList;->VIEW_MODE_STANDARD:I

    sput v4, Lcom/android/email/activity/MessageList;->mViewModeType:I

    goto/16 :goto_2
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 11
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 2064
    invoke-super {p0, p1, p2, p3}, Lcom/android/email/winset/TwTabActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 2066
    move-object v0, p3

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    move-object v2, v0

    .line 2068
    .local v2, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-object v7, v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    iget-object v8, p0, Lcom/android/email/activity/MessageList;->mListFooterView:Landroid/view/View;

    if-eq v7, v8, :cond_0

    iget-object v7, v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    iget-object v8, p0, Lcom/android/email/activity/MessageList;->mListFooterEmptyView:Landroid/view/View;

    if-eq v7, v8, :cond_0

    iget-object v7, v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    instance-of v7, v7, Landroid/widget/TextView;

    if-eqz v7, :cond_1

    .line 2143
    .end local v2           #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :cond_0
    :goto_0
    return-void

    .line 2072
    .restart local v2       #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :cond_1
    iget-object v4, v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    check-cast v4, Lcom/android/email/activity/MessageListItem;

    .line 2075
    .local v4, itemView:Lcom/android/email/activity/MessageListItem;
    sget v7, Lcom/android/email/activity/MessageList;->mViewModeType:I

    sget v8, Lcom/android/email/activity/MessageList;->VIEW_MODE_CONVERSATION:I

    if-ne v7, v8, :cond_2

    .line 2076
    const-string v7, "MessageList >>"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onCreateContextMenu(): info.id = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v9, v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 2077
    const-string v7, "MessageList >>"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onCreateContextMenu(): itemView.mMessageId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v9, v4, Lcom/android/email/activity/MessageListItem;->mMessageId:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 2078
    iget-wide v7, v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-ltz v7, :cond_0

    iget-wide v7, v4, Lcom/android/email/activity/MessageListItem;->mMessageId:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-ltz v7, :cond_0

    .line 2081
    :cond_2
    const/4 v1, 0x0

    .line 2082
    .local v1, c:Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 2085
    .local v6, messageName:Ljava/lang/String;
    :try_start_0
    iget-object v7, p0, Lcom/android/email/activity/MessageList;->mListView:Landroid/widget/ListView;

    iget v8, v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    move-object v0, v2

    check-cast v0, Landroid/database/Cursor;

    move-object v1, v0

    .line 2086
    const/4 v7, 0x4

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 2092
    invoke-interface {p1, v6}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 2095
    iget-wide v7, v4, Lcom/android/email/activity/MessageListItem;->mMailboxId:J

    invoke-static {p0, v7, v8}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v5

    .line 2097
    .local v5, mailbox:Lcom/android/email/provider/EmailContent$Mailbox;
    iget v7, v5, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    packed-switch v7, :pswitch_data_0

    .line 2113
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/email/activity/MessageList;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v7

    const v8, 0x7f0d0009

    invoke-virtual {v7, v8, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 2116
    iget-boolean v7, v4, Lcom/android/email/activity/MessageListItem;->mRead:Z

    if-eqz v7, :cond_3

    .line 2117
    const v7, 0x7f070127

    invoke-interface {p1, v7}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    const v8, 0x7f08002c

    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 2128
    :cond_3
    iget-wide v7, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    const-wide/16 v9, -0x2

    cmp-long v7, v7, v9

    if-nez v7, :cond_0

    .line 2131
    invoke-virtual {v4}, Lcom/android/email/activity/MessageListItem;->IsEAS()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 2132
    const v7, 0x7f0700c4

    invoke-interface {p1, v7}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    const/4 v8, 0x1

    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 2087
    .end local v5           #mailbox:Lcom/android/email/provider/EmailContent$Mailbox;
    :catch_0
    move-exception v7

    move-object v3, v7

    .line 2088
    .local v3, ioe:Ljava/lang/Exception;
    const-string v7, "MessageList >>"

    const-string v8, "onCreateContextMenu-----"

    invoke-static {v7, v8}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2099
    .end local v3           #ioe:Ljava/lang/Exception;
    .restart local v5       #mailbox:Lcom/android/email/provider/EmailContent$Mailbox;
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/email/activity/MessageList;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v7

    const v8, 0x7f0d000a

    invoke-virtual {v7, v8, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto/16 :goto_0

    .line 2102
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/email/activity/MessageList;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v7

    const v8, 0x7f0d000b

    invoke-virtual {v7, v8, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto/16 :goto_0

    .line 2105
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/email/activity/MessageList;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v7

    const v8, 0x7f0d000c

    invoke-virtual {v7, v8, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto/16 :goto_0

    .line 2134
    :cond_4
    const v7, 0x7f070133

    invoke-interface {p1, v7}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    const/4 v8, 0x1

    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2135
    iget-boolean v7, v4, Lcom/android/email/activity/MessageListItem;->mFavorite:Z

    if-eqz v7, :cond_0

    .line 2136
    const v7, 0x7f070133

    invoke-interface {p1, v7}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    const v8, 0x7f080020

    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 2097
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v4, 0x1

    .line 1533
    invoke-super {p0, p1}, Lcom/android/email/winset/TwTabActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 1534
    iget-wide v0, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 1535
    invoke-virtual {p0}, Lcom/android/email/activity/MessageList;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d000f

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    :goto_0
    move v0, v4

    .line 1554
    :goto_1
    return v0

    .line 1540
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    if-nez v0, :cond_1

    .line 1541
    iget-wide v0, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    invoke-static {p0, v0, v1}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    .line 1542
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    if-nez v0, :cond_1

    .line 1543
    const-string v0, "MessageList >>"

    const-string v1, "onCreateOptionMenu : mMailbox is null."

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 1544
    const/4 v0, 0x0

    goto :goto_1

    .line 1547
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    move v0, v4

    .line 1548
    goto :goto_1

    .line 1551
    :cond_2
    invoke-virtual {p0}, Lcom/android/email/activity/MessageList;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d000d

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1157
    invoke-super {p0}, Lcom/android/email/winset/TwTabActivity;->onDestroy()V

    .line 1159
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/email/activity/MessageList;->isStartedFromMailboxList:Z

    .line 1163
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "11111 MessageList.java >>>>> onDestroy()  >>>>> 998"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1164
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->DPMReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageList;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1169
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mLoadMessagesTask:Lcom/android/email/activity/MessageList$LoadMessagesTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mLoadMessagesTask:Lcom/android/email/activity/MessageList$LoadMessagesTask;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageList$LoadMessagesTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 1171
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mLoadMessagesTask:Lcom/android/email/activity/MessageList$LoadMessagesTask;

    invoke-virtual {v0, v3}, Lcom/android/email/activity/MessageList$LoadMessagesTask;->cancel(Z)Z

    .line 1172
    iput-object v2, p0, Lcom/android/email/activity/MessageList;->mLoadMessagesTask:Lcom/android/email/activity/MessageList$LoadMessagesTask;

    .line 1174
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mFindMailboxTask:Lcom/android/email/activity/MessageList$FindMailboxTask;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mFindMailboxTask:Lcom/android/email/activity/MessageList$FindMailboxTask;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageList$FindMailboxTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_1

    .line 1176
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mFindMailboxTask:Lcom/android/email/activity/MessageList$FindMailboxTask;

    invoke-virtual {v0, v3}, Lcom/android/email/activity/MessageList$FindMailboxTask;->cancel(Z)Z

    .line 1177
    iput-object v2, p0, Lcom/android/email/activity/MessageList;->mFindMailboxTask:Lcom/android/email/activity/MessageList$FindMailboxTask;

    .line 1179
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mSetTitleTask:Lcom/android/email/activity/MessageList$SetTitleTask;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mSetTitleTask:Lcom/android/email/activity/MessageList$SetTitleTask;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageList$SetTitleTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_2

    .line 1181
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mSetTitleTask:Lcom/android/email/activity/MessageList$SetTitleTask;

    invoke-virtual {v0, v3}, Lcom/android/email/activity/MessageList$SetTitleTask;->cancel(Z)Z

    .line 1182
    iput-object v2, p0, Lcom/android/email/activity/MessageList;->mSetTitleTask:Lcom/android/email/activity/MessageList$SetTitleTask;

    .line 1184
    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mSetFooterTask:Lcom/android/email/activity/MessageList$SetFooterTask;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mSetFooterTask:Lcom/android/email/activity/MessageList$SetFooterTask;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageList$SetFooterTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_3

    .line 1186
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mSetFooterTask:Lcom/android/email/activity/MessageList$SetFooterTask;

    invoke-virtual {v0, v3}, Lcom/android/email/activity/MessageList$SetFooterTask;->cancel(Z)Z

    .line 1187
    iput-object v2, p0, Lcom/android/email/activity/MessageList;->mSetFooterTask:Lcom/android/email/activity/MessageList$SetFooterTask;

    .line 1189
    :cond_3
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mFolderListTask:Lcom/android/email/activity/MessageList$RefreshFolderListTask;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mFolderListTask:Lcom/android/email/activity/MessageList$RefreshFolderListTask;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageList$RefreshFolderListTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_4

    .line 1191
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mFolderListTask:Lcom/android/email/activity/MessageList$RefreshFolderListTask;

    invoke-virtual {v0, v3}, Lcom/android/email/activity/MessageList$RefreshFolderListTask;->cancel(Z)Z

    .line 1192
    iput-object v2, p0, Lcom/android/email/activity/MessageList;->mFolderListTask:Lcom/android/email/activity/MessageList$RefreshFolderListTask;

    .line 1195
    :cond_4
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mProgressDialog:Lcom/android/email/activity/MessageList$ProgressDialogForMessageMove;

    if-eqz v0, :cond_5

    .line 1196
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mProgressDialog:Lcom/android/email/activity/MessageList$ProgressDialogForMessageMove;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageList$ProgressDialogForMessageMove;->dismiss()V

    .line 1199
    :cond_5
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMoveMessageTask:Lcom/android/email/activity/MessageList$MoveMessageTask;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMoveMessageTask:Lcom/android/email/activity/MessageList$MoveMessageTask;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageList$MoveMessageTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_6

    .line 1201
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMoveMessageTask:Lcom/android/email/activity/MessageList$MoveMessageTask;

    invoke-virtual {v0, v3}, Lcom/android/email/activity/MessageList$MoveMessageTask;->cancel(Z)Z

    .line 1202
    iput-object v2, p0, Lcom/android/email/activity/MessageList;->mMoveMessageTask:Lcom/android/email/activity/MessageList$MoveMessageTask;

    .line 1205
    :cond_6
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMessageListCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_7

    .line 1206
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMessageListCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1207
    iput-object v2, p0, Lcom/android/email/activity/MessageList;->mMessageListCursor:Landroid/database/Cursor;

    .line 1210
    :cond_7
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mListAdapter:Lcom/android/email/activity/MessageList$MessageListAdapter;

    if-eqz v0, :cond_8

    .line 1211
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mListAdapter:Lcom/android/email/activity/MessageList$MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageList$MessageListAdapter;->stopTimer()V

    .line 1212
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mListAdapter:Lcom/android/email/activity/MessageList$MessageListAdapter;

    invoke-virtual {v0, v2}, Lcom/android/email/activity/MessageList$MessageListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 1213
    iput-object v2, p0, Lcom/android/email/activity/MessageList;->mListAdapter:Lcom/android/email/activity/MessageList$MessageListAdapter;

    .line 1216
    :cond_8
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 1217
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidate()V

    .line 1219
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMoveMessageTask:Lcom/android/email/activity/MessageList$MoveMessageTask;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMoveMessageTask:Lcom/android/email/activity/MessageList$MoveMessageTask;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageList$MoveMessageTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_a

    .line 1220
    :cond_9
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mProgressDialog:Lcom/android/email/activity/MessageList$ProgressDialogForMessageMove;

    if-eqz v0, :cond_a

    .line 1221
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mProgressDialog:Lcom/android/email/activity/MessageList$ProgressDialogForMessageMove;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageList$ProgressDialogForMessageMove;->dismiss()V

    .line 1225
    :cond_a
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageList;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1227
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
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
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const-wide/16 v7, -0x2

    const-string v3, "MessageList >>"

    .line 1422
    instance-of v3, p2, Landroid/widget/TextView;

    if-eqz v3, :cond_1

    .line 1459
    :cond_0
    :goto_0
    return-void

    .line 1424
    :cond_1
    iget-object v3, p0, Lcom/android/email/activity/MessageList;->mListFooterView:Landroid/view/View;

    if-eq p2, v3, :cond_4

    iget-object v3, p0, Lcom/android/email/activity/MessageList;->mListFooterEmptyView:Landroid/view/View;

    if-eq p2, v3, :cond_4

    .line 1427
    :try_start_0
    move-object v0, p2

    check-cast v0, Lcom/android/email/activity/MessageListItem;

    move-object v2, v0

    .line 1429
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

    .line 1430
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

    .line 1431
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

    .line 1433
    sget v3, Lcom/android/email/activity/MessageList;->mViewModeType:I

    sget v4, Lcom/android/email/activity/MessageList;->VIEW_MODE_CONVERSATION:I

    if-ne v3, v4, :cond_3

    iget-wide v3, v2, Lcom/android/email/activity/MessageListItem;->mMessageId:J

    cmp-long v3, v3, v7

    if-nez v3, :cond_3

    .line 1437
    sget-object v3, Lcom/android/email/activity/MessageList;->mOpenedThreadList:Ljava/util/HashSet;

    iget-object v4, v2, Lcom/android/email/activity/MessageListItem;->mThreadName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1438
    sget-object v3, Lcom/android/email/activity/MessageList;->mOpenedThreadList:Ljava/util/HashSet;

    iget-object v4, v2, Lcom/android/email/activity/MessageListItem;->mThreadName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1439
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

    .line 1440
    iget-object v3, p0, Lcom/android/email/activity/MessageList;->mListAdapter:Lcom/android/email/activity/MessageList$MessageListAdapter;

    const/4 v4, 0x1

    invoke-virtual {v3, p3, v4}, Lcom/android/email/activity/MessageList$MessageListAdapter;->updateThreadListVisibility(IZ)V

    goto/16 :goto_0

    .line 1453
    .end local v2           #itemView:Lcom/android/email/activity/MessageListItem;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 1454
    .local v1, e:Ljava/lang/Exception;
    goto/16 :goto_0

    .line 1442
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v2       #itemView:Lcom/android/email/activity/MessageListItem;
    :cond_2
    sget-object v3, Lcom/android/email/activity/MessageList;->mOpenedThreadList:Ljava/util/HashSet;

    iget-object v4, v2, Lcom/android/email/activity/MessageListItem;->mThreadName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1443
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

    .line 1444
    iget-object v3, p0, Lcom/android/email/activity/MessageList;->mListAdapter:Lcom/android/email/activity/MessageList$MessageListAdapter;

    const/4 v4, 0x0

    invoke-virtual {v3, p3, v4}, Lcom/android/email/activity/MessageList$MessageListAdapter;->updateThreadListVisibility(IZ)V

    goto/16 :goto_0

    .line 1447
    :cond_3
    iget-wide v3, v2, Lcom/android/email/activity/MessageListItem;->mMessageId:J

    cmp-long v3, v3, v7

    if-eqz v3, :cond_0

    cmp-long v3, p4, v7

    if-eqz v3, :cond_0

    .line 1448
    sput p3, Lcom/android/email/activity/MessageList;->mPositionOfSelectedMessage:I

    .line 1449
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

    .line 1450
    iget-wide v3, v2, Lcom/android/email/activity/MessageListItem;->mMailboxId:J

    invoke-direct {p0, p4, p5, v3, v4}, Lcom/android/email/activity/MessageList;->onOpenMessage(JJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1457
    .end local v2           #itemView:Lcom/android/email/activity/MessageListItem;
    :cond_4
    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->doFooterClick()V

    goto/16 :goto_0
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 4
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
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v3, 0x1

    .line 1405
    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->checkITPolicy_AllowPOPIMAP()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1407
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "11111 MessageList.java >>>>> onItemLongClick()  >>>>> 1201"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v0, v3

    .line 1418
    :goto_0
    return v0

    .line 1413
    :cond_0
    const-wide/16 v0, -0x1

    cmp-long v0, p4, v0

    if-eqz v0, :cond_1

    const-wide/16 v0, -0x2

    cmp-long v0, p4, v0

    if-eqz v0, :cond_1

    .line 1415
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onitemlongclick"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move v0, v3

    .line 1418
    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 778
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 779
    invoke-virtual {p0}, Lcom/android/email/activity/MessageList;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.android.email.server.search"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 780
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/Welcome;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 781
    .local v0, mIntent:Landroid/content/Intent;
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 782
    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageList;->startActivity(Landroid/content/Intent;)V

    .line 785
    .end local v0           #mIntent:Landroid/content/Intent;
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/email/winset/TwTabActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 1974
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 2055
    invoke-super {p0, p1}, Lcom/android/email/winset/TwTabActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    :goto_0
    move v0, v1

    .line 2058
    :goto_1
    return v0

    .line 1976
    :sswitch_0
    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->onRefresh()V

    goto :goto_0

    .line 1980
    :sswitch_1
    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->onSort()V

    goto :goto_0

    .line 1986
    :sswitch_2
    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->onDeleteAllPopup()V

    goto :goto_0

    .line 1991
    :sswitch_3
    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->onAccounts()V

    goto :goto_0

    .line 1994
    :sswitch_4
    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->onCompose()V

    goto :goto_0

    .line 1997
    :sswitch_5
    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->onEditAccount()V

    goto :goto_0

    .line 2000
    :sswitch_6
    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->onDeselectAll()V

    goto :goto_0

    .line 2005
    :sswitch_7
    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->onFollowUpFlag()V

    goto :goto_0

    .line 2012
    :sswitch_8
    invoke-virtual {p0}, Lcom/android/email/activity/MessageList;->onSearchRequested()Z

    goto :goto_0

    .line 2018
    :sswitch_9
    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->onTextSize()V

    goto :goto_0

    .line 2023
    :sswitch_a
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mListAdapter:Lcom/android/email/activity/MessageList$MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageList$MessageListAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageList;->onRestoreAll(Ljava/util/Set;)V

    goto :goto_0

    .line 2037
    :sswitch_b
    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->onClearSearchResults()V

    move v0, v1

    .line 2038
    goto :goto_1

    .line 2051
    :sswitch_c
    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->onViewMode()V

    goto :goto_0

    .line 1974
    :sswitch_data_0
    .sparse-switch
        0x7f0700c4 -> :sswitch_7
        0x7f07011d -> :sswitch_4
        0x7f070128 -> :sswitch_0
        0x7f070129 -> :sswitch_3
        0x7f07012a -> :sswitch_5
        0x7f070135 -> :sswitch_2
        0x7f070137 -> :sswitch_a
        0x7f070138 -> :sswitch_8
        0x7f070139 -> :sswitch_1
        0x7f07013a -> :sswitch_9
        0x7f07013c -> :sswitch_c
        0x7f07013e -> :sswitch_6
        0x7f070140 -> :sswitch_b
    .end sparse-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 1079
    invoke-super {p0}, Lcom/android/email/winset/TwTabActivity;->onPause()V

    .line 1082
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mHandler:Lcom/android/email/activity/MessageList$MessageListHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageList$MessageListHandler;->progress(Z)V

    .line 1085
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mController:Lcom/android/email/Controller;

    iget-object v1, p0, Lcom/android/email/activity/MessageList;->mControllerCallback:Lcom/android/email/activity/MessageList$ControllerResults;

    invoke-virtual {v0, v1}, Lcom/android/email/Controller;->removeResultCallback(Lcom/android/email/Controller$Result;)V

    .line 1086
    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->updateBadgeProvider()V

    .line 1087
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 12
    .parameter "menu"

    .prologue
    const v6, 0x7f07013b

    const v11, 0x7f070139

    const/4 v10, 0x6

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1560
    iget-object v4, p0, Lcom/android/email/activity/MessageList;->mListAdapter:Lcom/android/email/activity/MessageList$MessageListAdapter;

    if-nez v4, :cond_0

    move v4, v9

    .line 1659
    :goto_0
    return v4

    .line 1563
    :cond_0
    iget-object v4, p0, Lcom/android/email/activity/MessageList;->mListAdapter:Lcom/android/email/activity/MessageList$MessageListAdapter;

    invoke-virtual {v4}, Lcom/android/email/activity/MessageList$MessageListAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    if-lez v4, :cond_6

    move v2, v9

    .line 1564
    .local v2, showDeselect:Z
    :goto_1
    const v4, 0x7f07013d

    invoke-interface {p1, v4, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 1567
    iget v4, p0, Lcom/android/email/activity/MessageList;->mIsEAS:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    .line 1568
    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->IsEAS()I

    .line 1570
    :cond_1
    iget v4, p0, Lcom/android/email/activity/MessageList;->mIsEAS:I

    if-eq v4, v9, :cond_2

    sget-boolean v4, Lcom/android/email/activity/MessageList;->isStartedFromMailboxList:Z

    if-eqz v4, :cond_7

    .line 1571
    :cond_2
    invoke-interface {p1, v6, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 1584
    :goto_2
    iget-wide v4, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-ltz v4, :cond_5

    .line 1587
    const v4, 0x7f070134

    iget v5, p0, Lcom/android/email/activity/MessageList;->mMailboxType:I

    if-eq v5, v10, :cond_8

    move v5, v8

    :goto_3
    invoke-interface {p1, v4, v5}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 1588
    const v4, 0x7f070136

    iget v5, p0, Lcom/android/email/activity/MessageList;->mMailboxType:I

    if-eq v5, v10, :cond_9

    move v5, v8

    :goto_4
    invoke-interface {p1, v4, v5}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 1593
    iget v4, p0, Lcom/android/email/activity/MessageList;->mMailboxType:I

    if-ne v4, v10, :cond_4

    .line 1595
    iget-object v4, p0, Lcom/android/email/activity/MessageList;->mMoveMessageTask:Lcom/android/email/activity/MessageList$MoveMessageTask;

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/android/email/activity/MessageList;->mMoveMessageTask:Lcom/android/email/activity/MessageList$MoveMessageTask;

    invoke-virtual {v4}, Lcom/android/email/activity/MessageList$MoveMessageTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v4

    sget-object v5, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v4, v5, :cond_a

    .line 1597
    iget-object v4, p0, Lcom/android/email/activity/MessageList;->mShowRestoreSection:Landroid/view/MenuItem;

    if-eqz v4, :cond_3

    .line 1599
    iget-object v4, p0, Lcom/android/email/activity/MessageList;->mShowRestoreSection:Landroid/view/MenuItem;

    invoke-interface {v4, v8}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1601
    :cond_3
    iget-object v4, p0, Lcom/android/email/activity/MessageList;->mShowDeleteSection:Landroid/view/MenuItem;

    if-eqz v4, :cond_4

    .line 1603
    iget-object v4, p0, Lcom/android/email/activity/MessageList;->mShowDeleteSection:Landroid/view/MenuItem;

    invoke-interface {v4, v8}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1628
    :cond_4
    :goto_5
    sget v4, Lcom/android/email/activity/MessageList;->mViewModeType:I

    sget v5, Lcom/android/email/activity/MessageList;->VIEW_MODE_CONVERSATION:I

    if-ne v4, v5, :cond_e

    .line 1631
    invoke-interface {p1, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1633
    .local v0, mi:Landroid/view/MenuItem;
    if-eqz v0, :cond_5

    .line 1635
    invoke-interface {v0, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .end local v0           #mi:Landroid/view/MenuItem;
    :cond_5
    :goto_6
    move v4, v9

    .line 1659
    goto :goto_0

    .end local v2           #showDeselect:Z
    :cond_6
    move v2, v8

    .line 1563
    goto :goto_1

    .line 1576
    .restart local v2       #showDeselect:Z
    :cond_7
    invoke-interface {p1, v6, v8}, Landroid/view/Menu;->setGroupVisible(IZ)V

    goto :goto_2

    :cond_8
    move v5, v9

    .line 1587
    goto :goto_3

    :cond_9
    move v5, v9

    .line 1588
    goto :goto_4

    .line 1607
    :cond_a
    iget-object v4, p0, Lcom/android/email/activity/MessageList;->mListAdapter:Lcom/android/email/activity/MessageList$MessageListAdapter;

    invoke-virtual {v4}, Lcom/android/email/activity/MessageList$MessageListAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    if-lez v4, :cond_c

    move v3, v9

    .line 1608
    .local v3, showRestore:Z
    :goto_7
    const v4, 0x7f070137

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iput-object v4, p0, Lcom/android/email/activity/MessageList;->mShowRestoreSection:Landroid/view/MenuItem;

    .line 1611
    iget-object v4, p0, Lcom/android/email/activity/MessageList;->mShowRestoreSection:Landroid/view/MenuItem;

    if-eqz v4, :cond_b

    .line 1613
    iget-object v4, p0, Lcom/android/email/activity/MessageList;->mShowRestoreSection:Landroid/view/MenuItem;

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1617
    :cond_b
    iget-object v4, p0, Lcom/android/email/activity/MessageList;->mListAdapter:Lcom/android/email/activity/MessageList$MessageListAdapter;

    invoke-virtual {v4}, Lcom/android/email/activity/MessageList$MessageListAdapter;->getCount()I

    move-result v4

    if-lez v4, :cond_d

    move v1, v9

    .line 1618
    .local v1, showDeleteAll:Z
    :goto_8
    const v4, 0x7f070135

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iput-object v4, p0, Lcom/android/email/activity/MessageList;->mShowDeleteSection:Landroid/view/MenuItem;

    .line 1620
    iget-object v4, p0, Lcom/android/email/activity/MessageList;->mShowDeleteSection:Landroid/view/MenuItem;

    if-eqz v4, :cond_4

    .line 1622
    iget-object v4, p0, Lcom/android/email/activity/MessageList;->mShowDeleteSection:Landroid/view/MenuItem;

    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_5

    .end local v1           #showDeleteAll:Z
    .end local v3           #showRestore:Z
    :cond_c
    move v3, v8

    .line 1607
    goto :goto_7

    .restart local v3       #showRestore:Z
    :cond_d
    move v1, v8

    .line 1617
    goto :goto_8

    .line 1642
    .end local v3           #showRestore:Z
    :cond_e
    invoke-interface {p1, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1644
    .restart local v0       #mi:Landroid/view/MenuItem;
    if-eqz v0, :cond_5

    .line 1646
    iget v4, p0, Lcom/android/email/activity/MessageList;->mSearchId:I

    if-ne v4, v9, :cond_f

    .line 1648
    invoke-interface {v0, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_6

    .line 1652
    :cond_f
    invoke-interface {v0, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_6
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    const-string v4, "MessageList >>"

    .line 1359
    invoke-super {p0, p1}, Lcom/android/email/winset/TwTabActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1360
    const-string v0, "com.android.email.activity.MessageList.selectedItemTop"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/MessageList;->mSavedItemTop:I

    .line 1361
    const-string v0, "com.android.email.activity.MessageList.selectedPosition"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/MessageList;->mSavedItemPosition:I

    .line 1362
    const-string v0, "com.android.email.activity.MessageList.selectedMailboxId"

    const-wide/16 v1, -0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    .line 1363
    iget-wide v0, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/MessageList;->setMailboxInfo(J)V

    .line 1364
    const-string v0, "com.android.email.activity.MessageList.selectedTab"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/MessageList;->mMailboxCurrentIndex:I

    .line 1365
    const-string v0, "com.android.email.activity.MessageList.selectedSearch"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/MessageList;->mSearchId:I

    .line 1367
    const-string v0, "com.android.email.activity.MessageList.viewMode"

    sget v1, Lcom/android/email/activity/MessageList;->VIEW_MODE_STANDARD:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/email/activity/MessageList;->mViewModeType:I

    .line 1369
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

    invoke-static {v4, v0}, Lcom/android/email/Email;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1371
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

    invoke-static {v4, v0}, Lcom/android/email/Email;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1372
    return-void
.end method

.method public onResultSearchRequested()Z
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x1

    .line 930
    sget-object v0, Lcom/android/email/activity/MessageList;->mSearchBar:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 931
    const/4 v0, 0x0

    sput v0, Lcom/android/email/activity/MessageList;->mSortType:I

    .line 933
    iget-wide v1, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    iget-wide v3, p0, Lcom/android/email/activity/MessageList;->mAccountId:J

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/email/activity/MessageList;->loadMessagesTask(JJZI)V

    .line 940
    :goto_0
    return v5

    .line 935
    :cond_0
    const/4 v0, 0x6

    sput v0, Lcom/android/email/activity/MessageList;->mSortType:I

    .line 937
    iget-wide v1, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    iget-wide v3, p0, Lcom/android/email/activity/MessageList;->mAccountId:J

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/email/activity/MessageList;->loadMessagesTask(JJZI)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v1, "MessageList >>"

    .line 1091
    invoke-super {p0}, Lcom/android/email/winset/TwTabActivity;->onResume()V

    .line 1092
    const-string v0, "MessageList >>"

    const-string v0, "onResume -----------------------------------------"

    invoke-static {v1, v0}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 1094
    const/4 v6, 0x0

    .line 1097
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/email/activity/MessageList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/email/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/email/provider/EmailContent$Account;->ID_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1101
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge v0, v10, :cond_1

    .line 1102
    const-string v0, "MessageList >>"

    const-string v1, " onResume Account count == 0  "

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1103
    invoke-virtual {p0}, Lcom/android/email/activity/MessageList;->finish()V

    .line 1104
    invoke-static {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->actionNewAccount(Landroid/app/Activity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1112
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1153
    :cond_0
    :goto_0
    return-void

    .line 1112
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1116
    :goto_1
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mController:Lcom/android/email/Controller;

    iget-object v1, p0, Lcom/android/email/activity/MessageList;->mControllerCallback:Lcom/android/email/activity/MessageList$ControllerResults;

    invoke-virtual {v0, v1}, Lcom/android/email/Controller;->addResultCallback(Lcom/android/email/Controller$Result;)V

    .line 1118
    invoke-direct {p0, v9}, Lcom/android/email/activity/MessageList;->updateMessageLists(Z)V

    .line 1123
    :try_start_1
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageList;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/NotificationManager;

    .line 1126
    .local v8, notificationManager:Landroid/app/NotificationManager;
    if-eqz v8, :cond_2

    .line 1127
    sget v0, Lcom/android/email/service/MailService;->NOTIFICATION_ID_NEW_MESSAGES:I

    invoke-virtual {v8, v0}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1129
    :cond_2
    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->restoreListPosition()V

    .line 1130
    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->autoRefreshStaleMailbox()V

    .line 1134
    iget v0, p0, Lcom/android/email/activity/MessageList;->mSearchId:I

    if-ne v0, v10, :cond_3

    .line 1135
    const-string v0, "MessageList >>"

    const-string v1, "onResume -----------mSearchId == 1"

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 1137
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mTitleSearchBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1139
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/email/activity/MessageList;->mSearchId:I

    .line 1140
    invoke-virtual {p0}, Lcom/android/email/activity/MessageList;->onSearchRequested()Z
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1150
    .end local v8           #notificationManager:Landroid/app/NotificationManager;
    :catch_0
    move-exception v0

    move-object v7, v0

    .line 1151
    .local v7, e:Ljava/lang/NullPointerException;
    invoke-virtual {v7}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 1109
    .end local v7           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    move-object v7, v0

    .line 1110
    .local v7, e:Ljava/lang/Exception;
    :try_start_2
    const-string v0, "MessageList >>"

    const-string v1, " onResume "

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1112
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 1148
    .restart local v8       #notificationManager:Landroid/app/NotificationManager;
    :cond_3
    :try_start_3
    const-string v0, "MessageList >>"

    const-string v1, "onResume ------------------mSearchId == 0"

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 1344
    invoke-super {p0, p1}, Lcom/android/email/winset/TwTabActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1345
    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->saveListPosition()V

    .line 1346
    const-string v0, "com.android.email.activity.MessageList.selectedPosition"

    iget v1, p0, Lcom/android/email/activity/MessageList;->mSavedItemPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1347
    const-string v0, "com.android.email.activity.MessageList.selectedItemTop"

    iget v1, p0, Lcom/android/email/activity/MessageList;->mSavedItemTop:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1348
    const-string v0, "com.android.email.activity.MessageList.selectedMailboxId"

    iget-wide v1, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1349
    const-string v0, "com.android.email.activity.MessageList.selectedTab"

    iget v1, p0, Lcom/android/email/activity/MessageList;->mMailboxCurrentIndex:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1350
    const-string v0, "com.android.email.activity.MessageList.selectedSearch"

    iget v1, p0, Lcom/android/email/activity/MessageList;->mSearchId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1352
    const-string v0, "com.android.email.activity.MessageList.viewMode"

    sget v1, Lcom/android/email/activity/MessageList;->mViewModeType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1354
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

    .line 1355
    return-void
.end method

.method public onSearchRequested()Z
    .locals 8

    .prologue
    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const-string v2, "MessageList >>"

    .line 1815
    const-string v0, "MessageList >>"

    const-string v0, "onSearchRequested() called : Search key pressed"

    invoke-static {v2, v0}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1818
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    if-nez v0, :cond_0

    .line 1820
    iget-wide v0, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    invoke-static {p0, v0, v1}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    .line 1821
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    if-nez v0, :cond_0

    .line 1822
    const-string v0, "MessageList >>"

    const-string v0, "onSearchRequested() called : Search key pressed on other mail boxes"

    invoke-static {v2, v0}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v7

    .line 1860
    :goto_0
    return v0

    .line 1828
    :cond_0
    iget v0, p0, Lcom/android/email/activity/MessageList;->mSearchId:I

    if-nez v0, :cond_4

    .line 1831
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mTitleSearchBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1832
    sget-object v0, Lcom/android/email/activity/MessageList;->mSearchBar:Landroid/widget/EditText;

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 1833
    sget-object v0, Lcom/android/email/activity/MessageList;->mSearchBar:Landroid/widget/EditText;

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 1834
    sget-object v0, Lcom/android/email/activity/MessageList;->mSearchBar:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 1837
    iput v7, p0, Lcom/android/email/activity/MessageList;->mSearchId:I

    .line 1838
    sget v0, Lcom/android/email/activity/MessageList;->mSortType:I

    iput v0, p0, Lcom/android/email/activity/MessageList;->mLastSortType:I

    .line 1843
    iget v0, p0, Lcom/android/email/activity/MessageList;->mIsEAS:I

    if-ne v0, v5, :cond_1

    .line 1844
    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->IsEAS()I

    .line 1846
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mController:Lcom/android/email/Controller;

    iget-wide v1, p0, Lcom/android/email/activity/MessageList;->mAccountId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/email/Controller;->returnAccountType(J)I

    move-result v0

    iget-object v1, p0, Lcom/android/email/activity/MessageList;->mController:Lcom/android/email/Controller;

    if-eq v0, v7, :cond_2

    iget v0, p0, Lcom/android/email/activity/MessageList;->mIsEAS:I

    if-ne v0, v7, :cond_3

    .line 1848
    :cond_2
    iget-wide v1, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    iget-wide v3, p0, Lcom/android/email/activity/MessageList;->mAccountId:J

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/email/activity/MessageList;->addFooterView(JJIZ)V

    .line 1859
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/email/activity/MessageList;->closeOptionsMenu()V

    move v0, v7

    .line 1860
    goto :goto_0

    .line 1854
    :cond_4
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mTitleSearchBar:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1856
    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->onSearchFinish()V

    .line 1857
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    sget-object v1, Lcom/android/email/activity/MessageList;->mSearchBar:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_1
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 7
    .parameter "tag"

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x1

    .line 1230
    const-string v1, "MessageList >>"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTabChanged :: tag : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " | mMailboxId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 1231
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 1232
    .local v0, mailboxId:Ljava/lang/Long;
    iget-wide v1, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    iget-wide v1, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 1249
    :cond_0
    :goto_0
    return-void

    .line 1234
    :cond_1
    iget-object v1, p0, Lcom/android/email/activity/MessageList;->mErrorBanner:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1236
    iget-object v1, p0, Lcom/android/email/activity/MessageList;->mEmptyListBanner:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1237
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    .line 1238
    iget-wide v1, p0, Lcom/android/email/activity/MessageList;->mMailboxId:J

    invoke-virtual {p0, v1, v2}, Lcom/android/email/activity/MessageList;->setMailboxInfo(J)V

    .line 1239
    iget-object v1, p0, Lcom/android/email/activity/MessageList;->mTabHost:Lcom/android/email/winset/TwTabHost;

    invoke-virtual {v1}, Lcom/android/email/winset/TwTabHost;->getCurrentTab()I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/MessageList;->mMailboxCurrentIndex:I

    .line 1240
    iput-boolean v5, p0, Lcom/android/email/activity/MessageList;->mCanAutoRefresh:Z

    .line 1241
    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->onRemoveIndexScroll()V

    .line 1242
    invoke-direct {p0, v5}, Lcom/android/email/activity/MessageList;->updateMessageLists(Z)V

    .line 1245
    iget-object v1, p0, Lcom/android/email/activity/MessageList;->mListAdapter:Lcom/android/email/activity/MessageList$MessageListAdapter;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageList$MessageListAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 1246
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageList;->showMultiPanel(Z)V

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "me"

    .prologue
    .line 816
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mEvent:Landroid/view/MotionEvent;

    .line 818
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 826
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 822
    :pswitch_0
    sget-object v0, Lcom/android/email/activity/MessageList;->mSearchBar:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    goto :goto_0

    .line 818
    :pswitch_data_0
    .packed-switch 0x7f0700b5
        :pswitch_0
    .end packed-switch
.end method

.method public removeMessage(Ljava/lang/Long;)V
    .locals 1
    .parameter "messageId"

    .prologue
    .line 832
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mListAdapter:Lcom/android/email/activity/MessageList$MessageListAdapter;

    if-nez v0, :cond_0

    .line 836
    :goto_0
    return-void

    .line 835
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mListAdapter:Lcom/android/email/activity/MessageList$MessageListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/email/activity/MessageList$MessageListAdapter;->removeMessage(Ljava/lang/Long;)V

    goto :goto_0
.end method

.method public setMailboxInfo(J)V
    .locals 2
    .parameter "mailboxId"

    .prologue
    .line 790
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 791
    invoke-static {p0, p1, p2}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    .line 796
    :goto_0
    return-void

    .line 794
    :cond_0
    const-string v0, "MessageList >>"

    const-string v1, "setMailboxInfo : mailboxId < 0"

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
