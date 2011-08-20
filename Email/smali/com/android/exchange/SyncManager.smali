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
        Lcom/android/exchange/SyncManager$NotesObserver;,
        Lcom/android/exchange/SyncManager$MailboxObserver;,
        Lcom/android/exchange/SyncManager$CalendarObserver;,
        Lcom/android/exchange/SyncManager$AccountObserver;,
        Lcom/android/exchange/SyncManager$AccountList;
    }
.end annotation


# static fields
.field private static final EMPTY_ACCOUNT_LIST:Lcom/android/exchange/SyncManager$AccountList;

.field protected static INSTANCE:Lcom/android/exchange/SyncManager;

.field public static MAILBOX_DUMMY_GALSEARCH:J

.field public static MAILBOX_DUMMY_MAX:J

.field public static MAILBOX_DUMMY_MIN:J

.field public static MAILBOX_DUMMY_OoO:J

.field private static checkAccount:Z

.field public static elmsvc:Lcom/android/exchange/EasLoadMoreSvc;

.field public static lmClientConnectionManager:Lorg/apache/http/conn/ClientConnectionManager;

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

.field private mCalendarObservers:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
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

.field private mNotesObserver:Lcom/android/exchange/SyncManager$NotesObserver;

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

    .line 281
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/exchange/SyncManager;->sSyncLock:Ljava/lang/Object;

    .line 283
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/exchange/SyncManager;->sConnectivityLock:Ljava/lang/Object;

    .line 284
    sput-boolean v3, Lcom/android/exchange/SyncManager;->sConnectivityHold:Z

    .line 286
    new-instance v0, Lcom/android/exchange/SyncManager$AccountList;

    invoke-direct {v0}, Lcom/android/exchange/SyncManager$AccountList;-><init>()V

    sput-object v0, Lcom/android/exchange/SyncManager;->sAccountList:Lcom/android/exchange/SyncManager$AccountList;

    .line 296
    const-wide/32 v0, 0xf4240

    sput-wide v0, Lcom/android/exchange/SyncManager;->MAILBOX_DUMMY_MIN:J

    .line 297
    const-wide/32 v0, 0xf4241

    sput-wide v0, Lcom/android/exchange/SyncManager;->MAILBOX_DUMMY_OoO:J

    .line 298
    const-wide/32 v0, 0xf4242

    sput-wide v0, Lcom/android/exchange/SyncManager;->MAILBOX_DUMMY_GALSEARCH:J

    .line 299
    const-wide/32 v0, 0xf4243

    sput-wide v0, Lcom/android/exchange/SyncManager;->MAILBOX_DUMMY_MAX:J

    .line 310
    new-instance v0, Lcom/android/exchange/SyncManager$AccountList;

    invoke-direct {v0}, Lcom/android/exchange/SyncManager$AccountList;-><init>()V

    sput-object v0, Lcom/android/exchange/SyncManager;->EMPTY_ACCOUNT_LIST:Lcom/android/exchange/SyncManager$AccountList;

    .line 333
    sput-object v2, Lcom/android/exchange/SyncManager;->sServiceThread:Ljava/lang/Thread;

    .line 335
    sput-object v2, Lcom/android/exchange/SyncManager;->sDeviceId:Ljava/lang/String;

    .line 338
    sput-object v2, Lcom/android/exchange/SyncManager;->sLicenseKey:Ljava/lang/String;

    .line 341
    sput-object v2, Lcom/android/exchange/SyncManager;->sClientConnectionManager:Lorg/apache/http/conn/ClientConnectionManager;

    .line 344
    sput-object v2, Lcom/android/exchange/SyncManager;->mClientConnectionManager:Lorg/apache/http/conn/ClientConnectionManager;

    .line 347
    sput v3, Lcom/android/exchange/SyncManager;->sClientConnectionManagerShutdownCount:I

    .line 350
    sput-object v2, Lcom/android/exchange/SyncManager;->lmClientConnectionManager:Lorg/apache/http/conn/ClientConnectionManager;

    .line 379
    sput-object v2, Lcom/android/exchange/SyncManager;->elmsvc:Lcom/android/exchange/EasLoadMoreSvc;

    .line 382
    sput-boolean v3, Lcom/android/exchange/SyncManager;->checkAccount:Z

    .line 390
    new-instance v0, Lcom/android/exchange/SyncManager$1;

    invoke-direct {v0}, Lcom/android/exchange/SyncManager$1;-><init>()V

    sput-object v0, Lcom/android/exchange/SyncManager;->sCallbackProxy:Lcom/android/email/service/IEmailServiceCallback$Stub;

    .line 1864
    new-instance v0, Lcom/android/exchange/SyncManager$5;

    invoke-direct {v0}, Lcom/android/exchange/SyncManager$5;-><init>()V

    sput-object v0, Lcom/android/exchange/SyncManager;->sConnPerRoute:Lorg/apache/http/conn/params/ConnPerRoute;

    .line 1873
    new-instance v0, Lcom/android/exchange/SyncManager$6;

    invoke-direct {v0}, Lcom/android/exchange/SyncManager$6;-><init>()V

    sput-object v0, Lcom/android/exchange/SyncManager;->sConnPerPing:Lorg/apache/http/conn/params/ConnPerRoute;

    .line 3920
    sput-object v2, Lcom/android/exchange/SyncManager;->mInstance_UpdateAccountHearbeat:Lcom/android/exchange/SyncManager$syncManager_UpdateAccountHearbeat;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 144
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 276
    iput-boolean v1, p0, Lcom/android/exchange/SyncManager;->mIsNetworkRoaming:Z

    .line 289
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/SyncManager;->mServiceMap:Ljava/util/HashMap;

    .line 303
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/SyncManager;->mSyncErrorMap:Ljava/util/HashMap;

    .line 305
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/SyncManager;->mWakeLocks:Ljava/util/HashMap;

    .line 307
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/SyncManager;->mPendingIntents:Ljava/util/HashMap;

    .line 309
    iput-object v2, p0, Lcom/android/exchange/SyncManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 313
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/SyncManager;->mHandler:Landroid/os/Handler;

    .line 326
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/SyncManager;->mCalendarObservers:Ljava/util/concurrent/ConcurrentHashMap;

    .line 355
    iput-boolean v1, p0, Lcom/android/exchange/SyncManager;->mStop:Z

    .line 360
    iput-boolean v1, p0, Lcom/android/exchange/SyncManager;->mKicked:Z

    .line 364
    iput-object v2, p0, Lcom/android/exchange/SyncManager;->mConnectivityReceiver:Lcom/android/exchange/SyncManager$ConnectivityReceiver;

    .line 365
    iput-object v2, p0, Lcom/android/exchange/SyncManager;->mBackgroundDataSettingReceiver:Lcom/android/exchange/SyncManager$ConnectivityReceiver;

    .line 366
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/exchange/SyncManager;->mBackgroundData:Z

    .line 370
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/SyncManager;->mCallbackList:Landroid/os/RemoteCallbackList;

    .line 375
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/SyncManager;->mProvisionErrorExist:Ljava/util/HashMap;

    .line 496
    new-instance v0, Lcom/android/exchange/SyncManager$2;

    invoke-direct {v0, p0}, Lcom/android/exchange/SyncManager$2;-><init>(Lcom/android/exchange/SyncManager;)V

    iput-object v0, p0, Lcom/android/exchange/SyncManager;->mBinder:Lcom/android/email/service/IEmailService$Stub;

    .line 144
    return-void
.end method

.method static synthetic access$000(Lcom/android/exchange/SyncManager;)Lcom/android/email/service/IEmailServiceCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/exchange/SyncManager;->mCallback:Lcom/android/email/service/IEmailServiceCallback;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/exchange/SyncManager;Lcom/android/email/service/IEmailServiceCallback;)Lcom/android/email/service/IEmailServiceCallback;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/exchange/SyncManager;->mCallback:Lcom/android/email/service/IEmailServiceCallback;

    return-object p1
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    sget-object v0, Lcom/android/exchange/SyncManager;->sLicenseKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/exchange/SyncManager;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/exchange/SyncManager;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$102(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"

    .prologue
    .line 144
    sput-object p0, Lcom/android/exchange/SyncManager;->sLicenseKey:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/exchange/SyncManager;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    invoke-direct {p0, p1, p2}, Lcom/android/exchange/SyncManager;->stopPing(J)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/exchange/SyncManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/android/exchange/SyncManager;->checkPIMSyncSettings()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/exchange/SyncManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/android/exchange/SyncManager;->runAccountReconciler()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/exchange/SyncManager;)Lcom/android/exchange/SyncManager$AccountObserver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/exchange/SyncManager;->mAccountObserver:Lcom/android/exchange/SyncManager$AccountObserver;

    return-object v0
.end method

.method static synthetic access$1500()Z
    .locals 1

    .prologue
    .line 144
    sget-boolean v0, Lcom/android/exchange/SyncManager;->checkAccount:Z

    return v0
.end method

