.class public Lcom/android/exchange/SyncManager;
.super Landroid/app/Service;
.source "SyncManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exchange/SyncManager$syncManager_UpdateAccountHearbeat;,
        Lcom/android/exchange/SyncManager$ConnectivityReceiver;,
        Lcom/android/exchange/SyncManager$EasAccountsUpdatedListener;,
        Lcom/android/exchange/SyncManager$EasSyncStatusObserver;,
        Lcom/android/exchange/SyncManager$SyncError;,
        Lcom/android/exchange/SyncManager$SyncStatus;,
        Lcom/android/exchange/SyncManager$MessageObserver;,
        Lcom/android/exchange/SyncManager$SyncedMessageObserver;,
        Lcom/android/exchange/SyncManager$MailboxObserver;,
        Lcom/android/exchange/SyncManager$CalendarObserver;,
        Lcom/android/exchange/SyncManager$AccountObserver;,
        Lcom/android/exchange/SyncManager$AccountList;
    }
.end annotation


# static fields
.field private static final ACCOUNT_KEY_IN:Ljava/lang/String; = "accountKey in ("

.field public static final BADGE_APPS_CLASS:Ljava/lang/String; = "class"

.field public static final BADGE_APPS_COUNT:Ljava/lang/String; = "badgecount"

.field public static final BADGE_APPS_PACKAGE:Ljava/lang/String; = "package"

.field public static final BADGE_AUTHORITY:Ljava/lang/String; = "com.sec.badge"

.field public static final BADGE_TABLE_APPS:Ljava/lang/String; = "apps"

.field private static final CONNECTIVITY_WAIT_TIME:I = 0x927c0

.field private static final EMPTY_ACCOUNT_LIST:Lcom/android/exchange/SyncManager$AccountList; = null

.field private static final HOLD_DELAY_MAXIMUM:I = 0x3a980

.field protected static INSTANCE:Lcom/android/exchange/SyncManager; = null

.field public static MAILBOX_DUMMY_GALSEARCH:J = 0x0L

.field public static MAILBOX_DUMMY_MAX:J = 0x0L

.field public static MAILBOX_DUMMY_MIN:J = 0x0L

.field public static MAILBOX_DUMMY_OoO:J = 0x0L

.field private static final MAX_CLIENT_CONNECTION_MANAGER_SHUTDOWNS:I = 0x2

.field private static final MINUTES:I = 0xea60

.field private static final ONE_DAY_MINUTES:I = 0x5a0

.field public static final PING_STATUS_OK:I = 0x0

.field public static final PING_STATUS_RUNNING:I = 0x1

.field public static final PING_STATUS_UNABLE:I = 0x3

.field public static final PING_STATUS_WAITING:I = 0x2

.field private static final SECONDS:I = 0x3e8

.field public static final STATUS_CHANGE_COUNT_OFFSET:I = 0x5

.field public static final STATUS_EXIT_CHAR:I = 0x3

.field public static final STATUS_TYPE_CHAR:I = 0x1

.field public static final SYNC_KICK:I = 0x6

.field private static final SYNC_MANAGER_HEARTBEAT_TIME:I = 0x1b7740

.field private static final SYNC_MANAGER_ID:I = -0x1

.field public static final SYNC_PING:I = 0x3

.field public static final SYNC_PROVISION:I = 0x9

.field public static final SYNC_PUSH:I = 0x2

.field public static final SYNC_SCHEDULED:I = 0x1

.field public static final SYNC_SERVICE_EMPTY_TRASH_REQUEST:I = 0x8

.field public static final SYNC_SERVICE_LOAD_REQUEST:I = 0x7

.field public static final SYNC_SERVICE_PART_REQUEST:I = 0x5

.field public static final SYNC_SERVICE_START_SYNC:I = 0x4

.field public static final SYNC_UPSYNC:I = 0x0

.field private static final TAG:Ljava/lang/String; = "EAS SyncManager"

.field private static final WHERE_CALENDAR_ID:Ljava/lang/String; = "calendar_id=?"

.field protected static final WHERE_IN_ACCOUNT_AND_PUSHABLE:Ljava/lang/String; = "accountKey=? and type in (0,68,66,65)"

.field protected static final WHERE_IN_ACCOUNT_AND_PUSHABLE_CALENDAR:Ljava/lang/String; = "accountKey=? and type in (65)"

.field protected static final WHERE_IN_ACCOUNT_AND_PUSHABLE_CONTACTS:Ljava/lang/String; = "accountKey=? and type in (66)"

.field protected static final WHERE_IN_ACCOUNT_AND_PUSHABLE_INBOX:Ljava/lang/String; = "accountKey=? and type in (0,68,67)"

.field private static final WHERE_MAILBOX_KEY:Ljava/lang/String; = "mailboxKey=?"

.field private static final WHERE_NOT_INTERVAL_NEVER_AND_ACCOUNT_KEY_IN:Ljava/lang/String; = "(type=4 or syncInterval!=-1) and accountKey in ("

.field private static final WHERE_NOT_NEVER_OUTBOX_ACCOUNTBOX_AND_ACCOUNT_KEY_IN:Ljava/lang/String; = "(type=4 or type=68 or syncInterval!=-1) and accountKey in ("

.field private static final WHERE_PROTOCOL_EAS:Ljava/lang/String; = "protocol=\"eas\""

.field private static final WHERE_PUSH_OR_PING_NOT_ACCOUNT_MAILBOX:Ljava/lang/String; = "accountKey=? and type!=68 and syncInterval IN (-3,-2)"

.field public static elmsvc:Lcom/android/exchange/EasLoadMoreSvc;

.field public static lmClientConnectionManager:Lorg/apache/http/conn/ClientConnectionManager;

.field private static volatile lmClientConnectionManagerShutdownCount:I

.field public static mClientConnectionManager:Lorg/apache/http/conn/ClientConnectionManager;

.field private static mInstance_UpdateAccountHearbeat:Lcom/android/exchange/SyncManager$syncManager_UpdateAccountHearbeat;

.field private static mKickReason:Ljava/lang/String;

.field public static final sAccountList:Lcom/android/exchange/SyncManager$AccountList;

.field private static final sCallbackProxy:Lcom/android/email/service/IEmailServiceCallback$Stub;

.field private static sClientConnectionManager:Lorg/apache/http/conn/ClientConnectionManager;

.field private static volatile sClientConnectionManagerShutdownCount:I

.field public static sConnPerPing:Lorg/apache/http/conn/params/ConnPerRoute;

.field public static sConnPerRoute:Lorg/apache/http/conn/params/ConnPerRoute;

.field public static sConnectivityHold:Z

.field public static final sConnectivityLock:Ljava/lang/Object;

.field private static sDeviceId:Ljava/lang/String;

.field private static sLicenseKey:Ljava/lang/String;

.field private static sServiceThread:Ljava/lang/Thread;

.field private static final sSyncLock:Ljava/lang/Object;


# instance fields
.field private mAccountObserver:Lcom/android/exchange/SyncManager$AccountObserver;

.field private mAccountsUpdatedListener:Lcom/android/exchange/SyncManager$EasAccountsUpdatedListener;

.field private volatile mBackgroundData:Z

.field private mBackgroundDataSettingReceiver:Lcom/android/exchange/SyncManager$ConnectivityReceiver;

.field private final mBinder:Lcom/android/email/service/IEmailService$Stub;

.field private mCalendarObservers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/exchange/SyncManager$CalendarObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mCallback:Lcom/android/email/service/IEmailServiceCallback;

.field private mCallbackList:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/android/email/service/IEmailServiceCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectivityReceiver:Lcom/android/exchange/SyncManager$ConnectivityReceiver;

.field private mHandler:Landroid/os/Handler;

.field private mIsNetworkRoaming:Z

.field private mKicked:Z

.field private mMailboxObserver:Lcom/android/exchange/SyncManager$MailboxObserver;

.field private mMessageObserver:Lcom/android/exchange/SyncManager$MessageObserver;

.field private mNetworkState:I

.field private mNextWaitReason:Ljava/lang/String;

.field private mPendingIntents:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Landroid/app/PendingIntent;",
            ">;"
        }
    .end annotation
.end field

.field private mPhone:Landroid/telephony/TelephonyManager;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mProvisionErrorExist:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/email/provider/EmailContent$Account;",
            ">;"
        }
    .end annotation
.end field

.field private mResolver:Landroid/content/ContentResolver;

.field private mServiceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/exchange/AbstractSyncService;",
            ">;"
        }
    .end annotation
.end field

.field private mStop:Z

.field mSyncErrorMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/exchange/SyncManager$SyncError;",
            ">;"
        }
    .end annotation
.end field

.field private mSyncStatusObserver:Lcom/android/exchange/SyncManager$EasSyncStatusObserver;

.field private mSyncedMessageObserver:Lcom/android/exchange/SyncManager$SyncedMessageObserver;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWakeLocks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 250
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/exchange/SyncManager;->sSyncLock:Ljava/lang/Object;

    .line 252
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/exchange/SyncManager;->sConnectivityLock:Ljava/lang/Object;

    .line 253
    sput-boolean v3, Lcom/android/exchange/SyncManager;->sConnectivityHold:Z

    .line 255
    new-instance v0, Lcom/android/exchange/SyncManager$AccountList;

    invoke-direct {v0}, Lcom/android/exchange/SyncManager$AccountList;-><init>()V

    sput-object v0, Lcom/android/exchange/SyncManager;->sAccountList:Lcom/android/exchange/SyncManager$AccountList;

    .line 265
    const-wide/32 v0, 0xf4240

    sput-wide v0, Lcom/android/exchange/SyncManager;->MAILBOX_DUMMY_MIN:J

    .line 266
    const-wide/32 v0, 0xf4241

    sput-wide v0, Lcom/android/exchange/SyncManager;->MAILBOX_DUMMY_OoO:J

    .line 267
    const-wide/32 v0, 0xf4242

    sput-wide v0, Lcom/android/exchange/SyncManager;->MAILBOX_DUMMY_GALSEARCH:J

    .line 268
    const-wide/32 v0, 0xf4243

    sput-wide v0, Lcom/android/exchange/SyncManager;->MAILBOX_DUMMY_MAX:J

    .line 279
    new-instance v0, Lcom/android/exchange/SyncManager$AccountList;

    invoke-direct {v0}, Lcom/android/exchange/SyncManager$AccountList;-><init>()V

    sput-object v0, Lcom/android/exchange/SyncManager;->EMPTY_ACCOUNT_LIST:Lcom/android/exchange/SyncManager$AccountList;

    .line 297
    sput-object v2, Lcom/android/exchange/SyncManager;->sServiceThread:Ljava/lang/Thread;

    .line 299
    sput-object v2, Lcom/android/exchange/SyncManager;->sDeviceId:Ljava/lang/String;

    .line 302
    sput-object v2, Lcom/android/exchange/SyncManager;->sLicenseKey:Ljava/lang/String;

    .line 305
    sput-object v2, Lcom/android/exchange/SyncManager;->sClientConnectionManager:Lorg/apache/http/conn/ClientConnectionManager;

    .line 308
    sput-object v2, Lcom/android/exchange/SyncManager;->mClientConnectionManager:Lorg/apache/http/conn/ClientConnectionManager;

    .line 311
    sput v3, Lcom/android/exchange/SyncManager;->sClientConnectionManagerShutdownCount:I

    .line 314
    sput-object v2, Lcom/android/exchange/SyncManager;->lmClientConnectionManager:Lorg/apache/http/conn/ClientConnectionManager;

    .line 316
    sput v3, Lcom/android/exchange/SyncManager;->lmClientConnectionManagerShutdownCount:I

    .line 341
    sput-object v2, Lcom/android/exchange/SyncManager;->elmsvc:Lcom/android/exchange/EasLoadMoreSvc;

    .line 349
    new-instance v0, Lcom/android/exchange/SyncManager$1;

    invoke-direct {v0}, Lcom/android/exchange/SyncManager$1;-><init>()V

    sput-object v0, Lcom/android/exchange/SyncManager;->sCallbackProxy:Lcom/android/email/service/IEmailServiceCallback$Stub;

    .line 1707
    new-instance v0, Lcom/android/exchange/SyncManager$5;

    invoke-direct {v0}, Lcom/android/exchange/SyncManager$5;-><init>()V

    sput-object v0, Lcom/android/exchange/SyncManager;->sConnPerRoute:Lorg/apache/http/conn/params/ConnPerRoute;

    .line 1716
    new-instance v0, Lcom/android/exchange/SyncManager$6;

    invoke-direct {v0}, Lcom/android/exchange/SyncManager$6;-><init>()V

    sput-object v0, Lcom/android/exchange/SyncManager;->sConnPerPing:Lorg/apache/http/conn/params/ConnPerRoute;

    .line 3575
    sput-object v2, Lcom/android/exchange/SyncManager;->mInstance_UpdateAccountHearbeat:Lcom/android/exchange/SyncManager$syncManager_UpdateAccountHearbeat;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 128
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 245
    iput-boolean v1, p0, Lcom/android/exchange/SyncManager;->mIsNetworkRoaming:Z

    .line 258
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/SyncManager;->mServiceMap:Ljava/util/HashMap;

    .line 272
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/SyncManager;->mSyncErrorMap:Ljava/util/HashMap;

    .line 274
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/SyncManager;->mWakeLocks:Ljava/util/HashMap;

    .line 276
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/SyncManager;->mPendingIntents:Ljava/util/HashMap;

    .line 278
    iput-object v2, p0, Lcom/android/exchange/SyncManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 282
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/SyncManager;->mHandler:Landroid/os/Handler;

    .line 290
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/SyncManager;->mCalendarObservers:Ljava/util/HashMap;

    .line 318
    iput-boolean v1, p0, Lcom/android/exchange/SyncManager;->mStop:Z

    .line 323
    iput-boolean v1, p0, Lcom/android/exchange/SyncManager;->mKicked:Z

    .line 327
    iput-object v2, p0, Lcom/android/exchange/SyncManager;->mConnectivityReceiver:Lcom/android/exchange/SyncManager$ConnectivityReceiver;

    .line 328
    iput-object v2, p0, Lcom/android/exchange/SyncManager;->mBackgroundDataSettingReceiver:Lcom/android/exchange/SyncManager$ConnectivityReceiver;

    .line 329
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/exchange/SyncManager;->mBackgroundData:Z

    .line 333
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/SyncManager;->mCallbackList:Landroid/os/RemoteCallbackList;

    .line 338
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/SyncManager;->mProvisionErrorExist:Ljava/util/HashMap;

    .line 438
    new-instance v0, Lcom/android/exchange/SyncManager$2;

    invoke-direct {v0, p0}, Lcom/android/exchange/SyncManager$2;-><init>(Lcom/android/exchange/SyncManager;)V

    iput-object v0, p0, Lcom/android/exchange/SyncManager;->mBinder:Lcom/android/email/service/IEmailService$Stub;

    .line 3572
    return-void
.end method

.method static synthetic access$000(Lcom/android/exchange/SyncManager;)Lcom/android/email/service/IEmailServiceCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/exchange/SyncManager;->mCallback:Lcom/android/email/service/IEmailServiceCallback;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/exchange/SyncManager;Lcom/android/email/service/IEmailServiceCallback;)Lcom/android/email/service/IEmailServiceCallback;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    iput-object p1, p0, Lcom/android/exchange/SyncManager;->mCallback:Lcom/android/email/service/IEmailServiceCallback;

    return-object p1
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    sget-object v0, Lcom/android/exchange/SyncManager;->sLicenseKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/exchange/SyncManager;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/exchange/SyncManager;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$102(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"

    .prologue
    .line 128
    sput-object p0, Lcom/android/exchange/SyncManager;->sLicenseKey:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/exchange/SyncManager;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    invoke-direct {p0, p1, p2}, Lcom/android/exchange/SyncManager;->stopPing(J)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/exchange/SyncManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/android/exchange/SyncManager;->checkPIMSyncSettings()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/exchange/SyncManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/android/exchange/SyncManager;->runAccountReconciler()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/exchange/SyncManager;)Lcom/android/exchange/SyncManager$AccountObserver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/exchange/SyncManager;->mAccountObserver:Lcom/android/exchange/SyncManager$AccountObserver;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/exchange/SyncManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/android/exchange/SyncManager;->mIsNetworkRoaming:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/android/exchange/SyncManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    iput-boolean p1, p0, Lcom/android/exchange/SyncManager;->mIsNetworkRoaming:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/exchange/SyncManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget v0, p0, Lcom/android/exchange/SyncManager;->mNetworkState:I

    return v0
.end method

