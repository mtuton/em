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

    .line 248
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/exchange/SyncManager;->sSyncLock:Ljava/lang/Object;

    .line 250
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/exchange/SyncManager;->sConnectivityLock:Ljava/lang/Object;

    .line 251
    sput-boolean v3, Lcom/android/exchange/SyncManager;->sConnectivityHold:Z

    .line 253
    new-instance v0, Lcom/android/exchange/SyncManager$AccountList;

    invoke-direct {v0}, Lcom/android/exchange/SyncManager$AccountList;-><init>()V

    sput-object v0, Lcom/android/exchange/SyncManager;->sAccountList:Lcom/android/exchange/SyncManager$AccountList;

    .line 263
    const-wide/32 v0, 0xf4240

    sput-wide v0, Lcom/android/exchange/SyncManager;->MAILBOX_DUMMY_MIN:J

    .line 264
    const-wide/32 v0, 0xf4241

    sput-wide v0, Lcom/android/exchange/SyncManager;->MAILBOX_DUMMY_OoO:J

    .line 265
    const-wide/32 v0, 0xf4242

    sput-wide v0, Lcom/android/exchange/SyncManager;->MAILBOX_DUMMY_GALSEARCH:J

    .line 266
    const-wide/32 v0, 0xf4243

    sput-wide v0, Lcom/android/exchange/SyncManager;->MAILBOX_DUMMY_MAX:J

    .line 277
    new-instance v0, Lcom/android/exchange/SyncManager$AccountList;

    invoke-direct {v0}, Lcom/android/exchange/SyncManager$AccountList;-><init>()V

    sput-object v0, Lcom/android/exchange/SyncManager;->EMPTY_ACCOUNT_LIST:Lcom/android/exchange/SyncManager$AccountList;

    .line 295
    sput-object v2, Lcom/android/exchange/SyncManager;->sServiceThread:Ljava/lang/Thread;

    .line 297
    sput-object v2, Lcom/android/exchange/SyncManager;->sDeviceId:Ljava/lang/String;

    .line 300
    sput-object v2, Lcom/android/exchange/SyncManager;->sLicenseKey:Ljava/lang/String;

    .line 303
    sput-object v2, Lcom/android/exchange/SyncManager;->sClientConnectionManager:Lorg/apache/http/conn/ClientConnectionManager;

    .line 306
    sput-object v2, Lcom/android/exchange/SyncManager;->mClientConnectionManager:Lorg/apache/http/conn/ClientConnectionManager;

    .line 309
    sput v3, Lcom/android/exchange/SyncManager;->sClientConnectionManagerShutdownCount:I

    .line 340
    new-instance v0, Lcom/android/exchange/SyncManager$1;

    invoke-direct {v0}, Lcom/android/exchange/SyncManager$1;-><init>()V

    sput-object v0, Lcom/android/exchange/SyncManager;->sCallbackProxy:Lcom/android/email/service/IEmailServiceCallback$Stub;

    .line 1695
    new-instance v0, Lcom/android/exchange/SyncManager$5;

    invoke-direct {v0}, Lcom/android/exchange/SyncManager$5;-><init>()V

    sput-object v0, Lcom/android/exchange/SyncManager;->sConnPerRoute:Lorg/apache/http/conn/params/ConnPerRoute;

    .line 1704
    new-instance v0, Lcom/android/exchange/SyncManager$6;

    invoke-direct {v0}, Lcom/android/exchange/SyncManager$6;-><init>()V

    sput-object v0, Lcom/android/exchange/SyncManager;->sConnPerPing:Lorg/apache/http/conn/params/ConnPerRoute;

    .line 3516
    sput-object v2, Lcom/android/exchange/SyncManager;->mInstance_UpdateAccountHearbeat:Lcom/android/exchange/SyncManager$syncManager_UpdateAccountHearbeat;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 126
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 243
    iput-boolean v1, p0, Lcom/android/exchange/SyncManager;->mIsNetworkRoaming:Z

    .line 256
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/SyncManager;->mServiceMap:Ljava/util/HashMap;

    .line 270
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/SyncManager;->mSyncErrorMap:Ljava/util/HashMap;

    .line 272
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/SyncManager;->mWakeLocks:Ljava/util/HashMap;

    .line 274
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/SyncManager;->mPendingIntents:Ljava/util/HashMap;

    .line 276
    iput-object v2, p0, Lcom/android/exchange/SyncManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 280
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/SyncManager;->mHandler:Landroid/os/Handler;

    .line 288
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/SyncManager;->mCalendarObservers:Ljava/util/HashMap;

    .line 311
    iput-boolean v1, p0, Lcom/android/exchange/SyncManager;->mStop:Z

    .line 316
    iput-boolean v1, p0, Lcom/android/exchange/SyncManager;->mKicked:Z

    .line 320
    iput-object v2, p0, Lcom/android/exchange/SyncManager;->mConnectivityReceiver:Lcom/android/exchange/SyncManager$ConnectivityReceiver;

    .line 321
    iput-object v2, p0, Lcom/android/exchange/SyncManager;->mBackgroundDataSettingReceiver:Lcom/android/exchange/SyncManager$ConnectivityReceiver;

    .line 322
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/exchange/SyncManager;->mBackgroundData:Z

    .line 326
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/SyncManager;->mCallbackList:Landroid/os/RemoteCallbackList;

    .line 331
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/SyncManager;->mProvisionErrorExist:Ljava/util/HashMap;

    .line 429
    new-instance v0, Lcom/android/exchange/SyncManager$2;

    invoke-direct {v0, p0}, Lcom/android/exchange/SyncManager$2;-><init>(Lcom/android/exchange/SyncManager;)V

    iput-object v0, p0, Lcom/android/exchange/SyncManager;->mBinder:Lcom/android/email/service/IEmailService$Stub;

    .line 3513
    return-void
.end method

.method static synthetic access$000(Lcom/android/exchange/SyncManager;)Lcom/android/email/service/IEmailServiceCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/exchange/SyncManager;->mCallback:Lcom/android/email/service/IEmailServiceCallback;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/exchange/SyncManager;Lcom/android/email/service/IEmailServiceCallback;)Lcom/android/email/service/IEmailServiceCallback;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/exchange/SyncManager;->mCallback:Lcom/android/email/service/IEmailServiceCallback;

    return-object p1
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    sget-object v0, Lcom/android/exchange/SyncManager;->sLicenseKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/exchange/SyncManager;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/exchange/SyncManager;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$102(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"

    .prologue
    .line 126
    sput-object p0, Lcom/android/exchange/SyncManager;->sLicenseKey:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/exchange/SyncManager;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 126
    invoke-direct {p0, p1, p2}, Lcom/android/exchange/SyncManager;->stopPing(J)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/exchange/SyncManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/android/exchange/SyncManager;->checkPIMSyncSettings()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/exchange/SyncManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/android/exchange/SyncManager;->runAccountReconciler()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/exchange/SyncManager;)Lcom/android/exchange/SyncManager$AccountObserver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/exchange/SyncManager;->mAccountObserver:Lcom/android/exchange/SyncManager$AccountObserver;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/exchange/SyncManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/android/exchange/SyncManager;->mIsNetworkRoaming:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/android/exchange/SyncManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 126
    iput-boolean p1, p0, Lcom/android/exchange/SyncManager;->mIsNetworkRoaming:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/exchange/SyncManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 126
    iget v0, p0, Lcom/android/exchange/SyncManager;->mNetworkState:I

    return v0
.end method