.method static synthetic access$1502(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 144
    sput-boolean p0, Lcom/android/exchange/SyncManager;->checkAccount:Z

    return p0
.end method

.method static synthetic access$1600(Lcom/android/exchange/SyncManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/android/exchange/SyncManager;->checkAccountDB()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/exchange/SyncManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/android/exchange/SyncManager;->mIsNetworkRoaming:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/android/exchange/SyncManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput-boolean p1, p0, Lcom/android/exchange/SyncManager;->mIsNetworkRoaming:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/exchange/SyncManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget v0, p0, Lcom/android/exchange/SyncManager;->mNetworkState:I

    return v0
.end method

.method static synthetic access$1802(Lcom/android/exchange/SyncManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput p1, p0, Lcom/android/exchange/SyncManager;->mNetworkState:I

    return p1
.end method

.method static synthetic access$1900(Lcom/android/exchange/SyncManager;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lcom/android/exchange/SyncManager;->updateAccountDb(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/exchange/SyncManager;Landroid/content/Context;IJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 144
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/exchange/SyncManager;->releaseSyncHoldMailbox(Landroid/content/Context;IJ)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/exchange/SyncManager;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    invoke-direct {p0, p1, p2}, Lcom/android/exchange/SyncManager;->releaseMailbox(J)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/exchange/SyncManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/android/exchange/SyncManager;->mBackgroundData:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/android/exchange/SyncManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput-boolean p1, p0, Lcom/android/exchange/SyncManager;->mBackgroundData:Z

    return p1
.end method

.method static synthetic access$300(J)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 144
    invoke-static {p0, p1}, Lcom/android/exchange/SyncManager;->stopManualSync(J)V

    return-void
.end method

.method static synthetic access$400()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 144
    sget-object v0, Lcom/android/exchange/SyncManager;->sSyncLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/exchange/SyncManager;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
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
    .line 144
    invoke-direct {p0, p1, p2, p3}, Lcom/android/exchange/SyncManager;->requestSync(Lcom/android/email/provider/EmailContent$Mailbox;ILcom/android/exchange/Request;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/exchange/SyncManager;JZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 144
    invoke-direct {p0, p1, p2, p3}, Lcom/android/exchange/SyncManager;->stopAccountSyncs(JZ)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/exchange/SyncManager;)Landroid/os/RemoteCallbackList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/exchange/SyncManager;->mCallbackList:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method private acquireWakeLock(J)V
    .locals 4
    .parameter

    .prologue
    .line 2190
    iget-object v1, p0, Lcom/android/exchange/SyncManager;->mWakeLocks:Ljava/util/HashMap;

    monitor-enter v1

    .line 2191
    :try_start_0
    iget-object v0, p0, Lcom/android/exchange/SyncManager;->mWakeLocks:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 2192
    if-nez v0, :cond_1

    .line 2193
    iget-object v0, p0, Lcom/android/exchange/SyncManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    .line 2194
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/android/exchange/SyncManager;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 2195
    const/4 v2, 0x1

    const-string v3, "MAIL_SERVICE"

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/SyncManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 2196
    iget-object v0, p0, Lcom/android/exchange/SyncManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2199
    :cond_0
    iget-object v0, p0, Lcom/android/exchange/SyncManager;->mWakeLocks:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2201
    :cond_1
    monitor-exit v1

    .line 2202
    return-void

    .line 2201
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static alarmOwner(J)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    const/16 v3, 0x29

    .line 2223
    const-wide/16 v0, -0x1

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    .line 2224
    const-string v0, "SyncManager"

    .line 2240
    :goto_0
    return-object v0

    .line 2226
    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 2227
    sget-boolean v1, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    if-eqz v1, :cond_1

    .line 2228
    sget-object v1, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    invoke-static {v1, p0, p1}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v1

    .line 2229
    if-eqz v1, :cond_2

    .line 2230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x28

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2240
    :cond_1
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mailbox "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2233
    :cond_2
    sget-wide v1, Lcom/android/exchange/SyncManager;->MAILBOX_DUMMY_MIN:J

    cmp-long v1, p0, v1

    if-lez v1, :cond_1

    sget-wide v1, Lcom/android/exchange/SyncManager;->MAILBOX_DUMMY_MAX:J

    cmp-long v1, p0, v1

    if-gez v1, :cond_1

    .line 2236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OoBMailbox:("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static alert(Landroid/content/Context;J)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 2315
    const-string v0, "Email"

    const-string v1, "in to the alert "

    invoke-static {v0, v1}, Lcom/android/exchange/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2316
    sget-object v0, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    .line 2317
    invoke-static {}, Lcom/android/exchange/SyncManager;->checkSyncManagerServiceRunning()V

    .line 2318
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-gez v1, :cond_1

    .line 2319
    const-string v0, "ping SyncManager"

    invoke-static {v0}, Lcom/android/exchange/SyncManager;->kick(Ljava/lang/String;)V

    .line 2376
    :cond_0
    :goto_0
    return-void

    .line 2320
    :cond_1
    if-nez v0, :cond_2

    .line 2321
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/exchange/SyncManager;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 2324
    :cond_2
    sget-wide v1, Lcom/android/exchange/SyncManager;->MAILBOX_DUMMY_MIN:J

    cmp-long v1, p1, v1

    if-lez v1, :cond_3

    sget-wide v1, Lcom/android/exchange/SyncManager;->MAILBOX_DUMMY_MAX:J

    cmp-long v1, p1, v1

    if-gez v1, :cond_3

    .line 2327
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Alert! Shutting connectionManager. Watchdog for Out of Band Mailbox: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/exchange/SyncManager;->errorlog(Ljava/lang/String;)V

    .line 2328
    invoke-static {}, Lcom/android/exchange/SyncManager;->shutdownConnectionManager()V

    .line 2329
    sget-object v1, Lcom/android/exchange/SyncManager;->sSyncLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2330
    :try_start_0
    invoke-direct {v0, p1, p2}, Lcom/android/exchange/SyncManager;->releaseMailbox(J)V

    .line 2331
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2335
    :cond_3
    iget-object v1, v0, Lcom/android/exchange/SyncManager;->mServiceMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/exchange/AbstractSyncService;

    .line 2336
    if-eqz p0, :cond_0

    .line 2339
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/exchange/SyncManager$7;

    invoke-direct {v2, v0, p1, p2, p0}, Lcom/android/exchange/SyncManager$7;-><init>(Lcom/android/exchange/SyncManager;JLcom/android/exchange/AbstractSyncService;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public static alwaysLog(Ljava/lang/String;)V
    .locals 1
    .parameter "str"

    .prologue
    .line 1581
    sget-boolean v0, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-nez v0, :cond_0

    .line 1582
    const-string v0, "EAS SyncManager"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1586
    :goto_0
    return-void

    .line 1584
    :cond_0
    invoke-static {p0}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static alwaysLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "str"

    .prologue
    .line 1600
    sget-boolean v0, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-nez v0, :cond_0

    .line 1601
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1605
    :goto_0
    return-void

    .line 1603
    :cond_0
    invoke-static {p0, p1}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static blockDevice(JI)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 2026
    sget-object v0, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    .line 2027
    if-eqz v0, :cond_0

    .line 2028
    sget-object v0, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    invoke-static {v0, p0, p1}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v0

    .line 2029
    if-eqz v0, :cond_0

    iget v1, v0, Lcom/android/email/provider/EmailContent$Account;->mdeviceBlockedType:I

    if-eq v1, p2, :cond_0

    .line 2030
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2031
    const-string v2, "deviceBlockedType"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2032
    sget-object v2, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    invoke-virtual {v0, v2, v1}, Lcom/android/email/provider/EmailContent$Account;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 2035
    :cond_0
    return-void
.end method

.method public static callback()Lcom/android/email/service/IEmailServiceCallback;
    .locals 1

    .prologue
    .line 1356
    sget-object v0, Lcom/android/exchange/SyncManager;->sCallbackProxy:Lcom/android/email/service/IEmailServiceCallback$Stub;

    return-object v0
.end method

.method private checkAccountDB()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 2535
    const/4 v6, 0x1

    .line 2536
    invoke-static {}, Lcom/android/exchange/SyncManager;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2567
    :cond_0
    :goto_0
    return-void

    .line 2538
    :cond_1
    invoke-virtual {p0}, Lcom/android/exchange/SyncManager;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/email/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/email/provider/EmailContent$Account;->CONTENT_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2541
    const/4 v1, -0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 2542
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2543
    invoke-static {}, Lcom/android/exchange/SyncManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v1

    .line 2545
    if-eqz v1, :cond_2

    .line 2546
    invoke-static {}, Lcom/android/exchange/SyncManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/email/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/exchange/SyncManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/email/mail/Store$StoreInfo;->getStoreInfo(Ljava/lang/String;Landroid/content/Context;)Lcom/android/email/mail/Store$StoreInfo;

    move-result-object v1

    .line 2547
    if-eqz v1, :cond_2

    .line 2548
    iget-object v1, v1, Lcom/android/email/mail/Store$StoreInfo;->mScheme:Ljava/lang/String;

    .line 2549
    const-string v2, "eas"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v0, v7

    .line 2557
    :goto_1
    if-eqz v0, :cond_0

    .line 2561
    invoke-static {}, Lcom/android/exchange/SyncManager;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2563
    invoke-static {}, Lcom/android/exchange/SyncManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    .line 2565
    invoke-virtual {p0}, Landroid/app/NotificationManager;->cancelAll()V

    goto :goto_0

    :cond_3
    move v0, v6

    goto :goto_1
.end method

.method private checkMailboxes()J
    .locals 23

    .prologue
    .line 3084
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 3085
    sget-object v6, Lcom/android/exchange/SyncManager;->sSyncLock:Ljava/lang/Object;

    monitor-enter v6

    .line 3086
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/SyncManager;->mServiceMap:Ljava/util/HashMap;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 3087
    move-object/from16 v0, p0

    move-wide v1, v8

    invoke-static {v0, v1, v2}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v4

    .line 3088
    if-nez v4, :cond_0

    .line 3089
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3109
    :catchall_0
    move-exception v4

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 3093
    :cond_1
    :try_start_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 3094
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/SyncManager;->mServiceMap:Ljava/util/HashMap;

    move-object v5, v0

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/exchange/AbstractSyncService;

    .line 3095
    if-eqz v5, :cond_2

    iget-object v8, v5, Lcom/android/exchange/AbstractSyncService;->mThread:Ljava/lang/Thread;

    if-nez v8, :cond_3

    .line 3096
    :cond_2
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object/from16 v0, p0

    move-wide v1, v4

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/SyncManager;->releaseMailbox(J)V

    goto :goto_1

    .line 3099
    :cond_3
    iget-object v8, v5, Lcom/android/exchange/AbstractSyncService;->mThread:Ljava/lang/Thread;

    invoke-virtual {v8}, Ljava/lang/Thread;->isAlive()Z

    move-result v8

    .line 3100
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Deleted mailbox: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v5, v5, Lcom/android/exchange/AbstractSyncService;->mMailboxName:Ljava/lang/String;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;)V

    .line 3101
    if-eqz v8, :cond_4

    .line 3102
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/android/exchange/SyncManager;->stopManualSync(J)V

    goto :goto_1

    .line 3104
    :cond_4
    const-string v5, "Removing from serviceMap"

    invoke-static {v5}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;)V

    .line 3105
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object/from16 v0, p0

    move-wide v1, v4

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/SyncManager;->releaseMailbox(J)V

    goto :goto_1

    .line 3109
    :cond_5
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3111
    const-wide/32 v10, 0x1b7740

    .line 3112
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 3116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/SyncManager;->mAccountObserver:Lcom/android/exchange/SyncManager$AccountObserver;

    move-object v4, v0

    if-nez v4, :cond_6

    .line 3117
    const-string v4, "mAccountObserver null; service died??"

    invoke-static {v4}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;)V

    move-wide v4, v10

    .line 3332
    :goto_2
    return-wide v4

    .line 3120
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

    move-result-object v5

    .line 3125
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v6

    move-wide v7, v10

    .line 3127
    :cond_7
    :goto_3
    :try_start_2
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_21

    .line 3128
    const/4 v4, 0x0

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 3130
    const/4 v4, 0x4

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v14, v4

    .line 3131
    const/16 v4, 0x9

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move v0, v4

    int-to-long v0, v0

    move-wide/from16 v16, v0

    .line 3132
    const/4 v4, 0x5

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 3134
    sget-object v18, Lcom/android/exchange/SyncManager;->sSyncLock:Ljava/lang/Object;

    monitor-enter v18
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3135
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/SyncManager;->mServiceMap:Ljava/util/HashMap;

    move-object v4, v0

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object v0, v4

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/exchange/AbstractSyncService;

    .line 3136
    monitor-exit v18
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 3139
    const/16 v18, 0x44

    move v0, v11

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    const-wide/16 v18, -0x1

    cmp-long v18, v16, v18

    if-nez v18, :cond_8

    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/SyncManager;->mProvisionErrorExist:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 3145
    :cond_8
    if-nez v4, :cond_1b

    .line 3152
    sget-object v18, Lcom/android/exchange/SyncManager;->sSyncLock:Ljava/lang/Object;

    monitor-enter v18
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 3155
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/SyncManager;->mProvisionErrorExist:Ljava/util/HashMap;

    move-object v4, v0

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object v0, v4

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/email/provider/EmailContent$Account;

    .line 3156
    const/16 v19, 0x44

    move v0, v11

    move/from16 v1, v19

    if-eq v0, v1, :cond_9

    if-eqz v4, :cond_9

    .line 3157
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "syncErrorExist for account:"

    move-object v0, v4

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v19, ". Put hold on mailbox:"

    move-object v0, v4

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;)V

    .line 3158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/SyncManager;->mSyncErrorMap:Ljava/util/HashMap;

    move-object v4, v0

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    new-instance v20, Lcom/android/exchange/SyncManager$SyncError;

    const/16 v21, 0x4

    const/16 v22, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/android/exchange/SyncManager$SyncError;-><init>(Lcom/android/exchange/SyncManager;IZ)V

    move-object v0, v4

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3160
    :cond_9
    monitor-exit v18
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 3165
    :try_start_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/exchange/SyncManager;->mBackgroundData:Z

    move v4, v0

    if-nez v4, :cond_a

    const/4 v4, 0x4

    if-ne v11, v4, :cond_7

    .line 3169
    :cond_a
    const/16 v4, 0x42

    if-eq v11, v4, :cond_b

    const/16 v4, 0x41

    if-eq v11, v4, :cond_b

    const/16 v4, 0x43

    if-eq v11, v4, :cond_b

    const/16 v4, 0x45

    if-ne v11, v4, :cond_11

    .line 3171
    :cond_b
    if-eqz v6, :cond_7

    .line 3176
    const/4 v4, 0x4

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move v0, v4

    int-to-long v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Lcom/android/exchange/SyncManager;->getAccountById(J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v4

    .line 3178
    if-eqz v4, :cond_d

    .line 3179
    const/16 v18, 0x42

    move v0, v11

    move/from16 v1, v18

    if-ne v0, v1, :cond_e

    .line 3180
    const-string v18, "com.android.contacts"

    .line 3194
    :cond_c
    :goto_4
    new-instance v19, Landroid/accounts/Account;

    move-object v0, v4

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, "com.android.exchange"

    invoke-direct/range {v19 .. v21}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3198
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 3201
    const/16 v18, 0x41

    move v0, v11

    move/from16 v1, v18

    if-ne v0, v1, :cond_d

    move-object v0, v4

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent;->mId:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/SyncManager;->isCalendarEnabled(J)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 3217
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/SyncManager;->mSyncErrorMap:Ljava/util/HashMap;

    move-object v4, v0

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    move-object v0, v4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/exchange/SyncManager$SyncError;

    .line 3218
    if-eqz v4, :cond_14

    .line 3220
    move-object v0, v4

    iget-boolean v0, v0, Lcom/android/exchange/SyncManager$SyncError;->fatal:Z

    move/from16 v18, v0

    if-eqz v18, :cond_12

    .line 3222
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Mailbox:"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " in fatal error: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v4, v4, Lcom/android/exchange/SyncManager$SyncError;->reason:I

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, ", Nothing we can do about fatal errors"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/16 :goto_3

    .line 3330
    :catchall_1
    move-exception v4

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    throw v4

    .line 3136
    :catchall_2
    move-exception v4

    :try_start_7
    monitor-exit v18
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 3160
    :catchall_3
    move-exception v4

    :try_start_9
    monitor-exit v18
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :try_start_a
    throw v4

    .line 3181
    :cond_e
    const/16 v18, 0x43

    move v0, v11

    move/from16 v1, v18

    if-ne v0, v1, :cond_f

    .line 3182
    const-string v18, "tasks"

    goto/16 :goto_4

    .line 3183
    :cond_f
    const/16 v18, 0x45

    move v0, v11

    move/from16 v1, v18

    if-ne v0, v1, :cond_10

    .line 3185
    const-string v18, "com.android.notes"

    goto/16 :goto_4

    .line 3187
    :cond_10
    const-string v18, "com.android.calendar"

    .line 3188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/SyncManager;->mCalendarObservers:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v19, v0

    move-object v0, v4

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent;->mId:J

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_c

    .line 3191
    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/exchange/SyncManager;->registerCalendarObserver(Lcom/android/email/provider/EmailContent$Account;)V

    goto/16 :goto_4

    .line 3206
    :cond_11
    const/4 v4, 0x6

    if-eq v11, v4, :cond_7

    .line 3210
    const/16 v4, 0x8

    if-ne v11, v4, :cond_d

    goto/16 :goto_3

    .line 3225
    :cond_12
    move-object v0, v4

    iget-wide v0, v0, Lcom/android/exchange/SyncManager$SyncError;->holdEndTime:J

    move-wide/from16 v18, v0

    cmp-long v18, v12, v18

    if-gez v18, :cond_13

    .line 3228
    iget-wide v14, v4, Lcom/android/exchange/SyncManager$SyncError;->holdEndTime:J

    add-long v16, v12, v7

    cmp-long v11, v14, v16

    if-gez v11, :cond_7

    .line 3229
    iget-wide v7, v4, Lcom/android/exchange/SyncManager$SyncError;->holdEndTime:J

    sub-long/2addr v7, v12

    .line 3230
    const-string v11, "Release hold"

    move-object v0, v11

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exchange/SyncManager;->mNextWaitReason:Ljava/lang/String;

    .line 3232
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Mailbox:"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " in Release Hold. reason:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v4, v4, Lcom/android/exchange/SyncManager$SyncError;->reason:I

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, ", nextWait="

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-wide/16 v9, 0x3e8

    div-long v9, v7, v9

    invoke-virtual {v4, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, " seconds"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 3237
    :cond_13
    const-wide/16 v18, 0x0

    move-wide/from16 v0, v18

    move-object v2, v4

    iput-wide v0, v2, Lcom/android/exchange/SyncManager$SyncError;->holdEndTime:J

    .line 3245
    :cond_14
    const-wide/16 v18, -0x2

    cmp-long v4, v16, v18

    if-nez v4, :cond_15

    .line 3246
    const-class v4, Lcom/android/email/provider/EmailContent$Mailbox;

    invoke-static {v5, v4}, Lcom/android/email/provider/EmailContent;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/email/provider/EmailContent;

    move-result-object v4

    check-cast v4, Lcom/android/email/provider/EmailContent$Mailbox;

    .line 3247
    const/4 v9, 0x2

    const/4 v10, 0x0

    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v9

    move-object v3, v10

    invoke-direct {v0, v1, v2, v3}, Lcom/android/exchange/SyncManager;->requestSync(Lcom/android/email/provider/EmailContent$Mailbox;ILcom/android/exchange/Request;)V

    goto/16 :goto_3

    .line 3251
    :cond_15
    const/16 v4, 0x44

    if-ne v11, v4, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/SyncManager;->mProvisionErrorExist:Ljava/util/HashMap;

    move-object v4, v0

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 3252
    const-class v4, Lcom/android/email/provider/EmailContent$Mailbox;

    invoke-static {v5, v4}, Lcom/android/email/provider/EmailContent;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/email/provider/EmailContent;

    move-result-object v4

    check-cast v4, Lcom/android/email/provider/EmailContent$Mailbox;

    .line 3253
    const/16 v9, 0x9

    const/4 v10, 0x0

    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v9

    move-object v3, v10

    invoke-direct {v0, v1, v2, v3}, Lcom/android/exchange/SyncManager;->requestSync(Lcom/android/email/provider/EmailContent$Mailbox;ILcom/android/exchange/Request;)V

    goto/16 :goto_3

    .line 3256
    :cond_16
    const/4 v4, 0x4

    if-ne v11, v4, :cond_17

    .line 3257
    sget-object v4, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    const-string v11, "mailboxKey=? and (syncServerId is null or syncServerId!=1)"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v14, v15

    move-object/from16 v0, p0

    move-object v1, v4

    move-object v2, v11

    move-object v3, v14

    invoke-static {v0, v1, v2, v3}, Lcom/android/email/provider/EmailContent;->count(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 3260
    if-lez v4, :cond_7

    .line 3261
    const-class v4, Lcom/android/email/provider/EmailContent$Mailbox;

    invoke-static {v5, v4}, Lcom/android/email/provider/EmailContent;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/email/provider/EmailContent;

    move-result-object v4

    check-cast v4, Lcom/android/email/provider/EmailContent$Mailbox;

    .line 3262
    new-instance v9, Lcom/android/exchange/EasOutboxService;

    move-object v0, v9

    move-object/from16 v1, p0

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/EasOutboxService;-><init>(Landroid/content/Context;Lcom/android/email/provider/EmailContent$Mailbox;)V

    move-object/from16 v0, p0

    move-object v1, v9

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/SyncManager;->startServiceThread(Lcom/android/exchange/AbstractSyncService;Lcom/android/email/provider/EmailContent$Mailbox;)V

    goto/16 :goto_3

    .line 3264
    :cond_17
    const-wide/16 v14, 0x0

    cmp-long v4, v16, v14

    if-lez v4, :cond_7

    const-wide/16 v14, 0x5a0

    cmp-long v4, v16, v14

    if-gtz v4, :cond_7

    .line 3265
    const/16 v4, 0xa

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 3266
    sub-long v14, v12, v14

    .line 3267
    const-wide/16 v18, 0x0

    cmp-long v4, v14, v18

    if-gez v4, :cond_24

    .line 3268
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "WHOA! lastSync in the future for mailbox: "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;)V

    .line 3269
    const-wide/32 v9, 0xea60

    mul-long v9, v9, v16

    .line 3271
    :goto_5
    const-wide/32 v14, 0xea60

    mul-long v14, v14, v16

    sub-long v9, v14, v9

    .line 3272
    const/4 v4, 0x1

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 3273
    const-wide/16 v14, 0x0

    cmp-long v11, v9, v14

    if-gtz v11, :cond_18

    .line 3274
    const-class v4, Lcom/android/email/provider/EmailContent$Mailbox;

    invoke-static {v5, v4}, Lcom/android/email/provider/EmailContent;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/email/provider/EmailContent;

    move-result-object v4

    check-cast v4, Lcom/android/email/provider/EmailContent$Mailbox;

    .line 3275
    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v9

    move-object v3, v10

    invoke-direct {v0, v1, v2, v3}, Lcom/android/exchange/SyncManager;->requestSync(Lcom/android/email/provider/EmailContent$Mailbox;ILcom/android/exchange/Request;)V

    goto/16 :goto_3

    .line 3276
    :cond_18
    cmp-long v11, v9, v7

    if-gez v11, :cond_1a

    .line 3278
    sget-boolean v7, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v7, :cond_19

    .line 3279
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Next sync for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-wide/16 v14, 0x3e8

    div-long v14, v9, v14

    invoke-virtual {v7, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "s"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;)V

    .line 3281
    :cond_19
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Scheduled sync, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exchange/SyncManager;->mNextWaitReason:Ljava/lang/String;

    move-wide v7, v9

    goto/16 :goto_3

    .line 3282
    :cond_1a
    sget-boolean v11, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v11, :cond_7

    .line 3283
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Next sync for "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v11, " in "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-wide/16 v14, 0x3e8

    div-long/2addr v9, v14

    invoke-virtual {v4, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, "s"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 3287
    :cond_1b
    iget-object v11, v4, Lcom/android/exchange/AbstractSyncService;->mThread:Ljava/lang/Thread;

    .line 3289
    if-eqz v11, :cond_1d

    invoke-virtual {v11}, Ljava/lang/Thread;->isAlive()Z

    move-result v11

    if-nez v11, :cond_1d

    .line 3290
    sget-boolean v4, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v4, :cond_1c

    .line 3291
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Dead thread, mailbox released: "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v11, 0x1

    invoke-interface {v5, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;)V

    .line 3294
    :cond_1c
    move-object/from16 v0, p0

    move-wide v1, v9

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/SyncManager;->releaseMailbox(J)V

    .line 3296
    const-wide/16 v9, 0xbb8

    cmp-long v4, v7, v9

    if-lez v4, :cond_7

    .line 3297
    const-wide/16 v7, 0xbb8

    .line 3298
    const-string v4, "Clean up dead thread(s)"

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exchange/SyncManager;->mNextWaitReason:Ljava/lang/String;

    goto/16 :goto_3

    .line 3301
    :cond_1d
    iget-wide v9, v4, Lcom/android/exchange/AbstractSyncService;->mRequestTime:J

    .line 3302
    const-wide/16 v14, 0x0

    cmp-long v11, v9, v14

    if-lez v11, :cond_7

    .line 3303
    sub-long v14, v9, v12

    .line 3304
    instance-of v11, v4, Lcom/android/exchange/AbstractSyncService;

    if-eqz v11, :cond_1e

    const-wide/16 v16, 0x0

    cmp-long v11, v14, v16

    if-gtz v11, :cond_1e

    .line 3305
    const-wide/16 v9, 0x0

    iput-wide v9, v4, Lcom/android/exchange/AbstractSyncService;->mRequestTime:J

    .line 3306
    invoke-virtual {v4}, Lcom/android/exchange/AbstractSyncService;->alarm()Z

    goto/16 :goto_3

    .line 3307
    :cond_1e
    const-wide/16 v16, 0x0

    cmp-long v4, v9, v16

    if-lez v4, :cond_7

    cmp-long v4, v14, v7

    if-gez v4, :cond_7

    .line 3308
    const-wide/32 v9, 0xa1220

    cmp-long v4, v14, v9

    if-gez v4, :cond_20

    .line 3309
    const-wide/16 v7, 0xfa

    cmp-long v4, v14, v7

    if-gez v4, :cond_1f

    const-wide/16 v7, 0xfa

    .line 3310
    :goto_6
    const-string v4, "Sync data change"

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exchange/SyncManager;->mNextWaitReason:Ljava/lang/String;

    goto/16 :goto_3

    :cond_1f
    move-wide v7, v14

    .line 3309
    goto :goto_6

    .line 3312
    :cond_20
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Illegal timeToRequest: "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 3320
    :cond_21
    invoke-interface {v5}, Landroid/database/Cursor;->requery()Z

    move-wide v6, v7

    .line 3321
    :cond_22
    :goto_7
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_23

    .line 3322
    const/4 v4, 0x4

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v8, v4

    invoke-static {v8, v9}, Lcom/android/exchange/SyncManager;->getAccountById(J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v4

    .line 3323
    invoke-virtual {v4}, Lcom/android/email/provider/EmailContent$Account;->getSyncScheduleData()Lcom/android/exchange/SyncScheduleData;

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

    move-result-wide v8

    .line 3324
    cmp-long v4, v8, v6

    if-gez v4, :cond_22

    move-wide v6, v8

    .line 3325
    goto :goto_7

    .line 3330
    :cond_23
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    move-wide v4, v6

    .line 3332
    goto/16 :goto_2

    :cond_24
    move-wide v9, v14

    goto/16 :goto_5
.end method

.method private checkPIMSyncSettings()V
    .locals 4

    .prologue
    .line 2516
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Lcom/android/exchange/SyncManager;->getAccountList()Lcom/android/exchange/SyncManager$AccountList;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2522
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/provider/EmailContent$Account;

    .line 2523
    const/16 v2, 0x42

    const-string v3, "com.android.contacts"

    invoke-direct {p0, v0, v2, v3}, Lcom/android/exchange/SyncManager;->updatePIMSyncSettings(Lcom/android/email/provider/EmailContent$Account;ILjava/lang/String;)V

    .line 2524
    const/16 v2, 0x41

    const-string v3, "com.android.calendar"

    invoke-direct {p0, v0, v2, v3}, Lcom/android/exchange/SyncManager;->updatePIMSyncSettings(Lcom/android/email/provider/EmailContent$Account;ILjava/lang/String;)V

    .line 2525
    const/16 v2, 0x43

    const-string v3, "tasks"

    invoke-direct {p0, v0, v2, v3}, Lcom/android/exchange/SyncManager;->updatePIMSyncSettings(Lcom/android/email/provider/EmailContent$Account;ILjava/lang/String;)V

    .line 2526
    const/16 v2, 0x45

    const-string v3, "com.android.notes"

    invoke-direct {p0, v0, v2, v3}, Lcom/android/exchange/SyncManager;->updatePIMSyncSettings(Lcom/android/email/provider/EmailContent$Account;ILjava/lang/String;)V

    goto :goto_0

    .line 2529
    :cond_0
    return-void
.end method

.method public static checkServiceExist(J)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 3523
    sget-object v0, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    .line 3524
    if-nez v0, :cond_0

    move v0, v3

    .line 3531
    :goto_0
    return v0

    .line 3525
    :cond_0
    sget-object v1, Lcom/android/exchange/SyncManager;->sSyncLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3526
    :try_start_0
    iget-object v0, v0, Lcom/android/exchange/SyncManager;->mServiceMap:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3527
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkServiceExist: Service for mailboxID:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " already exist"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;)V

    .line 3528
    const/4 v0, 0x1

    monitor-exit v1

    goto :goto_0

    .line 3530
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v3

    .line 3531
    goto :goto_0
.end method

.method static checkSyncManagerServiceRunning()V
    .locals 3

    .prologue
    .line 1856
    sget-object v0, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    .line 1857
    if-nez v0, :cond_1

    .line 1862
    :cond_0
    :goto_0
    return-void

    .line 1858
    :cond_1
    sget-object v1, Lcom/android/exchange/SyncManager;->sServiceThread:Ljava/lang/Thread;

    if-nez v1, :cond_0

    .line 1859
    const-string v1, "!!! checkSyncManagerServiceRunning; starting service..."

    invoke-static {v1}, Lcom/android/exchange/SyncManager;->alwaysLog(Ljava/lang/String;)V

    .line 1860
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/exchange/SyncManager;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/android/exchange/SyncManager;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method private clearAlarm(J)V
    .locals 3
    .parameter

    .prologue
    .line 2245
    iget-object v2, p0, Lcom/android/exchange/SyncManager;->mPendingIntents:Ljava/util/HashMap;

    monitor-enter v2

    .line 2246
    :try_start_0
    iget-object v0, p0, Lcom/android/exchange/SyncManager;->mPendingIntents:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 2247
    if-eqz v0, :cond_0

    .line 2248
    const-string v1, "alarm"

    invoke-virtual {p0, v1}, Lcom/android/exchange/SyncManager;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 2249
    invoke-virtual {v1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 2251
    iget-object v0, p0, Lcom/android/exchange/SyncManager;->mPendingIntents:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2253
    :cond_0
    monitor-exit v2

    .line 2254
    return-void

    .line 2253
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private clearAlarms()V
    .locals 4

    .prologue
    .line 2274
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/android/exchange/SyncManager;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 2275
    iget-object v2, p0, Lcom/android/exchange/SyncManager;->mPendingIntents:Ljava/util/HashMap;

    monitor-enter v2

    .line 2276
    :try_start_0
    iget-object v1, p0, Lcom/android/exchange/SyncManager;->mPendingIntents:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    .line 2277
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 2280
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2279
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/exchange/SyncManager;->mPendingIntents:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 2280
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2281
    return-void
.end method

.method public static clearWatchdogAlarm(J)V
    .locals 3
    .parameter

    .prologue
    .line 2300
    sget-object v0, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    .line 2301
    if-eqz v0, :cond_0

    .line 2302
    const-string v1, "Email"

    const-string v2, "clearWatchdogAlarm"

    invoke-static {v1, v2}, Lcom/android/exchange/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2303
    invoke-direct {v0, p0, p1}, Lcom/android/exchange/SyncManager;->clearAlarm(J)V

    .line 2305
    :cond_0
    return-void
.end method

.method public static done(Lcom/android/exchange/AbstractSyncService;)V
    .locals 9
    .parameter

    .prologue
    const/16 v8, 0x44

    const/4 v7, -0x1

    .line 3586
    sget-object v1, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    .line 3587
    if-nez v1, :cond_0

    .line 3670
    :goto_0
    return-void

    .line 3588
    :cond_0
    sget-object v2, Lcom/android/exchange/SyncManager;->sSyncLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3589
    :try_start_0
    iget-wide v3, p0, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    .line 3590
    iget-object v5, v1, Lcom/android/exchange/SyncManager;->mSyncErrorMap:Ljava/util/HashMap;

    .line 3591
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exchange/SyncManager$SyncError;

    .line 3592
    invoke-direct {v1, v3, v4}, Lcom/android/exchange/SyncManager;->releaseMailbox(J)V

    .line 3593
    iget v6, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    .line 3594
    packed-switch v6, :pswitch_data_0

    .line 3668
    :cond_1
    :goto_1
    const-string v0, "sync completed"

    invoke-static {v0}, Lcom/android/exchange/SyncManager;->kick(Ljava/lang/String;)V

    .line 3669
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 3596
    :pswitch_0
    :try_start_1
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mRequests:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3599
    :cond_2
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3601
    const-class v0, Lcom/android/exchange/SyncManager;

    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3602
    const/4 v1, 0x0

    :try_start_2
    sput v1, Lcom/android/exchange/SyncManager;->sClientConnectionManagerShutdownCount:I

    .line 3603
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3605
    :try_start_3
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    if-nez v0, :cond_3

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 3603
    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v1

    .line 3609
    :cond_3
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget v0, v0, Lcom/android/email/provider/EmailContent$Account;->mSyncInterval:I

    if-ne v0, v7, :cond_1

    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    if-ne v0, v8, :cond_4

    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Account;->mSyncKey:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Account;->mSyncKey:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent;->mId:J

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    if-eq v0, v8, :cond_1

    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mSyncKey:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mSyncKey:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_5
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget v0, v0, Lcom/android/email/provider/EmailContent$Account;->mSyncInterval:I

    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget v1, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mSyncInterval:I

    if-eq v0, v1, :cond_1

    .line 3621
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

    .line 3622
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 3623
    const-string v1, "syncInterval"

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3624
    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lcom/android/email/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-wide v7, v7, Lcom/android/email/provider/EmailContent;->mId:J

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v1, v3, v0, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3632
    :pswitch_1
    invoke-static {v1, v3, v4}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v7

    .line 3633
    if-nez v7, :cond_6

    monitor-exit v2

    goto/16 :goto_0

    .line 3634
    :cond_6
    if-eqz v0, :cond_7

    .line 3635
    invoke-virtual {v0}, Lcom/android/exchange/SyncManager$SyncError;->escalate()V

    .line 3636
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v7, Lcom/android/email/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " held for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v3, v0, Lcom/android/exchange/SyncManager$SyncError;->holdDelay:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3638
    :cond_7
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-instance v3, Lcom/android/exchange/SyncManager$SyncError;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v6, v4}, Lcom/android/exchange/SyncManager$SyncError;-><init>(Lcom/android/exchange/SyncManager;IZ)V

    invoke-virtual {v5, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3639
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v7, Lcom/android/email/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " added to syncErrorMap, hold for 15s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3645
    :pswitch_2
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    if-eqz v0, :cond_1

    .line 3646
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setting the provisioning error for mAccount: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v7, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v7, v7, Lcom/android/email/provider/EmailContent;->mId:J

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;)V

    .line 3647
    sget-object v0, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    iget-object v0, v0, Lcom/android/exchange/SyncManager;->mProvisionErrorExist:Ljava/util/HashMap;

    iget-object v7, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v7, v7, Lcom/android/email/provider/EmailContent;->mId:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iget-object v8, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3648
    const-wide/16 v7, 0x0

    cmp-long v0, v3, v7

    if-lez v0, :cond_1

    .line 3649
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-instance v7, Lcom/android/exchange/SyncManager$SyncError;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v8, 0x1

    invoke-direct {v7, v1, v6, v8}, Lcom/android/exchange/SyncManager$SyncError;-><init>(Lcom/android/exchange/SyncManager;IZ)V

    invoke-virtual {v5, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3650
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mailbox: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " put to hold due to security failure"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3657
    :pswitch_3
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-instance v3, Lcom/android/exchange/SyncManager$SyncError;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x1

    invoke-direct {v3, v1, v6, v4}, Lcom/android/exchange/SyncManager$SyncError;-><init>(Lcom/android/exchange/SyncManager;IZ)V

    invoke-virtual {v5, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 3662
    :pswitch_4
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-instance v3, Lcom/android/exchange/SyncManager$SyncError;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v4, 0x75300

    const/4 v7, 0x0

    invoke-direct {v3, v1, v6, v4, v7}, Lcom/android/exchange/SyncManager$SyncError;-><init>(Lcom/android/exchange/SyncManager;IIZ)V

    invoke-virtual {v5, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3663
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Account is blocked account Id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v3, v1, Lcom/android/email/provider/EmailContent;->mId:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Sync is put on hold for : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x75300

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " minutes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1

    .line 3594
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public static doneOutOfBand(Lcom/android/exchange/AbstractSyncService;)V
    .locals 9
    .parameter

    .prologue
    .line 3683
    sget-object v1, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    .line 3684
    if-nez v1, :cond_0

    .line 3745
    :goto_0
    return-void

    .line 3685
    :cond_0
    sget-object v2, Lcom/android/exchange/SyncManager;->sSyncLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3686
    :try_start_0
    iget-wide v3, p0, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    .line 3687
    iget-object v5, v1, Lcom/android/exchange/SyncManager;->mSyncErrorMap:Ljava/util/HashMap;

    .line 3688
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exchange/SyncManager$SyncError;

    .line 3692
    iget v6, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    .line 3693
    packed-switch v6, :pswitch_data_0

    .line 3743
    :cond_1
    :goto_1
    const-string v0, "sync completed"

    invoke-static {v0}, Lcom/android/exchange/SyncManager;->kick(Ljava/lang/String;)V

    .line 3744
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 3697
    :pswitch_0
    :try_start_1
    const-class v0, Lcom/android/exchange/SyncManager;

    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3698
    const/4 v1, 0x0

    :try_start_2
    sput v1, Lcom/android/exchange/SyncManager;->sClientConnectionManagerShutdownCount:I

    .line 3699
    monitor-exit v0

    goto :goto_1

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    throw v1

    .line 3702
    :pswitch_1
    invoke-static {v1, v3, v4}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v7

    .line 3703
    if-nez v7, :cond_2

    monitor-exit v2

    goto :goto_0

    .line 3704
    :cond_2
    if-eqz v0, :cond_3

    .line 3705
    invoke-virtual {v0}, Lcom/android/exchange/SyncManager$SyncError;->escalate()V

    .line 3706
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v7, Lcom/android/email/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " held for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v3, v0, Lcom/android/exchange/SyncManager$SyncError;->holdDelay:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 3708
    :cond_3
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-instance v3, Lcom/android/exchange/SyncManager$SyncError;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v6, v4}, Lcom/android/exchange/SyncManager$SyncError;-><init>(Lcom/android/exchange/SyncManager;IZ)V

    invoke-virtual {v5, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3709
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v7, Lcom/android/email/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " added to syncErrorMap, hold for 15s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 3715
    :pswitch_2
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    if-eqz v0, :cond_1

    .line 3716
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setting the provisioning error for mAccount: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v7, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v7, v7, Lcom/android/email/provider/EmailContent;->mId:J

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;)V

    .line 3717
    sget-object v0, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    iget-object v0, v0, Lcom/android/exchange/SyncManager;->mProvisionErrorExist:Ljava/util/HashMap;

    iget-object v7, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v7, v7, Lcom/android/email/provider/EmailContent;->mId:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iget-object v8, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3718
    const-wide/16 v7, 0x0

    cmp-long v0, v3, v7

    if-lez v0, :cond_1

    .line 3720
    invoke-static {v1, v3, v4}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v0

    .line 3721
    if-eqz v0, :cond_1

    iget v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    const/16 v7, 0x44

    if-eq v0, v7, :cond_1

    .line 3722
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-instance v7, Lcom/android/exchange/SyncManager$SyncError;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v8, 0x1

    invoke-direct {v7, v1, v6, v8}, Lcom/android/exchange/SyncManager$SyncError;-><init>(Lcom/android/exchange/SyncManager;IZ)V

    invoke-virtual {v5, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3723
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mailbox: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " put to hold due to security failure"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3732
    :pswitch_3
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-instance v3, Lcom/android/exchange/SyncManager$SyncError;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x1

    invoke-direct {v3, v1, v6, v4}, Lcom/android/exchange/SyncManager$SyncError;-><init>(Lcom/android/exchange/SyncManager;IZ)V

    invoke-virtual {v5, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 3737
    :pswitch_4
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-instance v3, Lcom/android/exchange/SyncManager$SyncError;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v4, 0x75300

    const/4 v7, 0x0

    invoke-direct {v3, v1, v6, v4, v7}, Lcom/android/exchange/SyncManager$SyncError;-><init>(Lcom/android/exchange/SyncManager;IIZ)V

    invoke-virtual {v5, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3738
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Account is blocked account Id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v3, v1, Lcom/android/email/provider/EmailContent;->mId:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Sync is put on hold for : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x75300

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " minutes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 3693
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public static errorlog(Ljava/lang/String;)V
    .locals 2
    .parameter "str"

    .prologue
    const-string v1, "EAS SyncManager"

    .line 1591
    sget-boolean v0, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v0, :cond_0

    .line 1592
    const-string v0, "EAS SyncManager"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1593
    sget-boolean v0, Lcom/android/exchange/Eas;->FILE_LOG:Z

    if-eqz v0, :cond_0

    .line 1594
    const-string v0, "EAS SyncManager"

    invoke-static {v1, p0}, Lcom/android/exchange/utility/FileLogger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1597
    :cond_0
    return-void
.end method

.method public static exchangeAccountsExist()Z
    .locals 12

    .prologue
    const/4 v3, 0x0

    const/4 v11, 0x0

    .line 1096
    invoke-static {}, Lcom/android/exchange/SyncManager;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 1097
    .local v7, context:Landroid/content/Context;
    if-nez v7, :cond_1

    move v0, v11

    .line 1113
    :cond_0
    :goto_0
    return v0

    .line 1099
    :cond_1
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/email/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/email/provider/EmailContent$Account;->CONTENT_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1101
    .local v6, c:Landroid/database/Cursor;
    if-nez v6, :cond_2

    move v0, v11

    .line 1102
    goto :goto_0

    .line 1104
    :cond_2
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1105
    const/4 v0, 0x6

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 1106
    .local v9, hostAuthId:J
    const-wide/16 v0, 0x0

    cmp-long v0, v9, v0

    if-lez v0, :cond_2

    .line 1107
    invoke-static {v7, v9, v10}, Lcom/android/email/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$HostAuth;

    move-result-object v8

    .line 1108
    .local v8, ha:Lcom/android/email/provider/EmailContent$HostAuth;
    if-eqz v8, :cond_2

    iget-object v0, v8, Lcom/android/email/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    const-string v1, "eas"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    .line 1109
    const/4 v0, 0x1

    .line 1115
    if-eqz v6, :cond_0

    .line 1116
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1115
    .end local v8           #ha:Lcom/android/email/provider/EmailContent$HostAuth;
    .end local v9           #hostAuthId:J
    :cond_3
    if-eqz v6, :cond_4

    .line 1116
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    move v0, v11

    .line 1113
    goto :goto_0

    .line 1115
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    .line 1116
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1115
    :cond_5
    throw v0
.end method

.method public static folderListReloaded(J)V
    .locals 2
    .parameter

    .prologue
    .line 2182
    sget-object v0, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    .line 2183
    if-eqz v0, :cond_0

    .line 2184
    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/exchange/SyncManager;->stopAccountSyncs(JZ)V

    .line 2185
    const-string v0, "reload folder list"

    invoke-static {v0}, Lcom/android/exchange/SyncManager;->kick(Ljava/lang/String;)V

    .line 2187
    :cond_0
    return-void
.end method

.method public static getAccountById(J)Lcom/android/email/provider/EmailContent$Account;
    .locals 2
    .parameter "accountId"

    .prologue
    .line 1368
    sget-object v0, Lcom/android/exchange/SyncManager;->sAccountList:Lcom/android/exchange/SyncManager$AccountList;

    monitor-enter v0

    .line 1369
    :try_start_0
    sget-object v1, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    iget-object v1, v1, Lcom/android/exchange/SyncManager;->mAccountObserver:Lcom/android/exchange/SyncManager$AccountObserver;

    iget-object v1, v1, Lcom/android/exchange/SyncManager$AccountObserver;->mAccounts:Lcom/android/exchange/SyncManager$AccountList;

    invoke-virtual {v1, p0, p1}, Lcom/android/exchange/SyncManager$AccountList;->getById(J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1370
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getAccountId(J)J
    .locals 10
    .parameter "mTId"

    .prologue
    const-wide/16 v8, -0x1

    .line 4011
    sget-object v2, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    .line 4012
    .local v2, sm:Lcom/android/exchange/SyncManager;
    if-nez v2, :cond_0

    move-wide v4, v8

    .line 4026
    :goto_0
    return-wide v4

    .line 4015
    :cond_0
    sget-object v5, Lcom/android/exchange/SyncManager;->sSyncLock:Ljava/lang/Object;

    monitor-enter v5

    .line 4016
    :try_start_0
    iget-object v4, v2, Lcom/android/exchange/SyncManager;->mServiceMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/exchange/AbstractSyncService;

    .line 4017
    .local v3, svc:Lcom/android/exchange/AbstractSyncService;
    move-object v0, v3

    check-cast v0, Lcom/android/exchange/EasSyncService;

    move-object v4, v0

    iget-wide v6, v4, Lcom/android/exchange/EasSyncService;->mThreadId:J

    cmp-long v4, v6, p0

    if-nez v4, :cond_1

    iget-object v4, v3, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    if-eqz v4, :cond_1

    .line 4018
    iget-object v4, v3, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v6, v4, Lcom/android/email/provider/EmailContent;->mId:J

    monitor-exit v5

    move-wide v4, v6

    goto :goto_0

    .line 4021
    .end local v3           #svc:Lcom/android/exchange/AbstractSyncService;
    :cond_2
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4023
    sget-object v4, Lcom/android/exchange/SyncManager;->elmsvc:Lcom/android/exchange/EasLoadMoreSvc;

    if-eqz v4, :cond_3

    sget-object v4, Lcom/android/exchange/SyncManager;->elmsvc:Lcom/android/exchange/EasLoadMoreSvc;

    iget-object v4, v4, Lcom/android/exchange/AbstractSyncService;->mThread:Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    cmp-long v4, v4, p0

    if-nez v4, :cond_3

    sget-object v4, Lcom/android/exchange/SyncManager;->elmsvc:Lcom/android/exchange/EasLoadMoreSvc;

    iget-object v4, v4, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    if-eqz v4, :cond_3

    .line 4024
    sget-object v4, Lcom/android/exchange/SyncManager;->elmsvc:Lcom/android/exchange/EasLoadMoreSvc;

    iget-object v4, v4, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v4, v4, Lcom/android/email/provider/EmailContent;->mId:J

    goto :goto_0

    .line 4021
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_3
    move-wide v4, v8

    .line 4026
    goto :goto_0
.end method

.method public static getAccountList()Lcom/android/exchange/SyncManager$AccountList;
    .locals 1

    .prologue
    .line 1360
    sget-object v0, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    if-eqz v0, :cond_0

    .line 1361
    sget-object v0, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    iget-object v0, v0, Lcom/android/exchange/SyncManager;->mAccountObserver:Lcom/android/exchange/SyncManager$AccountObserver;

    iget-object v0, v0, Lcom/android/exchange/SyncManager$AccountObserver;->mAccounts:Lcom/android/exchange/SyncManager$AccountList;

    .line 1363
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/exchange/SyncManager;->EMPTY_ACCOUNT_LIST:Lcom/android/exchange/SyncManager$AccountList;

    goto :goto_0
.end method

.method public static declared-synchronized getClientConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;
    .locals 9

    .prologue
    .line 1911
    const-class v4, Lcom/android/exchange/SyncManager;

    monitor-enter v4

    :try_start_0
    sget-object v5, Lcom/android/exchange/SyncManager;->sClientConnectionManager:Lorg/apache/http/conn/ClientConnectionManager;

    if-nez v5, :cond_1

    .line 1915
    sget v5, Lcom/android/exchange/SyncManager;->sClientConnectionManagerShutdownCount:I

    const/4 v6, 0x2

    if-le v5, v6, :cond_0

    .line 1916
    const-string v5, "Shutting down process to unblock threads"

    invoke-static {v5}, Lcom/android/exchange/SyncManager;->alwaysLog(Ljava/lang/String;)V

    .line 1917
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-static {v5}, Landroid/os/Process;->killProcess(I)V

    .line 1920
    :cond_0
    new-instance v1, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 1921
    .local v1, registry:Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v5, Lorg/apache/http/conn/scheme/Scheme;

    const-string v6, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v7

    const/16 v8, 0x50

    invoke-direct {v5, v6, v7, v8}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v5}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 1924
    new-instance v3, Lcom/android/exchange/SSLSocketFactory;

    const/16 v5, 0x4e20

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/android/email/mail/transport/SSLUtils;->getSSLSocketFactory(IZ)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/android/exchange/SSLSocketFactory;-><init>(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 1925
    .local v3, sf1:Lcom/android/exchange/SSLSocketFactory;
    new-instance v5, Lorg/apache/http/conn/scheme/Scheme;

    const-string v6, "https"

    const/16 v7, 0x1bb

    invoke-direct {v5, v6, v3, v7}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v5}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 1929
    new-instance v2, Lcom/android/exchange/SSLSocketFactory;

    const/16 v5, 0x4e20

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/android/email/mail/transport/SSLUtils;->getSSLSocketFactory(IZ)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/android/exchange/SSLSocketFactory;-><init>(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 1930
    .local v2, sf:Lcom/android/exchange/SSLSocketFactory;
    sget-object v5, Lcom/android/exchange/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {v2, v5}, Lcom/android/exchange/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    .line 1932
    new-instance v5, Lorg/apache/http/conn/scheme/Scheme;

    const-string v6, "httpts"

    const/16 v7, 0x1bb

    invoke-direct {v5, v6, v2, v7}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v5}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 1934
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 1935
    .local v0, params:Lorg/apache/http/params/HttpParams;
    const-string v5, "http.conn-manager.max-total"

    const/16 v6, 0x19

    invoke-interface {v0, v5, v6}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    .line 1936
    const-string v5, "http.conn-manager.max-per-route"

    sget-object v6, Lcom/android/exchange/SyncManager;->sConnPerRoute:Lorg/apache/http/conn/params/ConnPerRoute;

    invoke-interface {v0, v5, v6}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 1938
    const-string v5, "http.conn-manager.timeout"

    const/16 v6, 0x4e20

    invoke-interface {v0, v5, v6}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    .line 1939
    new-instance v5, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v5, v0, v1}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    sput-object v5, Lcom/android/exchange/SyncManager;->sClientConnectionManager:Lorg/apache/http/conn/ClientConnectionManager;

    .line 1942
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

    .line 1911
    :catchall_0
    move-exception v5

    monitor-exit v4

    throw v5
.end method

.method public static declared-synchronized getClientConnectionManagerForLoadMore()Lorg/apache/http/conn/ClientConnectionManager;
    .locals 6

    .prologue
    const-string v0, "Shutting down process to unblock threads"

    const-string v0, "Email"

    .line 1947
    const-class v0, Lcom/android/exchange/SyncManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/exchange/SyncManager;->lmClientConnectionManager:Lorg/apache/http/conn/ClientConnectionManager;

    if-nez v1, :cond_1

    .line 1948
    const-string v1, "Email"

    const-string v2, "getClientConnectionManagerForLoadMore"

    invoke-static {v1, v2}, Lcom/android/exchange/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1954
    sget v1, Lcom/android/exchange/SyncManager;->sClientConnectionManagerShutdownCount:I

    const/4 v2, 0x2

    if-le v1, v2, :cond_0

    .line 1955
    const-string v1, "Email"

    const-string v2, "Shutting down process to unblock threads"

    invoke-static {v1, v2}, Lcom/android/exchange/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1956
    const-string v1, "Shutting down process to unblock threads"

    invoke-static {v1}, Lcom/android/exchange/SyncManager;->alwaysLog(Ljava/lang/String;)V

    .line 1957
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V

    .line 1960
    :cond_0
    new-instance v1, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 1961
    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v4

    const/16 v5, 0x50

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 1964
    new-instance v2, Lcom/android/exchange/SSLSocketFactory;

    const/16 v3, 0x4e20

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/email/mail/transport/SSLUtils;->getSSLSocketFactory(IZ)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/exchange/SSLSocketFactory;-><init>(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 1965
    new-instance v3, Lorg/apache/http/conn/scheme/Scheme;

    const-string v4, "https"

    const/16 v5, 0x1bb

    invoke-direct {v3, v4, v2, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 1969
    new-instance v2, Lcom/android/exchange/SSLSocketFactory;

    const/16 v3, 0x4e20

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/email/mail/transport/SSLUtils;->getSSLSocketFactory(IZ)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/exchange/SSLSocketFactory;-><init>(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 1970
    sget-object v3, Lcom/android/exchange/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {v2, v3}, Lcom/android/exchange/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    .line 1972
    new-instance v3, Lorg/apache/http/conn/scheme/Scheme;

    const-string v4, "httpts"

    const/16 v5, 0x1bb

    invoke-direct {v3, v4, v2, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 1974
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 1975
    const-string v3, "http.conn-manager.max-total"

    const/16 v4, 0x19

    invoke-interface {v2, v3, v4}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    .line 1976
    const-string v3, "http.conn-manager.max-per-route"

    sget-object v4, Lcom/android/exchange/SyncManager;->sConnPerRoute:Lorg/apache/http/conn/params/ConnPerRoute;

    invoke-interface {v2, v3, v4}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 1978
    const-string v3, "http.conn-manager.timeout"

    const/16 v4, 0x4e20

    invoke-interface {v2, v3, v4}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    .line 1979
    new-instance v3, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v3, v2, v1}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    sput-object v3, Lcom/android/exchange/SyncManager;->lmClientConnectionManager:Lorg/apache/http/conn/ClientConnectionManager;

    .line 1983
    :cond_1
    sget-object v1, Lcom/android/exchange/SyncManager;->lmClientConnectionManager:Lorg/apache/http/conn/ClientConnectionManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 1947
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 3777
    sget-object v0, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    return-object v0
.end method

.method static getCountofAccounts(Landroid/content/ContentResolver;)I
    .locals 8
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 2592
    .line 2595
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

    .line 2597
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
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 2602
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v1

    .line 2606
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2607
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2609
    :cond_0
    const-string v0, "EAS SyncManager"

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

    .line 2610
    return v1

    .line 2606
    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2607
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2606
    :cond_1
    throw v0

    :catchall_1
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_0
.end method

.method public static getDeviceId()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1617
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
    .line 1621
    const-class v0, Lcom/android/exchange/SyncManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/exchange/SyncManager;->sDeviceId:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1622
    invoke-static {p0}, Lcom/android/exchange/SyncManager;->getDeviceIdInternal(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/exchange/SyncManager;->sDeviceId:Ljava/lang/String;

    .line 1624
    :cond_0
    sget-object v1, Lcom/android/exchange/SyncManager;->sDeviceId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 1621
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

    .line 1628
    sget-object v9, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    if-nez v9, :cond_0

    if-nez p0, :cond_0

    .line 1629
    new-instance v9, Ljava/io/IOException;

    const-string v10, "No context for getDeviceId"

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1630
    :cond_0
    if-nez p0, :cond_1

    .line 1631
    sget-object p0, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    .line 1635
    :cond_1
    :try_start_0
    const-string v9, "deviceName"

    invoke-virtual {p0, v9}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 1636
    .local v3, f:Ljava/io/File;
    const/4 v6, 0x0

    .line 1639
    .local v6, rdr:Ljava/io/BufferedReader;
    const/4 v1, 0x0

    .line 1643
    .local v1, deviceIdNum:I
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1644
    new-instance v6, Ljava/io/BufferedReader;

    .end local v6           #rdr:Ljava/io/BufferedReader;
    new-instance v9, Ljava/io/FileReader;

    invoke-direct {v9, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    const/16 v10, 0x80

    invoke-direct {v6, v9, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 1645
    .restart local v6       #rdr:Ljava/io/BufferedReader;
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 1646
    .local v4, id:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    move-object v9, v4

    .line 1698
    .end local v4           #id:Ljava/lang/String;
    :goto_0
    return-object v9

    .line 1648
    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 1649
    new-instance v8, Ljava/io/BufferedWriter;

    new-instance v9, Ljava/io/FileWriter;

    invoke-direct {v9, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    const/16 v10, 0x80

    invoke-direct {v8, v9, v10}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    .line 1654
    .local v8, w:Ljava/io/BufferedWriter;
    const-string v9, "phone"

    invoke-virtual {p0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1657
    .local v7, tm:Landroid/telephony/TelephonyManager;
    if-nez v7, :cond_3

    move-object v9, v12

    .line 1658
    goto :goto_0

    .line 1660
    :cond_3
    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v5

    .line 1661
    .local v5, phoneType:I
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 1663
    .local v0, consistentDeviceId:Ljava/lang/String;
    const/4 v9, 0x1

    if-ne v5, v9, :cond_5

    .line 1664
    const/4 v1, 0x1

    .line 1679
    :cond_4
    :goto_1
    if-eqz v0, :cond_7

    .line 1685
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

    .line 1696
    .restart local v4       #id:Ljava/lang/String;
    :goto_2
    invoke-virtual {v8, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1697
    invoke-virtual {v8}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-object v9, v4

    .line 1698
    goto :goto_0

    .line 1665
    .end local v4           #id:Ljava/lang/String;
    :cond_5
    const/4 v9, 0x2

    if-ne v5, v9, :cond_4

    .line 1667
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-result v9

    const/4 v10, 0x4

    if-ne v9, v10, :cond_6

    .line 1668
    const/4 v1, 0x2

    goto :goto_1

    .line 1670
    :cond_6
    const/4 v1, 0x3

    goto :goto_1

    .line 1672
    .end local v0           #consistentDeviceId:Ljava/lang/String;
    .end local v5           #phoneType:I
    :catch_0
    move-exception v9

    move-object v2, v9

    .line 1673
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

    .line 1674
    goto :goto_0

    .line 1692
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

    .line 1700
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

    .line 1702
    :cond_8
    new-instance v9, Ljava/io/IOException;

    const-string v10, "Can\'t get device name"

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9
.end method

.method public static getEasAccountSelector()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1374
    sget-object v0, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    .line 1375
    .local v0, syncManager:Lcom/android/exchange/SyncManager;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/exchange/SyncManager;->mAccountObserver:Lcom/android/exchange/SyncManager$AccountObserver;

    if-eqz v1, :cond_0

    .line 1376
    iget-object v1, v0, Lcom/android/exchange/SyncManager;->mAccountObserver:Lcom/android/exchange/SyncManager$AccountObserver;

    invoke-virtual {v1}, Lcom/android/exchange/SyncManager$AccountObserver;->getAccountKeyWhere()Ljava/lang/String;

    move-result-object v1

    .line 1378
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getElmSvc()Lcom/android/exchange/EasLoadMoreSvc;
    .locals 1

    .prologue
    .line 3995
    sget-object v0, Lcom/android/exchange/SyncManager;->elmsvc:Lcom/android/exchange/EasLoadMoreSvc;

    return-object v0
.end method

.method public static getElmSvcMsg()J
    .locals 2

    .prologue
    .line 4004
    const-string v0, "Email"

    const-string v1, "[jykim] getElmSvcMsg"

    invoke-static {v0, v1}, Lcom/android/exchange/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4005
    sget-object v0, Lcom/android/exchange/SyncManager;->elmsvc:Lcom/android/exchange/EasLoadMoreSvc;

    iget-object v0, v0, Lcom/android/exchange/EasLoadMoreSvc;->mMsg:Lcom/android/email/provider/EmailContent$Message;

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent;->mId:J

    return-wide v0
.end method

.method public static getStatusChangeCount(Ljava/lang/String;)I
    .locals 3
    .parameter "status"

    .prologue
    .line 3769
    const/4 v2, 0x5

    :try_start_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 3770
    .local v1, s:Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 3772
    .end local v1           #s:Ljava/lang/String;
    :goto_0
    return v2

    .line 3771
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 3772
    .local v0, e:Ljava/lang/RuntimeException;
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public static getStatusType(Ljava/lang/String;)I
    .locals 2
    .parameter "status"

    .prologue
    .line 3754
    if-nez p0, :cond_0

    .line 3755
    const/4 v0, -0x1

    .line 3757
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
    .parameter

    .prologue
    .line 2571
    const/4 v0, 0x0

    .line 2572
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2573
    const-string v2, "package"

    const-string v3, "com.android.email"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2574
    const-string v2, "class"

    const-string v3, "com.android.email.activity.Welcome"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2575
    const-string v2, "badgecount"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2576
    const-string v0, "content://com.sec.badge/apps"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 2577
    return-void
.end method

.method private isCalendarEnabled(J)Z
    .locals 6
    .parameter "accountId"

    .prologue
    const/4 v5, 0x1

    .line 1166
    iget-object v1, p0, Lcom/android/exchange/SyncManager;->mCalendarObservers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exchange/SyncManager$CalendarObserver;

    .line 1167
    .local v0, observer:Lcom/android/exchange/SyncManager$CalendarObserver;
    if-eqz v0, :cond_1

    .line 1168
    iget-wide v1, v0, Lcom/android/exchange/SyncManager$CalendarObserver;->mSyncEvents:J

    const-wide/16 v3, 0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    move v1, v5

    .line 1172
    :goto_0
    return v1

    .line 1168
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move v1, v5

    .line 1172
    goto :goto_0
.end method

.method public static kick(Ljava/lang/String;)V
    .locals 3
    .parameter "reason"

    .prologue
    .line 3539
    sget-object v0, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    .line 3540
    .local v0, syncManager:Lcom/android/exchange/SyncManager;
    if-eqz v0, :cond_0

    .line 3541
    monitor-enter v0

    .line 3543
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, v0, Lcom/android/exchange/SyncManager;->mKicked:Z

    .line 3544
    sput-object p0, Lcom/android/exchange/SyncManager;->mKickReason:Ljava/lang/String;

    .line 3545
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 3546
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3548
    :cond_0
    sget-object v1, Lcom/android/exchange/SyncManager;->sConnectivityLock:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 3549
    sget-object v1, Lcom/android/exchange/SyncManager;->sConnectivityLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3550
    :try_start_1
    sget-object v2, Lcom/android/exchange/SyncManager;->sConnectivityLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 3551
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3553
    :cond_1
    return-void

    .line 3546
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 3551
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
    .line 1568
    const-string v0, "EAS SyncManager"

    invoke-static {v0, p0}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1569
    return-void
.end method

.method public static log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "str"

    .prologue
    .line 1572
    sget-boolean v0, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v0, :cond_0

    .line 1573
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1574
    sget-boolean v0, Lcom/android/exchange/Eas;->FILE_LOG:Z

    if-eqz v0, :cond_0

    .line 1575
    invoke-static {p0, p1}, Lcom/android/exchange/utility/FileLogger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1578
    :cond_0
    return-void
.end method

.method private logSyncHolds()V
    .locals 13

    .prologue
    const-string v7, "Mailbox "

    .line 1419
    sget-boolean v7, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/exchange/SyncManager;->mSyncErrorMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    .line 1420
    const-string v7, "Sync holds:"

    invoke-static {v7}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;)V

    .line 1421
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 1422
    .local v5, time:J
    sget-object v8, Lcom/android/exchange/SyncManager;->sSyncLock:Ljava/lang/Object;

    monitor-enter v8

    .line 1423
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

    .line 1424
    .local v3, mailboxId:J
    invoke-static {p0, v3, v4}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v2

    .line 1425
    .local v2, m:Lcom/android/email/provider/EmailContent$Mailbox;
    if-nez v2, :cond_1

    .line 1426
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

    .line 1436
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #m:Lcom/android/email/provider/EmailContent$Mailbox;
    .end local v3           #mailboxId:J
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 1428
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

    .line 1429
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

    .line 1431
    iget-wide v9, v0, Lcom/android/exchange/SyncManager$SyncError;->holdEndTime:J

    const-wide/16 v11, 0x0

    cmp-long v7, v9, v11

    if-lez v7, :cond_0

    .line 1432
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

    .line 1436
    .end local v0           #error:Lcom/android/exchange/SyncManager$SyncError;
    .end local v2           #m:Lcom/android/email/provider/EmailContent$Mailbox;
    .end local v3           #mailboxId:J
    :cond_2
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1438
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v5           #time:J
    :cond_3
    return-void
.end method

.method public static declared-synchronized newClientConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;
    .locals 9

    .prologue
    .line 1881
    const-class v4, Lcom/android/exchange/SyncManager;

    monitor-enter v4

    :try_start_0
    sget-object v5, Lcom/android/exchange/SyncManager;->mClientConnectionManager:Lorg/apache/http/conn/ClientConnectionManager;

    if-nez v5, :cond_0

    .line 1883
    new-instance v1, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 1884
    .local v1, registry:Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v5, Lorg/apache/http/conn/scheme/Scheme;

    const-string v6, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v7

    const/16 v8, 0x50

    invoke-direct {v5, v6, v7, v8}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v5}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 1887
    new-instance v3, Lcom/android/exchange/SSLSocketFactory;

    const/16 v5, 0x4e20

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/android/email/mail/transport/SSLUtils;->getSSLSocketFactory(IZ)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/android/exchange/SSLSocketFactory;-><init>(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 1888
    .local v3, sf1:Lcom/android/exchange/SSLSocketFactory;
    new-instance v5, Lorg/apache/http/conn/scheme/Scheme;

    const-string v6, "https"

    const/16 v7, 0x1bb

    invoke-direct {v5, v6, v3, v7}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v5}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 1892
    new-instance v2, Lcom/android/exchange/SSLSocketFactory;

    const/16 v5, 0x4e20

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/android/email/mail/transport/SSLUtils;->getSSLSocketFactory(IZ)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/android/exchange/SSLSocketFactory;-><init>(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 1893
    .local v2, sf:Lcom/android/exchange/SSLSocketFactory;
    sget-object v5, Lcom/android/exchange/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {v2, v5}, Lcom/android/exchange/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    .line 1895
    new-instance v5, Lorg/apache/http/conn/scheme/Scheme;

    const-string v6, "httpts"

    const/16 v7, 0x1bb

    invoke-direct {v5, v6, v2, v7}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v5}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 1897
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 1898
    .local v0, params:Lorg/apache/http/params/HttpParams;
    const-string v5, "http.conn-manager.max-total"

    const/16 v6, 0x19

    invoke-interface {v0, v5, v6}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    .line 1899
    const-string v5, "http.conn-manager.max-per-route"

    sget-object v6, Lcom/android/exchange/SyncManager;->sConnPerPing:Lorg/apache/http/conn/params/ConnPerRoute;

    invoke-interface {v0, v5, v6}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 1900
    const-string v5, "http.conn-manager.timeout"

    const/16 v6, 0x4e20

    invoke-interface {v0, v5, v6}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    .line 1901
    new-instance v5, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v5, v0, v1}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    sput-object v5, Lcom/android/exchange/SyncManager;->mClientConnectionManager:Lorg/apache/http/conn/ClientConnectionManager;

    .line 1905
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

    .line 1881
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

    .line 3444
    sget-object v1, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    .line 3445
    .local v1, syncManager:Lcom/android/exchange/SyncManager;
    if-nez v1, :cond_0

    move v2, v6

    .line 3459
    :goto_0
    return v2

    .line 3447
    :cond_0
    iget-object v2, v1, Lcom/android/exchange/SyncManager;->mServiceMap:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 3448
    const/4 v2, 0x1

    goto :goto_0

    .line 3451
    :cond_1
    iget-object v2, v1, Lcom/android/exchange/SyncManager;->mSyncErrorMap:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exchange/SyncManager$SyncError;

    .line 3452
    .local v0, error:Lcom/android/exchange/SyncManager$SyncError;
    if-eqz v0, :cond_3

    .line 3453
    iget-boolean v2, v0, Lcom/android/exchange/SyncManager$SyncError;->fatal:Z

    if-eqz v2, :cond_2

    .line 3454
    const/4 v2, 0x3

    goto :goto_0

    .line 3455
    :cond_2
    iget-wide v2, v0, Lcom/android/exchange/SyncManager$SyncError;->holdEndTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    .line 3456
    const/4 v2, 0x2

    goto :goto_0

    :cond_3
    move v2, v6

    .line 3459
    goto :goto_0
.end method

.method static reconcileAccountsWithAccountManager(Landroid/content/Context;Ljava/util/List;[Landroid/accounts/Account;ZLandroid/content/ContentResolver;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
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
    .line 2636
    const/4 v0, 0x0

    .line 2637
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, v0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/provider/EmailContent$Account;

    .line 2638
    iget-object v3, v0, Lcom/android/email/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    .line 2639
    const/4 v4, 0x0

    .line 2640
    array-length v5, p2

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_0

    aget-object v7, p2, v6

    .line 2641
    iget-object v7, v7, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2642
    const/4 v4, 0x1

    .line 2646
    :cond_0
    if-nez v4, :cond_9

    .line 2647
    iget v4, v0, Lcom/android/email/provider/EmailContent$Account;->mFlags:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_2

    .line 2648
    const-string v0, "Account reconciler noticed incomplete account; ignoring"

    invoke-static {v0}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2640
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 2652
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Account deleted in AccountManager; deleting from provider: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/exchange/SyncManager;->alwaysLog(Ljava/lang/String;)V

    .line 2655
    sget-object v2, Lcom/android/email/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, v0, Lcom/android/email/provider/EmailContent;->mId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p4, v0, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2657
    invoke-static {p0}, Lcom/android/email/Email;->setServicesEnabled(Landroid/content/Context;)Z

    .line 2658
    const/4 v0, 0x1

    :goto_2
    move v2, v0

    .line 2660
    goto :goto_0

    .line 2663
    :cond_3
    array-length v1, p2

    const/4 v0, 0x0

    move v3, v2

    move v2, v0

    :goto_3
    if-ge v2, v1, :cond_5

    aget-object v4, p2, v2

    .line 2664
    iget-object v5, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 2665
    const/4 v0, 0x0

    .line 2666
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v7, v0

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/provider/EmailContent$Account;

    .line 2667
    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2668
    const/4 v0, 0x1

    :goto_5
    move v7, v0

    goto :goto_4

    .line 2671
    :cond_4
    if-nez v7, :cond_7

    .line 2673
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Account deleted from provider; deleting from AccountManager: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/exchange/SyncManager;->alwaysLog(Ljava/lang/String;)V

    .line 2676
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v3, v5}, Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v0

    .line 2681
    :try_start_0
    invoke-interface {v0}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 2689
    :goto_6
    const/4 v0, 0x1

    .line 2663
    :goto_7
    add-int/lit8 v2, v2, 0x1

    move v3, v0

    goto :goto_3

    .line 2682
    :catch_0
    move-exception v0

    .line 2683
    const-string v3, "Email"

    invoke-virtual {v0}, Landroid/accounts/OperationCanceledException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/exchange/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 2684
    :catch_1
    move-exception v0

    .line 2685
    const-string v3, "Email"

    invoke-virtual {v0}, Landroid/accounts/AuthenticatorException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/exchange/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 2686
    :catch_2
    move-exception v0

    .line 2687
    const-string v3, "Email"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/exchange/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 2693
    :cond_5
    if-nez p3, :cond_6

    if-eqz v3, :cond_6

    .line 2694
    const/4 p1, 0x1

    sput-boolean p1, Lcom/android/exchange/SyncManager;->checkAccount:Z

    .line 2695
    const-string p1, "EAS SyncManager"

    const-string p2, "Accounts Deleted. reducing policies"

    invoke-static {p1, p2}, Lcom/android/exchange/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2697
    invoke-static {p0}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/email/SecurityPolicy;->reducePolicies()V

    .line 2698
    const/4 p0, 0x1

    invoke-static {p0}, Lcom/android/email/Email;->setNotifyUiAccountsChanged(Z)V

    .line 2700
    invoke-static {p4}, Lcom/android/exchange/SyncManager;->updateBadgeProvider(Landroid/content/ContentResolver;)V

    .line 2703
    :cond_6
    return-void

    :cond_7
    move v0, v3

    goto :goto_7

    :cond_8
    move v0, v7

    goto :goto_5

    :cond_9
    move v0, v2

    goto/16 :goto_2
.end method

.method private registerCalendarObserver(Lcom/android/email/provider/EmailContent$Account;)V
    .locals 5
    .parameter "account"

    .prologue
    .line 1128
    new-instance v0, Lcom/android/exchange/SyncManager$CalendarObserver;

    iget-object v1, p0, Lcom/android/exchange/SyncManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1, p1}, Lcom/android/exchange/SyncManager$CalendarObserver;-><init>(Lcom/android/exchange/SyncManager;Landroid/os/Handler;Lcom/android/email/provider/EmailContent$Account;)V

    .line 1129
    .local v0, observer:Lcom/android/exchange/SyncManager$CalendarObserver;
    iget-wide v1, v0, Lcom/android/exchange/SyncManager$CalendarObserver;->mCalendarId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 1131
    iget-object v1, p0, Lcom/android/exchange/SyncManager;->mCalendarObservers:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v2, p1, Lcom/android/email/provider/EmailContent;->mId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1132
    iget-object v1, p0, Lcom/android/exchange/SyncManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/Calendar$Calendars;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, v0, Lcom/android/exchange/SyncManager$CalendarObserver;->mCalendarId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1136
    :cond_0
    return-void
.end method

.method private releaseMailbox(J)V
    .locals 2
    .parameter "mailboxId"

    .prologue
    .line 3078
    iget-object v0, p0, Lcom/android/exchange/SyncManager;->mServiceMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3079
    invoke-virtual {p0, p1, p2}, Lcom/android/exchange/SyncManager;->releaseWakeLock(J)V

    .line 3080
    return-void
.end method

.method private releaseSyncHoldMailbox(Landroid/content/Context;IJ)V
    .locals 4
    .parameter "context"
    .parameter "reason"
    .parameter "mailboxId"

    .prologue
    .line 1492
    sget-object v1, Lcom/android/exchange/SyncManager;->sSyncLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1493
    :try_start_0
    iget-object v2, p0, Lcom/android/exchange/SyncManager;->mSyncErrorMap:Ljava/util/HashMap;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exchange/SyncManager$SyncError;

    .line 1494
    .local v0, error:Lcom/android/exchange/SyncManager$SyncError;
    if-eqz v0, :cond_0

    iget v2, v0, Lcom/android/exchange/SyncManager$SyncError;->reason:I

    if-ne v2, p2, :cond_0

    .line 1495
    iget-object v2, p0, Lcom/android/exchange/SyncManager;->mSyncErrorMap:Ljava/util/HashMap;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1497
    :cond_0
    monitor-exit v1

    .line 1498
    return-void

    .line 1497
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
    .line 1464
    sget-object v7, Lcom/android/exchange/SyncManager;->sSyncLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1465
    :try_start_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1466
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

    .line 1467
    .local v3, mailboxId:J
    if-eqz p3, :cond_1

    .line 1468
    invoke-static {p1, v3, v4}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v2

    .line 1469
    .local v2, m:Lcom/android/email/provider/EmailContent$Mailbox;
    if-nez v2, :cond_2

    .line 1470
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1475
    .end local v2           #m:Lcom/android/email/provider/EmailContent$Mailbox;
    :cond_1
    iget-object v6, p0, Lcom/android/exchange/SyncManager;->mSyncErrorMap:Ljava/util/HashMap;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exchange/SyncManager$SyncError;

    .line 1476
    .local v0, error:Lcom/android/exchange/SyncManager$SyncError;
    iget v6, v0, Lcom/android/exchange/SyncManager$SyncError;->reason:I

    if-ne v6, p2, :cond_0

    .line 1477
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1486
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

    .line 1471
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #m:Lcom/android/email/provider/EmailContent$Mailbox;
    .restart local v3       #mailboxId:J
    .restart local v5       #releaseList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_2
    :try_start_1
    iget-wide v8, v2, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    iget-wide v10, p3, Lcom/android/email/provider/EmailContent;->mId:J

    cmp-long v6, v8, v10

    if-eqz v6, :cond_1

    goto :goto_0

    .line 1480
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

    .line 1481
    .restart local v3       #mailboxId:J
    iget-object v6, p0, Lcom/android/exchange/SyncManager;->mSyncErrorMap:Ljava/util/HashMap;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1484
    .end local v3           #mailboxId:J
    :cond_4
    if-eqz p3, :cond_5

    .line 1485
    iget-object v6, p0, Lcom/android/exchange/SyncManager;->mProvisionErrorExist:Ljava/util/HashMap;

    iget-wide v8, p3, Lcom/android/email/provider/EmailContent;->mId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1486
    :cond_5
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1487
    return-void
.end method

.method public static reloadFolderList(Landroid/content/Context;JZ)V
    .locals 12
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2102
    sget-object v6, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    .line 2103
    if-nez v6, :cond_0

    .line 2172
    :goto_0
    return-void

    .line 2104
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/email/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/email/provider/EmailContent$Mailbox;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v3, "accountKey=? AND type=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v8

    const-wide/16 v7, 0x44

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v9

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2110
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2111
    sget-object v1, Lcom/android/exchange/SyncManager;->sSyncLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2112
    :try_start_1
    new-instance v2, Lcom/android/email/provider/EmailContent$Mailbox;

    invoke-direct {v2}, Lcom/android/email/provider/EmailContent$Mailbox;-><init>()V

    invoke-virtual {v2, v0}, Lcom/android/email/provider/EmailContent$Mailbox;->restore(Landroid/database/Cursor;)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v2

    .line 2113
    invoke-static {p0, p1, p2}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v3

    .line 2114
    if-nez v3, :cond_2

    .line 2115
    invoke-static {p1, p2}, Lcom/android/exchange/SyncManager;->reloadFolderListFailed(J)V

    .line 2116
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2170
    :cond_1
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2118
    :cond_2
    :try_start_2
    iget-object v4, v3, Lcom/android/email/provider/EmailContent$Account;->mSyncKey:Ljava/lang/String;

    .line 2120
    if-nez p3, :cond_4

    if-eqz v4, :cond_3

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2121
    :cond_3
    invoke-static {p1, p2}, Lcom/android/exchange/SyncManager;->reloadFolderListFailed(J)V

    .line 2122
    monitor-exit v1

    goto :goto_1

    .line 2167
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2170
    :catchall_1
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1

    .line 2126
    :cond_4
    :try_start_4
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 2127
    const-string v5, "syncInterval"

    const/4 v7, -0x4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2128
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v7, Lcom/android/email/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v8, "accountKey=? and type!=68 and syncInterval IN (-3,-2)"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v5, v7, v4, v8, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2131
    const-string v4, "Set push/ping boxes to push/hold"

    invoke-static {v4}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;)V

    .line 2133
    iget-wide v4, v2, Lcom/android/email/provider/EmailContent;->mId:J

    .line 2134
    iget-object v7, v6, Lcom/android/exchange/SyncManager;->mServiceMap:Ljava/util/HashMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/exchange/AbstractSyncService;

    .line 2137
    if-eqz p0, :cond_7

    iget v7, p0, Lcom/android/exchange/AbstractSyncService;->mSyncReason:I

    const/16 v8, 0x9

    if-eq v7, v8, :cond_7

    .line 2138
    invoke-virtual {p0}, Lcom/android/exchange/AbstractSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2139
    :try_start_5
    invoke-virtual {p0}, Lcom/android/exchange/AbstractSyncService;->stop()V

    .line 2140
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 2142
    :try_start_6
    iget-object v2, p0, Lcom/android/exchange/AbstractSyncService;->mThread:Ljava/lang/Thread;

    .line 2144
    if-eqz v2, :cond_5

    .line 2145
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " (Stopped)"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 2146
    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 2150
    :cond_5
    invoke-direct {v6, v4, v5}, Lcom/android/exchange/SyncManager;->releaseMailbox(J)V

    .line 2152
    const-string v2, "reload folder list"

    invoke-static {v2}, Lcom/android/exchange/SyncManager;->kick(Ljava/lang/String;)V

    .line 2167
    :cond_6
    :goto_2
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1

    .line 2140
    :catchall_2
    move-exception v3

    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw v3

    .line 2159
    :cond_7
    if-nez p0, :cond_6

    iget v4, v3, Lcom/android/email/provider/EmailContent$Account;->mSyncInterval:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_6

    iget-object v4, v6, Lcom/android/exchange/SyncManager;->mProvisionErrorExist:Ljava/util/HashMap;

    iget-wide v7, v3, Lcom/android/email/provider/EmailContent;->mId:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, v6, Lcom/android/exchange/SyncManager;->mSyncErrorMap:Ljava/util/HashMap;

    iget-wide v4, v2, Lcom/android/email/provider/EmailContent;->mId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 2163
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Account in Manual mode. Starting Sync forcefully.. for mailbox:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v2, Lcom/android/email/provider/EmailContent;->mId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;)V

    .line 2164
    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-direct {v6, v2, v3, v4}, Lcom/android/exchange/SyncManager;->requestSync(Lcom/android/email/provider/EmailContent$Mailbox;ILcom/android/exchange/Request;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_2
.end method

.method private static reloadFolderListFailed(J)V
    .locals 3
    .parameter "accountId"

    .prologue
    .line 2094
    :try_start_0
    invoke-static {}, Lcom/android/exchange/SyncManager;->callback()Lcom/android/email/service/IEmailServiceCallback;

    move-result-object v0

    const/16 v1, 0x18

    const/4 v2, 0x0

    invoke-interface {v0, p0, p1, v1, v2}, Lcom/android/email/service/IEmailServiceCallback;->syncMailboxListStatus(JII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2099
    :goto_0
    return-void

    .line 2096
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static removeFromSyncErrorMap(J)V
    .locals 4
    .parameter "mailboxId"

    .prologue
    .line 3572
    sget-object v0, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    .line 3573
    .local v0, syncManager:Lcom/android/exchange/SyncManager;
    if-nez v0, :cond_0

    .line 3577
    :goto_0
    return-void

    .line 3574
    :cond_0
    sget-object v1, Lcom/android/exchange/SyncManager;->sSyncLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3575
    :try_start_0
    iget-object v2, v0, Lcom/android/exchange/SyncManager;->mSyncErrorMap:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3576
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
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2797
    sget-boolean v1, Lcom/android/exchange/SyncManager;->sConnectivityHold:Z

    if-nez v1, :cond_0

    if-nez p1, :cond_1

    .line 2822
    :cond_0
    :goto_0
    return-void

    .line 2798
    :cond_1
    sget-object v3, Lcom/android/exchange/SyncManager;->sSyncLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2799
    :try_start_0
    iget-wide v1, p1, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-static {p0, v1, v2}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v4

    .line 2800
    if-eqz v4, :cond_4

    .line 2802
    iget-object v1, p0, Lcom/android/exchange/SyncManager;->mServiceMap:Ljava/util/HashMap;

    iget-wide v5, p1, Lcom/android/email/provider/EmailContent;->mId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/exchange/AbstractSyncService;

    .line 2803
    if-nez v1, :cond_4

    .line 2804
    new-instance v2, Lcom/android/exchange/EasSyncService;

    invoke-direct {v2, p0, p1}, Lcom/android/exchange/EasSyncService;-><init>(Landroid/content/Context;Lcom/android/email/provider/EmailContent$Mailbox;)V

    .line 2805
    move-object v0, v2

    check-cast v0, Lcom/android/exchange/EasSyncService;

    move-object v1, v0

    iget-boolean v1, v1, Lcom/android/exchange/EasSyncService;->mIsValid:Z

    if-nez v1, :cond_2

    monitor-exit v3

    goto :goto_0

    .line 2821
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2807
    :cond_2
    :try_start_1
    iget v1, p1, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    const/16 v5, 0x44

    if-ne v1, v5, :cond_5

    iget-object v1, p0, Lcom/android/exchange/SyncManager;->mProvisionErrorExist:Ljava/util/HashMap;

    iget-wide v4, v4, Lcom/android/email/provider/EmailContent;->mId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 2809
    const-string v1, "Provision Error exist. Setting syncReason = SYNC_PROVISION for account sync"

    invoke-static {v1}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;)V

    .line 2810
    const/16 v1, 0x9

    iput v1, v2, Lcom/android/exchange/AbstractSyncService;->mSyncReason:I

    .line 2815
    :goto_1
    if-eqz p3, :cond_3

    .line 2816
    invoke-virtual {v2, p3}, Lcom/android/exchange/AbstractSyncService;->addRequest(Lcom/android/exchange/Request;)V

    .line 2818
    :cond_3
    invoke-direct {p0, v2, p1}, Lcom/android/exchange/SyncManager;->startServiceThread(Lcom/android/exchange/AbstractSyncService;Lcom/android/email/provider/EmailContent$Mailbox;)V

    .line 2821
    :cond_4
    monitor-exit v3

    goto :goto_0

    .line 2813
    :cond_5
    iput p2, v2, Lcom/android/exchange/AbstractSyncService;->mSyncReason:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private runAccountReconciler()V
    .locals 2

    .prologue
    .line 1529
    move-object v0, p0

    .line 1530
    .local v0, syncManager:Lcom/android/exchange/SyncManager;
    new-instance v1, Lcom/android/exchange/SyncManager$3;

    invoke-direct {v1, p0, v0}, Lcom/android/exchange/SyncManager$3;-><init>(Lcom/android/exchange/SyncManager;Lcom/android/exchange/SyncManager;)V

    invoke-virtual {v1}, Lcom/android/exchange/SyncManager$3;->start()V

    .line 1565
    return-void
.end method

.method public static runAsleep(JJ)V
    .locals 1
    .parameter "id"
    .parameter "millis"

    .prologue
    .line 2292
    sget-object v0, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    .line 2293
    .local v0, syncManager:Lcom/android/exchange/SyncManager;
    if-eqz v0, :cond_0

    .line 2294
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/exchange/SyncManager;->setAlarm(JJ)V

    .line 2295
    invoke-virtual {v0, p0, p1}, Lcom/android/exchange/SyncManager;->releaseWakeLock(J)V

    .line 2297
    :cond_0
    return-void
.end method

.method public static runAwake(J)V
    .locals 1
    .parameter "id"

    .prologue
    .line 2284
    sget-object v0, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    .line 2285
    .local v0, syncManager:Lcom/android/exchange/SyncManager;
    if-eqz v0, :cond_0

    .line 2286
    invoke-direct {v0, p0, p1}, Lcom/android/exchange/SyncManager;->acquireWakeLock(J)V

    .line 2287
    invoke-direct {v0, p0, p1}, Lcom/android/exchange/SyncManager;->clearAlarm(J)V

    .line 2289
    :cond_0
    return-void
.end method

.method public static sendMessageRequest(Lcom/android/exchange/Request;)V
    .locals 4
    .parameter

    .prologue
    .line 3419
    sget-object v0, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    .line 3420
    if-nez v0, :cond_1

    .line 3434
    :cond_0
    :goto_0
    return-void

    .line 3421
    :cond_1
    iget-wide v1, p0, Lcom/android/exchange/Request;->mMessageId:J

    invoke-static {v0, v1, v2}, Lcom/android/email/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Message;

    move-result-object v1

    .line 3422
    if-eqz v1, :cond_0

    .line 3425
    iget-wide v1, v1, Lcom/android/email/provider/EmailContent$Message;->mMailboxKey:J

    .line 3426
    iget-object v0, v0, Lcom/android/exchange/SyncManager;->mServiceMap:Ljava/util/HashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exchange/AbstractSyncService;

    .line 3428
    if-nez v0, :cond_2

    .line 3429
    const/4 v0, 0x5

    invoke-static {v1, v2, v0, p0}, Lcom/android/exchange/SyncManager;->startManualSync(JILcom/android/exchange/Request;)Lcom/android/exchange/AbstractSyncService;

    .line 3430
    const-string v0, "part request"

    invoke-static {v0}, Lcom/android/exchange/SyncManager;->kick(Ljava/lang/String;)V

    goto :goto_0

    .line 3432
    :cond_2
    invoke-virtual {v0, p0}, Lcom/android/exchange/AbstractSyncService;->addRequest(Lcom/android/exchange/Request;)V

    goto :goto_0
.end method

.method public static serviceRequest(JI)V
    .locals 2
    .parameter "mailboxId"
    .parameter "reason"

    .prologue
    .line 3336
    const-wide/16 v0, 0x1388

    invoke-static {p0, p1, v0, v1, p2}, Lcom/android/exchange/SyncManager;->serviceRequest(JJI)V

    .line 3337
    return-void
.end method

.method public static serviceRequest(JJI)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x4

    .line 3340
    sget-object v0, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    .line 3341
    if-nez v0, :cond_0

    .line 3401
    :goto_0
    return-void

    .line 3342
    :cond_0
    invoke-static {v0, p0, p1}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v1

    .line 3346
    if-nez v1, :cond_1

    .line 3347
    const-string v0, "Ignoring serviceRequest for null mailbox"

    invoke-static {v0}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 3349
    :cond_1
    iget v2, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 3350
    const-string v0, "Ignoring serviceRequest for drafts/null mailbox"

    invoke-static {v0}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 3353
    :cond_2
    invoke-static {}, Lcom/android/exchange/SyncManager;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-wide v3, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-static {v2, v3, v4}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v2

    .line 3354
    if-eqz v2, :cond_4

    .line 3355
    iget-object v3, v2, Lcom/android/email/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    const-wide v5, 0x4028333333333333L

    cmpg-double v3, v3, v5

    if-gtz v3, :cond_3

    iget v3, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    if-ne v3, v7, :cond_3

    .line 3357
    const-string v0, "Ignoring serviceRequest for outbox mailbox"

    invoke-static {v0}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 3359
    :cond_3
    iget v3, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    if-ne v3, v7, :cond_5

    iget-object v3, v2, Lcom/android/email/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    const-wide/high16 v5, 0x402c

    cmpl-double v3, v3, v5

    if-ltz v3, :cond_5

    iget v2, v2, Lcom/android/email/provider/EmailContent$Account;->mFlags:I

    and-int/lit16 v2, v2, 0x200

    if-nez v2, :cond_5

    .line 3362
    const-string v0, "Ignoring serviceRequest for outbox mailbox as SMS Sync is not enabled"

    invoke-static {v0}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 3366
    :cond_4
    const-string v0, "Ignoring serviceRequest for null account"

    invoke-static {v0}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 3383
    :cond_5
    iget v1, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_6

    .line 3386
    sget-object v0, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    const-string v0, "Ignoring serviceRequest for search"

    invoke-static {v0}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 3391
    :cond_6
    :try_start_0
    iget-object v0, v0, Lcom/android/exchange/SyncManager;->mServiceMap:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exchange/AbstractSyncService;

    .line 3392
    if-eqz v0, :cond_7

    .line 3393
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    add-long/2addr v1, p2

    iput-wide v1, v0, Lcom/android/exchange/AbstractSyncService;->mRequestTime:J

    .line 3394
    const-string v0, "service request"

    invoke-static {v0}, Lcom/android/exchange/SyncManager;->kick(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 3398
    :catch_0
    move-exception v0

    .line 3399
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 3396
    :cond_7
    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0, p1, p4, v0}, Lcom/android/exchange/SyncManager;->startManualSync(JILcom/android/exchange/Request;)Lcom/android/exchange/AbstractSyncService;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private setAlarm(JJ)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 2257
    iget-object v1, p0, Lcom/android/exchange/SyncManager;->mPendingIntents:Ljava/util/HashMap;

    monitor-enter v1

    .line 2258
    :try_start_0
    iget-object v0, p0, Lcom/android/exchange/SyncManager;->mPendingIntents:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 2259
    if-nez v0, :cond_0

    .line 2260
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/exchange/MailboxAlarmReceiver;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2261
    const-string v2, "mailbox"

    invoke-virtual {v0, v2, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2262
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Box"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2263
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p0, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 2264
    iget-object v2, p0, Lcom/android/exchange/SyncManager;->mPendingIntents:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2266
    const-string v2, "alarm"

    invoke-virtual {p0, v2}, Lcom/android/exchange/SyncManager;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AlarmManager;

    .line 2267
    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    add-long/2addr v3, p3

    invoke-virtual {p0, v2, v3, v4, v0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 2270
    :cond_0
    monitor-exit v1

    .line 2271
    return-void

    .line 2270
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static setEasSyncIntervals(Landroid/content/Context;Ljava/lang/String;IJZ)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3786
    new-instance v0, Landroid/accounts/Account;

    const-string v1, "com.android.exchange"

    invoke-direct {v0, p1, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3788
    const-string p1, "com.android.contacts"

    invoke-static {v0, p1}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result p1

    .line 3790
    const-string v1, "com.android.calendar"

    invoke-static {v0, v1}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v1

    .line 3794
    const-string v2, "tasks"

    invoke-static {v0, v2}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v2

    .line 3799
    const-string v3, "com.android.notes"

    invoke-static {v0, v3}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v0

    .line 3800
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 3801
    if-eqz p5, :cond_0

    .line 3803
    invoke-static {p0, p3, p4}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object p5

    .line 3804
    const/4 v4, 0x1

    .line 3805
    if-eqz p5, :cond_1

    .line 3807
    :try_start_0
    iget-object p5, p5, Lcom/android/email/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    invoke-static {p5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    const-wide v7, 0x4028333333333333L

    cmpl-double p5, v5, v7

    if-lez p5, :cond_1

    .line 3808
    const-string p5, "syncInterval"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, p5, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3809
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p5

    sget-object v5, Lcom/android/email/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v6, "accountKey=? and type in (0,4,68)"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {p5, v5, v3, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3812
    const/4 p5, 0x0

    .line 3819
    :goto_0
    if-eqz p5, :cond_0

    .line 3820
    const-string p5, "syncInterval"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, p5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3821
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p5

    sget-object v4, Lcom/android/email/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "accountKey=? and type in (0,68,67)"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {p5, v4, v3, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3828
    :cond_0
    if-eqz p1, :cond_2

    .line 3829
    const-string p1, "syncInterval"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-virtual {v3, p1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3830
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object p5, Lcom/android/email/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "accountKey=? and type in (66)"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {p1, p5, v3, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3840
    :goto_1
    if-eqz v1, :cond_3

    .line 3841
    const-string p1, "syncInterval"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-virtual {v3, p1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3842
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object p5, Lcom/android/email/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "accountKey=? and type in (65)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p1, p5, v3, v1, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3852
    :goto_2
    if-eqz v2, :cond_4

    .line 3854
    const-string p1, "syncInterval"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-virtual {v3, p1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3855
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object p5, Lcom/android/email/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "accountKey=? and type in (67)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-virtual {p1, p5, v3, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3866
    :goto_3
    if-eqz v0, :cond_5

    .line 3868
    const-string p1, "syncInterval"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v3, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3869
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p1, Lcom/android/email/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const-string p2, "accountKey=? and type in (69)"

    const/4 p5, 0x1

    new-array p5, p5, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p3

    aput-object p3, p5, v0

    invoke-virtual {p0, p1, v3, p2, p5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3879
    :goto_4
    return-void

    .line 3814
    :catch_0
    move-exception p5

    .line 3815
    invoke-virtual {p5}, Ljava/lang/NullPointerException;->printStackTrace()V

    :cond_1
    move p5, v4

    goto/16 :goto_0

    .line 3834
    :cond_2
    const-string p1, "syncInterval"

    const/4 p5, -0x1

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-virtual {v3, p1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3835
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object p5, Lcom/android/email/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "accountKey=? and type in (66)"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {p1, p5, v3, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3846
    :cond_3
    const-string p1, "syncInterval"

    const/4 p5, -0x1

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-virtual {v3, p1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3847
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object p5, Lcom/android/email/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "accountKey=? and type in (65)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p1, p5, v3, v1, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_2

    .line 3859
    :cond_4
    const-string p1, "syncInterval"

    const/4 p5, -0x1

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-virtual {v3, p1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3860
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object p5, Lcom/android/email/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "accountKey=? and type in (67)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-virtual {p1, p5, v3, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_3

    .line 3873
    :cond_5
    const-string p1, "syncInterval"

    const/4 p2, -0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v3, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3874
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p1, Lcom/android/email/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const-string p2, "accountKey=? and type in (69)"

    const/4 p5, 0x1

    new-array p5, p5, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p3

    aput-object p3, p5, v0

    invoke-virtual {p0, p1, v3, p2, p5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_4
.end method

.method public static setWatchdogAlarm(JJ)V
    .locals 1
    .parameter "id"
    .parameter "millis"

    .prologue
    .line 2308
    sget-object v0, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    .line 2309
    .local v0, syncManager:Lcom/android/exchange/SyncManager;
    if-eqz v0, :cond_0

    .line 2310
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/exchange/SyncManager;->setAlarm(JJ)V

    .line 2312
    :cond_0
    return-void
.end method

.method public static declared-synchronized shutdownConnectionManager()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1989
    const-class v0, Lcom/android/exchange/SyncManager;

    monitor-enter v0

    const/4 v1, 0x0

    .line 1991
    :try_start_0
    sget-object v2, Lcom/android/exchange/SyncManager;->sClientConnectionManager:Lorg/apache/http/conn/ClientConnectionManager;

    if-eqz v2, :cond_0

    .line 1992
    const-string v1, "Shutting down ClientConnectionManager"

    invoke-static {v1}, Lcom/android/exchange/SyncManager;->alwaysLog(Ljava/lang/String;)V

    .line 1993
    sget-object v1, Lcom/android/exchange/SyncManager;->sClientConnectionManager:Lorg/apache/http/conn/ClientConnectionManager;

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 1995
    const/4 v1, 0x0

    sput-object v1, Lcom/android/exchange/SyncManager;->sClientConnectionManager:Lorg/apache/http/conn/ClientConnectionManager;

    move v1, v3

    .line 2000
    :cond_0
    sget-object v2, Lcom/android/exchange/SyncManager;->lmClientConnectionManager:Lorg/apache/http/conn/ClientConnectionManager;

    if-eqz v2, :cond_1

    .line 2001
    const-string v1, "Shutting down ClientConnectionManager for loadMore"

    invoke-static {v1}, Lcom/android/exchange/SyncManager;->alwaysLog(Ljava/lang/String;)V

    .line 2002
    sget-object v1, Lcom/android/exchange/SyncManager;->lmClientConnectionManager:Lorg/apache/http/conn/ClientConnectionManager;

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 2004
    const/4 v1, 0x0

    sput-object v1, Lcom/android/exchange/SyncManager;->lmClientConnectionManager:Lorg/apache/http/conn/ClientConnectionManager;

    move v1, v3

    .line 2009
    :cond_1
    if-eqz v1, :cond_2

    .line 2010
    sget v1, Lcom/android/exchange/SyncManager;->sClientConnectionManagerShutdownCount:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/android/exchange/SyncManager;->sClientConnectionManagerShutdownCount:I

    .line 2011
    const-string v1, "shutdownConnectionManager(): sClientConnectionManagerShutdownCount is increased"

    invoke-static {v1}, Lcom/android/exchange/SyncManager;->alwaysLog(Ljava/lang/String;)V

    .line 2012
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shutdownConnectionManager(): sClientConnectionManagerShutdownCount= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/exchange/SyncManager;->sClientConnectionManagerShutdownCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/exchange/SyncManager;->alwaysLog(Ljava/lang/String;)V

    .line 2016
    :cond_2
    sget-object v1, Lcom/android/exchange/SyncManager;->mClientConnectionManager:Lorg/apache/http/conn/ClientConnectionManager;

    if-eqz v1, :cond_3

    .line 2017
    const-string v1, "Shutting down PingClientConnectionManager"

    invoke-static {v1}, Lcom/android/exchange/SyncManager;->alwaysLog(Ljava/lang/String;)V

    .line 2018
    sget-object v1, Lcom/android/exchange/SyncManager;->mClientConnectionManager:Lorg/apache/http/conn/ClientConnectionManager;

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 2019
    const/4 v1, 0x0

    sput-object v1, Lcom/android/exchange/SyncManager;->mClientConnectionManager:Lorg/apache/http/conn/ClientConnectionManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2022
    :cond_3
    monitor-exit v0

    return-void

    .line 1989
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static startManualSync(JILcom/android/exchange/Request;)Lcom/android/exchange/AbstractSyncService;
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3463
    sget-object v3, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    .line 3464
    if-nez v3, :cond_0

    const/4 v1, 0x0

    .line 3503
    :goto_0
    return-object v1

    .line 3465
    :cond_0
    sget-object v4, Lcom/android/exchange/SyncManager;->sSyncLock:Ljava/lang/Object;

    monitor-enter v4

    .line 3466
    :try_start_0
    iget-object v1, v3, Lcom/android/exchange/SyncManager;->mServiceMap:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    .line 3467
    iget-object v1, v3, Lcom/android/exchange/SyncManager;->mSyncErrorMap:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3468
    invoke-static {v3, p0, p1}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v1

    .line 3469
    if-eqz v1, :cond_1

    .line 3470
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Starting sync for "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;)V

    .line 3471
    invoke-direct {v3, v1, p2, p3}, Lcom/android/exchange/SyncManager;->requestSync(Lcom/android/email/provider/EmailContent$Mailbox;ILcom/android/exchange/Request;)V

    .line 3502
    :cond_1
    :goto_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3503
    iget-object v1, v3, Lcom/android/exchange/SyncManager;->mServiceMap:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/exchange/AbstractSyncService;

    move-object v1, p0

    goto :goto_0

    .line 3476
    :cond_2
    :try_start_1
    invoke-static {v3, p0, p1}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v5

    .line 3477
    sget-boolean v1, Lcom/android/exchange/SyncManager;->sConnectivityHold:Z

    if-nez v1, :cond_1

    if-eqz v5, :cond_1

    .line 3479
    iget-wide v1, v5, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-static {v3, v1, v2}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v6

    .line 3480
    if-eqz v6, :cond_1

    .line 3482
    iget-object v1, v3, Lcom/android/exchange/SyncManager;->mServiceMap:Ljava/util/HashMap;

    iget-wide v7, v5, Lcom/android/email/provider/EmailContent;->mId:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/exchange/AbstractSyncService;

    .line 3483
    move-object v0, v1

    check-cast v0, Lcom/android/exchange/EasSyncService;

    move-object v2, v0

    iget-boolean v2, v2, Lcom/android/exchange/EasSyncService;->mIsValid:Z

    if-eqz v2, :cond_1

    .line 3486
    iget v2, v5, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    const/16 v5, 0x44

    if-ne v2, v5, :cond_3

    iget-object v2, v3, Lcom/android/exchange/SyncManager;->mProvisionErrorExist:Ljava/util/HashMap;

    iget-wide v5, v6, Lcom/android/email/provider/EmailContent;->mId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 3488
    const-string v2, "Provision Error exist. Setting syncReason = SYNC_PROVISION for account sync"

    invoke-static {v2}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;)V

    .line 3489
    const/16 v2, 0x9

    iput v2, v1, Lcom/android/exchange/AbstractSyncService;->mSyncReason:I

    .line 3494
    :goto_2
    if-eqz p3, :cond_1

    .line 3496
    invoke-virtual {v1, p3}, Lcom/android/exchange/AbstractSyncService;->addRequest(Lcom/android/exchange/Request;)V

    goto :goto_1

    .line 3502
    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 3492
    :cond_3
    :try_start_2
    iput p2, v1, Lcom/android/exchange/AbstractSyncService;->mSyncReason:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method private startServiceThread(Lcom/android/exchange/AbstractSyncService;Lcom/android/email/provider/EmailContent$Mailbox;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 2756
    if-nez p2, :cond_0

    .line 2771
    :goto_0
    return-void

    .line 2757
    :cond_0
    sget-object v0, Lcom/android/exchange/SyncManager;->sSyncLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2758
    :try_start_0
    iget-object v1, p2, Lcom/android/email/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    .line 2759
    iget-object v2, p1, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v2, v2, Lcom/android/email/provider/EmailContent$Account;->mDisplayName:Ljava/lang/String;

    .line 2760
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 2762
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Starting thread id:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " in account "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;)V

    .line 2764
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 2765
    iget-object v1, p0, Lcom/android/exchange/SyncManager;->mServiceMap:Ljava/util/HashMap;

    iget-wide v2, p2, Lcom/android/email/provider/EmailContent;->mId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2766
    iget-wide v1, p2, Lcom/android/email/provider/EmailContent;->mId:J

    invoke-static {v1, v2}, Lcom/android/exchange/SyncManager;->runAwake(J)V

    .line 2767
    iget-object v1, p2, Lcom/android/email/provider/EmailContent$Mailbox;->mServerId:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p2, Lcom/android/email/provider/EmailContent$Mailbox;->mServerId:Ljava/lang/String;

    const-string v2, "__eas"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2768
    iget-wide v1, p2, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-direct {p0, v1, v2}, Lcom/android/exchange/SyncManager;->stopPing(J)V

    .line 2770
    :cond_1
    monitor-exit v0

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static stopAccountSyncs(J)V
    .locals 2
    .parameter "acctId"

    .prologue
    .line 2038
    sget-object v0, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    .line 2039
    .local v0, syncManager:Lcom/android/exchange/SyncManager;
    if-eqz v0, :cond_0

    .line 2040
    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/android/exchange/SyncManager;->stopAccountSyncs(JZ)V

    .line 2042
    :cond_0
    return-void
.end method

.method private stopAccountSyncs(JZ)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const-string v1, "EAS SyncManager"

    .line 2045
    sget-object v4, Lcom/android/exchange/SyncManager;->sSyncLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2046
    :try_start_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2047
    iget-object v1, p0, Lcom/android/exchange/SyncManager;->mServiceMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 2048
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {p0, v2, v3}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v2

    .line 2049
    if-eqz v2, :cond_0

    .line 2050
    iget-wide v7, v2, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    cmp-long v3, v7, p1

    if-nez v3, :cond_0

    .line 2051
    if-nez p3, :cond_2

    iget v2, v2, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    const/16 v3, 0x44

    if-ne v2, v3, :cond_2

    .line 2053
    iget-object v2, p0, Lcom/android/exchange/SyncManager;->mServiceMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/exchange/AbstractSyncService;

    .line 2054
    if-eqz v1, :cond_1

    .line 2055
    invoke-virtual {v1}, Lcom/android/exchange/AbstractSyncService;->stop()V

    .line 2057
    :cond_1
    const-string v1, "EAS SyncManager"

    const-string v2, "Stopped EAS service"

    invoke-static {v1, v2}, Lcom/android/exchange/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2089
    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2062
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/android/exchange/SyncManager;->mServiceMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/exchange/AbstractSyncService;

    .line 2063
    if-eqz v2, :cond_7

    .line 2065
    instance-of v3, v2, Lcom/android/exchange/EasSyncService;

    if-eqz v3, :cond_5

    .line 2066
    move-object v0, v2

    check-cast v0, Lcom/android/exchange/EasSyncService;

    move-object v3, v0

    .line 2068
    iget-object v7, v3, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget v7, v7, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    const/16 v8, 0x41

    if-eq v7, v8, :cond_3

    iget-object v7, v3, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget v7, v7, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    const/16 v8, 0x42

    if-eq v7, v8, :cond_3

    iget-object v7, v3, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget v7, v7, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    const/16 v8, 0x43

    if-eq v7, v8, :cond_3

    iget-object v7, v3, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget v7, v7, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    const/16 v8, 0x45

    if-ne v7, v8, :cond_5

    :cond_3
    iget-object v7, v3, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-object v7, v7, Lcom/android/email/provider/EmailContent$Mailbox;->mSyncKey:Ljava/lang/String;

    if-eqz v7, :cond_4

    iget-object v3, v3, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-object v3, v3, Lcom/android/email/provider/EmailContent$Mailbox;->mSyncKey:Ljava/lang/String;

    const-string v7, "0"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2070
    :cond_4
    const-string v1, "stopAccountSyncs(): Calendar/Contacts doing initial sync. Continuing without stopping..."

    invoke-static {v1}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2075
    :cond_5
    invoke-virtual {v2}, Lcom/android/exchange/AbstractSyncService;->stop()V

    .line 2076
    iget-object v3, v2, Lcom/android/exchange/AbstractSyncService;->mThread:Ljava/lang/Thread;

    .line 2077
    if-eqz v3, :cond_6

    .line 2078
    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 2080
    :cond_6
    const-string v3, "EAS SyncManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Stopped service for mailbox, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v2, v2, Lcom/android/exchange/AbstractSyncService;->mMailboxName:Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/exchange/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2082
    :cond_7
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2086
    :cond_8
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 2087
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-direct {p0, v5, v6}, Lcom/android/exchange/SyncManager;->releaseMailbox(J)V

    goto :goto_1

    .line 2089
    :cond_9
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2090
    return-void
.end method

.method private static stopManualSync(J)V
    .locals 5
    .parameter

    .prologue
    .line 3508
    sget-object v1, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    .line 3509
    if-nez v1, :cond_0

    .line 3519
    :goto_0
    return-void

    .line 3510
    :cond_0
    sget-object v2, Lcom/android/exchange/SyncManager;->sSyncLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3511
    :try_start_0
    iget-object v0, v1, Lcom/android/exchange/SyncManager;->mServiceMap:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exchange/AbstractSyncService;

    .line 3512
    if-eqz v0, :cond_1

    .line 3513
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

    .line 3514
    invoke-virtual {v0}, Lcom/android/exchange/AbstractSyncService;->stop()V

    .line 3515
    iget-object v0, v0, Lcom/android/exchange/AbstractSyncService;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 3516
    invoke-virtual {v1, p0, p1}, Lcom/android/exchange/SyncManager;->releaseWakeLock(J)V

    .line 3518
    :cond_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private stopPing(J)V
    .locals 8
    .parameter

    .prologue
    .line 2779
    sget-object v1, Lcom/android/exchange/SyncManager;->sSyncLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2780
    :try_start_0
    iget-object v0, p0, Lcom/android/exchange/SyncManager;->mServiceMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 2781
    invoke-static {p0, v3, v4}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v0

    .line 2782
    if-eqz v0, :cond_0

    .line 2783
    iget-object v5, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mServerId:Ljava/lang/String;

    .line 2784
    iget-wide v6, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    cmp-long v0, v6, p1

    if-nez v0, :cond_0

    if-eqz v5, :cond_0

    const-string v0, "__eas"

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2787
    iget-object v0, p0, Lcom/android/exchange/SyncManager;->mServiceMap:Ljava/util/HashMap;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exchange/AbstractSyncService;

    .line 2788
    invoke-virtual {v0}, Lcom/android/exchange/AbstractSyncService;->reset()V

    goto :goto_0

    .line 2792
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2793
    return-void
.end method

.method private stopServiceThreads()V
    .locals 6

    .prologue
    .line 2825
    sget-object v2, Lcom/android/exchange/SyncManager;->sSyncLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2826
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2829
    iget-object v0, p0, Lcom/android/exchange/SyncManager;->mServiceMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 2830
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2845
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2834
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 2835
    iget-object v1, p0, Lcom/android/exchange/SyncManager;->mServiceMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/exchange/AbstractSyncService;

    .line 2836
    if-eqz v1, :cond_1

    .line 2837
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stopping "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v5, v5, Lcom/android/email/provider/EmailContent$Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x2f

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-object v5, v5, Lcom/android/email/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;)V

    .line 2838
    invoke-virtual {v1}, Lcom/android/exchange/AbstractSyncService;->stop()V

    .line 2839
    iget-object v4, v1, Lcom/android/exchange/AbstractSyncService;->mThread:Ljava/lang/Thread;

    if-eqz v4, :cond_1

    .line 2840
    iget-object v1, v1, Lcom/android/exchange/AbstractSyncService;->mThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 2843
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/exchange/SyncManager;->releaseWakeLock(J)V

    goto :goto_1

    .line 2845
    :cond_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2846
    return-void
.end method

.method public static unregisterCalendarObservers()V
    .locals 5

    .prologue
    .line 1148
    sget-object v3, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    .line 1149
    .local v3, syncManager:Lcom/android/exchange/SyncManager;
    if-nez v3, :cond_0

    .line 1156
    :goto_0
    return-void

    .line 1150
    :cond_0
    iget-object v2, v3, Lcom/android/exchange/SyncManager;->mResolver:Landroid/content/ContentResolver;

    .line 1152
    .local v2, resolver:Landroid/content/ContentResolver;
    iget-object v4, v3, Lcom/android/exchange/SyncManager;->mCalendarObservers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/exchange/SyncManager$CalendarObserver;

    .line 1153
    .local v1, observer:Lcom/android/exchange/SyncManager$CalendarObserver;
    invoke-virtual {v2, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_1

    .line 1155
    .end local v1           #observer:Lcom/android/exchange/SyncManager$CalendarObserver;
    :cond_1
    iget-object v4, v3, Lcom/android/exchange/SyncManager;->mCalendarObservers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    goto :goto_0
.end method

.method private updateAccountDb(Z)V
    .locals 13
    .parameter

    .prologue
    const-string v12, "James"

    const-string v0, " db interval=["

    const-string v0, "updateAccountDb(): "

    const-string v0, "EAS SyncManager"

    const-string v0, "]"

    .line 3924
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/android/exchange/SyncManager;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 3925
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v2

    .line 3926
    const-wide/32 v0, 0x5265c00

    .line 3929
    invoke-static {}, Lcom/android/exchange/SyncManager;->getAccountList()Lcom/android/exchange/SyncManager$AccountList;

    move-result-object v3

    .line 3931
    monitor-enter v3

    .line 3932
    :try_start_0
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-wide v5, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/provider/EmailContent$Account;

    .line 3933
    iget-object v1, v0, Lcom/android/email/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/email/provider/EmailContent$HostAuth;

    iget-object v1, v1, Lcom/android/email/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    const-string v7, "eas"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3934
    invoke-virtual {v0}, Lcom/android/email/provider/EmailContent$Account;->getSyncScheduleData()Lcom/android/exchange/SyncScheduleData;

    move-result-object v7

    .line 3935
    invoke-static {v7}, Lcom/android/exchange/SyncScheduler;->getIsPeakAndNextAlarm(Lcom/android/exchange/SyncScheduleData;)Landroid/util/Pair;

    move-result-object v1

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    .line 3936
    invoke-static {v7}, Lcom/android/exchange/SyncScheduler;->getIsPeakAndNextAlarm(Lcom/android/exchange/SyncScheduleData;)Landroid/util/Pair;

    move-result-object v1

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 3938
    cmp-long v1, v9, v5

    if-gtz v1, :cond_1

    .line 3940
    sget-boolean v1, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v1, :cond_0

    .line 3941
    const-string v1, "James"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Final nextAlarmForPeak = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/android/exchange/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-wide v5, v9

    .line 3943
    :cond_1
    if-eqz v2, :cond_4

    invoke-virtual {v7}, Lcom/android/exchange/SyncScheduleData;->getRoamingSchedule()I

    move-result v1

    if-nez v1, :cond_4

    .line 3945
    const/4 v1, -0x1

    .line 3946
    sget-boolean v7, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v7, :cond_2

    .line 3947
    const-string v7, "EAS SyncManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateAccountDb(): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Lcom/android/email/provider/EmailContent$Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": in roaming manual=["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " db interval=["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v0, Lcom/android/email/provider/EmailContent$Account;->mSyncInterval:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/exchange/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3961
    :cond_2
    :goto_1
    iget v7, v0, Lcom/android/email/provider/EmailContent$Account;->mSyncInterval:I

    if-eq v7, v1, :cond_3

    iget-object v7, v0, Lcom/android/email/provider/EmailContent$Account;->mSyncKey:Ljava/lang/String;

    if-eqz v7, :cond_3

    iget-object v7, v0, Lcom/android/email/provider/EmailContent$Account;->mSyncKey:Ljava/lang/String;

    const-string v8, "0"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 3963
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 3964
    const-string v8, "syncInterval"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3965
    invoke-static {}, Lcom/android/exchange/SyncManager;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v0, v8, v7}, Lcom/android/email/provider/EmailContent$Account;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 3967
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    .line 3968
    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string v9, "HH:mm"

    invoke-direct {v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 3969
    sget-boolean v9, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v9, :cond_3

    .line 3970
    const-string v9, "EAS SyncManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updateAccountDb(): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Lcom/android/email/provider/EmailContent$Account;->getDisplayName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "peak-offpeak/roaming switching - update db at ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v8, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " new=["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, "] old=["

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, v0, Lcom/android/email/provider/EmailContent$Account;->mSyncInterval:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/android/exchange/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move-wide v0, v5

    move-wide v5, v0

    .line 3973
    goto/16 :goto_0

    .line 3948
    :cond_4
    if-eqz v8, :cond_5

    .line 3950
    invoke-virtual {v7}, Lcom/android/exchange/SyncScheduleData;->getPeakSchedule()I

    move-result v1

    .line 3951
    sget-boolean v7, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v7, :cond_2

    .line 3952
    const-string v7, "EAS SyncManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateAccountDb(): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Lcom/android/email/provider/EmailContent$Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": in peak=["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " db interval=["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v0, Lcom/android/email/provider/EmailContent$Account;->mSyncInterval:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/exchange/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3975
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 3955
    :cond_5
    :try_start_1
    invoke-virtual {v7}, Lcom/android/exchange/SyncScheduleData;->getOffPeakSchedule()I

    move-result v1

    .line 3956
    sget-boolean v7, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v7, :cond_2

    .line 3957
    const-string v7, "EAS SyncManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateAccountDb(): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Lcom/android/email/provider/EmailContent$Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": in offpeak=["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " db interval=["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v0, Lcom/android/email/provider/EmailContent$Account;->mSyncInterval:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/exchange/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3975
    :cond_6
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3976
    if-nez p1, :cond_9

    .line 3977
    sget-boolean v0, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v0, :cond_7

    .line 3978
    const-string v0, "James"

    const-string v0, "UpdateAccountDb() : calling thread for WAIT!"

    invoke-static {v12, v0}, Lcom/android/exchange/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3979
    :cond_7
    sget-object v0, Lcom/android/exchange/SyncManager;->mInstance_UpdateAccountHearbeat:Lcom/android/exchange/SyncManager$syncManager_UpdateAccountHearbeat;

    if-eqz v0, :cond_8

    .line 3981
    sget-object v0, Lcom/android/exchange/SyncManager;->mInstance_UpdateAccountHearbeat:Lcom/android/exchange/SyncManager$syncManager_UpdateAccountHearbeat;

    monitor-enter v0

    .line 3982
    :try_start_2
    sget-object v1, Lcom/android/exchange/SyncManager;->mInstance_UpdateAccountHearbeat:Lcom/android/exchange/SyncManager$syncManager_UpdateAccountHearbeat;

    invoke-virtual {v1}, Lcom/android/exchange/SyncManager$syncManager_UpdateAccountHearbeat;->setFlag()V

    .line 3983
    sget-object v1, Lcom/android/exchange/SyncManager;->mInstance_UpdateAccountHearbeat:Lcom/android/exchange/SyncManager$syncManager_UpdateAccountHearbeat;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 3984
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3986
    :cond_8
    new-instance v0, Lcom/android/exchange/SyncManager$syncManager_UpdateAccountHearbeat;

    invoke-direct {v0, p0, v5, v6}, Lcom/android/exchange/SyncManager$syncManager_UpdateAccountHearbeat;-><init>(Lcom/android/exchange/SyncManager;J)V

    sput-object v0, Lcom/android/exchange/SyncManager;->mInstance_UpdateAccountHearbeat:Lcom/android/exchange/SyncManager$syncManager_UpdateAccountHearbeat;

    .line 3987
    sget-object v0, Lcom/android/exchange/SyncManager;->mInstance_UpdateAccountHearbeat:Lcom/android/exchange/SyncManager$syncManager_UpdateAccountHearbeat;

    const-string v1, "updateAccountDB"

    invoke-virtual {v0, v1}, Lcom/android/exchange/SyncManager$syncManager_UpdateAccountHearbeat;->setName(Ljava/lang/String;)V

    .line 3988
    sget-object v0, Lcom/android/exchange/SyncManager;->mInstance_UpdateAccountHearbeat:Lcom/android/exchange/SyncManager$syncManager_UpdateAccountHearbeat;

    invoke-virtual {v0}, Lcom/android/exchange/SyncManager$syncManager_UpdateAccountHearbeat;->start()V

    .line 3990
    :cond_9
    return-void

    .line 3984
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method static updateBadgeProvider(Landroid/content/ContentResolver;)V
    .locals 5
    .parameter

    .prologue
    .line 2580
    invoke-static {p0}, Lcom/android/exchange/SyncManager;->getCountofAccounts(Landroid/content/ContentResolver;)I

    move-result v0

    .line 2581
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2582
    const-string v2, "package"

    const-string v3, "com.android.email"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2583
    const-string v2, "class"

    const-string v3, "com.android.email.activity.Welcome"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2584
    const-string v2, "badgecount"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2585
    const-string v2, "package=\'com.android.email\' AND class=\'com.android.email.activity.Welcome\'"

    .line 2586
    const-string v3, "content://com.sec.badge/apps"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v1, v2, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2587
    const-string v1, "EAS SyncManager"

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

    .line 2588
    return-void
.end method

.method private updatePIMSyncSettings(Lcom/android/email/provider/EmailContent$Account;ILjava/lang/String;)V
    .locals 12
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v11, 0x0

    const/4 v7, -0x1

    const-string v10, "Sync for "

    const-string v9, " in "

    const-string v8, "syncInterval"

    .line 2385
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2386
    iget-wide v1, p1, Lcom/android/email/provider/EmailContent;->mId:J

    invoke-static {p0, v1, v2, p2}, Lcom/android/email/provider/EmailContent$Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v1

    .line 2389
    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    .line 2391
    new-instance v3, Landroid/accounts/Account;

    iget-object v4, p1, Lcom/android/email/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    const-string v5, "com.android.exchange"

    invoke-direct {v3, v4, v5}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2395
    invoke-static {p0, v1, v2}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v4

    .line 2396
    if-nez v4, :cond_1

    .line 2428
    :cond_0
    :goto_0
    return-void

    .line 2397
    :cond_1
    iget v5, v4, Lcom/android/email/provider/EmailContent$Mailbox;->mSyncInterval:I

    .line 2399
    invoke-static {v3, p3}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_4

    .line 2401
    invoke-static {v3, p3}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2403
    invoke-virtual {p1}, Lcom/android/email/provider/EmailContent$Account;->getSyncInterval()I

    move-result v6

    if-eq v6, v5, :cond_2

    .line 2405
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Sync for "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v4, v4, Lcom/android/email/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": SyncInterval="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/email/provider/EmailContent$Account;->getSyncInterval()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;)V

    .line 2406
    const-string v3, "syncInterval"

    invoke-virtual {p1}, Lcom/android/email/provider/EmailContent$Account;->getSyncInterval()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v8, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2421
    :cond_2
    :goto_1
    const-string v3, "syncInterval"

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/exchange/SyncManager;->mResolver:Landroid/content/ContentResolver;

    if-eqz v3, :cond_0

    .line 2423
    iget-object v3, p0, Lcom/android/exchange/SyncManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/email/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v3, v1, v0, v11, v11}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2425
    const-string v0, "sync settings change"

    invoke-static {v0}, Lcom/android/exchange/SyncManager;->kick(Ljava/lang/String;)V

    goto :goto_0

    .line 2410
    :cond_3
    if-eq v5, v7, :cond_2

    .line 2411
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Sync for "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v4, v4, Lcom/android/email/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": manual"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;)V

    .line 2412
    const-string v3, "syncInterval"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v8, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    .line 2415
    :cond_4
    if-eq v5, v7, :cond_2

    .line 2416
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Sync for "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v4, v4, Lcom/android/email/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": manual"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;)V

    .line 2417
    const-string v3, "syncInterval"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v8, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_1
.end method

.method private waitForConnectivity()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 2849
    .line 2850
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/android/exchange/SyncManager;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 2852
    :goto_0
    iget-boolean v2, p0, Lcom/android/exchange/SyncManager;->mStop:Z

    if-nez v2, :cond_1

    .line 2853
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 2855
    if-eqz v2, :cond_0

    .line 2856
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ActiveNetworkInfo:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", State:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/NetworkInfo$State;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", DetailedState:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/NetworkInfo$DetailedState;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;)V

    .line 2859
    :cond_0
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v2, v3, :cond_2

    .line 2865
    if-eqz v1, :cond_1

    .line 2867
    const/4 v0, 0x0

    invoke-virtual {p0, p0, v7, v0}, Lcom/android/exchange/SyncManager;->releaseSyncHolds(Landroid/content/Context;ILcom/android/email/provider/EmailContent$Account;)V

    .line 2869
    invoke-direct {p0}, Lcom/android/exchange/SyncManager;->logSyncHolds()V

    .line 2896
    :cond_1
    return-void

    .line 2874
    :cond_2
    if-nez v1, :cond_3

    .line 2876
    invoke-direct {p0}, Lcom/android/exchange/SyncManager;->stopServiceThreads()V

    move v1, v7

    .line 2880
    :cond_3
    sget-object v2, Lcom/android/exchange/SyncManager;->sConnectivityLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2881
    const-wide/16 v3, -0x1

    const-wide/32 v5, 0x93b48

    :try_start_0
    invoke-static {v3, v4, v5, v6}, Lcom/android/exchange/SyncManager;->runAsleep(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2883
    :try_start_1
    const-string v3, "Connectivity lock..."

    invoke-static {v3}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;)V

    .line 2884
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/exchange/SyncManager;->sConnectivityHold:Z

    .line 2885
    sget-object v3, Lcom/android/exchange/SyncManager;->sConnectivityLock:Ljava/lang/Object;

    const-wide/32 v4, 0x927c0

    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 2886
    const-string v3, "Connectivity lock released..."

    invoke-static {v3}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2890
    const/4 v3, 0x0

    :try_start_2
    sput-boolean v3, Lcom/android/exchange/SyncManager;->sConnectivityHold:Z

    .line 2892
    :goto_1
    const-wide/16 v3, -0x1

    invoke-static {v3, v4}, Lcom/android/exchange/SyncManager;->runAwake(J)V

    .line 2893
    monitor-exit v2

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 2890
    :catchall_1
    move-exception v0

    const/4 v1, 0x0

    :try_start_3
    sput-boolean v1, Lcom/android/exchange/SyncManager;->sConnectivityHold:Z

    throw v0

    .line 2887
    :catch_0
    move-exception v3

    .line 2890
    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/exchange/SyncManager;->sConnectivityHold:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method maybeStartSyncManagerThread()V
    .locals 3

    .prologue
    .line 1842
    sget-object v0, Lcom/android/email/provider/EmailContent$HostAuth;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "protocol=\"eas\""

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/android/email/provider/EmailContent;->count(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    .line 1843
    sget-object v0, Lcom/android/exchange/SyncManager;->sServiceThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/exchange/SyncManager;->sServiceThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1844
    :cond_0
    sget-object v0, Lcom/android/exchange/SyncManager;->sServiceThread:Ljava/lang/Thread;

    if-nez v0, :cond_2

    const-string v0, "Starting thread..."

    :goto_0
    invoke-static {v0}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;)V

    .line 1845
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "SyncManager"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    sput-object v0, Lcom/android/exchange/SyncManager;->sServiceThread:Ljava/lang/Thread;

    .line 1846
    sget-object v0, Lcom/android/exchange/SyncManager;->sServiceThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1849
    :cond_1
    return-void

    .line 1844
    :cond_2
    const-string v0, "Restarting thread..."

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 1707
    iget-object v0, p0, Lcom/android/exchange/SyncManager;->mBinder:Lcom/android/email/service/IEmailService$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 6

    .prologue
    .line 1734
    const-string v2, "!!! EAS SyncManager, onCreate"

    invoke-static {v2}, Lcom/android/exchange/SyncManager;->alwaysLog(Ljava/lang/String;)V

    .line 1735
    sget-object v2, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    if-nez v2, :cond_1

    .line 1736
    sput-object p0, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    .line 1737
    invoke-virtual {p0}, Lcom/android/exchange/SyncManager;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exchange/SyncManager;->mResolver:Landroid/content/ContentResolver;

    .line 1738
    new-instance v2, Lcom/android/exchange/SyncManager$AccountObserver;

    iget-object v3, p0, Lcom/android/exchange/SyncManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/android/exchange/SyncManager$AccountObserver;-><init>(Lcom/android/exchange/SyncManager;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/exchange/SyncManager;->mAccountObserver:Lcom/android/exchange/SyncManager$AccountObserver;

    .line 1739
    iget-object v2, p0, Lcom/android/exchange/SyncManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/email/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/exchange/SyncManager;->mAccountObserver:Lcom/android/exchange/SyncManager$AccountObserver;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1740
    new-instance v2, Lcom/android/exchange/SyncManager$MailboxObserver;

    iget-object v3, p0, Lcom/android/exchange/SyncManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/android/exchange/SyncManager$MailboxObserver;-><init>(Lcom/android/exchange/SyncManager;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/exchange/SyncManager;->mMailboxObserver:Lcom/android/exchange/SyncManager$MailboxObserver;

    .line 1742
    new-instance v2, Lcom/android/exchange/SyncManager$NotesObserver;

    iget-object v3, p0, Lcom/android/exchange/SyncManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/android/exchange/SyncManager$NotesObserver;-><init>(Lcom/android/exchange/SyncManager;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/exchange/SyncManager;->mNotesObserver:Lcom/android/exchange/SyncManager$NotesObserver;

    .line 1744
    new-instance v2, Lcom/android/exchange/SyncManager$SyncedMessageObserver;

    iget-object v3, p0, Lcom/android/exchange/SyncManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/android/exchange/SyncManager$SyncedMessageObserver;-><init>(Lcom/android/exchange/SyncManager;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/exchange/SyncManager;->mSyncedMessageObserver:Lcom/android/exchange/SyncManager$SyncedMessageObserver;

    .line 1745
    new-instance v2, Lcom/android/exchange/SyncManager$MessageObserver;

    iget-object v3, p0, Lcom/android/exchange/SyncManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/android/exchange/SyncManager$MessageObserver;-><init>(Lcom/android/exchange/SyncManager;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/exchange/SyncManager;->mMessageObserver:Lcom/android/exchange/SyncManager$MessageObserver;

    .line 1746
    new-instance v2, Lcom/android/exchange/SyncManager$EasSyncStatusObserver;

    invoke-direct {v2, p0}, Lcom/android/exchange/SyncManager$EasSyncStatusObserver;-><init>(Lcom/android/exchange/SyncManager;)V

    iput-object v2, p0, Lcom/android/exchange/SyncManager;->mSyncStatusObserver:Lcom/android/exchange/SyncManager$EasSyncStatusObserver;

    .line 1749
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Lcom/android/exchange/SyncManager;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 1750
    .local v1, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/exchange/SyncManager;->mIsNetworkRoaming:Z

    .line 1752
    new-instance v2, Lcom/android/exchange/SyncManager$4;

    invoke-direct {v2, p0}, Lcom/android/exchange/SyncManager$4;-><init>(Lcom/android/exchange/SyncManager;)V

    iput-object v2, p0, Lcom/android/exchange/SyncManager;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 1774
    :try_start_0
    sget-object v2, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    invoke-static {v2}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/email/SecurityPolicy;->setActivePoliciesAtSystemProperties()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1781
    :goto_0
    iget-object v2, p0, Lcom/android/exchange/SyncManager;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v2}, Lcom/android/exchange/SyncManager;->insertBadgeProvider(Landroid/content/ContentResolver;)V

    .line 1782
    iget-object v2, p0, Lcom/android/exchange/SyncManager;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v2}, Lcom/android/exchange/SyncManager;->updateBadgeProvider(Landroid/content/ContentResolver;)V

    .line 1788
    .end local v1           #tm:Landroid/telephony/TelephonyManager;
    :goto_1
    sget-object v2, Lcom/android/exchange/SyncManager;->sDeviceId:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 1790
    :try_start_1
    invoke-static {p0}, Lcom/android/exchange/SyncManager;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1798
    :cond_0
    invoke-direct {p0}, Lcom/android/exchange/SyncManager;->runAccountReconciler()V

    .line 1799
    return-void

    .line 1777
    .restart local v1       #tm:Landroid/telephony/TelephonyManager;
    :catchall_0
    move-exception v2

    throw v2

    .line 1786
    .end local v1           #tm:Landroid/telephony/TelephonyManager;
    :cond_1
    const-string v2, "!!! EAS SyncManager onCreated, but INSTANCE not null??"

    invoke-static {v2}, Lcom/android/exchange/SyncManager;->alwaysLog(Ljava/lang/String;)V

    goto :goto_1

    .line 1791
    :catch_0
    move-exception v0

    .line 1793
    .local v0, e:Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    throw v2

    .line 1775
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

    .line 1818
    const-string v0, "!!! EAS SyncManager, onDestroy"

    invoke-static {v0}, Lcom/android/exchange/SyncManager;->alwaysLog(Ljava/lang/String;)V

    .line 1819
    sget-object v0, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    if-eqz v0, :cond_0

    .line 1820
    sput-object v2, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    .line 1821
    iget-object v0, p0, Lcom/android/exchange/SyncManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/exchange/SyncManager;->mAccountObserver:Lcom/android/exchange/SyncManager$AccountObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1822
    invoke-static {}, Lcom/android/exchange/SyncManager;->unregisterCalendarObservers()V

    .line 1823
    iput-object v2, p0, Lcom/android/exchange/SyncManager;->mResolver:Landroid/content/ContentResolver;

    .line 1824
    iput-object v2, p0, Lcom/android/exchange/SyncManager;->mAccountObserver:Lcom/android/exchange/SyncManager$AccountObserver;

    .line 1825
    iput-object v2, p0, Lcom/android/exchange/SyncManager;->mMailboxObserver:Lcom/android/exchange/SyncManager$MailboxObserver;

    .line 1827
    iput-object v2, p0, Lcom/android/exchange/SyncManager;->mNotesObserver:Lcom/android/exchange/SyncManager$NotesObserver;

    .line 1829
    iput-object v2, p0, Lcom/android/exchange/SyncManager;->mSyncedMessageObserver:Lcom/android/exchange/SyncManager$SyncedMessageObserver;

    .line 1830
    iput-object v2, p0, Lcom/android/exchange/SyncManager;->mMessageObserver:Lcom/android/exchange/SyncManager$MessageObserver;

    .line 1831
    iput-object v2, p0, Lcom/android/exchange/SyncManager;->mSyncStatusObserver:Lcom/android/exchange/SyncManager$EasSyncStatusObserver;

    .line 1832
    iput-object v2, p0, Lcom/android/exchange/SyncManager;->mAccountsUpdatedListener:Lcom/android/exchange/SyncManager$EasAccountsUpdatedListener;

    .line 1834
    iput-object v2, p0, Lcom/android/exchange/SyncManager;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 1837
    :cond_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 1803
    const-string v0, "!!! EAS SyncManager, onStartCommand"

    invoke-static {v0}, Lcom/android/exchange/SyncManager;->alwaysLog(Ljava/lang/String;)V

    .line 1808
    invoke-virtual {p0}, Lcom/android/exchange/SyncManager;->maybeStartSyncManagerThread()V

    .line 1809
    sget-object v0, Lcom/android/exchange/SyncManager;->sServiceThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 1810
    const-string v0, "!!! EAS SyncManager, stopping self"

    invoke-static {v0}, Lcom/android/exchange/SyncManager;->alwaysLog(Ljava/lang/String;)V

    .line 1811
    invoke-virtual {p0}, Lcom/android/exchange/SyncManager;->stopSelf()V

    .line 1813
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
    .line 1459
    invoke-direct {p0, p1, p2, p3}, Lcom/android/exchange/SyncManager;->releaseSyncHoldsImpl(Landroid/content/Context;ILcom/android/email/provider/EmailContent$Account;)V

    .line 1460
    const-string v0, "security release"

    invoke-static {v0}, Lcom/android/exchange/SyncManager;->kick(Ljava/lang/String;)V

    .line 1461
    return-void
.end method

.method public releaseWakeLock(J)V
    .locals 4
    .parameter "id"

    .prologue
    .line 2206
    iget-object v1, p0, Lcom/android/exchange/SyncManager;->mWakeLocks:Ljava/util/HashMap;

    monitor-enter v1

    .line 2207
    :try_start_0
    iget-object v2, p0, Lcom/android/exchange/SyncManager;->mWakeLocks:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 2208
    .local v0, lock:Ljava/lang/Boolean;
    if-eqz v0, :cond_1

    .line 2209
    iget-object v2, p0, Lcom/android/exchange/SyncManager;->mWakeLocks:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2210
    iget-object v2, p0, Lcom/android/exchange/SyncManager;->mWakeLocks:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2211
    iget-object v2, p0, Lcom/android/exchange/SyncManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_0

    .line 2212
    iget-object v2, p0, Lcom/android/exchange/SyncManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2214
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/exchange/SyncManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 2219
    :cond_1
    monitor-exit v1

    .line 2220
    return-void

    .line 2219
    .end local v0           #lock:Ljava/lang/Boolean;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public run()V
    .locals 9

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    const-string v8, "phone"

    const-string v5, "EAS SyncManager"

    .line 2899
    iput-boolean v6, p0, Lcom/android/exchange/SyncManager;->mStop:Z

    .line 2902
    sget-boolean v0, Lcom/android/exchange/Eas;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2903
    sput-boolean v4, Lcom/android/exchange/Eas;->USER_LOG:Z

    .line 2904
    sput-boolean v4, Lcom/android/exchange/Eas;->PARSER_LOG:Z

    .line 2905
    sput-boolean v4, Lcom/android/exchange/Eas;->FILE_LOG:Z

    .line 2909
    :cond_0
    sget-boolean v0, Lcom/android/exchange/Eas;->WAIT_DEBUG:Z

    if-eqz v0, :cond_1

    .line 2910
    invoke-static {}, Landroid/os/Debug;->waitForDebugger()V

    .line 2918
    :cond_1
    iget-object v0, p0, Lcom/android/exchange/SyncManager;->mResolver:Landroid/content/ContentResolver;

    if-nez v0, :cond_3

    .line 3075
    :cond_2
    return-void

    .line 2922
    :cond_3
    sget-object v0, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    if-eqz v0, :cond_2

    .line 2923
    iget-object v0, p0, Lcom/android/exchange/SyncManager;->mMailboxObserver:Lcom/android/exchange/SyncManager$MailboxObserver;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/exchange/SyncManager;->mSyncedMessageObserver:Lcom/android/exchange/SyncManager$SyncedMessageObserver;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/exchange/SyncManager;->mMessageObserver:Lcom/android/exchange/SyncManager$MessageObserver;

    if-eqz v0, :cond_2

    .line 2926
    :try_start_0
    iget-object v0, p0, Lcom/android/exchange/SyncManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/email/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/exchange/SyncManager;->mMailboxObserver:Lcom/android/exchange/SyncManager$MailboxObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2927
    iget-object v0, p0, Lcom/android/exchange/SyncManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/email/provider/EmailContent$Message;->SYNCED_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/exchange/SyncManager;->mSyncedMessageObserver:Lcom/android/exchange/SyncManager$SyncedMessageObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2928
    iget-object v0, p0, Lcom/android/exchange/SyncManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/exchange/SyncManager;->mMessageObserver:Lcom/android/exchange/SyncManager$MessageObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2929
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/exchange/SyncManager;->mSyncStatusObserver:Lcom/android/exchange/SyncManager$EasSyncStatusObserver;

    invoke-static {v0, v1}, Landroid/content/ContentResolver;->addStatusChangeListener(ILandroid/content/SyncStatusObserver;)Ljava/lang/Object;

    .line 2931
    new-instance v0, Lcom/android/exchange/SyncManager$EasAccountsUpdatedListener;

    invoke-direct {v0, p0}, Lcom/android/exchange/SyncManager$EasAccountsUpdatedListener;-><init>(Lcom/android/exchange/SyncManager;)V

    iput-object v0, p0, Lcom/android/exchange/SyncManager;->mAccountsUpdatedListener:Lcom/android/exchange/SyncManager$EasAccountsUpdatedListener;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2938
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/exchange/SyncManager;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exchange/SyncManager;->mAccountsUpdatedListener:Lcom/android/exchange/SyncManager$EasAccountsUpdatedListener;

    iget-object v2, p0, Lcom/android/exchange/SyncManager;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2

    .line 2947
    :goto_1
    new-instance v0, Lcom/android/exchange/SyncManager$ConnectivityReceiver;

    invoke-direct {v0, p0}, Lcom/android/exchange/SyncManager$ConnectivityReceiver;-><init>(Lcom/android/exchange/SyncManager;)V

    iput-object v0, p0, Lcom/android/exchange/SyncManager;->mConnectivityReceiver:Lcom/android/exchange/SyncManager$ConnectivityReceiver;

    .line 2948
    iget-object v0, p0, Lcom/android/exchange/SyncManager;->mConnectivityReceiver:Lcom/android/exchange/SyncManager$ConnectivityReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/exchange/SyncManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2951
    invoke-virtual {p0}, Lcom/android/exchange/SyncManager;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/exchange/SyncManager;->mPhone:Landroid/telephony/TelephonyManager;

    .line 2952
    iget-object v0, p0, Lcom/android/exchange/SyncManager;->mPhone:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_4

    .line 2953
    iget-object v0, p0, Lcom/android/exchange/SyncManager;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/exchange/SyncManager;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 2956
    :cond_4
    new-instance v0, Lcom/android/exchange/SyncManager$ConnectivityReceiver;

    invoke-direct {v0, p0}, Lcom/android/exchange/SyncManager$ConnectivityReceiver;-><init>(Lcom/android/exchange/SyncManager;)V

    iput-object v0, p0, Lcom/android/exchange/SyncManager;->mBackgroundDataSettingReceiver:Lcom/android/exchange/SyncManager$ConnectivityReceiver;

    .line 2957
    iget-object v0, p0, Lcom/android/exchange/SyncManager;->mBackgroundDataSettingReceiver:Lcom/android/exchange/SyncManager$ConnectivityReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.BACKGROUND_DATA_SETTING_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/exchange/SyncManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2960
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/android/exchange/SyncManager;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 2962
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/exchange/SyncManager;->mBackgroundData:Z

    .line 2965
    sget-object v0, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    if-eqz v0, :cond_5

    .line 2966
    invoke-direct {p0}, Lcom/android/exchange/SyncManager;->checkPIMSyncSettings()V

    .line 2970
    :cond_5
    :goto_2
    :try_start_2
    iget-boolean v0, p0, Lcom/android/exchange/SyncManager;->mStop:Z

    if-nez v0, :cond_15

    .line 2971
    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Lcom/android/exchange/SyncManager;->runAwake(J)V

    .line 2972
    invoke-direct {p0}, Lcom/android/exchange/SyncManager;->waitForConnectivity()V

    .line 2973
    const-string v0, "Heartbeat"

    iput-object v0, p0, Lcom/android/exchange/SyncManager;->mNextWaitReason:Ljava/lang/String;

    .line 2978
    const-string v0, "PeakOffPeak"

    sget-object v1, Lcom/android/exchange/SyncManager;->mKickReason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "account changed"

    sget-object v1, Lcom/android/exchange/SyncManager;->mKickReason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2979
    :cond_6
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/exchange/SyncManager;->updateAccountDb(Z)V

    .line 2983
    :cond_7
    invoke-static {p0}, Lcom/android/exchange/security/ode/ODEService;->ODEErrorExist(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2984
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/exchange/security/ode/ODEService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2985
    const-string v1, "startProc"

    const-string v2, "recovery"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2986
    invoke-virtual {p0, v0}, Lcom/android/exchange/SyncManager;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 2990
    :cond_8
    invoke-direct {p0}, Lcom/android/exchange/SyncManager;->checkMailboxes()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-wide v0

    .line 2992
    :try_start_3
    monitor-enter p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3

    .line 2993
    :try_start_4
    iget-boolean v2, p0, Lcom/android/exchange/SyncManager;->mKicked:Z

    if-nez v2, :cond_b

    .line 2994
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_9

    .line 2995
    const-string v0, "Negative wait? Setting to 1s"

    invoke-static {v0}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;)V

    .line 2996
    const-wide/16 v0, 0x3e8

    .line 2998
    :cond_9
    const-wide/16 v2, 0x2710

    cmp-long v2, v0, v2

    if-lez v2, :cond_a

    .line 2999
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Next awake in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-wide/16 v3, 0x3e8

    div-long v3, v0, v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "s: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/exchange/SyncManager;->mNextWaitReason:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;)V

    .line 3000
    const-wide/16 v2, -0x1

    const-wide/16 v4, 0xbb8

    add-long/2addr v4, v0

    invoke-static {v2, v3, v4, v5}, Lcom/android/exchange/SyncManager;->runAsleep(JJ)V

    .line 3002
    :cond_a
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    .line 3004
    :cond_b
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 3008
    :try_start_5
    monitor-enter p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    .line 3009
    :try_start_6
    iget-boolean v0, p0, Lcom/android/exchange/SyncManager;->mKicked:Z

    if-eqz v0, :cond_c

    .line 3011
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exchange/SyncManager;->mKicked:Z

    .line 3013
    :cond_c
    monitor-exit p0

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_0

    .line 3017
    :catch_0
    move-exception v0

    .line 3018
    :try_start_8
    const-string v1, "EAS SyncManager"

    const-string v2, "RuntimeException in SyncManager"

    invoke-static {v1, v2, v0}, Lcom/android/exchange/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3019
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 3021
    :catchall_1
    move-exception v0

    move-object v1, v0

    const-string v0, "Finishing SyncManager"

    invoke-static {v0}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;)V

    .line 3024
    invoke-direct {p0}, Lcom/android/exchange/SyncManager;->stopServiceThreads()V

    .line 3027
    iget-object v0, p0, Lcom/android/exchange/SyncManager;->mConnectivityReceiver:Lcom/android/exchange/SyncManager$ConnectivityReceiver;

    if-eqz v0, :cond_d

    .line 3028
    iget-object v0, p0, Lcom/android/exchange/SyncManager;->mConnectivityReceiver:Lcom/android/exchange/SyncManager$ConnectivityReceiver;

    invoke-virtual {p0, v0}, Lcom/android/exchange/SyncManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3030
    :cond_d
    iget-object v0, p0, Lcom/android/exchange/SyncManager;->mBackgroundDataSettingReceiver:Lcom/android/exchange/SyncManager$ConnectivityReceiver;

    if-eqz v0, :cond_e

    .line 3031
    iget-object v0, p0, Lcom/android/exchange/SyncManager;->mBackgroundDataSettingReceiver:Lcom/android/exchange/SyncManager$ConnectivityReceiver;

    invoke-virtual {p0, v0}, Lcom/android/exchange/SyncManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3034
    :cond_e
    sget-object v0, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    if-eqz v0, :cond_f

    .line 3035
    invoke-virtual {p0}, Lcom/android/exchange/SyncManager;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3036
    iget-object v2, p0, Lcom/android/exchange/SyncManager;->mAccountObserver:Lcom/android/exchange/SyncManager$AccountObserver;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 3037
    iget-object v2, p0, Lcom/android/exchange/SyncManager;->mMailboxObserver:Lcom/android/exchange/SyncManager$MailboxObserver;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 3038
    iget-object v2, p0, Lcom/android/exchange/SyncManager;->mSyncedMessageObserver:Lcom/android/exchange/SyncManager$SyncedMessageObserver;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 3039
    iget-object v2, p0, Lcom/android/exchange/SyncManager;->mMessageObserver:Lcom/android/exchange/SyncManager$MessageObserver;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 3041
    iget-object v2, p0, Lcom/android/exchange/SyncManager;->mNotesObserver:Lcom/android/exchange/SyncManager$NotesObserver;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 3043
    invoke-static {}, Lcom/android/exchange/SyncManager;->unregisterCalendarObservers()V

    .line 3046
    :cond_f
    iget-object v0, p0, Lcom/android/exchange/SyncManager;->mAccountsUpdatedListener:Lcom/android/exchange/SyncManager$EasAccountsUpdatedListener;

    if-eqz v0, :cond_10

    .line 3047
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/exchange/SyncManager;->mAccountsUpdatedListener:Lcom/android/exchange/SyncManager$EasAccountsUpdatedListener;

    invoke-virtual {v0, v2}, Landroid/accounts/AccountManager;->removeOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;)V

    .line 3048
    iput-object v7, p0, Lcom/android/exchange/SyncManager;->mAccountsUpdatedListener:Lcom/android/exchange/SyncManager$EasAccountsUpdatedListener;

    .line 3052
    :cond_10
    invoke-virtual {p0}, Lcom/android/exchange/SyncManager;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "phone"

    invoke-virtual {v0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/exchange/SyncManager;->mPhone:Landroid/telephony/TelephonyManager;

    .line 3053
    iget-object v0, p0, Lcom/android/exchange/SyncManager;->mPhone:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_11

    .line 3054
    iget-object v0, p0, Lcom/android/exchange/SyncManager;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/exchange/SyncManager;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v2, v6}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 3058
    :cond_11
    invoke-direct {p0}, Lcom/android/exchange/SyncManager;->clearAlarms()V

    .line 3061
    iget-object v0, p0, Lcom/android/exchange/SyncManager;->mWakeLocks:Ljava/util/HashMap;

    monitor-enter v0

    .line 3062
    :try_start_9
    iget-object v2, p0, Lcom/android/exchange/SyncManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_12

    .line 3063
    iget-object v2, p0, Lcom/android/exchange/SyncManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 3064
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/exchange/SyncManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 3066
    :cond_12
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 3068
    const-string v0, "Goodbye"

    invoke-static {v0}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;)V

    .line 3021
    throw v1

    .line 2932
    :catch_1
    move-exception v0

    .line 2933
    const-string v1, "EAS SyncManager"

    const-string v1, "NullPointerException in SyncManager"

    invoke-static {v5, v1, v0}, Lcom/android/exchange/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 2940
    :catch_2
    move-exception v0

    .line 2943
    const-string v0, "EAS SyncManager"

    const-string v0, "Adding AcccountsUpdatedListener FAILURE"

    invoke-static {v5, v0}, Lcom/android/exchange/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3004
    :catchall_2
    move-exception v0

    :try_start_a
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_3

    .line 3005
    :catch_3
    move-exception v0

    .line 3008
    :try_start_c
    monitor-enter p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_0

    .line 3009
    :try_start_d
    iget-boolean v0, p0, Lcom/android/exchange/SyncManager;->mKicked:Z

    if-eqz v0, :cond_13

    .line 3011
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exchange/SyncManager;->mKicked:Z

    .line 3013
    :cond_13
    monitor-exit p0

    goto/16 :goto_2

    :catchall_3
    move-exception v0

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :try_start_e
    throw v0

    .line 3008
    :catchall_4
    move-exception v0

    monitor-enter p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_0

    .line 3009
    :try_start_f
    iget-boolean v1, p0, Lcom/android/exchange/SyncManager;->mKicked:Z

    if-eqz v1, :cond_14

    .line 3011
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/exchange/SyncManager;->mKicked:Z

    .line 3013
    :cond_14
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    .line 3008
    :try_start_10
    throw v0

    .line 3016
    :cond_15
    const-string v0, "Shutdown requested"

    invoke-static {v0}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_0

    .line 3021
    const-string v0, "Finishing SyncManager"

    invoke-static {v0}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;)V

    .line 3024
    invoke-direct {p0}, Lcom/android/exchange/SyncManager;->stopServiceThreads()V

    .line 3027
    iget-object v0, p0, Lcom/android/exchange/SyncManager;->mConnectivityReceiver:Lcom/android/exchange/SyncManager$ConnectivityReceiver;

    if-eqz v0, :cond_16

    .line 3028
    iget-object v0, p0, Lcom/android/exchange/SyncManager;->mConnectivityReceiver:Lcom/android/exchange/SyncManager$ConnectivityReceiver;

    invoke-virtual {p0, v0}, Lcom/android/exchange/SyncManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3030
    :cond_16
    iget-object v0, p0, Lcom/android/exchange/SyncManager;->mBackgroundDataSettingReceiver:Lcom/android/exchange/SyncManager$ConnectivityReceiver;

    if-eqz v0, :cond_17

    .line 3031
    iget-object v0, p0, Lcom/android/exchange/SyncManager;->mBackgroundDataSettingReceiver:Lcom/android/exchange/SyncManager$ConnectivityReceiver;

    invoke-virtual {p0, v0}, Lcom/android/exchange/SyncManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3034
    :cond_17
    sget-object v0, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    if-eqz v0, :cond_18

    .line 3035
    invoke-virtual {p0}, Lcom/android/exchange/SyncManager;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3036
    iget-object v1, p0, Lcom/android/exchange/SyncManager;->mAccountObserver:Lcom/android/exchange/SyncManager$AccountObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 3037
    iget-object v1, p0, Lcom/android/exchange/SyncManager;->mMailboxObserver:Lcom/android/exchange/SyncManager$MailboxObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 3038
    iget-object v1, p0, Lcom/android/exchange/SyncManager;->mSyncedMessageObserver:Lcom/android/exchange/SyncManager$SyncedMessageObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 3039
    iget-object v1, p0, Lcom/android/exchange/SyncManager;->mMessageObserver:Lcom/android/exchange/SyncManager$MessageObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 3041
    iget-object v1, p0, Lcom/android/exchange/SyncManager;->mNotesObserver:Lcom/android/exchange/SyncManager$NotesObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 3043
    invoke-static {}, Lcom/android/exchange/SyncManager;->unregisterCalendarObservers()V

    .line 3046
    :cond_18
    iget-object v0, p0, Lcom/android/exchange/SyncManager;->mAccountsUpdatedListener:Lcom/android/exchange/SyncManager$EasAccountsUpdatedListener;

    if-eqz v0, :cond_19

    .line 3047
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exchange/SyncManager;->mAccountsUpdatedListener:Lcom/android/exchange/SyncManager$EasAccountsUpdatedListener;

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->removeOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;)V

    .line 3048
    iput-object v7, p0, Lcom/android/exchange/SyncManager;->mAccountsUpdatedListener:Lcom/android/exchange/SyncManager$EasAccountsUpdatedListener;

    .line 3052
    :cond_19
    invoke-virtual {p0}, Lcom/android/exchange/SyncManager;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/exchange/SyncManager;->mPhone:Landroid/telephony/TelephonyManager;

    .line 3053
    iget-object v0, p0, Lcom/android/exchange/SyncManager;->mPhone:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1a

    .line 3054
    iget-object v0, p0, Lcom/android/exchange/SyncManager;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/exchange/SyncManager;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v6}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 3058
    :cond_1a
    invoke-direct {p0}, Lcom/android/exchange/SyncManager;->clearAlarms()V

    .line 3061
    iget-object v0, p0, Lcom/android/exchange/SyncManager;->mWakeLocks:Ljava/util/HashMap;

    monitor-enter v0

    .line 3062
    :try_start_11
    iget-object v1, p0, Lcom/android/exchange/SyncManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_1b

    .line 3063
    iget-object v1, p0, Lcom/android/exchange/SyncManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 3064
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/exchange/SyncManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 3066
    :cond_1b
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    .line 3068
    const-string v0, "Goodbye"

    invoke-static {v0}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;)V

    .line 3071
    iget-boolean v0, p0, Lcom/android/exchange/SyncManager;->mStop:Z

    if-nez v0, :cond_2

    .line 3073
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "EAS SyncManager crash; please restart me..."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3066
    :catchall_5
    move-exception v1

    :try_start_12
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    throw v1

    .line 3013
    :catchall_6
    move-exception v0

    :try_start_13
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    :try_start_14
    throw v0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_0

    .line 3066
    :catchall_7
    move-exception v1

    :try_start_15
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_7

    throw v1
.end method