.method static synthetic access$1602(Lcom/android/exchange/SyncManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    iput p1, p0, Lcom/android/exchange/SyncManager;->mNetworkState:I

    return p1
.end method

.method static synthetic access$1700(Lcom/android/exchange/SyncManager;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/android/exchange/SyncManager;->updateAccountDb(Z)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/exchange/SyncManager;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    invoke-direct {p0, p1, p2}, Lcom/android/exchange/SyncManager;->releaseMailbox(J)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/exchange/SyncManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/android/exchange/SyncManager;->mBackgroundData:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/android/exchange/SyncManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    iput-boolean p1, p0, Lcom/android/exchange/SyncManager;->mBackgroundData:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/exchange/SyncManager;Landroid/content/Context;IJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 128
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/exchange/SyncManager;->releaseSyncHoldMailbox(Landroid/content/Context;IJ)V

    return-void
.end method

.method static synthetic access$300(J)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 128
    invoke-static {p0, p1}, Lcom/android/exchange/SyncManager;->stopManualSync(J)V

    return-void
.end method

.method static synthetic access$400()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 128
    sget-object v0, Lcom/android/exchange/SyncManager;->sSyncLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/exchange/SyncManager;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/exchange/SyncManager;->mServiceMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/exchange/SyncManager;Lcom/android/email/provider/EmailContent$Mailbox;ILcom/android/exchange/Request;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 128
    invoke-direct {p0, p1, p2, p3}, Lcom/android/exchange/SyncManager;->requestSync(Lcom/android/email/provider/EmailContent$Mailbox;ILcom/android/exchange/Request;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/exchange/SyncManager;JZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 128
    invoke-direct {p0, p1, p2, p3}, Lcom/android/exchange/SyncManager;->stopAccountSyncs(JZ)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/exchange/SyncManager;)Landroid/os/RemoteCallbackList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/exchange/SyncManager;->mCallbackList:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method public static accountUpdated(J)V
    .locals 6
    .parameter "acctId"

    .prologue
    .line 3285
    sget-object v2, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    .line 3286
    .local v2, syncManager:Lcom/android/exchange/SyncManager;
    if-nez v2, :cond_0

    .line 3294
    :goto_0
    return-void

    .line 3287
    :cond_0
    sget-object v3, Lcom/android/exchange/SyncManager;->sSyncLock:Ljava/lang/Object;

    monitor-enter v3

    .line 3288
    :try_start_0
    iget-object v4, v2, Lcom/android/exchange/SyncManager;->mServiceMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/exchange/AbstractSyncService;

    .line 3289
    .local v1, svc:Lcom/android/exchange/AbstractSyncService;
    iget-object v4, v1, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v4, v4, Lcom/android/email/provider/EmailContent$Account;->mId:J

    cmp-long v4, v4, p0

    if-nez v4, :cond_1

    .line 3290
    invoke-static {v2, p0, p1}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v4

    iput-object v4, v1, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    goto :goto_1

    .line 3293
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #svc:Lcom/android/exchange/AbstractSyncService;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private acquireWakeLock(J)V
    .locals 6
    .parameter "id"

    .prologue
    .line 2001
    iget-object v2, p0, Lcom/android/exchange/SyncManager;->mWakeLocks:Ljava/util/HashMap;

    monitor-enter v2

    .line 2002
    :try_start_0
    iget-object v3, p0, Lcom/android/exchange/SyncManager;->mWakeLocks:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 2003
    .local v0, lock:Ljava/lang/Boolean;
    if-nez v0, :cond_1

    .line 2004
    iget-object v3, p0, Lcom/android/exchange/SyncManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v3, :cond_0

    .line 2005
    const-string v3, "power"

    invoke-virtual {p0, v3}, Lcom/android/exchange/SyncManager;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 2006
    .local v1, pm:Landroid/os/PowerManager;
    const/4 v3, 0x1

    const-string v4, "MAIL_SERVICE"

    invoke-virtual {v1, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exchange/SyncManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 2007
    iget-object v3, p0, Lcom/android/exchange/SyncManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2010
    .end local v1           #pm:Landroid/os/PowerManager;
    :cond_0
    iget-object v3, p0, Lcom/android/exchange/SyncManager;->mWakeLocks:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2012
    :cond_1
    monitor-exit v2

    .line 2013
    return-void

    .line 2012
    .end local v0           #lock:Ljava/lang/Boolean;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public static alarmOwner(J)Ljava/lang/String;
    .locals 6
    .parameter "id"

    .prologue
    const/16 v5, 0x29

    .line 2034
    const-wide/16 v2, -0x1

    cmp-long v2, p0, v2

    if-nez v2, :cond_0

    .line 2035
    const-string v2, "SyncManager"

    .line 2051
    :goto_0
    return-object v2

    .line 2037
    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    .line 2038
    .local v1, name:Ljava/lang/String;
    sget-boolean v2, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    if-eqz v2, :cond_1

    .line 2039
    sget-object v2, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    invoke-static {v2, p0, p1}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v0

    .line 2040
    .local v0, m:Lcom/android/email/provider/EmailContent$Mailbox;
    if-eqz v0, :cond_2

    .line 2041
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x28

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2051
    .end local v0           #m:Lcom/android/email/provider/EmailContent$Mailbox;
    :cond_1
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Mailbox "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 2044
    .restart local v0       #m:Lcom/android/email/provider/EmailContent$Mailbox;
    :cond_2
    sget-wide v2, Lcom/android/exchange/SyncManager;->MAILBOX_DUMMY_MIN:J

    cmp-long v2, p0, v2

    if-lez v2, :cond_1

    sget-wide v2, Lcom/android/exchange/SyncManager;->MAILBOX_DUMMY_MAX:J

    cmp-long v2, p0, v2

    if-gez v2, :cond_1

    .line 2047
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OoBMailbox:("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public static alert(Landroid/content/Context;J)V
    .locals 4
    .parameter "context"
    .parameter "id"

    .prologue
    .line 2125
    sget-object v1, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    .line 2126
    .local v1, syncManager:Lcom/android/exchange/SyncManager;
    invoke-static {}, Lcom/android/exchange/SyncManager;->checkSyncManagerServiceRunning()V

    .line 2127
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-gez v2, :cond_1

    .line 2128
    const-string v2, "ping SyncManager"

    invoke-static {v2}, Lcom/android/exchange/SyncManager;->kick(Ljava/lang/String;)V

    .line 2185
    :cond_0
    :goto_0
    return-void

    .line 2129
    :cond_1
    if-nez v1, :cond_2

    .line 2130
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/exchange/SyncManager;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 2133
    :cond_2
    sget-wide v2, Lcom/android/exchange/SyncManager;->MAILBOX_DUMMY_MIN:J

    cmp-long v2, p1, v2

    if-lez v2, :cond_3

    sget-wide v2, Lcom/android/exchange/SyncManager;->MAILBOX_DUMMY_MAX:J

    cmp-long v2, p1, v2

    if-gez v2, :cond_3

    .line 2136
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Alert! Shutting connectionManager. Watchdog for Out of Band Mailbox: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/exchange/SyncManager;->errorlog(Ljava/lang/String;)V

    .line 2137
    invoke-static {}, Lcom/android/exchange/SyncManager;->shutdownConnectionManager()V

    .line 2138
    sget-object v2, Lcom/android/exchange/SyncManager;->sSyncLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2139
    :try_start_0
    invoke-direct {v1, p1, p2}, Lcom/android/exchange/SyncManager;->releaseMailbox(J)V

    .line 2140
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 2144
    :cond_3
    iget-object v2, v1, Lcom/android/exchange/SyncManager;->mServiceMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exchange/AbstractSyncService;

    .line 2145
    .local v0, service:Lcom/android/exchange/AbstractSyncService;
    if-eqz v0, :cond_0

    .line 2148
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/exchange/SyncManager$7;

    invoke-direct {v3, v1, p1, p2, v0}, Lcom/android/exchange/SyncManager$7;-><init>(Lcom/android/exchange/SyncManager;JLcom/android/exchange/AbstractSyncService;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public static alwaysLog(Ljava/lang/String;)V
    .locals 1
    .parameter "str"

    .prologue
    .line 1430
    sget-boolean v0, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-nez v0, :cond_0

    .line 1431
    const-string v0, "EAS SyncManager"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1435
    :goto_0
    return-void

    .line 1433
    :cond_0
    invoke-static {p0}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static alwaysLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "str"

    .prologue
    .line 1449
    sget-boolean v0, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-nez v0, :cond_0

    .line 1450
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1454
    :goto_0
    return-void

    .line 1452
    :cond_0
    invoke-static {p0, p1}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static callback()Lcom/android/email/service/IEmailServiceCallback;
    .locals 1

    .prologue
    .line 1218
    sget-object v0, Lcom/android/exchange/SyncManager;->sCallbackProxy:Lcom/android/email/service/IEmailServiceCallback$Stub;

    return-object v0
.end method

.method private checkMailboxes()J
    .locals 53

    .prologue
    .line 2841
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 2842
    .local v21, deletedMailboxes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    sget-object v5, Lcom/android/exchange/SyncManager;->sSyncLock:Ljava/lang/Object;

    monitor-enter v5

    .line 2843
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/SyncManager;->mServiceMap:Ljava/util/HashMap;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .local v22, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    .line 2844
    .local v28, mailboxId:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v28

    invoke-static {v0, v1, v2}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v27

    .line 2845
    .local v27, m:Lcom/android/email/provider/EmailContent$Mailbox;
    if-nez v27, :cond_0

    .line 2846
    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v21

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2866
    .end local v22           #i$:Ljava/util/Iterator;
    .end local v27           #m:Lcom/android/email/provider/EmailContent$Mailbox;
    .end local v28           #mailboxId:J
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 2850
    .restart local v22       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_1
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_1
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/Long;

    .line 2851
    .local v28, mailboxId:Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/SyncManager;->mServiceMap:Ljava/util/HashMap;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Lcom/android/exchange/AbstractSyncService;

    .line 2852
    .local v45, svc:Lcom/android/exchange/AbstractSyncService;
    if-eqz v45, :cond_2

    move-object/from16 v0, v45

    iget-object v0, v0, Lcom/android/exchange/AbstractSyncService;->mThread:Ljava/lang/Thread;

    move-object v4, v0

    if-nez v4, :cond_3

    .line 2853
    :cond_2
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-object/from16 v0, p0

    move-wide v1, v6

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/SyncManager;->releaseMailbox(J)V

    goto :goto_1

    .line 2856
    :cond_3
    move-object/from16 v0, v45

    iget-object v0, v0, Lcom/android/exchange/AbstractSyncService;->mThread:Ljava/lang/Thread;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/Thread;->isAlive()Z

    move-result v17

    .line 2857
    .local v17, alive:Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Deleted mailbox: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v45

    iget-object v0, v0, Lcom/android/exchange/AbstractSyncService;->mMailboxName:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;)V

    .line 2858
    if-eqz v17, :cond_4

    .line 2859
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/android/exchange/SyncManager;->stopManualSync(J)V

    goto :goto_1

    .line 2861
    :cond_4
    const-string v4, "Removing from serviceMap"

    invoke-static {v4}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;)V

    .line 2862
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-object/from16 v0, p0

    move-wide v1, v6

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/SyncManager;->releaseMailbox(J)V

    goto :goto_1

    .line 2866
    .end local v17           #alive:Z
    .end local v28           #mailboxId:Ljava/lang/Long;
    .end local v45           #svc:Lcom/android/exchange/AbstractSyncService;
    :cond_5
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2868
    const-wide/32 v34, 0x1b7740

    .line 2869
    .local v34, nextWait:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v38

    .line 2873
    .local v38, now:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/SyncManager;->mAccountObserver:Lcom/android/exchange/SyncManager$AccountObserver;

    move-object v4, v0

    if-nez v4, :cond_6

    .line 2874
    const-string v4, "mAccountObserver null; service died??"

    invoke-static {v4}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;)V

    move-wide/from16 v36, v34

    .line 3084
    .end local v34           #nextWait:J
    .end local p0
    .local v36, nextWait:J
    :goto_2
    return-wide v36

    .line 2877
    .end local v36           #nextWait:J
    .restart local v34       #nextWait:J
    .restart local p0
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/SyncManager;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/email/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lcom/android/email/provider/EmailContent$Mailbox;->CONTENT_PROJECTION:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/SyncManager;->mAccountObserver:Lcom/android/exchange/SyncManager$AccountObserver;

    move-object v7, v0

    invoke-virtual {v7}, Lcom/android/exchange/SyncManager$AccountObserver;->getSyncableEasMailboxWhere()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 2882
    .local v19, c:Landroid/database/Cursor;
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v30

    .line 2884
    .local v30, masterAutoSync:Z
    :cond_7
    :goto_3
    :try_start_2
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_20

    .line 2885
    const/4 v4, 0x0

    move-object/from16 v0, v19

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v31

    .line 2887
    .local v31, mid:J
    const/4 v4, 0x4

    move-object/from16 v0, v19

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v15, v4

    .line 2888
    .local v15, acctId:J
    const/16 v4, 0x9

    move-object/from16 v0, v19

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move v0, v4

    int-to-long v0, v0

    move-wide/from16 v23, v0

    .line 2889
    .local v23, interval:J
    const/4 v4, 0x5

    move-object/from16 v0, v19

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v52

    .line 2890
    .local v52, type:I
    const/16 v42, 0x0

    .line 2891
    .local v42, service:Lcom/android/exchange/AbstractSyncService;
    sget-object v4, Lcom/android/exchange/SyncManager;->sSyncLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2892
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/SyncManager;->mServiceMap:Ljava/util/HashMap;

    move-object v5, v0

    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v43

    move-object/from16 v0, v43

    check-cast v0, Lcom/android/exchange/AbstractSyncService;

    move-object/from16 v42, v0

    .line 2893
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 2896
    const/16 v4, 0x44

    move/from16 v0, v52

    move v1, v4

    if-ne v0, v1, :cond_8

    const-wide/16 v4, -0x1

    cmp-long v4, v23, v4

    if-nez v4, :cond_8

    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/SyncManager;->mProvisionErrorExist:Ljava/util/HashMap;

    move-object v4, v0

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2902
    :cond_8
    if-nez v42, :cond_1a

    .line 2909
    sget-object v4, Lcom/android/exchange/SyncManager;->sSyncLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2912
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/SyncManager;->mProvisionErrorExist:Ljava/util/HashMap;

    move-object v5, v0

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/email/provider/EmailContent$Account;

    .line 2913
    .local v14, acct:Lcom/android/email/provider/EmailContent$Account;
    const/16 v5, 0x44

    move/from16 v0, v52

    move v1, v5

    if-eq v0, v1, :cond_9

    if-eqz v14, :cond_9

    .line 2914
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "syncErrorExist for account:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". Put hold on mailbox:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-wide/from16 v1, v31

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;)V

    .line 2915
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/SyncManager;->mSyncErrorMap:Ljava/util/HashMap;

    move-object v5, v0

    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    new-instance v7, Lcom/android/exchange/SyncManager$SyncError;

    const/4 v8, 0x4

    const/4 v9, 0x1

    move-object v0, v7

    move-object/from16 v1, p0

    move v2, v8

    move v3, v9

    invoke-direct {v0, v1, v2, v3}, Lcom/android/exchange/SyncManager$SyncError;-><init>(Lcom/android/exchange/SyncManager;IZ)V

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2917
    :cond_9
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 2922
    :try_start_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/exchange/SyncManager;->mBackgroundData:Z

    move v4, v0

    if-nez v4, :cond_a

    const/4 v4, 0x4

    move/from16 v0, v52

    move v1, v4

    if-ne v0, v1, :cond_7

    .line 2926
    :cond_a
    const/16 v4, 0x42

    move/from16 v0, v52

    move v1, v4

    if-eq v0, v1, :cond_b

    const/16 v4, 0x41

    move/from16 v0, v52

    move v1, v4

    if-ne v0, v1, :cond_f

    .line 2928
    :cond_b
    if-eqz v30, :cond_7

    .line 2933
    const/4 v4, 0x4

    move-object/from16 v0, v19

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v4, v4

    invoke-static {v4, v5}, Lcom/android/exchange/SyncManager;->getAccountById(J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v11

    .line 2935
    .local v11, account:Lcom/android/email/provider/EmailContent$Account;
    if-eqz v11, :cond_d

    .line 2936
    const/16 v4, 0x42

    move/from16 v0, v52

    move v1, v4

    if-ne v0, v1, :cond_e

    .line 2937
    const-string v18, "com.android.contacts"

    .line 2946
    .local v18, authority:Ljava/lang/String;
    :cond_c
    :goto_4
    new-instance v10, Landroid/accounts/Account;

    iget-object v4, v11, Lcom/android/email/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    const-string v5, "com.android.exchange"

    invoke-direct {v10, v4, v5}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2950
    .local v10, a:Landroid/accounts/Account;
    move-object v0, v10

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2953
    const/16 v4, 0x41

    move/from16 v0, v52

    move v1, v4

    if-ne v0, v1, :cond_d

    iget-wide v4, v11, Lcom/android/email/provider/EmailContent$Account;->mId:J

    move-object/from16 v0, p0

    move-wide v1, v4

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/SyncManager;->isCalendarEnabled(J)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2969
    .end local v10           #a:Landroid/accounts/Account;
    .end local v11           #account:Lcom/android/email/provider/EmailContent$Account;
    .end local v18           #authority:Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/SyncManager;->mSyncErrorMap:Ljava/util/HashMap;

    move-object v4, v0

    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lcom/android/exchange/SyncManager$SyncError;

    .line 2970
    .local v46, syncError:Lcom/android/exchange/SyncManager$SyncError;
    if-eqz v46, :cond_12

    .line 2972
    move-object/from16 v0, v46

    iget-boolean v0, v0, Lcom/android/exchange/SyncManager$SyncError;->fatal:Z

    move v4, v0

    if-eqz v4, :cond_10

    .line 2974
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Mailbox:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-wide/from16 v1, v31

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in fatal error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v46

    iget v0, v0, Lcom/android/exchange/SyncManager$SyncError;->reason:I

    move v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", Nothing we can do about fatal errors"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/16 :goto_3

    .line 3082
    .end local v14           #acct:Lcom/android/email/provider/EmailContent$Account;
    .end local v15           #acctId:J
    .end local v23           #interval:J
    .end local v31           #mid:J
    .end local v42           #service:Lcom/android/exchange/AbstractSyncService;
    .end local v46           #syncError:Lcom/android/exchange/SyncManager$SyncError;
    .end local v52           #type:I
    .end local p0
    :catchall_1
    move-exception v4

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    throw v4

    .line 2893
    .restart local v15       #acctId:J
    .restart local v23       #interval:J
    .restart local v31       #mid:J
    .restart local v42       #service:Lcom/android/exchange/AbstractSyncService;
    .restart local v52       #type:I
    .restart local p0
    :catchall_2
    move-exception v5

    :try_start_7
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 2917
    :catchall_3
    move-exception v5

    :try_start_9
    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :try_start_a
    throw v5

    .line 2939
    .restart local v11       #account:Lcom/android/email/provider/EmailContent$Account;
    .restart local v14       #acct:Lcom/android/email/provider/EmailContent$Account;
    :cond_e
    const-string v18, "com.android.calendar"

    .line 2940
    .restart local v18       #authority:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/SyncManager;->mCalendarObservers:Ljava/util/HashMap;

    move-object v4, v0

    iget-wide v5, v11, Lcom/android/email/provider/EmailContent$Account;->mId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 2943
    move-object/from16 v0, p0

    move-object v1, v11

    invoke-direct {v0, v1}, Lcom/android/exchange/SyncManager;->registerCalendarObserver(Lcom/android/email/provider/EmailContent$Account;)V

    goto/16 :goto_4

    .line 2958
    .end local v11           #account:Lcom/android/email/provider/EmailContent$Account;
    .end local v18           #authority:Ljava/lang/String;
    :cond_f
    const/4 v4, 0x6

    move/from16 v0, v52

    move v1, v4

    if-eq v0, v1, :cond_7

    .line 2962
    const/16 v4, 0x8

    move/from16 v0, v52

    move v1, v4

    if-ne v0, v1, :cond_d

    goto/16 :goto_3

    .line 2977
    .restart local v46       #syncError:Lcom/android/exchange/SyncManager$SyncError;
    :cond_10
    move-object/from16 v0, v46

    iget-wide v0, v0, Lcom/android/exchange/SyncManager$SyncError;->holdEndTime:J

    move-wide v4, v0

    cmp-long v4, v38, v4

    if-gez v4, :cond_11

    .line 2980
    move-object/from16 v0, v46

    iget-wide v0, v0, Lcom/android/exchange/SyncManager$SyncError;->holdEndTime:J

    move-wide v4, v0

    add-long v6, v38, v34

    cmp-long v4, v4, v6

    if-gez v4, :cond_7

    .line 2981
    move-object/from16 v0, v46

    iget-wide v0, v0, Lcom/android/exchange/SyncManager$SyncError;->holdEndTime:J

    move-wide v4, v0

    sub-long v34, v4, v38

    .line 2982
    const-string v4, "Release hold"

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exchange/SyncManager;->mNextWaitReason:Ljava/lang/String;

    .line 2984
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Mailbox:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-wide/from16 v1, v31

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in Release Hold. reason:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v46

    iget v0, v0, Lcom/android/exchange/SyncManager$SyncError;->reason:I

    move v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", nextWait="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-wide/16 v5, 0x3e8

    div-long v5, v34, v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " seconds"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2989
    :cond_11
    const-wide/16 v4, 0x0

    move-wide v0, v4

    move-object/from16 v2, v46

    iput-wide v0, v2, Lcom/android/exchange/SyncManager$SyncError;->holdEndTime:J

    .line 2997
    :cond_12
    const-wide/16 v4, -0x2

    cmp-long v4, v23, v4

    if-nez v4, :cond_13

    .line 2998
    const-class v4, Lcom/android/email/provider/EmailContent$Mailbox;

    move-object/from16 v0, v19

    move-object v1, v4

    invoke-static {v0, v1}, Lcom/android/email/provider/EmailContent;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/email/provider/EmailContent;

    move-result-object v27

    check-cast v27, Lcom/android/email/provider/EmailContent$Mailbox;

    .line 2999
    .restart local v27       #m:Lcom/android/email/provider/EmailContent$Mailbox;
    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move v2, v4

    move-object v3, v5

    invoke-direct {v0, v1, v2, v3}, Lcom/android/exchange/SyncManager;->requestSync(Lcom/android/email/provider/EmailContent$Mailbox;ILcom/android/exchange/Request;)V

    goto/16 :goto_3

    .line 3003
    .end local v27           #m:Lcom/android/email/provider/EmailContent$Mailbox;
    :cond_13
    const/16 v4, 0x44

    move/from16 v0, v52

    move v1, v4

    if-ne v0, v1, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/SyncManager;->mProvisionErrorExist:Ljava/util/HashMap;

    move-object v4, v0

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 3004
    const-class v4, Lcom/android/email/provider/EmailContent$Mailbox;

    move-object/from16 v0, v19

    move-object v1, v4

    invoke-static {v0, v1}, Lcom/android/email/provider/EmailContent;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/email/provider/EmailContent;

    move-result-object v27

    check-cast v27, Lcom/android/email/provider/EmailContent$Mailbox;

    .line 3005
    .restart local v27       #m:Lcom/android/email/provider/EmailContent$Mailbox;
    const/16 v4, 0x9

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move v2, v4

    move-object v3, v5

    invoke-direct {v0, v1, v2, v3}, Lcom/android/exchange/SyncManager;->requestSync(Lcom/android/email/provider/EmailContent$Mailbox;ILcom/android/exchange/Request;)V

    goto/16 :goto_3

    .line 3008
    .end local v27           #m:Lcom/android/email/provider/EmailContent$Mailbox;
    :cond_14
    const/4 v4, 0x4

    move/from16 v0, v52

    move v1, v4

    if-ne v0, v1, :cond_15

    .line 3009
    sget-object v4, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "mailboxKey=? and (syncServerId is null or syncServerId!=1)"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    move-object/from16 v0, p0

    move-object v1, v4

    move-object v2, v5

    move-object v3, v6

    invoke-static {v0, v1, v2, v3}, Lcom/android/email/provider/EmailContent;->count(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v20

    .line 3012
    .local v20, cnt:I
    if-lez v20, :cond_7

    .line 3013
    const-class v4, Lcom/android/email/provider/EmailContent$Mailbox;

    move-object/from16 v0, v19

    move-object v1, v4

    invoke-static {v0, v1}, Lcom/android/email/provider/EmailContent;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/email/provider/EmailContent;

    move-result-object v27

    check-cast v27, Lcom/android/email/provider/EmailContent$Mailbox;

    .line 3014
    .restart local v27       #m:Lcom/android/email/provider/EmailContent$Mailbox;
    new-instance v4, Lcom/android/exchange/EasOutboxService;

    move-object v0, v4

    move-object/from16 v1, p0

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/EasOutboxService;-><init>(Landroid/content/Context;Lcom/android/email/provider/EmailContent$Mailbox;)V

    move-object/from16 v0, p0

    move-object v1, v4

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/SyncManager;->startServiceThread(Lcom/android/exchange/AbstractSyncService;Lcom/android/email/provider/EmailContent$Mailbox;)V

    goto/16 :goto_3

    .line 3016
    .end local v20           #cnt:I
    .end local v27           #m:Lcom/android/email/provider/EmailContent$Mailbox;
    :cond_15
    const-wide/16 v4, 0x0

    cmp-long v4, v23, v4

    if-lez v4, :cond_7

    const-wide/16 v4, 0x5a0

    cmp-long v4, v23, v4

    if-gtz v4, :cond_7

    .line 3017
    const/16 v4, 0xa

    move-object/from16 v0, v19

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v25

    .line 3018
    .local v25, lastSync:J
    sub-long v43, v38, v25

    .line 3019
    .local v43, sinceLastSync:J
    const-wide/16 v4, 0x0

    cmp-long v4, v43, v4

    if-gez v4, :cond_16

    .line 3020
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WHOA! lastSync in the future for mailbox: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-wide/from16 v1, v31

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;)V

    .line 3021
    const-wide/32 v4, 0xea60

    mul-long v43, v23, v4

    .line 3023
    :cond_16
    const-wide/32 v4, 0xea60

    mul-long v4, v4, v23

    sub-long v50, v4, v43

    .line 3024
    .local v50, toNextSync:J
    const/4 v4, 0x1

    move-object/from16 v0, v19

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v33

    .line 3025
    .local v33, name:Ljava/lang/String;
    const-wide/16 v4, 0x0

    cmp-long v4, v50, v4

    if-gtz v4, :cond_17

    .line 3026
    const-class v4, Lcom/android/email/provider/EmailContent$Mailbox;

    move-object/from16 v0, v19

    move-object v1, v4

    invoke-static {v0, v1}, Lcom/android/email/provider/EmailContent;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/email/provider/EmailContent;

    move-result-object v27

    check-cast v27, Lcom/android/email/provider/EmailContent$Mailbox;

    .line 3027
    .restart local v27       #m:Lcom/android/email/provider/EmailContent$Mailbox;
    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move v2, v4

    move-object v3, v5

    invoke-direct {v0, v1, v2, v3}, Lcom/android/exchange/SyncManager;->requestSync(Lcom/android/email/provider/EmailContent$Mailbox;ILcom/android/exchange/Request;)V

    goto/16 :goto_3

    .line 3028
    .end local v27           #m:Lcom/android/email/provider/EmailContent$Mailbox;
    :cond_17
    cmp-long v4, v50, v34

    if-gez v4, :cond_19

    .line 3029
    move-wide/from16 v34, v50

    .line 3030
    sget-boolean v4, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v4, :cond_18

    .line 3031
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Next sync for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-wide/16 v5, 0x3e8

    div-long v5, v34, v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "s"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;)V

    .line 3033
    :cond_18
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Scheduled sync, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exchange/SyncManager;->mNextWaitReason:Ljava/lang/String;

    goto/16 :goto_3

    .line 3034
    :cond_19
    sget-boolean v4, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v4, :cond_7

    .line 3035
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Next sync for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-wide/16 v5, 0x3e8

    div-long v5, v50, v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "s"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 3039
    .end local v14           #acct:Lcom/android/email/provider/EmailContent$Account;
    .end local v25           #lastSync:J
    .end local v33           #name:Ljava/lang/String;
    .end local v43           #sinceLastSync:J
    .end local v46           #syncError:Lcom/android/exchange/SyncManager$SyncError;
    .end local v50           #toNextSync:J
    :cond_1a
    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/android/exchange/AbstractSyncService;->mThread:Ljava/lang/Thread;

    move-object/from16 v47, v0

    .line 3041
    .local v47, thread:Ljava/lang/Thread;
    if-eqz v47, :cond_1c

    invoke-virtual/range {v47 .. v47}, Ljava/lang/Thread;->isAlive()Z

    move-result v4

    if-nez v4, :cond_1c

    .line 3042
    sget-boolean v4, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v4, :cond_1b

    .line 3043
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Dead thread, mailbox released: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    move-object/from16 v0, v19

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;)V

    .line 3046
    :cond_1b
    move-object/from16 v0, p0

    move-wide/from16 v1, v31

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/SyncManager;->releaseMailbox(J)V

    .line 3048
    const-wide/16 v4, 0xbb8

    cmp-long v4, v34, v4

    if-lez v4, :cond_7

    .line 3049
    const-wide/16 v34, 0xbb8

    .line 3050
    const-string v4, "Clean up dead thread(s)"

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exchange/SyncManager;->mNextWaitReason:Ljava/lang/String;

    goto/16 :goto_3

    .line 3053
    :cond_1c
    move-object/from16 v0, v42

    iget-wide v0, v0, Lcom/android/exchange/AbstractSyncService;->mRequestTime:J

    move-wide/from16 v40, v0

    .line 3054
    .local v40, requestTime:J
    const-wide/16 v4, 0x0

    cmp-long v4, v40, v4

    if-lez v4, :cond_7

    .line 3055
    sub-long v48, v40, v38

    .line 3056
    .local v48, timeToRequest:J
    move-object/from16 v0, v42

    instance-of v0, v0, Lcom/android/exchange/AbstractSyncService;

    move v4, v0

    if-eqz v4, :cond_1d

    const-wide/16 v4, 0x0

    cmp-long v4, v48, v4

    if-gtz v4, :cond_1d

    .line 3057
    const-wide/16 v4, 0x0

    move-wide v0, v4

    move-object/from16 v2, v42

    iput-wide v0, v2, Lcom/android/exchange/AbstractSyncService;->mRequestTime:J

    .line 3058
    invoke-virtual/range {v42 .. v42}, Lcom/android/exchange/AbstractSyncService;->alarm()Z

    goto/16 :goto_3

    .line 3059
    :cond_1d
    const-wide/16 v4, 0x0

    cmp-long v4, v40, v4

    if-lez v4, :cond_7

    cmp-long v4, v48, v34

    if-gez v4, :cond_7

    .line 3060
    const-wide/32 v4, 0xa1220

    cmp-long v4, v48, v4

    if-gez v4, :cond_1f

    .line 3061
    const-wide/16 v4, 0xfa

    cmp-long v4, v48, v4

    if-gez v4, :cond_1e

    const-wide/16 v4, 0xfa

    move-wide/from16 v34, v4

    .line 3062
    :goto_5
    const-string v4, "Sync data change"

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exchange/SyncManager;->mNextWaitReason:Ljava/lang/String;

    goto/16 :goto_3

    :cond_1e
    move-wide/from16 v34, v48

    .line 3061
    goto :goto_5

    .line 3064
    :cond_1f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Illegal timeToRequest: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-wide/from16 v1, v48

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 3072
    .end local v15           #acctId:J
    .end local v23           #interval:J
    .end local v31           #mid:J
    .end local v40           #requestTime:J
    .end local v42           #service:Lcom/android/exchange/AbstractSyncService;
    .end local v47           #thread:Ljava/lang/Thread;
    .end local v48           #timeToRequest:J
    .end local v52           #type:I
    :cond_20
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->requery()Z

    .line 3073
    .end local p0
    :cond_21
    :goto_6
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_22

    .line 3074
    const/4 v4, 0x4

    move-object/from16 v0, v19

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v4, v4

    invoke-static {v4, v5}, Lcom/android/exchange/SyncManager;->getAccountById(J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v11

    .line 3075
    .restart local v11       #account:Lcom/android/email/provider/EmailContent$Account;
    invoke-virtual {v11}, Lcom/android/email/provider/EmailContent$Account;->getSyncScheduleData()Lcom/android/exchange/SyncScheduleData;

    move-result-object v4

    invoke-static {v4}, Lcom/android/exchange/SyncScheduler;->getIsPeakAndNextAlarm(Lcom/android/exchange/SyncScheduleData;)Landroid/util/Pair;

    move-result-object v4

    move-object v0, v4

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 p0, v0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Long;->longValue()J
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    move-result-wide v12

    .line 3076
    .local v12, accountNextAlarm:J
    cmp-long v4, v12, v34

    if-gez v4, :cond_21

    .line 3077
    move-wide/from16 v34, v12

    goto :goto_6

    .line 3082
    .end local v11           #account:Lcom/android/email/provider/EmailContent$Account;
    .end local v12           #accountNextAlarm:J
    :cond_22
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    move-wide/from16 v36, v34

    .line 3084
    .end local v34           #nextWait:J
    .restart local v36       #nextWait:J
    goto/16 :goto_2
.end method

.method private checkPIMSyncSettings()V
    .locals 5

    .prologue
    .line 2325
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {}, Lcom/android/exchange/SyncManager;->getAccountList()Lcom/android/exchange/SyncManager$AccountList;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2331
    .local v1, easAccounts:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/provider/EmailContent$Account;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/provider/EmailContent$Account;

    .line 2332
    .local v0, account:Lcom/android/email/provider/EmailContent$Account;
    const/16 v3, 0x42

    const-string v4, "com.android.contacts"

    invoke-direct {p0, v0, v3, v4}, Lcom/android/exchange/SyncManager;->updatePIMSyncSettings(Lcom/android/email/provider/EmailContent$Account;ILjava/lang/String;)V

    .line 2333
    const/16 v3, 0x41

    const-string v4, "com.android.calendar"

    invoke-direct {p0, v0, v3, v4}, Lcom/android/exchange/SyncManager;->updatePIMSyncSettings(Lcom/android/email/provider/EmailContent$Account;ILjava/lang/String;)V

    goto :goto_0

    .line 2336
    .end local v0           #account:Lcom/android/email/provider/EmailContent$Account;
    :cond_0
    return-void
.end method

.method public static checkServiceExist(J)Z
    .locals 5
    .parameter "mailboxId"

    .prologue
    const/4 v4, 0x0

    .line 3252
    sget-object v0, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    .line 3253
    .local v0, syncManager:Lcom/android/exchange/SyncManager;
    if-nez v0, :cond_0

    move v1, v4

    .line 3260
    :goto_0
    return v1

    .line 3254
    :cond_0
    sget-object v1, Lcom/android/exchange/SyncManager;->sSyncLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3255
    :try_start_0
    iget-object v2, v0, Lcom/android/exchange/SyncManager;->mServiceMap:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 3256
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkServiceExist: Service for mailboxID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " already exist"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;)V

    .line 3257
    const/4 v2, 0x1

    monitor-exit v1

    move v1, v2

    goto :goto_0

    .line 3259
    :cond_1
    monitor-exit v1

    move v1, v4

    .line 3260
    goto :goto_0

    .line 3259
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method static checkSyncManagerServiceRunning()V
    .locals 3

    .prologue
    .line 1699
    sget-object v0, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    .line 1700
    .local v0, syncManager:Lcom/android/exchange/SyncManager;
    if-nez v0, :cond_1

    .line 1705
    :cond_0
    :goto_0
    return-void

    .line 1701
    :cond_1
    sget-object v1, Lcom/android/exchange/SyncManager;->sServiceThread:Ljava/lang/Thread;

    if-nez v1, :cond_0

    .line 1702
    const-string v1, "!!! checkSyncManagerServiceRunning; starting service..."

    invoke-static {v1}, Lcom/android/exchange/SyncManager;->alwaysLog(Ljava/lang/String;)V

    .line 1703
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/exchange/SyncManager;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/android/exchange/SyncManager;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method private clearAlarm(J)V
    .locals 5
    .parameter "id"

    .prologue
    .line 2056
    iget-object v2, p0, Lcom/android/exchange/SyncManager;->mPendingIntents:Ljava/util/HashMap;

    monitor-enter v2

    .line 2057
    :try_start_0
    iget-object v3, p0, Lcom/android/exchange/SyncManager;->mPendingIntents:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    .line 2058
    .local v1, pi:Landroid/app/PendingIntent;
    if-eqz v1, :cond_0

    .line 2059
    const-string v3, "alarm"

    invoke-virtual {p0, v3}, Lcom/android/exchange/SyncManager;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 2060
    .local v0, alarmManager:Landroid/app/AlarmManager;
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 2062
    iget-object v3, p0, Lcom/android/exchange/SyncManager;->mPendingIntents:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2064
    .end local v0           #alarmManager:Landroid/app/AlarmManager;
    :cond_0
    monitor-exit v2

    .line 2065
    return-void

    .line 2064
    .end local v1           #pi:Landroid/app/PendingIntent;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private clearAlarms()V
    .locals 5

    .prologue
    .line 2085
    const-string v3, "alarm"

    invoke-virtual {p0, v3}, Lcom/android/exchange/SyncManager;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 2086
    .local v0, alarmManager:Landroid/app/AlarmManager;
    iget-object v3, p0, Lcom/android/exchange/SyncManager;->mPendingIntents:Ljava/util/HashMap;

    monitor-enter v3

    .line 2087
    :try_start_0
    iget-object v4, p0, Lcom/android/exchange/SyncManager;->mPendingIntents:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    .line 2088
    .local v2, pi:Landroid/app/PendingIntent;
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 2091
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #pi:Landroid/app/PendingIntent;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 2090
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/android/exchange/SyncManager;->mPendingIntents:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 2091
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2092
    return-void
