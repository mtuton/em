.class public Lcom/android/exchange/EasSyncService;
.super Lcom/android/exchange/AbstractSyncService;
.source "EasSyncService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exchange/EasSyncService$1;,
        Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;
    }
.end annotation


# static fields
.field private static final AND_FREQUENCY_PING_PUSH_AND_NOT_ACCOUNT_MAILBOX:Ljava/lang/String; = " AND syncInterval IN (-3,-2) AND type!=\"68\""

.field private static final AUTO_DISCOVER_PAGE:Ljava/lang/String; = "/autodiscover/autodiscover.xml"

.field private static final AUTO_DISCOVER_REDIRECT_CODE:I = 0x1c3

.field private static final AUTO_DISCOVER_SCHEMA_PREFIX:Ljava/lang/String; = "http://schemas.microsoft.com/exchange/autodiscover/mobilesync/"

.field private static final CHUNK_SIZE:I = 0x4000

.field protected static final COMMAND_TIMEOUT:I = 0xea60

.field public static final CONNECTION_TIMEOUT:I = 0x4e20

.field public static final DEBUG_EMAIL_SEARCH_SERVICE:Z = true

.field public static final DEBUG_GAL_SERVICE:Z = false

.field public static final EAS_12_POLICY_TYPE:Ljava/lang/String; = "MS-EAS-Provisioning-WBXML"

.field public static final EAS_2_POLICY_TYPE:Ljava/lang/String; = "MS-WAP-Provisioning-XML"

.field private static final EMAIL_WINDOW_SIZE:Ljava/lang/String; = "50"

.field private static final GETATTACHMENT_DELIMETER:Ljava/lang/String; = ";"

.field private static final HTTP_NEED_PROVISIONING:I = 0x1c1

.field private static final MAX_LOOPING_COUNT:I = 0x64

.field private static final MAX_PING_FAILURES:I = 0x1

.field public static final PIM_WINDOW_SIZE:Ljava/lang/String; = "5"

.field private static final PING_COMMAND:Ljava/lang/String; = "Ping"

.field private static final PING_FALLBACK_INBOX:I = 0x5

.field private static final PING_FALLBACK_PIM:I = 0x19

.field private static final PING_FUDGE_LOW:I = 0xa

.field private static final PING_HEARTBEAT_INCREMENT:I = 0xb4

.field private static final PING_MINUTES:I = 0x3c

.field private static final PING_STARTING_HEARTBEAT:I = 0x1d6

.field private static final POST_LOCK_TIMEOUT:I = 0x2710

.field private static final PROTOCOL_PING_STATUS_COMPLETED:I = 0x1

.field private static final PROVISION_STATUS_OK:Ljava/lang/String; = "1"

.field private static final PROVISION_STATUS_PARTIAL:Ljava/lang/String; = "2"

.field private static final WATCHDOG_TIMEOUT_ALLOWANCE:I = 0x2710

.field private static final WHERE_ACCOUNT_AND_SYNC_INTERVAL_PING:Ljava/lang/String; = "accountKey=? and syncInterval=-3"

.field private static final WHERE_ACCOUNT_KEY_AND_SERVER_ID:Ljava/lang/String; = "accountKey=? and serverId=?"

.field private static final WHERE_PUSH_HOLD_NOT_ACCOUNT_MAILBOX:Ljava/lang/String; = "accountKey=? and syncInterval=-4"

.field static final localTAG:Ljava/lang/String; = "EasSynService"


# instance fields
.field public CollectionId:Ljava/lang/String;

.field public SyncKey:Ljava/lang/String;

