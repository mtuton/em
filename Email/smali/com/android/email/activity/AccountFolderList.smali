.class public Lcom/android/email/activity/AccountFolderList;
.super Landroid/app/ListActivity;
.source "AccountFolderList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/AccountFolderList$AccountsAdapter;,
        Lcom/android/email/activity/AccountFolderList$ControllerResults;,
        Lcom/android/email/activity/AccountFolderList$MessageListHandler;,
        Lcom/android/email/activity/AccountFolderList$ProgressDialogDelete;,
        Lcom/android/email/activity/AccountFolderList$DeleteAccountTask;,
        Lcom/android/email/activity/AccountFolderList$LoadAccountsTask;
    }
.end annotation


# static fields
.field private static final ACCOUNT_ID_SELECTION:Ljava/lang/String; = "accountKey =?"

.field public static final ACCOUNT_TOTAL_COUNT:Ljava/lang/String; = "totalCount"

.field private static final ACCOUNT_UNREAD_COUNT_PROJECTION:[Ljava/lang/String; = null

.field public static final BADGE_APPS_CLASS:Ljava/lang/String; = "class"

.field public static final BADGE_APPS_COUNT:Ljava/lang/String; = "badgecount"

.field public static final BADGE_APPS_PACKAGE:Ljava/lang/String; = "package"

.field public static final BADGE_AUTHORITY:Ljava/lang/String; = "com.sec.badge"

.field public static final BADGE_TABLE_APPS:Ljava/lang/String; = "apps"

.field private static final DIALOG_REMOVE_ACCOUNT:I = 0x1

.field private static final FAVORITE_COUNT_SELECTION:Ljava/lang/String; = "flagFavorite= 1"

.field private static final ICICLE_SELECTED_ACCOUNT:Ljava/lang/String; = "com.android.email.selectedAccount"

.field public static final MAILBOX_ACCOUNT_KEY:I = 0x2

.field public static final MAILBOX_COLUMN_ID:I = 0x0

.field public static final MAILBOX_DISPLAY_NAME:I = 0x1

.field private static final MAILBOX_ID_SELECTION:Ljava/lang/String; = "mailboxKey =?"

.field private static final MAILBOX_INBOX_SELECTION:Ljava/lang/String; = "accountKey =? AND type = 0"

.field private static final MAILBOX_LAST_UPDATE_COLUMN:I = 0x9

.field private static final MAILBOX_LAST_UPDATE_SELECTION:Ljava/lang/String; = "accountKey =?"

.field private static final MAILBOX_MAILBOX_PROJECTION:[Ljava/lang/String; = null

.field public static final MAILBOX_PROJECTION:[Ljava/lang/String; = null

.field private static final MAILBOX_SUM_OF_UNREAD_COUNT_PROJECTION:[Ljava/lang/String; = null

.field public static final MAILBOX_TOTAL_COUNT:I = 0x5

.field public static final MAILBOX_TYPE:I = 0x3

.field private static final MAILBOX_TYPE_SELECTION:Ljava/lang/String; = "type =?"

.field public static final MAILBOX_UNREAD_COUNT:I = 0x4

.field private static final MAILBOX_UNREAD_COUNT_COLUMN_UNREAD_COUNT:I = 0x0

.field private static final MAILBOX_UNREAD_COUNT_PROJECTION:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "AccountFolderList >>"

.field private static final mColorChipResIds:[I

.field private static secretKeyCodes:[I


# instance fields
.field private mControllerCallback:Lcom/android/email/activity/AccountFolderList$ControllerResults;

.field private mDeleteAccountTask:Lcom/android/email/activity/AccountFolderList$DeleteAccountTask;

.field private mHandler:Lcom/android/email/activity/AccountFolderList$MessageListHandler;

.field private mListAdapter:Lcom/android/email/activity/AccountFolderList$AccountsAdapter;

.field private mListView:Landroid/widget/ListView;

.field private mLoadAccountsTask:Lcom/android/email/activity/AccountFolderList$LoadAccountsTask;

.field private mProgressDialog:Lcom/android/email/activity/AccountFolderList$ProgressDialogDelete;

.field private mProgressIcon:Landroid/widget/ProgressBar;

.field private mSecretKeyCodeIndex:I

.field private mSelectedContextAccount:Lcom/android/email/provider/EmailContent$Account;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v5, "unreadCount"

    .line 92
    new-array v0, v7, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/email/activity/AccountFolderList;->secretKeyCodes:[I

    .line 132
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "unreadCount"

    aput-object v5, v0, v3

    const-string v1, "_id"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/email/activity/AccountFolderList;->ACCOUNT_UNREAD_COUNT_PROJECTION:[Ljava/lang/String;

    .line 142
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "displayName"

    aput-object v1, v0, v4

    const-string v1, "accountKey"

    aput-object v1, v0, v6

    const/4 v1, 0x3

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "unreadCount"

    aput-object v5, v0, v1

    const-string v1, "flagVisible"

    aput-object v1, v0, v7

    const/4 v1, 0x6

    const-string v2, "flags"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "totalCount"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/activity/AccountFolderList;->MAILBOX_PROJECTION:[Ljava/lang/String;

    .line 158
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "sum(unreadCount)"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/email/activity/AccountFolderList;->MAILBOX_SUM_OF_UNREAD_COUNT_PROJECTION:[Ljava/lang/String;

    .line 167
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "unreadCount"

    aput-object v5, v0, v3

    sput-object v0, Lcom/android/email/activity/AccountFolderList;->MAILBOX_UNREAD_COUNT_PROJECTION:[Ljava/lang/String;

    .line 175
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "displayName"

    aput-object v1, v0, v3

    const-string v1, "serverId"

    aput-object v1, v0, v4

    const-string v1, "parentServerId"

    aput-object v1, v0, v6

    const/4 v1, 0x3

    const-string v2, "accountKey"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "type"

    aput-object v2, v0, v1

    const-string v1, "delimiter"

    aput-object v1, v0, v7

    const/4 v1, 0x6

    const-string v2, "syncKey"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "syncLookback"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "syncInterval"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "syncTime"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "unreadCount"

    aput-object v5, v0, v1

    const/16 v1, 0xb

    const-string v2, "flagVisible"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "flags"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "visibleLimit"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "syncStatus"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/activity/AccountFolderList;->MAILBOX_MAILBOX_PROJECTION:[Ljava/lang/String;

    .line 194
    const/16 v0, 0x15

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/email/activity/AccountFolderList;->mColorChipResIds:[I

    return-void

    .line 92
    nop

    :array_0
    .array-data 0x4
        0x20t 0x0t 0x0t 0x0t
        0x21t 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
        0x23t 0x0t 0x0t 0x0t
    .end array-data

    .line 194
    :array_1
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
    .locals 1

    .prologue
    .line 85
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 96
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/email/activity/AccountFolderList;->mSecretKeyCodeIndex:I

    .line 1121
    return-void
.end method

.method private IsEAS(J)Z
    .locals 6
    .parameter "mAccountId"

    .prologue
    const/4 v5, 0x0

    .line 451
    invoke-virtual {p0}, Lcom/android/email/activity/AccountFolderList;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    .line 452
    .local v1, context:Landroid/content/Context;
    invoke-static {v1, p1, p2}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v0

    .line 454
    .local v0, account:Lcom/android/email/provider/EmailContent$Account;
    if-nez v0, :cond_0

    move v4, v5

    .line 464
    :goto_0
    return v4

    .line 457
    :cond_0
    invoke-virtual {v0, v1}, Lcom/android/email/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/android/email/mail/Store$StoreInfo;->getStoreInfo(Ljava/lang/String;Landroid/content/Context;)Lcom/android/email/mail/Store$StoreInfo;

    move-result-object v2

    .line 460
    .local v2, info:Lcom/android/email/mail/Store$StoreInfo;
    if-nez v2, :cond_1

    move v4, v5

    .line 461
    goto :goto_0

    .line 463
    :cond_1
    iget-object v3, v2, Lcom/android/email/mail/Store$StoreInfo;->mScheme:Ljava/lang/String;

    .line 464
    .local v3, scheme:Ljava/lang/String;
    const-string v4, "eas"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_0
.end method

.method static synthetic access$1000(Lcom/android/email/activity/AccountFolderList;)Lcom/android/email/activity/AccountFolderList$DeleteAccountTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/email/activity/AccountFolderList;->mDeleteAccountTask:Lcom/android/email/activity/AccountFolderList$DeleteAccountTask;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/email/activity/AccountFolderList;Lcom/android/email/activity/AccountFolderList$DeleteAccountTask;)Lcom/android/email/activity/AccountFolderList$DeleteAccountTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/email/activity/AccountFolderList;->mDeleteAccountTask:Lcom/android/email/activity/AccountFolderList$DeleteAccountTask;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/email/activity/AccountFolderList;)Lcom/android/email/provider/EmailContent$Account;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/email/activity/AccountFolderList;->mSelectedContextAccount:Lcom/android/email/provider/EmailContent$Account;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/email/activity/AccountFolderList;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/email/activity/AccountFolderList;->mProgressIcon:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/email/activity/AccountFolderList;)Lcom/android/email/activity/AccountFolderList$MessageListHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/email/activity/AccountFolderList;->mHandler:Lcom/android/email/activity/AccountFolderList$MessageListHandler;

    return-object v0
.end method

.method static synthetic access$1400(Landroid/content/Context;J)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    invoke-static {p0, p1, p2}, Lcom/android/email/activity/AccountFolderList;->getCountByMailboxId(Landroid/content/Context;J)I

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Landroid/content/Context;J)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    invoke-static {p0, p1, p2}, Lcom/android/email/activity/AccountFolderList;->getUnreadCountByMailboxId(Landroid/content/Context;J)I

    move-result v0

    return v0
.end method

.method static synthetic access$1600()[I
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lcom/android/email/activity/AccountFolderList;->mColorChipResIds:[I

    return-object v0
.end method

.method static synthetic access$1700()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lcom/android/email/activity/AccountFolderList;->MAILBOX_MAILBOX_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/email/activity/AccountFolderList;)Landroid/database/MatrixCursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/email/activity/AccountFolderList;->getSummaryChildCursor()Landroid/database/MatrixCursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/email/activity/AccountFolderList;)Landroid/database/MatrixCursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/email/activity/AccountFolderList;->getAccountsInfo()Landroid/database/MatrixCursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/email/activity/AccountFolderList;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/email/activity/AccountFolderList;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/email/activity/AccountFolderList;)Lcom/android/email/activity/AccountFolderList$AccountsAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/email/activity/AccountFolderList;->mListAdapter:Lcom/android/email/activity/AccountFolderList$AccountsAdapter;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/email/activity/AccountFolderList;Lcom/android/email/activity/AccountFolderList$AccountsAdapter;)Lcom/android/email/activity/AccountFolderList$AccountsAdapter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/email/activity/AccountFolderList;->mListAdapter:Lcom/android/email/activity/AccountFolderList$AccountsAdapter;

    return-object p1
.end method

.method static synthetic access$700(Landroid/content/Context;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    invoke-static {p0, p1, p2}, Lcom/android/email/activity/AccountFolderList;->updateHistoryReadFlag(Landroid/content/Context;J)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/email/activity/AccountFolderList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/email/activity/AccountFolderList;->updateAccounts()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/email/activity/AccountFolderList;)Lcom/android/email/activity/AccountFolderList$ProgressDialogDelete;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/email/activity/AccountFolderList;->mProgressDialog:Lcom/android/email/activity/AccountFolderList$ProgressDialogDelete;

    return-object v0
.end method

.method public static actionShowAccounts(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 223
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/AccountFolderList;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 224
    .local v0, i:Landroid/content/Intent;
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 225
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 226
    return-void
.end method

.method private createRemoveAccountDialog()Landroid/app/Dialog;
    .locals 5

    .prologue
    .line 775
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0800e7

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0800e8

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/email/activity/AccountFolderList;->mSelectedContextAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v4}, Lcom/android/email/provider/EmailContent$Account;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/email/activity/AccountFolderList;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080011

    new-instance v2, Lcom/android/email/activity/AccountFolderList$2;

    invoke-direct {v2, p0}, Lcom/android/email/activity/AccountFolderList$2;-><init>(Lcom/android/email/activity/AccountFolderList;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080012

    new-instance v2, Lcom/android/email/activity/AccountFolderList$1;

    invoke-direct {v2, p0}, Lcom/android/email/activity/AccountFolderList$1;-><init>(Lcom/android/email/activity/AccountFolderList;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method private getAccountsInfo()Landroid/database/MatrixCursor;
    .locals 12

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x1

    const-string v5, "_id"

    .line 585
    new-instance v7, Landroid/database/MatrixCursor;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "accountKey"

    aput-object v1, v0, v11

    const-string v1, "_id"

    aput-object v5, v0, v10

    const-string v1, "totalCount"

    aput-object v1, v0, v2

    invoke-direct {v7, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 591
    .local v7, childCursor:Landroid/database/MatrixCursor;
    invoke-virtual {p0}, Lcom/android/email/activity/AccountFolderList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/email/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "accountKey"

    aput-object v3, v2, v11

    const-string v3, "_id"

    aput-object v5, v2, v10

    const-string v3, "type = 0"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 597
    .local v6, cf:Landroid/database/Cursor;
    :cond_0
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 598
    invoke-virtual {v7}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v8

    .line 599
    .local v8, row:Landroid/database/MatrixCursor$RowBuilder;
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 600
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 601
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/android/email/activity/AccountFolderList;->getCountByMailboxId(Landroid/content/Context;J)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 602
    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 604
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 605
    .local v9, sbuf:Ljava/lang/StringBuffer;
    const-string v0, "AccountFolderList >>"

    const-string v1, "getAccountsInfo || account key : "

    invoke-virtual {v9, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-interface {v6, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " | box_id : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-interface {v6, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " | total : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {p0, v2, v3}, Lcom/android/email/activity/AccountFolderList;->getCountByMailboxId(Landroid/content/Context;J)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 609
    .end local v8           #row:Landroid/database/MatrixCursor$RowBuilder;
    .end local v9           #sbuf:Ljava/lang/StringBuffer;
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 610
    return-object v7
.end method

.method private static getCountByMailboxId(Landroid/content/Context;J)I
    .locals 9
    .parameter "context"
    .parameter "id"

    .prologue
    const/4 v4, 0x0

    .line 380
    const/4 v7, 0x0

    .line 381
    .local v7, count:I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/android/email/Utility;->buildMailboxIdSelection(Landroid/content/ContentResolver;J)Ljava/lang/String;

    move-result-object v3

    .line 382
    .local v3, selection_total:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    const/16 v8, 0xc

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v2, v5

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 389
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 391
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 393
    return v7

    .line 391
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private static getCountByMailboxType(Landroid/content/Context;I)I
    .locals 9
    .parameter "context"
    .parameter "type"

    .prologue
    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 360
    const/4 v7, 0x0

    .line 361
    .local v7, count:I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/email/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/email/provider/EmailContent;->ID_PROJECTION:[Ljava/lang/String;

    const-string v3, "type =?"

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 366
    .local v6, c:Landroid/database/Cursor;
    const/4 v0, -0x1

    :try_start_0
    invoke-interface {v6, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 367
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    sget-object v0, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "mailboxKey =?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p0, v0, v1, v2}, Lcom/android/email/provider/EmailContent;->count(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    add-int/2addr v7, v0

    goto :goto_0

    .line 374
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 376
    return v7

    .line 374
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private getStarredMailsCount(Landroid/content/Context;)I
    .locals 11
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 469
    const/4 v10, 0x0

    .line 471
    .local v10, count:I
    invoke-virtual {p0}, Lcom/android/email/activity/AccountFolderList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/email/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/email/provider/EmailContent$Account;->CONTENT_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 475
    .local v9, c2:Landroid/database/Cursor;
    if-eqz v9, :cond_2

    .line 478
    const/4 v0, -0x1

    :try_start_0
    invoke-interface {v9, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 479
    :cond_0
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 480
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 481
    .local v6, accountid:J
    invoke-direct {p0, v6, v7}, Lcom/android/email/activity/AccountFolderList;->IsEAS(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 483
    invoke-virtual {p0}, Lcom/android/email/activity/AccountFolderList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/email/provider/EmailContent$Message;->CONTENT_PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "flagFavorite= 1 AND accountKey="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 485
    .local v8, c:Landroid/database/Cursor;
    if-eqz v8, :cond_0

    .line 488
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    add-int/2addr v10, v0

    .line 492
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 498
    .end local v6           #accountid:J
    .end local v8           #c:Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0

    .line 492
    .restart local v6       #accountid:J
    .restart local v8       #c:Landroid/database/Cursor;
    :catchall_1
    move-exception v0

    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 498
    .end local v6           #accountid:J
    .end local v8           #c:Landroid/database/Cursor;
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 501
    :cond_2
    return v10
.end method

.method private getSummaryChildCursor()Landroid/database/MatrixCursor;
    .locals 13

    .prologue
    const-wide/16 v11, -0x5

    const-wide/16 v9, -0x6

    const-wide/16 v7, -0x2

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 524
    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v3, Lcom/android/email/activity/AccountFolderList;->MAILBOX_PROJECTION:[Ljava/lang/String;

    invoke-direct {v0, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 529
    .local v0, childCursor:Landroid/database/MatrixCursor;
    invoke-static {p0, v7, v8}, Lcom/android/email/activity/AccountFolderList;->getUnreadCountByMailboxId(Landroid/content/Context;J)I

    move-result v1

    .line 531
    .local v1, count:I
    invoke-virtual {v0}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v2

    .line 532
    .local v2, row:Landroid/database/MatrixCursor$RowBuilder;
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 533
    const v3, 0x7f08004a

    invoke-virtual {p0, v3}, Lcom/android/email/activity/AccountFolderList;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 534
    invoke-virtual {v2, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 535
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 536
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 539
    invoke-static {p0, v7, v8}, Lcom/android/email/activity/AccountFolderList;->getCountByMailboxId(Landroid/content/Context;J)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 542
    invoke-direct {p0, p0}, Lcom/android/email/activity/AccountFolderList;->getStarredMailsCount(Landroid/content/Context;)I

    move-result v1

    .line 543
    if-lez v1, :cond_0

    .line 544
    invoke-virtual {v0}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v2

    .line 545
    const-wide/16 v3, -0x4

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 547
    const v3, 0x7f08004c

    invoke-virtual {p0, v3}, Lcom/android/email/activity/AccountFolderList;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 548
    invoke-virtual {v2, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 549
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 550
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 552
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 556
    :cond_0
    invoke-static {p0, v11, v12}, Lcom/android/email/activity/AccountFolderList;->getCountByMailboxId(Landroid/content/Context;J)I

    move-result v1

    .line 557
    if-lez v1, :cond_1

    .line 558
    invoke-virtual {v0}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v2

    .line 559
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 560
    const v3, 0x7f08004d

    invoke-virtual {p0, v3}, Lcom/android/email/activity/AccountFolderList;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 561
    invoke-virtual {v2, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 562
    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 563
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 565
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 569
    :cond_1
    invoke-static {p0, v9, v10}, Lcom/android/email/activity/AccountFolderList;->getCountByMailboxId(Landroid/content/Context;J)I

    move-result v1

    .line 570
    if-lez v1, :cond_2

    .line 571
    invoke-virtual {v0}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v2

    .line 572
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 573
    const v3, 0x7f08004e

    invoke-virtual {p0, v3}, Lcom/android/email/activity/AccountFolderList;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 574
    invoke-virtual {v2, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 575
    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 576
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 578
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 580
    :cond_2
    return-object v0
.end method

.method private static getUnreadCountByMailboxId(Landroid/content/Context;J)I
    .locals 9
    .parameter "context"
    .parameter "id"

    .prologue
    const/4 v4, 0x0

    .line 397
    const/4 v7, 0x0

    .line 398
    .local v7, count:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "flagRead =0 AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/android/email/Utility;->buildMailboxIdSelection(Landroid/content/ContentResolver;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 400
    .local v3, selection_unread:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    const/16 v8, 0xc

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v2, v5

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 407
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 409
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 411
    return v7

    .line 409
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private static getUnreadCountByMailboxType(Landroid/content/Context;I)I
    .locals 9
    .parameter "context"
    .parameter "type"

    .prologue
    const/4 v8, 0x0

    .line 343
    const/4 v7, 0x0

    .line 344
    .local v7, count:I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/email/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/email/activity/AccountFolderList;->MAILBOX_SUM_OF_UNREAD_COUNT_PROJECTION:[Ljava/lang/String;

    const-string v3, "type =?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 350
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 351
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 354
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 356
    :goto_0
    return v0

    .line 354
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v7

    .line 356
    goto :goto_0

    .line 354
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private onAddNewAccount()V
    .locals 0

    .prologue
    .line 718
    invoke-static {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->actionNewAccount(Landroid/app/Activity;)V

    .line 719
    return-void
.end method

.method private onCompose(J)V
    .locals 3
    .parameter "accountId"

    .prologue
    const-wide/16 v1, -0x1

    .line 750
    cmp-long v0, p1, v1

    if-nez v0, :cond_0

    .line 751
    invoke-static {p0}, Lcom/android/email/provider/EmailContent$Account;->getDefaultAccountId(Landroid/content/Context;)J

    move-result-wide p1

    .line 753
    :cond_0
    cmp-long v0, p1, v1

    if-eqz v0, :cond_1

    .line 754
    invoke-static {p0, p1, p2}, Lcom/android/email/activity/MessageCompose;->actionCompose(Landroid/content/Context;J)V

    .line 758
    :goto_0
    return-void

    .line 756
    :cond_1
    invoke-direct {p0}, Lcom/android/email/activity/AccountFolderList;->onAddNewAccount()V

    goto :goto_0
.end method

.method private onDeleteAccount(J)V
    .locals 1
    .parameter "accountId"

    .prologue
    .line 761
    invoke-static {p0, p1, p2}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/AccountFolderList;->mSelectedContextAccount:Lcom/android/email/provider/EmailContent$Account;

    .line 762
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/email/activity/AccountFolderList;->showDialog(I)V

    .line 763
    return-void
.end method

.method private onEditAccount(J)V
    .locals 0
    .parameter "accountId"

    .prologue
    .line 722
    invoke-static {p0, p1, p2}, Lcom/android/email/activity/setup/AccountSettings;->actionSettings(Landroid/app/Activity;J)V

    .line 723
    return-void
.end method

.method private onRefresh(J)V
    .locals 6
    .parameter "accountId"

    .prologue
    const/4 v2, 0x1

    .line 730
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 733
    const-string v0, "Please longpress an account to refresh it"

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 747
    :goto_0
    return-void

    .line 736
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/AccountFolderList;->mHandler:Lcom/android/email/activity/AccountFolderList$MessageListHandler;

    invoke-virtual {v0, v2}, Lcom/android/email/activity/AccountFolderList$MessageListHandler;->progress(Z)V

    .line 741
    invoke-virtual {p0}, Lcom/android/email/activity/AccountFolderList;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v1}, Lcom/android/email/provider/EmailContent$Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/email/activity/AccountFolderList;->mControllerCallback:Lcom/android/email/activity/AccountFolderList$ControllerResults;

    move-wide v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/Controller;->updateMailbox(JJLcom/android/email/Controller$Result;)V

    goto :goto_0
.end method

.method private updateAccounts()V
    .locals 2

    .prologue
    .line 656
    const-string v0, "AccountFolderList >>"

    const-string v1, "updateAccounts"

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    iget-object v0, p0, Lcom/android/email/activity/AccountFolderList;->mLoadAccountsTask:Lcom/android/email/activity/AccountFolderList$LoadAccountsTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/AccountFolderList;->mLoadAccountsTask:Lcom/android/email/activity/AccountFolderList$LoadAccountsTask;

    invoke-virtual {v0}, Lcom/android/email/activity/AccountFolderList$LoadAccountsTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 659
    iget-object v0, p0, Lcom/android/email/activity/AccountFolderList;->mLoadAccountsTask:Lcom/android/email/activity/AccountFolderList$LoadAccountsTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/email/activity/AccountFolderList$LoadAccountsTask;->cancel(Z)Z

    .line 661
    :cond_0
    new-instance v0, Lcom/android/email/activity/AccountFolderList$LoadAccountsTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/email/activity/AccountFolderList$LoadAccountsTask;-><init>(Lcom/android/email/activity/AccountFolderList;Lcom/android/email/activity/AccountFolderList$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/AccountFolderList$LoadAccountsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/AccountFolderList$LoadAccountsTask;

    iput-object v0, p0, Lcom/android/email/activity/AccountFolderList;->mLoadAccountsTask:Lcom/android/email/activity/AccountFolderList$LoadAccountsTask;

    .line 662
    return-void
.end method

.method private updateBadgeProvider()V
    .locals 7

    .prologue
    .line 415
    invoke-virtual {p0}, Lcom/android/email/activity/AccountFolderList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 416
    .local v1, cr:Landroid/content/ContentResolver;
    invoke-virtual {p0}, Lcom/android/email/activity/AccountFolderList;->getCountofAccounts()I

    move-result v0

    .line 417
    .local v0, cnt:I
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 418
    .local v2, newValues:Landroid/content/ContentValues;
    const-string v4, "package"

    const-string v5, "com.android.email"

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    const-string v4, "class"

    const-string v5, "com.android.email.activity.Welcome"

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    const-string v4, "badgecount"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 421
    const-string v3, "package=\'com.android.email\' AND class=\'com.android.email.activity.Welcome\'"

    .line 422
    .local v3, where:Ljava/lang/String;
    const-string v4, "content://com.sec.badge/apps"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v2, v3, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 423
    const-string v4, "AccountFolderList >>"

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

    .line 424
    return-void
.end method

.method private static updateHistoryReadFlag(Landroid/content/Context;J)V
    .locals 6
    .parameter "context"
    .parameter "accountKey"

    .prologue
    const/4 v5, 0x0

    .line 846
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 848
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "contactid=?"

    .line 849
    .local v1, selection:Ljava/lang/String;
    const/4 v4, 0x1

    new-array v2, v4, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v5

    .line 851
    .local v2, selectionArg:[Ljava/lang/String;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 853
    .local v3, value:Landroid/content/ContentValues;
    const-string v4, "new"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 854
    const-string v4, "content://logs/email"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v4, v3, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 855
    return-void
.end method


# virtual methods
.method public getCountofAccounts()I
    .locals 8

    .prologue
    .line 428
    const/4 v6, 0x0

    .line 429
    .local v6, ac_count:I
    const/4 v7, 0x0

    .line 431
    .local v7, c_unread:Landroid/database/Cursor;
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "flagRead =0 AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/email/activity/AccountFolderList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-wide/16 v4, -0x2

    invoke-static {v1, v4, v5}, Lcom/android/email/Utility;->buildMailboxIdSelection(Landroid/content/ContentResolver;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 433
    .local v3, selection_unread:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/email/activity/AccountFolderList;->getContentResolver()Landroid/content/ContentResolver;

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

    .line 438
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    .line 442
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 443
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 445
    :cond_0
    const-string v0, "AccountFolderList >>"

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

    .line 446
    return v6

    .line 442
    .end local v3           #selection_unread:Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 443
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const-wide/16 v1, -0x1

    .line 324
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 332
    :goto_0
    return-void

    .line 326
    :pswitch_0
    invoke-direct {p0, v1, v2}, Lcom/android/email/activity/AccountFolderList;->onCompose(J)V

    goto :goto_0

    .line 329
    :pswitch_1
    invoke-direct {p0, v1, v2}, Lcom/android/email/activity/AccountFolderList;->onRefresh(J)V

    goto :goto_0

    .line 324
    :pswitch_data_0
    .packed-switch 0x7f07008c
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 9
    .parameter "item"

    .prologue
    const/4 v8, 0x0

    .line 873
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v5

    check-cast v5, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 876
    .local v5, menuInfo:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-object v6, p0, Lcom/android/email/activity/AccountFolderList;->mListAdapter:Lcom/android/email/activity/AccountFolderList$AccountsAdapter;

    iget v7, v5, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v6, v7}, Lcom/android/email/activity/AccountFolderList$AccountsAdapter;->isMailbox(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 877
    iget-object v6, p0, Lcom/android/email/activity/AccountFolderList;->mListView:Landroid/widget/ListView;

    iget v7, v5, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/Cursor;

    .line 878
    .local v2, c:Landroid/database/Cursor;
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 879
    .local v3, id:J
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    :goto_0
    move v6, v8

    .line 917
    .end local v2           #c:Landroid/database/Cursor;
    .end local v3           #id:J
    :goto_1
    return v6

    .line 881
    .restart local v2       #c:Landroid/database/Cursor;
    .restart local v3       #id:J
    :pswitch_0
    invoke-static {p0, v3, v4}, Lcom/android/email/activity/MessageList;->actionHandleMailbox(Landroid/content/Context;J)V

    goto :goto_0

    .line 892
    .end local v2           #c:Landroid/database/Cursor;
    .end local v3           #id:J
    :cond_0
    iget-object v6, p0, Lcom/android/email/activity/AccountFolderList;->mListAdapter:Lcom/android/email/activity/AccountFolderList$AccountsAdapter;

    iget v7, v5, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v6, v7}, Lcom/android/email/activity/AccountFolderList$AccountsAdapter;->isAccount(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 893
    iget-object v6, p0, Lcom/android/email/activity/AccountFolderList;->mListView:Landroid/widget/ListView;

    iget v7, v5, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/Cursor;

    .line 894
    .restart local v2       #c:Landroid/database/Cursor;
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 895
    .local v0, accountId:J
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    packed-switch v6, :pswitch_data_1

    .line 915
    :goto_2
    const/4 v6, 0x1

    goto :goto_1

    .line 900
    :pswitch_1
    invoke-static {p0, v0, v1, v8}, Lcom/android/email/activity/MessageList;->actionHandleAccount(Landroid/content/Context;JI)V

    goto :goto_2

    .line 903
    :pswitch_2
    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/AccountFolderList;->onCompose(J)V

    goto :goto_2

    .line 906
    :pswitch_3
    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/AccountFolderList;->onRefresh(J)V

    goto :goto_2

    .line 909
    :pswitch_4
    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/AccountFolderList;->onEditAccount(J)V

    goto :goto_2

    .line 912
    :pswitch_5
    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/AccountFolderList;->onDeleteAccount(J)V

    goto :goto_2

    .end local v0           #accountId:J
    .end local v2           #c:Landroid/database/Cursor;
    :cond_1
    move v6, v8

    .line 917
    goto :goto_1

    .line 879
    nop

    :pswitch_data_0
    .packed-switch 0x7f07011c
        :pswitch_0
    .end packed-switch

    .line 895
    :pswitch_data_1
    .packed-switch 0x7f07011c
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "icicle"

    .prologue
    const/4 v5, 0x7

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    const-string v6, "com.android.email.selectedAccount"

    .line 230
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 232
    invoke-virtual {p0, v5}, Lcom/android/email/activity/AccountFolderList;->requestWindowFeature(I)Z

    .line 233
    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lcom/android/email/activity/AccountFolderList;->setContentView(I)V

    .line 234
    invoke-virtual {p0}, Lcom/android/email/activity/AccountFolderList;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f030021

    invoke-virtual {v0, v5, v1}, Landroid/view/Window;->setFeatureInt(II)V

    .line 237
    new-instance v0, Lcom/android/email/activity/AccountFolderList$MessageListHandler;

    invoke-direct {v0, p0, v3}, Lcom/android/email/activity/AccountFolderList$MessageListHandler;-><init>(Lcom/android/email/activity/AccountFolderList;Lcom/android/email/activity/AccountFolderList$1;)V

    iput-object v0, p0, Lcom/android/email/activity/AccountFolderList;->mHandler:Lcom/android/email/activity/AccountFolderList$MessageListHandler;

    .line 238
    new-instance v0, Lcom/android/email/activity/AccountFolderList$ControllerResults;

    invoke-direct {v0, p0, v3}, Lcom/android/email/activity/AccountFolderList$ControllerResults;-><init>(Lcom/android/email/activity/AccountFolderList;Lcom/android/email/activity/AccountFolderList$1;)V

    iput-object v0, p0, Lcom/android/email/activity/AccountFolderList;->mControllerCallback:Lcom/android/email/activity/AccountFolderList$ControllerResults;

    .line 239
    const v0, 0x7f070092

    invoke-virtual {p0, v0}, Lcom/android/email/activity/AccountFolderList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/email/activity/AccountFolderList;->mProgressIcon:Landroid/widget/ProgressBar;

    .line 241
    new-instance v0, Lcom/android/email/activity/AccountFolderList$ProgressDialogDelete;

    invoke-direct {v0, p0}, Lcom/android/email/activity/AccountFolderList$ProgressDialogDelete;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/email/activity/AccountFolderList;->mProgressDialog:Lcom/android/email/activity/AccountFolderList$ProgressDialogDelete;

    .line 242
    iget-object v0, p0, Lcom/android/email/activity/AccountFolderList;->mProgressDialog:Lcom/android/email/activity/AccountFolderList$ProgressDialogDelete;

    invoke-virtual {v0, v4}, Lcom/android/email/activity/AccountFolderList$ProgressDialogDelete;->setIndeterminate(Z)V

    .line 243
    iget-object v0, p0, Lcom/android/email/activity/AccountFolderList;->mProgressDialog:Lcom/android/email/activity/AccountFolderList$ProgressDialogDelete;

    invoke-virtual {v0, v2}, Lcom/android/email/activity/AccountFolderList$ProgressDialogDelete;->setProgressStyle(I)V

    .line 244
    iget-object v0, p0, Lcom/android/email/activity/AccountFolderList;->mProgressDialog:Lcom/android/email/activity/AccountFolderList$ProgressDialogDelete;

    const v1, 0x7f080161

    invoke-virtual {p0, v1}, Lcom/android/email/activity/AccountFolderList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/email/activity/AccountFolderList$ProgressDialogDelete;->setMessage(Ljava/lang/CharSequence;)V

    .line 246
    invoke-virtual {p0}, Lcom/android/email/activity/AccountFolderList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/AccountFolderList;->mListView:Landroid/widget/ListView;

    .line 247
    iget-object v0, p0, Lcom/android/email/activity/AccountFolderList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 249
    iget-object v0, p0, Lcom/android/email/activity/AccountFolderList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 250
    iget-object v0, p0, Lcom/android/email/activity/AccountFolderList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setLongClickable(Z)V

    .line 251
    iget-object v0, p0, Lcom/android/email/activity/AccountFolderList;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0, v0}, Lcom/android/email/activity/AccountFolderList;->registerForContextMenu(Landroid/view/View;)V

    .line 253
    if-eqz p1, :cond_0

    const-string v0, "com.android.email.selectedAccount"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    const-string v0, "com.android.email.selectedAccount"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/email/provider/EmailContent$Account;

    iput-object v0, p0, Lcom/android/email/activity/AccountFolderList;->mSelectedContextAccount:Lcom/android/email/provider/EmailContent$Account;

    .line 257
    :cond_0
    const v0, 0x7f07008f

    invoke-virtual {p0, v0}, Lcom/android/email/activity/AccountFolderList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f08000c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 259
    new-instance v0, Lcom/android/email/activity/AccountFolderList$LoadAccountsTask;

    invoke-direct {v0, p0, v3}, Lcom/android/email/activity/AccountFolderList$LoadAccountsTask;-><init>(Lcom/android/email/activity/AccountFolderList;Lcom/android/email/activity/AccountFolderList$1;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/AccountFolderList$LoadAccountsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/AccountFolderList$LoadAccountsTask;

    iput-object v0, p0, Lcom/android/email/activity/AccountFolderList;->mLoadAccountsTask:Lcom/android/email/activity/AccountFolderList$LoadAccountsTask;

    .line 260
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 6
    .parameter "menu"
    .parameter "v"
    .parameter "info"

    .prologue
    .line 955
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 956
    move-object v0, p3

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    move-object v3, v0

    .line 966
    .local v3, menuInfo:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-object v4, p0, Lcom/android/email/activity/AccountFolderList;->mListAdapter:Lcom/android/email/activity/AccountFolderList$AccountsAdapter;

    iget v5, v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v4, v5}, Lcom/android/email/activity/AccountFolderList$AccountsAdapter;->isAccount(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 967
    iget-object v4, p0, Lcom/android/email/activity/AccountFolderList;->mListView:Landroid/widget/ListView;

    iget v5, v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/Cursor;

    .line 968
    .local v2, c:Landroid/database/Cursor;
    const/4 v4, 0x1

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 969
    .local v1, accountName:Ljava/lang/String;
    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 970
    invoke-virtual {p0}, Lcom/android/email/activity/AccountFolderList;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v4

    const/high16 v5, 0x7f0d

    invoke-virtual {v4, v5, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 972
    .end local v1           #accountName:Ljava/lang/String;
    .end local v2           #c:Landroid/database/Cursor;
    :cond_0
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .parameter "id"

    .prologue
    .line 767
    packed-switch p1, :pswitch_data_0

    .line 771
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 769
    :pswitch_0
    invoke-direct {p0}, Lcom/android/email/activity/AccountFolderList;->createRemoveAccountDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 767
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 948
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 949
    invoke-virtual {p0}, Lcom/android/email/activity/AccountFolderList;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 950
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 303
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 304
    iget-object v0, p0, Lcom/android/email/activity/AccountFolderList;->mLoadAccountsTask:Lcom/android/email/activity/AccountFolderList$LoadAccountsTask;

    invoke-static {v0}, Lcom/android/email/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    .line 305
    iput-object v2, p0, Lcom/android/email/activity/AccountFolderList;->mLoadAccountsTask:Lcom/android/email/activity/AccountFolderList$LoadAccountsTask;

    .line 311
    iget-object v0, p0, Lcom/android/email/activity/AccountFolderList;->mDeleteAccountTask:Lcom/android/email/activity/AccountFolderList$DeleteAccountTask;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/email/Utility;->cancelTask(Landroid/os/AsyncTask;Z)V

    .line 312
    iput-object v2, p0, Lcom/android/email/activity/AccountFolderList;->mDeleteAccountTask:Lcom/android/email/activity/AccountFolderList$DeleteAccountTask;

    .line 314
    iget-object v0, p0, Lcom/android/email/activity/AccountFolderList;->mListAdapter:Lcom/android/email/activity/AccountFolderList$AccountsAdapter;

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/android/email/activity/AccountFolderList;->mListAdapter:Lcom/android/email/activity/AccountFolderList$AccountsAdapter;

    invoke-virtual {v0, v2}, Lcom/android/email/activity/AccountFolderList$AccountsAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/AccountFolderList;->mProgressDialog:Lcom/android/email/activity/AccountFolderList$ProgressDialogDelete;

    if-eqz v0, :cond_1

    .line 319
    iget-object v0, p0, Lcom/android/email/activity/AccountFolderList;->mProgressDialog:Lcom/android/email/activity/AccountFolderList$ProgressDialogDelete;

    invoke-virtual {v0}, Lcom/android/email/activity/AccountFolderList$ProgressDialogDelete;->dismiss()V

    .line 321
    :cond_1
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
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
    .line 335
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/email/activity/AccountFolderList;->mListAdapter:Lcom/android/email/activity/AccountFolderList$AccountsAdapter;

    invoke-virtual {v0, p3}, Lcom/android/email/activity/AccountFolderList$AccountsAdapter;->isMailbox(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 336
    invoke-static {p0, p4, p5}, Lcom/android/email/activity/MessageList;->actionHandleMailbox(Landroid/content/Context;J)V

    .line 340
    :cond_0
    :goto_0
    return-void

    .line 337
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/AccountFolderList;->mListAdapter:Lcom/android/email/activity/AccountFolderList$AccountsAdapter;

    invoke-virtual {v0, p3}, Lcom/android/email/activity/AccountFolderList$AccountsAdapter;->isAccount(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    const/4 v0, 0x0

    invoke-static {p0, p4, p5, v0}, Lcom/android/email/activity/MessageList;->actionHandleAccount(Landroid/content/Context;JI)V

    goto :goto_0
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 1
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
    .line 943
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v0, 0x1

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    .line 976
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    sget-object v1, Lcom/android/email/activity/AccountFolderList;->secretKeyCodes:[I

    iget v2, p0, Lcom/android/email/activity/AccountFolderList;->mSecretKeyCodeIndex:I

    aget v1, v1, v2

    if-ne v0, v1, :cond_1

    .line 977
    iget v0, p0, Lcom/android/email/activity/AccountFolderList;->mSecretKeyCodeIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/email/activity/AccountFolderList;->mSecretKeyCodeIndex:I

    .line 978
    iget v0, p0, Lcom/android/email/activity/AccountFolderList;->mSecretKeyCodeIndex:I

    sget-object v1, Lcom/android/email/activity/AccountFolderList;->secretKeyCodes:[I

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 979
    iput v3, p0, Lcom/android/email/activity/AccountFolderList;->mSecretKeyCodeIndex:I

    .line 980
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/Debug;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/email/activity/AccountFolderList;->startActivity(Landroid/content/Intent;)V

    .line 985
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 983
    :cond_1
    iput v3, p0, Lcom/android/email/activity/AccountFolderList;->mSecretKeyCodeIndex:I

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 922
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 937
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 939
    :goto_0
    return v0

    .line 924
    :sswitch_0
    invoke-direct {p0}, Lcom/android/email/activity/AccountFolderList;->onAddNewAccount()V

    .line 939
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 934
    :sswitch_1
    const-wide/16 v0, -0x1

    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/AccountFolderList;->onCompose(J)V

    goto :goto_1

    .line 922
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f07003e -> :sswitch_0
        0x7f07011d -> :sswitch_1
    .end sparse-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 272
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 273
    invoke-direct {p0}, Lcom/android/email/activity/AccountFolderList;->updateBadgeProvider()V

    .line 274
    invoke-virtual {p0}, Lcom/android/email/activity/AccountFolderList;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/AccountFolderList;->mControllerCallback:Lcom/android/email/activity/AccountFolderList$ControllerResults;

    invoke-virtual {v0, v1}, Lcom/android/email/Controller;->removeResultCallback(Lcom/android/email/Controller$Result;)V

    .line 275
    iget-object v0, p0, Lcom/android/email/activity/AccountFolderList;->mListAdapter:Lcom/android/email/activity/AccountFolderList$AccountsAdapter;

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/android/email/activity/AccountFolderList;->mListAdapter:Lcom/android/email/activity/AccountFolderList$AccountsAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/AccountFolderList$AccountsAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 278
    :cond_0
    return-void
.end method

.method public onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 6
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 863
    packed-switch p1, :pswitch_data_0

    .line 869
    :goto_0
    return-void

    .line 865
    :pswitch_0
    move-object v0, p2

    check-cast v0, Landroid/app/AlertDialog;

    move-object v1, v0

    .line 866
    .local v1, alert:Landroid/app/AlertDialog;
    const v2, 0x7f0800e8

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/email/activity/AccountFolderList;->mSelectedContextAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v5}, Lcom/android/email/provider/EmailContent$Account;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/email/activity/AccountFolderList;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 863
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 282
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 284
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Lcom/android/email/activity/AccountFolderList;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 286
    .local v0, notifMgr:Landroid/app/NotificationManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 288
    invoke-virtual {p0}, Lcom/android/email/activity/AccountFolderList;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/AccountFolderList;->mControllerCallback:Lcom/android/email/activity/AccountFolderList$ControllerResults;

    invoke-virtual {v1, v2}, Lcom/android/email/Controller;->addResultCallback(Lcom/android/email/Controller$Result;)V

    .line 291
    invoke-static {}, Lcom/android/email/Email;->getNotifyUiAccountsChanged()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 292
    invoke-static {p0}, Lcom/android/email/activity/Welcome;->actionStart(Landroid/app/Activity;)V

    .line 293
    invoke-virtual {p0}, Lcom/android/email/activity/AccountFolderList;->finish()V

    .line 299
    :goto_0
    return-void

    .line 297
    :cond_0
    invoke-direct {p0}, Lcom/android/email/activity/AccountFolderList;->updateAccounts()V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 264
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 265
    iget-object v0, p0, Lcom/android/email/activity/AccountFolderList;->mSelectedContextAccount:Lcom/android/email/provider/EmailContent$Account;

    if-eqz v0, :cond_0

    .line 266
    const-string v0, "com.android.email.selectedAccount"

    iget-object v1, p0, Lcom/android/email/activity/AccountFolderList;->mSelectedContextAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 268
    :cond_0
    return-void
.end method