.end method

.method public static clearWatchdogAlarm(J)V
    .locals 1
    .parameter "id"

    .prologue
    .line 2111
    sget-object v0, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    .line 2112
    .local v0, syncManager:Lcom/android/exchange/SyncManager;
    if-eqz v0, :cond_0

    .line 2113
    invoke-direct {v0, p0, p1}, Lcom/android/exchange/SyncManager;->clearAlarm(J)V

    .line 2115
    :cond_0
    return-void
.end method

.method public static done(Lcom/android/exchange/AbstractSyncService;)V
    .locals 9
    .parameter "svc"

    .prologue
    .line 3315
    sget-object v5, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    .line 3316
    .local v5, syncManager:Lcom/android/exchange/SyncManager;
    if-nez v5, :cond_0

    .line 3388
    .end local v5           #syncManager:Lcom/android/exchange/SyncManager;
    .end local p0
    :goto_0
    return-void

    .line 3317
    .restart local v5       #syncManager:Lcom/android/exchange/SyncManager;
    .restart local p0
    :cond_0
    sget-object v6, Lcom/android/exchange/SyncManager;->sSyncLock:Ljava/lang/Object;

    monitor-enter v6

    .line 3318
    :try_start_0
    iget-wide v2, p0, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    .line 3319
    .local v2, mailboxId:J
    iget-object v0, v5, Lcom/android/exchange/SyncManager;->mSyncErrorMap:Ljava/util/HashMap;

    .line 3320
    .local v0, errorMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/exchange/SyncManager$SyncError;>;"
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/exchange/SyncManager$SyncError;

    .line 3321
    .local v4, syncError:Lcom/android/exchange/SyncManager$SyncError;
    invoke-direct {v5, v2, v3}, Lcom/android/exchange/SyncManager;->releaseMailbox(J)V

    .line 3322
    iget v1, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    .line 3323
    .local v1, exitStatus:I
    packed-switch v1, :pswitch_data_0

    .line 3386
    .end local v0           #errorMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/exchange/SyncManager$SyncError;>;"
    .end local v1           #exitStatus:I
    .end local v2           #mailboxId:J
    .end local v4           #syncError:Lcom/android/exchange/SyncManager$SyncError;
    .end local v5           #syncManager:Lcom/android/exchange/SyncManager;
    .end local p0
    :cond_1
    :goto_1
    const-string p0, "sync completed"

    invoke-static {p0}, Lcom/android/exchange/SyncManager;->kick(Ljava/lang/String;)V

    .line 3387
    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 3325
    .restart local v0       #errorMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/exchange/SyncManager$SyncError;>;"
    .restart local v1       #exitStatus:I
    .restart local v2       #mailboxId:J
    .restart local v4       #syncError:Lcom/android/exchange/SyncManager$SyncError;
    .restart local v5       #syncManager:Lcom/android/exchange/SyncManager;
    .restart local p0
    :pswitch_0
    :try_start_1
    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->mRequests:Ljava/util/ArrayList;

    .end local v1           #exitStatus:I
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 3328
    :cond_2
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3330
    const-class v0, Lcom/android/exchange/SyncManager;

    .end local v0           #errorMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/exchange/SyncManager$SyncError;>;"
    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3331
    const/4 v1, 0x0

    :try_start_2
    sput v1, Lcom/android/exchange/SyncManager;->sClientConnectionManagerShutdownCount:I

    .line 3332
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3335
    :try_start_3
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget v0, v0, Lcom/android/email/provider/EmailContent$Account;->mSyncInterval:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    const/16 v1, 0x44

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Account;->mSyncKey:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Account;->mSyncKey:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .end local v2           #mailboxId:J
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    const/16 v1, 0x44

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mSyncKey:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mSyncKey:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_4
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget v0, v0, Lcom/android/email/provider/EmailContent$Account;->mSyncInterval:I

    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget v1, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mSyncInterval:I

    if-eq v0, v1, :cond_1

    .line 3347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSyncInterval mismatch mailbox.syncInterval:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget v1, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mSyncInterval:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " account.syncInterval:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget v1, v1, Lcom/android/email/provider/EmailContent$Account;->mSyncInterval:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;)V

    .line 3348
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 3349
    .local v0, cv:Landroid/content/ContentValues;
    const-string v1, "syncInterval"

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3350
    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/email/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    .end local v4           #syncError:Lcom/android/exchange/SyncManager$SyncError;
    const/4 v5, 0x0

    iget-object p0, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    .end local v5           #syncManager:Lcom/android/exchange/SyncManager;
    .end local p0
    iget-wide v7, p0, Lcom/android/email/provider/EmailContent$Mailbox;->mId:J

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 3332
    .end local v0           #cv:Landroid/content/ContentValues;
    .restart local v2       #mailboxId:J
    .restart local v4       #syncError:Lcom/android/exchange/SyncManager$SyncError;
    .restart local v5       #syncManager:Lcom/android/exchange/SyncManager;
    :catchall_1
    move-exception p0

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw p0

    .line 3358
    .local v0, errorMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/exchange/SyncManager$SyncError;>;"
    .restart local v1       #exitStatus:I
    .restart local p0
    :pswitch_1
    invoke-static {v5, v2, v3}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object p0

    .line 3359
    .local p0, m:Lcom/android/email/provider/EmailContent$Mailbox;
    if-nez p0, :cond_5

    monitor-exit v6

    goto/16 :goto_0

    .line 3360
    :cond_5
    if-eqz v4, :cond_6

    .line 3361
    invoke-virtual {v4}, Lcom/android/exchange/SyncManager$SyncError;->escalate()V

    .line 3362
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0           #errorMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/exchange/SyncManager$SyncError;>;"
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/android/email/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    .end local p0           #m:Lcom/android/email/provider/EmailContent$Mailbox;
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " held for "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget-wide v0, v4, Lcom/android/exchange/SyncManager$SyncError;->holdDelay:J

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "ms"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3364
    .restart local v0       #errorMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/exchange/SyncManager$SyncError;>;"
    .restart local p0       #m:Lcom/android/email/provider/EmailContent$Mailbox;
    :cond_6
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .end local v2           #mailboxId:J
    new-instance v3, Lcom/android/exchange/SyncManager$SyncError;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x0

    invoke-direct {v3, v5, v1, v4}, Lcom/android/exchange/SyncManager$SyncError;-><init>(Lcom/android/exchange/SyncManager;IZ)V

    .end local v4           #syncError:Lcom/android/exchange/SyncManager$SyncError;
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3365
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0           #errorMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/exchange/SyncManager$SyncError;>;"
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/android/email/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    .end local p0           #m:Lcom/android/email/provider/EmailContent$Mailbox;
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " added to syncErrorMap, hold for 15s"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3371
    .restart local v0       #errorMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/exchange/SyncManager$SyncError;>;"
    .restart local v2       #mailboxId:J
    .restart local v4       #syncError:Lcom/android/exchange/SyncManager$SyncError;
    .local p0, svc:Lcom/android/exchange/AbstractSyncService;
    :pswitch_2
    iget-object v4, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    .end local v4           #syncError:Lcom/android/exchange/SyncManager$SyncError;
    if-eqz v4, :cond_1

    .line 3372
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setting the provisioning error for mAccount: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v7, v7, Lcom/android/email/provider/EmailContent$Account;->mId:J

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;)V

    .line 3373
    sget-object v4, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    iget-object v4, v4, Lcom/android/exchange/SyncManager;->mProvisionErrorExist:Ljava/util/HashMap;

    iget-object v7, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v7, v7, Lcom/android/email/provider/EmailContent$Account;->mId:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iget-object p0, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    .end local p0           #svc:Lcom/android/exchange/AbstractSyncService;
    invoke-virtual {v4, v7, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3374
    const-wide/16 v7, 0x0

    cmp-long p0, v2, v7

    if-lez p0, :cond_1

    .line 3375
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    new-instance v4, Lcom/android/exchange/SyncManager$SyncError;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v7, 0x1

    invoke-direct {v4, v5, v1, v7}, Lcom/android/exchange/SyncManager$SyncError;-><init>(Lcom/android/exchange/SyncManager;IZ)V

    invoke-virtual {v0, p0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3376
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mailbox: "

    .end local v0           #errorMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/exchange/SyncManager$SyncError;>;"
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " put to hold due to security failure"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3383
    .restart local v0       #errorMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/exchange/SyncManager$SyncError;>;"
    .restart local v4       #syncError:Lcom/android/exchange/SyncManager$SyncError;
    .restart local p0       #svc:Lcom/android/exchange/AbstractSyncService;
    :pswitch_3
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    .end local p0           #svc:Lcom/android/exchange/AbstractSyncService;
    new-instance v2, Lcom/android/exchange/SyncManager$SyncError;

    .end local v2           #mailboxId:J
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x1

    invoke-direct {v2, v5, v1, v3}, Lcom/android/exchange/SyncManager$SyncError;-><init>(Lcom/android/exchange/SyncManager;IZ)V

    invoke-virtual {v0, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1

    .line 3323
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public static doneOutOfBand(Lcom/android/exchange/AbstractSyncService;)V
    .locals 12
    .parameter "svc"

    .prologue
    .line 3401
    sget-object v7, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    .line 3402
    .local v7, syncManager:Lcom/android/exchange/SyncManager;
    if-nez v7, :cond_0

    .line 3455
    :goto_0
    return-void

    .line 3403
    :cond_0
    sget-object v8, Lcom/android/exchange/SyncManager;->sSyncLock:Ljava/lang/Object;

    monitor-enter v8

    .line 3404
    :try_start_0
    iget-wide v4, p0, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    .line 3405
    .local v4, mailboxId:J
    iget-object v0, v7, Lcom/android/exchange/SyncManager;->mSyncErrorMap:Ljava/util/HashMap;

    .line 3406
    .local v0, errorMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/exchange/SyncManager$SyncError;>;"
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/exchange/SyncManager$SyncError;

    .line 3410
    .local v6, syncError:Lcom/android/exchange/SyncManager$SyncError;
    iget v1, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    .line 3411
    .local v1, exitStatus:I
    packed-switch v1, :pswitch_data_0

    .line 3453
    :cond_1
    :goto_1
    const-string v9, "sync completed"

    invoke-static {v9}, Lcom/android/exchange/SyncManager;->kick(Ljava/lang/String;)V

    .line 3454
    monitor-exit v8

    goto :goto_0

    .end local v0           #errorMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/exchange/SyncManager$SyncError;>;"
    .end local v1           #exitStatus:I
    .end local v4           #mailboxId:J
    .end local v6           #syncError:Lcom/android/exchange/SyncManager$SyncError;
    :catchall_0
    move-exception v9

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    .line 3415
    .restart local v0       #errorMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/exchange/SyncManager$SyncError;>;"
    .restart local v1       #exitStatus:I
    .restart local v4       #mailboxId:J
    .restart local v6       #syncError:Lcom/android/exchange/SyncManager$SyncError;
    :pswitch_0
    :try_start_1
    const-class v9, Lcom/android/exchange/SyncManager;

    monitor-enter v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3416
    const/4 v10, 0x0

    :try_start_2
    sput v10, Lcom/android/exchange/SyncManager;->sClientConnectionManagerShutdownCount:I

    .line 3417
    monitor-exit v9

    goto :goto_1

    :catchall_1
    move-exception v10

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    throw v10

    .line 3420
    :pswitch_1
    invoke-static {v7, v4, v5}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v2

    .line 3421
    .local v2, m:Lcom/android/email/provider/EmailContent$Mailbox;
    if-nez v2, :cond_2

    monitor-exit v8

    goto :goto_0

    .line 3422
    :cond_2
    if-eqz v6, :cond_3

    .line 3423
    invoke-virtual {v6}, Lcom/android/exchange/SyncManager$SyncError;->escalate()V

    .line 3424
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v2, Lcom/android/email/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " held for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, v6, Lcom/android/exchange/SyncManager$SyncError;->holdDelay:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "ms"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 3426
    :cond_3
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    new-instance v10, Lcom/android/exchange/SyncManager$SyncError;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v11, 0x0

    invoke-direct {v10, v7, v1, v11}, Lcom/android/exchange/SyncManager$SyncError;-><init>(Lcom/android/exchange/SyncManager;IZ)V

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3427
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v2, Lcom/android/email/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " added to syncErrorMap, hold for 15s"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 3433
    .end local v2           #m:Lcom/android/email/provider/EmailContent$Mailbox;
    :pswitch_2
    iget-object v9, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    if-eqz v9, :cond_1

    .line 3434
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setting the provisioning error for mAccount: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v10, v10, Lcom/android/email/provider/EmailContent$Account;->mId:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;)V

    .line 3435
    sget-object v9, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    iget-object v9, v9, Lcom/android/exchange/SyncManager;->mProvisionErrorExist:Ljava/util/HashMap;

    iget-object v10, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v10, v10, Lcom/android/email/provider/EmailContent$Account;->mId:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    iget-object v11, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v9, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3436
    const-wide/16 v9, 0x0

    cmp-long v9, v4, v9

    if-lez v9, :cond_1

    .line 3438
    invoke-static {v7, v4, v5}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v3

    .line 3439
    .local v3, m1:Lcom/android/email/provider/EmailContent$Mailbox;
    if-eqz v3, :cond_1

    iget v9, v3, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    const/16 v10, 0x44

    if-eq v9, v10, :cond_1

    .line 3440
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    new-instance v10, Lcom/android/exchange/SyncManager$SyncError;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v11, 0x1

    invoke-direct {v10, v7, v1, v11}, Lcom/android/exchange/SyncManager$SyncError;-><init>(Lcom/android/exchange/SyncManager;IZ)V

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3441
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mailbox: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " put to hold due to security failure"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3450
    .end local v3           #m1:Lcom/android/email/provider/EmailContent$Mailbox;
    :pswitch_3
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    new-instance v10, Lcom/android/exchange/SyncManager$SyncError;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v11, 0x1

    invoke-direct {v10, v7, v1, v11}, Lcom/android/exchange/SyncManager$SyncError;-><init>(Lcom/android/exchange/SyncManager;IZ)V

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 3411
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public static errorlog(Ljava/lang/String;)V
    .locals 2
    .parameter "str"

    .prologue
    const-string v1, "EAS SyncManager"

    .line 1440
    sget-boolean v0, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v0, :cond_0

    .line 1441
    const-string v0, "EAS SyncManager"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1442
    sget-boolean v0, Lcom/android/exchange/Eas;->FILE_LOG:Z

    if-eqz v0, :cond_0

    .line 1443
    const-string v0, "EAS SyncManager"

    invoke-static {v1, p0}, Lcom/android/exchange/utility/FileLogger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1446
    :cond_0
    return-void
.end method

.method public static exchangeAccountsExist()Z
    .locals 12

    .prologue
    const/4 v3, 0x0

    const/4 v11, 0x0

    .line 994
    invoke-static {}, Lcom/android/exchange/SyncManager;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 995
    .local v7, context:Landroid/content/Context;
    if-nez v7, :cond_1

    move v0, v11

    .line 1011
    :cond_0
    :goto_0
    return v0

    .line 997
    :cond_1
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/email/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/email/provider/EmailContent$Account;->CONTENT_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 999
    .local v6, c:Landroid/database/Cursor;
    if-nez v6, :cond_2

    move v0, v11

    .line 1000
    goto :goto_0

    .line 1002
    :cond_2
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1003
    const/4 v0, 0x6

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 1004
    .local v9, hostAuthId:J
    const-wide/16 v0, 0x0

    cmp-long v0, v9, v0

    if-lez v0, :cond_2

    .line 1005
    invoke-static {v7, v9, v10}, Lcom/android/email/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$HostAuth;

    move-result-object v8

    .line 1006
    .local v8, ha:Lcom/android/email/provider/EmailContent$HostAuth;
    if-eqz v8, :cond_2

    iget-object v0, v8, Lcom/android/email/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    const-string v1, "eas"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    .line 1007
    const/4 v0, 0x1

    .line 1013
    if-eqz v6, :cond_0

    .line 1014
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1013
    .end local v8           #ha:Lcom/android/email/provider/EmailContent$HostAuth;
    .end local v9           #hostAuthId:J
    :cond_3
    if-eqz v6, :cond_4

    .line 1014
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    move v0, v11

    .line 1011
    goto :goto_0

    .line 1013
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    .line 1014
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1013
    :cond_5
    throw v0
.end method

.method public static folderListReloaded(J)V
    .locals 2
    .parameter "acctId"

    .prologue
    .line 1993
    sget-object v0, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    .line 1994
    .local v0, syncManager:Lcom/android/exchange/SyncManager;
    if-eqz v0, :cond_0

    .line 1995
    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/exchange/SyncManager;->stopAccountSyncs(JZ)V

    .line 1996
    const-string v1, "reload folder list"

    invoke-static {v1}, Lcom/android/exchange/SyncManager;->kick(Ljava/lang/String;)V

    .line 1998
    :cond_0
    return-void
.end method

.method public static getAccountById(J)Lcom/android/email/provider/EmailContent$Account;
    .locals 2
    .parameter "accountId"

    .prologue
    .line 1230
    sget-object v0, Lcom/android/exchange/SyncManager;->sAccountList:Lcom/android/exchange/SyncManager$AccountList;

    monitor-enter v0

    .line 1231
    :try_start_0
    sget-object v1, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    iget-object v1, v1, Lcom/android/exchange/SyncManager;->mAccountObserver:Lcom/android/exchange/SyncManager$AccountObserver;

    iget-object v1, v1, Lcom/android/exchange/SyncManager$AccountObserver;->mAccounts:Lcom/android/exchange/SyncManager$AccountList;

    invoke-virtual {v1, p0, p1}, Lcom/android/exchange/SyncManager$AccountList;->getById(J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1232
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getAccountList()Lcom/android/exchange/SyncManager$AccountList;
    .locals 1

    .prologue
    .line 1222
    sget-object v0, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    if-eqz v0, :cond_0

    .line 1223
    sget-object v0, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    iget-object v0, v0, Lcom/android/exchange/SyncManager;->mAccountObserver:Lcom/android/exchange/SyncManager$AccountObserver;

    iget-object v0, v0, Lcom/android/exchange/SyncManager$AccountObserver;->mAccounts:Lcom/android/exchange/SyncManager$AccountList;

    .line 1225
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/exchange/SyncManager;->EMPTY_ACCOUNT_LIST:Lcom/android/exchange/SyncManager$AccountList;

    goto :goto_0
.end method

.method public static declared-synchronized getClientConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;
    .locals 9

    .prologue
    .line 1754
    const-class v4, Lcom/android/exchange/SyncManager;

    monitor-enter v4

    :try_start_0
    sget-object v5, Lcom/android/exchange/SyncManager;->sClientConnectionManager:Lorg/apache/http/conn/ClientConnectionManager;

    if-nez v5, :cond_1

    .line 1758
    sget v5, Lcom/android/exchange/SyncManager;->sClientConnectionManagerShutdownCount:I

    const/4 v6, 0x2

    if-le v5, v6, :cond_0

    .line 1759
    const-string v5, "Shutting down process to unblock threads"

    invoke-static {v5}, Lcom/android/exchange/SyncManager;->alwaysLog(Ljava/lang/String;)V

    .line 1760
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-static {v5}, Landroid/os/Process;->killProcess(I)V

    .line 1763
    :cond_0
    new-instance v1, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 1764
    .local v1, registry:Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v5, Lorg/apache/http/conn/scheme/Scheme;

    const-string v6, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v7

    const/16 v8, 0x50

    invoke-direct {v5, v6, v7, v8}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v5}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 1767
    new-instance v3, Lcom/android/exchange/SSLSocketFactory;

    const/16 v5, 0x4e20

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/android/email/mail/transport/SSLUtils;->getSSLSocketFactory(IZ)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/android/exchange/SSLSocketFactory;-><init>(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 1768
    .local v3, sf1:Lcom/android/exchange/SSLSocketFactory;
    new-instance v5, Lorg/apache/http/conn/scheme/Scheme;

    const-string v6, "https"

    const/16 v7, 0x1bb

    invoke-direct {v5, v6, v3, v7}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v5}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 1772
    new-instance v2, Lcom/android/exchange/SSLSocketFactory;

    const/16 v5, 0x4e20

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/android/email/mail/transport/SSLUtils;->getSSLSocketFactory(IZ)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/android/exchange/SSLSocketFactory;-><init>(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 1773
    .local v2, sf:Lcom/android/exchange/SSLSocketFactory;
    sget-object v5, Lcom/android/exchange/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {v2, v5}, Lcom/android/exchange/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    .line 1775
    new-instance v5, Lorg/apache/http/conn/scheme/Scheme;

    const-string v6, "httpts"

    const/16 v7, 0x1bb

    invoke-direct {v5, v6, v2, v7}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v5}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 1777
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 1778
    .local v0, params:Lorg/apache/http/params/HttpParams;
    const-string v5, "http.conn-manager.max-total"

    const/16 v6, 0x19

    invoke-interface {v0, v5, v6}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    .line 1779
    const-string v5, "http.conn-manager.max-per-route"

    sget-object v6, Lcom/android/exchange/SyncManager;->sConnPerRoute:Lorg/apache/http/conn/params/ConnPerRoute;

    invoke-interface {v0, v5, v6}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 1781
    const-string v5, "http.conn-manager.timeout"

    const/16 v6, 0x4e20

    invoke-interface {v0, v5, v6}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    .line 1782
    new-instance v5, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v5, v0, v1}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    sput-object v5, Lcom/android/exchange/SyncManager;->sClientConnectionManager:Lorg/apache/http/conn/ClientConnectionManager;

    .line 1785
    .end local v0           #params:Lorg/apache/http/params/HttpParams;
    .end local v1           #registry:Lorg/apache/http/conn/scheme/SchemeRegistry;
    .end local v2           #sf:Lcom/android/exchange/SSLSocketFactory;
    .end local v3           #sf1:Lcom/android/exchange/SSLSocketFactory;
    :cond_1
    sget-object v5, Lcom/android/exchange/SyncManager;->sClientConnectionManager:Lorg/apache/http/conn/ClientConnectionManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    return-object v5

    .line 1754
    :catchall_0
    move-exception v5

    monitor-exit v4

    throw v5
.end method

.method public static declared-synchronized getClientConnectionManagerForLoadMore()Lorg/apache/http/conn/ClientConnectionManager;
    .locals 9

    .prologue
    const-string v4, "Shutting down process to unblock threads"

    const-string v4, "Email"

    .line 1790
    const-class v4, Lcom/android/exchange/SyncManager;

    monitor-enter v4

    :try_start_0
    sget-object v5, Lcom/android/exchange/SyncManager;->lmClientConnectionManager:Lorg/apache/http/conn/ClientConnectionManager;

    if-nez v5, :cond_1

    .line 1791
    const-string v5, "Email"

    const-string v6, "getClientConnectionManagerForLoadMore"

    invoke-static {v5, v6}, Lcom/android/exchange/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1796
    sget v5, Lcom/android/exchange/SyncManager;->lmClientConnectionManagerShutdownCount:I

    const/4 v6, 0x2

    if-le v5, v6, :cond_0

    .line 1797
    const-string v5, "Email"

    const-string v6, "Shutting down process to unblock threads"

    invoke-static {v5, v6}, Lcom/android/exchange/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1798
    const-string v5, "Shutting down process to unblock threads"

    invoke-static {v5}, Lcom/android/exchange/SyncManager;->alwaysLog(Ljava/lang/String;)V

    .line 1799
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-static {v5}, Landroid/os/Process;->killProcess(I)V

    .line 1802
    :cond_0
    new-instance v1, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 1803
    .local v1, registry:Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v5, Lorg/apache/http/conn/scheme/Scheme;

    const-string v6, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v7

    const/16 v8, 0x50

    invoke-direct {v5, v6, v7, v8}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v5}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 1806
    new-instance v3, Lcom/android/exchange/SSLSocketFactory;

    const/16 v5, 0x4e20

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/android/email/mail/transport/SSLUtils;->getSSLSocketFactory(IZ)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/android/exchange/SSLSocketFactory;-><init>(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 1807
    .local v3, sf1:Lcom/android/exchange/SSLSocketFactory;
    new-instance v5, Lorg/apache/http/conn/scheme/Scheme;

    const-string v6, "https"

    const/16 v7, 0x1bb

    invoke-direct {v5, v6, v3, v7}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v5}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 1811
    new-instance v2, Lcom/android/exchange/SSLSocketFactory;

    const/16 v5, 0x4e20

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/android/email/mail/transport/SSLUtils;->getSSLSocketFactory(IZ)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/android/exchange/SSLSocketFactory;-><init>(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 1812
    .local v2, sf:Lcom/android/exchange/SSLSocketFactory;
    sget-object v5, Lcom/android/exchange/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {v2, v5}, Lcom/android/exchange/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    .line 1814
    new-instance v5, Lorg/apache/http/conn/scheme/Scheme;

    const-string v6, "httpts"

    const/16 v7, 0x1bb

    invoke-direct {v5, v6, v2, v7}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v5}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 1816
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 1817
    .local v0, params:Lorg/apache/http/params/HttpParams;
    const-string v5, "http.conn-manager.max-total"

    const/16 v6, 0x19

    invoke-interface {v0, v5, v6}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    .line 1818
    const-string v5, "http.conn-manager.max-per-route"

    sget-object v6, Lcom/android/exchange/SyncManager;->sConnPerRoute:Lorg/apache/http/conn/params/ConnPerRoute;

    invoke-interface {v0, v5, v6}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 1820
    const-string v5, "http.conn-manager.timeout"

    const/16 v6, 0x4e20

    invoke-interface {v0, v5, v6}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    .line 1821
    new-instance v5, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v5, v0, v1}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    sput-object v5, Lcom/android/exchange/SyncManager;->lmClientConnectionManager:Lorg/apache/http/conn/ClientConnectionManager;

    .line 1825
    .end local v0           #params:Lorg/apache/http/params/HttpParams;
    .end local v1           #registry:Lorg/apache/http/conn/scheme/SchemeRegistry;
    .end local v2           #sf:Lcom/android/exchange/SSLSocketFactory;
    .end local v3           #sf1:Lcom/android/exchange/SSLSocketFactory;
    :cond_1
    sget-object v5, Lcom/android/exchange/SyncManager;->lmClientConnectionManager:Lorg/apache/http/conn/ClientConnectionManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    return-object v5

    .line 1790
    :catchall_0
    move-exception v5

    monitor-exit v4

    throw v5
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 3487
    sget-object v0, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    return-object v0