.field UserAgentSplited:[Ljava/lang/String;

.field public commandFinished:Z

.field mAuthString:Ljava/lang/String;

.field mAutoDiscInfo:Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;

.field private mBindArguments:[Ljava/lang/String;

.field private mCmdString:Ljava/lang/String;

.field public mContentResolver:Landroid/content/ContentResolver;

.field protected mDeviceId:Ljava/lang/String;

.field mDeviceType:Ljava/lang/String;

.field mDeviceTypeForUserAgent:Ljava/lang/String;

.field public mDomain:Ljava/lang/String;

.field public mHostAddress:Ljava/lang/String;

.field public mIsHTMLDisabled:Z

.field public mIsValid:Z

.field mModelName_DeviceType:Ljava/lang/String;

.field mModelName_UserAgent:Ljava/lang/String;

.field public mPassword:Ljava/lang/String;

.field private volatile mPendingPost:Lorg/apache/http/client/methods/HttpPost;

.field private mPingChangeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mPingForceHeartbeat:I

.field mPingHeartbeat:I

.field mPingHeartbeatDropped:Z

.field private mPingHighWaterMark:I

.field mPingMaxHeartbeat:I

.field mPingMinHeartbeat:I

.field private mPostAborted:Z

.field private mPostReset:Z

.field mProtocolVersion:Ljava/lang/String;

.field public mProtocolVersionDouble:Ljava/lang/Double;

.field private mSsl:Z

.field private mTrustSsl:Z

.field public mUserName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 376
    const-string v0, "EAS Validation"

    invoke-direct {p0, v0}, Lcom/android/exchange/EasSyncService;-><init>(Ljava/lang/String;)V

    .line 377
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "_context"

    .prologue
    const/16 v5, 0x1d6

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 380
    invoke-direct {p0, p1}, Lcom/android/exchange/AbstractSyncService;-><init>(Landroid/content/Context;)V

    .line 270
    const-string v0, "2.5"

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersion:Ljava/lang/String;

    .line 273
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersion:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    .line 277
    iput-object v3, p0, Lcom/android/exchange/EasSyncService;->mDeviceId:Ljava/lang/String;

    .line 282
    const-string v0, "Apple-iPhone3C1"

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mModelName_UserAgent:Ljava/lang/String;

    .line 283
    # const-string v0, "Apple-iPhone3C1"

    # iput-object v0, p0, Lcom/android/exchange/EasSyncService;->UserAgentSplited:[Ljava/lang/String;

    .line 284
    const-string v0, "iPhone"

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mModelName_DeviceType:Ljava/lang/String;

    .line 285
    const-string v0, "iPhone"

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mDeviceType:Ljava/lang/String;

    .line 286
    const-string v0, "Apple-iPhone3C1"

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mDeviceTypeForUserAgent:Ljava/lang/String;

    .line 290
    iput-object v3, p0, Lcom/android/exchange/EasSyncService;->mAuthString:Ljava/lang/String;

    .line 291
    iput-object v3, p0, Lcom/android/exchange/EasSyncService;->mCmdString:Ljava/lang/String;

    .line 299
    iput-boolean v4, p0, Lcom/android/exchange/EasSyncService;->mSsl:Z

    .line 300
    iput-boolean v2, p0, Lcom/android/exchange/EasSyncService;->mTrustSsl:Z

    .line 302
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mBindArguments:[Ljava/lang/String;

    .line 305
    iput-object v3, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    .line 306
    iput-boolean v2, p0, Lcom/android/exchange/EasSyncService;->commandFinished:Z

    .line 308
    const/16 v0, 0x78

    iput v0, p0, Lcom/android/exchange/EasSyncService;->mPingForceHeartbeat:I

    .line 311
    iput v5, p0, Lcom/android/exchange/EasSyncService;->mPingMinHeartbeat:I

    .line 313
    const/16 v0, 0xdca

    iput v0, p0, Lcom/android/exchange/EasSyncService;->mPingMaxHeartbeat:I

    .line 315
    iput v5, p0, Lcom/android/exchange/EasSyncService;->mPingHeartbeat:I

    .line 317
    iput v2, p0, Lcom/android/exchange/EasSyncService;->mPingHighWaterMark:I

    .line 319
    iput-boolean v2, p0, Lcom/android/exchange/EasSyncService;->mPingHeartbeatDropped:Z

    .line 321
    iput-boolean v2, p0, Lcom/android/exchange/EasSyncService;->mPostAborted:Z

    .line 323
    iput-boolean v2, p0, Lcom/android/exchange/EasSyncService;->mPostReset:Z

    .line 325
    iput-boolean v4, p0, Lcom/android/exchange/EasSyncService;->mIsValid:Z

    .line 327
    iput-boolean v2, p0, Lcom/android/exchange/EasSyncService;->mIsHTMLDisabled:Z

    .line 381
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/email/provider/EmailContent$Account;)V
    .locals 7
    .parameter "_context"
    .parameter "_acc"

    .prologue
    const/16 v6, 0x1d6

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 352
    invoke-direct {p0, p1, p2}, Lcom/android/exchange/AbstractSyncService;-><init>(Landroid/content/Context;Lcom/android/email/provider/EmailContent$Account;)V

    .line 270
    const-string v1, "2.5"

    iput-object v1, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersion:Ljava/lang/String;

    .line 273
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersion:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    .line 277
    iput-object v5, p0, Lcom/android/exchange/EasSyncService;->mDeviceId:Ljava/lang/String;

    .line 282
    const-string v1, "Apple-iPhone3C1"

    iput-object v1, p0, Lcom/android/exchange/EasSyncService;->mModelName_UserAgent:Ljava/lang/String;

    .line 283
    # const-string v1, "Apple-iPhone3C1"

    # iput-object v1, p0, Lcom/android/exchange/EasSyncService;->UserAgentSplited:[Ljava/lang/String;

    .line 284
    const-string v1, "iPhone"

    iput-object v1, p0, Lcom/android/exchange/EasSyncService;->mModelName_DeviceType:Ljava/lang/String;

    .line 285
    const-string v1, "iPhone"

    iput-object v1, p0, Lcom/android/exchange/EasSyncService;->mDeviceType:Ljava/lang/String;

    .line 286
    const-string v1, "Apple-iPhone3C1"

    iput-object v1, p0, Lcom/android/exchange/EasSyncService;->mDeviceTypeForUserAgent:Ljava/lang/String;

    .line 290
    iput-object v5, p0, Lcom/android/exchange/EasSyncService;->mAuthString:Ljava/lang/String;

    .line 291
    iput-object v5, p0, Lcom/android/exchange/EasSyncService;->mCmdString:Ljava/lang/String;

    .line 299
    iput-boolean v4, p0, Lcom/android/exchange/EasSyncService;->mSsl:Z

    .line 300
    iput-boolean v3, p0, Lcom/android/exchange/EasSyncService;->mTrustSsl:Z

    .line 302
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/exchange/EasSyncService;->mBindArguments:[Ljava/lang/String;

    .line 305
    iput-object v5, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    .line 306
    iput-boolean v3, p0, Lcom/android/exchange/EasSyncService;->commandFinished:Z

    .line 308
    const/16 v1, 0x78

    iput v1, p0, Lcom/android/exchange/EasSyncService;->mPingForceHeartbeat:I

    .line 311
    iput v6, p0, Lcom/android/exchange/EasSyncService;->mPingMinHeartbeat:I

    .line 313
    const/16 v1, 0xdca

    iput v1, p0, Lcom/android/exchange/EasSyncService;->mPingMaxHeartbeat:I

    .line 315
    iput v6, p0, Lcom/android/exchange/EasSyncService;->mPingHeartbeat:I

    .line 317
    iput v3, p0, Lcom/android/exchange/EasSyncService;->mPingHighWaterMark:I

    .line 319
    iput-boolean v3, p0, Lcom/android/exchange/EasSyncService;->mPingHeartbeatDropped:Z

    .line 321
    iput-boolean v3, p0, Lcom/android/exchange/EasSyncService;->mPostAborted:Z

    .line 323
    iput-boolean v3, p0, Lcom/android/exchange/EasSyncService;->mPostReset:Z

    .line 325
    iput-boolean v4, p0, Lcom/android/exchange/EasSyncService;->mIsValid:Z

    .line 327
    iput-boolean v3, p0, Lcom/android/exchange/EasSyncService;->mIsHTMLDisabled:Z

    .line 353
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    .line 354
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v1, v1, Lcom/android/email/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    invoke-static {p1, v1, v2}, Lcom/android/email/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$HostAuth;

    move-result-object v0

    .line 355
    .local v0, ha:Lcom/android/email/provider/EmailContent$HostAuth;
    iget v1, v0, Lcom/android/email/provider/EmailContent$HostAuth;->mFlags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    move v1, v4

    :goto_0
    iput-boolean v1, p0, Lcom/android/exchange/EasSyncService;->mSsl:Z

    .line 356
    iget v1, v0, Lcom/android/email/provider/EmailContent$HostAuth;->mFlags:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_1

    move v1, v4

    :goto_1
    iput-boolean v1, p0, Lcom/android/exchange/EasSyncService;->mTrustSsl:Z

    .line 357
    return-void

    :cond_0
    move v1, v3

    .line 355
    goto :goto_0

    :cond_1
    move v1, v3

    .line 356
    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/email/provider/EmailContent$Mailbox;)V
    .locals 7
    .parameter "_context"
    .parameter "_mailbox"

    .prologue
    const/16 v6, 0x1d6

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 333
    invoke-direct {p0, p1, p2}, Lcom/android/exchange/AbstractSyncService;-><init>(Landroid/content/Context;Lcom/android/email/provider/EmailContent$Mailbox;)V

    .line 270
    const-string v1, "2.5"

    iput-object v1, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersion:Ljava/lang/String;

    .line 273
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersion:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    .line 277
    iput-object v5, p0, Lcom/android/exchange/EasSyncService;->mDeviceId:Ljava/lang/String;

    .line 282
	const-string v1, "Apple-iPhone3C1"

    iput-object v1, p0, Lcom/android/exchange/EasSyncService;->mModelName_UserAgent:Ljava/lang/String;

    .line 283
    # const-string v1, "Apple-iPhone3C1"

    # iput-object v1, p0, Lcom/android/exchange/EasSyncService;->UserAgentSplited:[Ljava/lang/String;

    .line 284
    const-string v1, "iPhone"

    iput-object v1, p0, Lcom/android/exchange/EasSyncService;->mModelName_DeviceType:Ljava/lang/String;

    .line 285
    const-string v1, "iPhone"

    iput-object v1, p0, Lcom/android/exchange/EasSyncService;->mDeviceType:Ljava/lang/String;

    .line 286
    const-string v1, "Apple-iPhone3C1"

    iput-object v1, p0, Lcom/android/exchange/EasSyncService;->mDeviceTypeForUserAgent:Ljava/lang/String;

    .line 290
    iput-object v5, p0, Lcom/android/exchange/EasSyncService;->mAuthString:Ljava/lang/String;

    .line 291
    iput-object v5, p0, Lcom/android/exchange/EasSyncService;->mCmdString:Ljava/lang/String;

    .line 299
    iput-boolean v4, p0, Lcom/android/exchange/EasSyncService;->mSsl:Z

    .line 300
    iput-boolean v3, p0, Lcom/android/exchange/EasSyncService;->mTrustSsl:Z

    .line 302
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/exchange/EasSyncService;->mBindArguments:[Ljava/lang/String;

    .line 305
    iput-object v5, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    .line 306
    iput-boolean v3, p0, Lcom/android/exchange/EasSyncService;->commandFinished:Z

    .line 308
    const/16 v1, 0x78

    iput v1, p0, Lcom/android/exchange/EasSyncService;->mPingForceHeartbeat:I

    .line 311
    iput v6, p0, Lcom/android/exchange/EasSyncService;->mPingMinHeartbeat:I

    .line 313
    const/16 v1, 0xdca

    iput v1, p0, Lcom/android/exchange/EasSyncService;->mPingMaxHeartbeat:I

    .line 315
    iput v6, p0, Lcom/android/exchange/EasSyncService;->mPingHeartbeat:I

    .line 317
    iput v3, p0, Lcom/android/exchange/EasSyncService;->mPingHighWaterMark:I

    .line 319
    iput-boolean v3, p0, Lcom/android/exchange/EasSyncService;->mPingHeartbeatDropped:Z

    .line 321
    iput-boolean v3, p0, Lcom/android/exchange/EasSyncService;->mPostAborted:Z

    .line 323
    iput-boolean v3, p0, Lcom/android/exchange/EasSyncService;->mPostReset:Z

    .line 325
    iput-boolean v4, p0, Lcom/android/exchange/EasSyncService;->mIsValid:Z

    .line 327
    iput-boolean v3, p0, Lcom/android/exchange/EasSyncService;->mIsHTMLDisabled:Z

    .line 334
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    .line 335
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    if-nez v1, :cond_0

    .line 336
    iput-boolean v3, p0, Lcom/android/exchange/EasSyncService;->mIsValid:Z

    .line 346
    :goto_0
    return-void

    .line 339
    :cond_0
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v1, v1, Lcom/android/email/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    invoke-static {p1, v1, v2}, Lcom/android/email/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$HostAuth;

    move-result-object v0

    .line 340
    .local v0, ha:Lcom/android/email/provider/EmailContent$HostAuth;
    if-nez v0, :cond_1

    .line 341
    iput-boolean v3, p0, Lcom/android/exchange/EasSyncService;->mIsValid:Z

    goto :goto_0

    .line 344
    :cond_1
    iget v1, v0, Lcom/android/email/provider/EmailContent$HostAuth;->mFlags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    move v1, v4

    :goto_1
    iput-boolean v1, p0, Lcom/android/exchange/EasSyncService;->mSsl:Z

    .line 345
    iget v1, v0, Lcom/android/email/provider/EmailContent$HostAuth;->mFlags:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    move v1, v4

    :goto_2
    iput-boolean v1, p0, Lcom/android/exchange/EasSyncService;->mTrustSsl:Z

    goto :goto_0

    :cond_2
    move v1, v3

    .line 344
    goto :goto_1

    :cond_3
    move v1, v3

    .line 345
    goto :goto_2
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/email/provider/EmailContent$Message;)V
    .locals 7
    .parameter "_context"
    .parameter "_msg"

    .prologue
    const/16 v6, 0x1d6

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 362
    invoke-direct {p0, p1, p2}, Lcom/android/exchange/AbstractSyncService;-><init>(Landroid/content/Context;Lcom/android/email/provider/EmailContent$Message;)V

    .line 270
    const-string v1, "2.5"

    iput-object v1, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersion:Ljava/lang/String;

    .line 273
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersion:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    .line 277
    iput-object v5, p0, Lcom/android/exchange/EasSyncService;->mDeviceId:Ljava/lang/String;

    .line 282
    const-string v1, "Apple-iPhone3C1"

    iput-object v1, p0, Lcom/android/exchange/EasSyncService;->mModelName_UserAgent:Ljava/lang/String;

    .line 283
    # const-string v1, "Apple-iPhone3C1"

    # iput-object v1, p0, Lcom/android/exchange/EasSyncService;->UserAgentSplited:[Ljava/lang/String;

    .line 284
    const-string v1, "iPhone"

    iput-object v1, p0, Lcom/android/exchange/EasSyncService;->mModelName_DeviceType:Ljava/lang/String;

    .line 285
    const-string v1, "iPhone"

    iput-object v1, p0, Lcom/android/exchange/EasSyncService;->mDeviceType:Ljava/lang/String;

    .line 286
    const-string v1, "Apple-iPhone3C1"

    iput-object v1, p0, Lcom/android/exchange/EasSyncService;->mDeviceTypeForUserAgent:Ljava/lang/String;

    .line 290
    iput-object v5, p0, Lcom/android/exchange/EasSyncService;->mAuthString:Ljava/lang/String;

    .line 291
    iput-object v5, p0, Lcom/android/exchange/EasSyncService;->mCmdString:Ljava/lang/String;

    .line 299
    iput-boolean v4, p0, Lcom/android/exchange/EasSyncService;->mSsl:Z

    .line 300
    iput-boolean v3, p0, Lcom/android/exchange/EasSyncService;->mTrustSsl:Z

    .line 302
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/exchange/EasSyncService;->mBindArguments:[Ljava/lang/String;

    .line 305
    iput-object v5, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    .line 306
    iput-boolean v3, p0, Lcom/android/exchange/EasSyncService;->commandFinished:Z

    .line 308
    const/16 v1, 0x78

    iput v1, p0, Lcom/android/exchange/EasSyncService;->mPingForceHeartbeat:I

    .line 311
    iput v6, p0, Lcom/android/exchange/EasSyncService;->mPingMinHeartbeat:I

    .line 313
    const/16 v1, 0xdca

    iput v1, p0, Lcom/android/exchange/EasSyncService;->mPingMaxHeartbeat:I

    .line 315
    iput v6, p0, Lcom/android/exchange/EasSyncService;->mPingHeartbeat:I

    .line 317
    iput v3, p0, Lcom/android/exchange/EasSyncService;->mPingHighWaterMark:I

    .line 319
    iput-boolean v3, p0, Lcom/android/exchange/EasSyncService;->mPingHeartbeatDropped:Z

    .line 321
    iput-boolean v3, p0, Lcom/android/exchange/EasSyncService;->mPostAborted:Z

    .line 323
    iput-boolean v3, p0, Lcom/android/exchange/EasSyncService;->mPostReset:Z

    .line 325
    iput-boolean v4, p0, Lcom/android/exchange/EasSyncService;->mIsValid:Z

    .line 327
    iput-boolean v3, p0, Lcom/android/exchange/EasSyncService;->mIsHTMLDisabled:Z

    .line 363
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    .line 364
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v1, v1, Lcom/android/email/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    invoke-static {p1, v1, v2}, Lcom/android/email/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$HostAuth;

    move-result-object v0

    .line 365
    .local v0, ha:Lcom/android/email/provider/EmailContent$HostAuth;
    iget v1, v0, Lcom/android/email/provider/EmailContent$HostAuth;->mFlags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    move v1, v4

    :goto_0
    iput-boolean v1, p0, Lcom/android/exchange/EasSyncService;->mSsl:Z

    .line 366
    iget v1, v0, Lcom/android/email/provider/EmailContent$HostAuth;->mFlags:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_1

    move v1, v4

    :goto_1
    iput-boolean v1, p0, Lcom/android/exchange/EasSyncService;->mTrustSsl:Z

    .line 367
    return-void

    :cond_0
    move v1, v3

    .line 365
    goto :goto_0

    :cond_1
    move v1, v3

    .line 366
    goto :goto_1
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 6
    .parameter "prefix"

    .prologue
    const/16 v5, 0x1d6

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 371
    invoke-direct {p0, p1}, Lcom/android/exchange/AbstractSyncService;-><init>(Ljava/lang/String;)V

    .line 270
    const-string v0, "2.5"

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersion:Ljava/lang/String;

    .line 273
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersion:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    .line 277
    iput-object v3, p0, Lcom/android/exchange/EasSyncService;->mDeviceId:Ljava/lang/String;

    .line 282
    const-string v0, "Apple-iPhone3C1"

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mModelName_UserAgent:Ljava/lang/String;

    .line 283
    # const-string v0, "Apple-iPhone3C1"

    # iput-object v0, p0, Lcom/android/exchange/EasSyncService;->UserAgentSplited:[Ljava/lang/String;

    .line 284
    const-string v0, "iPhone"

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mModelName_DeviceType:Ljava/lang/String;

    .line 285
    const-string v0, "iPhone"

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mDeviceType:Ljava/lang/String;

    .line 286
    const-string v0, "Apple-iPhone3C1"

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mDeviceTypeForUserAgent:Ljava/lang/String;

    .line 290
    iput-object v3, p0, Lcom/android/exchange/EasSyncService;->mAuthString:Ljava/lang/String;

    .line 291
    iput-object v3, p0, Lcom/android/exchange/EasSyncService;->mCmdString:Ljava/lang/String;

    .line 299
    iput-boolean v4, p0, Lcom/android/exchange/EasSyncService;->mSsl:Z

    .line 300
    iput-boolean v2, p0, Lcom/android/exchange/EasSyncService;->mTrustSsl:Z

    .line 302
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mBindArguments:[Ljava/lang/String;

    .line 305
    iput-object v3, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    .line 306
    iput-boolean v2, p0, Lcom/android/exchange/EasSyncService;->commandFinished:Z

    .line 308
    const/16 v0, 0x78

    iput v0, p0, Lcom/android/exchange/EasSyncService;->mPingForceHeartbeat:I

    .line 311
    iput v5, p0, Lcom/android/exchange/EasSyncService;->mPingMinHeartbeat:I

    .line 313
    const/16 v0, 0xdca

    iput v0, p0, Lcom/android/exchange/EasSyncService;->mPingMaxHeartbeat:I

    .line 315
    iput v5, p0, Lcom/android/exchange/EasSyncService;->mPingHeartbeat:I

    .line 317
    iput v2, p0, Lcom/android/exchange/EasSyncService;->mPingHighWaterMark:I

    .line 319
    iput-boolean v2, p0, Lcom/android/exchange/EasSyncService;->mPingHeartbeatDropped:Z

    .line 321
    iput-boolean v2, p0, Lcom/android/exchange/EasSyncService;->mPostAborted:Z

    .line 323
    iput-boolean v2, p0, Lcom/android/exchange/EasSyncService;->mPostReset:Z

    .line 325
    iput-boolean v4, p0, Lcom/android/exchange/EasSyncService;->mIsValid:Z

    .line 327
    iput-boolean v2, p0, Lcom/android/exchange/EasSyncService;->mIsHTMLDisabled:Z

    .line 372
    return-void
.end method

.method private acknowledgeProvision(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "tempKey"
    .parameter "result"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2437
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/exchange/EasSyncService;->acknowledgeProvisionImpl(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private acknowledgeProvisionImpl(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 12
    .parameter "tempKey"
    .parameter "status"
    .parameter "remoteWipe"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2442
    new-instance v7, Lcom/android/exchange/adapter/Serializer;

    invoke-direct {v7}, Lcom/android/exchange/adapter/Serializer;-><init>()V

    .line 2443
    .local v7, s:Lcom/android/exchange/adapter/Serializer;
    const/16 v8, 0x385

    invoke-virtual {v7, v8}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v8

    const/16 v9, 0x386

    invoke-virtual {v8, v9}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 2444
    const/16 v8, 0x387

    invoke-virtual {v7, v8}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 2447
    const/16 v8, 0x388

    invoke-direct {p0}, Lcom/android/exchange/EasSyncService;->getPolicyType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 2449
    const/16 v8, 0x389

    invoke-virtual {v7, v8, p1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 2450
    const/16 v8, 0x38b

    invoke-virtual {v7, v8, p2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 2451
    invoke-virtual {v7}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 2452
    if-eqz p3, :cond_0

    .line 2453
    const/16 v8, 0x38c

    invoke-virtual {v7, v8}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 2454
    const/16 v8, 0x38b

    const-string v9, "1"

    invoke-virtual {v7, v8, v9}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 2455
    invoke-virtual {v7}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 2457
    :cond_0
    invoke-virtual {v7}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/exchange/adapter/Serializer;->done()V

    .line 2459
    sget-boolean v8, Lcom/android/exchange/Eas;->PARSER_LOG:Z

    if-eqz v8, :cond_1

    .line 2460
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "acknowledgeProvisionImpl(): Wbxml:"

    aput-object v10, v8, v9

    invoke-virtual {p0, v8}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 2461
    invoke-virtual {v7}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v0

    .line 2462
    .local v0, b:[B
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 2463
    .local v1, byTe:Ljava/io/ByteArrayInputStream;
    new-instance v4, Lcom/android/exchange/adapter/LogAdapter;

    iget-object v8, p0, Lcom/android/exchange/EasSyncService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    invoke-direct {v4, v8, p0}, Lcom/android/exchange/adapter/LogAdapter;-><init>(Lcom/android/email/provider/EmailContent$Mailbox;Lcom/android/exchange/EasSyncService;)V

    .line 2464
    .local v4, logA:Lcom/android/exchange/adapter/LogAdapter;
    invoke-virtual {v4, v1}, Lcom/android/exchange/adapter/LogAdapter;->parse(Ljava/io/InputStream;)Z

    .line 2468
    .end local v0           #b:[B
    .end local v1           #byTe:Ljava/io/ByteArrayInputStream;
    .end local v4           #logA:Lcom/android/exchange/adapter/LogAdapter;
    :cond_1
    :try_start_0
    const-string v8, "Provision"

    invoke-virtual {v7}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/android/exchange/EasSyncService;->sendHttpClientPost(Ljava/lang/String;[B)Lorg/apache/http/HttpResponse;

    move-result-object v6

    .line 2469
    .local v6, resp:Lorg/apache/http/HttpResponse;
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    .line 2472
    .local v2, code:I
    sget-boolean v8, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v8, :cond_2

    .line 2473
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "acknowledgeProvisionImpl():Provision command response code:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {p0, v8}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 2477
    :cond_2
    const/16 v8, 0xc8

    if-ne v2, v8, :cond_5

    .line 2478
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    .line 2479
    .local v3, is:Ljava/io/InputStream;
    new-instance v5, Lcom/android/exchange/adapter/ProvisionParser;

    invoke-direct {v5, v3, p0}, Lcom/android/exchange/adapter/ProvisionParser;-><init>(Ljava/io/InputStream;Lcom/android/exchange/EasSyncService;)V

    .line 2480
    .local v5, pp:Lcom/android/exchange/adapter/ProvisionParser;
    invoke-virtual {v5}, Lcom/android/exchange/adapter/ProvisionParser;->parse()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 2482
    invoke-virtual {v5}, Lcom/android/exchange/adapter/ProvisionParser;->getPolicyKey()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 2488
    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 2489
    :try_start_1
    iget-object v10, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    if-eqz v10, :cond_3

    .line 2490
    iget-object v10, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v10}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 2491
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    .line 2493
    :cond_3
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 2497
    .end local v3           #is:Ljava/io/InputStream;
    .end local v5           #pp:Lcom/android/exchange/adapter/ProvisionParser;
    :goto_0
    return-object v8

    .line 2488
    .end local v2           #code:I
    .end local v6           #resp:Lorg/apache/http/HttpResponse;
    :catchall_0
    move-exception v8

    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 2489
    :try_start_2
    iget-object v10, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    if-eqz v10, :cond_4

    .line 2490
    iget-object v10, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v10}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 2491
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    .line 2493
    :cond_4
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2488
    throw v8

    .restart local v2       #code:I
    .restart local v6       #resp:Lorg/apache/http/HttpResponse;
    :cond_5
    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 2489
    :try_start_3
    iget-object v9, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    if-eqz v9, :cond_6

    .line 2490
    iget-object v9, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v9}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 2491
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    .line 2493
    :cond_6
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 2497
    const/4 v8, 0x0

    goto :goto_0

    .line 2493
    .end local v2           #code:I
    .end local v6           #resp:Lorg/apache/http/HttpResponse;
    :catchall_1
    move-exception v8

    :try_start_4
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v8

    .restart local v2       #code:I
    .restart local v3       #is:Ljava/io/InputStream;
    .restart local v5       #pp:Lcom/android/exchange/adapter/ProvisionParser;
    .restart local v6       #resp:Lorg/apache/http/HttpResponse;
    :catchall_2
    move-exception v8

    :try_start_5
    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v8

    .end local v3           #is:Ljava/io/InputStream;
    .end local v5           #pp:Lcom/android/exchange/adapter/ProvisionParser;
    :catchall_3
    move-exception v9

    :try_start_6
    monitor-exit v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v9
.end method

.method private acknowledgeRemoteWipe(Ljava/lang/String;)V
    .locals 2
    .parameter "tempKey"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2433
    const-string v0, "1"

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/exchange/EasSyncService;->acknowledgeProvisionImpl(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 2434
    return-void
.end method

.method public static addProxyParamsIfProxySet(Landroid/content/Context;Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpRequestBase;Ljava/lang/String;I)V
    .locals 4
    .parameter "context"
    .parameter "client"
    .parameter "request"
    .parameter "proxyHost"
    .parameter "proxyPort"

    .prologue
    .line 3785
    invoke-interface {p1}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    .line 3786
    .local v0, params:Lorg/apache/http/params/HttpParams;
    new-instance v1, Lorg/apache/http/HttpHost;

    invoke-direct {v1, p3, p4}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    invoke-static {v0, v1}, Lorg/apache/http/conn/params/ConnRouteParams;->setDefaultProxy(Lorg/apache/http/params/HttpParams;Lorg/apache/http/HttpHost;)V

    .line 3787
    invoke-virtual {p2, v0}, Lorg/apache/http/client/methods/HttpRequestBase;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 3788
    const-string v1, "PROXY4"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Added param: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/exchange/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3789
    return-void
.end method

.method private cacheAuthAndCmdString()V
    .locals 5

    .prologue
    const/16 v4, 0x3a

    .line 1785
    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mUserName:Ljava/lang/String;

    invoke-static {v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1788
    .local v1, safeUserName:Ljava/lang/String;
    const/4 v0, 0x0

    .line 1789
    .local v0, cs:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mDomain:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1790
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mDomain:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\\"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mUserName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mPassword:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1797
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Basic "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exchange/EasSyncService;->mAuthString:Ljava/lang/String;

    .line 1798
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&User="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&DeviceId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&DeviceType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mDeviceType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exchange/EasSyncService;->mCmdString:Ljava/lang/String;

    .line 1800
    return-void

    .line 1793
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mUserName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mPassword:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private canProvision()Lcom/android/exchange/adapter/ProvisionParser;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v14, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 2349
    new-instance v8, Lcom/android/exchange/adapter/Serializer;

    invoke-direct {v8}, Lcom/android/exchange/adapter/Serializer;-><init>()V

    .line 2350
    .local v8, s:Lcom/android/exchange/adapter/Serializer;
    const/16 v9, 0x385

    invoke-virtual {v8, v9}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v9

    const/16 v10, 0x386

    invoke-virtual {v9, v10}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 2351
    const/16 v9, 0x387

    invoke-virtual {v8, v9}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v9

    const/16 v10, 0x388

    invoke-direct {p0}, Lcom/android/exchange/EasSyncService;->getPolicyType()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/exchange/adapter/Serializer;->done()V

    .line 2354
    sget-boolean v9, Lcom/android/exchange/Eas;->PARSER_LOG:Z

    if-eqz v9, :cond_0

    .line 2355
    new-array v9, v14, [Ljava/lang/String;

    const-string v10, "canProvision(): Wbxml:"

    aput-object v10, v9, v12

    invoke-virtual {p0, v9}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 2356
    invoke-virtual {v8}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v0

    .line 2357
    .local v0, b:[B
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 2358
    .local v1, byTe:Ljava/io/ByteArrayInputStream;
    new-instance v4, Lcom/android/exchange/adapter/LogAdapter;

    iget-object v9, p0, Lcom/android/exchange/EasSyncService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    invoke-direct {v4, v9, p0}, Lcom/android/exchange/adapter/LogAdapter;-><init>(Lcom/android/email/provider/EmailContent$Mailbox;Lcom/android/exchange/EasSyncService;)V

    .line 2359
    .local v4, logA:Lcom/android/exchange/adapter/LogAdapter;
    invoke-virtual {v4, v1}, Lcom/android/exchange/adapter/LogAdapter;->parse(Ljava/io/InputStream;)Z

    .line 2364
    .end local v0           #b:[B
    .end local v1           #byTe:Ljava/io/ByteArrayInputStream;
    .end local v4           #logA:Lcom/android/exchange/adapter/LogAdapter;
    :cond_0
    :try_start_0
    const-string v9, "Provision"

    invoke-virtual {v8}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v10

    invoke-virtual {p0, v9, v10}, Lcom/android/exchange/EasSyncService;->sendHttpClientPost(Ljava/lang/String;[B)Lorg/apache/http/HttpResponse;

    move-result-object v7

    .line 2365
    .local v7, resp:Lorg/apache/http/HttpResponse;
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    .line 2367
    .local v2, code:I
    sget-boolean v9, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v9, :cond_1

    .line 2368
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "canProvision(): Provision command response code:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {p0, v9}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 2372
    :cond_1
    const/16 v9, 0xc8

    if-ne v2, v9, :cond_7

    .line 2373
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    .line 2374
    .local v3, is:Ljava/io/InputStream;
    new-instance v5, Lcom/android/exchange/adapter/ProvisionParser;

    invoke-direct {v5, v3, p0}, Lcom/android/exchange/adapter/ProvisionParser;-><init>(Ljava/io/InputStream;Lcom/android/exchange/EasSyncService;)V

    .line 2375
    .local v5, pp:Lcom/android/exchange/adapter/ProvisionParser;
    invoke-virtual {v5}, Lcom/android/exchange/adapter/ProvisionParser;->parse()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 2379
    invoke-virtual {v5}, Lcom/android/exchange/adapter/ProvisionParser;->getPolicySet()Lcom/android/email/SecurityPolicy$PolicySet;

    move-result-object v6

    .line 2383
    .local v6, ps:Lcom/android/email/SecurityPolicy$PolicySet;
    if-eqz v6, :cond_3

    iget-object v9, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/android/email/SecurityPolicy;->isSupported(Lcom/android/email/SecurityPolicy$PolicySet;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    if-eqz v9, :cond_3

    .line 2412
    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 2413
    :try_start_1
    iget-object v10, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    if-eqz v10, :cond_2

    .line 2414
    iget-object v10, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v10}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 2415
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    .line 2417
    :cond_2
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v9, v5

    .line 2422
    .end local v3           #is:Ljava/io/InputStream;
    .end local v5           #pp:Lcom/android/exchange/adapter/ProvisionParser;
    .end local v6           #ps:Lcom/android/email/SecurityPolicy$PolicySet;
    :goto_0
    return-object v9

    .line 2388
    .restart local v3       #is:Ljava/io/InputStream;
    .restart local v5       #pp:Lcom/android/exchange/adapter/ProvisionParser;
    .restart local v6       #ps:Lcom/android/email/SecurityPolicy$PolicySet;
    :cond_3
    :try_start_2
    invoke-virtual {v5}, Lcom/android/exchange/adapter/ProvisionParser;->getRemoteWipe()Z

    move-result v9

    if-nez v9, :cond_4

    invoke-virtual {v5}, Lcom/android/exchange/adapter/ProvisionParser;->getPolicyStatus()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_7

    .line 2412
    :cond_4
    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 2413
    :try_start_3
    iget-object v10, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    if-eqz v10, :cond_5

    .line 2414
    iget-object v10, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v10}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 2415
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    .line 2417
    :cond_5
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-object v9, v5

    .line 2389
    goto :goto_0

    .line 2412
    .end local v2           #code:I
    .end local v3           #is:Ljava/io/InputStream;
    .end local v5           #pp:Lcom/android/exchange/adapter/ProvisionParser;
    .end local v6           #ps:Lcom/android/email/SecurityPolicy$PolicySet;
    .end local v7           #resp:Lorg/apache/http/HttpResponse;
    :catchall_0
    move-exception v9

    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10

    .line 2413
    :try_start_4
    iget-object v11, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    if-eqz v11, :cond_6

    .line 2414
    iget-object v11, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v11}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 2415
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    .line 2417
    :cond_6
    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2412
    throw v9

    .restart local v2       #code:I
    .restart local v7       #resp:Lorg/apache/http/HttpResponse;
    :cond_7
    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 2413
    :try_start_5
    iget-object v10, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    if-eqz v10, :cond_8

    .line 2414
    iget-object v10, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v10}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 2415
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    .line 2417
    :cond_8
    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    move-object v9, v13

    .line 2422
    goto :goto_0

    .line 2417
    .end local v2           #code:I
    .end local v7           #resp:Lorg/apache/http/HttpResponse;
    :catchall_1
    move-exception v9

    :try_start_6
    monitor-exit v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v9

    .restart local v2       #code:I
    .restart local v3       #is:Ljava/io/InputStream;
    .restart local v5       #pp:Lcom/android/exchange/adapter/ProvisionParser;
    .restart local v6       #ps:Lcom/android/email/SecurityPolicy$PolicySet;
    .restart local v7       #resp:Lorg/apache/http/HttpResponse;
    :catchall_2
    move-exception v10

    :try_start_7
    monitor-exit v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v10

    :catchall_3
    move-exception v10

    :try_start_8
    monitor-exit v9
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v10

    .end local v3           #is:Ljava/io/InputStream;
    .end local v5           #pp:Lcom/android/exchange/adapter/ProvisionParser;
    .end local v6           #ps:Lcom/android/email/SecurityPolicy$PolicySet;
    :catchall_4
    move-exception v10

    :try_start_9
    monitor-exit v9
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw v10
.end method

.method private doProgressCallback(JJI)V
    .locals 7
    .parameter "messageId"
    .parameter "attachmentId"
    .parameter "progress"

    .prologue
    .line 1310
    :try_start_0
    invoke-static {}, Lcom/android/exchange/SyncManager;->callback()Lcom/android/email/service/IEmailServiceCallback;

    move-result-object v0

    const/4 v5, 0x1

    move-wide v1, p1

    move-wide v3, p3

    move v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/android/email/service/IEmailServiceCallback;->loadAttachmentStatus(JJII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1315
    :goto_0
    return-void

    .line 1312
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private doStatusCallback(JJI)V
    .locals 7
    .parameter "messageId"
    .parameter "attachmentId"
    .parameter "status"

    .prologue
    .line 1302
    :try_start_0
    invoke-static {}, Lcom/android/exchange/SyncManager;->callback()Lcom/android/email/service/IEmailServiceCallback;

    move-result-object v0

    const/4 v6, 0x0

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    invoke-interface/range {v0 .. v6}, Lcom/android/email/service/IEmailServiceCallback;->loadAttachmentStatus(JJII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1306
    :goto_0
    return-void

    .line 1303
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private getCalendarFilterType()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3228
    const-string v0, "4"

    .line 3231
    .local v0, filter:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget v1, v1, Lcom/android/email/provider/EmailContent$Account;->mCalendarSyncLookback:I

    packed-switch v1, :pswitch_data_0

    .line 3250
    :pswitch_0
    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "getCalendarFilterType 5"

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 3251
    const-string v0, "4"

    .line 3256
    :goto_0
    return-object v0

    .line 3233
    :pswitch_1
    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "getCalendarFilterType 1"

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 3234
    const-string v0, "0"

    .line 3235
    goto :goto_0

    .line 3237
    :pswitch_2
    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "getCalendarFilterType 2"

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 3238
    const-string v0, "5"

    .line 3239
    goto :goto_0

    .line 3241
    :pswitch_3
    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "getCalendarFilterType 3"

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 3242
    const-string v0, "6"

    .line 3243
    goto :goto_0

    .line 3245
    :pswitch_4
    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "getCalendarFilterType 4"

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 3246
    const-string v0, "7"

    .line 3247
    goto :goto_0

    .line 3231
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private getClientConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;
    .locals 1

    .prologue
    .line 1864
    invoke-static {}, Lcom/android/exchange/SyncManager;->getClientConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    return-object v0
.end method

.method private getClientConnectionManagerForLoadMore()Lorg/apache/http/conn/ClientConnectionManager;
    .locals 1

    .prologue
    .line 1869
    invoke-static {}, Lcom/android/exchange/SyncManager;->getClientConnectionManagerForLoadMore()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    return-object v0
.end method

.method private getEmailFilter()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3196
    const-string v0, "3"

    .line 3197
    .local v0, filter:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget v1, v1, Lcom/android/email/provider/EmailContent$Account;->mSyncLookback:I

    packed-switch v1, :pswitch_data_0

    .line 3223
    :goto_0
    return-object v0

    .line 3199
    :pswitch_0
    const-string v0, "1"

    .line 3200
    goto :goto_0

    .line 3203
    :pswitch_1
    const-string v0, "2"

    .line 3204
    goto :goto_0

    .line 3207
    :pswitch_2
    const-string v0, "3"

    .line 3208
    goto :goto_0

    .line 3211
    :pswitch_3
    const-string v0, "4"

    .line 3212
    goto :goto_0

    .line 3215
    :pswitch_4
    const-string v0, "5"

    .line 3216
    goto :goto_0

    .line 3219
    :pswitch_5
    const-string v0, "0"

    goto :goto_0

    .line 3197
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private getHttpClient(I)Lorg/apache/http/client/HttpClient;
    .locals 7
    .parameter "timeout"

    .prologue
    .line 1915
    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 1916
    .local v1, params:Lorg/apache/http/params/HttpParams;
    const/16 v4, 0x4e20

    invoke-static {v1, v4}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 1917
    invoke-static {v1, p1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 1918
    const/16 v4, 0x2000

    invoke-static {v1, v4}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 1920
    const-wide/16 v4, 0x4e20

    invoke-static {v1, v4, v5}, Lorg/apache/http/conn/params/ConnManagerParams;->setTimeout(Lorg/apache/http/params/HttpParams;J)V

    .line 1924
    iget-object v4, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/net/Proxy;->getHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 1925
    .local v2, proxyHost:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/net/Proxy;->getPort(Landroid/content/Context;)I

    move-result v3

    .line 1926
    .local v3, proxyPort:I
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    if-ltz v3, :cond_0

    .line 1927
    new-instance v4, Lorg/apache/http/HttpHost;

    invoke-direct {v4, v2, v3}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    invoke-static {v1, v4}, Lorg/apache/http/conn/params/ConnRouteParams;->setDefaultProxy(Lorg/apache/http/params/HttpParams;Lorg/apache/http/HttpHost;)V

    .line 1929
    const-string v4, "PROXY"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Added proxy param host: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " port: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/exchange/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1932
    :cond_0
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {p0}, Lcom/android/exchange/EasSyncService;->getClientConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v4

    invoke-direct {v0, v4, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    .line 1937
    .local v0, client:Lorg/apache/http/client/HttpClient;
    return-object v0
.end method

.method private getLoadMoreClient(I)Lorg/apache/http/client/HttpClient;
    .locals 7
    .parameter "timeout"

    .prologue
    .line 1941
    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 1942
    .local v1, params:Lorg/apache/http/params/HttpParams;
    const/16 v4, 0x4e20

    invoke-static {v1, v4}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 1943
    invoke-static {v1, p1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 1944
    const/16 v4, 0x2000

    invoke-static {v1, v4}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 1946
    const-wide/16 v4, 0x4e20

    invoke-static {v1, v4, v5}, Lorg/apache/http/conn/params/ConnManagerParams;->setTimeout(Lorg/apache/http/params/HttpParams;J)V

    .line 1948
    iget-object v4, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/net/Proxy;->getHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 1949
    .local v2, proxyHost:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/net/Proxy;->getPort(Landroid/content/Context;)I

    move-result v3

    .line 1950
    .local v3, proxyPort:I
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    if-ltz v3, :cond_0

    .line 1951
    new-instance v4, Lorg/apache/http/HttpHost;

    invoke-direct {v4, v2, v3}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    invoke-static {v1, v4}, Lorg/apache/http/conn/params/ConnRouteParams;->setDefaultProxy(Lorg/apache/http/params/HttpParams;Lorg/apache/http/HttpHost;)V

    .line 1953
    const-string v4, "PROXY"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Added proxy param host: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " port: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/exchange/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1956
    :cond_0
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {p0}, Lcom/android/exchange/EasSyncService;->getClientConnectionManagerForLoadMore()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v4

    invoke-direct {v0, v4, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    .line 1957
    .local v0, client:Lorg/apache/http/client/HttpClient;
    const-string v4, "Email"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getClientConnectionManagerForLoadMore : client : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/exchange/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1961
    return-object v0
.end method

.method private getPingClient(I)Lorg/apache/http/client/HttpClient;
    .locals 6
    .parameter "timeout"

    .prologue
    .line 1894
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 1895
    .local v0, params:Lorg/apache/http/params/HttpParams;
    const/16 v3, 0x4e20

    invoke-static {v0, v3}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 1896
    invoke-static {v0, p1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 1897
    const/16 v3, 0x2000

    invoke-static {v0, v3}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 1898
    const-wide/16 v3, 0x4e20

    invoke-static {v0, v3, v4}, Lorg/apache/http/conn/params/ConnManagerParams;->setTimeout(Lorg/apache/http/params/HttpParams;J)V

    .line 1901
    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/net/Proxy;->getHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1902
    .local v1, proxyHost:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/net/Proxy;->getPort(Landroid/content/Context;)I

    move-result v2

    .line 1903
    .local v2, proxyPort:I
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    if-ltz v2, :cond_0

    .line 1904
    new-instance v3, Lorg/apache/http/HttpHost;

    invoke-direct {v3, v1, v2}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    invoke-static {v0, v3}, Lorg/apache/http/conn/params/ConnRouteParams;->setDefaultProxy(Lorg/apache/http/params/HttpParams;Lorg/apache/http/HttpHost;)V

    .line 1906
    const-string v3, "PROXY"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Added proxy param host: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " port: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/exchange/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1909
    :cond_0
    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-static {}, Lcom/android/exchange/SyncManager;->newClientConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    return-object v3
.end method

.method private getPolicyType()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2337
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v2, 0x4028

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    const-string v0, "MS-EAS-Provisioning-WBXML"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "MS-WAP-Provisioning-XML"

    goto :goto_0
.end method

.method private getRedirect(Lorg/apache/http/HttpResponse;Lorg/apache/http/client/methods/HttpPost;)Lorg/apache/http/client/methods/HttpPost;
    .locals 3
    .parameter "resp"
    .parameter "post"

    .prologue
    .line 689
    const-string v2, "X-MS-Location"

    invoke-interface {p1, v2}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v1

    .line 690
    .local v1, locHeader:Lorg/apache/http/Header;
    if-eqz v1, :cond_0

    .line 691
    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 694
    .local v0, loc:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, "http"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 695
    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v2

    invoke-virtual {p2, v2}, Lorg/apache/http/client/methods/HttpPost;->setURI(Ljava/net/URI;)V

    move-object v2, p2

    .line 699
    .end local v0           #loc:Ljava/lang/String;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isLikelyNatFailure(Ljava/lang/String;JI)Z
    .locals 6
    .parameter "message"
    .parameter "commandOutstandingTime"
    .parameter "heartBeatTime"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2853
    if-nez p1, :cond_0

    move v0, v4

    .line 2865
    :goto_0
    return v0

    .line 2854
    :cond_0
    const-string v0, "reset by peer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v5

    .line 2855
    goto :goto_0

    .line 2858
    :cond_1
    const-string v0, "ead timed out"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    int-to-long v0, p4

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    cmp-long v0, p2, v0

    if-lez v0, :cond_2

    .line 2861
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "Read timed out for long heartbeat. Decrease heartbeat"

    aput-object v1, v0, v4

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    move v0, v5

    .line 2862
    goto :goto_0

    :cond_2
    move v0, v4

    .line 2865
    goto :goto_0
.end method

.method private makeUriString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "cmd"
    .parameter "extra"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1804
    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mAuthString:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mCmdString:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 1805
    :cond_0
    invoke-direct {p0}, Lcom/android/exchange/EasSyncService;->cacheAuthAndCmdString()V

    .line 1808
    :cond_1
    const/4 v0, 0x0

    .line 1809
    .local v0, proxyAndSSLEnabled:Z
    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/net/Proxy;->getHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/net/Proxy;->getHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/net/Proxy;->getPort(Landroid/content/Context;)I

    move-result v2

    if-ltz v2, :cond_2

    .line 1811
    iget-boolean v2, p0, Lcom/android/exchange/EasSyncService;->mSsl:Z

    if-eqz v2, :cond_2

    .line 1812
    const/4 v0, 0x1

    .line 1816
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v3, p0, Lcom/android/exchange/EasSyncService;->mSsl:Z

    if-eqz v3, :cond_6

    iget-boolean v3, p0, Lcom/android/exchange/EasSyncService;->mTrustSsl:Z

    if-eqz v3, :cond_5

    const-string v3, "httpts"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mHostAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v0, :cond_7

    const-string v3, ":443"

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/Microsoft-Server-ActiveSync"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1819
    .local v1, us:Ljava/lang/String;
    if-eqz p1, :cond_3

    .line 1820
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?Cmd="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mCmdString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1822
    :cond_3
    if-eqz p2, :cond_4

    .line 1823
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1825
    :cond_4
    return-object v1

    .line 1816
    .end local v1           #us:Ljava/lang/String;
    :cond_5
    const-string v3, "https"

    goto :goto_0

    :cond_6
    const-string v3, "http"

    goto :goto_0

    :cond_7
    const-string v3, ""

    goto :goto_1
.end method

.method private parsePingResult(Ljava/io/InputStream;Landroid/content/ContentResolver;Ljava/util/HashMap;)I
    .locals 18
    .parameter "is"
    .parameter "cr"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Landroid/content/ContentResolver;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/exchange/StaleFolderListException;,
            Lcom/android/exchange/IllegalHeartbeatException;
        }
    .end annotation

    .prologue
    .line 3129
    .local p3, errorMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v14, Lcom/android/exchange/adapter/PingParser;

    move-object v0, v14

    move-object/from16 v1, p1

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/adapter/PingParser;-><init>(Ljava/io/InputStream;Lcom/android/exchange/EasSyncService;)V

    .line 3130
    .local v14, pp:Lcom/android/exchange/adapter/PingParser;
    invoke-virtual {v14}, Lcom/android/exchange/adapter/PingParser;->parse()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 3133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mBindArguments:[Ljava/lang/String;

    move-object v3, v0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v5, v0

    iget-wide v5, v5, Lcom/android/email/provider/EmailContent$Account;->mId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 3134
    invoke-virtual {v14}, Lcom/android/exchange/adapter/PingParser;->getSyncList()Ljava/util/ArrayList;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exchange/EasSyncService;->mPingChangeList:Ljava/util/ArrayList;

    .line 3135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mPingChangeList:Ljava/util/ArrayList;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 3136
    .local v15, serverId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mBindArguments:[Ljava/lang/String;

    move-object v3, v0

    const/4 v4, 0x1

    aput-object v15, v3, v4

    .line 3137
    sget-object v4, Lcom/android/email/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/android/email/provider/EmailContent$Mailbox;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v6, "accountKey=? and serverId=?"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mBindArguments:[Ljava/lang/String;

    move-object v7, v0

    const/4 v8, 0x0

    move-object/from16 v3, p2

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 3140
    .local v9, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3157
    const/16 v3, 0xf

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 3158
    .local v16, status:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lcom/android/exchange/SyncManager;->getStatusType(Ljava/lang/String;)I

    move-result v17

    .line 3160
    .local v17, type:I
    const/4 v3, 0x3

    move/from16 v0, v17

    move v1, v3

    if-ne v0, v1, :cond_0

    .line 3161
    invoke-static/range {v16 .. v16}, Lcom/android/exchange/SyncManager;->getStatusChangeCount(Ljava/lang/String;)I

    move-result v10

    .line 3162
    .local v10, changeCount:I
    if-lez v10, :cond_2

    .line 3163
    move-object/from16 v0, p3

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3184
    .end local v10           #changeCount:I
    :cond_0
    :goto_1
    const/4 v3, 0x0

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Lcom/android/exchange/SyncManager;->startManualSync(JILcom/android/exchange/Request;)Lcom/android/exchange/AbstractSyncService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3188
    .end local v16           #status:Ljava/lang/String;
    .end local v17           #type:I
    :cond_1
    :goto_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 3164
    .restart local v10       #changeCount:I
    .restart local v16       #status:Ljava/lang/String;
    .restart local v17       #type:I
    :cond_2
    if-nez v10, :cond_0

    .line 3167
    const/4 v3, 0x1

    :try_start_1
    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 3168
    .local v13, name:Ljava/lang/String;
    move-object/from16 v0, p3

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    .line 3169
    .local v11, failures:Ljava/lang/Integer;
    if-nez v11, :cond_3

    .line 3170
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "Last ping reported changes in error for: "

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v13, v3, v4

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 3171
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, p3

    move-object v1, v15

    move-object v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 3188
    .end local v10           #changeCount:I
    .end local v11           #failures:Ljava/lang/Integer;
    .end local v13           #name:Ljava/lang/String;
    .end local v16           #status:Ljava/lang/String;
    .end local v17           #type:I
    :catchall_0
    move-exception v3

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v3

    .line 3172
    .restart local v10       #changeCount:I
    .restart local v11       #failures:Ljava/lang/Integer;
    .restart local v13       #name:Ljava/lang/String;
    .restart local v16       #status:Ljava/lang/String;
    .restart local v17       #type:I
    :cond_3
    :try_start_2
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_4

    .line 3174
    const/4 v3, 0x0

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    move-object/from16 v0, p0

    move-wide v1, v3

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/EasSyncService;->pushFallback(J)V

    goto :goto_2

    .line 3177
    :cond_4
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "Last ping reported changes in error for: "

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v13, v3, v4

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 3178
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, p3

    move-object v1, v15

    move-object v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 3192
    .end local v9           #c:Landroid/database/Cursor;
    .end local v10           #changeCount:I
    .end local v11           #failures:Ljava/lang/Integer;
    .end local v12           #i$:Ljava/util/Iterator;
    .end local v13           #name:Ljava/lang/String;
    .end local v15           #serverId:Ljava/lang/String;
    .end local v16           #status:Ljava/lang/String;
    .end local v17           #type:I
    :cond_5
    invoke-virtual {v14}, Lcom/android/exchange/adapter/PingParser;->getSyncStatus()I

    move-result v3

    return v3
.end method

.method private postAutodiscover(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpPost;Z)V
    .locals 11
    .parameter "client"
    .parameter "post"
    .parameter "canRetry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/16 v9, 0xc8

    const v8, 0xea60

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v10, "Authorization"

    .line 717
    new-array v3, v7, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Posting autodiscover to: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lorg/apache/http/client/methods/HttpPost;->getURI()Ljava/net/URI;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p0, v3}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 719
    invoke-virtual {p0, p1, p2, v8}, Lcom/android/exchange/EasSyncService;->executePostWithTimeout(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpPost;I)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 720
    .local v2, resp:Lorg/apache/http/HttpResponse;
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    .line 724
    .local v1, code:I
    if-ne v1, v9, :cond_1

    .line 726
    invoke-virtual {p0, v2, p2}, Lcom/android/exchange/EasSyncService;->parseAutoDiscoverResponse(Lorg/apache/http/HttpResponse;Lorg/apache/http/client/methods/HttpPost;)Lorg/apache/http/client/methods/HttpPost;

    .line 727
    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mAutoDiscInfo:Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;

    iget-boolean v3, v3, Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;->isRedirectTagPresent:Z

    if-eqz v3, :cond_0

    .line 728
    new-array v3, v7, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Posting autodiscover to redirect: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lorg/apache/http/client/methods/HttpPost;->getURI()Ljava/net/URI;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p0, v3}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 729
    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mAutoDiscInfo:Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;

    iget-object v3, v3, Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;->RedirectPost:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {p0, p1, v3, v8}, Lcom/android/exchange/EasSyncService;->executePostWithTimeout(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpPost;I)Lorg/apache/http/HttpResponse;

    .line 768
    :cond_0
    :goto_0
    return-void

    .line 736
    :cond_1
    const/16 v3, 0x1c3

    if-ne v1, v3, :cond_2

    .line 737
    invoke-direct {p0, v2, p2}, Lcom/android/exchange/EasSyncService;->getRedirect(Lorg/apache/http/HttpResponse;Lorg/apache/http/client/methods/HttpPost;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object p2

    .line 738
    if-eqz p2, :cond_0

    .line 739
    new-array v3, v7, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Posting autodiscover to redirect: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lorg/apache/http/client/methods/HttpPost;->getURI()Ljava/net/URI;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p0, v3}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 741
    invoke-virtual {p0, p1, p2, v8}, Lcom/android/exchange/EasSyncService;->executePostWithTimeout(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpPost;I)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 742
    if-ne v1, v9, :cond_0

    .line 743
    invoke-virtual {p0, v2, p2}, Lcom/android/exchange/EasSyncService;->parseAutoDiscoverResponse(Lorg/apache/http/HttpResponse;Lorg/apache/http/client/methods/HttpPost;)Lorg/apache/http/client/methods/HttpPost;

    goto :goto_0

    .line 748
    :cond_2
    const/16 v3, 0x191

    if-ne v1, v3, :cond_4

    .line 749
    if-eqz p3, :cond_3

    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mUserName:Ljava/lang/String;

    const-string v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 751
    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mUserName:Ljava/lang/String;

    const/16 v4, 0x40

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 752
    .local v0, atSignIndex:I
    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mUserName:Ljava/lang/String;

    invoke-virtual {v3, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exchange/EasSyncService;->mUserName:Ljava/lang/String;

    .line 753
    invoke-direct {p0}, Lcom/android/exchange/EasSyncService;->cacheAuthAndCmdString()V

    .line 754
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "401 received; trying username: "

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/android/exchange/EasSyncService;->mUserName:Ljava/lang/String;

    aput-object v4, v3, v7

    invoke-virtual {p0, v3}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 756
    const-string v3, "Authorization"

    invoke-virtual {p2, v10}, Lorg/apache/http/client/methods/HttpPost;->removeHeaders(Ljava/lang/String;)V

    .line 757
    const-string v3, "Authorization"

    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mAuthString:Ljava/lang/String;

    invoke-virtual {p2, v10, v3}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    invoke-direct {p0, p1, p2, v6}, Lcom/android/exchange/EasSyncService;->postAutodiscover(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpPost;Z)V

    goto :goto_0

    .line 761
    .end local v0           #atSignIndex:I
    :cond_3
    new-instance v3, Lcom/android/email/mail/MessagingException;

    const/4 v4, 0x5

    invoke-direct {v3, v4}, Lcom/android/email/mail/MessagingException;-><init>(I)V

    throw v3

    .line 765
    :cond_4
    new-array v3, v7, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Code: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", throwing IOException"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p0, v3}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 766
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3}, Ljava/io/IOException;-><init>()V

    throw v3
.end method

.method private pushFallback(J)V
    .locals 6
    .parameter "mailboxId"

    .prologue
    const/4 v5, 0x0

    .line 2828
    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    invoke-static {v3, p1, p2}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v1

    .line 2829
    .local v1, mailbox:Lcom/android/email/provider/EmailContent$Mailbox;
    if-nez v1, :cond_0

    .line 2842
    :goto_0
    return-void

    .line 2832
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2833
    .local v0, cv:Landroid/content/ContentValues;
    const/16 v2, 0x19

    .line 2834
    .local v2, mins:I
    iget v3, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    if-nez v3, :cond_1

    .line 2835
    const/4 v2, 0x5

    .line 2837
    :cond_1
    const-string v3, "syncInterval"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2838
    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/email/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v0, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2840
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "*** PING ERROR LOOP: Set "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " min sync"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/exchange/EasSyncService;->errorLog(Ljava/lang/String;)V

    .line 2841
    const-string v3, "push fallback"

    invoke-static {v3}, Lcom/android/exchange/SyncManager;->kick(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private runPingLoop()V
    .locals 46
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/exchange/StaleFolderListException;,
            Lcom/android/exchange/IllegalHeartbeatException;
        }
    .end annotation

    .prologue
    .line 2870
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exchange/EasSyncService;->mPingHeartbeat:I

    move/from16 v32, v0

    .line 2871
    .local v32, pingHeartbeat:I
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "runPingLoop"

    aput-object v7, v5, v6

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 2875
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/32 v7, 0x36ee80

    add-long v18, v5, v7

    .line 2876
    .local v18, endTime:J
    new-instance v31, Ljava/util/HashMap;

    invoke-direct/range {v31 .. v31}, Ljava/util/HashMap;-><init>()V

    .line 2877
    .local v31, pingErrorMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v41, Ljava/util/ArrayList;

    invoke-direct/range {v41 .. v41}, Ljava/util/ArrayList;-><init>()V

    .line 2878
    .local v41, readyMailboxes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v30, Ljava/util/ArrayList;

    invoke-direct/range {v30 .. v30}, Ljava/util/ArrayList;-><init>()V

    .line 2879
    .local v30, notReadyMailboxes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v39, 0x0

    .line 2881
    .local v39, pingWaitCount:I
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    cmp-long v5, v5, v18

    if-gez v5, :cond_28

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/exchange/EasSyncService;->mStop:Z

    move v5, v0

    if-nez v5, :cond_28

    .line 2883
    const/16 v40, 0x0

    .line 2885
    .local v40, pushCount:I
    const/4 v14, 0x0

    .line 2887
    .local v14, canPushCount:I
    const/16 v45, 0x0

    .line 2889
    .local v45, uninitCount:I
    new-instance v43, Lcom/android/exchange/adapter/Serializer;

    invoke-direct/range {v43 .. v43}, Lcom/android/exchange/adapter/Serializer;-><init>()V

    .line 2890
    .local v43, s:Lcom/android/exchange/adapter/Serializer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    move-object v5, v0

    sget-object v6, Lcom/android/email/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v7, Lcom/android/email/provider/EmailContent$Mailbox;->CONTENT_PROJECTION:[Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "accountKey="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v9, v0

    iget-wide v9, v9, Lcom/android/email/provider/EmailContent$Account;->mId:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " AND syncInterval IN (-3,-2) AND type!=\"68\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 2893
    .local v13, c:Landroid/database/Cursor;
    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->clear()V

    .line 2894
    invoke-virtual/range {v41 .. v41}, Ljava/util/ArrayList;->clear()V

    move v15, v14

    .line 2897
    .end local v14           #canPushCount:I
    .local v15, canPushCount:I
    :goto_1
    :try_start_0
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2898
    add-int/lit8 v40, v40, 0x1

    .line 2902
    const/4 v5, 0x0

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    .line 2903
    .local v26, mailboxId:J
    invoke-static/range {v26 .. v27}, Lcom/android/exchange/SyncManager;->pingStatus(J)I

    move-result v36

    .line 2904
    .local v36, pingStatus:I
    const/4 v5, 0x1

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 2905
    .local v28, mailboxName:Ljava/lang/String;
    if-nez v36, :cond_3

    .line 2906
    const/4 v5, 0x7

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v44

    .line 2907
    .local v44, syncKey:Ljava/lang/String;
    if-eqz v44, :cond_0

    const-string v5, "0"

    move-object v0, v5

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_1

    .line 2909
    :cond_0
    add-int/lit8 v40, v40, -0x1

    .line 2910
    add-int/lit8 v45, v45, 0x1

    .line 2911
    goto :goto_1

    .line 2914
    :cond_1
    add-int/lit8 v14, v15, 0x1

    .end local v15           #canPushCount:I
    .restart local v14       #canPushCount:I
    if-nez v15, :cond_2

    .line 2916
    const/16 v5, 0x345

    :try_start_1
    move-object/from16 v0, v43

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v5

    const/16 v6, 0x348

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v5

    const/16 v6, 0x349

    invoke-virtual {v5, v6}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 2922
    :cond_2
    move-object/from16 v0, p0

    move-object v1, v13

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->getTargetCollectionClassFromCursor(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v20

    .line 2923
    .local v20, folderClass:Ljava/lang/String;
    const/16 v5, 0x34a

    move-object/from16 v0, v43

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v5

    const/16 v6, 0x34b

    const/4 v7, 0x2

    invoke-interface {v13, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v5

    const/16 v6, 0x34c

    move-object v0, v5

    move v1, v6

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 2927
    move-object/from16 v0, v41

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    .end local v20           #folderClass:Ljava/lang/String;
    .end local v44           #syncKey:Ljava/lang/String;
    :goto_2
    move v15, v14

    .line 2936
    .end local v14           #canPushCount:I
    .restart local v15       #canPushCount:I
    goto :goto_1

    .line 2928
    :cond_3
    const/4 v5, 0x1

    move/from16 v0, v36

    move v1, v5

    if-eq v0, v1, :cond_4

    const/4 v5, 0x2

    move/from16 v0, v36

    move v1, v5

    if-ne v0, v1, :cond_5

    .line 2930
    :cond_4
    :try_start_2
    move-object/from16 v0, v30

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v14, v15

    .end local v15           #canPushCount:I
    .restart local v14       #canPushCount:I
    goto :goto_2

    .line 2931
    .end local v14           #canPushCount:I
    .restart local v15       #canPushCount:I
    :cond_5
    const/4 v5, 0x3

    move/from16 v0, v36

    move v1, v5

    if-ne v0, v1, :cond_29

    .line 2932
    add-int/lit8 v40, v40, -0x1

    .line 2933
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v28, v5, v6

    const/4 v6, 0x1

    const-string v7, " in error state; ignore"

    aput-object v7, v5, v6

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 2938
    .end local v26           #mailboxId:J
    .end local v28           #mailboxName:Ljava/lang/String;
    .end local v36           #pingStatus:I
    :catchall_0
    move-exception v5

    move v14, v15

    .end local v15           #canPushCount:I
    .restart local v14       #canPushCount:I
    :goto_3
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    throw v5

    .end local v14           #canPushCount:I
    .restart local v15       #canPushCount:I
    :cond_6
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 2941
    sget-boolean v5, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v5, :cond_8

    .line 2942
    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_7

    .line 2943
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ping not ready for: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 2945
    :cond_7
    invoke-virtual/range {v41 .. v41}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_8

    .line 2946
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ping ready for: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 2952
    :cond_8
    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_a

    const/4 v5, 0x5

    move/from16 v0, v39

    move v1, v5

    if-le v0, v1, :cond_a

    const/4 v5, 0x1

    move/from16 v21, v5

    .line 2954
    .local v21, forcePing:Z
    :goto_4
    if-lez v15, :cond_24

    move v0, v15

    move/from16 v1, v40

    if-eq v0, v1, :cond_9

    if-eqz v21, :cond_24

    .line 2956
    :cond_9
    invoke-virtual/range {v43 .. v43}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/exchange/adapter/Serializer;->done()V

    .line 2957
    const/16 v39, 0x0

    .line 2958
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/exchange/EasSyncService;->mPostReset:Z

    .line 2959
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/exchange/EasSyncService;->mPostAborted:Z

    .line 2962
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/exchange/EasSyncService;->mStop:Z

    move v5, v0

    if-eqz v5, :cond_b

    .line 3109
    .end local v13           #c:Landroid/database/Cursor;
    .end local v15           #canPushCount:I
    .end local v21           #forcePing:Z
    .end local v40           #pushCount:I
    .end local v43           #s:Lcom/android/exchange/adapter/Serializer;
    .end local v45           #uninitCount:I
    :goto_5
    return-void

    .line 2952
    .restart local v13       #c:Landroid/database/Cursor;
    .restart local v15       #canPushCount:I
    .restart local v40       #pushCount:I
    .restart local v43       #s:Lcom/android/exchange/adapter/Serializer;
    .restart local v45       #uninitCount:I
    :cond_a
    const/4 v5, 0x0

    move/from16 v21, v5

    goto :goto_4

    .line 2964
    .restart local v21       #forcePing:Z
    :cond_b
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v37

    .line 2967
    .local v37, pingTime:J
    if-eqz v21, :cond_c

    .line 2968
    const/4 v5, 0x1

    :try_start_3
    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "Forcing ping after waiting for all boxes to be ready"

    aput-object v7, v5, v6

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 2971
    :cond_c
    sget-boolean v5, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v5, :cond_d

    .line 2973
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "runPingLoop:Wbxml"

    aput-object v7, v5, v6

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 2974
    invoke-virtual/range {v43 .. v43}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v11

    .line 2975
    .local v11, b:[B
    new-instance v12, Ljava/io/ByteArrayInputStream;

    invoke-direct {v12, v11}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 2976
    .local v12, byTe:Ljava/io/ByteArrayInputStream;
    new-instance v25, Lcom/android/exchange/adapter/LogAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    move-object v5, v0

    move-object/from16 v0, v25

    move-object v1, v5

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/adapter/LogAdapter;-><init>(Lcom/android/email/provider/EmailContent$Mailbox;Lcom/android/exchange/EasSyncService;)V

    .line 2977
    .local v25, logA:Lcom/android/exchange/adapter/LogAdapter;
    move-object/from16 v0, v25

    move-object v1, v12

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/LogAdapter;->parse(Ljava/io/InputStream;)Z

    .line 2981
    .end local v11           #b:[B
    .end local v12           #byTe:Ljava/io/ByteArrayInputStream;
    .end local v25           #logA:Lcom/android/exchange/adapter/LogAdapter;
    :cond_d
    invoke-virtual/range {v43 .. v43}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v5

    if-eqz v21, :cond_f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exchange/EasSyncService;->mPingForceHeartbeat:I

    move v6, v0

    :goto_6
    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/EasSyncService;->sendPing([BI)Lorg/apache/http/HttpResponse;

    move-result-object v42

    .line 2984
    .local v42, res:Lorg/apache/http/HttpResponse;
    invoke-interface/range {v42 .. v42}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v16

    .line 2985
    .local v16, code:I
    const-string v5, "Ping response: "

    move-object/from16 v0, p0

    move-object v1, v5

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/EasSyncService;->userLog(Ljava/lang/String;I)V

    .line 2988
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/exchange/EasSyncService;->mStop:Z

    move v5, v0

    if-eqz v5, :cond_10

    .line 2989
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "Stopping pingLoop"

    aput-object v7, v5, v6

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 3072
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 3073
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    move-object v6, v0

    if-eqz v6, :cond_e

    .line 3074
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    move-object v6, v0

    invoke-virtual {v6}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 3075
    const/4 v6, 0x0

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    .line 3077
    :cond_e
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 3079
    invoke-direct/range {p0 .. p0}, Lcom/android/exchange/EasSyncService;->shutdownConnectionManager()V

    goto/16 :goto_5

    .end local v16           #code:I
    .end local v42           #res:Lorg/apache/http/HttpResponse;
    :cond_f
    move/from16 v6, v32

    .line 2981
    goto :goto_6

    .line 2993
    .restart local v16       #code:I
    .restart local v42       #res:Lorg/apache/http/HttpResponse;
    :cond_10
    const/16 v5, 0xc8

    move/from16 v0, v16

    move v1, v5

    if-ne v0, v1, :cond_18

    .line 2995
    :try_start_5
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    move-wide v5, v0

    invoke-static {v5, v6}, Lcom/android/exchange/SyncManager;->removeFromSyncErrorMap(J)V

    .line 2996
    invoke-interface/range {v42 .. v42}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v17

    .line 2997
    .local v17, e:Lorg/apache/http/HttpEntity;
    invoke-interface/range {v17 .. v17}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v5

    move-wide v0, v5

    long-to-int v0, v0

    move/from16 v24, v0

    .line 2998
    .local v24, len:I
    invoke-interface/range {v42 .. v42}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v23

    .line 2999
    .local v23, is:Ljava/io/InputStream;
    if-eqz v24, :cond_15

    .line 3000
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object v2, v5

    move-object/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/android/exchange/EasSyncService;->parsePingResult(Ljava/io/InputStream;Landroid/content/ContentResolver;Ljava/util/HashMap;)I

    move-result v35

    .line 3003
    .local v35, pingResult:I
    const/4 v5, 0x1

    move/from16 v0, v35

    move v1, v5

    if-ne v0, v1, :cond_13

    if-nez v21, :cond_13

    .line 3004
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exchange/EasSyncService;->mPingHighWaterMark:I

    move v5, v0

    move/from16 v0, v32

    move v1, v5

    if-le v0, v1, :cond_11

    .line 3005
    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/exchange/EasSyncService;->mPingHighWaterMark:I

    .line 3006
    const-string v5, "Setting high water mark at: "

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exchange/EasSyncService;->mPingHighWaterMark:I

    move v6, v0

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/EasSyncService;->userLog(Ljava/lang/String;I)V

    .line 3008
    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exchange/EasSyncService;->mPingMaxHeartbeat:I

    move v5, v0

    move/from16 v0, v32

    move v1, v5

    if-ge v0, v1, :cond_13

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/exchange/EasSyncService;->mPingHeartbeatDropped:Z

    move v5, v0

    if-nez v5, :cond_13

    .line 3010
    move/from16 v0, v32

    add-int/lit16 v0, v0, 0xb4

    move/from16 v32, v0

    .line 3011
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exchange/EasSyncService;->mPingMaxHeartbeat:I

    move v5, v0

    move/from16 v0, v32

    move v1, v5

    if-le v0, v1, :cond_12

    .line 3012
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exchange/EasSyncService;->mPingMaxHeartbeat:I

    move/from16 v32, v0

    .line 3014
    :cond_12
    const-string v5, "Increasing ping heartbeat to "

    const-string v6, "s"

    move-object/from16 v0, p0

    move-object v1, v5

    move/from16 v2, v32

    move-object v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/exchange/EasSyncService;->userLog(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 3072
    .end local v17           #e:Lorg/apache/http/HttpEntity;
    .end local v23           #is:Ljava/io/InputStream;
    .end local v24           #len:I
    .end local v35           #pingResult:I
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 3073
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    move-object v6, v0

    if-eqz v6, :cond_14

    .line 3074
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    move-object v6, v0

    invoke-virtual {v6}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 3075
    const/4 v6, 0x0

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    .line 3077
    :cond_14
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 3079
    .end local v16           #code:I
    .end local v42           #res:Lorg/apache/http/HttpResponse;
    :goto_7
    invoke-direct/range {p0 .. p0}, Lcom/android/exchange/EasSyncService;->shutdownConnectionManager()V

    goto/16 :goto_0

    .line 3018
    .restart local v16       #code:I
    .restart local v17       #e:Lorg/apache/http/HttpEntity;
    .restart local v23       #is:Ljava/io/InputStream;
    .restart local v24       #len:I
    .restart local v42       #res:Lorg/apache/http/HttpResponse;
    :cond_15
    const/4 v5, 0x1

    :try_start_7
    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "Ping returned empty result; throwing IOException"

    aput-object v7, v5, v6

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 3019
    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5}, Ljava/io/IOException;-><init>()V

    throw v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    .line 3026
    .end local v16           #code:I
    .end local v17           #e:Lorg/apache/http/HttpEntity;
    .end local v23           #is:Ljava/io/InputStream;
    .end local v24           #len:I
    .end local v42           #res:Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v5

    move-object/from16 v17, v5

    .line 3027
    .local v17, e:Ljava/io/IOException;
    :try_start_8
    invoke-virtual/range {v17 .. v17}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v29

    .line 3030
    .local v29, message:Ljava/lang/String;
    if-eqz v29, :cond_1a

    const/4 v5, 0x1

    move/from16 v22, v5

    .line 3031
    .local v22, hasMessage:Z
    :goto_8
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IOException runPingLoop: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz v22, :cond_1b

    move-object/from16 v8, v29

    :goto_9
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 3033
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long v33, v5, v37

    .line 3034
    .local v33, pingLength:J
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/exchange/EasSyncService;->mPostReset:Z

    move v5, v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-eqz v5, :cond_1c

    .line 3072
    :cond_16
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 3073
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    move-object v6, v0

    if-eqz v6, :cond_17

    .line 3074
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    move-object v6, v0

    invoke-virtual {v6}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 3075
    const/4 v6, 0x0

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    .line 3077
    :cond_17
    monitor-exit v5

    goto :goto_7

    :catchall_1
    move-exception v6

    monitor-exit v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    throw v6

    .line 3021
    .end local v17           #e:Ljava/io/IOException;
    .end local v22           #hasMessage:Z
    .end local v29           #message:Ljava/lang/String;
    .end local v33           #pingLength:J
    .restart local v16       #code:I
    .restart local v42       #res:Lorg/apache/http/HttpResponse;
    :cond_18
    :try_start_a
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->isAuthError(I)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 3022
    const/4 v5, 0x2

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/exchange/EasSyncService;->mExitStatus:I

    .line 3023
    const-string v5, "Authorization error during Ping: "

    move-object/from16 v0, p0

    move-object v1, v5

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/EasSyncService;->userLog(Ljava/lang/String;I)V

    .line 3024
    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5}, Ljava/io/IOException;-><init>()V

    throw v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0

    .line 3072
    .end local v16           #code:I
    .end local v42           #res:Lorg/apache/http/HttpResponse;
    :catchall_2
    move-exception v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 3073
    :try_start_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    move-object v7, v0

    if-eqz v7, :cond_19

    .line 3074
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    move-object v7, v0

    invoke-virtual {v7}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 3075
    const/4 v7, 0x0

    move-object v0, v7

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    .line 3077
    :cond_19
    monitor-exit v6
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 3079
    invoke-direct/range {p0 .. p0}, Lcom/android/exchange/EasSyncService;->shutdownConnectionManager()V

    .line 3072
    throw v5

    .line 3030
    .restart local v17       #e:Ljava/io/IOException;
    .restart local v29       #message:Ljava/lang/String;
    :cond_1a
    const/4 v5, 0x0

    move/from16 v22, v5

    goto/16 :goto_8

    .line 3031
    .restart local v22       #hasMessage:Z
    :cond_1b
    :try_start_c
    const-string v8, "[no message]"

    goto/16 :goto_9

    .line 3037
    .restart local v33       #pingLength:J
    :cond_1c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/exchange/EasSyncService;->mPostAborted:Z

    move v5, v0

    if-nez v5, :cond_1d

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-wide/from16 v2, v33

    move/from16 v4, v32

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/exchange/EasSyncService;->isLikelyNatFailure(Ljava/lang/String;JI)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 3041
    :cond_1d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exchange/EasSyncService;->mPingMinHeartbeat:I

    move v5, v0

    move/from16 v0, v32

    move v1, v5

    if-le v0, v1, :cond_1f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exchange/EasSyncService;->mPingHighWaterMark:I

    move v5, v0

    move/from16 v0, v32

    move v1, v5

    if-le v0, v1, :cond_1f

    .line 3043
    move/from16 v0, v32

    add-int/lit16 v0, v0, -0xb4

    move/from16 v32, v0

    .line 3044
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/exchange/EasSyncService;->mPingHeartbeatDropped:Z

    .line 3045
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exchange/EasSyncService;->mPingMinHeartbeat:I

    move v5, v0

    move/from16 v0, v32

    move v1, v5

    if-ge v0, v1, :cond_1e

    .line 3046
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exchange/EasSyncService;->mPingMinHeartbeat:I

    move/from16 v32, v0

    .line 3048
    :cond_1e
    const-string v5, "Decreased ping heartbeat to "

    const-string v6, "s"

    move-object/from16 v0, p0

    move-object v1, v5

    move/from16 v2, v32

    move-object v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/exchange/EasSyncService;->userLog(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_a

    .line 3049
    :cond_1f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/exchange/EasSyncService;->mPostAborted:Z

    move v5, v0

    if-eqz v5, :cond_20

    .line 3055
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "Ping aborted; retry"

    aput-object v7, v5, v6

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    goto/16 :goto_a

    .line 3056
    :cond_20
    const-wide/16 v5, 0x7d0

    cmp-long v5, v33, v5

    if-gez v5, :cond_21

    .line 3057
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "Abort or NAT type return < 2 seconds; throwing IOException"

    aput-object v7, v5, v6

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 3058
    throw v17

    .line 3060
    :cond_21
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "NAT type IOException"

    aput-object v7, v5, v6

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    goto/16 :goto_a

    .line 3062
    :cond_22
    if-eqz v22, :cond_23

    const-string v5, "roken pipe"

    move-object/from16 v0, v29

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_16

    .line 3067
    :cond_23
    throw v17
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 3082
    .end local v17           #e:Ljava/io/IOException;
    .end local v22           #hasMessage:Z
    .end local v29           #message:Ljava/lang/String;
    .end local v33           #pingLength:J
    .end local v37           #pingTime:J
    :cond_24
    if-eqz v21, :cond_25

    .line 3085
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "pingLoop waiting 60s for any pingable boxes"

    aput-object v7, v5, v6

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 3086
    const-wide/32 v5, 0xea60

    const/4 v7, 0x1

    move-object/from16 v0, p0

    move-wide v1, v5

    move v3, v7

    invoke-direct {v0, v1, v2, v3}, Lcom/android/exchange/EasSyncService;->sleep(JZ)V

    goto/16 :goto_0

    .line 3087
    :cond_25
    if-lez v40, :cond_26

    .line 3090
    const-wide/16 v5, 0x7d0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-wide v1, v5

    move v3, v7

    invoke-direct {v0, v1, v2, v3}, Lcom/android/exchange/EasSyncService;->sleep(JZ)V

    .line 3091
    add-int/lit8 v39, v39, 0x1

    goto/16 :goto_0

    .line 3093
    :cond_26
    if-lez v45, :cond_27

    .line 3097
    const-string v5, "pingLoop waiting for initial sync of "

    const-string v6, " box(es)"

    move-object/from16 v0, p0

    move-object v1, v5

    move/from16 v2, v45

    move-object v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/exchange/EasSyncService;->userLog(Ljava/lang/String;ILjava/lang/String;)V

    .line 3098
    const-wide/16 v5, 0x2710

    const/4 v7, 0x1

    move-object/from16 v0, p0

    move-wide v1, v5

    move v3, v7

    invoke-direct {v0, v1, v2, v3}, Lcom/android/exchange/EasSyncService;->sleep(JZ)V

    goto/16 :goto_0

    .line 3102
    :cond_27
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "pingLoop sleeping for 30m"

    aput-object v7, v5, v6

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 3103
    const-wide/32 v5, 0x1b7740

    const/4 v7, 0x1

    move-object/from16 v0, p0

    move-wide v1, v5

    move v3, v7

    invoke-direct {v0, v1, v2, v3}, Lcom/android/exchange/EasSyncService;->sleep(JZ)V

    goto/16 :goto_0

    .line 3108
    .end local v13           #c:Landroid/database/Cursor;
    .end local v15           #canPushCount:I
    .end local v21           #forcePing:Z
    .end local v40           #pushCount:I
    .end local v43           #s:Lcom/android/exchange/adapter/Serializer;
    .end local v45           #uninitCount:I
    :cond_28
    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/exchange/EasSyncService;->mPingHeartbeat:I

    goto/16 :goto_5

    .line 3077
    .restart local v13       #c:Landroid/database/Cursor;
    .restart local v15       #canPushCount:I
    .restart local v21       #forcePing:Z
    .restart local v37       #pingTime:J
    .restart local v40       #pushCount:I
    .restart local v43       #s:Lcom/android/exchange/adapter/Serializer;
    .restart local v45       #uninitCount:I
    :catchall_3
    move-exception v5

    :try_start_d
    monitor-exit v6
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    throw v5

    .restart local v16       #code:I
    .restart local v42       #res:Lorg/apache/http/HttpResponse;
    :catchall_4
    move-exception v6

    :try_start_e
    monitor-exit v5
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    throw v6

    :catchall_5
    move-exception v6

    :try_start_f
    monitor-exit v5
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    throw v6

    .line 2938
    .end local v15           #canPushCount:I
    .end local v16           #code:I
    .end local v21           #forcePing:Z
    .end local v37           #pingTime:J
    .end local v42           #res:Lorg/apache/http/HttpResponse;
    .restart local v14       #canPushCount:I
    .restart local v26       #mailboxId:J
    .restart local v28       #mailboxName:Ljava/lang/String;
    .restart local v36       #pingStatus:I
    .restart local v44       #syncKey:Ljava/lang/String;
    :catchall_6
    move-exception v5

    goto/16 :goto_3

    .end local v14           #canPushCount:I
    .end local v44           #syncKey:Ljava/lang/String;
    .restart local v15       #canPushCount:I
    :cond_29
    move v14, v15

    .end local v15           #canPushCount:I
    .restart local v14       #canPushCount:I
    goto/16 :goto_2
.end method

.method public static searchEmail(Landroid/content/Context;JJJLcom/android/exchange/SearchRequest;)Lcom/android/exchange/provider/EmailResult;
    .locals 4
    .parameter "context"
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "foldId"
    .parameter "request"

    .prologue
    .line 1181
    invoke-static {p1, p2}, Lcom/android/exchange/SyncManager;->getAccountById(J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object p1

    .line 1182
    .local p1, acct:Lcom/android/email/provider/EmailContent$Account;
    if-eqz p1, :cond_3

    .line 1184
    iget-wide v0, p1, Lcom/android/email/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    invoke-static {p0, v0, v1}, Lcom/android/email/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$HostAuth;

    move-result-object p2

    .line 1185
    .local p2, ha:Lcom/android/email/provider/EmailContent$HostAuth;
    new-instance v0, Lcom/android/exchange/EasSyncService;

    const-string v1, "%EmailSearch%"

    invoke-direct {v0, v1}, Lcom/android/exchange/EasSyncService;-><init>(Ljava/lang/String;)V

    .line 1187
    .local v0, svc:Lcom/android/exchange/EasSyncService;
    :try_start_0
    iput-object p0, v0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    .line 1188
    iget-object v1, p2, Lcom/android/email/provider/EmailContent$HostAuth;->mAddress:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/exchange/EasSyncService;->mHostAddress:Ljava/lang/String;

    .line 1189
    iget-object v1, p2, Lcom/android/email/provider/EmailContent$HostAuth;->mLogin:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/exchange/EasSyncService;->mUserName:Ljava/lang/String;

    .line 1190
    iget-object v1, p2, Lcom/android/email/provider/EmailContent$HostAuth;->mPassword:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/exchange/EasSyncService;->mPassword:Ljava/lang/String;

    .line 1191
    iget v1, p2, Lcom/android/email/provider/EmailContent$HostAuth;->mFlags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, v0, Lcom/android/exchange/EasSyncService;->mSsl:Z

    .line 1192
    iget v1, p2, Lcom/android/email/provider/EmailContent$HostAuth;->mFlags:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, v0, Lcom/android/exchange/EasSyncService;->mTrustSsl:Z

    .line 1193
    invoke-static {}, Lcom/android/exchange/SyncManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/exchange/EasSyncService;->mDeviceId:Ljava/lang/String;

    .line 1194
    iput-object p1, v0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    .line 1195
    invoke-static {p0, p3, p4}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v1

    iput-object v1, v0, Lcom/android/exchange/EasSyncService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    .line 1197
    const-string v1, "EasSyncService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fzhang search mailboxID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p3

    .end local p3
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Lcom/android/exchange/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1199
    invoke-static {p0, p1, p7}, Lcom/android/exchange/adapter/EasEmailSearchAdapter;->buildEasEmailSearchRequest(Landroid/content/Context;Lcom/android/email/provider/EmailContent$Account;Lcom/android/exchange/SearchRequest;)Lcom/android/exchange/adapter/Serializer;

    move-result-object p0

    .line 1201
    .local p0, s:Lcom/android/exchange/adapter/Serializer;
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    .end local p1           #acct:Lcom/android/email/provider/EmailContent$Account;
    const/4 p3, 0x0

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p7, "Start Email Search "

    .end local p7
    invoke-virtual {p4, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    iget-object p2, p2, Lcom/android/email/provider/EmailContent$HostAuth;->mAddress:Ljava/lang/String;

    .end local p2           #ha:Lcom/android/email/provider/EmailContent$HostAuth;
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, p3

    invoke-virtual {v0, p1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 1202
    const-string p1, "Search"

    invoke-virtual {p0}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object p0

    .end local p0           #s:Lcom/android/exchange/adapter/Serializer;
    invoke-virtual {v0, p1, p0}, Lcom/android/exchange/EasSyncService;->sendHttpClientPost(Ljava/lang/String;[B)Lorg/apache/http/HttpResponse;

    move-result-object p1

    .line 1203
    .local p1, resp:Lorg/apache/http/HttpResponse;
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result p0

    .line 1204
    .local p0, code:I
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p1

    .end local p1           #resp:Lorg/apache/http/HttpResponse;
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object p1

    .line 1205
    .local p1, is:Ljava/io/InputStream;
    new-instance p2, Lcom/android/exchange/adapter/EasEmailSearchParser;

    new-instance p3, Lcom/android/exchange/adapter/EmailSyncAdapter;

    iget-object p4, v0, Lcom/android/exchange/EasSyncService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    invoke-direct {p3, p4, v0}, Lcom/android/exchange/adapter/EmailSyncAdapter;-><init>(Lcom/android/email/provider/EmailContent$Mailbox;Lcom/android/exchange/EasSyncService;)V

    invoke-direct {p2, p1, p3}, Lcom/android/exchange/adapter/EasEmailSearchParser;-><init>(Ljava/io/InputStream;Lcom/android/exchange/adapter/AbstractSyncAdapter;)V

    .line 1206
    .local p2, parse:Lcom/android/exchange/adapter/EasEmailSearchParser;
    invoke-virtual {p2, p5, p6}, Lcom/android/exchange/adapter/EasEmailSearchParser;->setFoldId(J)V

    .line 1208
    const/16 p1, 0xc8

    if-ne p0, p1, :cond_2

    .line 1209
    .end local p1           #is:Ljava/io/InputStream;
    invoke-virtual {p2}, Lcom/android/exchange/adapter/EasEmailSearchParser;->parse_email_response()Lcom/android/exchange/provider/EmailResult;

    move-result-object p0

    .line 1220
    .end local v0           #svc:Lcom/android/exchange/EasSyncService;
    .end local p0           #code:I
    .end local p2           #parse:Lcom/android/exchange/adapter/EasEmailSearchParser;
    :goto_2
    return-object p0

    .line 1191
    .restart local v0       #svc:Lcom/android/exchange/EasSyncService;
    .local p0, context:Landroid/content/Context;
    .local p1, acct:Lcom/android/email/provider/EmailContent$Account;
    .local p2, ha:Lcom/android/email/provider/EmailContent$HostAuth;
    .restart local p3
    .restart local p7
    :cond_0
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 1192
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 1213
    .end local p1           #acct:Lcom/android/email/provider/EmailContent$Account;
    .end local p3
    .end local p7
    .local p0, code:I
    .local p2, parse:Lcom/android/exchange/adapter/EasEmailSearchParser;
    :cond_2
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    const/4 p2, 0x0

    new-instance p3, Ljava/lang/StringBuilder;

    .end local p2           #parse:Lcom/android/exchange/adapter/EasEmailSearchParser;
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Search Email returned "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0           #code:I
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p1, p2

    invoke-virtual {v0, p1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1220
    .end local v0           #svc:Lcom/android/exchange/EasSyncService;
    :cond_3
    :goto_3
    const/4 p0, 0x0

    goto :goto_2

    .line 1215
    .restart local v0       #svc:Lcom/android/exchange/EasSyncService;
    :catch_0
    move-exception p0

    .line 1217
    .local p0, e:Ljava/io/IOException;
    const-string p1, "EasSyncService"

    invoke-virtual {v0, p1, p0}, Lcom/android/exchange/EasSyncService;->userLog(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_3
.end method

.method public static searchGal(Landroid/content/Context;JLjava/lang/String;)Lcom/android/exchange/provider/GalResult;
    .locals 3
    .parameter "context"
    .parameter "accountId"
    .parameter "filter"

    .prologue
    .line 1238
    invoke-static {p1, p2}, Lcom/android/exchange/SyncManager;->getAccountById(J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object p1

    .line 1239
    .local p1, acct:Lcom/android/email/provider/EmailContent$Account;
    if-eqz p1, :cond_5

    .line 1240
    iget-wide v0, p1, Lcom/android/email/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    invoke-static {p0, v0, v1}, Lcom/android/email/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$HostAuth;

    move-result-object p2

    .line 1241
    .local p2, ha:Lcom/android/email/provider/EmailContent$HostAuth;
    new-instance v0, Lcom/android/exchange/EasSyncService;

    const-string v1, "%GalLookupk%"

    invoke-direct {v0, v1}, Lcom/android/exchange/EasSyncService;-><init>(Ljava/lang/String;)V

    .line 1243
    .local v0, svc:Lcom/android/exchange/EasSyncService;
    :try_start_0
    iput-object p0, v0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    .line 1244
    iget-object p0, p2, Lcom/android/email/provider/EmailContent$HostAuth;->mAddress:Ljava/lang/String;

    .end local p0
    iput-object p0, v0, Lcom/android/exchange/EasSyncService;->mHostAddress:Ljava/lang/String;

    .line 1245
    iget-object p0, p2, Lcom/android/email/provider/EmailContent$HostAuth;->mLogin:Ljava/lang/String;

    iput-object p0, v0, Lcom/android/exchange/EasSyncService;->mUserName:Ljava/lang/String;

    .line 1246
    iget-object p0, p2, Lcom/android/email/provider/EmailContent$HostAuth;->mPassword:Ljava/lang/String;

    iput-object p0, v0, Lcom/android/exchange/EasSyncService;->mPassword:Ljava/lang/String;

    .line 1247
    iget p0, p2, Lcom/android/email/provider/EmailContent$HostAuth;->mFlags:I

    and-int/lit8 p0, p0, 0x1

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    :goto_0
    iput-boolean p0, v0, Lcom/android/exchange/EasSyncService;->mSsl:Z

    .line 1248
    iget p0, p2, Lcom/android/email/provider/EmailContent$HostAuth;->mFlags:I

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_3

    const/4 p0, 0x1

    :goto_1
    iput-boolean p0, v0, Lcom/android/exchange/EasSyncService;->mTrustSsl:Z

    .line 1249
    invoke-static {}, Lcom/android/exchange/SyncManager;->getDeviceId()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/android/exchange/EasSyncService;->mDeviceId:Ljava/lang/String;

    .line 1250
    iput-object p1, v0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    .line 1252
    sget-wide p0, Lcom/android/exchange/SyncManager;->MAILBOX_DUMMY_GALSEARCH:J

    iput-wide p0, v0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    .line 1254
    new-instance p2, Lcom/android/exchange/adapter/Serializer;

    .end local p2           #ha:Lcom/android/email/provider/EmailContent$HostAuth;
    invoke-direct {p2}, Lcom/android/exchange/adapter/Serializer;-><init>()V

    .line 1255
    .local p2, s:Lcom/android/exchange/adapter/Serializer;
    const/16 p0, 0x3c5

    invoke-virtual {p2, p0}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object p0

    const/16 p1, 0x3c7

    invoke-virtual {p0, p1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1256
    .end local p1           #acct:Lcom/android/email/provider/EmailContent$Account;
    const/16 p0, 0x3c8

    const-string p1, "GAL"

    invoke-virtual {p2, p0, p1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object p0

    const/16 p1, 0x3c9

    invoke-virtual {p0, p1, p3}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1257
    const/16 p0, 0x3ca

    invoke-virtual {p2, p0}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1258
    const/16 p0, 0x3cb

    const-string p1, "0-19"

    invoke-virtual {p2, p0, p1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1259
    invoke-virtual {p2}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/exchange/adapter/Serializer;->done()V

    .line 1262
    sget-boolean p0, Lcom/android/exchange/Eas;->PARSER_LOG:Z

    if-eqz p0, :cond_0

    .line 1263
    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/String;

    const/4 p1, 0x0

    const-string p3, "searchGal(): Wbxml:"

    .end local p3
    aput-object p3, p0, p1

    invoke-virtual {v0, p0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 1264
    invoke-virtual {p2}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object p0

    .line 1265
    .local p0, b:[B
    new-instance p1, Ljava/io/ByteArrayInputStream;

    invoke-direct {p1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1266
    .local p1, byTe:Ljava/io/ByteArrayInputStream;
    new-instance p0, Lcom/android/exchange/adapter/LogAdapter;

    .end local p0           #b:[B
    iget-object p3, v0, Lcom/android/exchange/EasSyncService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    invoke-direct {p0, p3, v0}, Lcom/android/exchange/adapter/LogAdapter;-><init>(Lcom/android/email/provider/EmailContent$Mailbox;Lcom/android/exchange/EasSyncService;)V

    .line 1267
    .local p0, logA:Lcom/android/exchange/adapter/LogAdapter;
    invoke-virtual {p0, p1}, Lcom/android/exchange/adapter/LogAdapter;->parse(Ljava/io/InputStream;)Z

    .line 1271
    .end local p0           #logA:Lcom/android/exchange/adapter/LogAdapter;
    .end local p1           #byTe:Ljava/io/ByteArrayInputStream;
    :cond_0
    const-string p0, "Search"

    invoke-virtual {p2}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/android/exchange/EasSyncService;->sendHttpClientPost(Ljava/lang/String;[B)Lorg/apache/http/HttpResponse;

    move-result-object p1

    .line 1272
    .local p1, resp:Lorg/apache/http/HttpResponse;
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result p0

    .line 1275
    .local p0, code:I
    sget-boolean p2, Lcom/android/exchange/Eas;->USER_LOG:Z

    .end local p2           #s:Lcom/android/exchange/adapter/Serializer;
    if-eqz p2, :cond_1

    .line 1276
    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/String;

    const/4 p3, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "searchGal() Search command response code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, p3

    invoke-virtual {v0, p2}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 1280
    :cond_1
    const/16 p2, 0xc8

    if-ne p0, p2, :cond_4

    .line 1281
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p0

    .end local p0           #code:I
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object p1

    .line 1282
    .local p1, is:Ljava/io/InputStream;
    new-instance p0, Lcom/android/exchange/adapter/GalParser;

    invoke-direct {p0, p1, v0}, Lcom/android/exchange/adapter/GalParser;-><init>(Ljava/io/InputStream;Lcom/android/exchange/EasSyncService;)V

    .line 1283
    .local p0, gp:Lcom/android/exchange/adapter/GalParser;
    invoke-virtual {p0}, Lcom/android/exchange/adapter/GalParser;->parse()Z

    move-result p1

    .end local p1           #is:Ljava/io/InputStream;
    if-eqz p1, :cond_5

    .line 1285
    invoke-virtual {p0}, Lcom/android/exchange/adapter/GalParser;->getGalResult()Lcom/android/exchange/provider/GalResult;

    move-result-object p0

    .line 1297
    .end local v0           #svc:Lcom/android/exchange/EasSyncService;
    .end local p0           #gp:Lcom/android/exchange/adapter/GalParser;
    :goto_2
    return-object p0

    .line 1247
    .restart local v0       #svc:Lcom/android/exchange/EasSyncService;
    .local p1, acct:Lcom/android/email/provider/EmailContent$Account;
    .local p2, ha:Lcom/android/email/provider/EmailContent$HostAuth;
    .restart local p3
    :cond_2
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 1248
    :cond_3
    const/4 p0, 0x0

    goto/16 :goto_1

    .line 1290
    .end local p2           #ha:Lcom/android/email/provider/EmailContent$HostAuth;
    .end local p3
    .local p0, code:I
    .local p1, resp:Lorg/apache/http/HttpResponse;
    :cond_4
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    .end local p1           #resp:Lorg/apache/http/HttpResponse;
    const/4 p2, 0x0

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GAL lookup returned "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0           #code:I
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p1, p2

    invoke-virtual {v0, p1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1297
    .end local v0           #svc:Lcom/android/exchange/EasSyncService;
    :cond_5
    :goto_3
    const/4 p0, 0x0

    goto :goto_2

    .line 1292
    .restart local v0       #svc:Lcom/android/exchange/EasSyncService;
    :catch_0
    move-exception p0

    .line 1294
    .local p0, e:Ljava/lang/Exception;
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    const/4 p2, 0x0

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GAL lookup exception "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0           #e:Ljava/lang/Exception;
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p1, p2

    invoke-virtual {v0, p1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    goto :goto_3
.end method

.method private sendMeetingResponseMail(Lcom/android/email/provider/EmailContent$Message;I)V
    .locals 16
    .parameter "msg"
    .parameter "response"

    .prologue
    .line 1514
    new-instance v9, Lcom/android/email/mail/PackedString;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Message;->mMeetingInfo:Ljava/lang/String;

    move-object v13, v0

    invoke-direct {v9, v13}, Lcom/android/email/mail/PackedString;-><init>(Ljava/lang/String;)V

    .line 1515
    .local v9, meetingInfo:Lcom/android/email/mail/PackedString;
    if-nez v9, :cond_1

    .line 1579
    :cond_0
    :goto_0
    return-void

    .line 1519
    :cond_1
    const-string v13, "ORGMAIL"

    invoke-virtual {v9, v13}, Lcom/android/email/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/email/mail/Address;->parse(Ljava/lang/String;)[Lcom/android/email/mail/Address;

    move-result-object v1

    .line 1521
    .local v1, addrs:[Lcom/android/email/mail/Address;
    array-length v13, v1

    const/4 v14, 0x1

    if-ne v13, v14, :cond_0

    .line 1522
    const/4 v13, 0x0

    aget-object v13, v1, v13

    invoke-virtual {v13}, Lcom/android/email/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v10

    .line 1524
    .local v10, organizerEmail:Ljava/lang/String;
    const-string v13, "DTSTAMP"

    invoke-virtual {v9, v13}, Lcom/android/email/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1525
    .local v4, dtStamp:Ljava/lang/String;
    const-string v13, "DTSTART"

    invoke-virtual {v9, v13}, Lcom/android/email/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1526
    .local v5, dtStart:Ljava/lang/String;
    const-string v13, "DTEND"

    invoke-virtual {v9, v13}, Lcom/android/email/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1530
    .local v3, dtEnd:Ljava/lang/String;
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 1531
    .local v7, entityValues:Landroid/content/ContentValues;
    new-instance v6, Landroid/content/Entity;

    invoke-direct {v6, v7}, Landroid/content/Entity;-><init>(Landroid/content/ContentValues;)V

    .line 1534
    .local v6, entity:Landroid/content/Entity;
    const-string v13, "DTSTAMP"

    invoke-static {v4}, Lcom/android/exchange/utility/CalendarUtilities;->convertEmailDateTimeToCalendarDateTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1536
    const-string v13, "dtstart"

    invoke-static {v5}, Lcom/android/email/Utility;->parseEmailDateTimeToMillis(Ljava/lang/String;)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v7, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1537
    const-string v13, "dtend"

    invoke-static {v3}, Lcom/android/email/Utility;->parseEmailDateTimeToMillis(Ljava/lang/String;)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v7, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1538
    const-string v13, "eventLocation"

    const-string v14, "LOC"

    invoke-virtual {v9, v14}, Lcom/android/email/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1539
    const-string v13, "title"

    const-string v14, "TITLE"

    invoke-virtual {v9, v14}, Lcom/android/email/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1540
    const-string v13, "organizer"

    invoke-virtual {v7, v13, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1543
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1544
    .local v2, attendeeValues:Landroid/content/ContentValues;
    const-string v13, "attendeeRelationship"

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v2, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1546
    const-string v13, "attendeeEmail"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v14, v0

    iget-object v14, v14, Lcom/android/email/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v2, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1547
    sget-object v13, Landroid/provider/Calendar$Attendees;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v13, v2}, Landroid/content/Entity;->addSubValue(Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 1550
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 1551
    .local v11, organizerValues:Landroid/content/ContentValues;
    const-string v13, "attendeeRelationship"

    const/4 v14, 0x2

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1553
    const-string v13, "attendeeEmail"

    invoke-virtual {v11, v13, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1554
    sget-object v13, Landroid/provider/Calendar$Attendees;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v13, v11}, Landroid/content/Entity;->addSubValue(Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 1560
    packed-switch p2, :pswitch_data_0

    .line 1569
    :pswitch_0
    const/16 v8, 0x100

    .line 1572
    .local v8, flag:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    move-object v13, v0

    const-string v14, "UID"

    invoke-virtual {v9, v14}, Lcom/android/email/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v15, v0

    invoke-static {v13, v6, v8, v14, v15}, Lcom/android/exchange/utility/CalendarUtilities;->createMessageForEntity(Landroid/content/Context;Landroid/content/Entity;ILjava/lang/String;Lcom/android/email/provider/EmailContent$Account;)Lcom/android/email/provider/EmailContent$Message;

    move-result-object v12

    .line 1576
    .local v12, outgoingMsg:Lcom/android/email/provider/EmailContent$Message;
    if-eqz v12, :cond_0

    .line 1577
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    move-object v13, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v14, v0

    iget-wide v14, v14, Lcom/android/email/provider/EmailContent$Account;->mId:J

    invoke-static {v13, v14, v15, v12}, Lcom/android/exchange/EasOutboxService;->sendMessage(Landroid/content/Context;JLcom/android/email/provider/EmailContent$Message;)V

    goto/16 :goto_0

    .line 1562
    .end local v8           #flag:I
    .end local v12           #outgoingMsg:Lcom/android/email/provider/EmailContent$Message;
    :pswitch_1
    const/16 v8, 0x40

    .line 1563
    .restart local v8       #flag:I
    goto :goto_1

    .line 1565
    .end local v8           #flag:I
    :pswitch_2
    const/16 v8, 0x80

    .line 1566
    .restart local v8       #flag:I
    goto :goto_1

    .line 1560
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private setupProtocolVersion(Lcom/android/exchange/EasSyncService;Lorg/apache/http/Header;)V
    .locals 10
    .parameter "service"
    .parameter "versionHeader"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 525
    invoke-interface {p2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 526
    .local v4, supportedVersions:Ljava/lang/String;
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "Server supports versions: "

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v4, v7, v8

    invoke-virtual {p0, v7}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 527
    const-string v7, ","

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 528
    .local v5, supportedVersionsArray:[Ljava/lang/String;
    const/4 v3, 0x0

    .line 530
    .local v3, ourVersion:Ljava/lang/String;
    move-object v0, v5

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v6, v0, v1

    .line 531
    .local v6, version:Ljava/lang/String;
    const-string v7, "2.5"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "12.0"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "12.1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 536
    :cond_0
    move-object v3, v6

    .line 530
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 541
    .end local v6           #version:Ljava/lang/String;
    :cond_2
    if-nez v3, :cond_3

    .line 542
    iget-object v7, p0, Lcom/android/exchange/EasSyncService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No supported EAS versions: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/exchange/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    new-instance v7, Lcom/android/email/mail/MessagingException;

    const/16 v8, 0x9

    invoke-direct {v7, v8}, Lcom/android/email/mail/MessagingException;-><init>(I)V

    throw v7

    .line 545
    :cond_3
    iput-object v3, p1, Lcom/android/exchange/EasSyncService;->mProtocolVersion:Ljava/lang/String;

    .line 546
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    iput-object v7, p1, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    .line 547
    iget-object v7, p1, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    if-eqz v7, :cond_4

    .line 548
    iget-object v7, p1, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iput-object v3, v7, Lcom/android/email/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    .line 551
    :cond_4
    return-void
.end method

.method private shutdownConnectionManager()V
    .locals 1

    .prologue
    .line 1876
    sget-object v0, Lcom/android/exchange/SyncManager;->mClientConnectionManager:Lorg/apache/http/conn/ClientConnectionManager;

    if-eqz v0, :cond_0

    .line 1877
    invoke-static {}, Lcom/android/exchange/SyncManager;->newClientConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 1878
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/android/exchange/SyncManager;->mClientConnectionManager:Lorg/apache/http/conn/ClientConnectionManager;

    .line 1879
    return-void
.end method

.method private shutdownConnectionManagerForLoadMore()V
    .locals 2

    .prologue
    .line 1883
    sget-object v0, Lcom/android/exchange/SyncManager;->lmClientConnectionManager:Lorg/apache/http/conn/ClientConnectionManager;

    if-eqz v0, :cond_0

    .line 1884
    const-string v0, "Email"

    const-string v1, "shutdownConnectionManagerForLoadMore"

    invoke-static {v0, v1}, Lcom/android/exchange/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1885
    invoke-static {}, Lcom/android/exchange/SyncManager;->getClientConnectionManagerForLoadMore()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 1887
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/android/exchange/SyncManager;->lmClientConnectionManager:Lorg/apache/http/conn/ClientConnectionManager;

    .line 1888
    return-void
.end method

.method private sleep(JZ)V
    .locals 4
    .parameter "ms"
    .parameter "runAsleep"

    .prologue
    .line 3112
    if-eqz p3, :cond_0

    .line 3113
    iget-wide v0, p0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    const-wide/16 v2, 0x1388

    add-long/2addr v2, p1

    invoke-static {v0, v1, v2, v3}, Lcom/android/exchange/SyncManager;->runAsleep(JJ)V

    .line 3116
    :cond_0
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3120
    if-eqz p3, :cond_1

    .line 3121
    iget-wide v0, p0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    :goto_0
    invoke-static {v0, v1}, Lcom/android/exchange/SyncManager;->runAwake(J)V

    .line 3124
    :cond_1
    return-void

    .line 3120
    :catchall_0
    move-exception v0

    if-eqz p3, :cond_2

    .line 3121
    iget-wide v1, p0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    invoke-static {v1, v2}, Lcom/android/exchange/SyncManager;->runAwake(J)V

    .line 3120
    :cond_2
    throw v0

    .line 3117
    :catch_0
    move-exception v0

    .line 3120
    if-eqz p3, :cond_1

    .line 3121
    iget-wide v0, p0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    goto :goto_0
.end method

.method private tryProvision()Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x1

    const-string v11, ">"

    const-string v10, "<"

    .line 2270
    invoke-direct {p0}, Lcom/android/exchange/EasSyncService;->canProvision()Lcom/android/exchange/adapter/ProvisionParser;

    move-result-object v2

    .line 2271
    .local v2, pp:Lcom/android/exchange/adapter/ProvisionParser;
    if-eqz v2, :cond_5

    .line 2272
    iget-object v5, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v4

    .line 2274
    .local v4, sp:Lcom/android/email/SecurityPolicy;
    invoke-virtual {v2}, Lcom/android/exchange/adapter/ProvisionParser;->getPolicySet()Lcom/android/email/SecurityPolicy$PolicySet;

    move-result-object v3

    .line 2279
    .local v3, ps:Lcom/android/email/SecurityPolicy$PolicySet;
    if-eqz v3, :cond_0

    .line 2280
    iget-object v5, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v5, v6, v9, v7}, Lcom/android/email/SecurityPolicy$PolicySet;->writeAccount(Lcom/android/email/provider/EmailContent$Account;Ljava/lang/String;ZLandroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2281
    iget-object v5, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v5, v5, Lcom/android/email/provider/EmailContent$Account;->mId:J

    invoke-virtual {v4, v5, v6}, Lcom/android/email/SecurityPolicy;->updatePolicies(J)V

    .line 2284
    :cond_0
    invoke-virtual {v2}, Lcom/android/exchange/adapter/ProvisionParser;->getRemoteWipe()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2286
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/exchange/EasSyncService;->TAG:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "<"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ">"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Remote Wipe got from Provision Parser"

    invoke-static {v5, v6}, Lcom/android/exchange/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2295
    :try_start_0
    invoke-virtual {v2}, Lcom/android/exchange/adapter/ProvisionParser;->getPolicyKey()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/exchange/EasSyncService;->acknowledgeRemoteWipe(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2303
    :goto_0
    invoke-virtual {v4}, Lcom/android/email/SecurityPolicy;->isActiveAdmin()Z

    move-result v5

    if-nez v5, :cond_1

    .line 2305
    iget-object v5, p0, Lcom/android/exchange/EasSyncService;->TAG:Ljava/lang/String;

    const-string v6, "Email is not admin. Sending broadcast for MASTER_CLEAR"

    invoke-static {v5, v6}, Lcom/android/exchange/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2306
    iget-object v5, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :goto_1
    move v5, v8

    .line 2333
    .end local v3           #ps:Lcom/android/email/SecurityPolicy$PolicySet;
    .end local v4           #sp:Lcom/android/email/SecurityPolicy;
    :goto_2
    return v5

    .line 2296
    .restart local v3       #ps:Lcom/android/email/SecurityPolicy$PolicySet;
    .restart local v4       #sp:Lcom/android/email/SecurityPolicy;
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 2299
    .local v0, e:Ljava/lang/Exception;
    iget-object v5, p0, Lcom/android/exchange/EasSyncService;->TAG:Ljava/lang/String;

    const-string v6, "acknowledgeRemoteWipe exception"

    invoke-static {v5, v6}, Lcom/android/exchange/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2308
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    invoke-virtual {v4}, Lcom/android/email/SecurityPolicy;->remoteWipe()V

    goto :goto_1

    .line 2311
    :cond_2
    invoke-virtual {v4, v3}, Lcom/android/email/SecurityPolicy;->isActive(Lcom/android/email/SecurityPolicy$PolicySet;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2314
    invoke-virtual {v2}, Lcom/android/exchange/adapter/ProvisionParser;->getPolicyKey()Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-direct {p0, v5, v6}, Lcom/android/exchange/EasSyncService;->acknowledgeProvision(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2315
    .local v1, policyKey:Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 2317
    iget-object v5, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v6, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v5, v1, v9, v6}, Lcom/android/email/SecurityPolicy$PolicySet;->writeAccount(Lcom/android/email/provider/EmailContent$Account;Ljava/lang/String;ZLandroid/content/Context;)Z

    .line 2320
    invoke-virtual {v4}, Lcom/android/email/SecurityPolicy;->reducePolicies()V

    .line 2323
    sget-object v5, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    iget-object v6, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    const/4 v7, 0x4

    iget-object v8, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/exchange/SyncManager;->releaseSyncHolds(Landroid/content/Context;ILcom/android/email/provider/EmailContent$Account;)V

    move v5, v9

    .line 2325
    goto :goto_2

    .line 2329
    .end local v1           #policyKey:Ljava/lang/String;
    :cond_3
    iget-object v5, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v5, v5, Lcom/android/email/provider/EmailContent$Account;->mId:J

    invoke-virtual {v4, v5, v6}, Lcom/android/email/SecurityPolicy;->policiesRequired(J)V

    .end local v3           #ps:Lcom/android/email/SecurityPolicy$PolicySet;
    .end local v4           #sp:Lcom/android/email/SecurityPolicy;
    :cond_4
    :goto_3
    move v5, v8

    .line 2333
    goto :goto_2

    .line 2332
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/exchange/EasSyncService;->TAG:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "<"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ">"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "pp is null. CANNOT PROVISION"

    invoke-static {v5, v6}, Lcom/android/exchange/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method


# virtual methods
.method public activateDevice(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    const-string v4, "ExchangeActivation"

    .line 3770
    new-instance v0, Lcom/android/exchange/adapter/EasActivator;

    invoke-direct {v0, p1}, Lcom/android/exchange/adapter/EasActivator;-><init>(Landroid/content/Context;)V

    .line 3771
    .local v0, activator:Lcom/android/exchange/adapter/EasActivator;
    invoke-virtual {v0}, Lcom/android/exchange/adapter/EasActivator;->actionActivateDevice()Ljava/lang/String;

    move-result-object v1

    .line 3772
    .local v1, license:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 3773
    const-string v2, "ExchangeActivation"

    const-string v2, "Activation fail"

    invoke-static {v4, v2}, Lcom/android/exchange/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3777
    :goto_0
    return-object v1

    .line 3775
    :cond_0
    const-string v2, "ExchangeActivation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Activation succeed - key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/android/exchange/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public alarm()Z
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 394
    iget-object v5, p0, Lcom/android/exchange/EasSyncService;->mThread:Ljava/lang/Thread;

    if-nez v5, :cond_0

    move v5, v9

    .line 451
    :goto_0
    return v5

    .line 395
    :cond_0
    iget-object v5, p0, Lcom/android/exchange/EasSyncService;->mThread:Ljava/lang/Thread;

    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    .line 397
    .local v3, threadName:Ljava/lang/String;
    new-array v5, v9, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "alarm() called for for thread:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/exchange/EasSyncService;->mThread:Ljava/lang/Thread;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/exchange/EasSyncService;->mThread:Ljava/lang/Thread;

    invoke-virtual {v7}, Ljava/lang/Thread;->getId()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    :goto_1
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-virtual {p0, v5}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 400
    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 402
    :try_start_0
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    .line 403
    .local v0, post:Lorg/apache/http/client/methods/HttpPost;
    if-eqz v0, :cond_6

    iget-boolean v6, p0, Lcom/android/exchange/EasSyncService;->commandFinished:Z

    if-nez v6, :cond_6

    .line 406
    sget-boolean v6, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v6, :cond_2

    .line 407
    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpPost;->getURI()Ljava/net/URI;

    move-result-object v4

    .line 408
    .local v4, uri:Ljava/net/URI;
    if-eqz v4, :cond_5

    .line 409
    invoke-virtual {v4}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v1

    .line 410
    .local v1, query:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 411
    const-string v1, "POST"

    .line 413
    :cond_1
    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    const/4 v7, 0x1

    const-string v8, ": Alert, aborting "

    aput-object v8, v6, v7

    const/4 v7, 0x2

    aput-object v1, v6, v7

    invoke-virtual {p0, v6}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 419
    .end local v1           #query:Ljava/lang/String;
    .end local v4           #uri:Ljava/net/URI;
    :cond_2
    :goto_2
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/exchange/EasSyncService;->mPostAborted:Z

    .line 420
    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 426
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 430
    const-wide/16 v5, 0x2710

    :try_start_1
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 434
    :goto_3
    iget-object v5, p0, Lcom/android/exchange/EasSyncService;->mThread:Ljava/lang/Thread;

    invoke-virtual {v5}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v2

    .line 435
    .local v2, s:Ljava/lang/Thread$State;
    sget-boolean v5, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v5, :cond_3

    .line 436
    new-array v5, v9, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": State = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Thread$State;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-virtual {p0, v5}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 439
    :cond_3
    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 442
    :try_start_2
    sget-object v6, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    invoke-virtual {v6, v2}, Ljava/lang/Thread$State;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    iget-object v6, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v6, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 443
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/exchange/EasSyncService;->mStop:Z

    .line 444
    iget-object v6, p0, Lcom/android/exchange/EasSyncService;->mThread:Ljava/lang/Thread;

    invoke-virtual {v6}, Ljava/lang/Thread;->interrupt()V

    .line 445
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "Interrupting..."

    aput-object v8, v6, v7

    invoke-virtual {p0, v6}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 447
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move v5, v10

    goto/16 :goto_0

    .line 397
    .end local v0           #post:Lorg/apache/http/client/methods/HttpPost;
    .end local v2           #s:Ljava/lang/Thread$State;
    :cond_4
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 415
    .restart local v0       #post:Lorg/apache/http/client/methods/HttpPost;
    .restart local v4       #uri:Ljava/net/URI;
    :cond_5
    const/4 v6, 0x2

    :try_start_3
    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    const/4 v7, 0x1

    const-string v8, ": Alert, no URI?"

    aput-object v8, v6, v7

    invoke-virtual {p0, v6}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    goto :goto_2

    .line 426
    .end local v0           #post:Lorg/apache/http/client/methods/HttpPost;
    .end local v4           #uri:Ljava/net/URI;
    :catchall_0
    move-exception v6

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v6

    .line 423
    .restart local v0       #post:Lorg/apache/http/client/methods/HttpPost;
    :cond_6
    const/4 v6, 0x1

    :try_start_4
    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "Alert, no pending POST"

    aput-object v8, v6, v7

    invoke-virtual {p0, v6}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 424
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move v5, v9

    goto/16 :goto_0

    .line 449
    .restart local v2       #s:Ljava/lang/Thread$State;
    :cond_7
    :try_start_5
    monitor-exit v5

    move v5, v9

    .line 451
    goto/16 :goto_0

    .line 449
    :catchall_1
    move-exception v6

    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v6

    .line 431
    .end local v2           #s:Ljava/lang/Thread$State;
    :catch_0
    move-exception v5

    goto/16 :goto_3
.end method

.method protected checkGzipRequired(Ljava/lang/String;)Z
    .locals 1
    .parameter "fileName"

    .prologue
    .line 2212
    const-string v0, ".txt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".html"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".doc"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".xls"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".rtf"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".xml"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".bmp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".ppt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".xlsx"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2221
    :cond_0
    const/4 v0, 0x1

    .line 2223
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public createUniqueFileInternal(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 9
    .parameter "dir"
    .parameter "filename"

    .prologue
    .line 1319
    if-nez p1, :cond_1

    .line 1320
    iget-object v7, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 1324
    .local v0, directory:Ljava/io/File;
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    .line 1325
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 1327
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1328
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_2

    move-object v7, v2

    .line 1352
    :goto_1
    return-object v7

    .line 1322
    .end local v0           #directory:Ljava/io/File;
    .end local v2           #file:Ljava/io/File;
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v0       #directory:Ljava/io/File;
    goto :goto_0

    .line 1332
    .restart local v2       #file:Ljava/io/File;
    :cond_2
    const/16 v7, 0x2e

    invoke-virtual {p2, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 1333
    .local v4, index:I
    move-object v5, p2

    .line 1334
    .local v5, name:Ljava/lang/String;
    const-string v1, ""

    .line 1335
    .local v1, extension:Ljava/lang/String;
    const/4 v7, -0x1

    if-eq v4, v7, :cond_3

    .line 1336
    const/4 v7, 0x0

    invoke-virtual {p2, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 1337
    invoke-virtual {p2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1339
    :cond_3
    const/4 v3, 0x2

    .local v3, i:I
    :goto_2
    const v7, 0x7fffffff

    if-ge v3, v7, :cond_5

    .line 1343
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 1344
    .local v6, sb:Ljava/lang/StringBuffer;
    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const/16 v8, 0x2d

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1345
    new-instance v2, Ljava/io/File;

    .end local v2           #file:Ljava/io/File;
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v0, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1348
    .restart local v2       #file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_4

    move-object v7, v2

    .line 1349
    goto :goto_1

    .line 1339
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1352
    .end local v6           #sb:Ljava/lang/StringBuffer;
    :cond_5
    const/4 v7, 0x0

    goto :goto_1
.end method

.method protected executePostWithTimeout(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpPost;I)Lorg/apache/http/HttpResponse;
    .locals 6
    .parameter "client"
    .parameter "method"
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1987
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/exchange/EasSyncService;->executePostWithTimeout(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpPost;IZZ)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method protected executePostWithTimeout(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpPost;IZZ)Lorg/apache/http/HttpResponse;
    .locals 10
    .parameter "client"
    .parameter "method"
    .parameter "timeout"
    .parameter "isPingCommand"
    .parameter "isAbortNotNeeded"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v3, "executePostWithTimeout():Thread stopped mailbox:"

    const-string v3, " Watchdog not cleared again"

    .line 2002
    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 2003
    :try_start_0
    iput-object p2, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    .line 2004
    add-int/lit16 v4, p3, 0x2710

    int-to-long v0, v4

    .line 2005
    .local v0, alarmTime:J
    if-eqz p4, :cond_1

    .line 2006
    iget-wide v4, p0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    invoke-static {v4, v5, v0, v1}, Lcom/android/exchange/SyncManager;->runAsleep(JJ)V

    .line 2010
    :goto_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2012
    :try_start_1
    invoke-interface {p1, p2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    .line 2026
    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 2027
    :try_start_2
    iget-boolean v5, p0, Lcom/android/exchange/EasSyncService;->mStop:Z

    if-nez v5, :cond_6

    .line 2034
    if-eqz p4, :cond_7

    .line 2035
    iget-wide v5, p0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    invoke-static {v5, v6}, Lcom/android/exchange/SyncManager;->runAwake(J)V

    .line 2041
    :goto_1
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/exchange/EasSyncService;->commandFinished:Z

    .line 2042
    if-eqz p5, :cond_0

    .line 2043
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    .line 2044
    :cond_0
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 2012
    return-object v3

    .line 2008
    :cond_1
    :try_start_3
    iget-wide v4, p0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    invoke-static {v4, v5, v0, v1}, Lcom/android/exchange/SyncManager;->setWatchdogAlarm(JJ)V

    goto :goto_0

    .line 2010
    .end local v0           #alarmTime:J
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    .line 2015
    .restart local v0       #alarmTime:J
    :catch_0
    move-exception v2

    .line 2018
    .local v2, ie:Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Timeout waiting for connection"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2019
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "executePostWithTimeout(): Timeout Waiting for Connection. Shutting down ConnectionManager"

    aput-object v5, v3, v4

    invoke-virtual {p0, v3}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 2020
    invoke-static {}, Lcom/android/exchange/SyncManager;->shutdownConnectionManager()V

    .line 2022
    :cond_2
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2026
    .end local v2           #ie:Ljava/io/IOException;
    :catchall_1
    move-exception v3

    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 2027
    :try_start_5
    iget-boolean v5, p0, Lcom/android/exchange/EasSyncService;->mStop:Z

    if-nez v5, :cond_4

    .line 2034
    if-eqz p4, :cond_5

    .line 2035
    iget-wide v5, p0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    invoke-static {v5, v6}, Lcom/android/exchange/SyncManager;->runAwake(J)V

    .line 2041
    :goto_2
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/exchange/EasSyncService;->commandFinished:Z

    .line 2042
    if-eqz p5, :cond_3

    .line 2043
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    .line 2044
    :cond_3
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 2026
    throw v3

    .line 2044
    :catchall_2
    move-exception v3

    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v3

    .line 2040
    :cond_4
    const/4 v5, 0x1

    :try_start_7
    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "executePostWithTimeout():Thread stopped mailbox:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " Watchdog not cleared again"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {p0, v5}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    goto :goto_2

    .line 2037
    :cond_5
    iget-wide v5, p0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    invoke-static {v5, v6}, Lcom/android/exchange/SyncManager;->clearWatchdogAlarm(J)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_2

    .line 2044
    :catchall_3
    move-exception v3

    :try_start_8
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v3

    .line 2040
    :cond_6
    const/4 v5, 0x1

    :try_start_9
    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "executePostWithTimeout():Thread stopped mailbox:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " Watchdog not cleared again"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {p0, v5}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2037
    :cond_7
    iget-wide v5, p0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    invoke-static {v5, v6}, Lcom/android/exchange/SyncManager;->clearWatchdogAlarm(J)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto/16 :goto_1
.end method

.method protected getAttachment(Lcom/android/exchange/PartRequest;)V
    .locals 38
    .parameter "req"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1362
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/exchange/PartRequest;->mAttachment:Lcom/android/email/provider/EmailContent$Attachment;

    move-object/from16 v16, v0

    .line 1363
    .local v16, att:Lcom/android/email/provider/EmailContent$Attachment;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    move-object v4, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Attachment;->mMessageKey:J

    move-wide v5, v0

    invoke-static {v4, v5, v6}, Lcom/android/email/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Message;

    move-result-object v30

    .line 1364
    .local v30, msg:Lcom/android/email/provider/EmailContent$Message;
    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Message;->mId:J

    move-wide v5, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Attachment;->mId:J

    move-wide v7, v0

    const/4 v9, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/exchange/EasSyncService;->doProgressCallback(JJI)V

    .line 1367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    move-object v4, v0

    const-string v5, "device_policy"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/app/admin/DevicePolicyManager;

    .line 1368
    .local v29, mDPM:Landroid/app/admin/DevicePolicyManager;
    if-eqz v29, :cond_2

    .line 1369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/email/SecurityPolicy;->getAdminComponent()Landroid/content/ComponentName;

    move-result-object v4

    move-object/from16 v0, v29

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getMaxAttachmentSize(Landroid/content/ComponentName;)I

    move-result v4

    move v0, v4

    int-to-long v0, v0

    move-wide/from16 v34, v0

    .line 1370
    .local v34, size:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/email/SecurityPolicy;->getAdminComponent()Landroid/content/ComponentName;

    move-result-object v4

    move-object/from16 v0, v29

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getAttachmentsEnabled(Landroid/content/ComponentName;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->TAG:Ljava/lang/String;

    move-object v4, v0

    const-string v5, "IT SecurityPolicy: Attachments disabled"

    invoke-static {v4, v5}, Lcom/android/exchange/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1373
    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Message;->mId:J

    move-wide v5, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Attachment;->mId:J

    move-wide v7, v0

    const/16 v9, 0x17

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/exchange/EasSyncService;->doStatusCallback(JJI)V

    .line 1505
    .end local v34           #size:J
    :cond_0
    :goto_0
    return-void

    .line 1375
    .restart local v34       #size:J
    :cond_1
    const-wide/16 v4, 0x0

    cmp-long v4, v34, v4

    if-lez v4, :cond_2

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Attachment;->mSize:J

    move-wide v4, v0

    cmp-long v4, v4, v34

    if-lez v4, :cond_2

    .line 1377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->TAG:Ljava/lang/String;

    move-object v4, v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IT SecurityPolicy: Attachment Maxsize exceeded. request:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Attachment;->mSize:J

    move-wide v6, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", max="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/exchange/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1378
    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Message;->mId:J

    move-wide v5, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Attachment;->mId:J

    move-wide v7, v0

    const/16 v9, 0x17

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/exchange/EasSyncService;->doStatusCallback(JJI)V

    goto :goto_0

    .line 1387
    .end local v34           #size:J
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GetAttachment&AttachmentName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Attachment;->mLocation:Ljava/lang/String;

    move-object v5, v0

    invoke-static {v5}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 1388
    .local v18, cmd:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->TAG:Ljava/lang/String;

    move-object v4, v0

    const-string v5, "getAttachment http request start"

    invoke-static {v4, v5}, Lcom/android/exchange/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1389
    const/4 v4, 0x0

    const v5, 0xea60

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object v2, v4

    move v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/exchange/EasSyncService;->sendHttpClientPost(Ljava/lang/String;Lorg/apache/http/HttpEntity;I)Lorg/apache/http/HttpResponse;

    move-result-object v33

    .line 1390
    .local v33, res:Lorg/apache/http/HttpResponse;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->TAG:Ljava/lang/String;

    move-object v4, v0

    const-string v5, "getattachment http response received"

    invoke-static {v4, v5}, Lcom/android/exchange/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1393
    invoke-interface/range {v33 .. v33}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v36

    .line 1396
    .local v36, status:I
    sget-boolean v4, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v4, :cond_3

    .line 1397
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getAttachment(): GetAttachment command http response code:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 1401
    :cond_3
    const/16 v4, 0xc8

    move/from16 v0, v36

    move v1, v4

    if-ne v0, v1, :cond_d

    .line 1402
    invoke-interface/range {v33 .. v33}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v22

    .line 1403
    .local v22, e:Lorg/apache/http/HttpEntity;
    invoke-interface/range {v22 .. v22}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v4

    move-wide v0, v4

    long-to-int v0, v0

    move/from16 v27, v0

    .line 1404
    .local v27, len:I
    invoke-interface/range {v33 .. v33}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v25

    .line 1407
    .local v25, is:Ljava/io/InputStream;
    if-eqz v25, :cond_4

    .line 1409
    invoke-interface/range {v33 .. v33}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v23

    .line 1411
    .local v23, encodingType:Lorg/apache/http/Header;
    if-eqz v23, :cond_4

    invoke-interface/range {v23 .. v23}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "gzip"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1414
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->TAG:Ljava/lang/String;

    move-object v4, v0

    const-string v5, "getAttachment unzip start"

    invoke-static {v4, v5}, Lcom/android/exchange/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1415
    new-instance v26, Ljava/util/zip/GZIPInputStream;

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1416
    .end local v25           #is:Ljava/io/InputStream;
    .local v26, is:Ljava/io/InputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->TAG:Ljava/lang/String;

    move-object v4, v0

    const-string v5, "getAttachment unzip end"

    invoke-static {v4, v5}, Lcom/android/exchange/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v25, v26

    .line 1423
    .end local v23           #encodingType:Lorg/apache/http/Header;
    .end local v26           #is:Ljava/io/InputStream;
    .restart local v25       #is:Ljava/io/InputStream;
    :cond_4
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/exchange/PartRequest;->mDestination:Ljava/lang/String;

    move-object v4, v0

    if-eqz v4, :cond_8

    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/exchange/PartRequest;->mDestination:Ljava/lang/String;

    move-object v5, v0

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v24, v4

    .line 1426
    .local v24, f:Ljava/io/File;
    :goto_1
    if-eqz v24, :cond_0

    .line 1428
    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v21

    .line 1429
    .local v21, destDir:Ljava/io/File;
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_5

    .line 1430
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->mkdirs()Z

    .line 1432
    :cond_5
    new-instance v31, Ljava/io/FileOutputStream;

    move-object/from16 v0, v31

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1435
    .local v31, os:Ljava/io/FileOutputStream;
    if-eqz v27, :cond_7

    .line 1437
    :try_start_0
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exchange/EasSyncService;->mPendingRequest:Lcom/android/exchange/PartRequest;

    .line 1438
    const/16 v4, 0x4000

    move v0, v4

    new-array v0, v0, [B

    move-object/from16 v17, v0

    .line 1439
    .local v17, bytes:[B
    move/from16 v28, v27

    .line 1442
    .local v28, length:I
    const/16 v37, 0x0

    .line 1443
    .local v37, totalRead:I
    const-string v4, "Attachment content-length: "

    move-object/from16 v0, p0

    move-object v1, v4

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/EasSyncService;->userLog(Ljava/lang/String;I)V

    .line 1445
    :cond_6
    :goto_2
    const/4 v4, 0x0

    const/16 v5, 0x4000

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    move v2, v4

    move v3, v5

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v32

    .line 1448
    .local v32, read:I
    if-gez v32, :cond_9

    .line 1449
    const-string v4, "Attachment load reached EOF, totalRead: "

    move-object/from16 v0, p0

    move-object v1, v4

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/EasSyncService;->userLog(Ljava/lang/String;I)V

    .line 1474
    :goto_3
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "gzipAttachment: totalRead= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1477
    const/4 v4, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exchange/EasSyncService;->mPendingRequest:Lcom/android/exchange/PartRequest;

    .line 1480
    .end local v17           #bytes:[B
    .end local v28           #length:I
    .end local v32           #read:I
    .end local v37           #totalRead:I
    :cond_7
    invoke-virtual/range {v31 .. v31}, Ljava/io/FileOutputStream;->flush()V

    .line 1481
    invoke-virtual/range {v31 .. v31}, Ljava/io/FileOutputStream;->close()V

    .line 1484
    invoke-virtual/range {v16 .. v16}, Lcom/android/email/provider/EmailContent$Attachment;->isSaved()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1485
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/exchange/PartRequest;->mContentUriString:Ljava/lang/String;

    move-object v4, v0

    if-eqz v4, :cond_b

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/exchange/PartRequest;->mContentUriString:Ljava/lang/String;

    move-object v4, v0

    move-object/from16 v19, v4

    .line 1488
    .local v19, contentUriString:Ljava/lang/String;
    :goto_4
    new-instance v20, Landroid/content/ContentValues;

    invoke-direct/range {v20 .. v20}, Landroid/content/ContentValues;-><init>()V

    .line 1489
    .local v20, cv:Landroid/content/ContentValues;
    const-string v4, "contentUri"

    move-object/from16 v0, v20

    move-object v1, v4

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1490
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    move-object v4, v0

    move-object/from16 v0, v16

    move-object v1, v4

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/email/provider/EmailContent$Attachment;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 1491
    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Message;->mId:J

    move-wide v11, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Attachment;->mId:J

    move-wide v13, v0

    const/4 v15, 0x0

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v15}, Lcom/android/exchange/EasSyncService;->doStatusCallback(JJI)V

    goto/16 :goto_0

    .line 1423
    .end local v19           #contentUriString:Ljava/lang/String;
    .end local v20           #cv:Landroid/content/ContentValues;
    .end local v21           #destDir:Ljava/io/File;
    .end local v24           #f:Ljava/io/File;
    .end local v31           #os:Ljava/io/FileOutputStream;
    :cond_8
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/exchange/PartRequest;->mDestination:Ljava/lang/String;

    move-object v4, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/EasSyncService;->createUniqueFileInternal(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    move-object/from16 v24, v4

    goto/16 :goto_1

    .line 1454
    .restart local v17       #bytes:[B
    .restart local v21       #destDir:Ljava/io/File;
    .restart local v24       #f:Ljava/io/File;
    .restart local v28       #length:I
    .restart local v31       #os:Ljava/io/FileOutputStream;
    .restart local v32       #read:I
    .restart local v37       #totalRead:I
    :cond_9
    add-int v37, v37, v32

    .line 1457
    const/4 v4, 0x0

    :try_start_1
    move-object/from16 v0, v31

    move-object/from16 v1, v17

    move v2, v4

    move/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/FileOutputStream;->write([BII)V

    .line 1462
    if-lez v28, :cond_6

    move-object/from16 v0, v25

    instance-of v0, v0, Ljava/util/zip/GZIPInputStream;

    move v4, v0

    if-nez v4, :cond_6

    .line 1464
    move/from16 v0, v37

    move/from16 v1, v28

    if-le v0, v1, :cond_a

    .line 1465
    const-string v4, "totalRead is greater than attachment length?"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->errorLog(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_3

    .line 1477
    .end local v17           #bytes:[B
    .end local v28           #length:I
    .end local v32           #read:I
    .end local v37           #totalRead:I
    :catchall_0
    move-exception v4

    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exchange/EasSyncService;->mPendingRequest:Lcom/android/exchange/PartRequest;

    throw v4

    .line 1468
    .restart local v17       #bytes:[B
    .restart local v28       #length:I
    .restart local v32       #read:I
    .restart local v37       #totalRead:I
    :cond_a
    mul-int/lit8 v4, v37, 0x64

    :try_start_2
    div-int v9, v4, v28

    .line 1469
    .local v9, pct:I
    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Message;->mId:J

    move-wide v5, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Attachment;->mId:J

    move-wide v7, v0

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/exchange/EasSyncService;->doProgressCallback(JJI)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2

    .line 1485
    .end local v9           #pct:I
    .end local v17           #bytes:[B
    .end local v28           #length:I
    .end local v32           #read:I
    .end local v37           #totalRead:I
    :cond_b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v19, v4

    goto/16 :goto_4

    .line 1497
    :cond_c
    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->delete()Z

    .line 1499
    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Message;->mId:J

    move-wide v11, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Attachment;->mId:J

    move-wide v13, v0

    const/16 v15, 0x11

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v15}, Lcom/android/exchange/EasSyncService;->doStatusCallback(JJI)V

    goto/16 :goto_0

    .line 1503
    .end local v21           #destDir:Ljava/io/File;
    .end local v22           #e:Lorg/apache/http/HttpEntity;
    .end local v24           #f:Ljava/io/File;
    .end local v25           #is:Ljava/io/InputStream;
    .end local v27           #len:I
    .end local v31           #os:Ljava/io/FileOutputStream;
    :cond_d
    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Message;->mId:J

    move-wide v11, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Attachment;->mId:J

    move-wide v13, v0

    const/16 v15, 0x10

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v15}, Lcom/android/exchange/EasSyncService;->doStatusCallback(JJI)V

    goto/16 :goto_0
.end method

.method getTargetCollectionClassFromCursor(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 2
    .parameter "c"

    .prologue
    .line 2248
    const/4 v1, 0x5

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 2249
    .local v0, type:I
    const/16 v1, 0x42

    if-ne v0, v1, :cond_0

    .line 2250
    const-string v1, "Contacts"

    .line 2254
    :goto_0
    return-object v1

    .line 2251
    :cond_0
    const/16 v1, 0x41

    if-ne v0, v1, :cond_1

    .line 2252
    const-string v1, "Calendar"

    goto :goto_0

    .line 2254
    :cond_1
    const-string v1, "Email"

    goto :goto_0
.end method

.method protected isAuthError(I)Z
    .locals 1
    .parameter "code"

    .prologue
    .line 509
    const/16 v0, 0x191

    if-eq p1, v0, :cond_0

    const/16 v0, 0x193

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isProvisionError(I)Z
    .locals 1
    .parameter "code"

    .prologue
    .line 518
    const/16 v0, 0x1c1

    if-eq p1, v0, :cond_0

    const/16 v0, 0x193

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method parseAction(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/email/provider/EmailContent$HostAuth;)V
    .locals 14
    .parameter "parser"
    .parameter "hostAuth"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1019
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    .line 1021
    .local v6, type:I
    const/4 v10, 0x1

    if-ne v6, v10, :cond_2

    .line 1077
    :cond_1
    return-void

    .line 1024
    :cond_2
    const/4 v10, 0x3

    if-ne v6, v10, :cond_3

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "Action"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 1026
    :cond_3
    const/4 v10, 0x2

    if-ne v6, v10, :cond_0

    .line 1027
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1028
    .local v4, name:Ljava/lang/String;
    const-string v10, "Error"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1030
    invoke-virtual/range {p0 .. p2}, Lcom/android/exchange/EasSyncService;->parseError(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/email/provider/EmailContent$HostAuth;)V

    goto :goto_0

    .line 1032
    :cond_4
    const-string v10, "Redirect"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 1035
    iget-object v10, p0, Lcom/android/exchange/EasSyncService;->mAutoDiscInfo:Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;

    invoke-static {v10}, Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;->access$100(Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;)I

    move-result v10

    const/4 v11, 0x1

    if-ge v10, v11, :cond_0

    .line 1036
    iget-object v10, p0, Lcom/android/exchange/EasSyncService;->mAutoDiscInfo:Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;

    invoke-static {v10}, Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;->access$108(Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;)I

    .line 1037
    iget-object v10, p0, Lcom/android/exchange/EasSyncService;->mAutoDiscInfo:Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;

    const/4 v11, 0x1

    iput-boolean v11, v10, Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;->isRedirectTagPresent:Z

    .line 1038
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v10

    const-string v11, "@"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1039
    .local v2, emailParts:[Ljava/lang/String;
    const/4 v10, 0x0

    aget-object v10, v2, v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/exchange/EasSyncService;->mUserName:Ljava/lang/String;

    .line 1040
    invoke-direct {p0}, Lcom/android/exchange/EasSyncService;->cacheAuthAndCmdString()V

    .line 1041
    const/4 v10, 0x1

    aget-object v10, v2, v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1042
    .local v0, domain:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/exchange/EasSyncService;->mAutoDiscInfo:Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;

    iget-object v10, v10, Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;->RedirectPost:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v10}, Lorg/apache/http/client/methods/HttpPost;->getURI()Ljava/net/URI;

    move-result-object v7

    .line 1043
    .local v7, uri:Ljava/net/URI;
    invoke-virtual {v7}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v3

    .line 1045
    .local v3, host:Ljava/lang/String;
    const-string v10, "autodiscvoer"

    invoke-virtual {v3, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 1046
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "autodiscvoer."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1049
    :cond_5
    iget-object v10, p0, Lcom/android/exchange/EasSyncService;->mAutoDiscInfo:Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;

    iget-object v10, v10, Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;->RedirectPost:Lorg/apache/http/client/methods/HttpPost;

    const-string v11, "Authorization"

    invoke-virtual {v10, v11}, Lorg/apache/http/client/methods/HttpPost;->removeHeaders(Ljava/lang/String;)V

    .line 1050
    iget-object v10, p0, Lcom/android/exchange/EasSyncService;->mAutoDiscInfo:Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;

    iget-object v10, v10, Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;->RedirectPost:Lorg/apache/http/client/methods/HttpPost;

    const-string v11, "Authorization"

    iget-object v12, p0, Lcom/android/exchange/EasSyncService;->mAuthString:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1052
    iget-boolean v10, p0, Lcom/android/exchange/EasSyncService;->mTrustSsl:Z

    if-eqz v10, :cond_6

    const-string v10, "httpts://"

    move-object v5, v10

    .line 1054
    .local v5, sSchemaa:Ljava/lang/String;
    :goto_1
    const/4 v8, 0x0

    .line 1056
    .local v8, urinew:Ljava/net/URI;
    :try_start_0
    new-instance v9, Ljava/net/URI;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ":443"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/autodiscover/autodiscover.xml"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v8           #urinew:Ljava/net/URI;
    .local v9, urinew:Ljava/net/URI;
    move-object v8, v9

    .line 1062
    .end local v9           #urinew:Ljava/net/URI;
    .restart local v8       #urinew:Ljava/net/URI;
    :goto_2
    iget-object v10, p0, Lcom/android/exchange/EasSyncService;->mAutoDiscInfo:Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;

    iget-object v10, v10, Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;->RedirectPost:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v10, v8}, Lorg/apache/http/client/methods/HttpPost;->setURI(Ljava/net/URI;)V

    .line 1064
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Autodiscover, Redirected URI : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v8}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {p0, v10}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1052
    .end local v5           #sSchemaa:Ljava/lang/String;
    .end local v8           #urinew:Ljava/net/URI;
    :cond_6
    const-string v10, "https://"

    move-object v5, v10

    goto :goto_1

    .line 1057
    .restart local v5       #sSchemaa:Ljava/lang/String;
    .restart local v8       #urinew:Ljava/net/URI;
    :catch_0
    move-exception v10

    move-object v1, v10

    .line 1059
    .local v1, e:Ljava/net/URISyntaxException;
    invoke-virtual {v1}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_2

    .line 1072
    .end local v0           #domain:Ljava/lang/String;
    .end local v1           #e:Ljava/net/URISyntaxException;
    .end local v2           #emailParts:[Ljava/lang/String;
    .end local v3           #host:Ljava/lang/String;
    .end local v5           #sSchemaa:Ljava/lang/String;
    .end local v7           #uri:Ljava/net/URI;
    .end local v8           #urinew:Ljava/net/URI;
    :cond_7
    const-string v10, "Settings"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1073
    invoke-virtual/range {p0 .. p2}, Lcom/android/exchange/EasSyncService;->parseSettings(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/email/provider/EmailContent$HostAuth;)V

    goto/16 :goto_0
.end method

.method parseAutoDiscoverResponse(Lorg/apache/http/HttpResponse;Lorg/apache/http/client/methods/HttpPost;)Lorg/apache/http/client/methods/HttpPost;
    .locals 13
    .parameter "resp"
    .parameter "post"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v10, "autodiscover_error_code"

    .line 886
    iget-object v10, p0, Lcom/android/exchange/EasSyncService;->mAutoDiscInfo:Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;

    iput-object p2, v10, Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;->RedirectPost:Lorg/apache/http/client/methods/HttpPost;

    .line 888
    const/4 v3, 0x0

    .line 889
    .local v3, factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v8, 0x0

    .line 890
    .local v8, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v4, 0x0

    .line 894
    .local v4, hostAuth:Lcom/android/email/provider/EmailContent$HostAuth;
    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 895
    .local v1, e:Lorg/apache/http/HttpEntity;
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v6

    .line 896
    .local v6, is:Ljava/io/InputStream;
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v3

    .line 897
    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v8

    .line 898
    const-string v10, "UTF-8"

    invoke-interface {v8, v6, v10}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 900
    const/4 v0, 0x0

    .line 902
    .local v0, domain:Ljava/lang/String;
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v9

    .line 903
    .local v9, type:I
    if-nez v9, :cond_0

    .line 904
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    .line 905
    const/4 v10, 0x2

    if-ne v9, v10, :cond_0

    .line 906
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 907
    .local v7, name:Ljava/lang/String;
    const-string v10, "Autodiscover"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 908
    new-instance v5, Lcom/android/email/provider/EmailContent$HostAuth;

    invoke-direct {v5}, Lcom/android/email/provider/EmailContent$HostAuth;-><init>()V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1

    .line 909
    .end local v4           #hostAuth:Lcom/android/email/provider/EmailContent$HostAuth;
    .local v5, hostAuth:Lcom/android/email/provider/EmailContent$HostAuth;
    :try_start_1
    invoke-virtual {p0, v8, v5}, Lcom/android/exchange/EasSyncService;->parseAutodiscover(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/email/provider/EmailContent$HostAuth;)V

    .line 911
    iget-object v10, v5, Lcom/android/email/provider/EmailContent$HostAuth;->mAddress:Ljava/lang/String;

    if-eqz v10, :cond_2

    .line 917
    iget-object v10, p0, Lcom/android/exchange/EasSyncService;->mDomain:Ljava/lang/String;

    if-eqz v10, :cond_1

    .line 918
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/android/exchange/EasSyncService;->mDomain:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\\"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/exchange/EasSyncService;->mUserName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v5, Lcom/android/email/provider/EmailContent$HostAuth;->mLogin:Ljava/lang/String;

    .line 925
    :goto_0
    iget-object v10, p0, Lcom/android/exchange/EasSyncService;->mPassword:Ljava/lang/String;

    iput-object v10, v5, Lcom/android/email/provider/EmailContent$HostAuth;->mPassword:Ljava/lang/String;

    .line 926
    const/16 v10, 0x1bb

    iput v10, v5, Lcom/android/email/provider/EmailContent$HostAuth;->mPort:I

    .line 927
    const-string v10, "eas"

    iput-object v10, v5, Lcom/android/email/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    .line 930
    const/4 v10, 0x5

    iput v10, v5, Lcom/android/email/provider/EmailContent$HostAuth;->mFlags:I

    .line 934
    iget-object v10, p0, Lcom/android/exchange/EasSyncService;->mAutoDiscInfo:Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;

    iget-object v10, v10, Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;->bundle:Landroid/os/Bundle;

    const-string v11, "autodiscover_host_auth"

    invoke-virtual {v10, v11, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    move-object v4, v5

    .line 954
    .end local v0           #domain:Ljava/lang/String;
    .end local v1           #e:Lorg/apache/http/HttpEntity;
    .end local v5           #hostAuth:Lcom/android/email/provider/EmailContent$HostAuth;
    .end local v6           #is:Ljava/io/InputStream;
    .end local v7           #name:Ljava/lang/String;
    .end local v9           #type:I
    .restart local v4       #hostAuth:Lcom/android/email/provider/EmailContent$HostAuth;
    :cond_0
    :goto_1
    const/4 v10, 0x0

    return-object v10

    .line 921
    .end local v4           #hostAuth:Lcom/android/email/provider/EmailContent$HostAuth;
    .restart local v0       #domain:Ljava/lang/String;
    .restart local v1       #e:Lorg/apache/http/HttpEntity;
    .restart local v5       #hostAuth:Lcom/android/email/provider/EmailContent$HostAuth;
    .restart local v6       #is:Ljava/io/InputStream;
    .restart local v7       #name:Ljava/lang/String;
    .restart local v9       #type:I
    :cond_1
    iget-object v10, p0, Lcom/android/exchange/EasSyncService;->mUserName:Ljava/lang/String;

    iput-object v10, v5, Lcom/android/email/provider/EmailContent$HostAuth;->mLogin:Ljava/lang/String;
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 949
    :catch_0
    move-exception v10

    move-object v2, v10

    move-object v4, v5

    .line 951
    .end local v0           #domain:Ljava/lang/String;
    .end local v1           #e:Lorg/apache/http/HttpEntity;
    .end local v5           #hostAuth:Lcom/android/email/provider/EmailContent$HostAuth;
    .end local v6           #is:Ljava/io/InputStream;
    .end local v7           #name:Ljava/lang/String;
    .end local v9           #type:I
    .local v2, e1:Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v4       #hostAuth:Lcom/android/email/provider/EmailContent$HostAuth;
    :goto_2
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_1

    .line 938
    .end local v2           #e1:Lorg/xmlpull/v1/XmlPullParserException;
    .end local v4           #hostAuth:Lcom/android/email/provider/EmailContent$HostAuth;
    .restart local v0       #domain:Ljava/lang/String;
    .restart local v1       #e:Lorg/apache/http/HttpEntity;
    .restart local v5       #hostAuth:Lcom/android/email/provider/EmailContent$HostAuth;
    .restart local v6       #is:Ljava/io/InputStream;
    .restart local v7       #name:Ljava/lang/String;
    .restart local v9       #type:I
    :cond_2
    :try_start_2
    iget-object v10, p0, Lcom/android/exchange/EasSyncService;->mAutoDiscInfo:Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;

    iget-boolean v10, v10, Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;->isErrorTagPresent:Z

    if-eqz v10, :cond_3

    .line 939
    iget-object v10, p0, Lcom/android/exchange/EasSyncService;->mAutoDiscInfo:Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;

    iget-object v10, v10, Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;->bundle:Landroid/os/Bundle;

    const-string v11, "autodiscover_error_code"

    const/4 v12, 0x5

    invoke-virtual {v10, v11, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v4, v5

    .end local v5           #hostAuth:Lcom/android/email/provider/EmailContent$HostAuth;
    .restart local v4       #hostAuth:Lcom/android/email/provider/EmailContent$HostAuth;
    goto :goto_1

    .line 942
    .end local v4           #hostAuth:Lcom/android/email/provider/EmailContent$HostAuth;
    .restart local v5       #hostAuth:Lcom/android/email/provider/EmailContent$HostAuth;
    :cond_3
    iget-object v10, p0, Lcom/android/exchange/EasSyncService;->mAutoDiscInfo:Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;

    iget-object v10, v10, Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;->bundle:Landroid/os/Bundle;

    const-string v11, "autodiscover_error_code"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v4, v5

    .end local v5           #hostAuth:Lcom/android/email/provider/EmailContent$HostAuth;
    .restart local v4       #hostAuth:Lcom/android/email/provider/EmailContent$HostAuth;
    goto :goto_1

    .line 949
    .end local v0           #domain:Ljava/lang/String;
    .end local v1           #e:Lorg/apache/http/HttpEntity;
    .end local v6           #is:Ljava/io/InputStream;
    .end local v7           #name:Ljava/lang/String;
    .end local v9           #type:I
    :catch_1
    move-exception v10

    move-object v2, v10

    goto :goto_2
.end method

.method parseAutodiscover(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/email/provider/EmailContent$HostAuth;)V
    .locals 3
    .parameter "parser"
    .parameter "hostAuth"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1157
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v0

    .line 1159
    .local v0, type:I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 1168
    :cond_1
    return-void

    .line 1162
    :cond_2
    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Autodiscover"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1164
    :cond_3
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Response"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1165
    invoke-virtual {p0, p1, p2}, Lcom/android/exchange/EasSyncService;->parseResponse(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/email/provider/EmailContent$HostAuth;)V

    goto :goto_0
.end method

.method parseError(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/email/provider/EmailContent$HostAuth;)V
    .locals 10
    .parameter "parser"
    .parameter "hostAuth"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1084
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    .line 1086
    .local v4, type:I
    if-ne v4, v8, :cond_2

    .line 1106
    :cond_1
    return-void

    .line 1089
    :cond_2
    const/4 v5, 0x3

    if-ne v4, v5, :cond_3

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Error"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1091
    :cond_3
    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 1092
    iget-object v5, p0, Lcom/android/exchange/EasSyncService;->mAutoDiscInfo:Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;

    iput-boolean v8, v5, Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;->isErrorTagPresent:Z

    .line 1093
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1094
    .local v2, name:Ljava/lang/String;
    const-string v5, "Status"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1095
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    .line 1096
    .local v3, status:Ljava/lang/String;
    new-array v5, v8, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Autodiscover, Error Status : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-virtual {p0, v5}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    goto :goto_0

    .line 1097
    .end local v3           #status:Ljava/lang/String;
    :cond_4
    const-string v5, "Message"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1098
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    .line 1099
    .local v1, message:Ljava/lang/String;
    new-array v5, v8, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Autodiscover, Error Message : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-virtual {p0, v5}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    goto :goto_0

    .line 1100
    .end local v1           #message:Ljava/lang/String;
    :cond_5
    const-string v5, "DebugData"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1101
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    .line 1102
    .local v0, debugData:Ljava/lang/String;
    new-array v5, v8, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Autodiscover, Error DebugData : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-virtual {p0, v5}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method parseResponse(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/email/provider/EmailContent$HostAuth;)V
    .locals 4
    .parameter "parser"
    .parameter "hostAuth"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1136
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 1138
    .local v1, type:I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 1152
    :cond_1
    return-void

    .line 1141
    :cond_2
    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Response"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1143
    :cond_3
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 1144
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1145
    .local v0, name:Ljava/lang/String;
    const-string v2, "User"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1146
    invoke-virtual {p0, p1, p2}, Lcom/android/exchange/EasSyncService;->parseUser(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/email/provider/EmailContent$HostAuth;)V

    goto :goto_0

    .line 1147
    :cond_4
    const-string v2, "Action"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1148
    invoke-virtual {p0, p1, p2}, Lcom/android/exchange/EasSyncService;->parseAction(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/email/provider/EmailContent$HostAuth;)V

    goto :goto_0
.end method

.method parseServer(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/email/provider/EmailContent$HostAuth;)V
    .locals 10
    .parameter "parser"
    .parameter "hostAuth"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 964
    const/4 v1, 0x0

    .line 966
    .local v1, mobileSync:Z
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .line 968
    .local v3, type:I
    if-ne v3, v8, :cond_2

    .line 995
    :cond_1
    return-void

    .line 971
    :cond_2
    const/4 v5, 0x3

    if-ne v3, v5, :cond_3

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Server"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 973
    :cond_3
    const/4 v5, 0x2

    if-ne v3, v5, :cond_0

    .line 974
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 975
    .local v2, name:Ljava/lang/String;
    const-string v5, "Type"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 976
    const-string v5, "MobileSync"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 977
    const/4 v1, 0x1

    goto :goto_0

    .line 981
    :cond_4
    if-eqz v1, :cond_0

    const-string v5, "Url"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 982
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 983
    .local v4, url:Ljava/lang/String;
    new-array v5, v8, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Autodiscover, server URL :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-virtual {p0, v5}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 986
    const-string v5, "https://"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "/microsoft-server-activesync"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 988
    const/16 v5, 0x2f

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 989
    .local v0, lastSlash:I
    const/16 v5, 0x8

    invoke-virtual {v4, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p2, Lcom/android/email/provider/EmailContent$HostAuth;->mAddress:Ljava/lang/String;

    .line 990
    new-array v5, v8, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Autodiscover, server: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p2, Lcom/android/email/provider/EmailContent$HostAuth;->mAddress:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-virtual {p0, v5}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method parseSettings(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/email/provider/EmailContent$HostAuth;)V
    .locals 4
    .parameter "parser"
    .parameter "hostAuth"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1000
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 1002
    .local v1, type:I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 1014
    :cond_1
    return-void

    .line 1005
    :cond_2
    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Settings"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1007
    :cond_3
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 1008
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1009
    .local v0, name:Ljava/lang/String;
    const-string v2, "Server"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1010
    invoke-virtual {p0, p1, p2}, Lcom/android/exchange/EasSyncService;->parseServer(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/email/provider/EmailContent$HostAuth;)V

    goto :goto_0
.end method

.method parseUser(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/email/provider/EmailContent$HostAuth;)V
    .locals 9
    .parameter "parser"
    .parameter "hostAuth"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1113
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .line 1115
    .local v3, type:I
    if-ne v3, v7, :cond_2

    .line 1131
    :cond_1
    return-void

    .line 1118
    :cond_2
    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "User"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1120
    :cond_3
    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 1121
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1122
    .local v2, name:Ljava/lang/String;
    const-string v4, "EMailAddress"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1123
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    .line 1124
    .local v0, addr:Ljava/lang/String;
    new-array v4, v7, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Autodiscover, email: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {p0, v4}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    goto :goto_0

    .line 1125
    .end local v0           #addr:Ljava/lang/String;
    :cond_4
    const-string v4, "DisplayName"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1126
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    .line 1127
    .local v1, dn:Ljava/lang/String;
    new-array v4, v7, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Autodiscover, user: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {p0, v4}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected declared-synchronized processCommand(Lcom/android/exchange/adapter/AbstractCommandAdapter;)V
    .locals 12
    .parameter "target"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3535
    monitor-enter p0

    const/4 v4, 0x0

    .line 3536
    .local v4, iterationCount:I
    const/4 v8, 0x0

    :try_start_0
    iput v8, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I

    .line 3538
    :goto_0
    add-int/lit8 v4, v4, 0x1

    const/4 v8, 0x5

    if-ge v4, v8, :cond_0

    iget-boolean v8, p0, Lcom/android/exchange/EasSyncService;->mStop:Z

    if-nez v8, :cond_0

    .line 3539
    invoke-virtual {p1}, Lcom/android/exchange/adapter/AbstractCommandAdapter;->hasChangedItems()Z

    move-result v8

    if-nez v8, :cond_1

    .line 3540
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "processCommand(): No changed items."

    aput-object v10, v8, v9

    invoke-virtual {p0, v8}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3598
    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    .line 3543
    :cond_1
    const/4 v8, 0x1

    :try_start_1
    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "processCommand(): Iteration: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {p0, v8}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3547
    :try_start_2
    iget-object v8, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v9, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v9}, Lcom/android/email/provider/EmailContent$Account;->refresh(Landroid/content/Context;)V

    .line 3549
    new-instance v7, Lcom/android/exchange/adapter/Serializer;

    invoke-direct {v7}, Lcom/android/exchange/adapter/Serializer;-><init>()V

    .line 3550
    .local v7, s:Lcom/android/exchange/adapter/Serializer;
    invoke-virtual {p1, v7}, Lcom/android/exchange/adapter/AbstractCommandAdapter;->sendLocalChanges(Lcom/android/exchange/adapter/Serializer;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 3552
    iget-object v8, p0, Lcom/android/exchange/EasSyncService;->TAG:Ljava/lang/String;

    const-string v9, "sendLocalChanges returned false. Returning ..."

    invoke-static {v8, v9}, Lcom/android/exchange/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 3585
    .end local v7           #s:Lcom/android/exchange/adapter/Serializer;
    :catch_0
    move-exception v8

    move-object v2, v8

    .line 3586
    .local v2, ioe:Ljava/io/IOException;
    :try_start_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "processCommand(): Caught IOException:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/exchange/EasSyncService;->errorLog(Ljava/lang/String;)V

    .line 3587
    const/16 v8, 0x21

    invoke-virtual {p1, v8}, Lcom/android/exchange/adapter/AbstractCommandAdapter;->callback(I)V

    .line 3588
    invoke-virtual {p1}, Lcom/android/exchange/adapter/AbstractCommandAdapter;->cleanup()V

    .line 3589
    iget-boolean v8, p0, Lcom/android/exchange/EasSyncService;->mStop:Z

    if-nez v8, :cond_2

    iget-boolean v8, p0, Lcom/android/exchange/EasSyncService;->mPostAborted:Z

    if-eqz v8, :cond_9

    .line 3590
    :cond_2
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "processCommand(): Post is stopped or aborted. Throwing IOException back to caller"

    aput-object v10, v8, v9

    invoke-virtual {p0, v8}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 3591
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3535
    .end local v2           #ioe:Ljava/io/IOException;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 3555
    .restart local v7       #s:Lcom/android/exchange/adapter/Serializer;
    :cond_3
    :try_start_4
    invoke-virtual {v7}, Lcom/android/exchange/adapter/Serializer;->done()V

    .line 3557
    invoke-virtual {p1}, Lcom/android/exchange/adapter/AbstractCommandAdapter;->getCommandName()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-virtual {v7}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    const/16 v10, 0x7530

    invoke-virtual {p0, v8, v9, v10}, Lcom/android/exchange/EasSyncService;->sendHttpClientPost(Ljava/lang/String;Lorg/apache/http/HttpEntity;I)Lorg/apache/http/HttpResponse;

    move-result-object v6

    .line 3559
    .local v6, resp:Lorg/apache/http/HttpResponse;
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 3560
    .local v0, code:I
    const/16 v8, 0xc8

    if-ne v0, v8, :cond_6

    .line 3561
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 3562
    .local v1, entity:Lorg/apache/http/HttpEntity;
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v8

    long-to-int v5, v8

    .line 3563
    .local v5, len:I
    if-eqz v5, :cond_4

    .line 3564
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    .line 3565
    .local v3, is:Ljava/io/InputStream;
    if-eqz v3, :cond_5

    .line 3566
    invoke-virtual {p1, v3}, Lcom/android/exchange/adapter/AbstractCommandAdapter;->parse(Ljava/io/InputStream;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 3596
    .end local v3           #is:Ljava/io/InputStream;
    :cond_4
    :goto_2
    const/4 v8, 0x0

    :try_start_5
    iput v8, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 3568
    .restart local v3       #is:Ljava/io/InputStream;
    :cond_5
    const/4 v8, 0x1

    :try_start_6
    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/exchange/adapter/AbstractCommandAdapter;->getCommandName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": Empty input stream"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {p0, v8}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    goto :goto_2

    .line 3572
    .end local v1           #entity:Lorg/apache/http/HttpEntity;
    .end local v3           #is:Ljava/io/InputStream;
    .end local v5           #len:I
    :cond_6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/exchange/adapter/AbstractCommandAdapter;->getCommandName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": Response error: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8, v0}, Lcom/android/exchange/EasSyncService;->userLog(Ljava/lang/String;I)V

    .line 3573
    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->isAuthError(I)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 3574
    const/4 v8, 0x2

    iput v8, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I

    goto/16 :goto_1

    .line 3576
    :cond_7
    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->isProvisionError(I)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 3577
    const/4 v8, 0x4

    iput v8, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I

    goto/16 :goto_1

    .line 3581
    :cond_8
    const/4 v8, 0x1

    iput v8, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_1

    .line 3593
    .end local v0           #code:I
    .end local v6           #resp:Lorg/apache/http/HttpResponse;
    .end local v7           #s:Lcom/android/exchange/adapter/Serializer;
    .restart local v2       #ioe:Ljava/io/IOException;
    :cond_9
    const/4 v8, 0x0

    :try_start_7
    iput v8, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_1
.end method

.method public reset()V
    .locals 8

    .prologue
    .line 456
    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 457
    :try_start_0
    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/exchange/EasSyncService;->commandFinished:Z

    if-nez v3, :cond_0

    .line 458
    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v3}, Lorg/apache/http/client/methods/HttpPost;->getURI()Ljava/net/URI;

    move-result-object v1

    .line 459
    .local v1, uri:Ljava/net/URI;
    if-eqz v1, :cond_0

    .line 460
    invoke-virtual {v1}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v0

    .line 461
    .local v0, query:Ljava/lang/String;
    const-string v3, "Cmd=Ping"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 462
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Reset, aborting Ping. for thread: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/exchange/EasSyncService;->mThread:Ljava/lang/Thread;

    invoke-virtual {v6}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v3}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 463
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/exchange/EasSyncService;->mPostReset:Z

    .line 464
    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v3}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 466
    invoke-direct {p0}, Lcom/android/exchange/EasSyncService;->shutdownConnectionManager()V

    .line 480
    .end local v0           #query:Ljava/lang/String;
    .end local v1           #uri:Ljava/net/URI;
    :cond_0
    :goto_0
    monitor-exit v2

    .line 481
    return-void

    .line 471
    .restart local v0       #query:Ljava/lang/String;
    .restart local v1       #uri:Ljava/net/URI;
    :cond_1
    const-string v3, "Cmd=ItemOperations"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "Cmd=Sync"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    const-wide/high16 v5, 0x4004

    cmpg-double v3, v3, v5

    if-gtz v3, :cond_0

    .line 472
    :cond_2
    const-string v3, "Email"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Reset, aborting loadMore. for thread: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/exchange/EasSyncService;->mThread:Ljava/lang/Thread;

    invoke-virtual {v5}, Ljava/lang/Thread;->getId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/exchange/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/exchange/EasSyncService;->mPostReset:Z

    .line 474
    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v3}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 475
    invoke-direct {p0}, Lcom/android/exchange/EasSyncService;->shutdownConnectionManagerForLoadMore()V

    goto :goto_0

    .line 480
    .end local v0           #query:Ljava/lang/String;
    .end local v1           #uri:Ljava/net/URI;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method resetHeartbeats(I)V
    .locals 4
    .parameter "legalHeartbeat"

    .prologue
    const/4 v3, 0x0

    .line 2794
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resetting min/max heartbeat, legal = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 2798
    iget v0, p0, Lcom/android/exchange/EasSyncService;->mPingHeartbeat:I

    if-le p1, v0, :cond_3

    .line 2802
    iget v0, p0, Lcom/android/exchange/EasSyncService;->mPingMinHeartbeat:I

    if-ge v0, p1, :cond_0

    .line 2803
    iput p1, p0, Lcom/android/exchange/EasSyncService;->mPingMinHeartbeat:I

    .line 2805
    :cond_0
    iget v0, p0, Lcom/android/exchange/EasSyncService;->mPingForceHeartbeat:I

    if-ge v0, p1, :cond_1

    .line 2806
    iput p1, p0, Lcom/android/exchange/EasSyncService;->mPingForceHeartbeat:I

    .line 2809
    :cond_1
    iget v0, p0, Lcom/android/exchange/EasSyncService;->mPingMinHeartbeat:I

    iget v1, p0, Lcom/android/exchange/EasSyncService;->mPingMaxHeartbeat:I

    if-le v0, v1, :cond_2

    .line 2810
    iput p1, p0, Lcom/android/exchange/EasSyncService;->mPingMaxHeartbeat:I

    .line 2822
    :cond_2
    :goto_0
    iput p1, p0, Lcom/android/exchange/EasSyncService;->mPingHeartbeat:I

    .line 2824
    iput-boolean v3, p0, Lcom/android/exchange/EasSyncService;->mPingHeartbeatDropped:Z

    .line 2825
    return-void

    .line 2812
    :cond_3
    iget v0, p0, Lcom/android/exchange/EasSyncService;->mPingHeartbeat:I

    if-ge p1, v0, :cond_2

    .line 2815
    iput p1, p0, Lcom/android/exchange/EasSyncService;->mPingMaxHeartbeat:I

    .line 2817
    iget v0, p0, Lcom/android/exchange/EasSyncService;->mPingMaxHeartbeat:I

    iget v1, p0, Lcom/android/exchange/EasSyncService;->mPingMinHeartbeat:I

    if-ge v0, v1, :cond_2

    .line 2818
    iput p1, p0, Lcom/android/exchange/EasSyncService;->mPingMinHeartbeat:I

    goto :goto_0
.end method

.method public run()V
    .locals 12

    .prologue
    .line 3648
    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->setupService()Z

    move-result v7

    if-nez v7, :cond_0

    .line 3757
    :goto_0
    return-void

    .line 3651
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/android/exchange/SyncManager;->callback()Lcom/android/email/service/IEmailServiceCallback;

    move-result-object v7

    iget-wide v8, p0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-interface {v7, v8, v9, v10, v11}, Lcom/android/email/service/IEmailServiceCallback;->syncMailboxStatus(JII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_9

    .line 3659
    :goto_1
    :try_start_1
    iget-object v7, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    if-eqz v7, :cond_1

    .line 3660
    iget-object v7, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    const-string v8, "device_policy"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    .line 3661
    .local v2, mDPM:Landroid/app/admin/DevicePolicyManager;
    if-eqz v2, :cond_1

    .line 3662
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Landroid/app/admin/DevicePolicyManager;->getAllowHTMLEmail(Landroid/content/ComponentName;)Z

    move-result v7

    if-nez v7, :cond_3

    const/4 v7, 0x1

    :goto_2
    iput-boolean v7, p0, Lcom/android/exchange/EasSyncService;->mIsHTMLDisabled:Z

    .line 3663
    iget-boolean v7, p0, Lcom/android/exchange/EasSyncService;->mIsHTMLDisabled:Z

    if-eqz v7, :cond_1

    .line 3664
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exchange IT Policy has disabled HTML email. mIsHTMLDisabled ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/android/exchange/EasSyncService;->mIsHTMLDisabled:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {p0, v7}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 3669
    .end local v2           #mDPM:Landroid/app/admin/DevicePolicyManager;
    :cond_1
    invoke-static {}, Lcom/android/exchange/SyncManager;->getDeviceId()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/exchange/EasSyncService;->mDeviceId:Ljava/lang/String;

    .line 3670
    iget-object v7, p0, Lcom/android/exchange/EasSyncService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/android/exchange/EasAuthenticationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    if-nez v7, :cond_4

    .line 3705
    :cond_2
    iget-boolean v7, p0, Lcom/android/exchange/EasSyncService;->mStop:Z

    if-nez v7, :cond_f

    .line 3707
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/exchange/EasSyncService;->TAG:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "<"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ">"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Sync finished exit status :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/exchange/SyncManager;->alwaysLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 3708
    invoke-static {p0}, Lcom/android/exchange/SyncManager;->done(Lcom/android/exchange/AbstractSyncService;)V

    .line 3710
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/exchange/EasSyncService;->TAG:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "<"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ">"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Sync finished exit status :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/exchange/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3712
    iget v7, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I

    packed-switch v7, :pswitch_data_0

    .line 3735
    :pswitch_0
    const/16 v5, 0x15

    .line 3736
    .local v5, status:I
    const-string v7, "Sync ended due to an exception."

    invoke-virtual {p0, v7}, Lcom/android/exchange/EasSyncService;->errorLog(Ljava/lang/String;)V

    .line 3749
    :goto_3
    :try_start_2
    invoke-static {}, Lcom/android/exchange/SyncManager;->callback()Lcom/android/email/service/IEmailServiceCallback;

    move-result-object v7

    iget-wide v8, p0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    const/4 v10, 0x0

    invoke-interface {v7, v8, v9, v5, v10}, Lcom/android/email/service/IEmailServiceCallback;->syncMailboxStatus(JII)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_4

    .line 3755
    :goto_4
    const-string v7, "sync finished"

    :goto_5
    invoke-static {v7}, Lcom/android/exchange/SyncManager;->kick(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3662
    .end local v5           #status:I
    .restart local v2       #mDPM:Landroid/app/admin/DevicePolicyManager;
    :cond_3
    const/4 v7, 0x0

    goto/16 :goto_2

    .line 3672
    .end local v2           #mDPM:Landroid/app/admin/DevicePolicyManager;
    :cond_4
    :try_start_3
    iget-object v7, p0, Lcom/android/exchange/EasSyncService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget v7, v7, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    const/16 v8, 0x44

    if-ne v7, v8, :cond_5

    .line 3673
    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->runAccountMailbox()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lcom/android/exchange/EasAuthenticationException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 3705
    :goto_6
    iget-boolean v7, p0, Lcom/android/exchange/EasSyncService;->mStop:Z

    if-nez v7, :cond_10

    .line 3707
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/exchange/EasSyncService;->TAG:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "<"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ">"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Sync finished exit status :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/exchange/SyncManager;->alwaysLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 3708
    invoke-static {p0}, Lcom/android/exchange/SyncManager;->done(Lcom/android/exchange/AbstractSyncService;)V

    .line 3710
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/exchange/EasSyncService;->TAG:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "<"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ">"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Sync finished exit status :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/exchange/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3712
    iget v7, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I

    packed-switch v7, :pswitch_data_1

    .line 3735
    :pswitch_1
    const/16 v5, 0x15

    .line 3736
    .restart local v5       #status:I
    const-string v7, "Sync ended due to an exception."

    invoke-virtual {p0, v7}, Lcom/android/exchange/EasSyncService;->errorLog(Ljava/lang/String;)V

    .line 3749
    :goto_7
    :try_start_4
    invoke-static {}, Lcom/android/exchange/SyncManager;->callback()Lcom/android/email/service/IEmailServiceCallback;

    move-result-object v7

    iget-wide v8, p0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    const/4 v10, 0x0

    invoke-interface {v7, v8, v9, v5, v10}, Lcom/android/email/service/IEmailServiceCallback;->syncMailboxStatus(JII)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3

    .line 3755
    :goto_8
    const-string v7, "sync finished"

    goto/16 :goto_5

    .line 3676
    .end local v5           #status:I
    :cond_5
    :try_start_5
    iget-object v7, p0, Lcom/android/exchange/EasSyncService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget v7, v7, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    const/16 v8, 0x42

    if-ne v7, v8, :cond_8

    .line 3677
    new-instance v6, Lcom/android/exchange/adapter/ContactsSyncAdapter;

    iget-object v7, p0, Lcom/android/exchange/EasSyncService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    invoke-direct {v6, v7, p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter;-><init>(Lcom/android/email/provider/EmailContent$Mailbox;Lcom/android/exchange/EasSyncService;)V

    .line 3686
    .local v6, target:Lcom/android/exchange/adapter/AbstractSyncAdapter;
    :cond_6
    :goto_9
    iget-wide v7, p0, Lcom/android/exchange/EasSyncService;->mRequestTime:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-eqz v7, :cond_7

    .line 3687
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "Looping for user request..."

    aput-object v9, v7, v8

    invoke-virtual {p0, v7}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 3688
    const-wide/16 v7, 0x0

    iput-wide v7, p0, Lcom/android/exchange/EasSyncService;->mRequestTime:J

    .line 3690
    :cond_7
    invoke-virtual {p0, v6}, Lcom/android/exchange/EasSyncService;->sync(Lcom/android/exchange/adapter/AbstractSyncAdapter;)V

    .line 3691
    iget-wide v7, p0, Lcom/android/exchange/EasSyncService;->mRequestTime:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-nez v7, :cond_6

    goto/16 :goto_6

    .line 3678
    .end local v6           #target:Lcom/android/exchange/adapter/AbstractSyncAdapter;
    :cond_8
    iget-object v7, p0, Lcom/android/exchange/EasSyncService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget v7, v7, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    const/16 v8, 0x41

    if-ne v7, v8, :cond_9

    .line 3679
    new-instance v6, Lcom/android/exchange/adapter/CalendarSyncAdapter;

    iget-object v7, p0, Lcom/android/exchange/EasSyncService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    invoke-direct {v6, v7, p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter;-><init>(Lcom/android/email/provider/EmailContent$Mailbox;Lcom/android/exchange/EasSyncService;)V

    .restart local v6       #target:Lcom/android/exchange/adapter/AbstractSyncAdapter;
    goto :goto_9

    .line 3681
    .end local v6           #target:Lcom/android/exchange/adapter/AbstractSyncAdapter;
    :cond_9
    new-instance v6, Lcom/android/exchange/adapter/EmailSyncAdapter;

    iget-object v7, p0, Lcom/android/exchange/EasSyncService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    invoke-direct {v6, v7, p0}, Lcom/android/exchange/adapter/EmailSyncAdapter;-><init>(Lcom/android/email/provider/EmailContent$Mailbox;Lcom/android/exchange/EasSyncService;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Lcom/android/exchange/EasAuthenticationException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .restart local v6       #target:Lcom/android/exchange/adapter/AbstractSyncAdapter;
    goto :goto_9

    .line 3693
    .end local v6           #target:Lcom/android/exchange/adapter/AbstractSyncAdapter;
    :catch_0
    move-exception v7

    move-object v1, v7

    .line 3694
    .local v1, e:Lcom/android/exchange/EasAuthenticationException;
    const/4 v7, 0x1

    :try_start_6
    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "Caught authentication error"

    aput-object v9, v7, v8

    invoke-virtual {p0, v7}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 3695
    const/4 v7, 0x2

    iput v7, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 3705
    iget-boolean v7, p0, Lcom/android/exchange/EasSyncService;->mStop:Z

    if-nez v7, :cond_c

    .line 3707
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/exchange/EasSyncService;->TAG:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "<"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ">"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Sync finished exit status :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/exchange/SyncManager;->alwaysLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 3708
    invoke-static {p0}, Lcom/android/exchange/SyncManager;->done(Lcom/android/exchange/AbstractSyncService;)V

    .line 3710
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/exchange/EasSyncService;->TAG:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "<"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ">"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Sync finished exit status :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/exchange/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3712
    iget v7, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I

    packed-switch v7, :pswitch_data_2

    .line 3735
    :pswitch_2
    const/16 v5, 0x15

    .line 3736
    .restart local v5       #status:I
    const-string v7, "Sync ended due to an exception."

    invoke-virtual {p0, v7}, Lcom/android/exchange/EasSyncService;->errorLog(Ljava/lang/String;)V

    .line 3749
    :goto_a
    :try_start_7
    invoke-static {}, Lcom/android/exchange/SyncManager;->callback()Lcom/android/email/service/IEmailServiceCallback;

    move-result-object v7

    iget-wide v8, p0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    const/4 v10, 0x0

    invoke-interface {v7, v8, v9, v5, v10}, Lcom/android/email/service/IEmailServiceCallback;->syncMailboxStatus(JII)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_7

    .line 3755
    :goto_b
    const-string v7, "sync finished"

    goto/16 :goto_5

    .line 3696
    .end local v1           #e:Lcom/android/exchange/EasAuthenticationException;
    .end local v5           #status:I
    :catch_1
    move-exception v7

    move-object v1, v7

    .line 3697
    .local v1, e:Ljava/io/IOException;
    :try_start_8
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 3698
    .local v3, message:Ljava/lang/String;
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "Caught IOException: "

    aput-object v9, v7, v8

    const/4 v8, 0x1

    if-nez v3, :cond_a

    const-string v9, "No message"

    :goto_c
    aput-object v9, v7, v8

    invoke-virtual {p0, v7}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 3699
    const/4 v7, 0x1

    iput v7, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 3705
    iget-boolean v7, p0, Lcom/android/exchange/EasSyncService;->mStop:Z

    if-nez v7, :cond_d

    .line 3707
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/exchange/EasSyncService;->TAG:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "<"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ">"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Sync finished exit status :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/exchange/SyncManager;->alwaysLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 3708
    invoke-static {p0}, Lcom/android/exchange/SyncManager;->done(Lcom/android/exchange/AbstractSyncService;)V

    .line 3710
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/exchange/EasSyncService;->TAG:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "<"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ">"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Sync finished exit status :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/exchange/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3712
    iget v7, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I

    packed-switch v7, :pswitch_data_3

    .line 3735
    :pswitch_3
    const/16 v5, 0x15

    .line 3736
    .restart local v5       #status:I
    const-string v7, "Sync ended due to an exception."

    invoke-virtual {p0, v7}, Lcom/android/exchange/EasSyncService;->errorLog(Ljava/lang/String;)V

    .line 3749
    :goto_d
    :try_start_9
    invoke-static {}, Lcom/android/exchange/SyncManager;->callback()Lcom/android/email/service/IEmailServiceCallback;

    move-result-object v7

    iget-wide v8, p0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    const/4 v10, 0x0

    invoke-interface {v7, v8, v9, v5, v10}, Lcom/android/email/service/IEmailServiceCallback;->syncMailboxStatus(JII)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_6

    .line 3755
    :goto_e
    const-string v7, "sync finished"

    goto/16 :goto_5

    .end local v5           #status:I
    :cond_a
    move-object v9, v3

    .line 3698
    goto/16 :goto_c

    .line 3700
    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #message:Ljava/lang/String;
    :catch_2
    move-exception v7

    move-object v1, v7

    .line 3701
    .local v1, e:Ljava/lang/Exception;
    :try_start_a
    const-string v7, "Uncaught exception in EasSyncService"

    invoke-virtual {p0, v7, v1}, Lcom/android/exchange/EasSyncService;->userLog(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 3705
    iget-boolean v7, p0, Lcom/android/exchange/EasSyncService;->mStop:Z

    if-nez v7, :cond_e

    .line 3707
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/exchange/EasSyncService;->TAG:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "<"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ">"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Sync finished exit status :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/exchange/SyncManager;->alwaysLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 3708
    invoke-static {p0}, Lcom/android/exchange/SyncManager;->done(Lcom/android/exchange/AbstractSyncService;)V

    .line 3710
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/exchange/EasSyncService;->TAG:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "<"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ">"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Sync finished exit status :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/exchange/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3712
    iget v7, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I

    packed-switch v7, :pswitch_data_4

    .line 3735
    :pswitch_4
    const/16 v5, 0x15

    .line 3736
    .restart local v5       #status:I
    const-string v7, "Sync ended due to an exception."

    invoke-virtual {p0, v7}, Lcom/android/exchange/EasSyncService;->errorLog(Ljava/lang/String;)V

    .line 3749
    :goto_f
    :try_start_b
    invoke-static {}, Lcom/android/exchange/SyncManager;->callback()Lcom/android/email/service/IEmailServiceCallback;

    move-result-object v7

    iget-wide v8, p0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    const/4 v10, 0x0

    invoke-interface {v7, v8, v9, v5, v10}, Lcom/android/email/service/IEmailServiceCallback;->syncMailboxStatus(JII)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_5

    .line 3755
    :goto_10
    const-string v7, "sync finished"

    goto/16 :goto_5

    .line 3714
    .end local v1           #e:Ljava/lang/Exception;
    .end local v5           #status:I
    :pswitch_5
    const/16 v5, 0x20

    .line 3749
    .restart local v5       #status:I
    :goto_11
    :try_start_c
    invoke-static {}, Lcom/android/exchange/SyncManager;->callback()Lcom/android/email/service/IEmailServiceCallback;

    move-result-object v8

    iget-wide v9, p0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    const/4 v11, 0x0

    invoke-interface {v8, v9, v10, v5, v11}, Lcom/android/email/service/IEmailServiceCallback;->syncMailboxStatus(JII)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_8

    .line 3755
    :goto_12
    const-string v8, "sync finished"

    invoke-static {v8}, Lcom/android/exchange/SyncManager;->kick(Ljava/lang/String;)V

    .line 3703
    throw v7

    .end local v5           #status:I
    :catchall_0
    move-exception v7

    .line 3705
    iget-boolean v8, p0, Lcom/android/exchange/EasSyncService;->mStop:Z

    if-nez v8, :cond_b

    .line 3707
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/android/exchange/EasSyncService;->TAG:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "<"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->getId()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ">"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Sync finished exit status :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/exchange/SyncManager;->alwaysLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 3708
    invoke-static {p0}, Lcom/android/exchange/SyncManager;->done(Lcom/android/exchange/AbstractSyncService;)V

    .line 3710
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/android/exchange/EasSyncService;->TAG:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "<"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->getId()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ">"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Sync finished exit status :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/exchange/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3712
    iget v8, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I

    packed-switch v8, :pswitch_data_5

    .line 3735
    :pswitch_6
    const/16 v5, 0x15

    .line 3736
    .restart local v5       #status:I
    const-string v8, "Sync ended due to an exception."

    invoke-virtual {p0, v8}, Lcom/android/exchange/EasSyncService;->errorLog(Ljava/lang/String;)V

    goto/16 :goto_11

    .line 3740
    .end local v5           #status:I
    :cond_b
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "Stopped sync finished."

    aput-object v10, v8, v9

    invoke-virtual {p0, v8}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 3745
    const/4 v5, 0x0

    .restart local v5       #status:I
    goto/16 :goto_11

    .line 3717
    .end local v5           #status:I
    :pswitch_7
    const/4 v5, 0x0

    .line 3718
    .restart local v5       #status:I
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 3719
    .local v0, cv:Landroid/content/ContentValues;
    const-string v8, "syncTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3720
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "S"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/exchange/EasSyncService;->mSyncReason:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x3a

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x3a

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/exchange/EasSyncService;->mChangeCount:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3721
    .local v4, s:Ljava/lang/String;
    const-string v8, "syncStatus"

    invoke-virtual {v0, v8, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3722
    iget-object v8, p0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v9, Lcom/android/email/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v10, p0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    invoke-static {v9, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v0, v10, v11}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_11

    .line 3726
    .end local v0           #cv:Landroid/content/ContentValues;
    .end local v4           #s:Ljava/lang/String;
    .end local v5           #status:I
    :pswitch_8
    const/16 v5, 0x16

    .line 3727
    .restart local v5       #status:I
    goto/16 :goto_11

    .line 3729
    .end local v5           #status:I
    :pswitch_9
    const/16 v5, 0x17

    .line 3732
    .restart local v5       #status:I
    iget-object v8, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v9, v9, Lcom/android/email/provider/EmailContent$Account;->mId:J

    const/4 v11, 0x1

    invoke-static {v8, v9, v10, v11}, Lcom/android/exchange/SyncManager;->reloadFolderList(Landroid/content/Context;JZ)V

    goto/16 :goto_11

    .line 3740
    .end local v5           #status:I
    .local v1, e:Lcom/android/exchange/EasAuthenticationException;
    :cond_c
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "Stopped sync finished."

    aput-object v9, v7, v8

    invoke-virtual {p0, v7}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 3745
    const/4 v5, 0x0

    .restart local v5       #status:I
    goto/16 :goto_a

    .line 3717
    .end local v5           #status:I
    :pswitch_a
    const/4 v5, 0x0

    .line 3718
    .restart local v5       #status:I
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 3719
    .restart local v0       #cv:Landroid/content/ContentValues;
    const-string v7, "syncTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3720
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "S"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/exchange/EasSyncService;->mSyncReason:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x3a

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x3a

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/exchange/EasSyncService;->mChangeCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3721
    .restart local v4       #s:Ljava/lang/String;
    const-string v7, "syncStatus"

    invoke-virtual {v0, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3722
    iget-object v7, p0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v8, Lcom/android/email/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v9, p0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    invoke-static {v8, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v0, v9, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_a

    .line 3714
    .end local v0           #cv:Landroid/content/ContentValues;
    .end local v4           #s:Ljava/lang/String;
    .end local v5           #status:I
    :pswitch_b
    const/16 v5, 0x20

    .line 3715
    .restart local v5       #status:I
    goto/16 :goto_a

    .line 3726
    .end local v5           #status:I
    :pswitch_c
    const/16 v5, 0x16

    .line 3727
    .restart local v5       #status:I
    goto/16 :goto_a

    .line 3729
    .end local v5           #status:I
    :pswitch_d
    const/16 v5, 0x17

    .line 3732
    .restart local v5       #status:I
    iget-object v7, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v8, v8, Lcom/android/email/provider/EmailContent$Account;->mId:J

    const/4 v10, 0x1

    invoke-static {v7, v8, v9, v10}, Lcom/android/exchange/SyncManager;->reloadFolderList(Landroid/content/Context;JZ)V

    goto/16 :goto_a

    .line 3740
    .end local v5           #status:I
    .local v1, e:Ljava/io/IOException;
    .restart local v3       #message:Ljava/lang/String;
    :cond_d
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "Stopped sync finished."

    aput-object v9, v7, v8

    invoke-virtual {p0, v7}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 3745
    const/4 v5, 0x0

    .restart local v5       #status:I
    goto/16 :goto_d

    .line 3717
    .end local v5           #status:I
    :pswitch_e
    const/4 v5, 0x0

    .line 3718
    .restart local v5       #status:I
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 3719
    .restart local v0       #cv:Landroid/content/ContentValues;
    const-string v7, "syncTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3720
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "S"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/exchange/EasSyncService;->mSyncReason:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x3a

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x3a

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/exchange/EasSyncService;->mChangeCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3721
    .restart local v4       #s:Ljava/lang/String;
    const-string v7, "syncStatus"

    invoke-virtual {v0, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3722
    iget-object v7, p0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v8, Lcom/android/email/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v9, p0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    invoke-static {v8, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v0, v9, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_d

    .line 3714
    .end local v0           #cv:Landroid/content/ContentValues;
    .end local v4           #s:Ljava/lang/String;
    .end local v5           #status:I
    :pswitch_f
    const/16 v5, 0x20

    .line 3715
    .restart local v5       #status:I
    goto/16 :goto_d

    .line 3726
    .end local v5           #status:I
    :pswitch_10
    const/16 v5, 0x16

    .line 3727
    .restart local v5       #status:I
    goto/16 :goto_d

    .line 3729
    .end local v5           #status:I
    :pswitch_11
    const/16 v5, 0x17

    .line 3732
    .restart local v5       #status:I
    iget-object v7, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v8, v8, Lcom/android/email/provider/EmailContent$Account;->mId:J

    const/4 v10, 0x1

    invoke-static {v7, v8, v9, v10}, Lcom/android/exchange/SyncManager;->reloadFolderList(Landroid/content/Context;JZ)V

    goto/16 :goto_d

    .line 3740
    .end local v3           #message:Ljava/lang/String;
    .end local v5           #status:I
    .local v1, e:Ljava/lang/Exception;
    :cond_e
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "Stopped sync finished."

    aput-object v9, v7, v8

    invoke-virtual {p0, v7}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 3745
    const/4 v5, 0x0

    .restart local v5       #status:I
    goto/16 :goto_f

    .line 3717
    .end local v5           #status:I
    :pswitch_12
    const/4 v5, 0x0

    .line 3718
    .restart local v5       #status:I
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 3719
    .restart local v0       #cv:Landroid/content/ContentValues;
    const-string v7, "syncTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3720
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "S"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/exchange/EasSyncService;->mSyncReason:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x3a

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x3a

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/exchange/EasSyncService;->mChangeCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3721
    .restart local v4       #s:Ljava/lang/String;
    const-string v7, "syncStatus"

    invoke-virtual {v0, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3722
    iget-object v7, p0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v8, Lcom/android/email/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v9, p0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    invoke-static {v8, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v0, v9, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_f

    .line 3714
    .end local v0           #cv:Landroid/content/ContentValues;
    .end local v4           #s:Ljava/lang/String;
    .end local v5           #status:I
    :pswitch_13
    const/16 v5, 0x20

    .line 3715
    .restart local v5       #status:I
    goto/16 :goto_f

    .line 3726
    .end local v5           #status:I
    :pswitch_14
    const/16 v5, 0x16

    .line 3727
    .restart local v5       #status:I
    goto/16 :goto_f

    .line 3729
    .end local v5           #status:I
    :pswitch_15
    const/16 v5, 0x17

    .line 3732
    .restart local v5       #status:I
    iget-object v7, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v8, v8, Lcom/android/email/provider/EmailContent$Account;->mId:J

    const/4 v10, 0x1

    invoke-static {v7, v8, v9, v10}, Lcom/android/exchange/SyncManager;->reloadFolderList(Landroid/content/Context;JZ)V

    goto/16 :goto_f

    .line 3740
    .end local v1           #e:Ljava/lang/Exception;
    .end local v5           #status:I
    :cond_f
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "Stopped sync finished."

    aput-object v9, v7, v8

    invoke-virtual {p0, v7}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 3745
    const/4 v5, 0x0

    .restart local v5       #status:I
    goto/16 :goto_3

    .line 3717
    .end local v5           #status:I
    :pswitch_16
    const/4 v5, 0x0

    .line 3718
    .restart local v5       #status:I
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 3719
    .restart local v0       #cv:Landroid/content/ContentValues;
    const-string v7, "syncTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3720
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "S"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/exchange/EasSyncService;->mSyncReason:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x3a

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x3a

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/exchange/EasSyncService;->mChangeCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3721
    .restart local v4       #s:Ljava/lang/String;
    const-string v7, "syncStatus"

    invoke-virtual {v0, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3722
    iget-object v7, p0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v8, Lcom/android/email/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v9, p0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    invoke-static {v8, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v0, v9, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_3

    .line 3714
    .end local v0           #cv:Landroid/content/ContentValues;
    .end local v4           #s:Ljava/lang/String;
    .end local v5           #status:I
    :pswitch_17
    const/16 v5, 0x20

    .line 3715
    .restart local v5       #status:I
    goto/16 :goto_3

    .line 3726
    .end local v5           #status:I
    :pswitch_18
    const/16 v5, 0x16

    .line 3727
    .restart local v5       #status:I
    goto/16 :goto_3

    .line 3729
    .end local v5           #status:I
    :pswitch_19
    const/16 v5, 0x17

    .line 3732
    .restart local v5       #status:I
    iget-object v7, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v8, v8, Lcom/android/email/provider/EmailContent$Account;->mId:J

    const/4 v10, 0x1

    invoke-static {v7, v8, v9, v10}, Lcom/android/exchange/SyncManager;->reloadFolderList(Landroid/content/Context;JZ)V

    goto/16 :goto_3

    .line 3740
    .end local v5           #status:I
    :cond_10
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "Stopped sync finished."

    aput-object v9, v7, v8

    invoke-virtual {p0, v7}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 3745
    const/4 v5, 0x0

    .restart local v5       #status:I
    goto/16 :goto_7

    .line 3717
    .end local v5           #status:I
    :pswitch_1a
    const/4 v5, 0x0

    .line 3718
    .restart local v5       #status:I
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 3719
    .restart local v0       #cv:Landroid/content/ContentValues;
    const-string v7, "syncTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3720
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "S"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/exchange/EasSyncService;->mSyncReason:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x3a

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x3a

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/exchange/EasSyncService;->mChangeCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3721
    .restart local v4       #s:Ljava/lang/String;
    const-string v7, "syncStatus"

    invoke-virtual {v0, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3722
    iget-object v7, p0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v8, Lcom/android/email/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v9, p0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    invoke-static {v8, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v0, v9, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_7

    .line 3714
    .end local v0           #cv:Landroid/content/ContentValues;
    .end local v4           #s:Ljava/lang/String;
    .end local v5           #status:I
    :pswitch_1b
    const/16 v5, 0x20

    .line 3715
    .restart local v5       #status:I
    goto/16 :goto_7

    .line 3726
    .end local v5           #status:I
    :pswitch_1c
    const/16 v5, 0x16

    .line 3727
    .restart local v5       #status:I
    goto/16 :goto_7

    .line 3729
    .end local v5           #status:I
    :pswitch_1d
    const/16 v5, 0x17

    .line 3732
    .restart local v5       #status:I
    iget-object v7, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v8, v8, Lcom/android/email/provider/EmailContent$Account;->mId:J

    const/4 v10, 0x1

    invoke-static {v7, v8, v9, v10}, Lcom/android/exchange/SyncManager;->reloadFolderList(Landroid/content/Context;JZ)V

    goto/16 :goto_7

    .line 3750
    :catch_3
    move-exception v7

    goto/16 :goto_8

    :catch_4
    move-exception v7

    goto/16 :goto_4

    .restart local v1       #e:Ljava/lang/Exception;
    :catch_5
    move-exception v7

    goto/16 :goto_10

    .local v1, e:Ljava/io/IOException;
    .restart local v3       #message:Ljava/lang/String;
    :catch_6
    move-exception v7

    goto/16 :goto_e

    .end local v3           #message:Ljava/lang/String;
    .local v1, e:Lcom/android/exchange/EasAuthenticationException;
    :catch_7
    move-exception v7

    goto/16 :goto_b

    .end local v1           #e:Lcom/android/exchange/EasAuthenticationException;
    :catch_8
    move-exception v8

    goto/16 :goto_12

    .line 3652
    .end local v5           #status:I
    :catch_9
    move-exception v7

    goto/16 :goto_1

    .line 3712
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_0
        :pswitch_19
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1
        :pswitch_1d
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_2
        :pswitch_d
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_3
        :pswitch_11
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_4
        :pswitch_15
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_7
        :pswitch_5
        :pswitch_8
        :pswitch_6
        :pswitch_9
    .end packed-switch
.end method

.method public runAccountMailbox()V
    .locals 30
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/exchange/adapter/Parser$EasParserException;
        }
    .end annotation

    .prologue
    .line 2508
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/exchange/EasSyncService;->mExitStatus:I

    .line 2511
    :try_start_0
    invoke-static {}, Lcom/android/exchange/SyncManager;->callback()Lcom/android/email/service/IEmailServiceCallback;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v4, v0

    iget-wide v4, v4, Lcom/android/email/provider/EmailContent$Account;->mId:J

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-interface {v3, v4, v5, v6, v7}, Lcom/android/email/service/IEmailServiceCallback;->syncMailboxListStatus(JII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2517
    :goto_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/email/provider/EmailContent$Account;->mSyncKey:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 2518
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v3, v0

    const-string v4, "0"

    iput-object v4, v3, Lcom/android/email/provider/EmailContent$Account;->mSyncKey:Ljava/lang/String;

    .line 2519
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "Account syncKey INIT to 0"

    aput-object v5, v3, v4

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 2520
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 2521
    .local v14, cv:Landroid/content/ContentValues;
    const-string v3, "syncKey"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/email/provider/EmailContent$Account;->mSyncKey:Ljava/lang/String;

    invoke-virtual {v14, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2522
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    move-object v4, v0

    invoke-virtual {v3, v4, v14}, Lcom/android/email/provider/EmailContent$Account;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 2525
    .end local v14           #cv:Landroid/content/ContentValues;
    :cond_0
    const-string v3, "0"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/email/provider/EmailContent$Account;->mSyncKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    .line 2526
    .local v18, firstSync:Z
    if-eqz v18, :cond_7

    .line 2527
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "Initial FolderSync"

    aput-object v5, v3, v4

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 2555
    :cond_1
    :goto_1
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 2556
    .restart local v14       #cv:Landroid/content/ContentValues;
    const-string v3, "syncInterval"

    const/4 v4, -0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v14, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2557
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    move-object v3, v0

    sget-object v4, Lcom/android/email/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "accountKey=? and syncInterval=-3"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v8, v0

    iget-wide v8, v8, Lcom/android/email/provider/EmailContent$Account;->mId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v14, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_2

    .line 2560
    const-string v3, "change ping boxes to push"

    invoke-static {v3}, Lcom/android/exchange/SyncManager;->kick(Ljava/lang/String;)V

    .line 2565
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/email/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    if-eqz v3, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    move-object v5, v0

    iget-wide v5, v5, Lcom/android/email/provider/EmailContent$Mailbox;->mSyncTime:J

    sub-long/2addr v3, v5

    const-wide/32 v5, 0x5265c00

    cmp-long v3, v3, v5

    if-lez v3, :cond_4

    .line 2567
    :cond_3
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "Determine EAS protocol version"

    aput-object v5, v3, v4

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 2568
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/EasSyncService;->sendHttpClientOptions()Lorg/apache/http/HttpResponse;

    move-result-object v25

    .line 2569
    .local v25, resp:Lorg/apache/http/HttpResponse;
    invoke-interface/range {v25 .. v25}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v13

    .line 2570
    .local v13, code:I
    const-string v3, "OPTIONS response: "

    move-object/from16 v0, p0

    move-object v1, v3

    move v2, v13

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/EasSyncService;->userLog(Ljava/lang/String;I)V

    .line 2571
    const/16 v3, 0xc8

    if-ne v13, v3, :cond_b

    .line 2572
    const-string v3, "MS-ASProtocolCommands"

    move-object/from16 v0, v25

    move-object v1, v3

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v19

    .line 2573
    .local v19, header:Lorg/apache/http/Header;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface/range {v19 .. v19}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 2574
    const-string v3, "ms-asprotocolversions"

    move-object/from16 v0, v25

    move-object v1, v3

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v19

    .line 2576
    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/EasSyncService;->setupProtocolVersion(Lcom/android/exchange/EasSyncService;Lorg/apache/http/Header;)V

    .line 2578
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "Using version "

    aput-object v5, v3, v4

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mProtocolVersion:Ljava/lang/String;

    move-object v5, v0

    aput-object v5, v3, v4

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/android/email/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2585
    :try_start_3
    invoke-virtual {v14}, Landroid/content/ContentValues;->clear()V

    .line 2587
    const-string v3, "protocolVersion"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mProtocolVersion:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v14, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2588
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    move-object v4, v0

    invoke-virtual {v3, v4, v14}, Lcom/android/email/provider/EmailContent$Account;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 2589
    invoke-virtual {v14}, Landroid/content/ContentValues;->clear()V

    .line 2591
    const-string v3, "syncTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v14, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2592
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    move-object v4, v0

    invoke-virtual {v3, v4, v14}, Lcom/android/email/provider/EmailContent$Mailbox;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 2600
    .end local v13           #code:I
    .end local v19           #header:Lorg/apache/http/Header;
    .end local v25           #resp:Lorg/apache/http/HttpResponse;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v3, v0

    iget v3, v3, Lcom/android/email/provider/EmailContent$Account;->mSyncInterval:I

    const/4 v4, -0x2

    if-ne v3, v4, :cond_5

    .line 2602
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/email/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    const/4 v5, -0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v6, v0

    iget-wide v6, v6, Lcom/android/email/provider/EmailContent$Account;->mId:J

    const/4 v8, 0x1

    invoke-static/range {v3 .. v8}, Lcom/android/exchange/SyncManager;->setEasSyncIntervals(Landroid/content/Context;Ljava/lang/String;IJZ)V

    .line 2621
    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/exchange/EasSyncService;->mStop:Z

    move v3, v0

    if-nez v3, :cond_6

    .line 2623
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exchange/EasSyncService;->mSyncReason:I

    move v3, v0

    const/16 v4, 0x9

    if-ne v3, v4, :cond_d

    .line 2632
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "runAccountMailbox(): Provisioning needed. Sending Provision..."

    aput-object v5, v3, v4

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 2633
    invoke-direct/range {p0 .. p0}, Lcom/android/exchange/EasSyncService;->tryProvision()Z

    move-result v3

    if-nez v3, :cond_c

    .line 2635
    const/4 v3, 0x4

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/exchange/EasSyncService;->mExitStatus:I

    .line 2787
    .end local v14           #cv:Landroid/content/ContentValues;
    :cond_6
    :goto_3
    return-void

    .line 2530
    :cond_7
    new-instance v29, Lcom/android/exchange/adapter/FolderUpdateAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    move-object v3, v0

    move-object/from16 v0, v29

    move-object v1, v3

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/adapter/FolderUpdateAdapter;-><init>(Lcom/android/email/provider/EmailContent$Mailbox;Lcom/android/exchange/EasSyncService;)V

    .line 2531
    .local v29, updateAdapter:Lcom/android/exchange/adapter/FolderUpdateAdapter;
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->processCommand(Lcom/android/exchange/adapter/AbstractCommandAdapter;)V

    .line 2533
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/exchange/EasSyncService;->mStop:Z

    move v3, v0

    if-eqz v3, :cond_9

    .line 2534
    const-string v3, "Thread has been stopped 1. Terminating"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->errorLog(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    .line 2771
    .end local v18           #firstSync:Z
    .end local v29           #updateAdapter:Lcom/android/exchange/adapter/FolderUpdateAdapter;
    :catch_0
    move-exception v3

    move-object/from16 v16, v3

    .line 2775
    .local v16, e:Ljava/io/IOException;
    :try_start_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/exchange/EasSyncService;->mStop:Z

    move v3, v0

    if-nez v3, :cond_8

    .line 2776
    invoke-static {}, Lcom/android/exchange/SyncManager;->callback()Lcom/android/email/service/IEmailServiceCallback;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v4, v0

    iget-wide v4, v4, Lcom/android/email/provider/EmailContent$Account;->mId:J

    const/16 v6, 0x20

    const/4 v7, 0x0

    invoke-interface {v3, v4, v5, v6, v7}, Lcom/android/email/service/IEmailServiceCallback;->syncMailboxListStatus(JII)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    .line 2784
    :cond_8
    :goto_4
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "runAccountMailbox(): Caught IO exception. Sending to run()"

    aput-object v5, v3, v4

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 2785
    throw v16

    .line 2537
    .end local v16           #e:Ljava/io/IOException;
    .restart local v18       #firstSync:Z
    .restart local v29       #updateAdapter:Lcom/android/exchange/adapter/FolderUpdateAdapter;
    :cond_9
    :try_start_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exchange/EasSyncService;->mExitStatus:I

    move v3, v0

    const/4 v4, 0x4

    if-eq v3, v4, :cond_a

    .line 2538
    new-instance v15, Lcom/android/exchange/adapter/FolderDeleteAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    move-object v3, v0

    move-object v0, v15

    move-object v1, v3

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/adapter/FolderDeleteAdapter;-><init>(Lcom/android/email/provider/EmailContent$Mailbox;Lcom/android/exchange/EasSyncService;)V

    .line 2540
    .local v15, deleteAdapter:Lcom/android/exchange/adapter/FolderDeleteAdapter;
    move-object/from16 v0, p0

    move-object v1, v15

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->processCommand(Lcom/android/exchange/adapter/AbstractCommandAdapter;)V

    .line 2541
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    move-object v4, v0

    invoke-virtual {v3, v4}, Lcom/android/email/provider/EmailContent$Account;->refresh(Landroid/content/Context;)V

    .line 2542
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/exchange/EasSyncService;->mStop:Z

    move v3, v0

    if-eqz v3, :cond_a

    .line 2543
    const-string v3, "Thread has been stopped 2. Terminating"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->errorLog(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2548
    .end local v15           #deleteAdapter:Lcom/android/exchange/adapter/FolderDeleteAdapter;
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exchange/EasSyncService;->mExitStatus:I

    move v3, v0

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    .line 2549
    const/16 v3, 0x9

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/exchange/EasSyncService;->mSyncReason:I

    goto/16 :goto_1

    .line 2579
    .end local v29           #updateAdapter:Lcom/android/exchange/adapter/FolderUpdateAdapter;
    .restart local v13       #code:I
    .restart local v14       #cv:Landroid/content/ContentValues;
    .restart local v19       #header:Lorg/apache/http/Header;
    .restart local v25       #resp:Lorg/apache/http/HttpResponse;
    :catch_1
    move-exception v3

    move-object/from16 v16, v3

    .line 2582
    .local v16, e:Lcom/android/email/mail/MessagingException;
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3}, Ljava/io/IOException;-><init>()V

    throw v3

    .line 2594
    .end local v16           #e:Lcom/android/email/mail/MessagingException;
    .end local v19           #header:Lorg/apache/http/Header;
    :cond_b
    const-string v3, "OPTIONS command failed; throwing IOException"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->errorLog(Ljava/lang/String;)V

    .line 2595
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3}, Ljava/io/IOException;-><init>()V

    throw v3

    .line 2641
    .end local v13           #code:I
    .end local v25           #resp:Lorg/apache/http/HttpResponse;
    :cond_c
    const/4 v3, 0x2

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/exchange/EasSyncService;->mSyncReason:I

    .line 2642
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/exchange/EasSyncService;->mExitStatus:I

    goto/16 :goto_3

    .line 2648
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    move-object v4, v0

    invoke-virtual {v3, v4}, Lcom/android/email/provider/EmailContent$Account;->refresh(Landroid/content/Context;)V

    .line 2651
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "Sending Account syncKey: "

    aput-object v5, v3, v4

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/email/provider/EmailContent$Account;->mSyncKey:Ljava/lang/String;

    aput-object v5, v3, v4

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 2652
    new-instance v26, Lcom/android/exchange/adapter/Serializer;

    invoke-direct/range {v26 .. v26}, Lcom/android/exchange/adapter/Serializer;-><init>()V

    .line 2653
    .local v26, s:Lcom/android/exchange/adapter/Serializer;
    const/16 v3, 0x1d6

    move-object/from16 v0, v26

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v3

    const/16 v4, 0x1d2

    invoke-virtual {v3, v4}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/email/provider/EmailContent$Account;->mSyncKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/exchange/adapter/Serializer;->text(Ljava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/exchange/adapter/Serializer;->done()V

    .line 2656
    sget-boolean v3, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v3, :cond_e

    .line 2657
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "runAccountMailbox(): Wbxml:"

    aput-object v5, v3, v4

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 2658
    invoke-virtual/range {v26 .. v26}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v11

    .line 2659
    .local v11, b:[B
    new-instance v12, Ljava/io/ByteArrayInputStream;

    invoke-direct {v12, v11}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 2660
    .local v12, byTe:Ljava/io/ByteArrayInputStream;
    new-instance v23, Lcom/android/exchange/adapter/LogAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    move-object v3, v0

    move-object/from16 v0, v23

    move-object v1, v3

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/adapter/LogAdapter;-><init>(Lcom/android/email/provider/EmailContent$Mailbox;Lcom/android/exchange/EasSyncService;)V

    .line 2661
    .local v23, logA:Lcom/android/exchange/adapter/LogAdapter;
    move-object/from16 v0, v23

    move-object v1, v12

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/LogAdapter;->parse(Ljava/io/InputStream;)Z
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 2666
    .end local v11           #b:[B
    .end local v12           #byTe:Ljava/io/ByteArrayInputStream;
    .end local v23           #logA:Lcom/android/exchange/adapter/LogAdapter;
    :cond_e
    :try_start_6
    const-string v3, "FolderSync"

    invoke-virtual/range {v26 .. v26}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/EasSyncService;->sendHttpClientPost(Ljava/lang/String;[B)Lorg/apache/http/HttpResponse;

    move-result-object v25

    .line 2667
    .restart local v25       #resp:Lorg/apache/http/HttpResponse;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/exchange/EasSyncService;->mStop:Z

    move v3, v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    if-eqz v3, :cond_10

    .line 2702
    :try_start_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    .line 2703
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    move-object v4, v0

    if-eqz v4, :cond_f

    .line 2704
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    move-object v4, v0

    invoke-virtual {v4}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 2705
    const/4 v4, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    .line 2707
    :cond_f
    monitor-exit v3

    goto/16 :goto_3

    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    throw v4
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0

    .line 2668
    :cond_10
    :try_start_a
    invoke-interface/range {v25 .. v25}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v13

    .line 2670
    .restart local v13       #code:I
    sget-boolean v3, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v3, :cond_11

    .line 2671
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "runAccountMailbox(): FolderSync command http response code:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 2675
    :cond_11
    const/16 v3, 0xc8

    if-ne v13, v3, :cond_13

    .line 2676
    invoke-interface/range {v25 .. v25}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v17

    .line 2677
    .local v17, entity:Lorg/apache/http/HttpEntity;
    invoke-interface/range {v17 .. v17}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v3

    move-wide v0, v3

    long-to-int v0, v0

    move/from16 v22, v0

    .line 2678
    .local v22, len:I
    if-eqz v22, :cond_18

    .line 2679
    invoke-interface/range {v17 .. v17}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v20

    .line 2681
    .local v20, is:Ljava/io/InputStream;
    new-instance v3, Lcom/android/exchange/adapter/FolderSyncParser;

    new-instance v4, Lcom/android/exchange/adapter/AccountSyncAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    move-object v5, v0

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/adapter/AccountSyncAdapter;-><init>(Lcom/android/email/provider/EmailContent$Mailbox;Lcom/android/exchange/EasSyncService;)V

    move-object v0, v3

    move-object/from16 v1, v20

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/adapter/FolderSyncParser;-><init>(Ljava/io/InputStream;Lcom/android/exchange/adapter/AbstractSyncAdapter;)V

    invoke-virtual {v3}, Lcom/android/exchange/adapter/FolderSyncParser;->parse()Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    move-result v3

    if-eqz v3, :cond_18

    .line 2702
    :try_start_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0

    .line 2703
    :try_start_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    move-object v4, v0

    if-eqz v4, :cond_12

    .line 2704
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    move-object v4, v0

    invoke-virtual {v4}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 2705
    const/4 v4, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    .line 2707
    :cond_12
    monitor-exit v3

    goto/16 :goto_2

    :catchall_1
    move-exception v4

    monitor-exit v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :try_start_d
    throw v4
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_0

    .line 2686
    .end local v17           #entity:Lorg/apache/http/HttpEntity;
    .end local v20           #is:Ljava/io/InputStream;
    .end local v22           #len:I
    :cond_13
    :try_start_e
    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->isProvisionError(I)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 2689
    const/16 v3, 0x9

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/exchange/EasSyncService;->mSyncReason:I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    .line 2702
    :try_start_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_0

    .line 2703
    :try_start_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    move-object v4, v0

    if-eqz v4, :cond_14

    .line 2704
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    move-object v4, v0

    invoke-virtual {v4}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 2705
    const/4 v4, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    .line 2707
    :cond_14
    monitor-exit v3

    goto/16 :goto_2

    :catchall_2
    move-exception v4

    monitor-exit v3
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    :try_start_11
    throw v4
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_0

    .line 2693
    :cond_15
    :try_start_12
    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->isAuthError(I)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 2694
    const/4 v3, 0x2

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/exchange/EasSyncService;->mExitStatus:I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    .line 2702
    :try_start_13
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_0

    .line 2703
    :try_start_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    move-object v4, v0

    if-eqz v4, :cond_16

    .line 2704
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    move-object v4, v0

    invoke-virtual {v4}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 2705
    const/4 v4, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    .line 2707
    :cond_16
    monitor-exit v3

    goto/16 :goto_3

    :catchall_3
    move-exception v4

    monitor-exit v3
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    :try_start_15
    throw v4
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_0

    .line 2697
    :cond_17
    :try_start_16
    const-string v3, "FolderSync response error: "

    move-object/from16 v0, p0

    move-object v1, v3

    move v2, v13

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/EasSyncService;->userLog(Ljava/lang/String;I)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    .line 2702
    :cond_18
    :try_start_17
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_0

    .line 2703
    :try_start_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    move-object v4, v0

    if-eqz v4, :cond_19

    .line 2704
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    move-object v4, v0

    invoke-virtual {v4}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 2705
    const/4 v4, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    .line 2707
    :cond_19
    monitor-exit v3
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_7

    .line 2713
    :try_start_19
    invoke-virtual {v14}, Landroid/content/ContentValues;->clear()V

    .line 2714
    const-string v3, "syncInterval"

    const/4 v4, -0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v14, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2715
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    move-object v3, v0

    sget-object v4, Lcom/android/email/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "accountKey=? and syncInterval=-4"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v8, v0

    iget-wide v8, v8, Lcom/android/email/provider/EmailContent$Account;->mId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v14, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_1a

    .line 2718
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "Set push/hold boxes to push..."

    aput-object v5, v3, v4

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_0

    .line 2722
    :cond_1a
    :try_start_1a
    invoke-static {}, Lcom/android/exchange/SyncManager;->callback()Lcom/android/email/service/IEmailServiceCallback;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v4, v0

    iget-wide v4, v4, Lcom/android/email/provider/EmailContent$Account;->mId:J

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exchange/EasSyncService;->mExitStatus:I

    move v6, v0

    const/4 v7, 0x0

    invoke-interface {v3, v4, v5, v6, v7}, Lcom/android/email/service/IEmailServiceCallback;->syncMailboxListStatus(JII)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1a} :catch_5
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_0

    .line 2731
    :goto_5
    :try_start_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v3, v0

    move-object v0, v3

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Account;->mSecuritySyncKey:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 2732
    .local v21, key:Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1b

    .line 2733
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    move-object v3, v0

    invoke-static {v3}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v27

    .line 2734
    .local v27, sp:Lcom/android/email/SecurityPolicy;
    new-instance v24, Lcom/android/email/SecurityPolicy$PolicySet;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v3, v0

    move-object/from16 v0, v24

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/android/email/SecurityPolicy$PolicySet;-><init>(Lcom/android/email/provider/EmailContent$Account;)V

    .line 2735
    .local v24, ps:Lcom/android/email/SecurityPolicy$PolicySet;
    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/email/SecurityPolicy;->isActive(Lcom/android/email/SecurityPolicy$PolicySet;)Z

    move-result v3

    if-nez v3, :cond_1b

    .line 2736
    invoke-virtual {v14}, Landroid/content/ContentValues;->clear()V

    .line 2737
    const-string v3, "securityFlags"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v14, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2738
    const-string v3, "securitySyncKey"

    invoke-virtual {v14, v3}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 2739
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v3, v0

    iget-wide v9, v3, Lcom/android/email/provider/EmailContent$Account;->mId:J

    .line 2740
    .local v9, accountId:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    move-object v3, v0

    sget-object v4, Lcom/android/email/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v14, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2742
    move-object/from16 v0, v27

    move-wide v1, v9

    invoke-virtual {v0, v1, v2}, Lcom/android/email/SecurityPolicy;->policiesRequired(J)V

    .line 2747
    .end local v9           #accountId:J
    .end local v24           #ps:Lcom/android/email/SecurityPolicy$PolicySet;
    .end local v27           #sp:Lcom/android/email/SecurityPolicy;
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v3, v0

    iget v3, v3, Lcom/android/email/provider/EmailContent$Account;->mSyncInterval:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1d

    .line 2748
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Account id"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v6, v0

    iget-wide v6, v6, Lcom/android/email/provider/EmailContent$Account;->mId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " set to syncInterval:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v6, v0

    iget v6, v6, Lcom/android/email/provider/EmailContent$Account;->mSyncInterval:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". runPingloop not started"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 2749
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/exchange/EasSyncService;->mExitStatus:I

    goto/16 :goto_3

    .line 2702
    .end local v13           #code:I
    .end local v21           #key:Ljava/lang/String;
    .end local v25           #resp:Lorg/apache/http/HttpResponse;
    :catchall_4
    move-exception v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_0

    .line 2703
    :try_start_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    move-object v5, v0

    if-eqz v5, :cond_1c

    .line 2704
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    move-object v5, v0

    invoke-virtual {v5}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 2705
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    .line 2707
    :cond_1c
    monitor-exit v4
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_6

    .line 2702
    :try_start_1d
    throw v3

    .line 2755
    .restart local v13       #code:I
    .restart local v21       #key:Ljava/lang/String;
    .restart local v25       #resp:Lorg/apache/http/HttpResponse;
    :cond_1d
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_0

    move-result-object v28

    .line 2758
    .local v28, threadName:Ljava/lang/String;
    const/4 v3, 0x1

    :try_start_1e
    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "runAccountMailbox(): Starting runPingLoop()"

    aput-object v5, v3, v4

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 2759
    invoke-direct/range {p0 .. p0}, Lcom/android/exchange/EasSyncService;->runPingLoop()V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_5
    .catch Lcom/android/exchange/StaleFolderListException; {:try_start_1e .. :try_end_1e} :catch_2
    .catch Lcom/android/exchange/IllegalHeartbeatException; {:try_start_1e .. :try_end_1e} :catch_3

    .line 2768
    :try_start_1f
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_0

    goto/16 :goto_2

    .line 2760
    :catch_2
    move-exception v3

    move-object/from16 v16, v3

    .line 2762
    .local v16, e:Lcom/android/exchange/StaleFolderListException;
    const/4 v3, 0x1

    :try_start_20
    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "Ping interrupted; folder list requires sync..."

    aput-object v5, v3, v4

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_5

    .line 2768
    :try_start_21
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_0

    goto/16 :goto_2

    .line 2763
    .end local v16           #e:Lcom/android/exchange/StaleFolderListException;
    :catch_3
    move-exception v3

    move-object/from16 v16, v3

    .line 2766
    .local v16, e:Lcom/android/exchange/IllegalHeartbeatException;
    :try_start_22
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/exchange/IllegalHeartbeatException;->mLegalHeartbeat:I

    move v3, v0

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->resetHeartbeats(I)V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_5

    .line 2768
    :try_start_23
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    goto/16 :goto_2

    .end local v16           #e:Lcom/android/exchange/IllegalHeartbeatException;
    :catchall_5
    move-exception v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    throw v3
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_23} :catch_0

    .line 2707
    .end local v13           #code:I
    .end local v21           #key:Ljava/lang/String;
    .end local v25           #resp:Lorg/apache/http/HttpResponse;
    .end local v28           #threadName:Ljava/lang/String;
    :catchall_6
    move-exception v3

    :try_start_24
    monitor-exit v4
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_6

    :try_start_25
    throw v3
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_25} :catch_0

    .restart local v13       #code:I
    .restart local v25       #resp:Lorg/apache/http/HttpResponse;
    :catchall_7
    move-exception v4

    :try_start_26
    monitor-exit v3
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_7

    :try_start_27
    throw v4
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_27} :catch_0

    .line 2780
    .end local v13           #code:I
    .end local v14           #cv:Landroid/content/ContentValues;
    .end local v18           #firstSync:Z
    .end local v25           #resp:Lorg/apache/http/HttpResponse;
    .end local v26           #s:Lcom/android/exchange/adapter/Serializer;
    .local v16, e:Ljava/io/IOException;
    :catch_4
    move-exception v3

    goto/16 :goto_4

    .line 2724
    .end local v16           #e:Ljava/io/IOException;
    .restart local v13       #code:I
    .restart local v14       #cv:Landroid/content/ContentValues;
    .restart local v18       #firstSync:Z
    .restart local v25       #resp:Lorg/apache/http/HttpResponse;
    .restart local v26       #s:Lcom/android/exchange/adapter/Serializer;
    :catch_5
    move-exception v3

    goto/16 :goto_5

    .line 2513
    .end local v13           #code:I
    .end local v14           #cv:Landroid/content/ContentValues;
    .end local v18           #firstSync:Z
    .end local v25           #resp:Lorg/apache/http/HttpResponse;
    .end local v26           #s:Lcom/android/exchange/adapter/Serializer;
    :catch_6
    move-exception v3

    goto/16 :goto_0
.end method

.method protected sendHttpClientOptions()Lorg/apache/http/HttpResponse;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2229
    const v5, 0xea60

    invoke-direct {p0, v5}, Lcom/android/exchange/EasSyncService;->getHttpClient(I)Lorg/apache/http/client/HttpClient;

    move-result-object v0

    .line 2230
    .local v0, client:Lorg/apache/http/client/HttpClient;
    const-string v5, "OPTIONS"

    const/4 v6, 0x0

    invoke-direct {p0, v5, v6}, Lcom/android/exchange/EasSyncService;->makeUriString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2231
    .local v4, us:Ljava/lang/String;
    new-instance v3, Lorg/apache/http/client/methods/HttpOptions;

    invoke-static {v4}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v5

    invoke-direct {v3, v5}, Lorg/apache/http/client/methods/HttpOptions;-><init>(Ljava/net/URI;)V

    .line 2232
    .local v3, method:Lorg/apache/http/client/methods/HttpOptions;
    invoke-virtual {p0, v3, v8}, Lcom/android/exchange/EasSyncService;->setHeaders(Lorg/apache/http/client/methods/HttpRequestBase;Z)V

    .line 2234
    sget-boolean v5, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v5, :cond_1

    .line 2235
    new-array v5, v9, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sendHttpClientOptions(): URI String:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {p0, v5}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 2236
    invoke-virtual {v3}, Lorg/apache/http/client/methods/HttpOptions;->headerIterator()Lorg/apache/http/HeaderIterator;

    move-result-object v2

    .line 2237
    .local v2, it:Lorg/apache/http/HeaderIterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Lorg/apache/http/HeaderIterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2238
    invoke-interface {v2}, Lorg/apache/http/HeaderIterator;->nextHeader()Lorg/apache/http/Header;

    move-result-object v1

    .line 2239
    .local v1, ht:Lorg/apache/http/Header;
    if-eqz v1, :cond_0

    .line 2240
    new-array v5, v9, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {p0, v5}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    goto :goto_0

    .line 2244
    .end local v1           #ht:Lorg/apache/http/Header;
    .end local v2           #it:Lorg/apache/http/HeaderIterator;
    :cond_1
    invoke-interface {v0, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    return-object v5
.end method

.method protected sendHttpClientPost(Ljava/lang/String;Lorg/apache/http/HttpEntity;)Lorg/apache/http/HttpResponse;
    .locals 1
    .parameter "cmd"
    .parameter "entity"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1970
    const v0, 0xea60

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/exchange/EasSyncService;->sendHttpClientPost(Ljava/lang/String;Lorg/apache/http/HttpEntity;I)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method protected sendHttpClientPost(Ljava/lang/String;Lorg/apache/http/HttpEntity;I)Lorg/apache/http/HttpResponse;
    .locals 27
    .parameter "cmd"
    .parameter "entity"
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2050
    const-string v4, "Ping"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    .line 2054
    .local v13, isPingCommand:Z
    const/4 v10, 0x0

    .line 2055
    .local v10, client:Lorg/apache/http/client/HttpClient;
    if-nez v13, :cond_0

    const-string v4, "FolderSync"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 2057
    :cond_0
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/exchange/EasSyncService;->getPingClient(I)Lorg/apache/http/client/HttpClient;

    move-result-object v10

    .line 2071
    :goto_0
    const-string v4, "GetAttachment&AttachmentName="

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    .line 2072
    .local v20, isGetAttachmentCommand:Z
    const/4 v15, 0x0

    .line 2073
    .local v15, attachFileName:Ljava/lang/String;
    const/16 v21, 0x0

    .line 2077
    .local v21, isGzipRequired:Z
    const/16 v25, 0x1

    .line 2080
    .local v25, setPolicyHeader:Z
    const/4 v6, 0x0

    .line 2081
    .local v6, extra:Ljava/lang/String;
    const/16 v23, 0x0

    .line 2082
    .local v23, msg:Z
    const-string v4, "SmartForward&"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "SmartReply&"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 2083
    :cond_1
    const/16 v4, 0x26

    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v16

    .line 2084
    .local v16, cmdLength:I
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 2085
    const/4 v4, 0x0

    move-object/from16 v0, p1

    move v1, v4

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 2086
    const/16 v23, 0x1

    .line 2090
    .end local v16           #cmdLength:I
    :cond_2
    :goto_1
    const-string v4, "Ping"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "Options"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 2091
    :cond_3
    const/16 v25, 0x0

    .line 2100
    :cond_4
    :goto_2
    if-eqz v20, :cond_5

    .line 2102
    const-string v4, ";"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v16

    .line 2103
    .restart local v16       #cmdLength:I
    add-int/lit8 v4, v16, 0x1

    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    .line 2104
    const/4 v4, 0x0

    move-object/from16 v0, p1

    move v1, v4

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 2105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->TAG:Ljava/lang/String;

    move-object v4, v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sendHttpClientPost cmd for attachment "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/exchange/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2109
    .end local v16           #cmdLength:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const-string v7, "2.5"

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    cmpl-double v4, v4, v7

    if-nez v4, :cond_6

    .line 2110
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v4, v0

    if-eqz v4, :cond_6

    .line 2111
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/email/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    if-eqz v4, :cond_6

    .line 2113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/email/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exchange/EasSyncService;->mProtocolVersion:Ljava/lang/String;

    .line 2114
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mProtocolVersion:Ljava/lang/String;

    move-object v4, v0

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    .line 2118
    :cond_6
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mProtocolVersion: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mProtocolVersion:Ljava/lang/String;

    move-object v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - cmd: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 2122
    const-string v8, "0"

    .line 2123
    .local v8, policyKey:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v4, v0

    if-eqz v4, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/email/provider/EmailContent$Account;->mSecuritySyncKey:Ljava/lang/String;

    if-eqz v4, :cond_7

    .line 2124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v4, v0

    iget-object v8, v4, Lcom/android/email/provider/EmailContent$Account;->mSecuritySyncKey:Ljava/lang/String;

    .line 2125
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "PolicyKey is set. PolicyKey:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 2129
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const-wide v11, 0x4028333333333333L

    cmpg-double v4, v4, v11

    if-lez v4, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mDeviceId:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x10

    if-gt v4, v5, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mDeviceType:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x10

    if-le v4, v5, :cond_11

    .line 2133
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/EasSyncService;->makeUriString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 2135
    .local v26, us:Ljava/lang/String;
    sget-boolean v4, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v4, :cond_9

    .line 2136
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    .end local v6           #extra:Ljava/lang/String;
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sendHttpClientPost:URI:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 2139
    :cond_9
    new-instance v11, Lorg/apache/http/client/methods/HttpPost;

    invoke-static/range {v26 .. v26}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v4

    invoke-direct {v11, v4}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/net/URI;)V

    .line 2140
    .local v11, method:Lorg/apache/http/client/methods/HttpPost;
    move-object/from16 v0, p0

    move-object v1, v11

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/EasSyncService;->setHeaders(Lorg/apache/http/client/methods/HttpRequestBase;Z)V

    .line 2164
    :goto_3
    if-eqz v23, :cond_14

    .line 2165
    const-string v4, "Content-Type"

    const-string v5, "message/rfc822"

    invoke-virtual {v11, v4, v5}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 2183
    :cond_a
    :goto_4
    move-object v0, v11

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 2185
    sget-boolean v4, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v4, :cond_16

    .line 2186
    invoke-virtual {v11}, Lorg/apache/http/client/methods/HttpPost;->headerIterator()Lorg/apache/http/HeaderIterator;

    move-result-object v22

    .line 2187
    .local v22, it:Lorg/apache/http/HeaderIterator;
    :cond_b
    :goto_5
    invoke-interface/range {v22 .. v22}, Lorg/apache/http/HeaderIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_16

    .line 2188
    invoke-interface/range {v22 .. v22}, Lorg/apache/http/HeaderIterator;->nextHeader()Lorg/apache/http/Header;

    move-result-object v19

    .line 2189
    .local v19, ht:Lorg/apache/http/Header;
    if-eqz v19, :cond_b

    .line 2190
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {v19 .. v19}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {v19 .. v19}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    goto :goto_5

    .line 2058
    .end local v8           #policyKey:Ljava/lang/String;
    .end local v11           #method:Lorg/apache/http/client/methods/HttpPost;
    .end local v15           #attachFileName:Ljava/lang/String;
    .end local v19           #ht:Lorg/apache/http/Header;
    .end local v20           #isGetAttachmentCommand:Z
    .end local v21           #isGzipRequired:Z
    .end local v22           #it:Lorg/apache/http/HeaderIterator;
    .end local v23           #msg:Z
    .end local v25           #setPolicyHeader:Z
    .end local v26           #us:Ljava/lang/String;
    :cond_c
    const-string v4, "ItemOperations"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    const-string v4, "Sync"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const-wide/high16 v6, 0x4004

    cmpg-double v4, v4, v6

    if-gtz v4, :cond_e

    .line 2060
    :cond_d
    const-string v4, "Email"

    const-string v5, "client = getLoadMoreClient(timeout)"

    invoke-static {v4, v5}, Lcom/android/exchange/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2061
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/exchange/EasSyncService;->getLoadMoreClient(I)Lorg/apache/http/client/HttpClient;

    move-result-object v10

    goto/16 :goto_0

    .line 2065
    :cond_e
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/exchange/EasSyncService;->getHttpClient(I)Lorg/apache/http/client/HttpClient;

    move-result-object v10

    goto/16 :goto_0

    .line 2087
    .restart local v6       #extra:Ljava/lang/String;
    .restart local v15       #attachFileName:Ljava/lang/String;
    .restart local v20       #isGetAttachmentCommand:Z
    .restart local v21       #isGzipRequired:Z
    .restart local v23       #msg:Z
    .restart local v25       #setPolicyHeader:Z
    :cond_f
    const-string v4, "SendMail&"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2088
    const/16 v23, 0x1

    goto/16 :goto_1

    .line 2092
    :cond_10
    const-string v4, "NHProvision"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2094
    const/16 v25, 0x0

    .line 2096
    const-string p1, "Provision"

    goto/16 :goto_2

    .line 2142
    .restart local v8       #policyKey:Ljava/lang/String;
    :cond_11
    new-instance v3, Lcom/android/exchange/adapter/EasBase64EncodedURI;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/exchange/EasSyncService;->mSsl:Z

    move v4, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/exchange/EasSyncService;->mTrustSsl:Z

    move v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mHostAddress:Ljava/lang/String;

    move-object v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mUserName:Ljava/lang/String;

    move-object v9, v0

    invoke-direct {v3, v4, v5, v7, v9}, Lcom/android/exchange/adapter/EasBase64EncodedURI;-><init>(ZZLjava/lang/String;Ljava/lang/String;)V

    .line 2143
    .local v3, base64URI:Lcom/android/exchange/adapter/EasBase64EncodedURI;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mProtocolVersion:Ljava/lang/String;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mDeviceId:Ljava/lang/String;

    move-object v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mDeviceType:Ljava/lang/String;

    move-object v9, v0

    move-object/from16 v5, p1

    invoke-virtual/range {v3 .. v9}, Lcom/android/exchange/adapter/EasBase64EncodedURI;->getUriString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 2145
    .restart local v26       #us:Ljava/lang/String;
    sget-boolean v4, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v4, :cond_12

    .line 2146
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    .end local v6           #extra:Ljava/lang/String;
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sendHttpClientPost:URI:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 2149
    :cond_12
    new-instance v11, Lorg/apache/http/client/methods/HttpPost;

    invoke-static/range {v26 .. v26}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v4

    invoke-direct {v11, v4}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/net/URI;)V

    .line 2151
    .restart local v11       #method:Lorg/apache/http/client/methods/HttpPost;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mUserName:Ljava/lang/String;

    move-object v4, v0

    invoke-static {v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 2152
    .local v24, safeUserName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mAuthString:Ljava/lang/String;

    move-object v4, v0

    if-nez v4, :cond_13

    .line 2153
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mUserName:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x3a

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mPassword:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 2154
    .local v17, cs:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Basic "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/String;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-static {v6}, Lcom/android/email/codec/binary/Base64;->encodeBase64([B)[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exchange/EasSyncService;->mAuthString:Ljava/lang/String;

    .line 2155
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "&User="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&DeviceId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mDeviceId:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&DeviceType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mDeviceType:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exchange/EasSyncService;->mCmdString:Ljava/lang/String;

    .line 2158
    .end local v17           #cs:Ljava/lang/String;
    :cond_13
    const-string v4, "Authorization"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mAuthString:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v11, v4, v5}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 2159
    const-string v4, "Connection"

    const-string v5, "keep-alive"

    invoke-virtual {v11, v4, v5}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2166
    .end local v3           #base64URI:Lcom/android/exchange/adapter/EasBase64EncodedURI;
    .end local v24           #safeUserName:Ljava/lang/String;
    :cond_14
    if-eqz p2, :cond_15

    .line 2167
    const-string v4, "Content-Type"

    const-string v5, "application/vnd.ms-sync.wbxml"

    invoke-virtual {v11, v4, v5}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 2170
    :cond_15
    if-eqz v20, :cond_a

    if-eqz v15, :cond_a

    .line 2173
    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    .line 2174
    .local v18, fileName:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->checkGzipRequired(Ljava/lang/String;)Z

    move-result v21

    .line 2175
    if-eqz v21, :cond_a

    .line 2177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->TAG:Ljava/lang/String;

    move-object v4, v0

    const-string v5, "sendHttpClientPost setheader:gzip "

    invoke-static {v4, v5}, Lcom/android/exchange/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2178
    const-string v4, "Accept-Encoding"

    const-string v5, "gzip"

    invoke-virtual {v11, v4, v5}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 2196
    .end local v18           #fileName:Ljava/lang/String;
    :cond_16
    const/4 v14, 0x0

    .line 2197
    .local v14, isAbortNotNeeded:Z
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/exchange/EasSyncService;->commandFinished:Z

    .line 2198
    const-string v4, "Sync"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_17

    const-string v4, "FolderSync"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_17

    const-string v4, "Provision"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_17

    const-string v4, "Ping"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_17

    .line 2203
    const/4 v14, 0x1

    :cond_17
    move-object/from16 v9, p0

    move/from16 v12, p3

    .line 2207
    invoke-virtual/range {v9 .. v14}, Lcom/android/exchange/EasSyncService;->executePostWithTimeout(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpPost;IZZ)Lorg/apache/http/HttpResponse;

    move-result-object v4

    return-object v4
.end method

.method protected sendHttpClientPost(Ljava/lang/String;[B)Lorg/apache/http/HttpResponse;
    .locals 2
    .parameter "cmd"
    .parameter "bytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1966
    new-instance v0, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v0, p2}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    const v1, 0xea60

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/exchange/EasSyncService;->sendHttpClientPost(Ljava/lang/String;Lorg/apache/http/HttpEntity;I)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method protected sendMeetingResponse(Lcom/android/exchange/MeetingResponseRequest;)V
    .locals 18
    .parameter "req"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1589
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    move-object v14, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/exchange/MeetingResponseRequest;->mMessageId:J

    move-wide v15, v0

    invoke-static/range {v14 .. v16}, Lcom/android/email/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Message;

    move-result-object v10

    .line 1590
    .local v10, msg:Lcom/android/email/provider/EmailContent$Message;
    if-nez v10, :cond_1

    .line 1633
    :cond_0
    :goto_0
    return-void

    .line 1591
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    move-object v14, v0

    iget-wide v15, v10, Lcom/android/email/provider/EmailContent$Message;->mMailboxKey:J

    invoke-static/range {v14 .. v16}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v9

    .line 1592
    .local v9, mailbox:Lcom/android/email/provider/EmailContent$Mailbox;
    if-eqz v9, :cond_0

    .line 1593
    new-instance v12, Lcom/android/exchange/adapter/Serializer;

    invoke-direct {v12}, Lcom/android/exchange/adapter/Serializer;-><init>()V

    .line 1594
    .local v12, s:Lcom/android/exchange/adapter/Serializer;
    const/16 v14, 0x207

    invoke-virtual {v12, v14}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v14

    const/16 v15, 0x209

    invoke-virtual {v14, v15}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1595
    const/16 v14, 0x20c

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/exchange/MeetingResponseRequest;->mResponse:I

    move v15, v0

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1596
    const/16 v14, 0x206

    iget-object v15, v9, Lcom/android/email/provider/EmailContent$Mailbox;->mServerId:Ljava/lang/String;

    invoke-virtual {v12, v14, v15}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1597
    const/16 v14, 0x208

    iget-object v15, v10, Lcom/android/email/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v12, v14, v15}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1598
    invoke-virtual {v12}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/exchange/adapter/Serializer;->done()V

    .line 1601
    sget-boolean v14, Lcom/android/exchange/Eas;->PARSER_LOG:Z

    if-eqz v14, :cond_2

    .line 1602
    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "sendMeetingResponse(): Wbxml:"

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 1603
    invoke-virtual {v12}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v3

    .line 1604
    .local v3, b:[B
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1605
    .local v4, byTe:Ljava/io/ByteArrayInputStream;
    new-instance v8, Lcom/android/exchange/adapter/LogAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    move-object v14, v0

    move-object v0, v8

    move-object v1, v14

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/adapter/LogAdapter;-><init>(Lcom/android/email/provider/EmailContent$Mailbox;Lcom/android/exchange/EasSyncService;)V

    .line 1606
    .local v8, logA:Lcom/android/exchange/adapter/LogAdapter;
    invoke-virtual {v8, v4}, Lcom/android/exchange/adapter/LogAdapter;->parse(Ljava/io/InputStream;)Z

    .line 1610
    .end local v3           #b:[B
    .end local v4           #byTe:Ljava/io/ByteArrayInputStream;
    .end local v8           #logA:Lcom/android/exchange/adapter/LogAdapter;
    :cond_2
    const-string v14, "MeetingResponse"

    invoke-virtual {v12}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v15

    move-object/from16 v0, p0

    move-object v1, v14

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/EasSyncService;->sendHttpClientPost(Ljava/lang/String;[B)Lorg/apache/http/HttpResponse;

    move-result-object v11

    .line 1611
    .local v11, res:Lorg/apache/http/HttpResponse;
    invoke-interface {v11}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v14

    invoke-interface {v14}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v13

    .line 1614
    .local v13, status:I
    sget-boolean v14, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v14, :cond_3

    .line 1615
    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "sendMeetingResponse(): MeetingResponse http response code:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 1619
    :cond_3
    const/16 v14, 0xc8

    if-ne v13, v14, :cond_4

    .line 1620
    invoke-interface {v11}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    .line 1621
    .local v5, e:Lorg/apache/http/HttpEntity;
    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v14

    long-to-int v7, v14

    .line 1622
    .local v7, len:I
    invoke-interface {v11}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v14

    invoke-interface {v14}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v6

    .line 1623
    .local v6, is:Ljava/io/InputStream;
    if-eqz v7, :cond_0

    .line 1624
    new-instance v14, Lcom/android/exchange/adapter/MeetingResponseParser;

    move-object v0, v14

    move-object v1, v6

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/adapter/MeetingResponseParser;-><init>(Ljava/io/InputStream;Lcom/android/exchange/EasSyncService;)V

    invoke-virtual {v14}, Lcom/android/exchange/adapter/MeetingResponseParser;->parse()Z

    .line 1625
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/exchange/MeetingResponseRequest;->mResponse:I

    move v14, v0

    move-object/from16 v0, p0

    move-object v1, v10

    move v2, v14

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/EasSyncService;->sendMeetingResponseMail(Lcom/android/email/provider/EmailContent$Message;I)V

    goto/16 :goto_0

    .line 1627
    .end local v5           #e:Lorg/apache/http/HttpEntity;
    .end local v6           #is:Ljava/io/InputStream;
    .end local v7           #len:I
    :cond_4
    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->isAuthError(I)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 1628
    new-instance v14, Lcom/android/exchange/EasAuthenticationException;

    invoke-direct {v14}, Lcom/android/exchange/EasAuthenticationException;-><init>()V

    throw v14

    .line 1630
    :cond_5
    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Meeting response request failed, code: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 1631
    new-instance v14, Ljava/io/IOException;

    invoke-direct {v14}, Ljava/io/IOException;-><init>()V

    throw v14
.end method

.method protected sendMoveMessage(Lcom/android/exchange/MoveMessageRequest;)I
    .locals 24
    .parameter "req"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1637
    const/4 v6, 0x0

    .line 1639
    .local v6, bMoveToOtherAccountProcess:Z
    new-instance v15, Lcom/android/exchange/adapter/Serializer;

    const/16 v19, 0x1

    const/16 v20, 0x1

    move-object v0, v15

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;-><init>(ZZ)V

    .line 1641
    .local v15, s:Lcom/android/exchange/adapter/Serializer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/exchange/MoveMessageRequest;->mCurBoxId:J

    move-wide/from16 v20, v0

    invoke-static/range {v19 .. v21}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v5

    .line 1642
    .local v5, SrcMailBox:Lcom/android/email/provider/EmailContent$Mailbox;
    if-nez v5, :cond_0

    const/16 v19, 0x1

    .line 1773
    :goto_0
    return v19

    .line 1643
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/exchange/MoveMessageRequest;->mSelBoxId:J

    move-wide/from16 v20, v0

    invoke-static/range {v19 .. v21}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v4

    .line 1644
    .local v4, DstMailBox:Lcom/android/email/provider/EmailContent$Mailbox;
    if-nez v4, :cond_1

    const/16 v19, 0x1

    goto :goto_0

    .line 1649
    :cond_1
    const v17, 0xea60

    .line 1650
    .local v17, timeout:I
    move-object v0, v5

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mServerId:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object v0, v4

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mServerId:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 1652
    const-string v7, "Email"

    .line 1653
    .local v7, className:Ljava/lang/String;
    const/16 v19, 0x5

    move-object v0, v15

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v19

    const/16 v20, 0x1c

    invoke-virtual/range {v19 .. v20}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v19

    const/16 v20, 0xf

    invoke-virtual/range {v19 .. v20}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v19

    const/16 v20, 0x10

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v19

    const/16 v20, 0xb

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->SyncKey:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v19

    const/16 v20, 0x12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->CollectionId:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1659
    const/16 v19, 0x13

    move-object v0, v15

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->tag(I)Lcom/android/exchange/adapter/Serializer;

    .line 1663
    const/16 v19, 0x15

    const-string v20, "50"

    move-object v0, v15

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1668
    const/16 v19, 0x16

    move-object v0, v15

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1669
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/exchange/MoveMessageRequest;->mMessageIdList:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    .line 1670
    .local v10, id:Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    invoke-static/range {v19 .. v21}, Lcom/android/email/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Message;

    move-result-object v12

    .line 1671
    .local v12, msg:Lcom/android/email/provider/EmailContent$Message;
    const/16 v19, 0x9

    move-object v0, v15

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v19

    const/16 v20, 0xd

    move-object v0, v12

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 1672
    sget-object v19, Lcom/android/email/provider/EmailContent$Message;->SYNCED_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    invoke-static/range {v19 .. v21}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v18

    .line 1673
    .local v18, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    .line 1675
    .end local v10           #id:Ljava/lang/Long;
    .end local v12           #msg:Lcom/android/email/provider/EmailContent$Message;
    .end local v18           #uri:Landroid/net/Uri;
    :cond_2
    invoke-virtual {v15}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 1676
    invoke-virtual {v15}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/exchange/adapter/Serializer;->done()V

    .line 1677
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string v21, "EasSyncService"

    aput-object v21, v19, v20

    const/16 v20, 0x1

    const-string v21, "EAS SyncService : Sending Http Client Post"

    aput-object v21, v19, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 1678
    const-string v19, "Sync"

    new-instance v20, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-virtual {v15}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/exchange/EasSyncService;->sendHttpClientPost(Ljava/lang/String;Lorg/apache/http/HttpEntity;I)Lorg/apache/http/HttpResponse;

    move-result-object v14

    .line 1680
    .local v14, resp:Lorg/apache/http/HttpResponse;
    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v8

    .line 1681
    .local v8, code:I
    const/16 v19, 0xc8

    move v0, v8

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    .line 1682
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string v21, "EasSyncService"

    aput-object v21, v19, v20

    const/16 v20, 0x1

    const-string v21, "send Delete Message : 200 OK"

    aput-object v21, v19, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 1693
    const/16 v19, 0x1

    goto/16 :goto_0

    .line 1684
    :cond_3
    const-string v19, "Sync response error: "

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move v2, v8

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/EasSyncService;->userLog(Ljava/lang/String;I)V

    .line 1685
    move-object/from16 v0, p0

    move v1, v8

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->isAuthError(I)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 1686
    const/16 v19, 0x2

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/exchange/EasSyncService;->mExitStatus:I

    .line 1687
    new-instance v19, Lcom/android/exchange/EasAuthenticationException;

    invoke-direct/range {v19 .. v19}, Lcom/android/exchange/EasAuthenticationException;-><init>()V

    throw v19

    .line 1689
    :cond_4
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/exchange/EasSyncService;->mExitStatus:I

    .line 1690
    new-instance v19, Ljava/io/IOException;

    invoke-direct/range {v19 .. v19}, Ljava/io/IOException;-><init>()V

    throw v19

    .line 1696
    .end local v7           #className:Ljava/lang/String;
    .end local v8           #code:I
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v14           #resp:Lorg/apache/http/HttpResponse;
    :cond_5
    const/16 v19, 0x145

    move-object v0, v15

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1698
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/exchange/MoveMessageRequest;->mMessageIdList:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .restart local v9       #i$:Ljava/util/Iterator;
    :cond_6
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    .line 1699
    .restart local v10       #id:Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    invoke-static/range {v19 .. v21}, Lcom/android/email/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Message;

    move-result-object v12

    .line 1700
    .restart local v12       #msg:Lcom/android/email/provider/EmailContent$Message;
    if-nez v12, :cond_7

    const/16 v19, 0x1

    goto/16 :goto_0

    .line 1702
    :cond_7
    move-object v0, v12

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    move-object/from16 v19, v0

    if-nez v19, :cond_8

    .line 1704
    sget-object v19, Lcom/android/email/provider/EmailContent$Message;->SYNCED_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    invoke-static/range {v19 .. v21}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v18

    .line 1705
    .restart local v18       #uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_2

    .line 1708
    .end local v18           #uri:Landroid/net/Uri;
    :cond_8
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string v21, "James"

    aput-object v21, v19, v20

    const/16 v20, 0x1

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "EAS Sync Service : req.mMessageId = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object v0, v12

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", req.mCurBoxId = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object v0, v5

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mServerId:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "req.mSelBoxId = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object v0, v4

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mServerId:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 1715
    const/16 v19, 0x146

    move-object v0, v15

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1717
    new-instance v11, Ljava/lang/String;

    invoke-direct {v11}, Ljava/lang/String;-><init>()V

    .line 1718
    .local v11, mTmpServerId:Ljava/lang/String;
    move-object v0, v12

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "LocalAccountMoved-"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_9

    .line 1720
    const/4 v6, 0x1

    .line 1721
    move-object v0, v12

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "LocalAccountMoved-"

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 1722
    const/16 v19, 0x147

    move-object v0, v15

    move/from16 v1, v19

    move-object v2, v11

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1729
    :goto_3
    const/16 v19, 0x148

    move-object v0, v5

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mServerId:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object v0, v15

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1730
    const/16 v19, 0x149

    move-object v0, v4

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mServerId:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object v0, v15

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1731
    invoke-virtual {v15}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 1733
    if-nez v6, :cond_a

    .line 1735
    sget-object v19, Lcom/android/email/provider/EmailContent$Message;->SYNCED_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    invoke-static/range {v19 .. v21}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v18

    .line 1736
    .restart local v18       #uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1726
    .end local v18           #uri:Landroid/net/Uri;
    :cond_9
    const/16 v19, 0x147

    move-object v0, v12

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object v0, v15

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto :goto_3

    .line 1740
    :cond_a
    if-eqz v6, :cond_6

    .line 1743
    :try_start_0
    invoke-static {}, Lcom/android/exchange/SyncManager;->callback()Lcom/android/email/service/IEmailServiceCallback;

    move-result-object v19

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    move-wide/from16 v20, v0

    const/16 v22, 0x2

    const/16 v23, 0x0

    invoke-interface/range {v19 .. v23}, Lcom/android/email/service/IEmailServiceCallback;->syncMailboxStatus(JII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 1744
    :catch_0
    move-exception v19

    goto/16 :goto_2

    .line 1753
    .end local v10           #id:Ljava/lang/Long;
    .end local v11           #mTmpServerId:Ljava/lang/String;
    .end local v12           #msg:Lcom/android/email/provider/EmailContent$Message;
    :cond_b
    invoke-virtual {v15}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/exchange/adapter/Serializer;->done()V

    .line 1755
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string v21, "EasSyncService"

    aput-object v21, v19, v20

    const/16 v20, 0x1

    const-string v21, "EAS SyncService : Sending Http Client Post"

    aput-object v21, v19, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 1756
    const-string v19, "MoveItems"

    invoke-virtual {v15}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/EasSyncService;->sendHttpClientPost(Ljava/lang/String;[B)Lorg/apache/http/HttpResponse;

    move-result-object v13

    .line 1757
    .local v13, res:Lorg/apache/http/HttpResponse;
    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v16

    .line 1758
    .local v16, status:I
    const/16 v19, 0xc8

    move/from16 v0, v16

    move/from16 v1, v19

    if-ne v0, v1, :cond_c

    .line 1760
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string v21, "EasSyncService"

    aput-object v21, v19, v20

    const/16 v20, 0x1

    const-string v21, "send Move Message : 200 OK"

    aput-object v21, v19, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 1772
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string v21, "EasSyncService"

    aput-object v21, v19, v20

    const/16 v20, 0x1

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Done - MoveMessage! "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 1773
    const/16 v19, 0x1

    goto/16 :goto_0

    .line 1761
    :cond_c
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->isAuthError(I)Z

    move-result v19

    if-eqz v19, :cond_d

    .line 1763
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string v21, "EasSyncService"

    aput-object v21, v19, v20

    const/16 v20, 0x1

    const-string v21, "send Move Message : isAuthError"

    aput-object v21, v19, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 1764
    new-instance v19, Lcom/android/exchange/EasAuthenticationException;

    invoke-direct/range {v19 .. v19}, Lcom/android/exchange/EasAuthenticationException;-><init>()V

    throw v19

    .line 1767
    :cond_d
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string v21, "EasSyncService"

    aput-object v21, v19, v20

    const/16 v20, 0x1

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Meeting response request failed, code: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 1768
    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Meeting response request failed, code: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 1769
    new-instance v19, Ljava/io/IOException;

    invoke-direct/range {v19 .. v19}, Ljava/io/IOException;-><init>()V

    throw v19
.end method

.method protected sendPing([BI)Lorg/apache/http/HttpResponse;
    .locals 4
    .parameter "bytes"
    .parameter "heartbeat"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1974
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v2, v2, Lcom/android/email/provider/EmailContent$Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": Ping"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 1975
    sget-boolean v0, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v0, :cond_0

    .line 1976
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Send ping, timeout: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "s, high: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/exchange/EasSyncService;->mPingHighWaterMark:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x73

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 1978
    :cond_0
    const-string v0, "Ping"

    new-instance v1, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v1, p1}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    add-int/lit8 v2, p2, 0x5

    mul-int/lit16 v2, v2, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/exchange/EasSyncService;->sendHttpClientPost(Ljava/lang/String;Lorg/apache/http/HttpEntity;I)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method setHeaders(Lorg/apache/http/client/methods/HttpRequestBase;Z)V
    .locals 4
    .parameter "method"
    .parameter "usePolicyKey"

    .prologue
    .line 1835
    const-string v1, "Authorization"

    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mAuthString:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1836
    const-string v1, "MS-ASProtocolVersion"

    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersion:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1837
    const-string v1, "Connection"

    const-string v2, "keep-alive"

    invoke-virtual {p1, v1, v2}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1842
    const-string v1, "User-Agent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mDeviceTypeForUserAgent:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "807"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "4"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1848
    if-eqz p2, :cond_2

    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    if-eqz v1, :cond_2

    .line 1849
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v0, v1, Lcom/android/email/provider/EmailContent$Account;->mSecuritySyncKey:Ljava/lang/String;

    .line 1850
    .local v0, key:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 1856
    :cond_0
    const-string v0, "0"

    .line 1858
    :cond_1
    const-string v1, "X-MS-PolicyKey"

    invoke-virtual {p1, v1, v0}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1861
    .end local v0           #key:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method protected setupService()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 3604
    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v3, v3, Lcom/android/email/provider/EmailContent$Account;->mId:J

    invoke-static {v2, v3, v4}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    .line 3605
    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    if-nez v2, :cond_0

    move v2, v6

    .line 3641
    :goto_0
    return v2

    .line 3608
    :cond_0
    sget-boolean v2, Lcom/android/exchange/Eas;->FILE_LOG:Z

    if-eqz v2, :cond_1

    .line 3609
    invoke-static {}, Lcom/android/exchange/utility/FileLogger;->restoreLog()V

    .line 3612
    :cond_1
    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v3, v3, Lcom/android/email/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    invoke-static {v2, v3, v4}, Lcom/android/email/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$HostAuth;

    move-result-object v1

    .line 3613
    .local v1, ha:Lcom/android/email/provider/EmailContent$HostAuth;
    if-nez v1, :cond_2

    .line 3615
    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->TAG:Ljava/lang/String;

    const-string v3, "ha is null for account"

    invoke-static {v2, v3}, Lcom/android/exchange/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v6

    .line 3616
    goto :goto_0

    .line 3618
    :cond_2
    iget-object v2, v1, Lcom/android/email/provider/EmailContent$HostAuth;->mAddress:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/exchange/EasSyncService;->mHostAddress:Ljava/lang/String;

    .line 3619
    iget-object v2, v1, Lcom/android/email/provider/EmailContent$HostAuth;->mLogin:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/exchange/EasSyncService;->mUserName:Ljava/lang/String;

    .line 3620
    iget-object v2, v1, Lcom/android/email/provider/EmailContent$HostAuth;->mPassword:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/exchange/EasSyncService;->mPassword:Ljava/lang/String;

    .line 3623
    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v2, v2, Lcom/android/email/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersion:Ljava/lang/String;

    .line 3625
    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersion:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 3626
    const-string v2, "2.5"

    iput-object v2, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersion:Ljava/lang/String;

    .line 3628
    :cond_3
    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersion:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    .line 3631
    :try_start_0
    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-wide v3, v3, Lcom/android/email/provider/EmailContent$Mailbox;->mId:J

    invoke-static {v2, v3, v4}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exchange/EasSyncService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3636
    :goto_1
    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-wide v2, v2, Lcom/android/email/provider/EmailContent$Mailbox;->mId:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    :cond_4
    move v2, v6

    goto :goto_0

    .line 3632
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 3633
    .local v0, e:Ljava/lang/Exception;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "error occruerd here "

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 3634
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 3637
    .end local v0           #e:Ljava/lang/Exception;
    :cond_5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exchange/EasSyncService;->mThread:Ljava/lang/Thread;

    .line 3638
    const/16 v2, 0xa

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 3639
    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exchange/EasSyncService;->TAG:Ljava/lang/String;

    .line 3641
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public stop()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x1

    .line 485
    iput-boolean v0, p0, Lcom/android/exchange/EasSyncService;->mStop:Z

    .line 486
    new-array v0, v0, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stop() called for thread:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mThread:Ljava/lang/Thread;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 487
    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 488
    :try_start_0
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/exchange/EasSyncService;->commandFinished:Z

    if-nez v1, :cond_0

    .line 489
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 493
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stop(): Clearing WatchdogAlarm for mailbox:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 494
    iget-wide v1, p0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    invoke-static {v1, v2}, Lcom/android/exchange/SyncManager;->clearWatchdogAlarm(J)V

    .line 497
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 499
    sget-object v0, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    if-eqz v0, :cond_1

    .line 500
    sget-object v0, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    iget-wide v1, p0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/SyncManager;->releaseWakeLock(J)V

    .line 501
    :cond_1
    return-void

    .line 486
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 497
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public sync(Lcom/android/exchange/adapter/AbstractSyncAdapter;)V
    .locals 26
    .parameter "target"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3264
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    move-object v15, v0

    .line 3265
    .local v15, mailbox:Lcom/android/email/provider/EmailContent$Mailbox;
    invoke-virtual/range {p1 .. p1}, Lcom/android/exchange/adapter/AbstractSyncAdapter;->getCollectionName()Ljava/lang/String;

    move-result-object v7

    .line 3266
    .local v7, className:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/exchange/adapter/AbstractSyncAdapter;->getSyncKey()Ljava/lang/String;

    move-result-object v20

    .line 3267
    .local v20, syncKey:Ljava/lang/String;
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exchange/EasSyncService;->SyncKey:Ljava/lang/String;

    .line 3268
    move-object v0, v15

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mServerId:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exchange/EasSyncService;->CollectionId:Ljava/lang/String;

    .line 3269
    const/16 v16, 0x1

    .line 3270
    .local v16, moreAvailable:Z
    const/4 v14, 0x0

    .line 3271
    .local v14, loopingCount:I
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/exchange/EasSyncService;->mStop:Z

    move/from16 v22, v0

    if-nez v22, :cond_20

    if-eqz v16, :cond_20

    .line 3274
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/EasSyncService;->hasConnectivity()Z

    move-result v22

    if-nez v22, :cond_0

    .line 3275
    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const-string v24, "No connectivity in sync; finishing sync"

    aput-object v24, v22, v23

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 3276
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/exchange/EasSyncService;->mExitStatus:I

    .line 3525
    :goto_1
    return-void

    .line 3281
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/exchange/adapter/AbstractSyncAdapter;->isSyncable()Z

    move-result v22

    if-nez v22, :cond_3

    .line 3282
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/exchange/EasSyncService;->mExitStatus:I

    goto :goto_1

    .line 3293
    .local v17, req:Lcom/android/exchange/Request;
    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mRequests:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    check-cast v0, Lcom/android/exchange/Request;

    move-object/from16 v17, v0

    .line 3295
    monitor-exit v22
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3299
    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/android/exchange/PartRequest;

    move/from16 v22, v0

    if-eqz v22, :cond_a

    .line 3300
    move-object/from16 v0, v17

    check-cast v0, Lcom/android/exchange/PartRequest;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->getAttachment(Lcom/android/exchange/PartRequest;)V

    .line 3309
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mRequests:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    monitor-enter v22

    .line 3310
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mRequests:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3311
    monitor-exit v22
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 3288
    .end local v17           #req:Lcom/android/exchange/Request;
    :cond_3
    const/16 v17, 0x0

    .line 3289
    .restart local v17       #req:Lcom/android/exchange/Request;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mRequests:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    monitor-enter v22

    .line 3290
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mRequests:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v23

    if-eqz v23, :cond_1

    .line 3291
    monitor-exit v22
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3314
    new-instance v19, Lcom/android/exchange/adapter/Serializer;

    invoke-direct/range {v19 .. v19}, Lcom/android/exchange/adapter/Serializer;-><init>()V

    .line 3316
    .local v19, s:Lcom/android/exchange/adapter/Serializer;
    invoke-virtual/range {p1 .. p1}, Lcom/android/exchange/adapter/AbstractSyncAdapter;->getCollectionName()Ljava/lang/String;

    move-result-object v7

    .line 3317
    invoke-virtual/range {p1 .. p1}, Lcom/android/exchange/adapter/AbstractSyncAdapter;->getSyncKey()Ljava/lang/String;

    move-result-object v20

    .line 3318
    const/16 v22, 0x4

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const-string v24, "sync, sending "

    aput-object v24, v22, v23

    const/16 v23, 0x1

    aput-object v7, v22, v23

    const/16 v23, 0x2

    const-string v24, " syncKey: "

    aput-object v24, v22, v23

    const/16 v23, 0x3

    aput-object v20, v22, v23

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 3322
    const/4 v10, 0x1

    .line 3324
    .local v10, deleteAsMoveFlag:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v22

    const-wide v24, 0x4028333333333333L

    cmpl-double v22, v22, v24

    if-ltz v22, :cond_d

    .line 3325
    const/16 v22, 0x5

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v22

    const/16 v23, 0x1c

    invoke-virtual/range {v22 .. v23}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v22

    const/16 v23, 0xf

    invoke-virtual/range {v22 .. v23}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v22

    const/16 v23, 0xb

    move-object/from16 v0, v22

    move/from16 v1, v23

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v22

    const/16 v23, 0x12

    move-object v0, v15

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mServerId:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v22 .. v24}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 3331
    if-eqz v10, :cond_c

    .line 3333
    const/16 v22, 0x1e

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->tag(I)Lcom/android/exchange/adapter/Serializer;

    .line 3353
    :cond_4
    :goto_3
    const v21, 0xea60

    .line 3356
    .local v21, timeout:I
    const-string v22, "0"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_e

    .line 3362
    const/16 v22, 0x13

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->tag(I)Lcom/android/exchange/adapter/Serializer;

    .line 3370
    :goto_4
    const/16 v22, 0x15

    const-string v23, "Email"

    move-object v0, v7

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_f

    const-string v23, "50"

    :goto_5
    move-object/from16 v0, v19

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 3376
    const/16 v22, 0x17

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 3378
    const-string v22, "Email"

    move-object v0, v7

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_10

    .line 3379
    const/16 v22, 0x18

    invoke-direct/range {p0 .. p0}, Lcom/android/exchange/EasSyncService;->getEmailFilter()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v19

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 3394
    :cond_5
    :goto_6
    const/4 v4, 0x0

    .line 3395
    .local v4, a:Lcom/android/email/provider/EmailContent$Account;
    const-string v22, "Email"

    move-object v0, v7

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    .local v12, isEmailp:Z
    if-eqz v12, :cond_6

    .line 3396
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object v0, v15

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    move-wide/from16 v23, v0

    invoke-static/range {v22 .. v24}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v4

    .line 3401
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v22

    const-wide/high16 v24, 0x4028

    cmpl-double v22, v22, v24

    if-ltz v22, :cond_13

    .line 3403
    const/16 v22, 0x445

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v22

    const/16 v23, 0x446

    if-eqz v12, :cond_11

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/exchange/EasSyncService;->mIsHTMLDisabled:Z

    move/from16 v24, v0

    if-nez v24, :cond_11

    const-string v24, "2"

    :goto_7
    invoke-virtual/range {v22 .. v24}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 3413
    if-eqz v12, :cond_12

    invoke-virtual {v4}, Lcom/android/email/provider/EmailContent$Account;->getEmailSize()B

    move-result v22

    invoke-static/range {v22 .. v22}, Lcom/android/exchange/Eas$EmailDataSize;->parse(B)Lcom/android/exchange/Eas$EmailDataSize;

    move-result-object v22

    sget-object v23, Lcom/android/exchange/Eas$EmailDataSize;->ALL:Lcom/android/exchange/Eas$EmailDataSize;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_12

    .line 3415
    const/16 v22, 0x447

    invoke-virtual {v4}, Lcom/android/email/provider/EmailContent$Account;->getEmailSize()B

    move-result v23

    invoke-static/range {v23 .. v23}, Lcom/android/exchange/Eas$EmailDataSize;->parse(B)Lcom/android/exchange/Eas$EmailDataSize;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/android/exchange/Eas$EmailDataSize;->toEas12Text()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v19

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 3417
    const-string v22, "EasSyncService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "1. Email Size = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v4}, Lcom/android/email/provider/EmailContent$Account;->getEmailSize()B

    move-result v24

    invoke-static/range {v24 .. v24}, Lcom/android/exchange/Eas$EmailDataSize;->parse(B)Lcom/android/exchange/Eas$EmailDataSize;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/android/exchange/Eas$EmailDataSize;->toEas12Text()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/exchange/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3427
    :cond_7
    :goto_8
    invoke-virtual/range {v19 .. v19}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 3439
    :goto_9
    invoke-virtual/range {v19 .. v19}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 3441
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/AbstractSyncAdapter;->sendLocalChanges(Lcom/android/exchange/adapter/Serializer;)Z

    .line 3443
    invoke-virtual/range {v19 .. v19}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/exchange/adapter/Serializer;->done()V

    .line 3446
    sget-boolean v22, Lcom/android/exchange/Eas;->PARSER_LOG:Z

    if-eqz v22, :cond_8

    .line 3447
    invoke-virtual/range {v19 .. v19}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v5

    .line 3448
    .local v5, b:[B
    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const-string v24, "sync(): Wbxml:"

    aput-object v24, v22, v23

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 3449
    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 3450
    .local v6, byTe:Ljava/io/ByteArrayInputStream;
    new-instance v13, Lcom/android/exchange/adapter/LogAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    move-object/from16 v22, v0

    move-object v0, v13

    move-object/from16 v1, v22

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/adapter/LogAdapter;-><init>(Lcom/android/email/provider/EmailContent$Mailbox;Lcom/android/exchange/EasSyncService;)V

    .line 3451
    .local v13, logA:Lcom/android/exchange/adapter/LogAdapter;
    invoke-virtual {v13, v6}, Lcom/android/exchange/adapter/LogAdapter;->parse(Ljava/io/InputStream;)Z

    .line 3456
    .end local v5           #b:[B
    .end local v6           #byTe:Ljava/io/ByteArrayInputStream;
    .end local v13           #logA:Lcom/android/exchange/adapter/LogAdapter;
    :cond_8
    :try_start_3
    const-string v22, "Sync"

    new-instance v23, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-virtual/range {v19 .. v19}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/exchange/EasSyncService;->sendHttpClientPost(Ljava/lang/String;Lorg/apache/http/HttpEntity;I)Lorg/apache/http/HttpResponse;

    move-result-object v18

    .line 3458
    .local v18, resp:Lorg/apache/http/HttpResponse;
    invoke-interface/range {v18 .. v18}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v8

    .line 3460
    .local v8, code:I
    const-string v22, "sync(): sendHttpClientPost HTTP response code: "

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move v2, v8

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/EasSyncService;->userLog(Ljava/lang/String;I)V

    .line 3462
    const/16 v22, 0xc8

    move v0, v8

    move/from16 v1, v22

    if-ne v0, v1, :cond_1c

    .line 3465
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v22

    const-wide v24, 0x4028333333333333L

    cmpl-double v22, v22, v24

    if-ltz v22, :cond_15

    .line 3466
    const-string v22, "Content-Length"

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v9

    .line 3467
    .local v9, contentLength:Lorg/apache/http/Header;
    if-eqz v9, :cond_15

    invoke-interface {v9}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v22

    const-string v23, "0"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_15

    .line 3468
    const-string v22, "EasSynService"

    const-string v23, "Sync Response has a header [Content-Length: 0]"

    invoke-static/range {v22 .. v23}, Lcom/android/exchange/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3470
    invoke-virtual/range {p1 .. p1}, Lcom/android/exchange/adapter/AbstractSyncAdapter;->setIntervalPing()V

    .line 3472
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/exchange/EasSyncService;->mExitStatus:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 3515
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v22

    monitor-enter v22

    .line 3516
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v23, v0

    if-eqz v23, :cond_9

    .line 3517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 3518
    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    .line 3520
    :cond_9
    monitor-exit v22

    goto/16 :goto_1

    :catchall_0
    move-exception v23

    monitor-exit v22
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v23

    .line 3295
    .end local v4           #a:Lcom/android/email/provider/EmailContent$Account;
    .end local v8           #code:I
    .end local v9           #contentLength:Lorg/apache/http/Header;
    .end local v10           #deleteAsMoveFlag:Z
    .end local v12           #isEmailp:Z
    .end local v18           #resp:Lorg/apache/http/HttpResponse;
    .end local v19           #s:Lcom/android/exchange/adapter/Serializer;
    .end local v21           #timeout:I
    :catchall_1
    move-exception v23

    :try_start_5
    monitor-exit v22
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v23

    .line 3301
    :cond_a
    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/android/exchange/MeetingResponseRequest;

    move/from16 v22, v0

    if-eqz v22, :cond_b

    .line 3302
    move-object/from16 v0, v17

    check-cast v0, Lcom/android/exchange/MeetingResponseRequest;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->sendMeetingResponse(Lcom/android/exchange/MeetingResponseRequest;)V

    goto/16 :goto_2

    .line 3303
    :cond_b
    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/android/exchange/MoveMessageRequest;

    move/from16 v22, v0

    if-eqz v22, :cond_2

    .line 3304
    move-object/from16 v0, v17

    check-cast v0, Lcom/android/exchange/MoveMessageRequest;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->sendMoveMessage(Lcom/android/exchange/MoveMessageRequest;)I

    goto/16 :goto_2

    .line 3311
    :catchall_2
    move-exception v23

    :try_start_6
    monitor-exit v22
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v23

    .line 3336
    .restart local v10       #deleteAsMoveFlag:Z
    .restart local v19       #s:Lcom/android/exchange/adapter/Serializer;
    :cond_c
    const/16 v22, 0x1e

    const-string v23, "0"

    move-object/from16 v0, v19

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto/16 :goto_3

    .line 3339
    :cond_d
    const/16 v22, 0x5

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v22

    const/16 v23, 0x1c

    invoke-virtual/range {v22 .. v23}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v22

    const/16 v23, 0xf

    invoke-virtual/range {v22 .. v23}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v22

    const/16 v23, 0x10

    move-object/from16 v0, v22

    move/from16 v1, v23

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v22

    const/16 v23, 0xb

    move-object/from16 v0, v22

    move/from16 v1, v23

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v22

    const/16 v23, 0x12

    move-object v0, v15

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mServerId:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v22 .. v24}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 3345
    if-eqz v10, :cond_4

    .line 3347
    const/16 v22, 0x1e

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->tag(I)Lcom/android/exchange/adapter/Serializer;

    goto/16 :goto_3

    .line 3365
    .restart local v21       #timeout:I
    :cond_e
    const v21, 0x1d4c0

    goto/16 :goto_4

    .line 3370
    :cond_f
    const-string v23, "5"

    goto/16 :goto_5

    .line 3380
    :cond_10
    const-string v22, "Calendar"

    move-object v0, v7

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_5

    .line 3383
    const/16 v22, 0x18

    invoke-direct/range {p0 .. p0}, Lcom/android/exchange/EasSyncService;->getCalendarFilterType()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v19

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto/16 :goto_6

    .line 3403
    .restart local v4       #a:Lcom/android/email/provider/EmailContent$Account;
    .restart local v12       #isEmailp:Z
    :cond_11
    const-string v24, "1"

    goto/16 :goto_7

    .line 3420
    :cond_12
    if-nez v12, :cond_7

    .line 3421
    const/16 v22, 0x447

    const-string v23, "400000"

    move-object/from16 v0, v19

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 3424
    const-string v22, "EasSyncService"

    const-string v23, "2. Email Size = 400000"

    invoke-static/range {v22 .. v23}, Lcom/android/exchange/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 3431
    :cond_13
    const/16 v22, 0x19

    if-eqz v12, :cond_14

    invoke-virtual {v4}, Lcom/android/email/provider/EmailContent$Account;->getEmailSize()B

    move-result v23

    invoke-static/range {v23 .. v23}, Lcom/android/exchange/Eas$EmailDataSize;->parse(B)Lcom/android/exchange/Eas$EmailDataSize;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/android/exchange/Eas$EmailDataSize;->toEas2_5Text()Ljava/lang/String;

    move-result-object v23

    :goto_a
    move-object/from16 v0, v19

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto/16 :goto_9

    :cond_14
    const-string v23, "8"

    goto :goto_a

    .line 3478
    .restart local v8       #code:I
    .restart local v18       #resp:Lorg/apache/http/HttpResponse;
    :cond_15
    :try_start_7
    invoke-interface/range {v18 .. v18}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v11

    .line 3479
    .local v11, is:Ljava/io/InputStream;
    if-eqz v11, :cond_1a

    .line 3480
    move-object/from16 v0, p1

    move-object v1, v11

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/AbstractSyncAdapter;->parse(Ljava/io/InputStream;)Z

    move-result v16

    .line 3481
    invoke-virtual/range {p1 .. p1}, Lcom/android/exchange/adapter/AbstractSyncAdapter;->isLooping()Z

    move-result v22

    if-eqz v22, :cond_19

    .line 3482
    add-int/lit8 v14, v14, 0x1

    .line 3483
    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "** Looping: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 3486
    if-eqz v16, :cond_16

    const/16 v22, 0x64

    move v0, v14

    move/from16 v1, v22

    if-le v0, v1, :cond_16

    .line 3487
    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const-string v24, "** Looping force stopped"

    aput-object v24, v22, v23

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 3488
    const/16 v16, 0x0

    .line 3493
    :cond_16
    :goto_b
    invoke-virtual/range {p1 .. p1}, Lcom/android/exchange/adapter/AbstractSyncAdapter;->cleanup()V

    .line 3494
    const/16 v22, 0x1

    move/from16 v0, v16

    move/from16 v1, v22

    if-ne v0, v1, :cond_17

    .line 3496
    const-wide/16 v22, 0xbb8

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    move/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/android/exchange/EasSyncService;->sleep(JZ)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 3515
    :cond_17
    :goto_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v22

    monitor-enter v22

    .line 3516
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v23, v0

    if-eqz v23, :cond_18

    .line 3517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 3518
    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    .line 3520
    :cond_18
    monitor-exit v22

    goto/16 :goto_0

    :catchall_3
    move-exception v23

    monitor-exit v22
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v23

    .line 3491
    :cond_19
    const/4 v14, 0x0

    goto :goto_b

    .line 3499
    :cond_1a
    const/16 v22, 0x1

    :try_start_9
    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const-string v24, "Empty input stream in sync command response"

    aput-object v24, v22, v23

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    goto :goto_c

    .line 3515
    .end local v8           #code:I
    .end local v11           #is:Ljava/io/InputStream;
    .end local v18           #resp:Lorg/apache/http/HttpResponse;
    :catchall_4
    move-exception v22

    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v23

    monitor-enter v23

    .line 3516
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v24, v0

    if-eqz v24, :cond_1b

    .line 3517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 3518
    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    .line 3520
    :cond_1b
    monitor-exit v23
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    .line 3515
    throw v22

    .line 3502
    .restart local v8       #code:I
    .restart local v18       #resp:Lorg/apache/http/HttpResponse;
    :cond_1c
    :try_start_b
    const-string v22, "Sync response error: "

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move v2, v8

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/EasSyncService;->userLog(Ljava/lang/String;I)V

    .line 3503
    move-object/from16 v0, p0

    move v1, v8

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->isProvisionError(I)Z

    move-result v22

    if-eqz v22, :cond_1e

    .line 3504
    const/16 v22, 0x4

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/exchange/EasSyncService;->mExitStatus:I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 3515
    :goto_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v22

    monitor-enter v22

    .line 3516
    :try_start_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v23, v0

    if-eqz v23, :cond_1d

    .line 3517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 3518
    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    .line 3520
    :cond_1d
    monitor-exit v22

    goto/16 :goto_1

    :catchall_5
    move-exception v23

    monitor-exit v22
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    throw v23

    .line 3505
    :cond_1e
    :try_start_d
    move-object/from16 v0, p0

    move v1, v8

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->isAuthError(I)Z

    move-result v22

    if-eqz v22, :cond_1f

    .line 3506
    const/16 v22, 0x2

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/exchange/EasSyncService;->mExitStatus:I

    goto :goto_d

    .line 3508
    :cond_1f
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/exchange/EasSyncService;->mExitStatus:I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    goto :goto_d

    .line 3524
    .end local v4           #a:Lcom/android/email/provider/EmailContent$Account;
    .end local v8           #code:I
    .end local v10           #deleteAsMoveFlag:Z
    .end local v12           #isEmailp:Z
    .end local v17           #req:Lcom/android/exchange/Request;
    .end local v18           #resp:Lorg/apache/http/HttpResponse;
    .end local v19           #s:Lcom/android/exchange/adapter/Serializer;
    .end local v21           #timeout:I
    :cond_20
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/exchange/EasSyncService;->mExitStatus:I

    goto/16 :goto_1

    .line 3520
    .restart local v4       #a:Lcom/android/email/provider/EmailContent$Account;
    .restart local v10       #deleteAsMoveFlag:Z
    .restart local v12       #isEmailp:Z
    .restart local v17       #req:Lcom/android/exchange/Request;
    .restart local v19       #s:Lcom/android/exchange/adapter/Serializer;
    .restart local v21       #timeout:I
    :catchall_6
    move-exception v22

    :try_start_e
    monitor-exit v23
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    throw v22
.end method

.method public tryAutodiscover(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/os/Bundle;
    .locals 18
    .parameter "userName"
    .parameter "password"
    .parameter "domain_user"
    .parameter "bTrustCert"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 782
    new-instance v15, Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;

    const/16 v16, 0x0

    move-object v0, v15

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;-><init>(Lcom/android/exchange/EasSyncService;Lcom/android/exchange/EasSyncService$1;)V

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exchange/EasSyncService;->mAutoDiscInfo:Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;

    .line 783
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mAutoDiscInfo:Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;

    move-object v15, v0

    const/16 v16, 0x0

    move/from16 v0, v16

    move-object v1, v15

    iput-boolean v0, v1, Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;->isRedirectTagPresent:Z

    .line 784
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mAutoDiscInfo:Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;

    move-object v15, v0

    const/16 v16, 0x0

    move/from16 v0, v16

    move-object v1, v15

    iput-boolean v0, v1, Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;->isErrorTagPresent:Z

    .line 785
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mAutoDiscInfo:Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;

    move-object v15, v0

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;->access$102(Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;I)I

    .line 786
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mAutoDiscInfo:Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;

    move-object v15, v0

    const/16 v16, 0x0

    move-object/from16 v0, v16

    move-object v1, v15

    iput-object v0, v1, Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;->RedirectPost:Lorg/apache/http/client/methods/HttpPost;

    .line 787
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mAutoDiscInfo:Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;

    move-object v15, v0

    new-instance v16, Landroid/os/Bundle;

    invoke-direct/range {v16 .. v16}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v16

    move-object v1, v15

    iput-object v0, v1, Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;->bundle:Landroid/os/Bundle;

    .line 790
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v13

    .line 791
    .local v13, s:Lorg/xmlpull/v1/XmlSerializer;
    new-instance v10, Ljava/io/ByteArrayOutputStream;

    const/16 v15, 0x400

    invoke-direct {v10, v15}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 792
    .local v10, os:Ljava/io/ByteArrayOutputStream;
    new-instance v9, Lcom/android/email/provider/EmailContent$HostAuth;

    invoke-direct {v9}, Lcom/android/email/provider/EmailContent$HostAuth;-><init>()V

    .line 794
    .local v9, hostAuth:Lcom/android/email/provider/EmailContent$HostAuth;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mAutoDiscInfo:Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;

    move-object v15, v0

    iget-object v15, v15, Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;->bundle:Landroid/os/Bundle;

    const-string v16, "autodiscover_error_code"

    const/16 v17, -0x1

    invoke-virtual/range {v15 .. v17}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 798
    :try_start_0
    const-string v15, "UTF-8"

    invoke-interface {v13, v10, v15}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 799
    const-string v15, "UTF-8"

    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    move-object v0, v13

    move-object v1, v15

    move-object/from16 v2, v16

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 800
    const/4 v15, 0x0

    const-string v16, "Autodiscover"

    move-object v0, v13

    move-object v1, v15

    move-object/from16 v2, v16

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 801
    const/4 v15, 0x0

    const-string v16, "xmlns"

    const-string v17, "http://schemas.microsoft.com/exchange/autodiscover/mobilesync/requestschema/2006"

    move-object v0, v13

    move-object v1, v15

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 802
    const/4 v15, 0x0

    const-string v16, "Request"

    move-object v0, v13

    move-object v1, v15

    move-object/from16 v2, v16

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 803
    const/4 v15, 0x0

    const-string v16, "EMailAddress"

    move-object v0, v13

    move-object v1, v15

    move-object/from16 v2, v16

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v15

    const/16 v16, 0x0

    const-string v17, "EMailAddress"

    invoke-interface/range {v15 .. v17}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 804
    const/4 v15, 0x0

    const-string v16, "AcceptableResponseSchema"

    move-object v0, v13

    move-object v1, v15

    move-object/from16 v2, v16

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 805
    const-string v15, "http://schemas.microsoft.com/exchange/autodiscover/mobilesync/responseschema/2006"

    invoke-interface {v13, v15}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 806
    const/4 v15, 0x0

    const-string v16, "AcceptableResponseSchema"

    move-object v0, v13

    move-object v1, v15

    move-object/from16 v2, v16

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 807
    const/4 v15, 0x0

    const-string v16, "Request"

    move-object v0, v13

    move-object v1, v15

    move-object/from16 v2, v16

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 808
    const/4 v15, 0x0

    const-string v16, "Autodiscover"

    move-object v0, v13

    move-object v1, v15

    move-object/from16 v2, v16

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 809
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 810
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v12

    .line 813
    .local v12, req:Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exchange/EasSyncService;->mUserName:Ljava/lang/String;

    .line 814
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exchange/EasSyncService;->mPassword:Ljava/lang/String;

    .line 816
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exchange/EasSyncService;->mDomain:Ljava/lang/String;

    .line 817
    const/4 v15, 0x1

    move v0, v15

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/exchange/EasSyncService;->mSsl:Z

    .line 818
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/exchange/EasSyncService;->mTrustSsl:Z

    .line 821
    invoke-direct/range {p0 .. p0}, Lcom/android/exchange/EasSyncService;->cacheAuthAndCmdString()V

    .line 824
    const/16 v15, 0x40

    move-object/from16 v0, p1

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 826
    .local v4, amp:I
    if-gez v4, :cond_0

    .line 827
    new-instance v15, Landroid/os/RemoteException;

    invoke-direct {v15}, Landroid/os/RemoteException;-><init>()V

    throw v15
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/android/email/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_4

    .line 864
    .end local v4           #amp:I
    .end local v12           #req:Ljava/lang/String;
    :catch_0
    move-exception v15

    move-object v7, v15

    .line 865
    .local v7, e:Ljava/lang/IllegalArgumentException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mAutoDiscInfo:Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;

    move-object v15, v0

    iget-object v15, v15, Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;->bundle:Landroid/os/Bundle;

    const-string v16, "autodiscover_error_code"

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 878
    .end local v7           #e:Ljava/lang/IllegalArgumentException;
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mAutoDiscInfo:Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;

    move-object v15, v0

    iget-object v15, v15, Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;->bundle:Landroid/os/Bundle;

    return-object v15

    .line 829
    .restart local v4       #amp:I
    .restart local v12       #req:Ljava/lang/String;
    :cond_0
    add-int/lit8 v15, v4, 0x1

    :try_start_1
    move-object/from16 v0, p1

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 840
    .local v6, domain:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/exchange/EasSyncService;->mTrustSsl:Z

    move v15, v0

    if-eqz v15, :cond_1

    const-string v15, "httpts://"

    move-object v14, v15

    .line 841
    .local v14, schema:Ljava/lang/String;
    :goto_1
    new-instance v11, Lorg/apache/http/client/methods/HttpPost;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ":443"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "/autodiscover/autodiscover.xml"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v11, v15}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 844
    .local v11, post:Lorg/apache/http/client/methods/HttpPost;
    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object v1, v11

    move v2, v15

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/EasSyncService;->setHeaders(Lorg/apache/http/client/methods/HttpRequestBase;Z)V

    .line 845
    const-string v15, "Content-Type"

    const-string v16, "text/xml"

    move-object v0, v11

    move-object v1, v15

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 846
    new-instance v15, Lorg/apache/http/entity/StringEntity;

    invoke-direct {v15, v12}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v15}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 847
    const v15, 0xea60

    move-object/from16 v0, p0

    move v1, v15

    invoke-direct {v0, v1}, Lcom/android/exchange/EasSyncService;->getHttpClient(I)Lorg/apache/http/client/HttpClient;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/android/email/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v5

    .line 850
    .local v5, client:Lorg/apache/http/client/HttpClient;
    const/4 v15, 0x1

    :try_start_2
    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v11

    move v3, v15

    invoke-direct {v0, v1, v2, v3}, Lcom/android/exchange/EasSyncService;->postAutodiscover(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpPost;Z)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/android/email/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_0

    .line 851
    :catch_1
    move-exception v8

    .line 852
    .local v8, e1:Ljava/io/IOException;
    const/4 v15, 0x1

    :try_start_3
    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    const-string v17, "IOException in autodiscover; trying alternate address"

    aput-object v17, v15, v16

    move-object/from16 v0, p0

    move-object v1, v15

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 854
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "autodiscover."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ":443"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "/autodiscover/autodiscover.xml"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v15

    invoke-virtual {v11, v15}, Lorg/apache/http/client/methods/HttpPost;->setURI(Ljava/net/URI;)V

    .line 857
    const/4 v15, 0x1

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v11

    move v3, v15

    invoke-direct {v0, v1, v2, v3}, Lcom/android/exchange/EasSyncService;->postAutodiscover(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpPost;Z)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lcom/android/email/mail/MessagingException; {:try_start_3 .. :try_end_3} :catch_4

    goto/16 :goto_0

    .line 867
    .end local v4           #amp:I
    .end local v5           #client:Lorg/apache/http/client/HttpClient;
    .end local v6           #domain:Ljava/lang/String;
    .end local v8           #e1:Ljava/io/IOException;
    .end local v11           #post:Lorg/apache/http/client/methods/HttpPost;
    .end local v12           #req:Ljava/lang/String;
    .end local v14           #schema:Ljava/lang/String;
    :catch_2
    move-exception v15

    move-object v7, v15

    .line 868
    .local v7, e:Ljava/lang/IllegalStateException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mAutoDiscInfo:Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;

    move-object v15, v0

    iget-object v15, v15, Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;->bundle:Landroid/os/Bundle;

    const-string v16, "autodiscover_error_code"

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 840
    .end local v7           #e:Ljava/lang/IllegalStateException;
    .restart local v4       #amp:I
    .restart local v6       #domain:Ljava/lang/String;
    .restart local v12       #req:Ljava/lang/String;
    :cond_1
    :try_start_4
    const-string v15, "https://"
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lcom/android/email/mail/MessagingException; {:try_start_4 .. :try_end_4} :catch_4

    move-object v14, v15

    goto/16 :goto_1

    .line 870
    .end local v4           #amp:I
    .end local v6           #domain:Ljava/lang/String;
    .end local v12           #req:Ljava/lang/String;
    :catch_3
    move-exception v15

    move-object v7, v15

    .line 871
    .local v7, e:Ljava/io/IOException;
    const-string v15, "IOException in Autodiscover"

    move-object/from16 v0, p0

    move-object v1, v15

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/EasSyncService;->userLog(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 872
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mAutoDiscInfo:Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;

    move-object v15, v0

    iget-object v15, v15, Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;->bundle:Landroid/os/Bundle;

    const-string v16, "autodiscover_error_code"

    const/16 v17, 0x1

    invoke-virtual/range {v15 .. v17}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 874
    .end local v7           #e:Ljava/io/IOException;
    :catch_4
    move-exception v15

    move-object v7, v15

    .line 875
    .local v7, e:Lcom/android/email/mail/MessagingException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mAutoDiscInfo:Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;

    move-object v15, v0

    iget-object v15, v15, Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;->bundle:Landroid/os/Bundle;

    const-string v16, "autodiscover_error_code"

    const/16 v17, 0x5

    invoke-virtual/range {v15 .. v17}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0
.end method

.method public validateAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZLandroid/content/Context;)V
    .locals 18
    .parameter "hostAddress"
    .parameter "userName"
    .parameter "password"
    .parameter "port"
    .parameter "ssl"
    .parameter "trustCertificates"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 557
    const/4 v14, 0x6

    :try_start_0
    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "Testing EAS: "

    aput-object v16, v14, v15

    const/4 v15, 0x1

    aput-object p1, v14, v15

    const/4 v15, 0x2

    const-string v16, ", "

    aput-object v16, v14, v15

    const/4 v15, 0x3

    aput-object p2, v14, v15

    const/4 v15, 0x4

    const-string v16, ", ssl = "

    aput-object v16, v14, v15

    const/4 v15, 0x5

    if-eqz p5, :cond_1

    const-string v16, "1"

    :goto_0
    aput-object v16, v14, v15

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 558
    new-instance v12, Lcom/android/exchange/EasSyncService;

    const-string v14, "%TestAccount%"

    invoke-direct {v12, v14}, Lcom/android/exchange/EasSyncService;-><init>(Ljava/lang/String;)V

    .line 559
    .local v12, svc:Lcom/android/exchange/EasSyncService;
    move-object/from16 v0, p7

    move-object v1, v12

    iput-object v0, v1, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    .line 560
    move-object/from16 v0, p1

    move-object v1, v12

    iput-object v0, v1, Lcom/android/exchange/EasSyncService;->mHostAddress:Ljava/lang/String;

    .line 561
    move-object/from16 v0, p2

    move-object v1, v12

    iput-object v0, v1, Lcom/android/exchange/EasSyncService;->mUserName:Ljava/lang/String;

    .line 562
    move-object/from16 v0, p3

    move-object v1, v12

    iput-object v0, v1, Lcom/android/exchange/EasSyncService;->mPassword:Ljava/lang/String;

    .line 563
    move/from16 v0, p5

    move-object v1, v12

    iput-boolean v0, v1, Lcom/android/exchange/EasSyncService;->mSsl:Z

    .line 564
    move/from16 v0, p6

    move-object v1, v12

    iput-boolean v0, v1, Lcom/android/exchange/EasSyncService;->mTrustSsl:Z

    .line 567
    const-string v14, "validate"

    iput-object v14, v12, Lcom/android/exchange/EasSyncService;->mDeviceId:Ljava/lang/String;

    .line 569
    invoke-virtual {v12}, Lcom/android/exchange/EasSyncService;->sendHttpClientOptions()Lorg/apache/http/HttpResponse;

    move-result-object v10

    .line 570
    .local v10, resp:Lorg/apache/http/HttpResponse;
    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v14

    invoke-interface {v14}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    .line 571
    .local v6, code:I
    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Validation (OPTIONS) response: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 572
    const/16 v14, 0xc8

    if-ne v6, v14, :cond_c

    .line 574
    const-string v14, "MS-ASProtocolCommands"

    invoke-interface {v10, v14}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v7

    .line 575
    .local v7, commands:Lorg/apache/http/Header;
    const-string v14, "ms-asprotocolversions"

    invoke-interface {v10, v14}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v13

    .line 576
    .local v13, versions:Lorg/apache/http/Header;
    if-eqz v7, :cond_0

    if-nez v13, :cond_2

    .line 577
    :cond_0
    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "OPTIONS response without commands or versions; reporting I/O error"

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 578
    new-instance v14, Lcom/android/email/mail/MessagingException;

    const/4 v15, 0x1

    invoke-direct {v14, v15}, Lcom/android/email/mail/MessagingException;-><init>(I)V

    throw v14
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 654
    .end local v6           #code:I
    .end local v7           #commands:Lorg/apache/http/Header;
    .end local v10           #resp:Lorg/apache/http/HttpResponse;
    .end local v12           #svc:Lcom/android/exchange/EasSyncService;
    .end local v13           #versions:Lorg/apache/http/Header;
    :catch_0
    move-exception v14

    move-object v8, v14

    .line 655
    .local v8, e:Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    .line 656
    .local v5, cause:Ljava/lang/Throwable;
    if-eqz v5, :cond_e

    instance-of v14, v5, Ljava/security/cert/CertificateException;

    if-eqz v14, :cond_e

    .line 657
    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "CertificateException caught: "

    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 658
    new-instance v14, Lcom/android/email/mail/MessagingException;

    const/4 v15, 0x4

    invoke-direct {v14, v15}, Lcom/android/email/mail/MessagingException;-><init>(I)V

    throw v14

    .line 557
    .end local v5           #cause:Ljava/lang/Throwable;
    .end local v8           #e:Ljava/io/IOException;
    :cond_1
    :try_start_1
    const-string v16, "0"

    goto/16 :goto_0

    .line 582
    .restart local v6       #code:I
    .restart local v7       #commands:Lorg/apache/http/Header;
    .restart local v10       #resp:Lorg/apache/http/HttpResponse;
    .restart local v12       #svc:Lcom/android/exchange/EasSyncService;
    .restart local v13       #versions:Lorg/apache/http/Header;
    :cond_2
    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v13

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/EasSyncService;->setupProtocolVersion(Lcom/android/exchange/EasSyncService;Lorg/apache/http/Header;)V

    .line 585
    new-instance v11, Lcom/android/exchange/adapter/Serializer;

    invoke-direct {v11}, Lcom/android/exchange/adapter/Serializer;-><init>()V

    .line 586
    .local v11, s:Lcom/android/exchange/adapter/Serializer;
    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "Validate: try folder sync"

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 587
    const/16 v14, 0x1d6

    invoke-virtual {v11, v14}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v14

    const/16 v15, 0x1d2

    invoke-virtual {v14, v15}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v14

    const-string v15, "0"

    invoke-virtual {v14, v15}, Lcom/android/exchange/adapter/Serializer;->text(Ljava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/exchange/adapter/Serializer;->done()V

    .line 590
    sget-boolean v14, Lcom/android/exchange/Eas;->PARSER_LOG:Z

    if-eqz v14, :cond_3

    .line 591
    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "validateAccount(): Wbxml:"

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 592
    invoke-virtual {v11}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v3

    .line 593
    .local v3, b:[B
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 594
    .local v4, byTe:Ljava/io/ByteArrayInputStream;
    new-instance v9, Lcom/android/exchange/adapter/LogAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    move-object v14, v0

    move-object v0, v9

    move-object v1, v14

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/adapter/LogAdapter;-><init>(Lcom/android/email/provider/EmailContent$Mailbox;Lcom/android/exchange/EasSyncService;)V

    .line 595
    .local v9, logA:Lcom/android/exchange/adapter/LogAdapter;
    invoke-virtual {v9, v4}, Lcom/android/exchange/adapter/LogAdapter;->parse(Ljava/io/InputStream;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 600
    .end local v3           #b:[B
    .end local v4           #byTe:Ljava/io/ByteArrayInputStream;
    .end local v9           #logA:Lcom/android/exchange/adapter/LogAdapter;
    :cond_3
    :try_start_2
    const-string v14, "FolderSync"

    invoke-virtual {v11}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Lcom/android/exchange/EasSyncService;->sendHttpClientPost(Ljava/lang/String;[B)Lorg/apache/http/HttpResponse;

    move-result-object v10

    .line 601
    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v14

    invoke-interface {v14}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    .line 604
    sget-boolean v14, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v14, :cond_4

    .line 605
    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "validateAccount(): FolderSync response code:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 612
    :cond_4
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v14

    monitor-enter v14
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 613
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    move-object v15, v0

    if-eqz v15, :cond_5

    .line 614
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    move-object v15, v0

    invoke-virtual {v15}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 615
    const/4 v15, 0x0

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    .line 617
    :cond_5
    monitor-exit v14
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 622
    const/16 v14, 0x193

    if-eq v6, v14, :cond_6

    const/16 v14, 0x1c1

    if-ne v6, v14, :cond_9

    .line 624
    :cond_6
    const/4 v14, 0x1

    :try_start_5
    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "Validate: provisioning required"

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 625
    invoke-direct {v12}, Lcom/android/exchange/EasSyncService;->canProvision()Lcom/android/exchange/adapter/ProvisionParser;

    move-result-object v14

    if-eqz v14, :cond_8

    .line 627
    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "Validate: provisioning is possible"

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 628
    new-instance v14, Lcom/android/email/mail/MessagingException;

    const/4 v15, 0x7

    invoke-direct {v14, v15}, Lcom/android/email/mail/MessagingException;-><init>(I)V

    throw v14

    .line 612
    :catchall_0
    move-exception v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v15

    monitor-enter v15
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 613
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v16, v0

    if-eqz v16, :cond_7

    .line 614
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 615
    const/16 v16, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    .line 617
    :cond_7
    monitor-exit v15
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 612
    :try_start_7
    throw v14

    .line 630
    :cond_8
    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "Validate: provisioning not possible"

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 632
    new-instance v14, Lcom/android/email/mail/MessagingException;

    const/16 v15, 0x8

    invoke-direct {v14, v15}, Lcom/android/email/mail/MessagingException;-><init>(I)V

    throw v14

    .line 634
    :cond_9
    const/16 v14, 0x194

    if-ne v6, v14, :cond_a

    .line 635
    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "Wrong address or bad protocol version"

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 637
    new-instance v14, Lcom/android/email/mail/MessagingException;

    const/16 v15, 0x9

    invoke-direct {v14, v15}, Lcom/android/email/mail/MessagingException;-><init>(I)V

    throw v14

    .line 638
    :cond_a
    const/16 v14, 0xc8

    if-eq v6, v14, :cond_b

    .line 640
    const-string v14, "Unexpected response for FolderSync: "

    move-object/from16 v0, p0

    move-object v1, v14

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/EasSyncService;->userLog(Ljava/lang/String;I)V

    .line 641
    new-instance v14, Lcom/android/email/mail/MessagingException;

    const/4 v15, 0x0

    invoke-direct {v14, v15}, Lcom/android/email/mail/MessagingException;-><init>(I)V

    throw v14

    .line 643
    :cond_b
    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "Validation successful"

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 644
    return-void

    .line 646
    .end local v7           #commands:Lorg/apache/http/Header;
    .end local v11           #s:Lcom/android/exchange/adapter/Serializer;
    .end local v13           #versions:Lorg/apache/http/Header;
    :cond_c
    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->isAuthError(I)Z

    move-result v14

    if-eqz v14, :cond_d

    .line 647
    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "Authentication failed"

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 648
    new-instance v14, Lcom/android/email/mail/AuthenticationFailedException;

    const-string v15, "Validation failed"

    invoke-direct {v14, v15}, Lcom/android/email/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 651
    :cond_d
    const-string v14, "Validation failed, reporting I/O error: "

    move-object/from16 v0, p0

    move-object v1, v14

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/EasSyncService;->userLog(Ljava/lang/String;I)V

    .line 652
    new-instance v14, Lcom/android/email/mail/MessagingException;

    const/4 v15, 0x1

    invoke-direct {v14, v15}, Lcom/android/email/mail/MessagingException;-><init>(I)V

    throw v14
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    .line 660
    .end local v6           #code:I
    .end local v10           #resp:Lorg/apache/http/HttpResponse;
    .end local v12           #svc:Lcom/android/exchange/EasSyncService;
    .restart local v5       #cause:Ljava/lang/Throwable;
    .restart local v8       #e:Ljava/io/IOException;
    :cond_e
    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "IOException caught: "

    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 661
    new-instance v14, Lcom/android/email/mail/MessagingException;

    const/4 v15, 0x1

    invoke-direct {v14, v15}, Lcom/android/email/mail/MessagingException;-><init>(I)V

    throw v14

    .line 617
    .end local v5           #cause:Ljava/lang/Throwable;
    .end local v8           #e:Ljava/io/IOException;
    .restart local v6       #code:I
    .restart local v7       #commands:Lorg/apache/http/Header;
    .restart local v10       #resp:Lorg/apache/http/HttpResponse;
    .restart local v11       #s:Lcom/android/exchange/adapter/Serializer;
    .restart local v12       #svc:Lcom/android/exchange/EasSyncService;
    .restart local v13       #versions:Lorg/apache/http/Header;
    :catchall_1
    move-exception v14

    :try_start_8
    monitor-exit v15
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v14
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0

    :catchall_2
    move-exception v15

    :try_start_a
    monitor-exit v14
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    throw v15
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0
.end method