.method static synthetic access$1602(Lcom/android/exchange/SyncManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 126
    iput p1, p0, Lcom/android/exchange/SyncManager;->mNetworkState:I

    return p1
.end method

.method static synthetic access$1700(Lcom/android/exchange/SyncManager;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/android/exchange/SyncManager;->updateAccountDb(Z)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/exchange/SyncManager;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 126
    invoke-direct {p0, p1, p2}, Lcom/android/exchange/SyncManager;->releaseMailbox(J)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/exchange/SyncManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/android/exchange/SyncManager;->mBackgroundData:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/android/exchange/SyncManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 126
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
    .line 126
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/exchange/SyncManager;->releaseSyncHoldMailbox(Landroid/content/Context;IJ)V

    return-void
.end method

.method static synthetic access$300(J)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 126
    invoke-static {p0, p1}, Lcom/android/exchange/SyncManager;->stopManualSync(J)V

    return-void
.end method

.method static synthetic access$400()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 126
    sget-object v0, Lcom/android/exchange/SyncManager;->sSyncLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/exchange/SyncManager;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 126
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
    .line 126
    invoke-direct {p0, p1, p2, p3}, Lcom/android/exchange/SyncManager;->requestSync(Lcom/android/email/provider/EmailContent$Mailbox;ILcom/android/exchange/Request;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/exchange/SyncManager;JZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 126
    invoke-direct {p0, p1, p2, p3}, Lcom/android/exchange/SyncManager;->stopAccountSyncs(JZ)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/exchange/SyncManager;)Landroid/os/RemoteCallbackList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/exchange/SyncManager;->mCallbackList:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method public static accountUpdated(J)V
    .locals 6
    .parameter "acctId"

    .prologue
    .line 3226
    sget-object v2, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    .line 3227
    .local v2, syncManager:Lcom/android/exchange/SyncManager;
    if-nez v2, :cond_0

    .line 3235
    :goto_0
    return-void

    .line 3228
    :cond_0
    sget-object v3, Lcom/android/exchange/SyncManager;->sSyncLock:Ljava/lang/Object;

    monitor-enter v3

    .line 3229
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

    .line 3230
    .local v1, svc:Lcom/android/exchange/AbstractSyncService;
    iget-object v4, v1, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v4, v4, Lcom/android/email/provider/EmailContent$Account;->mId:J

    cmp-long v4, v4, p0

    if-nez v4, :cond_1

    .line 3231
    invoke-static {v2, p0, p1}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v4

    iput-object v4, v1, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    goto :goto_1

    .line 3234
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
    .line 1942
    iget-object v2, p0, Lcom/android/exchange/SyncManager;->mWakeLocks:Ljava/util/HashMap;

    monitor-enter v2

    .line 1943
    :try_start_0
    iget-object v3, p0, Lcom/android/exchange/SyncManager;->mWakeLocks:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 1944
    .local v0, lock:Ljava/lang/Boolean;
    if-nez v0, :cond_1

    .line 1945
    iget-object v3, p0, Lcom/android/exchange/SyncManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v3, :cond_0

    .line 1946
    const-string v3, "power"

    invoke-virtual {p0, v3}, Lcom/android/exchange/SyncManager;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 1947
    .local v1, pm:Landroid/os/PowerManager;
    const/4 v3, 0x1

    const-string v4, "MAIL_SERVICE"

    invoke-virtual {v1, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exchange/SyncManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1948
    iget-object v3, p0, Lcom/android/exchange/SyncManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1951
    .end local v1           #pm:Landroid/os/PowerManager;
    :cond_0
    iget-object v3, p0, Lcom/android/exchange/SyncManager;->mWakeLocks:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1953
    :cond_1
    monitor-exit v2

    .line 1954
    return-void

    .line 1953
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

    .line 1975
    const-wide/16 v2, -0x1

    cmp-long v2, p0, v2

    if-nez v2, :cond_0

    .line 1976
    const-string v2, "SyncManager"

    .line 1992
    :goto_0
    return-object v2

    .line 1978
    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    .line 1979
    .local v1, name:Ljava/lang/String;
    sget-boolean v2, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    if-eqz v2, :cond_1

    .line 1980
    sget-object v2, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    invoke-static {v2, p0, p1}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v0

    .line 1981
    .local v0, m:Lcom/android/email/provider/EmailContent$Mailbox;
    if-eqz v0, :cond_2

    .line 1982
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

    .line 1992
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

    .line 1985
    .restart local v0       #m:Lcom/android/email/provider/EmailContent$Mailbox;
    :cond_2
    sget-wide v2, Lcom/android/exchange/SyncManager;->MAILBOX_DUMMY_MIN:J

    cmp-long v2, p0, v2

    if-lez v2, :cond_1

    sget-wide v2, Lcom/android/exchange/SyncManager;->MAILBOX_DUMMY_MAX:J

    cmp-long v2, p0, v2

    if-gez v2, :cond_1

    .line 1988
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
    .line 2066
    sget-object v1, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    .line 2067
    .local v1, syncManager:Lcom/android/exchange/SyncManager;
    invoke-static {}, Lcom/android/exchange/SyncManager;->checkSyncManagerServiceRunning()V

    .line 2068
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-gez v2, :cond_1

    .line 2069
    const-string v2, "ping SyncManager"

    invoke-static {v2}, Lcom/android/exchange/SyncManager;->kick(Ljava/lang/String;)V

    .line 2126
    :cond_0
    :goto_0
    return-void

    .line 2070
    :cond_1
    if-nez v1, :cond_2

    .line 2071
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/exchange/SyncManager;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 2074
    :cond_2
    sget-wide v2, Lcom/android/exchange/SyncManager;->MAILBOX_DUMMY_MIN:J

    cmp-long v2, p1, v2

    if-lez v2, :cond_3

    sget-wide v2, Lcom/android/exchange/SyncManager;->MAILBOX_DUMMY_MAX:J

    cmp-long v2, p1, v2

    if-gez v2, :cond_3

    .line 2077
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

    .line 2078
    invoke-static {}, Lcom/android/exchange/SyncManager;->shutdownConnectionManager()V

    .line 2079
    sget-object v2, Lcom/android/exchange/SyncManager;->sSyncLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2080
    :try_start_0
    invoke-direct {v1, p1, p2}, Lcom/android/exchange/SyncManager;->releaseMailbox(J)V

    .line 2081
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 2085
    :cond_3
    iget-object v2, v1, Lcom/android/exchange/SyncManager;->mServiceMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exchange/AbstractSyncService;

    .line 2086
    .local v0, service:Lcom/android/exchange/AbstractSyncService;
    if-eqz v0, :cond_0

    .line 2089
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
    .line 1418
    sget-boolean v0, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-nez v0, :cond_0

    .line 1419
    const-string v0, "EAS SyncManager"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1423
    :goto_0
    return-void

    .line 1421
    :cond_0
    invoke-static {p0}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static alwaysLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "str"

    .prologue
    .line 1437
    sget-boolean v0, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-nez v0, :cond_0

    .line 1438
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1442
    :goto_0
    return-void

    .line 1440
    :cond_0
    invoke-static {p0, p1}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static callback()Lcom/android/email/service/IEmailServiceCallback;
    .locals 1

    .prologue
    .line 1206
    sget-object v0, Lcom/android/exchange/SyncManager;->sCallbackProxy:Lcom/android/email/service/IEmailServiceCallback$Stub;

    return-object v0
.end method

.method private checkMailboxes()J
    .locals 53

    .prologue
    .line 2782
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 2783
    .local v21, deletedMailboxes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    sget-object v5, Lcom/android/exchange/SyncManager;->sSyncLock:Ljava/lang/Object;

    monitor-enter v5

    .line 2784
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

    .line 2785
    .local v28, mailboxId:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v28

    invoke-static {v0, v1, v2}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v27

    .line 2786
    .local v27, m:Lcom/android/email/provider/EmailContent$Mailbox;
    if-nez v27, :cond_0

    .line 2787
    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v21

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2807
    .end local v22           #i$:Ljava/util/Iterator;
    .end local v27           #m:Lcom/android/email/provider/EmailContent$Mailbox;
    .end local v28           #mailboxId:J
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 2791
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

    .line 2792
    .local v28, mailboxId:Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/SyncManager;->mServiceMap:Ljava/util/HashMap;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Lcom/android/exchange/AbstractSyncService;

    .line 2793
    .local v45, svc:Lcom/android/exchange/AbstractSyncService;
    if-eqz v45, :cond_2

    move-object/from16 v0, v45

    iget-object v0, v0, Lcom/android/exchange/AbstractSyncService;->mThread:Ljava/lang/Thread;

    move-object v4, v0

    if-nez v4, :cond_3

    .line 2794
    :cond_2
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-object/from16 v0, p0

    move-wide v1, v6

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/SyncManager;->releaseMailbox(J)V

    goto :goto_1

    .line 2797
    :cond_3
    move-object/from16 v0, v45

    iget-object v0, v0, Lcom/android/exchange/AbstractSyncService;->mThread:Ljava/lang/Thread;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/Thread;->isAlive()Z

    move-result v17

    .line 2798
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

    .line 2799
    if-eqz v17, :cond_4

    .line 2800
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/android/exchange/SyncManager;->stopManualSync(J)V

    goto :goto_1

    .line 2802
    :cond_4
    const-string v4, "Removing from serviceMap"

    invoke-static {v4}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;)V

    .line 2803
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-object/from16 v0, p0

    move-wide v1, v6

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/SyncManager;->releaseMailbox(J)V

    goto :goto_1

    .line 2807
    .end local v17           #alive:Z
    .end local v28           #mailboxId:Ljava/lang/Long;
    .end local v45           #svc:Lcom/android/exchange/AbstractSyncService;
    :cond_5
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2809
    const-wide/32 v34, 0x1b7740

    .line 2810
    .local v34, nextWait:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v38

    .line 2814
    .local v38, now:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/SyncManager;->mAccountObserver:Lcom/android/exchange/SyncManager$AccountObserver;

    move-object v4, v0

    if-nez v4, :cond_6

    .line 2815
    const-string v4, "mAccountObserver null; service died??"

    invoke-static {v4}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;)V

    move-wide/from16 v36, v34

    .line 3025
    .end local v34           #nextWait:J
    .end local p0
    .local v36, nextWait:J
    :goto_2
    return-wide v36

    .line 2818
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

    .line 2823
    .local v19, c:Landroid/database/Cursor;
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v30

    .line 2825
    .local v30, masterAutoSync:Z
    :cond_7
    :goto_3
    :try_start_2
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_20

    .line 2826
    const/4 v4, 0x0

    move-object/from16 v0, v19

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v31

    .line 2828
    .local v31, mid:J
    const/4 v4, 0x4

    move-object/from16 v0, v19

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v15, v4

    .line 2829
    .local v15, acctId:J
    const/16 v4, 0x9

    move-object/from16 v0, v19

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move v0, v4

    int-to-long v0, v0

    move-wide/from16 v23, v0

    .line 2830
    .local v23, interval:J
    const/4 v4, 0x5

    move-object/from16 v0, v19

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v52

    .line 2831
    .local v52, type:I
    const/16 v42, 0x0

    .line 2832
    .local v42, service:Lcom/android/exchange/AbstractSyncService;
    sget-object v4, Lcom/android/exchange/SyncManager;->sSyncLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2833
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

    .line 2834
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 2837
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

    .line 2843
    :cond_8
    if-nez v42, :cond_1a

    .line 2850
    sget-object v4, Lcom/android/exchange/SyncManager;->sSyncLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2853
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/SyncManager;->mProvisionErrorExist:Ljava/util/HashMap;

    move-object v5, v0

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/email/provider/EmailContent$Account;

    .line 2854
    .local v14, acct:Lcom/android/email/provider/EmailContent$Account;
    const/16 v5, 0x44

    move/from16 v0, v52

    move v1, v5

    if-eq v0, v1, :cond_9

    if-eqz v14, :cond_9

    .line 2855
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

    .line 2856
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

    .line 2858
    :cond_9
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 2863
    :try_start_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/exchange/SyncManager;->mBackgroundData:Z

    move v4, v0

    if-nez v4, :cond_a

    const/4 v4, 0x4

    move/from16 v0, v52

    move v1, v4

    if-ne v0, v1, :cond_7

    .line 2867
    :cond_a
    const/16 v4, 0x42

    move/from16 v0, v52

    move v1, v4

    if-eq v0, v1, :cond_b

    const/16 v4, 0x41

    move/from16 v0, v52

    move v1, v4

    if-ne v0, v1, :cond_f

    .line 2869
    :cond_b
    if-eqz v30, :cond_7

    .line 2874
    const/4 v4, 0x4

    move-object/from16 v0, v19

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v4, v4

    invoke-static {v4, v5}, Lcom/android/exchange/SyncManager;->getAccountById(J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v11

    .line 2876
    .local v11, account:Lcom/android/email/provider/EmailContent$Account;
    if-eqz v11, :cond_d

    .line 2877
    const/16 v4, 0x42

    move/from16 v0, v52

    move v1, v4

    if-ne v0, v1, :cond_e

    .line 2878
    const-string v18, "com.android.contacts"

    .line 2887
    .local v18, authority:Ljava/lang/String;
    :cond_c
    :goto_4
    new-instance v10, Landroid/accounts/Account;

    iget-object v4, v11, Lcom/android/email/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    const-string v5, "com.android.exchange"

    invoke-direct {v10, v4, v5}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2891
    .local v10, a:Landroid/accounts/Account;
    move-object v0, v10

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2894
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

    .line 2910
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

    .line 2911
    .local v46, syncError:Lcom/android/exchange/SyncManager$SyncError;
    if-eqz v46, :cond_12

    .line 2913
    move-object/from16 v0, v46

    iget-boolean v0, v0, Lcom/android/exchange/SyncManager$SyncError;->fatal:Z

    move v4, v0

    if-eqz v4, :cond_10

    .line 2915
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

    .line 3023
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

    .line 2834
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

    .line 2858
    :catchall_3
    move-exception v5

    :try_start_9
    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :try_start_a
    throw v5

    .line 2880
    .restart local v11       #account:Lcom/android/email/provider/EmailContent$Account;
    .restart local v14       #acct:Lcom/android/email/provider/EmailContent$Account;
    :cond_e
    const-string v18, "com.android.calendar"

    .line 2881
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

    .line 2884
    move-object/from16 v0, p0

    move-object v1, v11

    invoke-direct {v0, v1}, Lcom/android/exchange/SyncManager;->registerCalendarObserver(Lcom/android/email/provider/EmailContent$Account;)V

    goto/16 :goto_4

    .line 2899
    .end local v11           #account:Lcom/android/email/provider/EmailContent$Account;
    .end local v18           #authority:Ljava/lang/String;
    :cond_f
    const/4 v4, 0x6

    move/from16 v0, v52

    move v1, v4

    if-eq v0, v1, :cond_7

    .line 2903
    const/16 v4, 0x8

    move/from16 v0, v52

    move v1, v4

    if-ne v0, v1, :cond_d

    goto/16 :goto_3

    .line 2918
    .restart local v46       #syncError:Lcom/android/exchange/SyncManager$SyncError;
    :cond_10
    move-object/from16 v0, v46

    iget-wide v0, v0, Lcom/android/exchange/SyncManager$SyncError;->holdEndTime:J

    move-wide v4, v0

    cmp-long v4, v38, v4

    if-gez v4, :cond_11

    .line 2921
    move-object/from16 v0, v46

    iget-wide v0, v0, Lcom/android/exchange/SyncManager$SyncError;->holdEndTime:J

    move-wide v4, v0

    add-long v6, v38, v34

    cmp-long v4, v4, v6

    if-gez v4, :cond_7

    .line 2922
    move-object/from16 v0, v46

    iget-wide v0, v0, Lcom/android/exchange/SyncManager$SyncError;->holdEndTime:J

    move-wide v4, v0

    sub-long v34, v4, v38

    .line 2923
    const-string v4, "Release hold"

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exchange/SyncManager;->mNextWaitReason:Ljava/lang/String;

    .line 2925
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

    .line 2930
    :cond_11
    const-wide/16 v4, 0x0

    move-wide v0, v4

    move-object/from16 v2, v46

    iput-wide v0, v2, Lcom/android/exchange/SyncManager$SyncError;->holdEndTime:J

    .line 2938
    :cond_12
    const-wide/16 v4, -0x2

    cmp-long v4, v23, v4

    if-nez v4, :cond_13

    .line 2939
    const-class v4, Lcom/android/email/provider/EmailContent$Mailbox;

    move-object/from16 v0, v19

    move-object v1, v4

    invoke-static {v0, v1}, Lcom/android/email/provider/EmailContent;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/email/provider/EmailContent;

    move-result-object v27

    check-cast v27, Lcom/android/email/provider/EmailContent$Mailbox;

    .line 2940
    .restart local v27       #m:Lcom/android/email/provider/EmailContent$Mailbox;
    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move v2, v4

    move-object v3, v5

    invoke-direct {v0, v1, v2, v3}, Lcom/android/exchange/SyncManager;->requestSync(Lcom/android/email/provider/EmailContent$Mailbox;ILcom/android/exchange/Request;)V

    goto/16 :goto_3

    .line 2944
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

    .line 2945
    const-class v4, Lcom/android/email/provider/EmailContent$Mailbox;

    move-object/from16 v0, v19

    move-object v1, v4

    invoke-static {v0, v1}, Lcom/android/email/provider/EmailContent;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/email/provider/EmailContent;

    move-result-object v27

    check-cast v27, Lcom/android/email/provider/EmailContent$Mailbox;

    .line 2946
    .restart local v27       #m:Lcom/android/email/provider/EmailContent$Mailbox;
    const/16 v4, 0x9

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move v2, v4

    move-object v3, v5

    invoke-direct {v0, v1, v2, v3}, Lcom/android/exchange/SyncManager;->requestSync(Lcom/android/email/provider/EmailContent$Mailbox;ILcom/android/exchange/Request;)V

    goto/16 :goto_3

    .line 2949
    .end local v27           #m:Lcom/android/email/provider/EmailContent$Mailbox;
    :cond_14
    const/4 v4, 0x4

    move/from16 v0, v52

    move v1, v4

    if-ne v0, v1, :cond_15

    .line 2950
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

    .line 2953
    .local v20, cnt:I
    if-lez v20, :cond_7

    .line 2954
    const-class v4, Lcom/android/email/provider/EmailContent$Mailbox;

    move-object/from16 v0, v19

    move-object v1, v4

    invoke-static {v0, v1}, Lcom/android/email/provider/EmailContent;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/email/provider/EmailContent;

    move-result-object v27

    check-cast v27, Lcom/android/email/provider/EmailContent$Mailbox;

    .line 2955
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

    .line 2957
    .end local v20           #cnt:I
    .end local v27           #m:Lcom/android/email/provider/EmailContent$Mailbox;
    :cond_15
    const-wide/16 v4, 0x0

    cmp-long v4, v23, v4

    if-lez v4, :cond_7

    const-wide/16 v4, 0x5a0

    cmp-long v4, v23, v4

    if-gtz v4, :cond_7

    .line 2958
    const/16 v4, 0xa

    move-object/from16 v0, v19

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v25

    .line 2959
    .local v25, lastSync:J
    sub-long v43, v38, v25

    .line 2960
    .local v43, sinceLastSync:J
    const-wide/16 v4, 0x0

    cmp-long v4, v43, v4

    if-gez v4, :cond_16

    .line 2961
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

    .line 2962
    const-wide/32 v4, 0xea60

    mul-long v43, v23, v4

    .line 2964
    :cond_16
    const-wide/32 v4, 0xea60

    mul-long v4, v4, v23

    sub-long v50, v4, v43

    .line 2965
    .local v50, toNextSync:J
    const/4 v4, 0x1

    move-object/from16 v0, v19

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v33

    .line 2966
    .local v33, name:Ljava/lang/String;
    const-wide/16 v4, 0x0

    cmp-long v4, v50, v4

    if-gtz v4, :cond_17

    .line 2967
    const-class v4, Lcom/android/email/provider/EmailContent$Mailbox;

    move-object/from16 v0, v19

    move-object v1, v4

    invoke-static {v0, v1}, Lcom/android/email/provider/EmailContent;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/email/provider/EmailContent;

    move-result-object v27

    check-cast v27, Lcom/android/email/provider/EmailContent$Mailbox;

    .line 2968
    .restart local v27       #m:Lcom/android/email/provider/EmailContent$Mailbox;
    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move v2, v4

    move-object v3, v5

    invoke-direct {v0, v1, v2, v3}, Lcom/android/exchange/SyncManager;->requestSync(Lcom/android/email/provider/EmailContent$Mailbox;ILcom/android/exchange/Request;)V

    goto/16 :goto_3

    .line 2969
    .end local v27           #m:Lcom/android/email/provider/EmailContent$Mailbox;
    :cond_17
    cmp-long v4, v50, v34

    if-gez v4, :cond_19

    .line 2970
    move-wide/from16 v34, v50

    .line 2971
    sget-boolean v4, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v4, :cond_18

    .line 2972
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

    .line 2974
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

    .line 2975
    :cond_19
    sget-boolean v4, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v4, :cond_7

    .line 2976
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

    .line 2980
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

    .line 2982
    .local v47, thread:Ljava/lang/Thread;
    if-eqz v47, :cond_1c

    invoke-virtual/range {v47 .. v47}, Ljava/lang/Thread;->isAlive()Z

    move-result v4

    if-nez v4, :cond_1c

    .line 2983
    sget-boolean v4, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v4, :cond_1b

    .line 2984
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

    .line 2987
    :cond_1b
    move-object/from16 v0, p0

    move-wide/from16 v1, v31

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/SyncManager;->releaseMailbox(J)V

    .line 2989
    const-wide/16 v4, 0xbb8

    cmp-long v4, v34, v4

    if-lez v4, :cond_7

    .line 2990
    const-wide/16 v34, 0xbb8

    .line 2991
    const-string v4, "Clean up dead thread(s)"

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exchange/SyncManager;->mNextWaitReason:Ljava/lang/String;

    goto/16 :goto_3

    .line 2994
    :cond_1c
    move-object/from16 v0, v42

    iget-wide v0, v0, Lcom/android/exchange/AbstractSyncService;->mRequestTime:J

    move-wide/from16 v40, v0

    .line 2995
    .local v40, requestTime:J
    const-wide/16 v4, 0x0

    cmp-long v4, v40, v4

    if-lez v4, :cond_7

    .line 2996
    sub-long v48, v40, v38

    .line 2997
    .local v48, timeToRequest:J
    move-object/from16 v0, v42

    instance-of v0, v0, Lcom/android/exchange/AbstractSyncService;

    move v4, v0

    if-eqz v4, :cond_1d

    const-wide/16 v4, 0x0

    cmp-long v4, v48, v4

    if-gtz v4, :cond_1d

    .line 2998
    const-wide/16 v4, 0x0

    move-wide v0, v4

    move-object/from16 v2, v42

    iput-wide v0, v2, Lcom/android/exchange/AbstractSyncService;->mRequestTime:J

    .line 2999
    invoke-virtual/range {v42 .. v42}, Lcom/android/exchange/AbstractSyncService;->alarm()Z

    goto/16 :goto_3

    .line 3000
    :cond_1d
    const-wide/16 v4, 0x0

    cmp-long v4, v40, v4

    if-lez v4, :cond_7

    cmp-long v4, v48, v34

    if-gez v4, :cond_7

    .line 3001
    const-wide/32 v4, 0xa1220

    cmp-long v4, v48, v4

    if-gez v4, :cond_1f

    .line 3002
    const-wide/16 v4, 0xfa

    cmp-long v4, v48, v4

    if-gez v4, :cond_1e

    const-wide/16 v4, 0xfa

    move-wide/from16 v34, v4

    .line 3003
    :goto_5
    const-string v4, "Sync data change"

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exchange/SyncManager;->mNextWaitReason:Ljava/lang/String;

    goto/16 :goto_3

    :cond_1e
    move-wide/from16 v34, v48

    .line 3002
    goto :goto_5

    .line 3005
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

    .line 3013
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

    .line 3014
    .end local p0
    :cond_21
    :goto_6
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_22

    .line 3015
    const/4 v4, 0x4

    move-object/from16 v0, v19

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v4, v4

    invoke-static {v4, v5}, Lcom/android/exchange/SyncManager;->getAccountById(J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v11

    .line 3016
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

    .line 3017
    .local v12, accountNextAlarm:J
    cmp-long v4, v12, v34

    if-gez v4, :cond_21

    .line 3018
    move-wide/from16 v34, v12

    goto :goto_6

    .line 3023
    .end local v11           #account:Lcom/android/email/provider/EmailContent$Account;
    .end local v12           #accountNextAlarm:J
    :cond_22
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    move-wide/from16 v36, v34

    .line 3025
    .end local v34           #nextWait:J
    .restart local v36       #nextWait:J
    goto/16 :goto_2
.end method

.method private checkPIMSyncSettings()V
    .locals 5

    .prologue
    .line 2266
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {}, Lcom/android/exchange/SyncManager;->getAccountList()Lcom/android/exchange/SyncManager$AccountList;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2272
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

    .line 2273
    .local v0, account:Lcom/android/email/provider/EmailContent$Account;
    const/16 v3, 0x42

    const-string v4, "com.android.contacts"

    invoke-direct {p0, v0, v3, v4}, Lcom/android/exchange/SyncManager;->updatePIMSyncSettings(Lcom/android/email/provider/EmailContent$Account;ILjava/lang/String;)V

    .line 2274
    const/16 v3, 0x41

    const-string v4, "com.android.calendar"

    invoke-direct {p0, v0, v3, v4}, Lcom/android/exchange/SyncManager;->updatePIMSyncSettings(Lcom/android/email/provider/EmailContent$Account;ILjava/lang/String;)V

    goto :goto_0

    .line 2277
    .end local v0           #account:Lcom/android/email/provider/EmailContent$Account;
    :cond_0
    return-void
.end method

.method public static checkServiceExist(J)Z
    .locals 5
    .parameter "mailboxId"

    .prologue
    const/4 v4, 0x0

    .line 3193
    sget-object v0, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    .line 3194
    .local v0, syncManager:Lcom/android/exchange/SyncManager;
    if-nez v0, :cond_0

    move v1, v4

    .line 3201
    :goto_0
    return v1

    .line 3195
    :cond_0
    sget-object v1, Lcom/android/exchange/SyncManager;->sSyncLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3196
    :try_start_0
    iget-object v2, v0, Lcom/android/exchange/SyncManager;->mServiceMap:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 3197
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

    .line 3198
    const/4 v2, 0x1

    monitor-exit v1

    move v1, v2

    goto :goto_0

    .line 3200
    :cond_1
    monitor-exit v1

    move v1, v4

    .line 3201
    goto :goto_0

    .line 3200
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
    .line 1687
    sget-object v0, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    .line 1688
    .local v0, syncManager:Lcom/android/exchange/SyncManager;
    if-nez v0, :cond_1

    .line 1693
    :cond_0
    :goto_0
    return-void

    .line 1689
    :cond_1
    sget-object v1, Lcom/android/exchange/SyncManager;->sServiceThread:Ljava/lang/Thread;

    if-nez v1, :cond_0

    .line 1690
    const-string v1, "!!! checkSyncManagerServiceRunning; starting service..."

    invoke-static {v1}, Lcom/android/exchange/SyncManager;->alwaysLog(Ljava/lang/String;)V

    .line 1691
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
    .line 1997
    iget-object v2, p0, Lcom/android/exchange/SyncManager;->mPendingIntents:Ljava/util/HashMap;

    monitor-enter v2

    .line 1998
    :try_start_0
    iget-object v3, p0, Lcom/android/exchange/SyncManager;->mPendingIntents:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    .line 1999
    .local v1, pi:Landroid/app/PendingIntent;
    if-eqz v1, :cond_0

    .line 2000
    const-string v3, "alarm"

    invoke-virtual {p0, v3}, Lcom/android/exchange/SyncManager;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 2001
    .local v0, alarmManager:Landroid/app/AlarmManager;
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 2003
    iget-object v3, p0, Lcom/android/exchange/SyncManager;->mPendingIntents:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2005
    .end local v0           #alarmManager:Landroid/app/AlarmManager;
    :cond_0
    monitor-exit v2

    .line 2006
    return-void

    .line 2005
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
    .line 2026
    const-string v3, "alarm"

    invoke-virtual {p0, v3}, Lcom/android/exchange/SyncManager;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 2027
    .local v0, alarmManager:Landroid/app/AlarmManager;
    iget-object v3, p0, Lcom/android/exchange/SyncManager;->mPendingIntents:Ljava/util/HashMap;

    monitor-enter v3

    .line 2028
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

    .line 2029
    .local v2, pi:Landroid/app/PendingIntent;
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 2032
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #pi:Landroid/app/PendingIntent;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 2031
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/android/exchange/SyncManager;->mPendingIntents:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 2032
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2033
    return-void
.end method

.method public static clearWatchdogAlarm(J)V
    .locals 1
    .parameter "id"

    .prologue
    .line 2052
    sget-object v0, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    .line 2053
    .local v0, syncManager:Lcom/android/exchange/SyncManager;
    if-eqz v0, :cond_0

    .line 2054
    invoke-direct {v0, p0, p1}, Lcom/android/exchange/SyncManager;->clearAlarm(J)V

    .line 2056
    :cond_0
    return-void
.end method

.method public static done(Lcom/android/exchange/AbstractSyncService;)V
    .locals 9
    .parameter "svc"

    .prologue
    .line 3256
    sget-object v5, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    .line 3257
    .local v5, syncManager:Lcom/android/exchange/SyncManager;
    if-nez v5, :cond_0

    .line 3329
    .end local v5           #syncManager:Lcom/android/exchange/SyncManager;
    .end local p0
    :goto_0
    return-void

    .line 3258
    .restart local v5       #syncManager:Lcom/android/exchange/SyncManager;
    .restart local p0
    :cond_0
    sget-object v6, Lcom/android/exchange/SyncManager;->sSyncLock:Ljava/lang/Object;

    monitor-enter v6

    .line 3259
    :try_start_0
    iget-wide v2, p0, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    .line 3260
    .local v2, mailboxId:J
    iget-object v0, v5, Lcom/android/exchange/SyncManager;->mSyncErrorMap:Ljava/util/HashMap;

    .line 3261
    .local v0, errorMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/exchange/SyncManager$SyncError;>;"
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/exchange/SyncManager$SyncError;

    .line 3262
    .local v4, syncError:Lcom/android/exchange/SyncManager$SyncError;
    invoke-direct {v5, v2, v3}, Lcom/android/exchange/SyncManager;->releaseMailbox(J)V

    .line 3263
    iget v1, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    .line 3264
    .local v1, exitStatus:I
    packed-switch v1, :pswitch_data_0

    .line 3327
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

    .line 3328
    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 3266
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

    .line 3269
    :cond_2
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3271
    const-class v0, Lcom/android/exchange/SyncManager;

    .end local v0           #errorMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/exchange/SyncManager$SyncError;>;"
    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3272
    const/4 v1, 0x0

    :try_start_2
    sput v1, Lcom/android/exchange/SyncManager;->sClientConnectionManagerShutdownCount:I

    .line 3273
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3276
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

    .line 3288
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

    .line 3289
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 3290
    .local v0, cv:Landroid/content/ContentValues;
    const-string v1, "syncInterval"

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3291
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

    .line 3273
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

    .line 3299
    .local v0, errorMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/exchange/SyncManager$SyncError;>;"
    .restart local v1       #exitStatus:I
    .restart local p0
    :pswitch_1
    invoke-static {v5, v2, v3}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object p0

    .line 3300
    .local p0, m:Lcom/android/email/provider/EmailContent$Mailbox;
    if-nez p0, :cond_5

    monitor-exit v6

    goto/16 :goto_0

    .line 3301
    :cond_5
    if-eqz v4, :cond_6

    .line 3302
    invoke-virtual {v4}, Lcom/android/exchange/SyncManager$SyncError;->escalate()V

    .line 3303
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

    .line 3305
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

    .line 3306
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

    .line 3312
    .restart local v0       #errorMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/exchange/SyncManager$SyncError;>;"
    .restart local v2       #mailboxId:J
    .restart local v4       #syncError:Lcom/android/exchange/SyncManager$SyncError;
    .local p0, svc:Lcom/android/exchange/AbstractSyncService;
    :pswitch_2
    iget-object v4, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    .end local v4           #syncError:Lcom/android/exchange/SyncManager$SyncError;
    if-eqz v4, :cond_1

    .line 3313
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

    .line 3314
    sget-object v4, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    iget-object v4, v4, Lcom/android/exchange/SyncManager;->mProvisionErrorExist:Ljava/util/HashMap;

    iget-object v7, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v7, v7, Lcom/android/email/provider/EmailContent$Account;->mId:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iget-object p0, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    .end local p0           #svc:Lcom/android/exchange/AbstractSyncService;
    invoke-virtual {v4, v7, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3315
    const-wide/16 v7, 0x0

    cmp-long p0, v2, v7

    if-lez p0, :cond_1

    .line 3316
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    new-instance v4, Lcom/android/exchange/SyncManager$SyncError;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v7, 0x1

    invoke-direct {v4, v5, v1, v7}, Lcom/android/exchange/SyncManager$SyncError;-><init>(Lcom/android/exchange/SyncManager;IZ)V

    invoke-virtual {v0, p0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3317
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

    .line 3324
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

    .line 3264
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
    .line 3342
    sget-object v7, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    .line 3343
    .local v7, syncManager:Lcom/android/exchange/SyncManager;
    if-nez v7, :cond_0

    .line 3396
    :goto_0
    return-void

    .line 3344
    :cond_0
    sget-object v8, Lcom/android/exchange/SyncManager;->sSyncLock:Ljava/lang/Object;

    monitor-enter v8

    .line 3345
    :try_start_0
    iget-wide v4, p0, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    .line 3346
    .local v4, mailboxId:J
    iget-object v0, v7, Lcom/android/exchange/SyncManager;->mSyncErrorMap:Ljava/util/HashMap;

    .line 3347
    .local v0, errorMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/exchange/SyncManager$SyncError;>;"
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/exchange/SyncManager$SyncError;

    .line 3351
    .local v6, syncError:Lcom/android/exchange/SyncManager$SyncError;
    iget v1, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    .line 3352
    .local v1, exitStatus:I
    packed-switch v1, :pswitch_data_0

    .line 3394
    :cond_1
    :goto_1
    const-string v9, "sync completed"

    invoke-static {v9}, Lcom/android/exchange/SyncManager;->kick(Ljava/lang/String;)V

    .line 3395
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

    .line 3356
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

    .line 3357
    const/4 v10, 0x0

    :try_start_2
    sput v10, Lcom/android/exchange/SyncManager;->sClientConnectionManagerShutdownCount:I

    .line 3358
    monitor-exit v9

    goto :goto_1

    :catchall_1
    move-exception v10

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    throw v10

    .line 3361
    :pswitch_1
    invoke-static {v7, v4, v5}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v2

    .line 3362
    .local v2, m:Lcom/android/email/provider/EmailContent$Mailbox;
    if-nez v2, :cond_2

    monitor-exit v8

    goto :goto_0

    .line 3363
    :cond_2
    if-eqz v6, :cond_3

    .line 3364
    invoke-virtual {v6}, Lcom/android/exchange/SyncManager$SyncError;->escalate()V

    .line 3365
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

    .line 3367
    :cond_3
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    new-instance v10, Lcom/android/exchange/SyncManager$SyncError;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v11, 0x0

    invoke-direct {v10, v7, v1, v11}, Lcom/android/exchange/SyncManager$SyncError;-><init>(Lcom/android/exchange/SyncManager;IZ)V

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3368
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

    .line 3374
    .end local v2           #m:Lcom/android/email/provider/EmailContent$Mailbox;
    :pswitch_2
    iget-object v9, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    if-eqz v9, :cond_1

    .line 3375
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

    .line 3376
    sget-object v9, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    iget-object v9, v9, Lcom/android/exchange/SyncManager;->mProvisionErrorExist:Ljava/util/HashMap;

    iget-object v10, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v10, v10, Lcom/android/email/provider/EmailContent$Account;->mId:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    iget-object v11, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v9, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3377
    const-wide/16 v9, 0x0

    cmp-long v9, v4, v9

    if-lez v9, :cond_1

    .line 3379
    invoke-static {v7, v4, v5}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v3

    .line 3380
    .local v3, m1:Lcom/android/email/provider/EmailContent$Mailbox;
    if-eqz v3, :cond_1

    iget v9, v3, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    const/16 v10, 0x44

    if-eq v9, v10, :cond_1

    .line 3381
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    new-instance v10, Lcom/android/exchange/SyncManager$SyncError;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v11, 0x1

    invoke-direct {v10, v7, v1, v11}, Lcom/android/exchange/SyncManager$SyncError;-><init>(Lcom/android/exchange/SyncManager;IZ)V

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3382
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

    .line 3391
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

    .line 3352
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

    .line 1428
    sget-boolean v0, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v0, :cond_0

    .line 1429
    const-string v0, "EAS SyncManager"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1430
    sget-boolean v0, Lcom/android/exchange/Eas;->FILE_LOG:Z

    if-eqz v0, :cond_0

    .line 1431
    const-string v0, "EAS SyncManager"

    invoke-static {v1, p0}, Lcom/android/exchange/utility/FileLogger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1434
    :cond_0
    return-void
.end method

.method public static exchangeAccountsExist()Z
    .locals 12

    .prologue
    const/4 v3, 0x0

    const/4 v11, 0x0

    .line 982
    invoke-static {}, Lcom/android/exchange/SyncManager;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 983
    .local v7, context:Landroid/content/Context;
    if-nez v7, :cond_1

    move v0, v11

    .line 999
    :cond_0
    :goto_0
    return v0

    .line 985
    :cond_1
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/email/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/email/provider/EmailContent$Account;->CONTENT_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 987
    .local v6, c:Landroid/database/Cursor;
    if-nez v6, :cond_2

    move v0, v11

    .line 988
    goto :goto_0

    .line 990
    :cond_2
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 991
    const/4 v0, 0x6

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 992
    .local v9, hostAuthId:J
    const-wide/16 v0, 0x0

    cmp-long v0, v9, v0

    if-lez v0, :cond_2

    .line 993
    invoke-static {v7, v9, v10}, Lcom/android/email/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$HostAuth;

    move-result-object v8

    .line 994
    .local v8, ha:Lcom/android/email/provider/EmailContent$HostAuth;
    if-eqz v8, :cond_2

    iget-object v0, v8, Lcom/android/email/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    const-string v1, "eas"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    .line 995
    const/4 v0, 0x1

    .line 1001
    if-eqz v6, :cond_0

    .line 1002
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1001
    .end local v8           #ha:Lcom/android/email/provider/EmailContent$HostAuth;
    .end local v9           #hostAuthId:J
    :cond_3
    if-eqz v6, :cond_4

    .line 1002
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    move v0, v11

    .line 999
    goto :goto_0

    .line 1001
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    .line 1002
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1001
    :cond_5
    throw v0
.end method

.method public static folderListReloaded(J)V
    .locals 2
    .parameter "acctId"

    .prologue
    .line 1934
    sget-object v0, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    .line 1935
    .local v0, syncManager:Lcom/android/exchange/SyncManager;
    if-eqz v0, :cond_0

    .line 1936
    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/exchange/SyncManager;->stopAccountSyncs(JZ)V

    .line 1937
    const-string v1, "reload folder list"

    invoke-static {v1}, Lcom/android/exchange/SyncManager;->kick(Ljava/lang/String;)V

    .line 1939
    :cond_0
    return-void
.end method

.method public static getAccountById(J)Lcom/android/email/provider/EmailContent$Account;
    .locals 2
    .parameter "accountId"

    .prologue
    .line 1218
    sget-object v0, Lcom/android/exchange/SyncManager;->sAccountList:Lcom/android/exchange/SyncManager$AccountList;

    monitor-enter v0

    .line 1219
    :try_start_0
    sget-object v1, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    iget-object v1, v1, Lcom/android/exchange/SyncManager;->mAccountObserver:Lcom/android/exchange/SyncManager$AccountObserver;

    iget-object v1, v1, Lcom/android/exchange/SyncManager$AccountObserver;->mAccounts:Lcom/android/exchange/SyncManager$AccountList;

    invoke-virtual {v1, p0, p1}, Lcom/android/exchange/SyncManager$AccountList;->getById(J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1220
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
    .line 1210
    sget-object v0, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    if-eqz v0, :cond_0

    .line 1211
    sget-object v0, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    iget-object v0, v0, Lcom/android/exchange/SyncManager;->mAccountObserver:Lcom/android/exchange/SyncManager$AccountObserver;

    iget-object v0, v0, Lcom/android/exchange/SyncManager$AccountObserver;->mAccounts:Lcom/android/exchange/SyncManager$AccountList;

    .line 1213
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/exchange/SyncManager;->EMPTY_ACCOUNT_LIST:Lcom/android/exchange/SyncManager$AccountList;

    goto :goto_0
.end method

.method public static declared-synchronized getClientConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;
    .locals 9

    .prologue
    .line 1742
    const-class v4, Lcom/android/exchange/SyncManager;

    monitor-enter v4

    :try_start_0
    sget-object v5, Lcom/android/exchange/SyncManager;->sClientConnectionManager:Lorg/apache/http/conn/ClientConnectionManager;

    if-nez v5, :cond_1

    .line 1746
    sget v5, Lcom/android/exchange/SyncManager;->sClientConnectionManagerShutdownCount:I

    const/4 v6, 0x2

    if-le v5, v6, :cond_0

    .line 1747
    const-string v5, "Shutting down process to unblock threads"

    invoke-static {v5}, Lcom/android/exchange/SyncManager;->alwaysLog(Ljava/lang/String;)V

    .line 1748
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-static {v5}, Landroid/os/Process;->killProcess(I)V

    .line 1751
    :cond_0
    new-instance v1, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 1752
    .local v1, registry:Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v5, Lorg/apache/http/conn/scheme/Scheme;

    const-string v6, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v7

    const/16 v8, 0x50

    invoke-direct {v5, v6, v7, v8}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v5}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 1755
    new-instance v3, Lcom/android/exchange/SSLSocketFactory;

    const/16 v5, 0x4e20

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/android/email/mail/transport/SSLUtils;->getSSLSocketFactory(IZ)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/android/exchange/SSLSocketFactory;-><init>(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 1756
    .local v3, sf1:Lcom/android/exchange/SSLSocketFactory;
    new-instance v5, Lorg/apache/http/conn/scheme/Scheme;

    const-string v6, "https"

    const/16 v7, 0x1bb

    invoke-direct {v5, v6, v3, v7}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v5}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 1760
    new-instance v2, Lcom/android/exchange/SSLSocketFactory;

    const/16 v5, 0x4e20

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/android/email/mail/transport/SSLUtils;->getSSLSocketFactory(IZ)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/android/exchange/SSLSocketFactory;-><init>(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 1761
    .local v2, sf:Lcom/android/exchange/SSLSocketFactory;
    sget-object v5, Lcom/android/exchange/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {v2, v5}, Lcom/android/exchange/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    .line 1763
    new-instance v5, Lorg/apache/http/conn/scheme/Scheme;

    const-string v6, "httpts"

    const/16 v7, 0x1bb

    invoke-direct {v5, v6, v2, v7}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v5}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 1765
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 1766
    .local v0, params:Lorg/apache/http/params/HttpParams;
    const-string v5, "http.conn-manager.max-total"

    const/16 v6, 0x19

    invoke-interface {v0, v5, v6}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    .line 1767
    const-string v5, "http.conn-manager.max-per-route"

    sget-object v6, Lcom/android/exchange/SyncManager;->sConnPerRoute:Lorg/apache/http/conn/params/ConnPerRoute;

    invoke-interface {v0, v5, v6}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 1769
    const-string v5, "http.conn-manager.timeout"

    const/16 v6, 0x4e20

    invoke-interface {v0, v5, v6}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    .line 1770
    new-instance v5, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v5, v0, v1}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    sput-object v5, Lcom/android/exchange/SyncManager;->sClientConnectionManager:Lorg/apache/http/conn/ClientConnectionManager;

    .line 1773
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

    .line 1742
    :catchall_0
    move-exception v5

    monitor-exit v4

    throw v5
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 3428
    sget-object v0, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    return-object v0
.end method

.method static getCountofAccounts(Landroid/content/ContentResolver;)I
    .locals 8
    .parameter "resolver"

    .prologue
    .line 2302
    const/4 v6, 0x0

    .line 2303
    .local v6, ac_count:I
    const/4 v7, 0x0

    .line 2305
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

    .line 2307
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

    .line 2312
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    .line 2316
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2317
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2319
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

    .line 2320
    return v6

    .line 2316
    .end local v3           #selection_unread:Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2317
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2316
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
    .line 1454
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
    .line 1458
    const-class v0, Lcom/android/exchange/SyncManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/exchange/SyncManager;->sDeviceId:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1459
    invoke-static {p0}, Lcom/android/exchange/SyncManager;->getDeviceIdInternal(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/exchange/SyncManager;->sDeviceId:Ljava/lang/String;

    .line 1461
    :cond_0
    sget-object v1, Lcom/android/exchange/SyncManager;->sDeviceId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 1458
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

    .line 1465
    sget-object v9, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    if-nez v9, :cond_0

    if-nez p0, :cond_0

    .line 1466
    new-instance v9, Ljava/io/IOException;

    const-string v10, "No context for getDeviceId"

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1467
    :cond_0
    if-nez p0, :cond_1

    .line 1468
    sget-object p0, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    .line 1472
    :cond_1
    :try_start_0
    const-string v9, "deviceName"

    invoke-virtual {p0, v9}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 1473
    .local v3, f:Ljava/io/File;
    const/4 v6, 0x0

    .line 1476
    .local v6, rdr:Ljava/io/BufferedReader;
    const/4 v1, 0x0

    .line 1480
    .local v1, deviceIdNum:I
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1481
    new-instance v6, Ljava/io/BufferedReader;

    .end local v6           #rdr:Ljava/io/BufferedReader;
    new-instance v9, Ljava/io/FileReader;

    invoke-direct {v9, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    const/16 v10, 0x80

    invoke-direct {v6, v9, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 1482
    .restart local v6       #rdr:Ljava/io/BufferedReader;
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 1483
    .local v4, id:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    move-object v9, v4

    .line 1535
    .end local v4           #id:Ljava/lang/String;
    :goto_0
    return-object v9

    .line 1485
    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 1486
    new-instance v8, Ljava/io/BufferedWriter;

    new-instance v9, Ljava/io/FileWriter;

    invoke-direct {v9, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    const/16 v10, 0x80

    invoke-direct {v8, v9, v10}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    .line 1491
    .local v8, w:Ljava/io/BufferedWriter;
    const-string v9, "phone"

    invoke-virtual {p0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1494
    .local v7, tm:Landroid/telephony/TelephonyManager;
    if-nez v7, :cond_3

    move-object v9, v12

    .line 1495
    goto :goto_0

    .line 1497
    :cond_3
    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v5

    .line 1498
    .local v5, phoneType:I
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 1500
    .local v0, consistentDeviceId:Ljava/lang/String;
    const/4 v9, 0x1

    if-ne v5, v9, :cond_5

    .line 1501
    const/4 v1, 0x1

    .line 1516
    :cond_4
    :goto_1
    if-eqz v0, :cond_7

    .line 1522
    :try_start_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "APPLE"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1533
    .restart local v4       #id:Ljava/lang/String;
    :goto_2
    invoke-virtual {v8, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1534
    invoke-virtual {v8}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-object v9, v4

    .line 1535
    goto :goto_0

    .line 1502
    .end local v4           #id:Ljava/lang/String;
    :cond_5
    const/4 v9, 0x2

    if-ne v5, v9, :cond_4

    .line 1504
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-result v9

    const/4 v10, 0x4

    if-ne v9, v10, :cond_6

    .line 1505
    const/4 v1, 0x2

    goto :goto_1

    .line 1507
    :cond_6
    const/4 v1, 0x3

    goto :goto_1

    .line 1509
    .end local v0           #consistentDeviceId:Ljava/lang/String;
    .end local v5           #phoneType:I
    :catch_0
    move-exception v9

    move-object v2, v9

    .line 1510
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

    .line 1511
    goto :goto_0

    .line 1529
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

    .line 1537
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

    .line 1539
    :cond_8
    new-instance v9, Ljava/io/IOException;

    const-string v10, "Can\'t get device name"

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9
.end method

.method public static getEasAccountSelector()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1224
    sget-object v0, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    .line 1225
    .local v0, syncManager:Lcom/android/exchange/SyncManager;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/exchange/SyncManager;->mAccountObserver:Lcom/android/exchange/SyncManager$AccountObserver;

    if-eqz v1, :cond_0

    .line 1226
    iget-object v1, v0, Lcom/android/exchange/SyncManager;->mAccountObserver:Lcom/android/exchange/SyncManager$AccountObserver;

    invoke-virtual {v1}, Lcom/android/exchange/SyncManager$AccountObserver;->getAccountKeyWhere()Ljava/lang/String;

    move-result-object v1

    .line 1228
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getStatusChangeCount(Ljava/lang/String;)I
    .locals 3
    .parameter "status"

    .prologue
    .line 3420
    const/4 v2, 0x5

    :try_start_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 3421
    .local v1, s:Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 3423
    .end local v1           #s:Ljava/lang/String;
    :goto_0
    return v2

    .line 3422
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 3423
    .local v0, e:Ljava/lang/RuntimeException;
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public static getStatusType(Ljava/lang/String;)I
    .locals 2
    .parameter "status"

    .prologue
    .line 3405
    if-nez p0, :cond_0

    .line 3406
    const/4 v0, -0x1

    .line 3408
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
    .line 2281
    const/4 v0, 0x0

    .line 2282
    .local v0, cnt:I
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2283
    .local v1, newValues:Landroid/content/ContentValues;
    const-string v2, "package"

    const-string v3, "com.android.email"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2284
    const-string v2, "class"

    const-string v3, "com.android.email.activity.Welcome"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2285
    const-string v2, "badgecount"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2286
    const-string v2, "content://com.sec.badge/apps"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 2287
    return-void
.end method

.method private isCalendarEnabled(J)Z
    .locals 6
    .parameter "accountId"

    .prologue
    const/4 v5, 0x1

    .line 1042
    iget-object v1, p0, Lcom/android/exchange/SyncManager;->mCalendarObservers:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exchange/SyncManager$CalendarObserver;

    .line 1043
    .local v0, observer:Lcom/android/exchange/SyncManager$CalendarObserver;
    if-eqz v0, :cond_1

    .line 1044
    iget-wide v1, v0, Lcom/android/exchange/SyncManager$CalendarObserver;->mSyncEvents:J

    const-wide/16 v3, 0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    move v1, v5

    .line 1048
    :goto_0
    return v1

    .line 1044
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move v1, v5

    .line 1048
    goto :goto_0
.end method

.method public static kick(Ljava/lang/String;)V
    .locals 3
    .parameter "reason"

    .prologue
    .line 3209
    sget-object v0, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    .line 3210
    .local v0, syncManager:Lcom/android/exchange/SyncManager;
    if-eqz v0, :cond_0

    .line 3211
    monitor-enter v0

    .line 3213
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, v0, Lcom/android/exchange/SyncManager;->mKicked:Z

    .line 3214
    sput-object p0, Lcom/android/exchange/SyncManager;->mKickReason:Ljava/lang/String;

    .line 3215
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 3216
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3218
    :cond_0
    sget-object v1, Lcom/android/exchange/SyncManager;->sConnectivityLock:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 3219
    sget-object v1, Lcom/android/exchange/SyncManager;->sConnectivityLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3220
    :try_start_1
    sget-object v2, Lcom/android/exchange/SyncManager;->sConnectivityLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 3221
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3223
    :cond_1
    return-void

    .line 3216
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 3221
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
    .line 1405
    const-string v0, "EAS SyncManager"

    invoke-static {v0, p0}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1406
    return-void
.end method

.method public static log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "str"

    .prologue
    .line 1409
    sget-boolean v0, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v0, :cond_0

    .line 1410
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1411
    sget-boolean v0, Lcom/android/exchange/Eas;->FILE_LOG:Z

    if-eqz v0, :cond_0

    .line 1412
    invoke-static {p0, p1}, Lcom/android/exchange/utility/FileLogger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1415
    :cond_0
    return-void
.end method

.method private logSyncHolds()V
    .locals 13

    .prologue
    const-string v7, "Mailbox "

    .line 1261
    sget-boolean v7, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/exchange/SyncManager;->mSyncErrorMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    .line 1262
    const-string v7, "Sync holds:"

    invoke-static {v7}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;)V

    .line 1263
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 1264
    .local v5, time:J
    sget-object v8, Lcom/android/exchange/SyncManager;->sSyncLock:Ljava/lang/Object;

    monitor-enter v8

    .line 1265
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

    .line 1266
    .local v3, mailboxId:J
    invoke-static {p0, v3, v4}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v2

    .line 1267
    .local v2, m:Lcom/android/email/provider/EmailContent$Mailbox;
    if-nez v2, :cond_1

    .line 1268
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

    .line 1278
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #m:Lcom/android/email/provider/EmailContent$Mailbox;
    .end local v3           #mailboxId:J
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 1270
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

    .line 1271
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

    .line 1273
    iget-wide v9, v0, Lcom/android/exchange/SyncManager$SyncError;->holdEndTime:J

    const-wide/16 v11, 0x0

    cmp-long v7, v9, v11

    if-lez v7, :cond_0

    .line 1274
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

    .line 1278
    .end local v0           #error:Lcom/android/exchange/SyncManager$SyncError;
    .end local v2           #m:Lcom/android/email/provider/EmailContent$Mailbox;
    .end local v3           #mailboxId:J
    :cond_2
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1280
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v5           #time:J
    :cond_3
    return-void
.end method

.method public static declared-synchronized newClientConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;
    .locals 9

    .prologue
    .line 1712
    const-class v4, Lcom/android/exchange/SyncManager;

    monitor-enter v4

    :try_start_0
    sget-object v5, Lcom/android/exchange/SyncManager;->mClientConnectionManager:Lorg/apache/http/conn/ClientConnectionManager;

    if-nez v5, :cond_0

    .line 1714
    new-instance v1, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 1715
    .local v1, registry:Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v5, Lorg/apache/http/conn/scheme/Scheme;

    const-string v6, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v7

    const/16 v8, 0x50

    invoke-direct {v5, v6, v7, v8}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v5}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 1718
    new-instance v3, Lcom/android/exchange/SSLSocketFactory;

    const/16 v5, 0x4e20

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/android/email/mail/transport/SSLUtils;->getSSLSocketFactory(IZ)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/android/exchange/SSLSocketFactory;-><init>(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 1719
    .local v3, sf1:Lcom/android/exchange/SSLSocketFactory;
    new-instance v5, Lorg/apache/http/conn/scheme/Scheme;

    const-string v6, "https"

    const/16 v7, 0x1bb

    invoke-direct {v5, v6, v3, v7}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v5}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 1723
    new-instance v2, Lcom/android/exchange/SSLSocketFactory;

    const/16 v5, 0x4e20

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/android/email/mail/transport/SSLUtils;->getSSLSocketFactory(IZ)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/android/exchange/SSLSocketFactory;-><init>(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 1724
    .local v2, sf:Lcom/android/exchange/SSLSocketFactory;
    sget-object v5, Lcom/android/exchange/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {v2, v5}, Lcom/android/exchange/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    .line 1726
    new-instance v5, Lorg/apache/http/conn/scheme/Scheme;

    const-string v6, "httpts"

    const/16 v7, 0x1bb

    invoke-direct {v5, v6, v2, v7}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v5}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 1728
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 1729
    .local v0, params:Lorg/apache/http/params/HttpParams;
    const-string v5, "http.conn-manager.max-total"

    const/16 v6, 0x19

    invoke-interface {v0, v5, v6}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    .line 1730
    const-string v5, "http.conn-manager.max-per-route"

    sget-object v6, Lcom/android/exchange/SyncManager;->sConnPerPing:Lorg/apache/http/conn/params/ConnPerRoute;

    invoke-interface {v0, v5, v6}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 1731
    const-string v5, "http.conn-manager.timeout"

    const/16 v6, 0x4e20

    invoke-interface {v0, v5, v6}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    .line 1732
    new-instance v5, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v5, v0, v1}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    sput-object v5, Lcom/android/exchange/SyncManager;->mClientConnectionManager:Lorg/apache/http/conn/ClientConnectionManager;

    .line 1736
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

    .line 1712
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

    .line 3114
    sget-object v1, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    .line 3115
    .local v1, syncManager:Lcom/android/exchange/SyncManager;
    if-nez v1, :cond_0

    move v2, v6

    .line 3129
    :goto_0
    return v2

    .line 3117
    :cond_0
    iget-object v2, v1, Lcom/android/exchange/SyncManager;->mServiceMap:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 3118
    const/4 v2, 0x1

    goto :goto_0

    .line 3121
    :cond_1
    iget-object v2, v1, Lcom/android/exchange/SyncManager;->mSyncErrorMap:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exchange/SyncManager$SyncError;

    .line 3122
    .local v0, error:Lcom/android/exchange/SyncManager$SyncError;
    if-eqz v0, :cond_3

    .line 3123
    iget-boolean v2, v0, Lcom/android/exchange/SyncManager$SyncError;->fatal:Z

    if-eqz v2, :cond_2

    .line 3124
    const/4 v2, 0x3

    goto :goto_0

    .line 3125
    :cond_2
    iget-wide v2, v0, Lcom/android/exchange/SyncManager$SyncError;->holdEndTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    .line 3126
    const/4 v2, 0x2

    goto :goto_0

    :cond_3
    move v2, v6

    .line 3129
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
    .line 2346
    .local p1, cachedEasAccounts:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/provider/EmailContent$Account;>;"
    const/4 v0, 0x0

    .line 2347
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

    .line 2348
    .local v7, providerAccount:Lcom/android/email/provider/EmailContent$Account;
    iget-object v8, v7, Lcom/android/email/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    .line 2349
    .local v8, providerAccountName:Ljava/lang/String;
    const/4 v3, 0x0

    .line 2350
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

    .line 2351
    .local v0, accountManagerAccount:Landroid/accounts/Account;
    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    .end local v0           #accountManagerAccount:Landroid/accounts/Account;
    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2352
    const/4 v0, 0x1

    .line 2356
    .end local v3           #found:Z
    .local v0, found:Z
    :goto_2
    if-nez v0, :cond_8

    .line 2357
    iget v0, v7, Lcom/android/email/provider/EmailContent$Account;->mFlags:I

    .end local v0           #found:Z
    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_1

    .line 2358
    const-string v0, "Account reconciler noticed incomplete account; ignoring"

    invoke-static {v0}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2350
    .restart local v3       #found:Z
    :cond_0
    add-int/lit8 v0, v5, 0x1

    .end local v5           #i$:I
    .local v0, i$:I
    move v5, v0

    .end local v0           #i$:I
    .restart local v5       #i$:I
    goto :goto_1

    .line 2362
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

    .line 2365
    sget-object v0, Lcom/android/email/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v1, v7, Lcom/android/email/provider/EmailContent$Account;->mId:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p4, v0, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2367
    .end local v2           #arr$:[Landroid/accounts/Account;
    invoke-static {p0}, Lcom/android/email/Email;->setServicesEnabled(Landroid/content/Context;)Z

    .line 2368
    const/4 v0, 0x1

    .local v0, accountsDeleted:Z
    :goto_3
    move v1, v0

    .line 2370
    .end local v0           #accountsDeleted:Z
    .restart local v1       #accountsDeleted:Z
    goto :goto_0

    .line 2373
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

    .line 2374
    .local p2, accountManagerAccount:Landroid/accounts/Account;
    iget-object v0, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 2375
    .local v0, accountManagerAccountName:Ljava/lang/String;
    const/4 v3, 0x0

    .line 2376
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

    .line 2377
    .local v3, cachedEasAccount:Lcom/android/email/provider/EmailContent$Account;
    iget-object v3, v3, Lcom/android/email/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    .end local v3           #cachedEasAccount:Lcom/android/email/provider/EmailContent$Account;
    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2378
    const/4 v3, 0x1

    .end local v4           #found:Z
    .local v3, found:Z
    :goto_6
    move v4, v3

    .end local v3           #found:Z
    .restart local v4       #found:Z
    goto :goto_5

    .line 2381
    :cond_3
    if-nez v4, :cond_6

    .line 2383
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

    .line 2386
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, p2, v1, v3}, Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object p2

    .line 2391
    .local p2, blockingResult:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Ljava/lang/Boolean;>;"
    :try_start_0
    invoke-interface {p2}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 2399
    .end local p2           #blockingResult:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Ljava/lang/Boolean;>;"
    :goto_7
    const/4 p2, 0x1

    .line 2373
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

    .line 2392
    .end local v1           #accountsDeleted:Z
    .end local v6           #i$:I
    .local p2, blockingResult:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Ljava/lang/Boolean;>;"
    :catch_0
    move-exception p2

    .line 2393
    .local p2, e:Landroid/accounts/OperationCanceledException;
    const-string v0, "Email"

    invoke-virtual {p2}, Landroid/accounts/OperationCanceledException;->toString()Ljava/lang/String;

    move-result-object p2

    .end local p2           #e:Landroid/accounts/OperationCanceledException;
    invoke-static {v0, p2}, Lcom/android/exchange/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 2394
    .local p2, blockingResult:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Ljava/lang/Boolean;>;"
    :catch_1
    move-exception p2

    .line 2395
    .local p2, e:Landroid/accounts/AuthenticatorException;
    const-string v0, "Email"

    invoke-virtual {p2}, Landroid/accounts/AuthenticatorException;->toString()Ljava/lang/String;

    move-result-object p2

    .end local p2           #e:Landroid/accounts/AuthenticatorException;
    invoke-static {v0, p2}, Lcom/android/exchange/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 2396
    .local p2, blockingResult:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Ljava/lang/Boolean;>;"
    :catch_2
    move-exception p2

    .line 2397
    .local p2, e:Ljava/io/IOException;
    const-string v0, "Email"

    invoke-virtual {p2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p2

    .end local p2           #e:Ljava/io/IOException;
    invoke-static {v0, p2}, Lcom/android/exchange/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 2403
    .end local v4           #found:Z
    .end local v5           #i$:Ljava/util/Iterator;
    .restart local v1       #accountsDeleted:Z
    .restart local v6       #i$:I
    :cond_4
    if-nez p3, :cond_5

    if-eqz v1, :cond_5

    .line 2404
    const-string p1, "EAS SyncManager"

    .end local p1           #cachedEasAccounts:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/provider/EmailContent$Account;>;"
    const-string p2, "Accounts Deleted. reducing policies"

    invoke-static {p1, p2}, Lcom/android/exchange/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2406
    invoke-static {p0}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object p0

    .end local p0
    invoke-virtual {p0}, Lcom/android/email/SecurityPolicy;->reducePolicies()V

    .line 2407
    const/4 p0, 0x1

    invoke-static {p0}, Lcom/android/email/Email;->setNotifyUiAccountsChanged(Z)V

    .line 2409
    invoke-static {p4}, Lcom/android/exchange/SyncManager;->updateBadgeProvider(Landroid/content/ContentResolver;)V

    .line 2412
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
    .line 1014
    new-instance v0, Lcom/android/exchange/SyncManager$CalendarObserver;

    iget-object v1, p0, Lcom/android/exchange/SyncManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1, p1}, Lcom/android/exchange/SyncManager$CalendarObserver;-><init>(Lcom/android/exchange/SyncManager;Landroid/os/Handler;Lcom/android/email/provider/EmailContent$Account;)V

    .line 1015
    .local v0, observer:Lcom/android/exchange/SyncManager$CalendarObserver;
    iget-wide v1, v0, Lcom/android/exchange/SyncManager$CalendarObserver;->mCalendarId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 1017
    iget-object v1, p0, Lcom/android/exchange/SyncManager;->mCalendarObservers:Ljava/util/HashMap;

    iget-wide v2, p1, Lcom/android/email/provider/EmailContent$Account;->mId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1018
    iget-object v1, p0, Lcom/android/exchange/SyncManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/Calendar$Calendars;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, v0, Lcom/android/exchange/SyncManager$CalendarObserver;->mCalendarId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1022
    :cond_0
    return-void
.end method

.method private releaseMailbox(J)V
    .locals 2
    .parameter "mailboxId"

    .prologue
    .line 2776
    iget-object v0, p0, Lcom/android/exchange/SyncManager;->mServiceMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2777
    invoke-virtual {p0, p1, p2}, Lcom/android/exchange/SyncManager;->releaseWakeLock(J)V

    .line 2778
    return-void
.end method

.method public static releaseSecurityHold(Lcom/android/email/provider/EmailContent$Account;)V
    .locals 3
    .parameter "account"

    .prologue
    .line 1287
    sget-object v0, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    .line 1288
    .local v0, syncManager:Lcom/android/exchange/SyncManager;
    if-eqz v0, :cond_0

    .line 1289
    sget-object v1, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/exchange/SyncManager;->releaseSyncHolds(Landroid/content/Context;ILcom/android/email/provider/EmailContent$Account;)V

    .line 1292
    :cond_0
    return-void
.end method

.method private releaseSyncHoldMailbox(Landroid/content/Context;IJ)V
    .locals 4
    .parameter "context"
    .parameter "reason"
    .parameter "mailboxId"

    .prologue
    .line 1334
    sget-object v1, Lcom/android/exchange/SyncManager;->sSyncLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1335
    :try_start_0
    iget-object v2, p0, Lcom/android/exchange/SyncManager;->mSyncErrorMap:Ljava/util/HashMap;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exchange/SyncManager$SyncError;

    .line 1336
    .local v0, error:Lcom/android/exchange/SyncManager$SyncError;
    if-eqz v0, :cond_0

    iget v2, v0, Lcom/android/exchange/SyncManager$SyncError;->reason:I

    if-ne v2, p2, :cond_0

    .line 1337
    iget-object v2, p0, Lcom/android/exchange/SyncManager;->mSyncErrorMap:Ljava/util/HashMap;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1339
    :cond_0
    monitor-exit v1

    .line 1340
    return-void

    .line 1339
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
    .line 1306
    sget-object v7, Lcom/android/exchange/SyncManager;->sSyncLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1307
    :try_start_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1308
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

    .line 1309
    .local v3, mailboxId:J
    if-eqz p3, :cond_1

    .line 1310
    invoke-static {p1, v3, v4}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v2

    .line 1311
    .local v2, m:Lcom/android/email/provider/EmailContent$Mailbox;
    if-nez v2, :cond_2

    .line 1312
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1317
    .end local v2           #m:Lcom/android/email/provider/EmailContent$Mailbox;
    :cond_1
    iget-object v6, p0, Lcom/android/exchange/SyncManager;->mSyncErrorMap:Ljava/util/HashMap;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exchange/SyncManager$SyncError;

    .line 1318
    .local v0, error:Lcom/android/exchange/SyncManager$SyncError;
    iget v6, v0, Lcom/android/exchange/SyncManager$SyncError;->reason:I

    if-ne v6, p2, :cond_0

    .line 1319
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1328
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

    .line 1313
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

    .line 1322
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

    .line 1323
    .restart local v3       #mailboxId:J
    iget-object v6, p0, Lcom/android/exchange/SyncManager;->mSyncErrorMap:Ljava/util/HashMap;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1326
    .end local v3           #mailboxId:J
    :cond_4
    if-eqz p3, :cond_5

    .line 1327
    iget-object v6, p0, Lcom/android/exchange/SyncManager;->mProvisionErrorExist:Ljava/util/HashMap;

    iget-wide v8, p3, Lcom/android/email/provider/EmailContent$Account;->mId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1328
    :cond_5
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1329
    return-void
.end method

.method public static reloadFolderList(Landroid/content/Context;JZ)V
    .locals 9
    .parameter "context"
    .parameter "accountId"
    .parameter "force"

    .prologue
    .line 1854
    sget-object v6, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    .line 1855
    .local v6, syncManager:Lcom/android/exchange/SyncManager;
    if-nez v6, :cond_0

    .line 1924
    .end local p0
    .end local p1
    .end local p3
    :goto_0
    return-void

    .line 1856
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

    .line 1862
    .local v1, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1863
    sget-object v4, Lcom/android/exchange/SyncManager;->sSyncLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1864
    :try_start_1
    new-instance v0, Lcom/android/email/provider/EmailContent$Mailbox;

    invoke-direct {v0}, Lcom/android/email/provider/EmailContent$Mailbox;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/email/provider/EmailContent$Mailbox;->restore(Landroid/database/Cursor;)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v2

    .line 1865
    .local v2, m:Lcom/android/email/provider/EmailContent$Mailbox;
    invoke-static {p0, p1, p2}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v0

    .line 1866
    .local v0, acct:Lcom/android/email/provider/EmailContent$Account;
    if-nez v0, :cond_2

    .line 1867
    invoke-static {p1, p2}, Lcom/android/exchange/SyncManager;->reloadFolderListFailed(J)V

    .line 1868
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1922
    .end local v0           #acct:Lcom/android/email/provider/EmailContent$Account;
    .end local v2           #m:Lcom/android/email/provider/EmailContent$Mailbox;
    .end local p0
    .end local p1
    .end local p3
    :cond_1
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1870
    .restart local v0       #acct:Lcom/android/email/provider/EmailContent$Account;
    .restart local v2       #m:Lcom/android/email/provider/EmailContent$Mailbox;
    .restart local p0
    .restart local p1
    .restart local p3
    :cond_2
    :try_start_2
    iget-object v3, v0, Lcom/android/email/provider/EmailContent$Account;->mSyncKey:Ljava/lang/String;

    .line 1872
    .local v3, syncKey:Ljava/lang/String;
    if-nez p3, :cond_4

    if-eqz v3, :cond_3

    const-string p3, "0"

    .end local p3
    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 1873
    :cond_3
    invoke-static {p1, p2}, Lcom/android/exchange/SyncManager;->reloadFolderListFailed(J)V

    .line 1874
    monitor-exit v4

    goto :goto_1

    .line 1919
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

    .line 1922
    :catchall_1
    move-exception p0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw p0

    .line 1878
    .restart local v0       #acct:Lcom/android/email/provider/EmailContent$Account;
    .restart local v2       #m:Lcom/android/email/provider/EmailContent$Mailbox;
    .restart local v3       #syncKey:Ljava/lang/String;
    .restart local p0
    .restart local p1
    :cond_4
    :try_start_4
    new-instance p3, Landroid/content/ContentValues;

    invoke-direct {p3}, Landroid/content/ContentValues;-><init>()V

    .line 1879
    .local p3, cv:Landroid/content/ContentValues;
    const-string v3, "syncInterval"

    .end local v3           #syncKey:Ljava/lang/String;
    const/4 v5, -0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p3, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1880
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

    .line 1883
    const-string p0, "Set push/ping boxes to push/hold"

    invoke-static {p0}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;)V

    .line 1885
    iget-wide p0, v2, Lcom/android/email/provider/EmailContent$Mailbox;->mId:J

    .line 1886
    .local p0, id:J
    iget-object p2, v6, Lcom/android/exchange/SyncManager;->mServiceMap:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    .end local p3           #cv:Landroid/content/ContentValues;
    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/exchange/AbstractSyncService;

    .line 1889
    .local p2, svc:Lcom/android/exchange/AbstractSyncService;
    if-eqz p2, :cond_7

    iget p3, p2, Lcom/android/exchange/AbstractSyncService;->mSyncReason:I

    const/16 v3, 0x9

    if-eq p3, v3, :cond_7

    .line 1890
    invoke-virtual {p2}, Lcom/android/exchange/AbstractSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object p3

    monitor-enter p3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1891
    :try_start_5
    invoke-virtual {p2}, Lcom/android/exchange/AbstractSyncService;->stop()V

    .line 1892
    monitor-exit p3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1894
    :try_start_6
    iget-object p2, p2, Lcom/android/exchange/AbstractSyncService;->mThread:Ljava/lang/Thread;

    .line 1896
    .local p2, thread:Ljava/lang/Thread;
    if-eqz p2, :cond_5

    .line 1897
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

    .line 1898
    invoke-virtual {p2}, Ljava/lang/Thread;->interrupt()V

    .line 1902
    :cond_5
    invoke-direct {v6, p0, p1}, Lcom/android/exchange/SyncManager;->releaseMailbox(J)V

    .line 1904
    const-string p0, "reload folder list"

    .end local p0           #id:J
    invoke-static {p0}, Lcom/android/exchange/SyncManager;->kick(Ljava/lang/String;)V

    .line 1919
    .end local p2           #thread:Ljava/lang/Thread;
    :cond_6
    :goto_2
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1

    .line 1892
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

    .line 1911
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

    .line 1915
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

    .line 1916
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
    .line 1846
    :try_start_0
    invoke-static {}, Lcom/android/exchange/SyncManager;->callback()Lcom/android/email/service/IEmailServiceCallback;

    move-result-object v0

    const/16 v1, 0x18

    const/4 v2, 0x0

    invoke-interface {v0, p0, p1, v1, v2}, Lcom/android/email/service/IEmailServiceCallback;->syncMailboxListStatus(JII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1851
    :goto_0
    return-void

    .line 1848
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static removeFromSyncErrorMap(J)V
    .locals 4
    .parameter "mailboxId"

    .prologue
    .line 3242
    sget-object v0, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    .line 3243
    .local v0, syncManager:Lcom/android/exchange/SyncManager;
    if-nez v0, :cond_0

    .line 3247
    :goto_0
    return-void

    .line 3244
    :cond_0
    sget-object v1, Lcom/android/exchange/SyncManager;->sSyncLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3245
    :try_start_0
    iget-object v2, v0, Lcom/android/exchange/SyncManager;->mSyncErrorMap:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3246
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
    .line 2506
    sget-boolean v3, Lcom/android/exchange/SyncManager;->sConnectivityHold:Z

    if-nez v3, :cond_0

    if-nez p1, :cond_1

    .line 2531
    :cond_0
    :goto_0
    return-void

    .line 2507
    :cond_1
    sget-object v4, Lcom/android/exchange/SyncManager;->sSyncLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2508
    :try_start_0
    iget-wide v5, p1, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-static {p0, v5, v6}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v1

    .line 2509
    .local v1, acct:Lcom/android/email/provider/EmailContent$Account;
    if-eqz v1, :cond_4

    .line 2511
    iget-object v3, p0, Lcom/android/exchange/SyncManager;->mServiceMap:Ljava/util/HashMap;

    iget-wide v5, p1, Lcom/android/email/provider/EmailContent$Mailbox;->mId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/exchange/AbstractSyncService;

    .line 2512
    .local v2, service:Lcom/android/exchange/AbstractSyncService;
    if-nez v2, :cond_4

    .line 2513
    new-instance v2, Lcom/android/exchange/EasSyncService;

    .end local v2           #service:Lcom/android/exchange/AbstractSyncService;
    invoke-direct {v2, p0, p1}, Lcom/android/exchange/EasSyncService;-><init>(Landroid/content/Context;Lcom/android/email/provider/EmailContent$Mailbox;)V

    .line 2514
    .restart local v2       #service:Lcom/android/exchange/AbstractSyncService;
    move-object v0, v2

    check-cast v0, Lcom/android/exchange/EasSyncService;

    move-object v3, v0

    iget-boolean v3, v3, Lcom/android/exchange/EasSyncService;->mIsValid:Z

    if-nez v3, :cond_2

    monitor-exit v4

    goto :goto_0

    .line 2530
    .end local v1           #acct:Lcom/android/email/provider/EmailContent$Account;
    .end local v2           #service:Lcom/android/exchange/AbstractSyncService;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 2516
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

    .line 2518
    const-string v3, "Provision Error exist. Setting syncReason = SYNC_PROVISION for account sync"

    invoke-static {v3}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;)V

    .line 2519
    const/16 v3, 0x9

    iput v3, v2, Lcom/android/exchange/EasSyncService;->mSyncReason:I

    .line 2524
    :goto_1
    if-eqz p3, :cond_3

    .line 2525
    invoke-virtual {v2, p3}, Lcom/android/exchange/AbstractSyncService;->addRequest(Lcom/android/exchange/Request;)V

    .line 2527
    :cond_3
    invoke-direct {p0, v2, p1}, Lcom/android/exchange/SyncManager;->startServiceThread(Lcom/android/exchange/AbstractSyncService;Lcom/android/email/provider/EmailContent$Mailbox;)V

    .line 2530
    .end local v2           #service:Lcom/android/exchange/AbstractSyncService;
    :cond_4
    monitor-exit v4

    goto :goto_0

    .line 2522
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
    .line 1371
    move-object v0, p0

    .line 1372
    .local v0, syncManager:Lcom/android/exchange/SyncManager;
    new-instance v1, Lcom/android/exchange/SyncManager$3;

    invoke-direct {v1, p0, v0}, Lcom/android/exchange/SyncManager$3;-><init>(Lcom/android/exchange/SyncManager;Lcom/android/exchange/SyncManager;)V

    invoke-virtual {v1}, Lcom/android/exchange/SyncManager$3;->start()V

    .line 1402
    return-void
.end method

.method public static runAsleep(JJ)V
    .locals 1
    .parameter "id"
    .parameter "millis"

    .prologue
    .line 2044
    sget-object v0, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    .line 2045
    .local v0, syncManager:Lcom/android/exchange/SyncManager;
    if-eqz v0, :cond_0

    .line 2046
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/exchange/SyncManager;->setAlarm(JJ)V

    .line 2047
    invoke-virtual {v0, p0, p1}, Lcom/android/exchange/SyncManager;->releaseWakeLock(J)V

    .line 2049
    :cond_0
    return-void
.end method

.method public static runAwake(J)V
    .locals 1
    .parameter "id"

    .prologue
    .line 2036
    sget-object v0, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    .line 2037
    .local v0, syncManager:Lcom/android/exchange/SyncManager;
    if-eqz v0, :cond_0

    .line 2038
    invoke-direct {v0, p0, p1}, Lcom/android/exchange/SyncManager;->acquireWakeLock(J)V

    .line 2039
    invoke-direct {v0, p0, p1}, Lcom/android/exchange/SyncManager;->clearAlarm(J)V

    .line 2041
    :cond_0
    return-void
.end method

.method public static sendMessageRequest(Lcom/android/exchange/Request;)V
    .locals 7
    .parameter "req"

    .prologue
    .line 3089
    sget-object v4, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    .line 3090
    .local v4, syncManager:Lcom/android/exchange/SyncManager;
    if-nez v4, :cond_1

    .line 3104
    :cond_0
    :goto_0
    return-void

    .line 3091
    :cond_1
    iget-wide v5, p0, Lcom/android/exchange/Request;->mMessageId:J

    invoke-static {v4, v5, v6}, Lcom/android/email/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Message;

    move-result-object v2

    .line 3092
    .local v2, msg:Lcom/android/email/provider/EmailContent$Message;
    if-eqz v2, :cond_0

    .line 3095
    iget-wide v0, v2, Lcom/android/email/provider/EmailContent$Message;->mMailboxKey:J

    .line 3096
    .local v0, mailboxId:J
    iget-object v5, v4, Lcom/android/exchange/SyncManager;->mServiceMap:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/exchange/AbstractSyncService;

    .line 3098
    .local v3, service:Lcom/android/exchange/AbstractSyncService;
    if-nez v3, :cond_2

    .line 3099
    const/4 v5, 0x5

    invoke-static {v0, v1, v5, p0}, Lcom/android/exchange/SyncManager;->startManualSync(JILcom/android/exchange/Request;)Lcom/android/exchange/AbstractSyncService;

    move-result-object v3

    .line 3100
    const-string v5, "part request"

    invoke-static {v5}, Lcom/android/exchange/SyncManager;->kick(Ljava/lang/String;)V

    goto :goto_0

    .line 3102
    :cond_2
    invoke-virtual {v3, p0}, Lcom/android/exchange/AbstractSyncService;->addRequest(Lcom/android/exchange/Request;)V

    goto :goto_0
.end method

.method public static serviceRequest(JI)V
    .locals 2
    .parameter "mailboxId"
    .parameter "reason"

    .prologue
    .line 3029
    const-wide/16 v0, 0x1388

    invoke-static {p0, p1, v0, v1, p2}, Lcom/android/exchange/SyncManager;->serviceRequest(JJI)V

    .line 3030
    return-void
.end method

.method public static serviceRequest(JJI)V
    .locals 6
    .parameter "mailboxId"
    .parameter "ms"
    .parameter "reason"

    .prologue
    .line 3033
    sget-object v3, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    .line 3034
    .local v3, syncManager:Lcom/android/exchange/SyncManager;
    if-nez v3, :cond_0

    .line 3071
    :goto_0
    return-void

    .line 3035
    :cond_0
    invoke-static {v3, p0, p1}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v1

    .line 3037
    .local v1, m:Lcom/android/email/provider/EmailContent$Mailbox;
    if-eqz v1, :cond_1

    iget v4, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_1

    iget v4, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_2

    .line 3038
    :cond_1
    const-string v4, "Ignoring serviceRequest for drafts/outbox/null mailbox"

    invoke-static {v4}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 3053
    :cond_2
    iget v4, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    const/16 v5, 0x8

    if-ne v4, v5, :cond_3

    .line 3056
    sget-object v4, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    const-string v4, "Ignoring serviceRequest for search"

    invoke-static {v4}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 3061
    :cond_3
    :try_start_0
    iget-object v4, v3, Lcom/android/exchange/SyncManager;->mServiceMap:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/exchange/AbstractSyncService;

    .line 3062
    .local v2, service:Lcom/android/exchange/AbstractSyncService;
    if-eqz v2, :cond_4

    .line 3063
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long/2addr v4, p2

    iput-wide v4, v2, Lcom/android/exchange/AbstractSyncService;->mRequestTime:J

    .line 3064
    const-string v4, "service request"

    invoke-static {v4}, Lcom/android/exchange/SyncManager;->kick(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3068
    .end local v2           #service:Lcom/android/exchange/AbstractSyncService;
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 3069
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 3066
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
    .line 3074
    sget-object v2, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    .line 3075
    .local v2, syncManager:Lcom/android/exchange/SyncManager;
    if-nez v2, :cond_1

    .line 3086
    :cond_0
    :goto_0
    return-void

    .line 3076
    :cond_1
    iget-object v3, v2, Lcom/android/exchange/SyncManager;->mServiceMap:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/exchange/AbstractSyncService;

    .line 3077
    .local v1, service:Lcom/android/exchange/AbstractSyncService;
    if-eqz v1, :cond_0

    .line 3078
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v1, Lcom/android/exchange/AbstractSyncService;->mRequestTime:J

    .line 3079
    invoke-static {v2, p0, p1}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v0

    .line 3080
    .local v0, m:Lcom/android/email/provider/EmailContent$Mailbox;
    if-eqz v0, :cond_0

    .line 3081
    iget-wide v3, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-static {v2, v3, v4}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v3

    iput-object v3, v1, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    .line 3082
    iput-object v0, v1, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    .line 3083
    const-string v3, "service request immediate"

    invoke-static {v3}, Lcom/android/exchange/SyncManager;->kick(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setAlarm(JJ)V
    .locals 7
    .parameter "id"
    .parameter "millis"

    .prologue
    .line 2009
    iget-object v3, p0, Lcom/android/exchange/SyncManager;->mPendingIntents:Ljava/util/HashMap;

    monitor-enter v3

    .line 2010
    :try_start_0
    iget-object v4, p0, Lcom/android/exchange/SyncManager;->mPendingIntents:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    .line 2011
    .local v2, pi:Landroid/app/PendingIntent;
    if-nez v2, :cond_0

    .line 2012
    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcom/android/exchange/MailboxAlarmReceiver;

    invoke-direct {v1, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2013
    .local v1, i:Landroid/content/Intent;
    const-string v4, "mailbox"

    invoke-virtual {v1, v4, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2014
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

    .line 2015
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {p0, v4, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 2016
    iget-object v4, p0, Lcom/android/exchange/SyncManager;->mPendingIntents:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2018
    const-string v4, "alarm"

    invoke-virtual {p0, v4}, Lcom/android/exchange/SyncManager;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 2019
    .local v0, alarmManager:Landroid/app/AlarmManager;
    const/4 v4, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    add-long/2addr v5, p3

    invoke-virtual {v0, v4, v5, v6, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 2022
    .end local v0           #alarmManager:Landroid/app/AlarmManager;
    .end local v1           #i:Landroid/content/Intent;
    :cond_0
    monitor-exit v3

    .line 2023
    return-void

    .line 2022
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
    .line 3437
    new-instance v0, Landroid/accounts/Account;

    const-string v1, "com.android.exchange"

    invoke-direct {v0, p1, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3439
    .local v0, acct:Landroid/accounts/Account;
    const-string p1, "com.android.contacts"

    .end local p1
    invoke-static {v0, p1}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v1

    .line 3441
    .local v1, syncContacts:Z
    const-string p1, "com.android.calendar"

    invoke-static {v0, p1}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v0

    .line 3444
    .local v0, syncCalendar:Z
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    .line 3445
    .local p1, cv:Landroid/content/ContentValues;
    if-eqz p5, :cond_0

    .line 3446
    const-string p5, "syncInterval"

    .end local p5
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, p5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3447
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

    .line 3452
    :cond_0
    if-eqz v1, :cond_1

    .line 3453
    const-string p5, "syncInterval"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .end local v1           #syncContacts:Z
    invoke-virtual {p1, p5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3454
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

    .line 3464
    :goto_0
    if-eqz v0, :cond_2

    .line 3465
    const-string p5, "syncInterval"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .end local p2
    invoke-virtual {p1, p5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3466
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

    .line 3475
    :goto_1
    return-void

    .line 3458
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

    .line 3459
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

    .line 3470
    :cond_2
    const-string p2, "syncInterval"

    .end local p2
    const/4 p5, -0x1

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-virtual {p1, p2, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3471
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
    .line 2059
    sget-object v0, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    .line 2060
    .local v0, syncManager:Lcom/android/exchange/SyncManager;
    if-eqz v0, :cond_0

    .line 2061
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/exchange/SyncManager;->setAlarm(JJ)V

    .line 2063
    :cond_0
    return-void
.end method

.method public static declared-synchronized shutdownConnectionManager()V
    .locals 2

    .prologue
    .line 1778
    const-class v0, Lcom/android/exchange/SyncManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/exchange/SyncManager;->sClientConnectionManager:Lorg/apache/http/conn/ClientConnectionManager;

    if-eqz v1, :cond_0

    .line 1779
    const-string v1, "Shutting down ClientConnectionManager"

    invoke-static {v1}, Lcom/android/exchange/SyncManager;->alwaysLog(Ljava/lang/String;)V

    .line 1780
    sget-object v1, Lcom/android/exchange/SyncManager;->sClientConnectionManager:Lorg/apache/http/conn/ClientConnectionManager;

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 1781
    sget v1, Lcom/android/exchange/SyncManager;->sClientConnectionManagerShutdownCount:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/android/exchange/SyncManager;->sClientConnectionManagerShutdownCount:I

    .line 1782
    const/4 v1, 0x0

    sput-object v1, Lcom/android/exchange/SyncManager;->sClientConnectionManager:Lorg/apache/http/conn/ClientConnectionManager;

    .line 1786
    :cond_0
    sget-object v1, Lcom/android/exchange/SyncManager;->mClientConnectionManager:Lorg/apache/http/conn/ClientConnectionManager;

    if-eqz v1, :cond_1

    .line 1787
    const-string v1, "Shutting down PingClientConnectionManager"

    invoke-static {v1}, Lcom/android/exchange/SyncManager;->alwaysLog(Ljava/lang/String;)V

    .line 1788
    sget-object v1, Lcom/android/exchange/SyncManager;->mClientConnectionManager:Lorg/apache/http/conn/ClientConnectionManager;

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 1789
    const/4 v1, 0x0

    sput-object v1, Lcom/android/exchange/SyncManager;->mClientConnectionManager:Lorg/apache/http/conn/ClientConnectionManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1792
    :cond_1
    monitor-exit v0

    return-void

    .line 1778
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
    .line 3133
    sget-object v4, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    .line 3134
    .local v4, syncManager:Lcom/android/exchange/SyncManager;
    if-nez v4, :cond_0

    const/4 v5, 0x0

    .line 3173
    .end local p0
    :goto_0
    return-object v5

    .line 3135
    .restart local p0
    :cond_0
    sget-object v6, Lcom/android/exchange/SyncManager;->sSyncLock:Ljava/lang/Object;

    monitor-enter v6

    .line 3136
    :try_start_0
    iget-object v5, v4, Lcom/android/exchange/SyncManager;->mServiceMap:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_2

    .line 3137
    iget-object v5, v4, Lcom/android/exchange/SyncManager;->mSyncErrorMap:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3138
    invoke-static {v4, p0, p1}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v2

    .line 3139
    .local v2, m:Lcom/android/email/provider/EmailContent$Mailbox;
    if-eqz v2, :cond_1

    .line 3140
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

    .line 3141
    invoke-direct {v4, v2, p2, p3}, Lcom/android/exchange/SyncManager;->requestSync(Lcom/android/email/provider/EmailContent$Mailbox;ILcom/android/exchange/Request;)V

    .line 3172
    :cond_1
    :goto_1
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3173
    iget-object v5, v4, Lcom/android/exchange/SyncManager;->mServiceMap:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/exchange/AbstractSyncService;

    move-object v5, p0

    goto :goto_0

    .line 3146
    .end local v2           #m:Lcom/android/email/provider/EmailContent$Mailbox;
    .restart local p0
    :cond_2
    :try_start_1
    invoke-static {v4, p0, p1}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v2

    .line 3147
    .restart local v2       #m:Lcom/android/email/provider/EmailContent$Mailbox;
    sget-boolean v5, Lcom/android/exchange/SyncManager;->sConnectivityHold:Z

    if-nez v5, :cond_1

    if-eqz v2, :cond_1

    .line 3149
    iget-wide v7, v2, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-static {v4, v7, v8}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v1

    .line 3150
    .local v1, acct:Lcom/android/email/provider/EmailContent$Account;
    if-eqz v1, :cond_1

    .line 3152
    iget-object v5, v4, Lcom/android/exchange/SyncManager;->mServiceMap:Ljava/util/HashMap;

    iget-wide v7, v2, Lcom/android/email/provider/EmailContent$Mailbox;->mId:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/exchange/AbstractSyncService;

    .line 3153
    .local v3, service:Lcom/android/exchange/AbstractSyncService;
    move-object v0, v3

    check-cast v0, Lcom/android/exchange/EasSyncService;

    move-object v5, v0

    iget-boolean v5, v5, Lcom/android/exchange/EasSyncService;->mIsValid:Z

    if-eqz v5, :cond_1

    .line 3156
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

    .line 3158
    const-string v5, "Provision Error exist. Setting syncReason = SYNC_PROVISION for account sync"

    invoke-static {v5}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;)V

    .line 3159
    const/16 v5, 0x9

    iput v5, v3, Lcom/android/exchange/AbstractSyncService;->mSyncReason:I

    .line 3164
    :goto_2
    if-eqz p3, :cond_1

    .line 3166
    invoke-virtual {v3, p3}, Lcom/android/exchange/AbstractSyncService;->addRequest(Lcom/android/exchange/Request;)V

    goto :goto_1

    .line 3172
    .end local v1           #acct:Lcom/android/email/provider/EmailContent$Account;
    .end local v2           #m:Lcom/android/email/provider/EmailContent$Mailbox;
    .end local v3           #service:Lcom/android/exchange/AbstractSyncService;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 3162
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
    .line 2465
    if-nez p2, :cond_0

    .line 2480
    :goto_0
    return-void

    .line 2466
    :cond_0
    sget-object v3, Lcom/android/exchange/SyncManager;->sSyncLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2467
    :try_start_0
    iget-object v1, p2, Lcom/android/email/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    .line 2468
    .local v1, mailboxName:Ljava/lang/String;
    iget-object v4, p1, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v0, v4, Lcom/android/email/provider/EmailContent$Account;->mDisplayName:Ljava/lang/String;

    .line 2469
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

    .line 2471
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

    .line 2473
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 2474
    iget-object v4, p0, Lcom/android/exchange/SyncManager;->mServiceMap:Ljava/util/HashMap;

    iget-wide v5, p2, Lcom/android/email/provider/EmailContent$Mailbox;->mId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2475
    iget-wide v4, p2, Lcom/android/email/provider/EmailContent$Mailbox;->mId:J

    invoke-static {v4, v5}, Lcom/android/exchange/SyncManager;->runAwake(J)V

    .line 2476
    iget-object v4, p2, Lcom/android/email/provider/EmailContent$Mailbox;->mServerId:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, p2, Lcom/android/email/provider/EmailContent$Mailbox;->mServerId:Ljava/lang/String;

    const-string v5, "__eas"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2477
    iget-wide v4, p2, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-direct {p0, v4, v5}, Lcom/android/exchange/SyncManager;->stopPing(J)V

    .line 2479
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
    .line 1795
    sget-object v0, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    .line 1796
    .local v0, syncManager:Lcom/android/exchange/SyncManager;
    if-eqz v0, :cond_0

    .line 1797
    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/android/exchange/SyncManager;->stopAccountSyncs(JZ)V

    .line 1799
    :cond_0
    return-void
.end method

.method private stopAccountSyncs(JZ)V
    .locals 11
    .parameter "acctId"
    .parameter "includeAccountMailbox"

    .prologue
    .line 1802
    sget-object v8, Lcom/android/exchange/SyncManager;->sSyncLock:Ljava/lang/Object;

    monitor-enter v8

    .line 1803
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1804
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

    .line 1805
    .local v4, mid:Ljava/lang/Long;
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-static {p0, v9, v10}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v1

    .line 1806
    .local v1, box:Lcom/android/email/provider/EmailContent$Mailbox;
    if-eqz v1, :cond_0

    .line 1807
    iget-wide v9, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    cmp-long v9, v9, p1

    if-nez v9, :cond_0

    .line 1808
    if-nez p3, :cond_1

    iget v9, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    const/16 v10, 0x44

    if-ne v9, v10, :cond_1

    .line 1810
    iget-object v9, p0, Lcom/android/exchange/SyncManager;->mServiceMap:Ljava/util/HashMap;

    invoke-virtual {v9, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/exchange/AbstractSyncService;

    .line 1811
    .local v5, svc:Lcom/android/exchange/AbstractSyncService;
    if-eqz v5, :cond_0

    .line 1812
    invoke-virtual {v5}, Lcom/android/exchange/AbstractSyncService;->stop()V

    goto :goto_0

    .line 1841
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

    .line 1816
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

    .line 1817
    .restart local v5       #svc:Lcom/android/exchange/AbstractSyncService;
    if-eqz v5, :cond_5

    .line 1819
    instance-of v9, v5, Lcom/android/exchange/EasSyncService;

    if-eqz v9, :cond_4

    .line 1820
    move-object v0, v5

    check-cast v0, Lcom/android/exchange/EasSyncService;

    move-object v6, v0

    .line 1821
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

    .line 1823
    :cond_3
    const-string v9, "stopAccountSyncs(): Calendar/Contacts doing initial sync. Continuing without stopping..."

    invoke-static {v9}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1828
    .end local v6           #svc1:Lcom/android/exchange/EasSyncService;
    :cond_4
    invoke-virtual {v5}, Lcom/android/exchange/AbstractSyncService;->stop()V

    .line 1829
    iget-object v7, v5, Lcom/android/exchange/AbstractSyncService;->mThread:Ljava/lang/Thread;

    .line 1830
    .local v7, t:Ljava/lang/Thread;
    if-eqz v7, :cond_5

    .line 1831
    invoke-virtual {v7}, Ljava/lang/Thread;->interrupt()V

    .line 1834
    .end local v7           #t:Ljava/lang/Thread;
    :cond_5
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1838
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

    .line 1839
    .restart local v4       #mid:Ljava/lang/Long;
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-direct {p0, v9, v10}, Lcom/android/exchange/SyncManager;->releaseMailbox(J)V

    goto :goto_1

    .line 1841
    .end local v4           #mid:Ljava/lang/Long;
    :cond_7
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1842
    return-void
.end method

.method private static stopManualSync(J)V
    .locals 5
    .parameter "mailboxId"

    .prologue
    .line 3178
    sget-object v1, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    .line 3179
    .local v1, syncManager:Lcom/android/exchange/SyncManager;
    if-nez v1, :cond_0

    .line 3189
    :goto_0
    return-void

    .line 3180
    :cond_0
    sget-object v2, Lcom/android/exchange/SyncManager;->sSyncLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3181
    :try_start_0
    iget-object v3, v1, Lcom/android/exchange/SyncManager;->mServiceMap:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exchange/AbstractSyncService;

    .line 3182
    .local v0, svc:Lcom/android/exchange/AbstractSyncService;
    if-eqz v0, :cond_1

    .line 3183
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

    .line 3184
    invoke-virtual {v0}, Lcom/android/exchange/AbstractSyncService;->stop()V

    .line 3185
    iget-object v3, v0, Lcom/android/exchange/AbstractSyncService;->mThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 3186
    invoke-virtual {v1, p0, p1}, Lcom/android/exchange/SyncManager;->releaseWakeLock(J)V

    .line 3188
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
    .line 2488
    sget-object v7, Lcom/android/exchange/SyncManager;->sSyncLock:Ljava/lang/Object;

    monitor-enter v7

    .line 2489
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

    .line 2490
    .local v2, mailboxId:J
    invoke-static {p0, v2, v3}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v1

    .line 2491
    .local v1, m:Lcom/android/email/provider/EmailContent$Mailbox;
    if-eqz v1, :cond_0

    .line 2492
    iget-object v4, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mServerId:Ljava/lang/String;

    .line 2493
    .local v4, serverId:Ljava/lang/String;
    iget-wide v8, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    cmp-long v6, v8, p1

    if-nez v6, :cond_0

    if-eqz v4, :cond_0

    const-string v6, "__eas"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2496
    iget-object v6, p0, Lcom/android/exchange/SyncManager;->mServiceMap:Ljava/util/HashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/exchange/AbstractSyncService;

    .line 2497
    .local v5, svc:Lcom/android/exchange/AbstractSyncService;
    invoke-virtual {v5}, Lcom/android/exchange/AbstractSyncService;->reset()V

    goto :goto_0

    .line 2501
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

    .line 2502
    return-void
.end method

.method private stopServiceThreads()V
    .locals 7

    .prologue
    .line 2534
    sget-object v4, Lcom/android/exchange/SyncManager;->sSyncLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2535
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2538
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

    .line 2539
    .local v1, mailboxId:Ljava/lang/Long;
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2554
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #mailboxId:Ljava/lang/Long;
    .end local v3           #toStop:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 2543
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

    .line 2544
    .restart local v1       #mailboxId:Ljava/lang/Long;
    iget-object v5, p0, Lcom/android/exchange/SyncManager;->mServiceMap:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/exchange/AbstractSyncService;

    .line 2545
    .local v2, svc:Lcom/android/exchange/AbstractSyncService;
    if-eqz v2, :cond_1

    .line 2546
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

    .line 2547
    invoke-virtual {v2}, Lcom/android/exchange/AbstractSyncService;->stop()V

    .line 2548
    iget-object v5, v2, Lcom/android/exchange/AbstractSyncService;->mThread:Ljava/lang/Thread;

    if-eqz v5, :cond_1

    .line 2549
    iget-object v5, v2, Lcom/android/exchange/AbstractSyncService;->mThread:Ljava/lang/Thread;

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    .line 2552
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lcom/android/exchange/SyncManager;->releaseWakeLock(J)V

    goto :goto_1

    .line 2554
    .end local v1           #mailboxId:Ljava/lang/Long;
    .end local v2           #svc:Lcom/android/exchange/AbstractSyncService;
    :cond_2
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2555
    return-void
.end method

.method private unregisterCalendarObservers()V
    .locals 3

    .prologue
    .line 1028
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

    .line 1029
    .local v1, observer:Lcom/android/exchange/SyncManager$CalendarObserver;
    iget-object v2, p0, Lcom/android/exchange/SyncManager;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v2, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0

    .line 1031
    .end local v1           #observer:Lcom/android/exchange/SyncManager$CalendarObserver;
    :cond_0
    iget-object v2, p0, Lcom/android/exchange/SyncManager;->mCalendarObservers:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 1032
    return-void
.end method

.method private updateAccountDb(Z)V
    .locals 22
    .parameter "networkChanged"

    .prologue
    .line 3520
    const-string v19, "phone"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/exchange/SyncManager;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/telephony/TelephonyManager;

    .line 3521
    .local v16, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual/range {v16 .. v16}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v9

    .line 3522
    .local v9, isRoaming:Z
    const-wide/32 v13, 0x5265c00

    .line 3523
    .local v13, nextAlarmForPeak:J
    const-wide/32 v17, 0x5265c00

    .line 3525
    .local v17, tmpNextAlarm:J
    invoke-static {}, Lcom/android/exchange/SyncManager;->getAccountList()Lcom/android/exchange/SyncManager$AccountList;

    move-result-object v5

    .line 3527
    .local v5, accounts:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/provider/EmailContent$Account;>;"
    monitor-enter v5

    .line 3528
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

    .line 3529
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

    .line 3530
    invoke-virtual {v4}, Lcom/android/email/provider/EmailContent$Account;->getSyncScheduleData()Lcom/android/exchange/SyncScheduleData;

    move-result-object v15

    .line 3531
    .local v15, syncScheduleData:Lcom/android/exchange/SyncScheduleData;
    invoke-static {v15}, Lcom/android/exchange/SyncScheduler;->getIsPeakAndNextAlarm(Lcom/android/exchange/SyncScheduleData;)Landroid/util/Pair;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    .line 3532
    .local v8, isInPeakPeriod:Z
    invoke-static {v15}, Lcom/android/exchange/SyncScheduler;->getIsPeakAndNextAlarm(Lcom/android/exchange/SyncScheduleData;)Landroid/util/Pair;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    .line 3533
    const/4 v12, -0x2

    .line 3534
    .local v12, newSyncInterval:I
    cmp-long v19, v17, v13

    if-gtz v19, :cond_1

    .line 3535
    move-wide/from16 v13, v17

    .line 3536
    sget-boolean v19, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v19, :cond_1

    .line 3537
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

    .line 3539
    :cond_1
    if-eqz v9, :cond_3

    invoke-virtual {v15}, Lcom/android/exchange/SyncScheduleData;->getRoamingSchedule()I

    move-result v19

    if-nez v19, :cond_3

    .line 3541
    const/4 v12, -0x1

    .line 3542
    sget-boolean v19, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v19, :cond_2

    .line 3543
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

    .line 3557
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

    .line 3559
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 3560
    .local v6, cv:Landroid/content/ContentValues;
    const-string v19, "syncInterval"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object v0, v6

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3561
    invoke-static {}, Lcom/android/exchange/SyncManager;->getContext()Landroid/content/Context;

    move-result-object v19

    move-object v0, v4

    move-object/from16 v1, v19

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/email/provider/EmailContent$Account;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 3563
    new-instance v11, Ljava/util/Date;

    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    .line 3564
    .local v11, lv_localDate:Ljava/util/Date;
    new-instance v10, Ljava/text/SimpleDateFormat;

    const-string v19, "HH:mm"

    move-object v0, v10

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 3565
    .local v10, lv_formatter:Ljava/text/SimpleDateFormat;
    sget-boolean v19, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v19, :cond_0

    .line 3566
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

    .line 3571
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

    .line 3544
    .restart local v4       #account:Lcom/android/email/provider/EmailContent$Account;
    .restart local v7       #i$:Ljava/util/Iterator;
    .restart local v8       #isInPeakPeriod:Z
    .restart local v12       #newSyncInterval:I
    .restart local v15       #syncScheduleData:Lcom/android/exchange/SyncScheduleData;
    :cond_3
    if-eqz v8, :cond_4

    .line 3546
    :try_start_1
    invoke-virtual {v15}, Lcom/android/exchange/SyncScheduleData;->getPeakSchedule()I

    move-result v12

    .line 3547
    sget-boolean v19, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v19, :cond_2

    .line 3548
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

    .line 3551
    :cond_4
    invoke-virtual {v15}, Lcom/android/exchange/SyncScheduleData;->getOffPeakSchedule()I

    move-result v12

    .line 3552
    sget-boolean v19, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v19, :cond_2

    .line 3553
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

    .line 3571
    .end local v4           #account:Lcom/android/email/provider/EmailContent$Account;
    .end local v8           #isInPeakPeriod:Z
    .end local v12           #newSyncInterval:I
    .end local v15           #syncScheduleData:Lcom/android/exchange/SyncScheduleData;
    :cond_5
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3572
    if-nez p1, :cond_8

    .line 3573
    sget-boolean v19, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v19, :cond_6

    .line 3574
    const-string v19, "James"

    const-string v20, "UpdateAccountDb() : calling thread for WAIT!"

    invoke-static/range {v19 .. v20}, Lcom/android/exchange/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3575
    :cond_6
    sget-object v19, Lcom/android/exchange/SyncManager;->mInstance_UpdateAccountHearbeat:Lcom/android/exchange/SyncManager$syncManager_UpdateAccountHearbeat;

    if-eqz v19, :cond_7

    .line 3577
    sget-object v19, Lcom/android/exchange/SyncManager;->mInstance_UpdateAccountHearbeat:Lcom/android/exchange/SyncManager$syncManager_UpdateAccountHearbeat;

    monitor-enter v19

    .line 3578
    :try_start_2
    sget-object v20, Lcom/android/exchange/SyncManager;->mInstance_UpdateAccountHearbeat:Lcom/android/exchange/SyncManager$syncManager_UpdateAccountHearbeat;

    invoke-virtual/range {v20 .. v20}, Lcom/android/exchange/SyncManager$syncManager_UpdateAccountHearbeat;->setFlag()V

    .line 3579
    sget-object v20, Lcom/android/exchange/SyncManager;->mInstance_UpdateAccountHearbeat:Lcom/android/exchange/SyncManager$syncManager_UpdateAccountHearbeat;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->notify()V

    .line 3580
    monitor-exit v19
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3582
    :cond_7
    new-instance v19, Lcom/android/exchange/SyncManager$syncManager_UpdateAccountHearbeat;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-wide v2, v13

    invoke-direct {v0, v1, v2, v3}, Lcom/android/exchange/SyncManager$syncManager_UpdateAccountHearbeat;-><init>(Lcom/android/exchange/SyncManager;J)V

    sput-object v19, Lcom/android/exchange/SyncManager;->mInstance_UpdateAccountHearbeat:Lcom/android/exchange/SyncManager$syncManager_UpdateAccountHearbeat;

    .line 3583
    sget-object v19, Lcom/android/exchange/SyncManager;->mInstance_UpdateAccountHearbeat:Lcom/android/exchange/SyncManager$syncManager_UpdateAccountHearbeat;

    const-string v20, "updateAccountDB"

    invoke-virtual/range {v19 .. v20}, Lcom/android/exchange/SyncManager$syncManager_UpdateAccountHearbeat;->setName(Ljava/lang/String;)V

    .line 3584
    sget-object v19, Lcom/android/exchange/SyncManager;->mInstance_UpdateAccountHearbeat:Lcom/android/exchange/SyncManager$syncManager_UpdateAccountHearbeat;

    invoke-virtual/range {v19 .. v19}, Lcom/android/exchange/SyncManager$syncManager_UpdateAccountHearbeat;->start()V

    .line 3586
    :cond_8
    return-void

    .line 3580
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
    .line 2290
    invoke-static {p0}, Lcom/android/exchange/SyncManager;->getCountofAccounts(Landroid/content/ContentResolver;)I

    move-result v0

    .line 2291
    .local v0, cnt:I
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2292
    .local v1, newValues:Landroid/content/ContentValues;
    const-string v3, "package"

    const-string v4, "com.android.email"

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2293
    const-string v3, "class"

    const-string v4, "com.android.email.activity.Welcome"

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2294
    const-string v3, "badgecount"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2295
    const-string v2, "package=\'com.android.email\' AND class=\'com.android.email.activity.Welcome\'"

    .line 2296
    .local v2, where:Ljava/lang/String;
    const-string v3, "content://com.sec.badge/apps"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v1, v2, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2297
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

    .line 2298
    return-void
.end method

.method private updatePIMSyncSettings(Lcom/android/email/provider/EmailContent$Account;ILjava/lang/String;)V
    .locals 10
    .parameter "providerAccount"
    .parameter "mailboxType"
    .parameter "authority"

    .prologue
    .line 2135
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2136
    .local v1, cv:Landroid/content/ContentValues;
    iget-wide v6, p1, Lcom/android/email/provider/EmailContent$Account;->mId:J

    invoke-static {p0, v6, v7, p2}, Lcom/android/email/provider/EmailContent$Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v3

    .line 2139
    .local v3, mailboxId:J
    const-wide/16 v6, -0x1

    cmp-long v6, v3, v6

    if-eqz v6, :cond_0

    .line 2141
    new-instance v0, Landroid/accounts/Account;

    iget-object v6, p1, Lcom/android/email/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    const-string v7, "com.android.exchange"

    invoke-direct {v0, v6, v7}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2145
    .local v0, acct:Landroid/accounts/Account;
    invoke-static {p0, v3, v4}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v2

    .line 2146
    .local v2, mailbox:Lcom/android/email/provider/EmailContent$Mailbox;
    if-nez v2, :cond_1

    .line 2178
    .end local v0           #acct:Landroid/accounts/Account;
    .end local v2           #mailbox:Lcom/android/email/provider/EmailContent$Mailbox;
    :cond_0
    :goto_0
    return-void

    .line 2147
    .restart local v0       #acct:Landroid/accounts/Account;
    .restart local v2       #mailbox:Lcom/android/email/provider/EmailContent$Mailbox;
    :cond_1
    iget v5, v2, Lcom/android/email/provider/EmailContent$Mailbox;->mSyncInterval:I

    .line 2149
    .local v5, syncInterval:I
    invoke-static {v0, p3}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_4

    .line 2151
    invoke-static {v0, p3}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2153
    invoke-virtual {p1}, Lcom/android/email/provider/EmailContent$Account;->getSyncInterval()I

    move-result v6

    if-eq v6, v5, :cond_2

    .line 2155
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

    .line 2156
    const-string v6, "syncInterval"

    invoke-virtual {p1}, Lcom/android/email/provider/EmailContent$Account;->getSyncInterval()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2171
    :cond_2
    :goto_1
    const-string v6, "syncInterval"

    invoke-virtual {v1, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/exchange/SyncManager;->mResolver:Landroid/content/ContentResolver;

    if-eqz v6, :cond_0

    .line 2173
    iget-object v6, p0, Lcom/android/exchange/SyncManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v7, Lcom/android/email/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v1, v8, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2175
    const-string v6, "sync settings change"

    invoke-static {v6}, Lcom/android/exchange/SyncManager;->kick(Ljava/lang/String;)V

    goto :goto_0

    .line 2160
    :cond_3
    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    .line 2161
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

    .line 2162
    const-string v6, "syncInterval"

    const/4 v7, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    .line 2165
    :cond_4
    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    .line 2166
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

    .line 2167
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

    .line 2558
    const/4 v2, 0x0

    .line 2559
    .local v2, waiting:Z
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Lcom/android/exchange/SyncManager;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 2561
    .local v0, cm:Landroid/net/ConnectivityManager;
    :goto_0
    iget-boolean v3, p0, Lcom/android/exchange/SyncManager;->mStop:Z

    if-nez v3, :cond_1

    .line 2562
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 2564
    .local v1, info:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    .line 2565
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

    .line 2568
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

    .line 2574
    if-eqz v2, :cond_1

    .line 2576
    const/4 v3, 0x0

    invoke-virtual {p0, p0, v8, v3}, Lcom/android/exchange/SyncManager;->releaseSyncHolds(Landroid/content/Context;ILcom/android/email/provider/EmailContent$Account;)V

    .line 2578
    invoke-direct {p0}, Lcom/android/exchange/SyncManager;->logSyncHolds()V

    .line 2605
    .end local v1           #info:Landroid/net/NetworkInfo;
    :cond_1
    return-void

    .line 2583
    .restart local v1       #info:Landroid/net/NetworkInfo;
    :cond_2
    if-nez v2, :cond_3

    .line 2584
    const/4 v2, 0x1

    .line 2585
    invoke-direct {p0}, Lcom/android/exchange/SyncManager;->stopServiceThreads()V

    .line 2589
    :cond_3
    sget-object v3, Lcom/android/exchange/SyncManager;->sConnectivityLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2590
    const-wide/16 v4, -0x1

    const-wide/32 v6, 0x93b48

    :try_start_0
    invoke-static {v4, v5, v6, v7}, Lcom/android/exchange/SyncManager;->runAsleep(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2592
    :try_start_1
    const-string v4, "Connectivity lock..."

    invoke-static {v4}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;)V

    .line 2593
    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/exchange/SyncManager;->sConnectivityHold:Z

    .line 2594
    sget-object v4, Lcom/android/exchange/SyncManager;->sConnectivityLock:Ljava/lang/Object;

    const-wide/32 v5, 0x927c0

    invoke-virtual {v4, v5, v6}, Ljava/lang/Object;->wait(J)V

    .line 2595
    const-string v4, "Connectivity lock released..."

    invoke-static {v4}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2599
    const/4 v4, 0x0

    :try_start_2
    sput-boolean v4, Lcom/android/exchange/SyncManager;->sConnectivityHold:Z

    .line 2601
    :goto_1
    const-wide/16 v4, -0x1

    invoke-static {v4, v5}, Lcom/android/exchange/SyncManager;->runAwake(J)V

    .line 2602
    monitor-exit v3

    goto/16 :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 2599
    :catchall_1
    move-exception v4

    const/4 v5, 0x0

    :try_start_3
    sput-boolean v5, Lcom/android/exchange/SyncManager;->sConnectivityHold:Z

    throw v4

    .line 2596
    :catch_0
    move-exception v4

    .line 2599
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
    .line 1673
    sget-object v0, Lcom/android/email/provider/EmailContent$HostAuth;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "protocol=\"eas\""

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/android/email/provider/EmailContent;->count(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    .line 1674
    sget-object v0, Lcom/android/exchange/SyncManager;->sServiceThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/exchange/SyncManager;->sServiceThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1675
    :cond_0
    sget-object v0, Lcom/android/exchange/SyncManager;->sServiceThread:Ljava/lang/Thread;

    if-nez v0, :cond_2

    const-string v0, "Starting thread..."

    :goto_0
    invoke-static {v0}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;)V

    .line 1676
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "SyncManager"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    sput-object v0, Lcom/android/exchange/SyncManager;->sServiceThread:Ljava/lang/Thread;

    .line 1677
    sget-object v0, Lcom/android/exchange/SyncManager;->sServiceThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1680
    :cond_1
    return-void

    .line 1675
    :cond_2
    const-string v0, "Restarting thread..."

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 1544
    iget-object v0, p0, Lcom/android/exchange/SyncManager;->mBinder:Lcom/android/email/service/IEmailService$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 6

    .prologue
    .line 1571
    const-string v2, "!!! EAS SyncManager, onCreate"

    invoke-static {v2}, Lcom/android/exchange/SyncManager;->alwaysLog(Ljava/lang/String;)V

    .line 1572
    sget-object v2, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    if-nez v2, :cond_1

    .line 1573
    sput-object p0, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    .line 1574
    invoke-virtual {p0}, Lcom/android/exchange/SyncManager;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exchange/SyncManager;->mResolver:Landroid/content/ContentResolver;

    .line 1575
    new-instance v2, Lcom/android/exchange/SyncManager$AccountObserver;

    iget-object v3, p0, Lcom/android/exchange/SyncManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/android/exchange/SyncManager$AccountObserver;-><init>(Lcom/android/exchange/SyncManager;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/exchange/SyncManager;->mAccountObserver:Lcom/android/exchange/SyncManager$AccountObserver;

    .line 1576
    iget-object v2, p0, Lcom/android/exchange/SyncManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/email/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/exchange/SyncManager;->mAccountObserver:Lcom/android/exchange/SyncManager$AccountObserver;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1577
    new-instance v2, Lcom/android/exchange/SyncManager$MailboxObserver;

    iget-object v3, p0, Lcom/android/exchange/SyncManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/android/exchange/SyncManager$MailboxObserver;-><init>(Lcom/android/exchange/SyncManager;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/exchange/SyncManager;->mMailboxObserver:Lcom/android/exchange/SyncManager$MailboxObserver;

    .line 1578
    new-instance v2, Lcom/android/exchange/SyncManager$SyncedMessageObserver;

    iget-object v3, p0, Lcom/android/exchange/SyncManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/android/exchange/SyncManager$SyncedMessageObserver;-><init>(Lcom/android/exchange/SyncManager;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/exchange/SyncManager;->mSyncedMessageObserver:Lcom/android/exchange/SyncManager$SyncedMessageObserver;

    .line 1579
    new-instance v2, Lcom/android/exchange/SyncManager$MessageObserver;

    iget-object v3, p0, Lcom/android/exchange/SyncManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/android/exchange/SyncManager$MessageObserver;-><init>(Lcom/android/exchange/SyncManager;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/exchange/SyncManager;->mMessageObserver:Lcom/android/exchange/SyncManager$MessageObserver;

    .line 1580
    new-instance v2, Lcom/android/exchange/SyncManager$EasSyncStatusObserver;

    invoke-direct {v2, p0}, Lcom/android/exchange/SyncManager$EasSyncStatusObserver;-><init>(Lcom/android/exchange/SyncManager;)V

    iput-object v2, p0, Lcom/android/exchange/SyncManager;->mSyncStatusObserver:Lcom/android/exchange/SyncManager$EasSyncStatusObserver;

    .line 1583
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Lcom/android/exchange/SyncManager;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 1584
    .local v1, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/exchange/SyncManager;->mIsNetworkRoaming:Z

    .line 1586
    new-instance v2, Lcom/android/exchange/SyncManager$4;

    invoke-direct {v2, p0}, Lcom/android/exchange/SyncManager$4;-><init>(Lcom/android/exchange/SyncManager;)V

    iput-object v2, p0, Lcom/android/exchange/SyncManager;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 1608
    :try_start_0
    sget-object v2, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    invoke-static {v2}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/email/SecurityPolicy;->setActivePoliciesAtSystemProperties()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1615
    :goto_0
    iget-object v2, p0, Lcom/android/exchange/SyncManager;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v2}, Lcom/android/exchange/SyncManager;->insertBadgeProvider(Landroid/content/ContentResolver;)V

    .line 1616
    iget-object v2, p0, Lcom/android/exchange/SyncManager;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v2}, Lcom/android/exchange/SyncManager;->updateBadgeProvider(Landroid/content/ContentResolver;)V

    .line 1622
    .end local v1           #tm:Landroid/telephony/TelephonyManager;
    :goto_1
    sget-object v2, Lcom/android/exchange/SyncManager;->sDeviceId:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 1624
    :try_start_1
    invoke-static {p0}, Lcom/android/exchange/SyncManager;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1632
    :cond_0
    invoke-direct {p0}, Lcom/android/exchange/SyncManager;->runAccountReconciler()V

    .line 1633
    return-void

    .line 1611
    .restart local v1       #tm:Landroid/telephony/TelephonyManager;
    :catchall_0
    move-exception v2

    throw v2

    .line 1620
    .end local v1           #tm:Landroid/telephony/TelephonyManager;
    :cond_1
    const-string v2, "!!! EAS SyncManager onCreated, but INSTANCE not null??"

    invoke-static {v2}, Lcom/android/exchange/SyncManager;->alwaysLog(Ljava/lang/String;)V

    goto :goto_1

    .line 1625
    :catch_0
    move-exception v0

    .line 1627
    .local v0, e:Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    throw v2

    .line 1609
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

    .line 1652
    const-string v0, "!!! EAS SyncManager, onDestroy"

    invoke-static {v0}, Lcom/android/exchange/SyncManager;->alwaysLog(Ljava/lang/String;)V

    .line 1653
    sget-object v0, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    if-eqz v0, :cond_0

    .line 1654
    sput-object v2, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    .line 1655
    iget-object v0, p0, Lcom/android/exchange/SyncManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/exchange/SyncManager;->mAccountObserver:Lcom/android/exchange/SyncManager$AccountObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1656
    invoke-direct {p0}, Lcom/android/exchange/SyncManager;->unregisterCalendarObservers()V

    .line 1657
    iput-object v2, p0, Lcom/android/exchange/SyncManager;->mResolver:Landroid/content/ContentResolver;

    .line 1658
    iput-object v2, p0, Lcom/android/exchange/SyncManager;->mAccountObserver:Lcom/android/exchange/SyncManager$AccountObserver;

    .line 1659
    iput-object v2, p0, Lcom/android/exchange/SyncManager;->mMailboxObserver:Lcom/android/exchange/SyncManager$MailboxObserver;

    .line 1660
    iput-object v2, p0, Lcom/android/exchange/SyncManager;->mSyncedMessageObserver:Lcom/android/exchange/SyncManager$SyncedMessageObserver;

    .line 1661
    iput-object v2, p0, Lcom/android/exchange/SyncManager;->mMessageObserver:Lcom/android/exchange/SyncManager$MessageObserver;

    .line 1662
    iput-object v2, p0, Lcom/android/exchange/SyncManager;->mSyncStatusObserver:Lcom/android/exchange/SyncManager$EasSyncStatusObserver;

    .line 1663
    iput-object v2, p0, Lcom/android/exchange/SyncManager;->mAccountsUpdatedListener:Lcom/android/exchange/SyncManager$EasAccountsUpdatedListener;

    .line 1665
    iput-object v2, p0, Lcom/android/exchange/SyncManager;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 1668
    :cond_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 1637
    const-string v0, "!!! EAS SyncManager, onStartCommand"

    invoke-static {v0}, Lcom/android/exchange/SyncManager;->alwaysLog(Ljava/lang/String;)V

    .line 1642
    invoke-virtual {p0}, Lcom/android/exchange/SyncManager;->maybeStartSyncManagerThread()V

    .line 1643
    sget-object v0, Lcom/android/exchange/SyncManager;->sServiceThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 1644
    const-string v0, "!!! EAS SyncManager, stopping self"

    invoke-static {v0}, Lcom/android/exchange/SyncManager;->alwaysLog(Ljava/lang/String;)V

    .line 1645
    invoke-virtual {p0}, Lcom/android/exchange/SyncManager;->stopSelf()V

    .line 1647
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
    .line 1301
    invoke-direct {p0, p1, p2, p3}, Lcom/android/exchange/SyncManager;->releaseSyncHoldsImpl(Landroid/content/Context;ILcom/android/email/provider/EmailContent$Account;)V

    .line 1302
    const-string v0, "security release"

    invoke-static {v0}, Lcom/android/exchange/SyncManager;->kick(Ljava/lang/String;)V

    .line 1303
    return-void
.end method

.method public releaseWakeLock(J)V
    .locals 4
    .parameter "id"

    .prologue
    .line 1958
    iget-object v1, p0, Lcom/android/exchange/SyncManager;->mWakeLocks:Ljava/util/HashMap;

    monitor-enter v1

    .line 1959
    :try_start_0
    iget-object v2, p0, Lcom/android/exchange/SyncManager;->mWakeLocks:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 1960
    .local v0, lock:Ljava/lang/Boolean;
    if-eqz v0, :cond_1

    .line 1961
    iget-object v2, p0, Lcom/android/exchange/SyncManager;->mWakeLocks:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1962
    iget-object v2, p0, Lcom/android/exchange/SyncManager;->mWakeLocks:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1963
    iget-object v2, p0, Lcom/android/exchange/SyncManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_0

    .line 1964
    iget-object v2, p0, Lcom/android/exchange/SyncManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1966
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/exchange/SyncManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1971
    :cond_1
    monitor-exit v1

    .line 1972
    return-void

    .line 1971
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

    .line 2608
    iput-boolean v10, p0, Lcom/android/exchange/SyncManager;->mStop:Z

    .line 2611
    sget-boolean v6, Lcom/android/exchange/Eas;->DEBUG:Z

    if-eqz v6, :cond_0

    .line 2612
    sput-boolean v11, Lcom/android/exchange/Eas;->USER_LOG:Z

    .line 2613
    sput-boolean v11, Lcom/android/exchange/Eas;->PARSER_LOG:Z

    .line 2614
    sput-boolean v11, Lcom/android/exchange/Eas;->FILE_LOG:Z

    .line 2618
    :cond_0
    sget-boolean v6, Lcom/android/exchange/Eas;->WAIT_DEBUG:Z

    if-eqz v6, :cond_1

    .line 2619
    invoke-static {}, Landroid/os/Debug;->waitForDebugger()V

    .line 2627
    :cond_1
    iget-object v6, p0, Lcom/android/exchange/SyncManager;->mResolver:Landroid/content/ContentResolver;

    if-nez v6, :cond_3

    .line 2773
    :cond_2
    return-void

    .line 2631
    :cond_3
    sget-object v6, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    if-eqz v6, :cond_2

    .line 2632
    iget-object v6, p0, Lcom/android/exchange/SyncManager;->mMailboxObserver:Lcom/android/exchange/SyncManager$MailboxObserver;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/exchange/SyncManager;->mSyncedMessageObserver:Lcom/android/exchange/SyncManager$SyncedMessageObserver;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/exchange/SyncManager;->mMessageObserver:Lcom/android/exchange/SyncManager$MessageObserver;

    if-eqz v6, :cond_2

    .line 2635
    :try_start_0
    iget-object v6, p0, Lcom/android/exchange/SyncManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v7, Lcom/android/email/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/exchange/SyncManager;->mMailboxObserver:Lcom/android/exchange/SyncManager$MailboxObserver;

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2636
    iget-object v6, p0, Lcom/android/exchange/SyncManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v7, Lcom/android/email/provider/EmailContent$Message;->SYNCED_CONTENT_URI:Landroid/net/Uri;

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/android/exchange/SyncManager;->mSyncedMessageObserver:Lcom/android/exchange/SyncManager$SyncedMessageObserver;

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2637
    iget-object v6, p0, Lcom/android/exchange/SyncManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v7, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/android/exchange/SyncManager;->mMessageObserver:Lcom/android/exchange/SyncManager$MessageObserver;

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2638
    const/4 v6, 0x1

    iget-object v7, p0, Lcom/android/exchange/SyncManager;->mSyncStatusObserver:Lcom/android/exchange/SyncManager$EasSyncStatusObserver;

    invoke-static {v6, v7}, Landroid/content/ContentResolver;->addStatusChangeListener(ILandroid/content/SyncStatusObserver;)Ljava/lang/Object;

    .line 2640
    new-instance v6, Lcom/android/exchange/SyncManager$EasAccountsUpdatedListener;

    invoke-direct {v6, p0}, Lcom/android/exchange/SyncManager$EasAccountsUpdatedListener;-><init>(Lcom/android/exchange/SyncManager;)V

    iput-object v6, p0, Lcom/android/exchange/SyncManager;->mAccountsUpdatedListener:Lcom/android/exchange/SyncManager$EasAccountsUpdatedListener;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2647
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

    .line 2656
    :goto_1
    new-instance v6, Lcom/android/exchange/SyncManager$ConnectivityReceiver;

    invoke-direct {v6, p0}, Lcom/android/exchange/SyncManager$ConnectivityReceiver;-><init>(Lcom/android/exchange/SyncManager;)V

    iput-object v6, p0, Lcom/android/exchange/SyncManager;->mConnectivityReceiver:Lcom/android/exchange/SyncManager$ConnectivityReceiver;

    .line 2657
    iget-object v6, p0, Lcom/android/exchange/SyncManager;->mConnectivityReceiver:Lcom/android/exchange/SyncManager$ConnectivityReceiver;

    new-instance v7, Landroid/content/IntentFilter;

    const-string v8, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v6, v7}, Lcom/android/exchange/SyncManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2660
    invoke-virtual {p0}, Lcom/android/exchange/SyncManager;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "phone"

    invoke-virtual {v6, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    iput-object v6, p0, Lcom/android/exchange/SyncManager;->mPhone:Landroid/telephony/TelephonyManager;

    .line 2661
    iget-object v6, p0, Lcom/android/exchange/SyncManager;->mPhone:Landroid/telephony/TelephonyManager;

    if-eqz v6, :cond_4

    .line 2662
    iget-object v6, p0, Lcom/android/exchange/SyncManager;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v7, p0, Lcom/android/exchange/SyncManager;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v6, v7, v11}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 2665
    :cond_4
    new-instance v6, Lcom/android/exchange/SyncManager$ConnectivityReceiver;

    invoke-direct {v6, p0}, Lcom/android/exchange/SyncManager$ConnectivityReceiver;-><init>(Lcom/android/exchange/SyncManager;)V

    iput-object v6, p0, Lcom/android/exchange/SyncManager;->mBackgroundDataSettingReceiver:Lcom/android/exchange/SyncManager$ConnectivityReceiver;

    .line 2666
    iget-object v6, p0, Lcom/android/exchange/SyncManager;->mBackgroundDataSettingReceiver:Lcom/android/exchange/SyncManager$ConnectivityReceiver;

    new-instance v7, Landroid/content/IntentFilter;

    const-string v8, "android.net.conn.BACKGROUND_DATA_SETTING_CHANGED"

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v6, v7}, Lcom/android/exchange/SyncManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2669
    const-string v6, "connectivity"

    invoke-virtual {p0, v6}, Lcom/android/exchange/SyncManager;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 2671
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/exchange/SyncManager;->mBackgroundData:Z

    .line 2674
    sget-object v6, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    if-eqz v6, :cond_5

    .line 2675
    invoke-direct {p0}, Lcom/android/exchange/SyncManager;->checkPIMSyncSettings()V

    .line 2679
    :cond_5
    :goto_2
    :try_start_2
    iget-boolean v6, p0, Lcom/android/exchange/SyncManager;->mStop:Z

    if-nez v6, :cond_14

    .line 2680
    const-wide/16 v6, -0x1

    invoke-static {v6, v7}, Lcom/android/exchange/SyncManager;->runAwake(J)V

    .line 2681
    invoke-direct {p0}, Lcom/android/exchange/SyncManager;->waitForConnectivity()V

    .line 2682
    const-string v6, "Heartbeat"

    iput-object v6, p0, Lcom/android/exchange/SyncManager;->mNextWaitReason:Ljava/lang/String;

    .line 2687
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

    .line 2688
    :cond_6
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/android/exchange/SyncManager;->updateAccountDb(Z)V

    .line 2691
    :cond_7
    invoke-direct {p0}, Lcom/android/exchange/SyncManager;->checkMailboxes()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-wide v3

    .line 2693
    .local v3, nextWait:J
    :try_start_3
    monitor-enter p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3

    .line 2694
    :try_start_4
    iget-boolean v6, p0, Lcom/android/exchange/SyncManager;->mKicked:Z

    if-nez v6, :cond_a

    .line 2695
    const-wide/16 v6, 0x0

    cmp-long v6, v3, v6

    if-gez v6, :cond_8

    .line 2696
    const-string v6, "Negative wait? Setting to 1s"

    invoke-static {v6}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;)V

    .line 2697
    const-wide/16 v3, 0x3e8

    .line 2699
    :cond_8
    const-wide/16 v6, 0x2710

    cmp-long v6, v3, v6

    if-lez v6, :cond_9

    .line 2700
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

    .line 2701
    const-wide/16 v6, -0x1

    const-wide/16 v8, 0xbb8

    add-long/2addr v8, v3

    invoke-static {v6, v7, v8, v9}, Lcom/android/exchange/SyncManager;->runAsleep(JJ)V

    .line 2703
    :cond_9
    invoke-virtual {p0, v3, v4}, Ljava/lang/Object;->wait(J)V

    .line 2705
    :cond_a
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 2709
    :try_start_5
    monitor-enter p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    .line 2710
    :try_start_6
    iget-boolean v6, p0, Lcom/android/exchange/SyncManager;->mKicked:Z

    if-eqz v6, :cond_b

    .line 2712
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/exchange/SyncManager;->mKicked:Z

    .line 2714
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

    .line 2718
    .end local v3           #nextWait:J
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 2719
    .local v1, e:Ljava/lang/RuntimeException;
    :try_start_8
    const-string v6, "EAS SyncManager"

    const-string v7, "RuntimeException in SyncManager"

    invoke-static {v6, v7, v1}, Lcom/android/exchange/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2720
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 2722
    .end local v1           #e:Ljava/lang/RuntimeException;
    :catchall_1
    move-exception v6

    move-object v7, v6

    const-string v6, "Finishing SyncManager"

    invoke-static {v6}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;)V

    .line 2725
    invoke-direct {p0}, Lcom/android/exchange/SyncManager;->stopServiceThreads()V

    .line 2728
    iget-object v6, p0, Lcom/android/exchange/SyncManager;->mConnectivityReceiver:Lcom/android/exchange/SyncManager$ConnectivityReceiver;

    if-eqz v6, :cond_c

    .line 2729
    iget-object v6, p0, Lcom/android/exchange/SyncManager;->mConnectivityReceiver:Lcom/android/exchange/SyncManager$ConnectivityReceiver;

    invoke-virtual {p0, v6}, Lcom/android/exchange/SyncManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2731
    :cond_c
    iget-object v6, p0, Lcom/android/exchange/SyncManager;->mBackgroundDataSettingReceiver:Lcom/android/exchange/SyncManager$ConnectivityReceiver;

    if-eqz v6, :cond_d

    .line 2732
    iget-object v6, p0, Lcom/android/exchange/SyncManager;->mBackgroundDataSettingReceiver:Lcom/android/exchange/SyncManager$ConnectivityReceiver;

    invoke-virtual {p0, v6}, Lcom/android/exchange/SyncManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2735
    :cond_d
    sget-object v6, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    if-eqz v6, :cond_e

    .line 2736
    invoke-virtual {p0}, Lcom/android/exchange/SyncManager;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 2737
    .local v5, resolver:Landroid/content/ContentResolver;
    iget-object v6, p0, Lcom/android/exchange/SyncManager;->mAccountObserver:Lcom/android/exchange/SyncManager$AccountObserver;

    invoke-virtual {v5, v6}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 2738
    iget-object v6, p0, Lcom/android/exchange/SyncManager;->mMailboxObserver:Lcom/android/exchange/SyncManager$MailboxObserver;

    invoke-virtual {v5, v6}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 2739
    iget-object v6, p0, Lcom/android/exchange/SyncManager;->mSyncedMessageObserver:Lcom/android/exchange/SyncManager$SyncedMessageObserver;

    invoke-virtual {v5, v6}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 2740
    iget-object v6, p0, Lcom/android/exchange/SyncManager;->mMessageObserver:Lcom/android/exchange/SyncManager$MessageObserver;

    invoke-virtual {v5, v6}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 2741
    invoke-direct {p0}, Lcom/android/exchange/SyncManager;->unregisterCalendarObservers()V

    .line 2744
    .end local v5           #resolver:Landroid/content/ContentResolver;
    :cond_e
    iget-object v6, p0, Lcom/android/exchange/SyncManager;->mAccountsUpdatedListener:Lcom/android/exchange/SyncManager$EasAccountsUpdatedListener;

    if-eqz v6, :cond_f

    .line 2745
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v6

    iget-object v8, p0, Lcom/android/exchange/SyncManager;->mAccountsUpdatedListener:Lcom/android/exchange/SyncManager$EasAccountsUpdatedListener;

    invoke-virtual {v6, v8}, Landroid/accounts/AccountManager;->removeOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;)V

    .line 2746
    iput-object v12, p0, Lcom/android/exchange/SyncManager;->mAccountsUpdatedListener:Lcom/android/exchange/SyncManager$EasAccountsUpdatedListener;

    .line 2750
    :cond_f
    invoke-virtual {p0}, Lcom/android/exchange/SyncManager;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    const-string v8, "phone"

    invoke-virtual {v6, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    iput-object v6, p0, Lcom/android/exchange/SyncManager;->mPhone:Landroid/telephony/TelephonyManager;

    .line 2751
    iget-object v6, p0, Lcom/android/exchange/SyncManager;->mPhone:Landroid/telephony/TelephonyManager;

    if-eqz v6, :cond_10

    .line 2752
    iget-object v6, p0, Lcom/android/exchange/SyncManager;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v8, p0, Lcom/android/exchange/SyncManager;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v6, v8, v10}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 2756
    :cond_10
    invoke-direct {p0}, Lcom/android/exchange/SyncManager;->clearAlarms()V

    .line 2759
    iget-object v6, p0, Lcom/android/exchange/SyncManager;->mWakeLocks:Ljava/util/HashMap;

    monitor-enter v6

    .line 2760
    :try_start_9
    iget-object v8, p0, Lcom/android/exchange/SyncManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v8, :cond_11

    .line 2761
    iget-object v8, p0, Lcom/android/exchange/SyncManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2762
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/exchange/SyncManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 2764
    :cond_11
    monitor-exit v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 2766
    const-string v6, "Goodbye"

    invoke-static {v6}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;)V

    .line 2722
    throw v7

    .line 2641
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    :catch_1
    move-exception v6

    move-object v1, v6

    .line 2642
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v6, "EAS SyncManager"

    const-string v6, "NullPointerException in SyncManager"

    invoke-static {v13, v6, v1}, Lcom/android/exchange/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 2649
    .end local v1           #e:Ljava/lang/NullPointerException;
    :catch_2
    move-exception v6

    move-object v2, v6

    .line 2652
    .local v2, e1:Ljava/lang/IllegalStateException;
    const-string v6, "EAS SyncManager"

    const-string v6, "Adding AcccountsUpdatedListener FAILURE"

    invoke-static {v13, v6}, Lcom/android/exchange/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2705
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

    .line 2706
    :catch_3
    move-exception v6

    .line 2709
    :try_start_c
    monitor-enter p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_0

    .line 2710
    :try_start_d
    iget-boolean v6, p0, Lcom/android/exchange/SyncManager;->mKicked:Z

    if-eqz v6, :cond_12

    .line 2712
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/exchange/SyncManager;->mKicked:Z

    .line 2714
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

    .line 2709
    :catchall_4
    move-exception v6

    monitor-enter p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_0

    .line 2710
    :try_start_f
    iget-boolean v7, p0, Lcom/android/exchange/SyncManager;->mKicked:Z

    if-eqz v7, :cond_13

    .line 2712
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/exchange/SyncManager;->mKicked:Z

    .line 2714
    :cond_13
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    .line 2709
    :try_start_10
    throw v6

    .line 2717
    .end local v3           #nextWait:J
    :cond_14
    const-string v6, "Shutdown requested"

    invoke-static {v6}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_0

    .line 2722
    const-string v6, "Finishing SyncManager"

    invoke-static {v6}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;)V

    .line 2725
    invoke-direct {p0}, Lcom/android/exchange/SyncManager;->stopServiceThreads()V

    .line 2728
    iget-object v6, p0, Lcom/android/exchange/SyncManager;->mConnectivityReceiver:Lcom/android/exchange/SyncManager$ConnectivityReceiver;

    if-eqz v6, :cond_15

    .line 2729
    iget-object v6, p0, Lcom/android/exchange/SyncManager;->mConnectivityReceiver:Lcom/android/exchange/SyncManager$ConnectivityReceiver;

    invoke-virtual {p0, v6}, Lcom/android/exchange/SyncManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2731
    :cond_15
    iget-object v6, p0, Lcom/android/exchange/SyncManager;->mBackgroundDataSettingReceiver:Lcom/android/exchange/SyncManager$ConnectivityReceiver;

    if-eqz v6, :cond_16

    .line 2732
    iget-object v6, p0, Lcom/android/exchange/SyncManager;->mBackgroundDataSettingReceiver:Lcom/android/exchange/SyncManager$ConnectivityReceiver;

    invoke-virtual {p0, v6}, Lcom/android/exchange/SyncManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2735
    :cond_16
    sget-object v6, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    if-eqz v6, :cond_17

    .line 2736
    invoke-virtual {p0}, Lcom/android/exchange/SyncManager;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 2737
    .restart local v5       #resolver:Landroid/content/ContentResolver;
    iget-object v6, p0, Lcom/android/exchange/SyncManager;->mAccountObserver:Lcom/android/exchange/SyncManager$AccountObserver;

    invoke-virtual {v5, v6}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 2738
    iget-object v6, p0, Lcom/android/exchange/SyncManager;->mMailboxObserver:Lcom/android/exchange/SyncManager$MailboxObserver;

    invoke-virtual {v5, v6}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 2739
    iget-object v6, p0, Lcom/android/exchange/SyncManager;->mSyncedMessageObserver:Lcom/android/exchange/SyncManager$SyncedMessageObserver;

    invoke-virtual {v5, v6}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 2740
    iget-object v6, p0, Lcom/android/exchange/SyncManager;->mMessageObserver:Lcom/android/exchange/SyncManager$MessageObserver;

    invoke-virtual {v5, v6}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 2741
    invoke-direct {p0}, Lcom/android/exchange/SyncManager;->unregisterCalendarObservers()V

    .line 2744
    .end local v5           #resolver:Landroid/content/ContentResolver;
    :cond_17
    iget-object v6, p0, Lcom/android/exchange/SyncManager;->mAccountsUpdatedListener:Lcom/android/exchange/SyncManager$EasAccountsUpdatedListener;

    if-eqz v6, :cond_18

    .line 2745
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v6

    iget-object v7, p0, Lcom/android/exchange/SyncManager;->mAccountsUpdatedListener:Lcom/android/exchange/SyncManager$EasAccountsUpdatedListener;

    invoke-virtual {v6, v7}, Landroid/accounts/AccountManager;->removeOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;)V

    .line 2746
    iput-object v12, p0, Lcom/android/exchange/SyncManager;->mAccountsUpdatedListener:Lcom/android/exchange/SyncManager$EasAccountsUpdatedListener;

    .line 2750
    :cond_18
    invoke-virtual {p0}, Lcom/android/exchange/SyncManager;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "phone"

    invoke-virtual {v6, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    iput-object v6, p0, Lcom/android/exchange/SyncManager;->mPhone:Landroid/telephony/TelephonyManager;

    .line 2751
    iget-object v6, p0, Lcom/android/exchange/SyncManager;->mPhone:Landroid/telephony/TelephonyManager;

    if-eqz v6, :cond_19

    .line 2752
    iget-object v6, p0, Lcom/android/exchange/SyncManager;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v7, p0, Lcom/android/exchange/SyncManager;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v6, v7, v10}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 2756
    :cond_19
    invoke-direct {p0}, Lcom/android/exchange/SyncManager;->clearAlarms()V

    .line 2759
    iget-object v6, p0, Lcom/android/exchange/SyncManager;->mWakeLocks:Ljava/util/HashMap;

    monitor-enter v6

    .line 2760
    :try_start_11
    iget-object v7, p0, Lcom/android/exchange/SyncManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v7, :cond_1a

    .line 2761
    iget-object v7, p0, Lcom/android/exchange/SyncManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2762
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/exchange/SyncManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 2764
    :cond_1a
    monitor-exit v6
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    .line 2766
    const-string v6, "Goodbye"

    invoke-static {v6}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;)V

    .line 2769
    iget-boolean v6, p0, Lcom/android/exchange/SyncManager;->mStop:Z

    if-nez v6, :cond_2

    .line 2771
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "EAS SyncManager crash; please restart me..."

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2764
    :catchall_5
    move-exception v7

    :try_start_12
    monitor-exit v6
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    throw v7

    .line 2714
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

    .line 2764
    .end local v3           #nextWait:J
    :catchall_7
    move-exception v7

    :try_start_15
    monitor-exit v6
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_7

    throw v7
.end method