.end method

.method static getCountofAccounts(Landroid/content/ContentResolver;)I
    .locals 8
    .parameter "resolver"

    .prologue
    .line 2361
    const/4 v6, 0x0

    .line 2362
    .local v6, ac_count:I
    const/4 v7, 0x0

    .line 2364
    .local v7, c_unread:Landroid/database/Cursor;
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "flagRead =0 AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide/16 v1, -0x2

    invoke-static {p0, v1, v2}, Lcom/android/email/Utility;->buildMailboxIdSelection(Landroid/content/ContentResolver;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2366
    .local v3, selection_unread:Ljava/lang/String;
    sget-object v1, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const/16 v4, 0xc

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2371
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    .line 2375
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2376
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2378
    :cond_0
    const-string v0, "EAS SyncManager"

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

    .line 2379
    return v6

    .line 2375
    .end local v3           #selection_unread:Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2376
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2375
    :cond_1
    throw v0
.end method

.method public static getDeviceId()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1466
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/exchange/SyncManager;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1470
    const-class v0, Lcom/android/exchange/SyncManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/exchange/SyncManager;->sDeviceId:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1471
    invoke-static {p0}, Lcom/android/exchange/SyncManager;->getDeviceIdInternal(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/exchange/SyncManager;->sDeviceId:Ljava/lang/String;

    .line 1473
    :cond_0
    sget-object v1, Lcom/android/exchange/SyncManager;->sDeviceId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 1470
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static getDeviceIdInternal(Landroid/content/Context;)Ljava/lang/String;
    .locals 13
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 1477
    sget-object v9, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    if-nez v9, :cond_0

    if-nez p0, :cond_0

    .line 1478
    new-instance v9, Ljava/io/IOException;

    const-string v10, "No context for getDeviceId"

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1479
    :cond_0
    if-nez p0, :cond_1

    .line 1480
    sget-object p0, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    .line 1484
    :cond_1
    :try_start_0
    const-string v9, "deviceName"

    invoke-virtual {p0, v9}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 1485
    .local v3, f:Ljava/io/File;
    const/4 v6, 0x0

    .line 1488
    .local v6, rdr:Ljava/io/BufferedReader;
    const/4 v1, 0x0

    .line 1492
    .local v1, deviceIdNum:I
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1493
    new-instance v6, Ljava/io/BufferedReader;

    .end local v6           #rdr:Ljava/io/BufferedReader;
    new-instance v9, Ljava/io/FileReader;

    invoke-direct {v9, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    const/16 v10, 0x80

    invoke-direct {v6, v9, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 1494
    .restart local v6       #rdr:Ljava/io/BufferedReader;
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 1495
    .local v4, id:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    move-object v9, v4

    .line 1547
    .end local v4           #id:Ljava/lang/String;
    :goto_0
    return-object v9

    .line 1497
    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 1498
    new-instance v8, Ljava/io/BufferedWriter;

    new-instance v9, Ljava/io/FileWriter;

    invoke-direct {v9, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    const/16 v10, 0x80

    invoke-direct {v8, v9, v10}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    .line 1503
    .local v8, w:Ljava/io/BufferedWriter;
    const-string v9, "phone"

    invoke-virtual {p0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1506
    .local v7, tm:Landroid/telephony/TelephonyManager;
    if-nez v7, :cond_3

    move-object v9, v12

    .line 1507
    goto :goto_0

    .line 1509
    :cond_3
    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v5

    .line 1510
    .local v5, phoneType:I
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 1512
    .local v0, consistentDeviceId:Ljava/lang/String;
    const/4 v9, 0x1

    if-ne v5, v9, :cond_5

    .line 1513
    const/4 v1, 0x1

    .line 1528
    :cond_4
    :goto_1
    if-eqz v0, :cond_7

    .line 1534
    :try_start_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SAMSUNG"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1545
    .restart local v4       #id:Ljava/lang/String;
    :goto_2
    invoke-virtual {v8, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1546
    invoke-virtual {v8}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-object v9, v4

    .line 1547
    goto :goto_0

    .line 1514
    .end local v4           #id:Ljava/lang/String;
    :cond_5
    const/4 v9, 0x2

    if-ne v5, v9, :cond_4

    .line 1516
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-result v9

    const/4 v10, 0x4

    if-ne v9, v10, :cond_6

    .line 1517
    const/4 v1, 0x2

    goto :goto_1

    .line 1519
    :cond_6
    const/4 v1, 0x3

    goto :goto_1

    .line 1521
    .end local v0           #consistentDeviceId:Ljava/lang/String;
    .end local v5           #phoneType:I
    :catch_0
    move-exception v9

    move-object v2, v9

    .line 1522
    .local v2, e:Ljava/lang/Exception;
    :try_start_4
    const-string v9, "Email"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error in TelephonyManager.getDeviceId(): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    move-object v9, v12

    .line 1523
    goto :goto_0

    .line 1541
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v0       #consistentDeviceId:Ljava/lang/String;
    .restart local v5       #phoneType:I
    :cond_7
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "dev"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v4

    .restart local v4       #id:Ljava/lang/String;
    goto :goto_2

    .line 1549
    .end local v0           #consistentDeviceId:Ljava/lang/String;
    .end local v1           #deviceIdNum:I
    .end local v3           #f:Ljava/io/File;
    .end local v4           #id:Ljava/lang/String;
    .end local v5           #phoneType:I
    .end local v6           #rdr:Ljava/io/BufferedReader;
    .end local v7           #tm:Landroid/telephony/TelephonyManager;
    .end local v8           #w:Ljava/io/BufferedWriter;
    :catch_1
    move-exception v9

    .line 1551
    :cond_8
    new-instance v9, Ljava/io/IOException;

    const-string v10, "Can\'t get device name"

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9
.end method

.method public static getEasAccountSelector()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1236
    sget-object v0, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    .line 1237
    .local v0, syncManager:Lcom/android/exchange/SyncManager;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/exchange/SyncManager;->mAccountObserver:Lcom/android/exchange/SyncManager$AccountObserver;

    if-eqz v1, :cond_0

    .line 1238
    iget-object v1, v0, Lcom/android/exchange/SyncManager;->mAccountObserver:Lcom/android/exchange/SyncManager$AccountObserver;

    invoke-virtual {v1}, Lcom/android/exchange/SyncManager$AccountObserver;->getAccountKeyWhere()Ljava/lang/String;

    move-result-object v1

    .line 1240
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getElmSvc()Lcom/android/exchange/EasLoadMoreSvc;
    .locals 1

    .prologue
    .line 3648
    sget-object v0, Lcom/android/exchange/SyncManager;->elmsvc:Lcom/android/exchange/EasLoadMoreSvc;

    return-object v0
.end method

.method public static getElmSvcMsg()J
    .locals 2

    .prologue
    .line 3655
    const-string v0, "Email"

    const-string v1, "[jykim] getElmSvcMsg"

    invoke-static {v0, v1}, Lcom/android/exchange/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3656
    sget-object v0, Lcom/android/exchange/SyncManager;->elmsvc:Lcom/android/exchange/EasLoadMoreSvc;

    iget-object v0, v0, Lcom/android/exchange/EasLoadMoreSvc;->mMsg:Lcom/android/email/provider/EmailContent$Message;

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Message;->mId:J

    return-wide v0
.end method

.method public static getElmSvcThread()Ljava/lang/Thread;
    .locals 2

    .prologue
    .line 3651
    const-string v0, "Email"

    const-string v1, "[jykim] getElmSvcThread"

    invoke-static {v0, v1}, Lcom/android/exchange/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3652
    sget-object v0, Lcom/android/exchange/SyncManager;->elmsvc:Lcom/android/exchange/EasLoadMoreSvc;

    iget-object v0, v0, Lcom/android/exchange/EasLoadMoreSvc;->mThread:Ljava/lang/Thread;

    return-object v0
.end method

.method public static getStatusChangeCount(Ljava/lang/String;)I
    .locals 3
    .parameter "status"

    .prologue
    .line 3479
    const/4 v2, 0x5

    :try_start_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 3480
    .local v1, s:Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 3482
    .end local v1           #s:Ljava/lang/String;
    :goto_0
    return v2

    .line 3481
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 3482
    .local v0, e:Ljava/lang/RuntimeException;
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public static getStatusType(Ljava/lang/String;)I
    .locals 2
    .parameter "status"

    .prologue
    .line 3464
    if-nez p0, :cond_0

    .line 3465
    const/4 v0, -0x1

    .line 3467
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x30

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method static insertBadgeProvider(Landroid/content/ContentResolver;)V
    .locals 4
    .parameter "resolver"

    .prologue
    .line 2340
    const/4 v0, 0x0

    .line 2341
    .local v0, cnt:I
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2342
    .local v1, newValues:Landroid/content/ContentValues;
    const-string v2, "package"

    const-string v3, "com.android.email"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2343
    const-string v2, "class"

    const-string v3, "com.android.email.activity.Welcome"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2344
    const-string v2, "badgecount"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2345
    const-string v2, "content://com.sec.badge/apps"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 2346
    return-void
.end method

.method private isCalendarEnabled(J)Z
    .locals 6
    .parameter "accountId"

    .prologue
    const/4 v5, 0x1

    .line 1054
    iget-object v1, p0, Lcom/android/exchange/SyncManager;->mCalendarObservers:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exchange/SyncManager$CalendarObserver;

    .line 1055
    .local v0, observer:Lcom/android/exchange/SyncManager$CalendarObserver;
    if-eqz v0, :cond_1

    .line 1056
    iget-wide v1, v0, Lcom/android/exchange/SyncManager$CalendarObserver;->mSyncEvents:J

    const-wide/16 v3, 0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    move v1, v5

    .line 1060
    :goto_0
    return v1

    .line 1056
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move v1, v5

    .line 1060
    goto :goto_0
.end method

.method public static kick(Ljava/lang/String;)V
    .locals 3
    .parameter "reason"

    .prologue
    .line 3268
    sget-object v0, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    .line 3269
    .local v0, syncManager:Lcom/android/exchange/SyncManager;
    if-eqz v0, :cond_0

    .line 3270
    monitor-enter v0

    .line 3272
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, v0, Lcom/android/exchange/SyncManager;->mKicked:Z

    .line 3273
    sput-object p0, Lcom/android/exchange/SyncManager;->mKickReason:Ljava/lang/String;

    .line 3274
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 3275
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3277
    :cond_0
    sget-object v1, Lcom/android/exchange/SyncManager;->sConnectivityLock:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 3278
    sget-object v1, Lcom/android/exchange/SyncManager;->sConnectivityLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3279
    :try_start_1
    sget-object v2, Lcom/android/exchange/SyncManager;->sConnectivityLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 3280
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3282
    :cond_1
    return-void

    .line 3275
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 3280
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method

.method public static log(Ljava/lang/String;)V
    .locals 1
    .parameter "str"

    .prologue
    .line 1417
    const-string v0, "EAS SyncManager"

    invoke-static {v0, p0}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1418
    return-void
.end method

.method public static log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "str"

    .prologue
    .line 1421
    sget-boolean v0, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v0, :cond_0

    .line 1422
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1423
    sget-boolean v0, Lcom/android/exchange/Eas;->FILE_LOG:Z

    if-eqz v0, :cond_0

    .line 1424
    invoke-static {p0, p1}, Lcom/android/exchange/utility/FileLogger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1427
    :cond_0
    return-void
.end method

.method private logSyncHolds()V
    .locals 13

    .prologue
    const-string v7, "Mailbox "

    .line 1273
    sget-boolean v7, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/exchange/SyncManager;->mSyncErrorMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    .line 1274
    const-string v7, "Sync holds:"

    invoke-static {v7}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;)V

    .line 1275
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 1276
    .local v5, time:J
    sget-object v8, Lcom/android/exchange/SyncManager;->sSyncLock:Ljava/lang/Object;

    monitor-enter v8

    .line 1277
    :try_start_0
    iget-object v7, p0, Lcom/android/exchange/SyncManager;->mSyncErrorMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 1278
    .local v3, mailboxId:J
    invoke-static {p0, v3, v4}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v2

    .line 1279
    .local v2, m:Lcom/android/email/provider/EmailContent$Mailbox;
    if-nez v2, :cond_1

    .line 1280
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Mailbox "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " no longer exists"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1290
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #m:Lcom/android/email/provider/EmailContent$Mailbox;
    .end local v3           #mailboxId:J
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 1282
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #m:Lcom/android/email/provider/EmailContent$Mailbox;
    .restart local v3       #mailboxId:J
    :cond_1
    :try_start_1
    iget-object v7, p0, Lcom/android/exchange/SyncManager;->mSyncErrorMap:Ljava/util/HashMap;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exchange/SyncManager$SyncError;

    .line 1283
    .local v0, error:Lcom/android/exchange/SyncManager$SyncError;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Mailbox "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, v2, Lcom/android/email/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ", error = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, v0, Lcom/android/exchange/SyncManager$SyncError;->reason:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ", fatal = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v9, v0, Lcom/android/exchange/SyncManager$SyncError;->fatal:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;)V

    .line 1285
    iget-wide v9, v0, Lcom/android/exchange/SyncManager$SyncError;->holdEndTime:J

    const-wide/16 v11, 0x0

    cmp-long v7, v9, v11

    if-lez v7, :cond_0

    .line 1286
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Hold ends in "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v9, v0, Lcom/android/exchange/SyncManager$SyncError;->holdEndTime:J

    sub-long/2addr v9, v5

    const-wide/16 v11, 0x3e8

    div-long/2addr v9, v11

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "s"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1290
    .end local v0           #error:Lcom/android/exchange/SyncManager$SyncError;
    .end local v2           #m:Lcom/android/email/provider/EmailContent$Mailbox;
    .end local v3           #mailboxId:J
    :cond_2
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1292
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v5           #time:J
    :cond_3
    return-void
.end method

.method public static declared-synchronized newClientConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;
    .locals 9

    .prologue
    .line 1724
    const-class v4, Lcom/android/exchange/SyncManager;

    monitor-enter v4

    :try_start_0
    sget-object v5, Lcom/android/exchange/SyncManager;->mClientConnectionManager:Lorg/apache/http/conn/ClientConnectionManager;

    if-nez v5, :cond_0

    .line 1726
    new-instance v1, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 1727
    .local v1, registry:Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v5, Lorg/apache/http/conn/scheme/Scheme;

    const-string v6, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v7

    const/16 v8, 0x50

    invoke-direct {v5, v6, v7, v8}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v5}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 1730
    new-instance v3, Lcom/android/exchange/SSLSocketFactory;

    const/16 v5, 0x4e20

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/android/email/mail/transport/SSLUtils;->getSSLSocketFactory(IZ)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/android/exchange/SSLSocketFactory;-><init>(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 1731
    .local v3, sf1:Lcom/android/exchange/SSLSocketFactory;
    new-instance v5, Lorg/apache/http/conn/scheme/Scheme;

    const-string v6, "https"

    const/16 v7, 0x1bb

    invoke-direct {v5, v6, v3, v7}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v5}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 1735
    new-instance v2, Lcom/android/exchange/SSLSocketFactory;

    const/16 v5, 0x4e20

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/android/email/mail/transport/SSLUtils;->getSSLSocketFactory(IZ)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/android/exchange/SSLSocketFactory;-><init>(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 1736
    .local v2, sf:Lcom/android/exchange/SSLSocketFactory;
    sget-object v5, Lcom/android/exchange/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {v2, v5}, Lcom/android/exchange/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    .line 1738
    new-instance v5, Lorg/apache/http/conn/scheme/Scheme;

    const-string v6, "httpts"

    const/16 v7, 0x1bb

    invoke-direct {v5, v6, v2, v7}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v5}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 1740
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 1741
    .local v0, params:Lorg/apache/http/params/HttpParams;
    const-string v5, "http.conn-manager.max-total"

    const/16 v6, 0x19

    invoke-interface {v0, v5, v6}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    .line 1742
    const-string v5, "http.conn-manager.max-per-route"

    sget-object v6, Lcom/android/exchange/SyncManager;->sConnPerPing:Lorg/apache/http/conn/params/ConnPerRoute;

    invoke-interface {v0, v5, v6}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 1743
    const-string v5, "http.conn-manager.timeout"

    const/16 v6, 0x4e20

    invoke-interface {v0, v5, v6}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    .line 1744
    new-instance v5, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v5, v0, v1}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    sput-object v5, Lcom/android/exchange/SyncManager;->mClientConnectionManager:Lorg/apache/http/conn/ClientConnectionManager;

    .line 1748
    .end local v0           #params:Lorg/apache/http/params/HttpParams;
    .end local v1           #registry:Lorg/apache/http/conn/scheme/SchemeRegistry;
    .end local v2           #sf:Lcom/android/exchange/SSLSocketFactory;
    .end local v3           #sf1:Lcom/android/exchange/SSLSocketFactory;
    :cond_0
    sget-object v5, Lcom/android/exchange/SyncManager;->mClientConnectionManager:Lorg/apache/http/conn/ClientConnectionManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    return-object v5

    .line 1724
    :catchall_0
    move-exception v5

    monitor-exit v4

    throw v5
.end method

.method public static pingStatus(J)I
    .locals 7
    .parameter "mailboxId"

    .prologue
    const/4 v6, 0x0

    .line 3173
    sget-object v1, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    .line 3174
    .local v1, syncManager:Lcom/android/exchange/SyncManager;
    if-nez v1, :cond_0

    move v2, v6

    .line 3188
    :goto_0
    return v2

    .line 3176
    :cond_0
    iget-object v2, v1, Lcom/android/exchange/SyncManager;->mServiceMap:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 3177
    const/4 v2, 0x1

    goto :goto_0

    .line 3180
    :cond_1
    iget-object v2, v1, Lcom/android/exchange/SyncManager;->mSyncErrorMap:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exchange/SyncManager$SyncError;

    .line 3181
    .local v0, error:Lcom/android/exchange/SyncManager$SyncError;
    if-eqz v0, :cond_3

    .line 3182
    iget-boolean v2, v0, Lcom/android/exchange/SyncManager$SyncError;->fatal:Z

    if-eqz v2, :cond_2

    .line 3183
    const/4 v2, 0x3

    goto :goto_0

    .line 3184
    :cond_2
    iget-wide v2, v0, Lcom/android/exchange/SyncManager$SyncError;->holdEndTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    .line 3185
    const/4 v2, 0x2

    goto :goto_0

    :cond_3
    move v2, v6

    .line 3188
    goto :goto_0
.end method

.method static reconcileAccountsWithAccountManager(Landroid/content/Context;Ljava/util/List;[Landroid/accounts/Account;ZLandroid/content/ContentResolver;)V
    .locals 9
    .parameter "context"
    .parameter
    .parameter "accountManagerAccounts"
    .parameter "blockExternalChanges"
    .parameter "resolver"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/email/provider/EmailContent$Account;",
            ">;[",
            "Landroid/accounts/Account;",
            "Z",
            "Landroid/content/ContentResolver;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2405
    .local p1, cachedEasAccounts:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/provider/EmailContent$Account;>;"
    const/4 v0, 0x0

    .line 2406
    .local v0, accountsDeleted:Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    move v1, v0

    .end local v0           #accountsDeleted:Z
    .end local v4           #i$:Ljava/util/Iterator;
    .local v1, accountsDeleted:Z
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/email/provider/EmailContent$Account;

    .line 2407
    .local v7, providerAccount:Lcom/android/email/provider/EmailContent$Account;
    iget-object v8, v7, Lcom/android/email/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    .line 2408
    .local v8, providerAccountName:Ljava/lang/String;
    const/4 v3, 0x0

    .line 2409
    .local v3, found:Z
    move-object v2, p2

    .local v2, arr$:[Landroid/accounts/Account;
    array-length v6, v2

    .local v6, len$:I
    const/4 v0, 0x0

    .local v0, i$:I
    move v5, v0

    .end local v0           #i$:I
    .local v5, i$:I
    :goto_1
    if-ge v5, v6, :cond_9

    aget-object v0, v2, v5

    .line 2410
    .local v0, accountManagerAccount:Landroid/accounts/Account;
    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    .end local v0           #accountManagerAccount:Landroid/accounts/Account;
    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2411
    const/4 v0, 0x1

    .line 2415
    .end local v3           #found:Z
    .local v0, found:Z
    :goto_2
    if-nez v0, :cond_8

    .line 2416
    iget v0, v7, Lcom/android/email/provider/EmailContent$Account;->mFlags:I

    .end local v0           #found:Z
    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_1

    .line 2417
    const-string v0, "Account reconciler noticed incomplete account; ignoring"

    invoke-static {v0}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2409
    .restart local v3       #found:Z
    :cond_0
    add-int/lit8 v0, v5, 0x1

    .end local v5           #i$:I
    .local v0, i$:I
    move v5, v0

    .end local v0           #i$:I
    .restart local v5       #i$:I
    goto :goto_1

    .line 2421
    .end local v3           #found:Z
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Account deleted in AccountManager; deleting from provider: "

    .end local v1           #accountsDeleted:Z
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/exchange/SyncManager;->alwaysLog(Ljava/lang/String;)V

    .line 2424
    sget-object v0, Lcom/android/email/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v1, v7, Lcom/android/email/provider/EmailContent$Account;->mId:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p4, v0, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2426
    .end local v2           #arr$:[Landroid/accounts/Account;
    invoke-static {p0}, Lcom/android/email/Email;->setServicesEnabled(Landroid/content/Context;)Z

    .line 2427
    const/4 v0, 0x1

    .local v0, accountsDeleted:Z
    :goto_3
    move v1, v0

    .line 2429
    .end local v0           #accountsDeleted:Z
    .restart local v1       #accountsDeleted:Z
    goto :goto_0

    .line 2432
    .end local v5           #i$:I
    .end local v6           #len$:I
    .end local v7           #providerAccount:Lcom/android/email/provider/EmailContent$Account;
    .end local v8           #providerAccountName:Ljava/lang/String;
    :cond_2
    move-object v2, p2

    .restart local v2       #arr$:[Landroid/accounts/Account;
    array-length v7, v2

    .local v7, len$:I
    const/4 p2, 0x0

    .local p2, i$:I
    move v6, p2

    .end local p2           #i$:I
    .local v6, i$:I
    :goto_4
    if-ge v6, v7, :cond_4

    aget-object p2, v2, v6

    .line 2433
    .local p2, accountManagerAccount:Landroid/accounts/Account;
    iget-object v0, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 2434
    .local v0, accountManagerAccountName:Ljava/lang/String;
    const/4 v3, 0x0

    .line 2435
    .restart local v3       #found:Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    move v4, v3

    .end local v3           #found:Z
    .end local v6           #i$:I
    .local v4, found:Z
    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/email/provider/EmailContent$Account;

    .line 2436
    .local v3, cachedEasAccount:Lcom/android/email/provider/EmailContent$Account;
    iget-object v3, v3, Lcom/android/email/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    .end local v3           #cachedEasAccount:Lcom/android/email/provider/EmailContent$Account;
    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2437
    const/4 v3, 0x1

    .end local v4           #found:Z
    .local v3, found:Z
    :goto_6
    move v4, v3

    .end local v3           #found:Z
    .restart local v4       #found:Z
    goto :goto_5

    .line 2440
    :cond_3
    if-nez v4, :cond_6

    .line 2442
    new-instance v1, Ljava/lang/StringBuilder;

    .end local v1           #accountsDeleted:Z
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Account deleted from provider; deleting from AccountManager: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .end local v0           #accountManagerAccountName:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/exchange/SyncManager;->alwaysLog(Ljava/lang/String;)V

    .line 2445
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, p2, v1, v3}, Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object p2

    .line 2450
    .local p2, blockingResult:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Ljava/lang/Boolean;>;"
    :try_start_0
    invoke-interface {p2}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 2458
    .end local p2           #blockingResult:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Ljava/lang/Boolean;>;"
    :goto_7
    const/4 p2, 0x1

    .line 2432
    .local p2, accountsDeleted:Z
    :goto_8
    add-int/lit8 v0, v6, 0x1

    .local v0, i$:I
    move v6, v0

    .end local v0           #i$:I
    .restart local v6       #i$:I
    move v1, p2

    .end local p2           #accountsDeleted:Z
    .restart local v1       #accountsDeleted:Z
    goto :goto_4

    .line 2451
    .end local v1           #accountsDeleted:Z
    .end local v6           #i$:I
    .local p2, blockingResult:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Ljava/lang/Boolean;>;"
    :catch_0
    move-exception p2

    .line 2452
    .local p2, e:Landroid/accounts/OperationCanceledException;
    const-string v0, "Email"

    invoke-virtual {p2}, Landroid/accounts/OperationCanceledException;->toString()Ljava/lang/String;

    move-result-object p2

    .end local p2           #e:Landroid/accounts/OperationCanceledException;
    invoke-static {v0, p2}, Lcom/android/exchange/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 2453
    .local p2, blockingResult:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Ljava/lang/Boolean;>;"
    :catch_1
    move-exception p2

    .line 2454
    .local p2, e:Landroid/accounts/AuthenticatorException;
    const-string v0, "Email"

    invoke-virtual {p2}, Landroid/accounts/AuthenticatorException;->toString()Ljava/lang/String;

    move-result-object p2

    .end local p2           #e:Landroid/accounts/AuthenticatorException;
    invoke-static {v0, p2}, Lcom/android/exchange/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 2455
    .local p2, blockingResult:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Ljava/lang/Boolean;>;"
    :catch_2
    move-exception p2

    .line 2456
    .local p2, e:Ljava/io/IOException;
    const-string v0, "Email"

    invoke-virtual {p2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p2

    .end local p2           #e:Ljava/io/IOException;
    invoke-static {v0, p2}, Lcom/android/exchange/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 2462
    .end local v4           #found:Z
    .end local v5           #i$:Ljava/util/Iterator;
    .restart local v1       #accountsDeleted:Z
    .restart local v6       #i$:I
    :cond_4
    if-nez p3, :cond_5

    if-eqz v1, :cond_5

    .line 2463
    const-string p1, "EAS SyncManager"

    .end local p1           #cachedEasAccounts:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/provider/EmailContent$Account;>;"
    const-string p2, "Accounts Deleted. reducing policies"

    invoke-static {p1, p2}, Lcom/android/exchange/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2465
    invoke-static {p0}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object p0

    .end local p0
    invoke-virtual {p0}, Lcom/android/email/SecurityPolicy;->reducePolicies()V

    .line 2466
    const/4 p0, 0x1

    invoke-static {p0}, Lcom/android/email/Email;->setNotifyUiAccountsChanged(Z)V

    .line 2468
    invoke-static {p4}, Lcom/android/exchange/SyncManager;->updateBadgeProvider(Landroid/content/ContentResolver;)V

    .line 2471
    :cond_5
    return-void

    .end local v6           #i$:I
    .local v0, accountManagerAccountName:Ljava/lang/String;
    .restart local v4       #found:Z
    .restart local v5       #i$:Ljava/util/Iterator;
    .restart local p0
    .restart local p1       #cachedEasAccounts:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/provider/EmailContent$Account;>;"
    .local p2, accountManagerAccount:Landroid/accounts/Account;
    :cond_6
    move p2, v1

    .end local v1           #accountsDeleted:Z
    .local p2, accountsDeleted:Z
    goto :goto_8

    .restart local v1       #accountsDeleted:Z
    .local p2, accountManagerAccount:Landroid/accounts/Account;
    :cond_7
    move v3, v4

    .end local v4           #found:Z
    .restart local v3       #found:Z
    goto :goto_6

    .end local v3           #found:Z
    .local v0, found:Z
    .local v5, i$:I
    .local v6, len$:I
    .local v7, providerAccount:Lcom/android/email/provider/EmailContent$Account;
    .restart local v8       #providerAccountName:Ljava/lang/String;
    .local p2, accountManagerAccounts:[Landroid/accounts/Account;
    :cond_8
    move v0, v1

    .end local v1           #accountsDeleted:Z
    .local v0, accountsDeleted:Z
    goto/16 :goto_3

    .end local v0           #accountsDeleted:Z
    .restart local v1       #accountsDeleted:Z
    .restart local v3       #found:Z
    :cond_9
    move v0, v3

    .end local v3           #found:Z
    .local v0, found:Z
    goto/16 :goto_2
.end method

.method private registerCalendarObserver(Lcom/android/email/provider/EmailContent$Account;)V
    .locals 5
    .parameter "account"

    .prologue
    .line 1026
    new-instance v0, Lcom/android/exchange/SyncManager$CalendarObserver;

    iget-object v1, p0, Lcom/android/exchange/SyncManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1, p1}, Lcom/android/exchange/SyncManager$CalendarObserver;-><init>(Lcom/android/exchange/SyncManager;Landroid/os/Handler;Lcom/android/email/provider/EmailContent$Account;)V

    .line 1027
    .local v0, observer:Lcom/android/exchange/SyncManager$CalendarObserver;
    iget-wide v1, v0, Lcom/android/exchange/SyncManager$CalendarObserver;->mCalendarId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 1029
    iget-object v1, p0, Lcom/android/exchange/SyncManager;->mCalendarObservers:Ljava/util/HashMap;

    iget-wide v2, p1, Lcom/android/email/provider/EmailContent$Account;->mId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1030
    iget-object v1, p0, Lcom/android/exchange/SyncManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/Calendar$Calendars;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, v0, Lcom/android/exchange/SyncManager$CalendarObserver;->mCalendarId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1034
    :cond_0
    return-void
.end method

.method private releaseMailbox(J)V
    .locals 2
    .parameter "mailboxId"

    .prologue
    .line 2835
    iget-object v0, p0, Lcom/android/exchange/SyncManager;->mServiceMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2836
    invoke-virtual {p0, p1, p2}, Lcom/android/exchange/SyncManager;->releaseWakeLock(J)V

    .line 2837
    return-void
.end method

.method public static releaseSecurityHold(Lcom/android/email/provider/EmailContent$Account;)V
    .locals 3
    .parameter "account"

    .prologue
    .line 1299
    sget-object v0, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    .line 1300
    .local v0, syncManager:Lcom/android/exchange/SyncManager;
    if-eqz v0, :cond_0

    .line 1301
    sget-object v1, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/exchange/SyncManager;->releaseSyncHolds(Landroid/content/Context;ILcom/android/email/provider/EmailContent$Account;)V

    .line 1304
    :cond_0
    return-void
.end method

.method private releaseSyncHoldMailbox(Landroid/content/Context;IJ)V
    .locals 4
    .parameter "context"
    .parameter "reason"
    .parameter "mailboxId"

    .prologue
    .line 1346
    sget-object v1, Lcom/android/exchange/SyncManager;->sSyncLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1347
    :try_start_0
    iget-object v2, p0, Lcom/android/exchange/SyncManager;->mSyncErrorMap:Ljava/util/HashMap;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exchange/SyncManager$SyncError;

    .line 1348
    .local v0, error:Lcom/android/exchange/SyncManager$SyncError;
    if-eqz v0, :cond_0

    iget v2, v0, Lcom/android/exchange/SyncManager$SyncError;->reason:I

    if-ne v2, p2, :cond_0

    .line 1349
    iget-object v2, p0, Lcom/android/exchange/SyncManager;->mSyncErrorMap:Ljava/util/HashMap;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1351
    :cond_0
    monitor-exit v1

    .line 1352
    return-void

    .line 1351
    .end local v0           #error:Lcom/android/exchange/SyncManager$SyncError;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private releaseSyncHoldsImpl(Landroid/content/Context;ILcom/android/email/provider/EmailContent$Account;)V
    .locals 12
    .parameter "context"
    .parameter "reason"
    .parameter "account"

    .prologue
    .line 1318
    sget-object v7, Lcom/android/exchange/SyncManager;->sSyncLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1319
    :try_start_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1320
    .local v5, releaseList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v6, p0, Lcom/android/exchange/SyncManager;->mSyncErrorMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 1321
    .local v3, mailboxId:J
    if-eqz p3, :cond_1

    .line 1322
    invoke-static {p1, v3, v4}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v2

    .line 1323
    .local v2, m:Lcom/android/email/provider/EmailContent$Mailbox;
    if-nez v2, :cond_2

    .line 1324
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1329
    .end local v2           #m:Lcom/android/email/provider/EmailContent$Mailbox;
    :cond_1
    iget-object v6, p0, Lcom/android/exchange/SyncManager;->mSyncErrorMap:Ljava/util/HashMap;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exchange/SyncManager$SyncError;

    .line 1330
    .local v0, error:Lcom/android/exchange/SyncManager$SyncError;
    iget v6, v0, Lcom/android/exchange/SyncManager$SyncError;->reason:I

    if-ne v6, p2, :cond_0

    .line 1331
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1340
    .end local v0           #error:Lcom/android/exchange/SyncManager$SyncError;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #mailboxId:J
    .end local v5           #releaseList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 1325
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #m:Lcom/android/email/provider/EmailContent$Mailbox;
    .restart local v3       #mailboxId:J
    .restart local v5       #releaseList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_2
    :try_start_1
    iget-wide v8, v2, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    iget-wide v10, p3, Lcom/android/email/provider/EmailContent$Account;->mId:J

    cmp-long v6, v8, v10

    if-eqz v6, :cond_1

    goto :goto_0

    .line 1334
    .end local v2           #m:Lcom/android/email/provider/EmailContent$Mailbox;
    .end local v3           #mailboxId:J
    :cond_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 1335
    .restart local v3       #mailboxId:J
    iget-object v6, p0, Lcom/android/exchange/SyncManager;->mSyncErrorMap:Ljava/util/HashMap;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1338
    .end local v3           #mailboxId:J
    :cond_4
    if-eqz p3, :cond_5

    .line 1339
    iget-object v6, p0, Lcom/android/exchange/SyncManager;->mProvisionErrorExist:Ljava/util/HashMap;

    iget-wide v8, p3, Lcom/android/email/provider/EmailContent$Account;->mId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1340
    :cond_5
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1341
    return-void
.end method

.method public static reloadFolderList(Landroid/content/Context;JZ)V
    .locals 9
    .parameter "context"
    .parameter "accountId"
    .parameter "force"

    .prologue
    .line 1913
    sget-object v6, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    .line 1914
    .local v6, syncManager:Lcom/android/exchange/SyncManager;
    if-nez v6, :cond_0

    .line 1983
    .end local p0
    .end local p1
    .end local p3
    :goto_0
    return-void

    .line 1915
    .restart local p0
    .restart local p1
    .restart local p3
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/email/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/email/provider/EmailContent$Mailbox;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v3, "accountKey=? AND type=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x1

    const-wide/16 v7, 0x44

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1921
    .local v1, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1922
    sget-object v4, Lcom/android/exchange/SyncManager;->sSyncLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1923
    :try_start_1
    new-instance v0, Lcom/android/email/provider/EmailContent$Mailbox;

    invoke-direct {v0}, Lcom/android/email/provider/EmailContent$Mailbox;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/email/provider/EmailContent$Mailbox;->restore(Landroid/database/Cursor;)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v2

    .line 1924
    .local v2, m:Lcom/android/email/provider/EmailContent$Mailbox;
    invoke-static {p0, p1, p2}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v0

    .line 1925
    .local v0, acct:Lcom/android/email/provider/EmailContent$Account;
    if-nez v0, :cond_2

    .line 1926
    invoke-static {p1, p2}, Lcom/android/exchange/SyncManager;->reloadFolderListFailed(J)V

    .line 1927
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1981
    .end local v0           #acct:Lcom/android/email/provider/EmailContent$Account;
    .end local v2           #m:Lcom/android/email/provider/EmailContent$Mailbox;
    .end local p0
    .end local p1
    .end local p3
    :cond_1
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1929
    .restart local v0       #acct:Lcom/android/email/provider/EmailContent$Account;
    .restart local v2       #m:Lcom/android/email/provider/EmailContent$Mailbox;
    .restart local p0
    .restart local p1
    .restart local p3
    :cond_2
    :try_start_2
    iget-object v3, v0, Lcom/android/email/provider/EmailContent$Account;->mSyncKey:Ljava/lang/String;

    .line 1931
    .local v3, syncKey:Ljava/lang/String;
    if-nez p3, :cond_4

    if-eqz v3, :cond_3

    const-string p3, "0"

    .end local p3
    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 1932
    :cond_3
    invoke-static {p1, p2}, Lcom/android/exchange/SyncManager;->reloadFolderListFailed(J)V

    .line 1933
    monitor-exit v4

    goto :goto_1

    .line 1978
    .end local v0           #acct:Lcom/android/email/provider/EmailContent$Account;
    .end local v2           #m:Lcom/android/email/provider/EmailContent$Mailbox;
    .end local v3           #syncKey:Ljava/lang/String;
    .end local p0
    .end local p1
    :catchall_0
    move-exception p0

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1981
    :catchall_1
    move-exception p0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw p0

    .line 1937
    .restart local v0       #acct:Lcom/android/email/provider/EmailContent$Account;
    .restart local v2       #m:Lcom/android/email/provider/EmailContent$Mailbox;
    .restart local v3       #syncKey:Ljava/lang/String;
    .restart local p0
    .restart local p1
    :cond_4
    :try_start_4
    new-instance p3, Landroid/content/ContentValues;

    invoke-direct {p3}, Landroid/content/ContentValues;-><init>()V

    .line 1938
    .local p3, cv:Landroid/content/ContentValues;
    const-string v3, "syncInterval"

    .end local v3           #syncKey:Ljava/lang/String;
    const/4 v5, -0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p3, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1939
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .end local p0
    sget-object v3, Lcom/android/email/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "accountKey=? and type!=68 and syncInterval IN (-3,-2)"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    .end local p1
    aput-object p1, v7, v8

    invoke-virtual {p0, v3, p3, v5, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1942
    const-string p0, "Set push/ping boxes to push/hold"

    invoke-static {p0}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;)V

    .line 1944
    iget-wide p0, v2, Lcom/android/email/provider/EmailContent$Mailbox;->mId:J

    .line 1945
    .local p0, id:J
    iget-object p2, v6, Lcom/android/exchange/SyncManager;->mServiceMap:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    .end local p3           #cv:Landroid/content/ContentValues;
    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/exchange/AbstractSyncService;

    .line 1948
    .local p2, svc:Lcom/android/exchange/AbstractSyncService;
    if-eqz p2, :cond_7

    iget p3, p2, Lcom/android/exchange/AbstractSyncService;->mSyncReason:I

    const/16 v3, 0x9

    if-eq p3, v3, :cond_7

    .line 1949
    invoke-virtual {p2}, Lcom/android/exchange/AbstractSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object p3

    monitor-enter p3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1950
    :try_start_5
    invoke-virtual {p2}, Lcom/android/exchange/AbstractSyncService;->stop()V

    .line 1951
    monitor-exit p3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1953
    :try_start_6
    iget-object p2, p2, Lcom/android/exchange/AbstractSyncService;->mThread:Ljava/lang/Thread;

    .line 1955
    .local p2, thread:Ljava/lang/Thread;
    if-eqz p2, :cond_5

    .line 1956
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    .end local v0           #acct:Lcom/android/email/provider/EmailContent$Account;
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, " (Stopped)"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 1957
    invoke-virtual {p2}, Ljava/lang/Thread;->interrupt()V

    .line 1961
    :cond_5
    invoke-direct {v6, p0, p1}, Lcom/android/exchange/SyncManager;->releaseMailbox(J)V

    .line 1963
    const-string p0, "reload folder list"

    .end local p0           #id:J
    invoke-static {p0}, Lcom/android/exchange/SyncManager;->kick(Ljava/lang/String;)V

    .line 1978
    .end local p2           #thread:Ljava/lang/Thread;
    :cond_6
    :goto_2
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1

    .line 1951
    .restart local v0       #acct:Lcom/android/email/provider/EmailContent$Account;
    .local p2, svc:Lcom/android/exchange/AbstractSyncService;
    :catchall_2
    move-exception p0

    :try_start_7
    monitor-exit p3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw p0

    .line 1970
    .restart local p0       #id:J
    :cond_7
    if-nez p2, :cond_6

    iget p0, v0, Lcom/android/email/provider/EmailContent$Account;->mSyncInterval:I

    .end local p0           #id:J
    const/4 p1, -0x1

    if-ne p0, p1, :cond_6

    iget-object p0, v6, Lcom/android/exchange/SyncManager;->mProvisionErrorExist:Ljava/util/HashMap;

    iget-wide p1, v0, Lcom/android/email/provider/EmailContent$Account;->mId:J

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    iget-object p0, v6, Lcom/android/exchange/SyncManager;->mSyncErrorMap:Ljava/util/HashMap;

    iget-wide p1, v2, Lcom/android/email/provider/EmailContent$Mailbox;->mId:J

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    .line 1974
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Account in Manual mode. Starting Sync forcefully.. for mailbox:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget-wide p1, v2, Lcom/android/email/provider/EmailContent$Mailbox;->mId:J

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;)V

    .line 1975
    const/4 p0, 0x4

    const/4 p1, 0x0

    invoke-direct {v6, v2, p0, p1}, Lcom/android/exchange/SyncManager;->requestSync(Lcom/android/email/provider/EmailContent$Mailbox;ILcom/android/exchange/Request;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_2
.end method

.method private static reloadFolderListFailed(J)V
    .locals 3
    .parameter "accountId"

    .prologue
    .line 1905
    :try_start_0
    invoke-static {}, Lcom/android/exchange/SyncManager;->callback()Lcom/android/email/service/IEmailServiceCallback;

    move-result-object v0

    const/16 v1, 0x18

    const/4 v2, 0x0

    invoke-interface {v0, p0, p1, v1, v2}, Lcom/android/email/service/IEmailServiceCallback;->syncMailboxListStatus(JII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1910
    :goto_0
    return-void

    .line 1907
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static removeFromSyncErrorMap(J)V
    .locals 4
    .parameter "mailboxId"

    .prologue
    .line 3301
    sget-object v0, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    .line 3302
    .local v0, syncManager:Lcom/android/exchange/SyncManager;
    if-nez v0, :cond_0

    .line 3306
    :goto_0
    return-void

    .line 3303
    :cond_0
    sget-object v1, Lcom/android/exchange/SyncManager;->sSyncLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3304
    :try_start_0
    iget-object v2, v0, Lcom/android/exchange/SyncManager;->mSyncErrorMap:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3305
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private requestSync(Lcom/android/email/provider/EmailContent$Mailbox;ILcom/android/exchange/Request;)V
    .locals 7
    .parameter "m"
    .parameter "reason"
    .parameter "req"

    .prologue
    .line 2565
    sget-boolean v3, Lcom/android/exchange/SyncManager;->sConnectivityHold:Z

    if-nez v3, :cond_0

    if-nez p1, :cond_1

    .line 2590
    :cond_0
    :goto_0
    return-void

    .line 2566
    :cond_1
    sget-object v4, Lcom/android/exchange/SyncManager;->sSyncLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2567
    :try_start_0
    iget-wide v5, p1, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-static {p0, v5, v6}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v1

    .line 2568
    .local v1, acct:Lcom/android/email/provider/EmailContent$Account;
    if-eqz v1, :cond_4

    .line 2570
    iget-object v3, p0, Lcom/android/exchange/SyncManager;->mServiceMap:Ljava/util/HashMap;

    iget-wide v5, p1, Lcom/android/email/provider/EmailContent$Mailbox;->mId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/exchange/AbstractSyncService;

    .line 2571
    .local v2, service:Lcom/android/exchange/AbstractSyncService;
    if-nez v2, :cond_4

    .line 2572
    new-instance v2, Lcom/android/exchange/EasSyncService;

    .end local v2           #service:Lcom/android/exchange/AbstractSyncService;
    invoke-direct {v2, p0, p1}, Lcom/android/exchange/EasSyncService;-><init>(Landroid/content/Context;Lcom/android/email/provider/EmailContent$Mailbox;)V

    .line 2573
    .restart local v2       #service:Lcom/android/exchange/AbstractSyncService;
    move-object v0, v2

    check-cast v0, Lcom/android/exchange/EasSyncService;

    move-object v3, v0

    iget-boolean v3, v3, Lcom/android/exchange/EasSyncService;->mIsValid:Z

    if-nez v3, :cond_2

    monitor-exit v4

    goto :goto_0

    .line 2589
    .end local v1           #acct:Lcom/android/email/provider/EmailContent$Account;
    .end local v2           #service:Lcom/android/exchange/AbstractSyncService;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 2575
    .restart local v1       #acct:Lcom/android/email/provider/EmailContent$Account;
    .restart local v2       #service:Lcom/android/exchange/AbstractSyncService;
    :cond_2
    :try_start_1
    iget v3, p1, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    const/16 v5, 0x44

    if-ne v3, v5, :cond_5

    iget-object v3, p0, Lcom/android/exchange/SyncManager;->mProvisionErrorExist:Ljava/util/HashMap;

    iget-wide v5, v1, Lcom/android/email/provider/EmailContent$Account;->mId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 2577
    const-string v3, "Provision Error exist. Setting syncReason = SYNC_PROVISION for account sync"

    invoke-static {v3}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;)V

    .line 2578
    const/16 v3, 0x9

    iput v3, v2, Lcom/android/exchange/EasSyncService;->mSyncReason:I

    .line 2583
    :goto_1
    if-eqz p3, :cond_3

    .line 2584
    invoke-virtual {v2, p3}, Lcom/android/exchange/AbstractSyncService;->addRequest(Lcom/android/exchange/Request;)V

    .line 2586
    :cond_3
    invoke-direct {p0, v2, p1}, Lcom/android/exchange/SyncManager;->startServiceThread(Lcom/android/exchange/AbstractSyncService;Lcom/android/email/provider/EmailContent$Mailbox;)V

    .line 2589
    .end local v2           #service:Lcom/android/exchange/AbstractSyncService;
    :cond_4
    monitor-exit v4

    goto :goto_0

    .line 2581
    .restart local v2       #service:Lcom/android/exchange/AbstractSyncService;
    :cond_5
    iput p2, v2, Lcom/android/exchange/EasSyncService;->mSyncReason:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private runAccountReconciler()V
    .locals 2

    .prologue
    .line 1383
    move-object v0, p0

    .line 1384
    .local v0, syncManager:Lcom/android/exchange/SyncManager;
    new-instance v1, Lcom/android/exchange/SyncManager$3;

    invoke-direct {v1, p0, v0}, Lcom/android/exchange/SyncManager$3;-><init>(Lcom/android/exchange/SyncManager;Lcom/android/exchange/SyncManager;)V

    invoke-virtual {v1}, Lcom/android/exchange/SyncManager$3;->start()V

    .line 1414
    return-void
.end method

.method public static runAsleep(JJ)V
    .locals 1
    .parameter "id"
    .parameter "millis"

    .prologue
    .line 2103
    sget-object v0, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    .line 2104
    .local v0, syncManager:Lcom/android/exchange/SyncManager;
    if-eqz v0, :cond_0

    .line 2105
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/exchange/SyncManager;->setAlarm(JJ)V

    .line 2106
    invoke-virtual {v0, p0, p1}, Lcom/android/exchange/SyncManager;->releaseWakeLock(J)V

    .line 2108
    :cond_0
    return-void
.end method

.method public static runAwake(J)V
    .locals 1
    .parameter "id"

    .prologue
    .line 2095
    sget-object v0, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    .line 2096
    .local v0, syncManager:Lcom/android/exchange/SyncManager;
    if-eqz v0, :cond_0

    .line 2097
    invoke-direct {v0, p0, p1}, Lcom/android/exchange/SyncManager;->acquireWakeLock(J)V

    .line 2098
    invoke-direct {v0, p0, p1}, Lcom/android/exchange/SyncManager;->clearAlarm(J)V

    .line 2100
    :cond_0
    return-void
.end method

.method public static sendMessageRequest(Lcom/android/exchange/Request;)V
    .locals 7
    .parameter "req"

    .prologue
    .line 3148
    sget-object v4, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    .line 3149
    .local v4, syncManager:Lcom/android/exchange/SyncManager;
    if-nez v4, :cond_1

    .line 3163
    :cond_0
    :goto_0
    return-void

    .line 3150
    :cond_1
    iget-wide v5, p0, Lcom/android/exchange/Request;->mMessageId:J

    invoke-static {v4, v5, v6}, Lcom/android/email/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Message;

    move-result-object v2

    .line 3151
    .local v2, msg:Lcom/android/email/provider/EmailContent$Message;
    if-eqz v2, :cond_0

    .line 3154
    iget-wide v0, v2, Lcom/android/email/provider/EmailContent$Message;->mMailboxKey:J

    .line 3155
    .local v0, mailboxId:J
    iget-object v5, v4, Lcom/android/exchange/SyncManager;->mServiceMap:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/exchange/AbstractSyncService;

    .line 3157
    .local v3, service:Lcom/android/exchange/AbstractSyncService;
    if-nez v3, :cond_2

    .line 3158
    const/4 v5, 0x5

    invoke-static {v0, v1, v5, p0}, Lcom/android/exchange/SyncManager;->startManualSync(JILcom/android/exchange/Request;)Lcom/android/exchange/AbstractSyncService;

    move-result-object v3

    .line 3159
    const-string v5, "part request"

    invoke-static {v5}, Lcom/android/exchange/SyncManager;->kick(Ljava/lang/String;)V

    goto :goto_0

    .line 3161
    :cond_2
    invoke-virtual {v3, p0}, Lcom/android/exchange/AbstractSyncService;->addRequest(Lcom/android/exchange/Request;)V

    goto :goto_0
.end method

.method public static serviceRequest(JI)V
    .locals 2
    .parameter "mailboxId"
    .parameter "reason"

    .prologue
    .line 3088
    const-wide/16 v0, 0x1388

    invoke-static {p0, p1, v0, v1, p2}, Lcom/android/exchange/SyncManager;->serviceRequest(JJI)V

    .line 3089
    return-void
.end method

.method public static serviceRequest(JJI)V
    .locals 6
    .parameter "mailboxId"
    .parameter "ms"
    .parameter "reason"

    .prologue
    .line 3092
    sget-object v3, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    .line 3093
    .local v3, syncManager:Lcom/android/exchange/SyncManager;
    if-nez v3, :cond_0

    .line 3130
    :goto_0
    return-void

    .line 3094
    :cond_0
    invoke-static {v3, p0, p1}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v1

    .line 3096
    .local v1, m:Lcom/android/email/provider/EmailContent$Mailbox;
    if-eqz v1, :cond_1

    iget v4, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_1

    iget v4, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_2

    .line 3097
    :cond_1
    const-string v4, "Ignoring serviceRequest for drafts/outbox/null mailbox"

    invoke-static {v4}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 3112
    :cond_2
    iget v4, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    const/16 v5, 0x8

    if-ne v4, v5, :cond_3

    .line 3115
    sget-object v4, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    const-string v4, "Ignoring serviceRequest for search"

    invoke-static {v4}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 3120
    :cond_3
    :try_start_0
    iget-object v4, v3, Lcom/android/exchange/SyncManager;->mServiceMap:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/exchange/AbstractSyncService;

    .line 3121
    .local v2, service:Lcom/android/exchange/AbstractSyncService;
    if-eqz v2, :cond_4

    .line 3122
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long/2addr v4, p2

    iput-wide v4, v2, Lcom/android/exchange/AbstractSyncService;->mRequestTime:J

    .line 3123
    const-string v4, "service request"

    invoke-static {v4}, Lcom/android/exchange/SyncManager;->kick(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3127
    .end local v2           #service:Lcom/android/exchange/AbstractSyncService;
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 3128
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 3125
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v2       #service:Lcom/android/exchange/AbstractSyncService;
    :cond_4
    const/4 v4, 0x0

    :try_start_1
    invoke-static {p0, p1, p4, v4}, Lcom/android/exchange/SyncManager;->startManualSync(JILcom/android/exchange/Request;)Lcom/android/exchange/AbstractSyncService;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static serviceRequestImmediate(J)V
    .locals 5
    .parameter "mailboxId"

    .prologue
    .line 3133
    sget-object v2, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    .line 3134
    .local v2, syncManager:Lcom/android/exchange/SyncManager;
    if-nez v2, :cond_1

    .line 3145
    :cond_0
    :goto_0
    return-void

    .line 3135
    :cond_1
    iget-object v3, v2, Lcom/android/exchange/SyncManager;->mServiceMap:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/exchange/AbstractSyncService;

    .line 3136
    .local v1, service:Lcom/android/exchange/AbstractSyncService;
    if-eqz v1, :cond_0

    .line 3137
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v1, Lcom/android/exchange/AbstractSyncService;->mRequestTime:J

    .line 3138
    invoke-static {v2, p0, p1}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v0

    .line 3139
    .local v0, m:Lcom/android/email/provider/EmailContent$Mailbox;
    if-eqz v0, :cond_0

    .line 3140
    iget-wide v3, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-static {v2, v3, v4}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v3

    iput-object v3, v1, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    .line 3141
    iput-object v0, v1, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    .line 3142
    const-string v3, "service request immediate"

    invoke-static {v3}, Lcom/android/exchange/SyncManager;->kick(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setAlarm(JJ)V
    .locals 7
    .parameter "id"
    .parameter "millis"

    .prologue
    .line 2068
    iget-object v3, p0, Lcom/android/exchange/SyncManager;->mPendingIntents:Ljava/util/HashMap;

    monitor-enter v3

    .line 2069
    :try_start_0
    iget-object v4, p0, Lcom/android/exchange/SyncManager;->mPendingIntents:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    .line 2070
    .local v2, pi:Landroid/app/PendingIntent;
    if-nez v2, :cond_0

    .line 2071
    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcom/android/exchange/MailboxAlarmReceiver;

    invoke-direct {v1, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2072
    .local v1, i:Landroid/content/Intent;
    const-string v4, "mailbox"

    invoke-virtual {v1, v4, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2073
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Box"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2074
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {p0, v4, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 2075
    iget-object v4, p0, Lcom/android/exchange/SyncManager;->mPendingIntents:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2077
    const-string v4, "alarm"

    invoke-virtual {p0, v4}, Lcom/android/exchange/SyncManager;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 2078
    .local v0, alarmManager:Landroid/app/AlarmManager;
    const/4 v4, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    add-long/2addr v5, p3

    invoke-virtual {v0, v4, v5, v6, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 2081
    .end local v0           #alarmManager:Landroid/app/AlarmManager;
    .end local v1           #i:Landroid/content/Intent;
    :cond_0
    monitor-exit v3

    .line 2082
    return-void

    .line 2081
    .end local v2           #pi:Landroid/app/PendingIntent;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public static setEasSyncIntervals(Landroid/content/Context;Ljava/lang/String;IJZ)V
    .locals 7
    .parameter "context"
    .parameter "emailAddress"
    .parameter "syncInterval"
    .parameter "accountId"
    .parameter "modifyInbox"

    .prologue
    .line 3496
    new-instance v0, Landroid/accounts/Account;

    const-string v1, "com.android.exchange"

    invoke-direct {v0, p1, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3498
    .local v0, acct:Landroid/accounts/Account;
    const-string p1, "com.android.contacts"

    .end local p1
    invoke-static {v0, p1}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v1

    .line 3500
    .local v1, syncContacts:Z
    const-string p1, "com.android.calendar"

    invoke-static {v0, p1}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v0

    .line 3503
    .local v0, syncCalendar:Z
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    .line 3504
    .local p1, cv:Landroid/content/ContentValues;
    if-eqz p5, :cond_0

    .line 3505
    const-string p5, "syncInterval"

    .end local p5
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, p5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3506
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p5

    sget-object v2, Lcom/android/email/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "accountKey=? and type in (0,68,67)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p5, v2, p1, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3511
    :cond_0
    if-eqz v1, :cond_1

    .line 3512
    const-string p5, "syncInterval"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .end local v1           #syncContacts:Z
    invoke-virtual {p1, p5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3513
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p5

    sget-object v1, Lcom/android/email/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "accountKey=? and type in (66)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p5, v1, p1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3523
    :goto_0
    if-eqz v0, :cond_2

    .line 3524
    const-string p5, "syncInterval"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .end local p2
    invoke-virtual {p1, p5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3525
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .end local p0
    sget-object p2, Lcom/android/email/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const-string p5, "accountKey=? and type in (65)"

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .end local v0           #syncCalendar:Z
    const/4 v1, 0x0

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p3

    .end local p3
    aput-object p3, v0, v1

    invoke-virtual {p0, p2, p1, p5, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3534
    :goto_1
    return-void

    .line 3517
    .restart local v0       #syncCalendar:Z
    .restart local v1       #syncContacts:Z
    .restart local p0
    .restart local p2
    .restart local p3
    :cond_1
    const-string p5, "syncInterval"

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .end local v1           #syncContacts:Z
    move-result-object v1

    invoke-virtual {p1, p5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3518
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p5

    sget-object v1, Lcom/android/email/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "accountKey=? and type in (66)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p5, v1, p1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 3529
    :cond_2
    const-string p2, "syncInterval"

    .end local p2
    const/4 p5, -0x1

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-virtual {p1, p2, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3530
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .end local p0
    sget-object p2, Lcom/android/email/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const-string p5, "accountKey=? and type in (65)"

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .end local v0           #syncCalendar:Z
    const/4 v1, 0x0

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p3

    .end local p3
    aput-object p3, v0, v1

    invoke-virtual {p0, p2, p1, p5, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static setWatchdogAlarm(JJ)V
    .locals 1
    .parameter "id"
    .parameter "millis"

    .prologue
    .line 2118
    sget-object v0, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    .line 2119
    .local v0, syncManager:Lcom/android/exchange/SyncManager;
    if-eqz v0, :cond_0

    .line 2120
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/exchange/SyncManager;->setAlarm(JJ)V

    .line 2122
    :cond_0
    return-void
.end method

.method public static declared-synchronized shutdownConnectionManager()V
    .locals 2

    .prologue
    .line 1830
    const-class v0, Lcom/android/exchange/SyncManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/exchange/SyncManager;->sClientConnectionManager:Lorg/apache/http/conn/ClientConnectionManager;

    if-eqz v1, :cond_0

    .line 1831
    const-string v1, "Shutting down ClientConnectionManager"

    invoke-static {v1}, Lcom/android/exchange/SyncManager;->alwaysLog(Ljava/lang/String;)V

    .line 1832
    sget-object v1, Lcom/android/exchange/SyncManager;->sClientConnectionManager:Lorg/apache/http/conn/ClientConnectionManager;

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 1833
    sget v1, Lcom/android/exchange/SyncManager;->sClientConnectionManagerShutdownCount:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/android/exchange/SyncManager;->sClientConnectionManagerShutdownCount:I

    .line 1834
    const/4 v1, 0x0

    sput-object v1, Lcom/android/exchange/SyncManager;->sClientConnectionManager:Lorg/apache/http/conn/ClientConnectionManager;

    .line 1837
    :cond_0
    sget-object v1, Lcom/android/exchange/SyncManager;->lmClientConnectionManager:Lorg/apache/http/conn/ClientConnectionManager;

    if-eqz v1, :cond_1

    .line 1838
    const-string v1, "Shutting down ClientConnectionManager for loadMore"

    invoke-static {v1}, Lcom/android/exchange/SyncManager;->alwaysLog(Ljava/lang/String;)V

    .line 1839
    sget-object v1, Lcom/android/exchange/SyncManager;->lmClientConnectionManager:Lorg/apache/http/conn/ClientConnectionManager;

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 1840
    sget v1, Lcom/android/exchange/SyncManager;->lmClientConnectionManagerShutdownCount:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/android/exchange/SyncManager;->lmClientConnectionManagerShutdownCount:I

    .line 1841
    const/4 v1, 0x0

    sput-object v1, Lcom/android/exchange/SyncManager;->lmClientConnectionManager:Lorg/apache/http/conn/ClientConnectionManager;

    .line 1845
    :cond_1
    sget-object v1, Lcom/android/exchange/SyncManager;->mClientConnectionManager:Lorg/apache/http/conn/ClientConnectionManager;

    if-eqz v1, :cond_2

    .line 1846
    const-string v1, "Shutting down PingClientConnectionManager"

    invoke-static {v1}, Lcom/android/exchange/SyncManager;->alwaysLog(Ljava/lang/String;)V

    .line 1847
    sget-object v1, Lcom/android/exchange/SyncManager;->mClientConnectionManager:Lorg/apache/http/conn/ClientConnectionManager;

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 1848
    const/4 v1, 0x0

    sput-object v1, Lcom/android/exchange/SyncManager;->mClientConnectionManager:Lorg/apache/http/conn/ClientConnectionManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1851
    :cond_2
    monitor-exit v0

    return-void

    .line 1830
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static startManualSync(JILcom/android/exchange/Request;)Lcom/android/exchange/AbstractSyncService;
    .locals 9
    .parameter "mailboxId"
    .parameter "reason"
    .parameter "req"

    .prologue
    .line 3192
    sget-object v4, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    .line 3193
    .local v4, syncManager:Lcom/android/exchange/SyncManager;
    if-nez v4, :cond_0

    const/4 v5, 0x0

    .line 3232
    .end local p0
    :goto_0
    return-object v5

    .line 3194
    .restart local p0
    :cond_0
    sget-object v6, Lcom/android/exchange/SyncManager;->sSyncLock:Ljava/lang/Object;

    monitor-enter v6

    .line 3195
    :try_start_0
    iget-object v5, v4, Lcom/android/exchange/SyncManager;->mServiceMap:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_2

    .line 3196
    iget-object v5, v4, Lcom/android/exchange/SyncManager;->mSyncErrorMap:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3197
    invoke-static {v4, p0, p1}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v2

    .line 3198
    .local v2, m:Lcom/android/email/provider/EmailContent$Mailbox;
    if-eqz v2, :cond_1

    .line 3199
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Starting sync for "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, v2, Lcom/android/email/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;)V

    .line 3200
    invoke-direct {v4, v2, p2, p3}, Lcom/android/exchange/SyncManager;->requestSync(Lcom/android/email/provider/EmailContent$Mailbox;ILcom/android/exchange/Request;)V

    .line 3231
    :cond_1
    :goto_1
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3232
    iget-object v5, v4, Lcom/android/exchange/SyncManager;->mServiceMap:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/exchange/AbstractSyncService;

    move-object v5, p0

    goto :goto_0

    .line 3205
    .end local v2           #m:Lcom/android/email/provider/EmailContent$Mailbox;
    .restart local p0
    :cond_2
    :try_start_1
    invoke-static {v4, p0, p1}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v2

    .line 3206
    .restart local v2       #m:Lcom/android/email/provider/EmailContent$Mailbox;
    sget-boolean v5, Lcom/android/exchange/SyncManager;->sConnectivityHold:Z

    if-nez v5, :cond_1

    if-eqz v2, :cond_1

    .line 3208
    iget-wide v7, v2, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-static {v4, v7, v8}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v1

    .line 3209
    .local v1, acct:Lcom/android/email/provider/EmailContent$Account;
    if-eqz v1, :cond_1

    .line 3211
    iget-object v5, v4, Lcom/android/exchange/SyncManager;->mServiceMap:Ljava/util/HashMap;

    iget-wide v7, v2, Lcom/android/email/provider/EmailContent$Mailbox;->mId:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/exchange/AbstractSyncService;

    .line 3212
    .local v3, service:Lcom/android/exchange/AbstractSyncService;
    move-object v0, v3

    check-cast v0, Lcom/android/exchange/EasSyncService;

    move-object v5, v0

    iget-boolean v5, v5, Lcom/android/exchange/EasSyncService;->mIsValid:Z

    if-eqz v5, :cond_1

    .line 3215
    iget v5, v2, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    const/16 v7, 0x44

    if-ne v5, v7, :cond_3

    iget-object v5, v4, Lcom/android/exchange/SyncManager;->mProvisionErrorExist:Ljava/util/HashMap;

    iget-wide v7, v1, Lcom/android/email/provider/EmailContent$Account;->mId:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 3217
    const-string v5, "Provision Error exist. Setting syncReason = SYNC_PROVISION for account sync"

    invoke-static {v5}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;)V

    .line 3218
    const/16 v5, 0x9

    iput v5, v3, Lcom/android/exchange/AbstractSyncService;->mSyncReason:I

    .line 3223
    :goto_2
    if-eqz p3, :cond_1

    .line 3225
    invoke-virtual {v3, p3}, Lcom/android/exchange/AbstractSyncService;->addRequest(Lcom/android/exchange/Request;)V

    goto :goto_1

    .line 3231
    .end local v1           #acct:Lcom/android/email/provider/EmailContent$Account;
    .end local v2           #m:Lcom/android/email/provider/EmailContent$Mailbox;
    .end local v3           #service:Lcom/android/exchange/AbstractSyncService;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 3221
    .restart local v1       #acct:Lcom/android/email/provider/EmailContent$Account;
    .restart local v2       #m:Lcom/android/email/provider/EmailContent$Mailbox;
    .restart local v3       #service:Lcom/android/exchange/AbstractSyncService;
    :cond_3
    :try_start_2
    iput p2, v3, Lcom/android/exchange/AbstractSyncService;->mSyncReason:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method private startServiceThread(Lcom/android/exchange/AbstractSyncService;Lcom/android/email/provider/EmailContent$Mailbox;)V
    .locals 7
    .parameter "service"
    .parameter "m"

    .prologue
    .line 2524
    if-nez p2, :cond_0

    .line 2539
    :goto_0
    return-void

    .line 2525
    :cond_0
    sget-object v3, Lcom/android/exchange/SyncManager;->sSyncLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2526
    :try_start_0
    iget-object v1, p2, Lcom/android/email/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    .line 2527
    .local v1, mailboxName:Ljava/lang/String;
    iget-object v4, p1, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v0, v4, Lcom/android/email/provider/EmailContent$Account;->mDisplayName:Ljava/lang/String;

    .line 2528
    .local v0, accountName:Ljava/lang/String;
    new-instance v2, Ljava/lang/Thread;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p1, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 2530
    .local v2, thread:Ljava/lang/Thread;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Starting thread id:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in account "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;)V

    .line 2532
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 2533
    iget-object v4, p0, Lcom/android/exchange/SyncManager;->mServiceMap:Ljava/util/HashMap;

    iget-wide v5, p2, Lcom/android/email/provider/EmailContent$Mailbox;->mId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2534
    iget-wide v4, p2, Lcom/android/email/provider/EmailContent$Mailbox;->mId:J

    invoke-static {v4, v5}, Lcom/android/exchange/SyncManager;->runAwake(J)V

    .line 2535
    iget-object v4, p2, Lcom/android/email/provider/EmailContent$Mailbox;->mServerId:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, p2, Lcom/android/email/provider/EmailContent$Mailbox;->mServerId:Ljava/lang/String;

    const-string v5, "__eas"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2536
    iget-wide v4, p2, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-direct {p0, v4, v5}, Lcom/android/exchange/SyncManager;->stopPing(J)V

    .line 2538
    :cond_1
    monitor-exit v3

    goto/16 :goto_0

    .end local v0           #accountName:Ljava/lang/String;
    .end local v1           #mailboxName:Ljava/lang/String;
    .end local v2           #thread:Ljava/lang/Thread;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public static stopAccountSyncs(J)V
    .locals 2
    .parameter "acctId"

    .prologue
    .line 1854
    sget-object v0, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    .line 1855
    .local v0, syncManager:Lcom/android/exchange/SyncManager;
    if-eqz v0, :cond_0

    .line 1856
    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/android/exchange/SyncManager;->stopAccountSyncs(JZ)V

    .line 1858
    :cond_0
    return-void
.end method

.method private stopAccountSyncs(JZ)V
    .locals 11
    .parameter "acctId"
    .parameter "includeAccountMailbox"

    .prologue
    .line 1861
    sget-object v8, Lcom/android/exchange/SyncManager;->sSyncLock:Ljava/lang/Object;

    monitor-enter v8

    .line 1862
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1863
    .local v2, deletedBoxes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    iget-object v9, p0, Lcom/android/exchange/SyncManager;->mServiceMap:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 1864
    .local v4, mid:Ljava/lang/Long;
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-static {p0, v9, v10}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v1

    .line 1865
    .local v1, box:Lcom/android/email/provider/EmailContent$Mailbox;
    if-eqz v1, :cond_0

    .line 1866
    iget-wide v9, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    cmp-long v9, v9, p1

    if-nez v9, :cond_0

    .line 1867
    if-nez p3, :cond_1

    iget v9, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    const/16 v10, 0x44

    if-ne v9, v10, :cond_1

    .line 1869
    iget-object v9, p0, Lcom/android/exchange/SyncManager;->mServiceMap:Ljava/util/HashMap;

    invoke-virtual {v9, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/exchange/AbstractSyncService;

    .line 1870
    .local v5, svc:Lcom/android/exchange/AbstractSyncService;
    if-eqz v5, :cond_0

    .line 1871
    invoke-virtual {v5}, Lcom/android/exchange/AbstractSyncService;->stop()V

    goto :goto_0

    .line 1900
    .end local v1           #box:Lcom/android/email/provider/EmailContent$Mailbox;
    .end local v2           #deletedBoxes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #mid:Ljava/lang/Long;
    .end local v5           #svc:Lcom/android/exchange/AbstractSyncService;
    :catchall_0
    move-exception v9

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    .line 1875
    .restart local v1       #box:Lcom/android/email/provider/EmailContent$Mailbox;
    .restart local v2       #deletedBoxes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v4       #mid:Ljava/lang/Long;
    :cond_1
    :try_start_1
    iget-object v9, p0, Lcom/android/exchange/SyncManager;->mServiceMap:Ljava/util/HashMap;

    invoke-virtual {v9, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/exchange/AbstractSyncService;

    .line 1876
    .restart local v5       #svc:Lcom/android/exchange/AbstractSyncService;
    if-eqz v5, :cond_5

    .line 1878
    instance-of v9, v5, Lcom/android/exchange/EasSyncService;

    if-eqz v9, :cond_4

    .line 1879
    move-object v0, v5

    check-cast v0, Lcom/android/exchange/EasSyncService;

    move-object v6, v0

    .line 1880
    .local v6, svc1:Lcom/android/exchange/EasSyncService;
    iget-object v9, v6, Lcom/android/exchange/EasSyncService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget v9, v9, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    const/16 v10, 0x41

    if-eq v9, v10, :cond_2

    iget-object v9, v6, Lcom/android/exchange/EasSyncService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget v9, v9, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    const/16 v10, 0x42

    if-ne v9, v10, :cond_4

    :cond_2
    iget-object v9, v6, Lcom/android/exchange/EasSyncService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-object v9, v9, Lcom/android/email/provider/EmailContent$Mailbox;->mSyncKey:Ljava/lang/String;

    if-eqz v9, :cond_3

    iget-object v9, v6, Lcom/android/exchange/EasSyncService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-object v9, v9, Lcom/android/email/provider/EmailContent$Mailbox;->mSyncKey:Ljava/lang/String;

    const-string v10, "0"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1882
    :cond_3
    const-string v9, "stopAccountSyncs(): Calendar/Contacts doing initial sync. Continuing without stopping..."

    invoke-static {v9}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1887
    .end local v6           #svc1:Lcom/android/exchange/EasSyncService;
    :cond_4
    invoke-virtual {v5}, Lcom/android/exchange/AbstractSyncService;->stop()V

    .line 1888
    iget-object v7, v5, Lcom/android/exchange/AbstractSyncService;->mThread:Ljava/lang/Thread;

    .line 1889
    .local v7, t:Ljava/lang/Thread;
    if-eqz v7, :cond_5

    .line 1890
    invoke-virtual {v7}, Ljava/lang/Thread;->interrupt()V

    .line 1893
    .end local v7           #t:Ljava/lang/Thread;
    :cond_5
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1897
    .end local v1           #box:Lcom/android/email/provider/EmailContent$Mailbox;
    .end local v4           #mid:Ljava/lang/Long;
    .end local v5           #svc:Lcom/android/exchange/AbstractSyncService;
    :cond_6
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 1898
    .restart local v4       #mid:Ljava/lang/Long;
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-direct {p0, v9, v10}, Lcom/android/exchange/SyncManager;->releaseMailbox(J)V

    goto :goto_1

    .line 1900
    .end local v4           #mid:Ljava/lang/Long;
    :cond_7
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1901
    return-void
.end method

.method private static stopManualSync(J)V
    .locals 5
    .parameter "mailboxId"

    .prologue
    .line 3237
    sget-object v1, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    .line 3238
    .local v1, syncManager:Lcom/android/exchange/SyncManager;
    if-nez v1, :cond_0

    .line 3248
    :goto_0
    return-void

    .line 3239
    :cond_0
    sget-object v2, Lcom/android/exchange/SyncManager;->sSyncLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3240
    :try_start_0
    iget-object v3, v1, Lcom/android/exchange/SyncManager;->mServiceMap:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exchange/AbstractSyncService;

    .line 3241
    .local v0, svc:Lcom/android/exchange/AbstractSyncService;
    if-eqz v0, :cond_1

    .line 3242
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stopping sync for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/exchange/AbstractSyncService;->mMailboxName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;)V

    .line 3243
    invoke-virtual {v0}, Lcom/android/exchange/AbstractSyncService;->stop()V

    .line 3244
    iget-object v3, v0, Lcom/android/exchange/AbstractSyncService;->mThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 3245
    invoke-virtual {v1, p0, p1}, Lcom/android/exchange/SyncManager;->releaseWakeLock(J)V

    .line 3247
    :cond_1
    monitor-exit v2

    goto :goto_0

    .end local v0           #svc:Lcom/android/exchange/AbstractSyncService;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private stopPing(J)V
    .locals 10
    .parameter "accountId"

    .prologue
    .line 2547
    sget-object v7, Lcom/android/exchange/SyncManager;->sSyncLock:Ljava/lang/Object;

    monitor-enter v7

    .line 2548
    :try_start_0
    iget-object v6, p0, Lcom/android/exchange/SyncManager;->mServiceMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 2549
    .local v2, mailboxId:J
    invoke-static {p0, v2, v3}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v1

    .line 2550
    .local v1, m:Lcom/android/email/provider/EmailContent$Mailbox;
    if-eqz v1, :cond_0

    .line 2551
    iget-object v4, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mServerId:Ljava/lang/String;

    .line 2552
    .local v4, serverId:Ljava/lang/String;
    iget-wide v8, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    cmp-long v6, v8, p1

    if-nez v6, :cond_0

    if-eqz v4, :cond_0

    const-string v6, "__eas"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2555
    iget-object v6, p0, Lcom/android/exchange/SyncManager;->mServiceMap:Ljava/util/HashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/exchange/AbstractSyncService;

    .line 2556
    .local v5, svc:Lcom/android/exchange/AbstractSyncService;
    invoke-virtual {v5}, Lcom/android/exchange/AbstractSyncService;->reset()V

    goto :goto_0

    .line 2560
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #m:Lcom/android/email/provider/EmailContent$Mailbox;
    .end local v2           #mailboxId:J
    .end local v4           #serverId:Ljava/lang/String;
    .end local v5           #svc:Lcom/android/exchange/AbstractSyncService;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2561
    return-void
.end method

.method private stopServiceThreads()V
    .locals 7

    .prologue
    .line 2593
    sget-object v4, Lcom/android/exchange/SyncManager;->sSyncLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2594
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2597
    .local v3, toStop:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v5, p0, Lcom/android/exchange/SyncManager;->mServiceMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 2598
    .local v1, mailboxId:Ljava/lang/Long;
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2613
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #mailboxId:Ljava/lang/Long;
    .end local v3           #toStop:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 2602
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v3       #toStop:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_0
    :try_start_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 2603
    .restart local v1       #mailboxId:Ljava/lang/Long;
    iget-object v5, p0, Lcom/android/exchange/SyncManager;->mServiceMap:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/exchange/AbstractSyncService;

    .line 2604
    .local v2, svc:Lcom/android/exchange/AbstractSyncService;
    if-eqz v2, :cond_1

    .line 2605
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Stopping "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v6, v6, Lcom/android/email/provider/EmailContent$Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x2f

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-object v6, v6, Lcom/android/email/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;)V

    .line 2606
    invoke-virtual {v2}, Lcom/android/exchange/AbstractSyncService;->stop()V

    .line 2607
    iget-object v5, v2, Lcom/android/exchange/AbstractSyncService;->mThread:Ljava/lang/Thread;

    if-eqz v5, :cond_1

    .line 2608
    iget-object v5, v2, Lcom/android/exchange/AbstractSyncService;->mThread:Ljava/lang/Thread;

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    .line 2611
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lcom/android/exchange/SyncManager;->releaseWakeLock(J)V

    goto :goto_1

    .line 2613
    .end local v1           #mailboxId:Ljava/lang/Long;
    .end local v2           #svc:Lcom/android/exchange/AbstractSyncService;
    :cond_2
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2614
    return-void
.end method

.method private unregisterCalendarObservers()V
    .locals 3

    .prologue
    .line 1040
    iget-object v2, p0, Lcom/android/exchange/SyncManager;->mCalendarObservers:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/exchange/SyncManager$CalendarObserver;

    .line 1041
    .local v1, observer:Lcom/android/exchange/SyncManager$CalendarObserver;
    iget-object v2, p0, Lcom/android/exchange/SyncManager;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v2, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0

    .line 1043
    .end local v1           #observer:Lcom/android/exchange/SyncManager$CalendarObserver;
    :cond_0
    iget-object v2, p0, Lcom/android/exchange/SyncManager;->mCalendarObservers:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 1044
    return-void
.end method

.method private updateAccountDb(Z)V
    .locals 22
    .parameter "networkChanged"

    .prologue
    .line 3579
    const-string v19, "phone"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/exchange/SyncManager;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/telephony/TelephonyManager;

    .line 3580
    .local v16, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual/range {v16 .. v16}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v9

    .line 3581
    .local v9, isRoaming:Z
    const-wide/32 v13, 0x5265c00

    .line 3582
    .local v13, nextAlarmForPeak:J
    const-wide/32 v17, 0x5265c00

    .line 3584
    .local v17, tmpNextAlarm:J
    invoke-static {}, Lcom/android/exchange/SyncManager;->getAccountList()Lcom/android/exchange/SyncManager$AccountList;

    move-result-object v5

    .line 3586
    .local v5, accounts:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/provider/EmailContent$Account;>;"
    monitor-enter v5

    .line 3587
    :try_start_0
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/email/provider/EmailContent$Account;

    .line 3588
    .local v4, account:Lcom/android/email/provider/EmailContent$Account;
    move-object v0, v4

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/email/provider/EmailContent$HostAuth;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "eas"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 3589
    invoke-virtual {v4}, Lcom/android/email/provider/EmailContent$Account;->getSyncScheduleData()Lcom/android/exchange/SyncScheduleData;

    move-result-object v15

    .line 3590
    .local v15, syncScheduleData:Lcom/android/exchange/SyncScheduleData;
    invoke-static {v15}, Lcom/android/exchange/SyncScheduler;->getIsPeakAndNextAlarm(Lcom/android/exchange/SyncScheduleData;)Landroid/util/Pair;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    .line 3591
    .local v8, isInPeakPeriod:Z
    invoke-static {v15}, Lcom/android/exchange/SyncScheduler;->getIsPeakAndNextAlarm(Lcom/android/exchange/SyncScheduleData;)Landroid/util/Pair;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    .line 3592
    const/4 v12, -0x2

    .line 3593
    .local v12, newSyncInterval:I
    cmp-long v19, v17, v13

    if-gtz v19, :cond_1

    .line 3594
    move-wide/from16 v13, v17

    .line 3595
    sget-boolean v19, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v19, :cond_1

    .line 3596
    const-string v19, "James"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Final nextAlarmForPeak = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-wide v1, v13

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/android/exchange/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3598
    :cond_1
    if-eqz v9, :cond_3

    invoke-virtual {v15}, Lcom/android/exchange/SyncScheduleData;->getRoamingSchedule()I

    move-result v19

    if-nez v19, :cond_3

    .line 3600
    const/4 v12, -0x1

    .line 3601
    sget-boolean v19, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v19, :cond_2

    .line 3602
    const-string v19, "EAS SyncManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "updateAccountDb(): "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object v0, v4

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Account;->mDisplayName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ": in roaming manual=["

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "]"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " db interval=["

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object v0, v4

    iget v0, v0, Lcom/android/email/provider/EmailContent$Account;->mSyncInterval:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "]"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/android/exchange/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3616
    :cond_2
    :goto_1
    move-object v0, v4

    iget v0, v0, Lcom/android/email/provider/EmailContent$Account;->mSyncInterval:I

    move/from16 v19, v0

    move/from16 v0, v19

    move v1, v12

    if-eq v0, v1, :cond_0

    move-object v0, v4

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Account;->mSyncKey:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_0

    move-object v0, v4

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Account;->mSyncKey:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "0"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_0

    .line 3618
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 3619
    .local v6, cv:Landroid/content/ContentValues;
    const-string v19, "syncInterval"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object v0, v6

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3620
    invoke-static {}, Lcom/android/exchange/SyncManager;->getContext()Landroid/content/Context;

    move-result-object v19

    move-object v0, v4

    move-object/from16 v1, v19

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/email/provider/EmailContent$Account;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 3622
    new-instance v11, Ljava/util/Date;

    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    .line 3623
    .local v11, lv_localDate:Ljava/util/Date;
    new-instance v10, Ljava/text/SimpleDateFormat;

    const-string v19, "HH:mm"

    move-object v0, v10

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 3624
    .local v10, lv_formatter:Ljava/text/SimpleDateFormat;
    sget-boolean v19, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v19, :cond_0

    .line 3625
    const-string v19, "EAS SyncManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "updateAccountDb(): "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v4}, Lcom/android/email/provider/EmailContent$Account;->getDisplayName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ": "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "peak-offpeak/roaming switching - update db at ["

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v10, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "]"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " new=["

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "] old=["

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object v0, v4

    iget v0, v0, Lcom/android/email/provider/EmailContent$Account;->mSyncInterval:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "]"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/android/exchange/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3630
    .end local v4           #account:Lcom/android/email/provider/EmailContent$Account;
    .end local v6           #cv:Landroid/content/ContentValues;
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v8           #isInPeakPeriod:Z
    .end local v10           #lv_formatter:Ljava/text/SimpleDateFormat;
    .end local v11           #lv_localDate:Ljava/util/Date;
    .end local v12           #newSyncInterval:I
    .end local v15           #syncScheduleData:Lcom/android/exchange/SyncScheduleData;
    :catchall_0
    move-exception v19

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v19

    .line 3603
    .restart local v4       #account:Lcom/android/email/provider/EmailContent$Account;
    .restart local v7       #i$:Ljava/util/Iterator;
    .restart local v8       #isInPeakPeriod:Z
    .restart local v12       #newSyncInterval:I
    .restart local v15       #syncScheduleData:Lcom/android/exchange/SyncScheduleData;
    :cond_3
    if-eqz v8, :cond_4

    .line 3605
    :try_start_1
    invoke-virtual {v15}, Lcom/android/exchange/SyncScheduleData;->getPeakSchedule()I

    move-result v12

    .line 3606
    sget-boolean v19, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v19, :cond_2

    .line 3607
    const-string v19, "EAS SyncManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "updateAccountDb(): "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object v0, v4

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Account;->mDisplayName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ": in peak=["

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "]"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " db interval=["

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object v0, v4

    iget v0, v0, Lcom/android/email/provider/EmailContent$Account;->mSyncInterval:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "]"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/android/exchange/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3610
    :cond_4
    invoke-virtual {v15}, Lcom/android/exchange/SyncScheduleData;->getOffPeakSchedule()I

    move-result v12

    .line 3611
    sget-boolean v19, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v19, :cond_2

    .line 3612
    const-string v19, "EAS SyncManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "updateAccountDb(): "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object v0, v4

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Account;->mDisplayName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ": in offpeak=["

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "]"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " db interval=["

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object v0, v4

    iget v0, v0, Lcom/android/email/provider/EmailContent$Account;->mSyncInterval:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "]"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/android/exchange/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3630
    .end local v4           #account:Lcom/android/email/provider/EmailContent$Account;
    .end local v8           #isInPeakPeriod:Z
    .end local v12           #newSyncInterval:I
    .end local v15           #syncScheduleData:Lcom/android/exchange/SyncScheduleData;
    :cond_5
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3631
    if-nez p1, :cond_8

    .line 3632
    sget-boolean v19, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v19, :cond_6

    .line 3633
    const-string v19, "James"

    const-string v20, "UpdateAccountDb() : calling thread for WAIT!"

    invoke-static/range {v19 .. v20}, Lcom/android/exchange/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3634
    :cond_6
    sget-object v19, Lcom/android/exchange/SyncManager;->mInstance_UpdateAccountHearbeat:Lcom/android/exchange/SyncManager$syncManager_UpdateAccountHearbeat;

    if-eqz v19, :cond_7

    .line 3636
    sget-object v19, Lcom/android/exchange/SyncManager;->mInstance_UpdateAccountHearbeat:Lcom/android/exchange/SyncManager$syncManager_UpdateAccountHearbeat;

    monitor-enter v19

    .line 3637
    :try_start_2
    sget-object v20, Lcom/android/exchange/SyncManager;->mInstance_UpdateAccountHearbeat:Lcom/android/exchange/SyncManager$syncManager_UpdateAccountHearbeat;

    invoke-virtual/range {v20 .. v20}, Lcom/android/exchange/SyncManager$syncManager_UpdateAccountHearbeat;->setFlag()V

    .line 3638
    sget-object v20, Lcom/android/exchange/SyncManager;->mInstance_UpdateAccountHearbeat:Lcom/android/exchange/SyncManager$syncManager_UpdateAccountHearbeat;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->notify()V

    .line 3639
    monitor-exit v19
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3641
    :cond_7
    new-instance v19, Lcom/android/exchange/SyncManager$syncManager_UpdateAccountHearbeat;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-wide v2, v13

    invoke-direct {v0, v1, v2, v3}, Lcom/android/exchange/SyncManager$syncManager_UpdateAccountHearbeat;-><init>(Lcom/android/exchange/SyncManager;J)V

    sput-object v19, Lcom/android/exchange/SyncManager;->mInstance_UpdateAccountHearbeat:Lcom/android/exchange/SyncManager$syncManager_UpdateAccountHearbeat;

    .line 3642
    sget-object v19, Lcom/android/exchange/SyncManager;->mInstance_UpdateAccountHearbeat:Lcom/android/exchange/SyncManager$syncManager_UpdateAccountHearbeat;

    const-string v20, "updateAccountDB"

    invoke-virtual/range {v19 .. v20}, Lcom/android/exchange/SyncManager$syncManager_UpdateAccountHearbeat;->setName(Ljava/lang/String;)V

    .line 3643
    sget-object v19, Lcom/android/exchange/SyncManager;->mInstance_UpdateAccountHearbeat:Lcom/android/exchange/SyncManager$syncManager_UpdateAccountHearbeat;

    invoke-virtual/range {v19 .. v19}, Lcom/android/exchange/SyncManager$syncManager_UpdateAccountHearbeat;->start()V

    .line 3645
    :cond_8
    return-void

    .line 3639
    :catchall_1
    move-exception v20

    :try_start_3
    monitor-exit v19
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v20
.end method

.method static updateBadgeProvider(Landroid/content/ContentResolver;)V
    .locals 6
    .parameter "resolver"

    .prologue
    .line 2349
    invoke-static {p0}, Lcom/android/exchange/SyncManager;->getCountofAccounts(Landroid/content/ContentResolver;)I

    move-result v0

    .line 2350
    .local v0, cnt:I
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2351
    .local v1, newValues:Landroid/content/ContentValues;
    const-string v3, "package"

    const-string v4, "com.android.email"

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2352
    const-string v3, "class"

    const-string v4, "com.android.email.activity.Welcome"

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2353
    const-string v3, "badgecount"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2354
    const-string v2, "package=\'com.android.email\' AND class=\'com.android.email.activity.Welcome\'"

    .line 2355
    .local v2, where:Ljava/lang/String;
    const-string v3, "content://com.sec.badge/apps"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v1, v2, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2356
    const-string v3, "EAS SyncManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[updateBadgeProvider] - cnt : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 2357
    return-void
.end method

.method private updatePIMSyncSettings(Lcom/android/email/provider/EmailContent$Account;ILjava/lang/String;)V
    .locals 10
    .parameter "providerAccount"
    .parameter "mailboxType"
    .parameter "authority"

    .prologue
    .line 2194
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2195
    .local v1, cv:Landroid/content/ContentValues;
    iget-wide v6, p1, Lcom/android/email/provider/EmailContent$Account;->mId:J

    invoke-static {p0, v6, v7, p2}, Lcom/android/email/provider/EmailContent$Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v3

    .line 2198
    .local v3, mailboxId:J
    const-wide/16 v6, -0x1

    cmp-long v6, v3, v6

    if-eqz v6, :cond_0

    .line 2200
    new-instance v0, Landroid/accounts/Account;

    iget-object v6, p1, Lcom/android/email/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    const-string v7, "com.android.exchange"

    invoke-direct {v0, v6, v7}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2204
    .local v0, acct:Landroid/accounts/Account;
    invoke-static {p0, v3, v4}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v2

    .line 2205
    .local v2, mailbox:Lcom/android/email/provider/EmailContent$Mailbox;
    if-nez v2, :cond_1

    .line 2237
    .end local v0           #acct:Landroid/accounts/Account;
    .end local v2           #mailbox:Lcom/android/email/provider/EmailContent$Mailbox;
    :cond_0
    :goto_0
    return-void

    .line 2206
    .restart local v0       #acct:Landroid/accounts/Account;
    .restart local v2       #mailbox:Lcom/android/email/provider/EmailContent$Mailbox;
    :cond_1
    iget v5, v2, Lcom/android/email/provider/EmailContent$Mailbox;->mSyncInterval:I

    .line 2208
    .local v5, syncInterval:I
    invoke-static {v0, p3}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_4

    .line 2210
    invoke-static {v0, p3}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2212
    invoke-virtual {p1}, Lcom/android/email/provider/EmailContent$Account;->getSyncInterval()I

    move-result v6

    if-eq v6, v5, :cond_2

    .line 2214
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Sync for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v2, Lcom/android/email/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": SyncInterval="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/email/provider/EmailContent$Account;->getSyncInterval()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;)V

    .line 2215
    const-string v6, "syncInterval"

    invoke-virtual {p1}, Lcom/android/email/provider/EmailContent$Account;->getSyncInterval()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2230
    :cond_2
    :goto_1
    const-string v6, "syncInterval"

    invoke-virtual {v1, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/exchange/SyncManager;->mResolver:Landroid/content/ContentResolver;

    if-eqz v6, :cond_0

    .line 2232
    iget-object v6, p0, Lcom/android/exchange/SyncManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v7, Lcom/android/email/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v1, v8, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2234
    const-string v6, "sync settings change"

    invoke-static {v6}, Lcom/android/exchange/SyncManager;->kick(Ljava/lang/String;)V

    goto :goto_0

    .line 2219
    :cond_3
    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    .line 2220
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Sync for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v2, Lcom/android/email/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": manual"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;)V

    .line 2221
    const-string v6, "syncInterval"

    const/4 v7, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    .line 2224
    :cond_4
    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    .line 2225
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Sync for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v2, Lcom/android/email/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": manual"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;)V

    .line 2226
    const-string v6, "syncInterval"

    const/4 v7, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_1
.end method

.method private waitForConnectivity()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 2617
    const/4 v2, 0x0

    .line 2618
    .local v2, waiting:Z
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Lcom/android/exchange/SyncManager;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 2620
    .local v0, cm:Landroid/net/ConnectivityManager;
    :goto_0
    iget-boolean v3, p0, Lcom/android/exchange/SyncManager;->mStop:Z

    if-nez v3, :cond_1

    .line 2621
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 2623
    .local v1, info:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    .line 2624
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ActiveNetworkInfo:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", State:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/NetworkInfo$State;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", DetailedState:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/NetworkInfo$DetailedState;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;)V

    .line 2627
    :cond_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_2

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v3, v4, :cond_2

    .line 2633
    if-eqz v2, :cond_1

    .line 2635
    const/4 v3, 0x0

    invoke-virtual {p0, p0, v8, v3}, Lcom/android/exchange/SyncManager;->releaseSyncHolds(Landroid/content/Context;ILcom/android/email/provider/EmailContent$Account;)V

    .line 2637
    invoke-direct {p0}, Lcom/android/exchange/SyncManager;->logSyncHolds()V

    .line 2664
    .end local v1           #info:Landroid/net/NetworkInfo;
    :cond_1
    return-void

    .line 2642
    .restart local v1       #info:Landroid/net/NetworkInfo;
    :cond_2
    if-nez v2, :cond_3

    .line 2643
    const/4 v2, 0x1

    .line 2644
    invoke-direct {p0}, Lcom/android/exchange/SyncManager;->stopServiceThreads()V

    .line 2648
    :cond_3
    sget-object v3, Lcom/android/exchange/SyncManager;->sConnectivityLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2649
    const-wide/16 v4, -0x1

    const-wide/32 v6, 0x93b48

    :try_start_0
    invoke-static {v4, v5, v6, v7}, Lcom/android/exchange/SyncManager;->runAsleep(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2651
    :try_start_1
    const-string v4, "Connectivity lock..."

    invoke-static {v4}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;)V

    .line 2652
    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/exchange/SyncManager;->sConnectivityHold:Z

    .line 2653
    sget-object v4, Lcom/android/exchange/SyncManager;->sConnectivityLock:Ljava/lang/Object;

    const-wide/32 v5, 0x927c0

    invoke-virtual {v4, v5, v6}, Ljava/lang/Object;->wait(J)V

    .line 2654
    const-string v4, "Connectivity lock released..."

    invoke-static {v4}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2658
    const/4 v4, 0x0

    :try_start_2
    sput-boolean v4, Lcom/android/exchange/SyncManager;->sConnectivityHold:Z

    .line 2660
    :goto_1
    const-wide/16 v4, -0x1

    invoke-static {v4, v5}, Lcom/android/exchange/SyncManager;->runAwake(J)V

    .line 2661
    monitor-exit v3

    goto/16 :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 2658
    :catchall_1
    move-exception v4

    const/4 v5, 0x0

    :try_start_3
    sput-boolean v5, Lcom/android/exchange/SyncManager;->sConnectivityHold:Z

    throw v4

    .line 2655
    :catch_0
    move-exception v4

    .line 2658
    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/exchange/SyncManager;->sConnectivityHold:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method maybeStartSyncManagerThread()V
    .locals 3

    .prologue
    .line 1685
    sget-object v0, Lcom/android/email/provider/EmailContent$HostAuth;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "protocol=\"eas\""

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/android/email/provider/EmailContent;->count(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    .line 1686
    sget-object v0, Lcom/android/exchange/SyncManager;->sServiceThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/exchange/SyncManager;->sServiceThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1687
    :cond_0
    sget-object v0, Lcom/android/exchange/SyncManager;->sServiceThread:Ljava/lang/Thread;

    if-nez v0, :cond_2

    const-string v0, "Starting thread..."

    :goto_0
    invoke-static {v0}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;)V

    .line 1688
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "SyncManager"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    sput-object v0, Lcom/android/exchange/SyncManager;->sServiceThread:Ljava/lang/Thread;

    .line 1689
    sget-object v0, Lcom/android/exchange/SyncManager;->sServiceThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1692
    :cond_1
    return-void

    .line 1687
    :cond_2
    const-string v0, "Restarting thread..."

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 1556
    iget-object v0, p0, Lcom/android/exchange/SyncManager;->mBinder:Lcom/android/email/service/IEmailService$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 6

    .prologue
    .line 1583
    const-string v2, "!!! EAS SyncManager, onCreate"

    invoke-static {v2}, Lcom/android/exchange/SyncManager;->alwaysLog(Ljava/lang/String;)V

    .line 1584
    sget-object v2, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    if-nez v2, :cond_1

    .line 1585
    sput-object p0, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    .line 1586
    invoke-virtual {p0}, Lcom/android/exchange/SyncManager;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exchange/SyncManager;->mResolver:Landroid/content/ContentResolver;

    .line 1587
    new-instance v2, Lcom/android/exchange/SyncManager$AccountObserver;

    iget-object v3, p0, Lcom/android/exchange/SyncManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/android/exchange/SyncManager$AccountObserver;-><init>(Lcom/android/exchange/SyncManager;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/exchange/SyncManager;->mAccountObserver:Lcom/android/exchange/SyncManager$AccountObserver;

    .line 1588
    iget-object v2, p0, Lcom/android/exchange/SyncManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/email/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/exchange/SyncManager;->mAccountObserver:Lcom/android/exchange/SyncManager$AccountObserver;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1589
    new-instance v2, Lcom/android/exchange/SyncManager$MailboxObserver;

    iget-object v3, p0, Lcom/android/exchange/SyncManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/android/exchange/SyncManager$MailboxObserver;-><init>(Lcom/android/exchange/SyncManager;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/exchange/SyncManager;->mMailboxObserver:Lcom/android/exchange/SyncManager$MailboxObserver;

    .line 1590
    new-instance v2, Lcom/android/exchange/SyncManager$SyncedMessageObserver;

    iget-object v3, p0, Lcom/android/exchange/SyncManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/android/exchange/SyncManager$SyncedMessageObserver;-><init>(Lcom/android/exchange/SyncManager;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/exchange/SyncManager;->mSyncedMessageObserver:Lcom/android/exchange/SyncManager$SyncedMessageObserver;

    .line 1591
    new-instance v2, Lcom/android/exchange/SyncManager$MessageObserver;

    iget-object v3, p0, Lcom/android/exchange/SyncManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/android/exchange/SyncManager$MessageObserver;-><init>(Lcom/android/exchange/SyncManager;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/exchange/SyncManager;->mMessageObserver:Lcom/android/exchange/SyncManager$MessageObserver;

    .line 1592
    new-instance v2, Lcom/android/exchange/SyncManager$EasSyncStatusObserver;

    invoke-direct {v2, p0}, Lcom/android/exchange/SyncManager$EasSyncStatusObserver;-><init>(Lcom/android/exchange/SyncManager;)V

    iput-object v2, p0, Lcom/android/exchange/SyncManager;->mSyncStatusObserver:Lcom/android/exchange/SyncManager$EasSyncStatusObserver;

    .line 1595
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Lcom/android/exchange/SyncManager;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 1596
    .local v1, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/exchange/SyncManager;->mIsNetworkRoaming:Z

    .line 1598
    new-instance v2, Lcom/android/exchange/SyncManager$4;

    invoke-direct {v2, p0}, Lcom/android/exchange/SyncManager$4;-><init>(Lcom/android/exchange/SyncManager;)V

    iput-object v2, p0, Lcom/android/exchange/SyncManager;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 1620
    :try_start_0
    sget-object v2, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    invoke-static {v2}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/email/SecurityPolicy;->setActivePoliciesAtSystemProperties()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1627
    :goto_0
    iget-object v2, p0, Lcom/android/exchange/SyncManager;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v2}, Lcom/android/exchange/SyncManager;->insertBadgeProvider(Landroid/content/ContentResolver;)V

    .line 1628
    iget-object v2, p0, Lcom/android/exchange/SyncManager;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v2}, Lcom/android/exchange/SyncManager;->updateBadgeProvider(Landroid/content/ContentResolver;)V

    .line 1634
    .end local v1           #tm:Landroid/telephony/TelephonyManager;
    :goto_1
    sget-object v2, Lcom/android/exchange/SyncManager;->sDeviceId:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 1636
    :try_start_1
    invoke-static {p0}, Lcom/android/exchange/SyncManager;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1644
    :cond_0
    invoke-direct {p0}, Lcom/android/exchange/SyncManager;->runAccountReconciler()V

    .line 1645
    return-void

    .line 1623
    .restart local v1       #tm:Landroid/telephony/TelephonyManager;
    :catchall_0
    move-exception v2

    throw v2

    .line 1632
    .end local v1           #tm:Landroid/telephony/TelephonyManager;
    :cond_1
    const-string v2, "!!! EAS SyncManager onCreated, but INSTANCE not null??"

    invoke-static {v2}, Lcom/android/exchange/SyncManager;->alwaysLog(Ljava/lang/String;)V

    goto :goto_1

    .line 1637
    :catch_0
    move-exception v0

    .line 1639
    .local v0, e:Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    throw v2

    .line 1621
    .end local v0           #e:Ljava/io/IOException;
    .restart local v1       #tm:Landroid/telephony/TelephonyManager;
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1664
    const-string v0, "!!! EAS SyncManager, onDestroy"

    invoke-static {v0}, Lcom/android/exchange/SyncManager;->alwaysLog(Ljava/lang/String;)V

    .line 1665
    sget-object v0, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    if-eqz v0, :cond_0

    .line 1666
    sput-object v2, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    .line 1667
    iget-object v0, p0, Lcom/android/exchange/SyncManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/exchange/SyncManager;->mAccountObserver:Lcom/android/exchange/SyncManager$AccountObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1668
    invoke-direct {p0}, Lcom/android/exchange/SyncManager;->unregisterCalendarObservers()V

    .line 1669
    iput-object v2, p0, Lcom/android/exchange/SyncManager;->mResolver:Landroid/content/ContentResolver;

    .line 1670
    iput-object v2, p0, Lcom/android/exchange/SyncManager;->mAccountObserver:Lcom/android/exchange/SyncManager$AccountObserver;

    .line 1671
    iput-object v2, p0, Lcom/android/exchange/SyncManager;->mMailboxObserver:Lcom/android/exchange/SyncManager$MailboxObserver;

    .line 1672
    iput-object v2, p0, Lcom/android/exchange/SyncManager;->mSyncedMessageObserver:Lcom/android/exchange/SyncManager$SyncedMessageObserver;

    .line 1673
    iput-object v2, p0, Lcom/android/exchange/SyncManager;->mMessageObserver:Lcom/android/exchange/SyncManager$MessageObserver;

    .line 1674
    iput-object v2, p0, Lcom/android/exchange/SyncManager;->mSyncStatusObserver:Lcom/android/exchange/SyncManager$EasSyncStatusObserver;

    .line 1675
    iput-object v2, p0, Lcom/android/exchange/SyncManager;->mAccountsUpdatedListener:Lcom/android/exchange/SyncManager$EasAccountsUpdatedListener;

    .line 1677
    iput-object v2, p0, Lcom/android/exchange/SyncManager;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 1680
    :cond_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 1649
    const-string v0, "!!! EAS SyncManager, onStartCommand"

    invoke-static {v0}, Lcom/android/exchange/SyncManager;->alwaysLog(Ljava/lang/String;)V

    .line 1654
    invoke-virtual {p0}, Lcom/android/exchange/SyncManager;->maybeStartSyncManagerThread()V

    .line 1655
    sget-object v0, Lcom/android/exchange/SyncManager;->sServiceThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 1656
    const-string v0, "!!! EAS SyncManager, stopping self"

    invoke-static {v0}, Lcom/android/exchange/SyncManager;->alwaysLog(Ljava/lang/String;)V

    .line 1657
    invoke-virtual {p0}, Lcom/android/exchange/SyncManager;->stopSelf()V

    .line 1659
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method releaseSyncHolds(Landroid/content/Context;ILcom/android/email/provider/EmailContent$Account;)V
    .locals 1
    .parameter "context"
    .parameter "reason"
    .parameter "account"

    .prologue
    .line 1313
    invoke-direct {p0, p1, p2, p3}, Lcom/android/exchange/SyncManager;->releaseSyncHoldsImpl(Landroid/content/Context;ILcom/android/email/provider/EmailContent$Account;)V

    .line 1314
    const-string v0, "security release"

    invoke-static {v0}, Lcom/android/exchange/SyncManager;->kick(Ljava/lang/String;)V

    .line 1315
    return-void
.end method

.method public releaseWakeLock(J)V
    .locals 4
    .parameter "id"

    .prologue
    .line 2017
    iget-object v1, p0, Lcom/android/exchange/SyncManager;->mWakeLocks:Ljava/util/HashMap;

    monitor-enter v1

    .line 2018
    :try_start_0
    iget-object v2, p0, Lcom/android/exchange/SyncManager;->mWakeLocks:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 2019
    .local v0, lock:Ljava/lang/Boolean;
    if-eqz v0, :cond_1

    .line 2020
    iget-object v2, p0, Lcom/android/exchange/SyncManager;->mWakeLocks:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2021
    iget-object v2, p0, Lcom/android/exchange/SyncManager;->mWakeLocks:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2022
    iget-object v2, p0, Lcom/android/exchange/SyncManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_0

    .line 2023
    iget-object v2, p0, Lcom/android/exchange/SyncManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2025
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/exchange/SyncManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 2030
    :cond_1
    monitor-exit v1

    .line 2031
    return-void

    .line 2030
    .end local v0           #lock:Ljava/lang/Boolean;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public run()V
    .locals 15

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    const-string v14, "phone"

    const-string v13, "EAS SyncManager"

    .line 2667
    iput-boolean v10, p0, Lcom/android/exchange/SyncManager;->mStop:Z

    .line 2670
    sget-boolean v6, Lcom/android/exchange/Eas;->DEBUG:Z

    if-eqz v6, :cond_0

    .line 2671
    sput-boolean v11, Lcom/android/exchange/Eas;->USER_LOG:Z

    .line 2672
    sput-boolean v11, Lcom/android/exchange/Eas;->PARSER_LOG:Z

    .line 2673
    sput-boolean v11, Lcom/android/exchange/Eas;->FILE_LOG:Z

    .line 2677
    :cond_0
    sget-boolean v6, Lcom/android/exchange/Eas;->WAIT_DEBUG:Z

    if-eqz v6, :cond_1

    .line 2678
    invoke-static {}, Landroid/os/Debug;->waitForDebugger()V

    .line 2686
    :cond_1
    iget-object v6, p0, Lcom/android/exchange/SyncManager;->mResolver:Landroid/content/ContentResolver;

    if-nez v6, :cond_3

    .line 2832
    :cond_2
    return-void

    .line 2690
    :cond_3
    sget-object v6, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    if-eqz v6, :cond_2

    .line 2691
    iget-object v6, p0, Lcom/android/exchange/SyncManager;->mMailboxObserver:Lcom/android/exchange/SyncManager$MailboxObserver;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/exchange/SyncManager;->mSyncedMessageObserver:Lcom/android/exchange/SyncManager$SyncedMessageObserver;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/exchange/SyncManager;->mMessageObserver:Lcom/android/exchange/SyncManager$MessageObserver;

    if-eqz v6, :cond_2

    .line 2694
    :try_start_0
    iget-object v6, p0, Lcom/android/exchange/SyncManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v7, Lcom/android/email/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/exchange/SyncManager;->mMailboxObserver:Lcom/android/exchange/SyncManager$MailboxObserver;

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2695
    iget-object v6, p0, Lcom/android/exchange/SyncManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v7, Lcom/android/email/provider/EmailContent$Message;->SYNCED_CONTENT_URI:Landroid/net/Uri;

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/android/exchange/SyncManager;->mSyncedMessageObserver:Lcom/android/exchange/SyncManager$SyncedMessageObserver;

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2696
    iget-object v6, p0, Lcom/android/exchange/SyncManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v7, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/android/exchange/SyncManager;->mMessageObserver:Lcom/android/exchange/SyncManager$MessageObserver;

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2697
    const/4 v6, 0x1

    iget-object v7, p0, Lcom/android/exchange/SyncManager;->mSyncStatusObserver:Lcom/android/exchange/SyncManager$EasSyncStatusObserver;

    invoke-static {v6, v7}, Landroid/content/ContentResolver;->addStatusChangeListener(ILandroid/content/SyncStatusObserver;)Ljava/lang/Object;

    .line 2699
    new-instance v6, Lcom/android/exchange/SyncManager$EasAccountsUpdatedListener;

    invoke-direct {v6, p0}, Lcom/android/exchange/SyncManager$EasAccountsUpdatedListener;-><init>(Lcom/android/exchange/SyncManager;)V

    iput-object v6, p0, Lcom/android/exchange/SyncManager;->mAccountsUpdatedListener:Lcom/android/exchange/SyncManager$EasAccountsUpdatedListener;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2706
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/exchange/SyncManager;->getApplication()Landroid/app/Application;

    move-result-object v6

    invoke-static {v6}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v6

    iget-object v7, p0, Lcom/android/exchange/SyncManager;->mAccountsUpdatedListener:Lcom/android/exchange/SyncManager$EasAccountsUpdatedListener;

    iget-object v8, p0, Lcom/android/exchange/SyncManager;->mHandler:Landroid/os/Handler;

    const/4 v9, 0x1

    invoke-virtual {v6, v7, v8, v9}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2

    .line 2715
    :goto_1
    new-instance v6, Lcom/android/exchange/SyncManager$ConnectivityReceiver;

    invoke-direct {v6, p0}, Lcom/android/exchange/SyncManager$ConnectivityReceiver;-><init>(Lcom/android/exchange/SyncManager;)V

    iput-object v6, p0, Lcom/android/exchange/SyncManager;->mConnectivityReceiver:Lcom/android/exchange/SyncManager$ConnectivityReceiver;

    .line 2716
    iget-object v6, p0, Lcom/android/exchange/SyncManager;->mConnectivityReceiver:Lcom/android/exchange/SyncManager$ConnectivityReceiver;

    new-instance v7, Landroid/content/IntentFilter;

    const-string v8, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v6, v7}, Lcom/android/exchange/SyncManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2719
    invoke-virtual {p0}, Lcom/android/exchange/SyncManager;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "phone"

    invoke-virtual {v6, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    iput-object v6, p0, Lcom/android/exchange/SyncManager;->mPhone:Landroid/telephony/TelephonyManager;

    .line 2720
    iget-object v6, p0, Lcom/android/exchange/SyncManager;->mPhone:Landroid/telephony/TelephonyManager;

    if-eqz v6, :cond_4

    .line 2721
    iget-object v6, p0, Lcom/android/exchange/SyncManager;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v7, p0, Lcom/android/exchange/SyncManager;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v6, v7, v11}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 2724
    :cond_4
    new-instance v6, Lcom/android/exchange/SyncManager$ConnectivityReceiver;

    invoke-direct {v6, p0}, Lcom/android/exchange/SyncManager$ConnectivityReceiver;-><init>(Lcom/android/exchange/SyncManager;)V

    iput-object v6, p0, Lcom/android/exchange/SyncManager;->mBackgroundDataSettingReceiver:Lcom/android/exchange/SyncManager$ConnectivityReceiver;

    .line 2725
    iget-object v6, p0, Lcom/android/exchange/SyncManager;->mBackgroundDataSettingReceiver:Lcom/android/exchange/SyncManager$ConnectivityReceiver;

    new-instance v7, Landroid/content/IntentFilter;

    const-string v8, "android.net.conn.BACKGROUND_DATA_SETTING_CHANGED"

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v6, v7}, Lcom/android/exchange/SyncManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2728
    const-string v6, "connectivity"

    invoke-virtual {p0, v6}, Lcom/android/exchange/SyncManager;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 2730
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/exchange/SyncManager;->mBackgroundData:Z

    .line 2733
    sget-object v6, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    if-eqz v6, :cond_5

    .line 2734
    invoke-direct {p0}, Lcom/android/exchange/SyncManager;->checkPIMSyncSettings()V

    .line 2738
    :cond_5
    :goto_2
    :try_start_2
    iget-boolean v6, p0, Lcom/android/exchange/SyncManager;->mStop:Z

    if-nez v6, :cond_14

    .line 2739
    const-wide/16 v6, -0x1

    invoke-static {v6, v7}, Lcom/android/exchange/SyncManager;->runAwake(J)V

    .line 2740
    invoke-direct {p0}, Lcom/android/exchange/SyncManager;->waitForConnectivity()V

    .line 2741
    const-string v6, "Heartbeat"

    iput-object v6, p0, Lcom/android/exchange/SyncManager;->mNextWaitReason:Ljava/lang/String;

    .line 2746
    const-string v6, "PeakOffPeak"

    sget-object v7, Lcom/android/exchange/SyncManager;->mKickReason:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string v6, "account changed"

    sget-object v7, Lcom/android/exchange/SyncManager;->mKickReason:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 2747
    :cond_6
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/android/exchange/SyncManager;->updateAccountDb(Z)V

    .line 2750
    :cond_7
    invoke-direct {p0}, Lcom/android/exchange/SyncManager;->checkMailboxes()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-wide v3

    .line 2752
    .local v3, nextWait:J
    :try_start_3
    monitor-enter p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3

    .line 2753
    :try_start_4
    iget-boolean v6, p0, Lcom/android/exchange/SyncManager;->mKicked:Z

    if-nez v6, :cond_a

    .line 2754
    const-wide/16 v6, 0x0

    cmp-long v6, v3, v6

    if-gez v6, :cond_8

    .line 2755
    const-string v6, "Negative wait? Setting to 1s"

    invoke-static {v6}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;)V

    .line 2756
    const-wide/16 v3, 0x3e8

    .line 2758
    :cond_8
    const-wide/16 v6, 0x2710

    cmp-long v6, v3, v6

    if-lez v6, :cond_9

    .line 2759
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Next awake in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-wide/16 v7, 0x3e8

    div-long v7, v3, v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "s: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/exchange/SyncManager;->mNextWaitReason:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;)V

    .line 2760
    const-wide/16 v6, -0x1

    const-wide/16 v8, 0xbb8

    add-long/2addr v8, v3

    invoke-static {v6, v7, v8, v9}, Lcom/android/exchange/SyncManager;->runAsleep(JJ)V

    .line 2762
    :cond_9
    invoke-virtual {p0, v3, v4}, Ljava/lang/Object;->wait(J)V

    .line 2764
    :cond_a
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 2768
    :try_start_5
    monitor-enter p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    .line 2769
    :try_start_6
    iget-boolean v6, p0, Lcom/android/exchange/SyncManager;->mKicked:Z

    if-eqz v6, :cond_b

    .line 2771
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/exchange/SyncManager;->mKicked:Z

    .line 2773
    :cond_b
    monitor-exit p0

    goto :goto_2

    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_0

    .line 2777
    .end local v3           #nextWait:J
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 2778
    .local v1, e:Ljava/lang/RuntimeException;
    :try_start_8
    const-string v6, "EAS SyncManager"

    const-string v7, "RuntimeException in SyncManager"

    invoke-static {v6, v7, v1}, Lcom/android/exchange/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2779
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 2781
    .end local v1           #e:Ljava/lang/RuntimeException;
    :catchall_1
    move-exception v6

    move-object v7, v6

    const-string v6, "Finishing SyncManager"

    invoke-static {v6}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;)V

    .line 2784
    invoke-direct {p0}, Lcom/android/exchange/SyncManager;->stopServiceThreads()V

    .line 2787
    iget-object v6, p0, Lcom/android/exchange/SyncManager;->mConnectivityReceiver:Lcom/android/exchange/SyncManager$ConnectivityReceiver;

    if-eqz v6, :cond_c

    .line 2788
    iget-object v6, p0, Lcom/android/exchange/SyncManager;->mConnectivityReceiver:Lcom/android/exchange/SyncManager$ConnectivityReceiver;

    invoke-virtual {p0, v6}, Lcom/android/exchange/SyncManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2790
    :cond_c
    iget-object v6, p0, Lcom/android/exchange/SyncManager;->mBackgroundDataSettingReceiver:Lcom/android/exchange/SyncManager$ConnectivityReceiver;

    if-eqz v6, :cond_d

    .line 2791
    iget-object v6, p0, Lcom/android/exchange/SyncManager;->mBackgroundDataSettingReceiver:Lcom/android/exchange/SyncManager$ConnectivityReceiver;

    invoke-virtual {p0, v6}, Lcom/android/exchange/SyncManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2794
    :cond_d
    sget-object v6, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    if-eqz v6, :cond_e

    .line 2795
    invoke-virtual {p0}, Lcom/android/exchange/SyncManager;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 2796
    .local v5, resolver:Landroid/content/ContentResolver;
    iget-object v6, p0, Lcom/android/exchange/SyncManager;->mAccountObserver:Lcom/android/exchange/SyncManager$AccountObserver;

    invoke-virtual {v5, v6}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 2797
    iget-object v6, p0, Lcom/android/exchange/SyncManager;->mMailboxObserver:Lcom/android/exchange/SyncManager$MailboxObserver;

    invoke-virtual {v5, v6}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 2798
    iget-object v6, p0, Lcom/android/exchange/SyncManager;->mSyncedMessageObserver:Lcom/android/exchange/SyncManager$SyncedMessageObserver;

    invoke-virtual {v5, v6}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 2799
    iget-object v6, p0, Lcom/android/exchange/SyncManager;->mMessageObserver:Lcom/android/exchange/SyncManager$MessageObserver;

    invoke-virtual {v5, v6}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 2800
    invoke-direct {p0}, Lcom/android/exchange/SyncManager;->unregisterCalendarObservers()V

    .line 2803
    .end local v5           #resolver:Landroid/content/ContentResolver;
    :cond_e
    iget-object v6, p0, Lcom/android/exchange/SyncManager;->mAccountsUpdatedListener:Lcom/android/exchange/SyncManager$EasAccountsUpdatedListener;

    if-eqz v6, :cond_f

    .line 2804
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v6

    iget-object v8, p0, Lcom/android/exchange/SyncManager;->mAccountsUpdatedListener:Lcom/android/exchange/SyncManager$EasAccountsUpdatedListener;

    invoke-virtual {v6, v8}, Landroid/accounts/AccountManager;->removeOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;)V

    .line 2805
    iput-object v12, p0, Lcom/android/exchange/SyncManager;->mAccountsUpdatedListener:Lcom/android/exchange/SyncManager$EasAccountsUpdatedListener;

    .line 2809
    :cond_f
    invoke-virtual {p0}, Lcom/android/exchange/SyncManager;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    const-string v8, "phone"

    invoke-virtual {v6, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    iput-object v6, p0, Lcom/android/exchange/SyncManager;->mPhone:Landroid/telephony/TelephonyManager;

    .line 2810
    iget-object v6, p0, Lcom/android/exchange/SyncManager;->mPhone:Landroid/telephony/TelephonyManager;

    if-eqz v6, :cond_10

    .line 2811
    iget-object v6, p0, Lcom/android/exchange/SyncManager;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v8, p0, Lcom/android/exchange/SyncManager;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v6, v8, v10}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 2815
    :cond_10
    invoke-direct {p0}, Lcom/android/exchange/SyncManager;->clearAlarms()V

    .line 2818
    iget-object v6, p0, Lcom/android/exchange/SyncManager;->mWakeLocks:Ljava/util/HashMap;

    monitor-enter v6

    .line 2819
    :try_start_9
    iget-object v8, p0, Lcom/android/exchange/SyncManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v8, :cond_11

    .line 2820
    iget-object v8, p0, Lcom/android/exchange/SyncManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2821
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/exchange/SyncManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 2823
    :cond_11
    monitor-exit v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 2825
    const-string v6, "Goodbye"

    invoke-static {v6}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;)V

    .line 2781
    throw v7

    .line 2700
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    :catch_1
    move-exception v6

    move-object v1, v6

    .line 2701
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v6, "EAS SyncManager"

    const-string v6, "NullPointerException in SyncManager"

    invoke-static {v13, v6, v1}, Lcom/android/exchange/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 2708
    .end local v1           #e:Ljava/lang/NullPointerException;
    :catch_2
    move-exception v6

    move-object v2, v6

    .line 2711
    .local v2, e1:Ljava/lang/IllegalStateException;
    const-string v6, "EAS SyncManager"

    const-string v6, "Adding AcccountsUpdatedListener FAILURE"

    invoke-static {v13, v6}, Lcom/android/exchange/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2764
    .end local v2           #e1:Ljava/lang/IllegalStateException;
    .restart local v0       #cm:Landroid/net/ConnectivityManager;
    .restart local v3       #nextWait:J
    :catchall_2
    move-exception v6

    :try_start_a
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    throw v6
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_3

    .line 2765
    :catch_3
    move-exception v6

    .line 2768
    :try_start_c
    monitor-enter p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_0

    .line 2769
    :try_start_d
    iget-boolean v6, p0, Lcom/android/exchange/SyncManager;->mKicked:Z

    if-eqz v6, :cond_12

    .line 2771
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/exchange/SyncManager;->mKicked:Z

    .line 2773
    :cond_12
    monitor-exit p0

    goto/16 :goto_2

    :catchall_3
    move-exception v6

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :try_start_e
    throw v6

    .line 2768
    :catchall_4
    move-exception v6

    monitor-enter p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_0

    .line 2769
    :try_start_f
    iget-boolean v7, p0, Lcom/android/exchange/SyncManager;->mKicked:Z

    if-eqz v7, :cond_13

    .line 2771
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/exchange/SyncManager;->mKicked:Z

    .line 2773
    :cond_13
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    .line 2768
    :try_start_10
    throw v6

    .line 2776
    .end local v3           #nextWait:J
    :cond_14
    const-string v6, "Shutdown requested"

    invoke-static {v6}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_0

    .line 2781
    const-string v6, "Finishing SyncManager"

    invoke-static {v6}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;)V

    .line 2784
    invoke-direct {p0}, Lcom/android/exchange/SyncManager;->stopServiceThreads()V

    .line 2787
    iget-object v6, p0, Lcom/android/exchange/SyncManager;->mConnectivityReceiver:Lcom/android/exchange/SyncManager$ConnectivityReceiver;

    if-eqz v6, :cond_15

    .line 2788
    iget-object v6, p0, Lcom/android/exchange/SyncManager;->mConnectivityReceiver:Lcom/android/exchange/SyncManager$ConnectivityReceiver;

    invoke-virtual {p0, v6}, Lcom/android/exchange/SyncManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2790
    :cond_15
    iget-object v6, p0, Lcom/android/exchange/SyncManager;->mBackgroundDataSettingReceiver:Lcom/android/exchange/SyncManager$ConnectivityReceiver;

    if-eqz v6, :cond_16

    .line 2791
    iget-object v6, p0, Lcom/android/exchange/SyncManager;->mBackgroundDataSettingReceiver:Lcom/android/exchange/SyncManager$ConnectivityReceiver;

    invoke-virtual {p0, v6}, Lcom/android/exchange/SyncManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2794
    :cond_16
    sget-object v6, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    if-eqz v6, :cond_17

    .line 2795
    invoke-virtual {p0}, Lcom/android/exchange/SyncManager;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 2796
    .restart local v5       #resolver:Landroid/content/ContentResolver;
    iget-object v6, p0, Lcom/android/exchange/SyncManager;->mAccountObserver:Lcom/android/exchange/SyncManager$AccountObserver;

    invoke-virtual {v5, v6}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 2797
    iget-object v6, p0, Lcom/android/exchange/SyncManager;->mMailboxObserver:Lcom/android/exchange/SyncManager$MailboxObserver;

    invoke-virtual {v5, v6}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 2798
    iget-object v6, p0, Lcom/android/exchange/SyncManager;->mSyncedMessageObserver:Lcom/android/exchange/SyncManager$SyncedMessageObserver;

    invoke-virtual {v5, v6}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 2799
    iget-object v6, p0, Lcom/android/exchange/SyncManager;->mMessageObserver:Lcom/android/exchange/SyncManager$MessageObserver;

    invoke-virtual {v5, v6}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 2800
    invoke-direct {p0}, Lcom/android/exchange/SyncManager;->unregisterCalendarObservers()V

    .line 2803
    .end local v5           #resolver:Landroid/content/ContentResolver;
    :cond_17
    iget-object v6, p0, Lcom/android/exchange/SyncManager;->mAccountsUpdatedListener:Lcom/android/exchange/SyncManager$EasAccountsUpdatedListener;

    if-eqz v6, :cond_18

    .line 2804
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v6

    iget-object v7, p0, Lcom/android/exchange/SyncManager;->mAccountsUpdatedListener:Lcom/android/exchange/SyncManager$EasAccountsUpdatedListener;

    invoke-virtual {v6, v7}, Landroid/accounts/AccountManager;->removeOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;)V

    .line 2805
    iput-object v12, p0, Lcom/android/exchange/SyncManager;->mAccountsUpdatedListener:Lcom/android/exchange/SyncManager$EasAccountsUpdatedListener;

    .line 2809
    :cond_18
    invoke-virtual {p0}, Lcom/android/exchange/SyncManager;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "phone"

    invoke-virtual {v6, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    iput-object v6, p0, Lcom/android/exchange/SyncManager;->mPhone:Landroid/telephony/TelephonyManager;

    .line 2810
    iget-object v6, p0, Lcom/android/exchange/SyncManager;->mPhone:Landroid/telephony/TelephonyManager;

    if-eqz v6, :cond_19

    .line 2811
    iget-object v6, p0, Lcom/android/exchange/SyncManager;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v7, p0, Lcom/android/exchange/SyncManager;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v6, v7, v10}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 2815
    :cond_19
    invoke-direct {p0}, Lcom/android/exchange/SyncManager;->clearAlarms()V

    .line 2818
    iget-object v6, p0, Lcom/android/exchange/SyncManager;->mWakeLocks:Ljava/util/HashMap;

    monitor-enter v6

    .line 2819
    :try_start_11
    iget-object v7, p0, Lcom/android/exchange/SyncManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v7, :cond_1a

    .line 2820
    iget-object v7, p0, Lcom/android/exchange/SyncManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2821
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/exchange/SyncManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 2823
    :cond_1a
    monitor-exit v6
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    .line 2825
    const-string v6, "Goodbye"

    invoke-static {v6}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;)V

    .line 2828
    iget-boolean v6, p0, Lcom/android/exchange/SyncManager;->mStop:Z

    if-nez v6, :cond_2

    .line 2830
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "EAS SyncManager crash; please restart me..."

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2823
    :catchall_5
    move-exception v7

    :try_start_12
    monitor-exit v6
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    throw v7

    .line 2773
    .restart local v3       #nextWait:J
    :catchall_6
    move-exception v6

    :try_start_13
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    :try_start_14
    throw v6
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_0

    .line 2823
    .end local v3           #nextWait:J
    :catchall_7
    move-exception v7

    :try_start_15
    monitor-exit v6
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_7

    throw v7
.end method
