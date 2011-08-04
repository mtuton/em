.class public Lcom/android/exchange/EasSyncService;
.super Lcom/android/exchange/AbstractSyncService;
.source "EasSyncService.java"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exchange/EasSyncService$1;,
        Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;
    }
.end annotation


# static fields
.field protected static CHECK_PROVISIONING_IN_PROGRESS:Z

.field public static protocolVersion:D


# instance fields
.field public CollectionId:Ljava/lang/String;

.field public SyncKey:Ljava/lang/String;

.field UserAgentSplited:[Ljava/lang/String;

.field public commandFinished:Z

.field private mAttIdToFetchAttachment:J

.field private mAttSize:J

.field mAuthString:Ljava/lang/String;

.field mAutoDiscInfo:Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;

.field private mBindArguments:[Ljava/lang/String;

.field private mCmdString:Ljava/lang/String;

.field public mContentResolver:Landroid/content/ContentResolver;

.field protected mDeviceId:Ljava/lang/String;

.field mDeviceType:Ljava/lang/String;

.field mDeviceTypeForUserAgent:Ljava/lang/String;

.field public mDomain:Ljava/lang/String;

.field public mEasNeedsProvisioning:Z

.field public mHostAddress:Ljava/lang/String;

.field public mIsHTMLDisabled:Z

.field public mIsValid:Z

.field mModelName_DeviceType:Ljava/lang/String;

.field mModelName_UserAgent:Ljava/lang/String;

.field private mMsgIdToFetchAttachment:J

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

.field protected mProtocolVersion:Ljava/lang/String;

.field public mProtocolVersionDouble:Ljava/lang/Double;

.field private mSsl:Z

.field public mThreadId:J

.field private mTrustSsl:Z

.field public mUserName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 316
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/exchange/EasSyncService;->CHECK_PROVISIONING_IN_PROGRESS:Z

    .line 401
    const-wide/high16 v0, 0x4004

    sput-wide v0, Lcom/android/exchange/EasSyncService;->protocolVersion:D

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 447
    const-string v0, "EAS Validation"

    invoke-direct {p0, v0}, Lcom/android/exchange/EasSyncService;-><init>(Ljava/lang/String;)V

    .line 448
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .parameter

    .prologue
    const/16 v7, 0x1d6

    const/4 v6, 0x1

    const-wide/16 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 452
    invoke-direct {p0, p1}, Lcom/android/exchange/AbstractSyncService;-><init>(Landroid/content/Context;)V

    .line 315
    iput-boolean v2, p0, Lcom/android/exchange/EasSyncService;->mEasNeedsProvisioning:Z

    .line 328
    const-string v0, "2.5"

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersion:Ljava/lang/String;

    .line 331
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersion:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    .line 336
    iput-object v3, p0, Lcom/android/exchange/EasSyncService;->mDeviceId:Ljava/lang/String;

    .line 341
    const-string v0, "Apple-iPhone3C1"

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mModelName_UserAgent:Ljava/lang/String;

    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "iPhone"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mDeviceType:Ljava/lang/String;

    .line 345
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Apple-iPhone3C1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mDeviceTypeForUserAgent:Ljava/lang/String;

    .line 349
    iput-object v3, p0, Lcom/android/exchange/EasSyncService;->mAuthString:Ljava/lang/String;

    .line 350
    iput-object v3, p0, Lcom/android/exchange/EasSyncService;->mCmdString:Ljava/lang/String;

    .line 358
    iput-boolean v6, p0, Lcom/android/exchange/EasSyncService;->mSsl:Z

    .line 359
    iput-boolean v2, p0, Lcom/android/exchange/EasSyncService;->mTrustSsl:Z

    .line 361
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mBindArguments:[Ljava/lang/String;

    .line 364
    iput-object v3, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    .line 365
    iput-boolean v2, p0, Lcom/android/exchange/EasSyncService;->commandFinished:Z

    .line 367
    const/16 v0, 0x78

    iput v0, p0, Lcom/android/exchange/EasSyncService;->mPingForceHeartbeat:I

    .line 370
    iput v7, p0, Lcom/android/exchange/EasSyncService;->mPingMinHeartbeat:I

    .line 372
    const/16 v0, 0xdca

    iput v0, p0, Lcom/android/exchange/EasSyncService;->mPingMaxHeartbeat:I

    .line 374
    iput v7, p0, Lcom/android/exchange/EasSyncService;->mPingHeartbeat:I

    .line 376
    iput v2, p0, Lcom/android/exchange/EasSyncService;->mPingHighWaterMark:I

    .line 378
    iput-boolean v2, p0, Lcom/android/exchange/EasSyncService;->mPingHeartbeatDropped:Z

    .line 380
    iput-boolean v2, p0, Lcom/android/exchange/EasSyncService;->mPostAborted:Z

    .line 382
    iput-boolean v2, p0, Lcom/android/exchange/EasSyncService;->mPostReset:Z

    .line 384
    iput-boolean v6, p0, Lcom/android/exchange/EasSyncService;->mIsValid:Z

    .line 386
    iput-boolean v2, p0, Lcom/android/exchange/EasSyncService;->mIsHTMLDisabled:Z

    .line 390
    iput-wide v4, p0, Lcom/android/exchange/EasSyncService;->mMsgIdToFetchAttachment:J

    .line 391
    iput-wide v4, p0, Lcom/android/exchange/EasSyncService;->mAttIdToFetchAttachment:J

    .line 392
    iput-wide v4, p0, Lcom/android/exchange/EasSyncService;->mAttSize:J

    .line 396
    iput-wide v4, p0, Lcom/android/exchange/EasSyncService;->mThreadId:J

    .line 453
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/email/provider/EmailContent$Account;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/16 v7, 0x1d6

    const-wide/16 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 424
    invoke-direct {p0, p1, p2}, Lcom/android/exchange/AbstractSyncService;-><init>(Landroid/content/Context;Lcom/android/email/provider/EmailContent$Account;)V

    .line 315
    iput-boolean v2, p0, Lcom/android/exchange/EasSyncService;->mEasNeedsProvisioning:Z

    .line 328
    const-string v0, "2.5"

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersion:Ljava/lang/String;

    .line 331
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersion:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    .line 336
    iput-object v4, p0, Lcom/android/exchange/EasSyncService;->mDeviceId:Ljava/lang/String;

    .line 341
    const-string v0, "Apple-iPhone3C1";

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mModelName_UserAgent:Ljava/lang/String;

    .line 343
    const-string v0, "iPhone";

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mModelName_DeviceType:Ljava/lang/String;

    .line 344
    const-string v0, "iPhone"

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mDeviceType:Ljava/lang/String;

    .line 345
    const-string v0, "Apple-iPhone3C1"

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mDeviceTypeForUserAgent:Ljava/lang/String;

    .line 349
    iput-object v4, p0, Lcom/android/exchange/EasSyncService;->mAuthString:Ljava/lang/String;

    .line 350
    iput-object v4, p0, Lcom/android/exchange/EasSyncService;->mCmdString:Ljava/lang/String;

    .line 358
    iput-boolean v3, p0, Lcom/android/exchange/EasSyncService;->mSsl:Z

    .line 359
    iput-boolean v2, p0, Lcom/android/exchange/EasSyncService;->mTrustSsl:Z

    .line 361
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mBindArguments:[Ljava/lang/String;

    .line 364
    iput-object v4, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    .line 365
    iput-boolean v2, p0, Lcom/android/exchange/EasSyncService;->commandFinished:Z

    .line 367
    const/16 v0, 0x78

    iput v0, p0, Lcom/android/exchange/EasSyncService;->mPingForceHeartbeat:I

    .line 370
    iput v7, p0, Lcom/android/exchange/EasSyncService;->mPingMinHeartbeat:I

    .line 372
    const/16 v0, 0xdca

    iput v0, p0, Lcom/android/exchange/EasSyncService;->mPingMaxHeartbeat:I

    .line 374
    iput v7, p0, Lcom/android/exchange/EasSyncService;->mPingHeartbeat:I

    .line 376
    iput v2, p0, Lcom/android/exchange/EasSyncService;->mPingHighWaterMark:I

    .line 378
    iput-boolean v2, p0, Lcom/android/exchange/EasSyncService;->mPingHeartbeatDropped:Z

    .line 380
    iput-boolean v2, p0, Lcom/android/exchange/EasSyncService;->mPostAborted:Z

    .line 382
    iput-boolean v2, p0, Lcom/android/exchange/EasSyncService;->mPostReset:Z

    .line 384
    iput-boolean v3, p0, Lcom/android/exchange/EasSyncService;->mIsValid:Z

    .line 386
    iput-boolean v2, p0, Lcom/android/exchange/EasSyncService;->mIsHTMLDisabled:Z

    .line 390
    iput-wide v5, p0, Lcom/android/exchange/EasSyncService;->mMsgIdToFetchAttachment:J

    .line 391
    iput-wide v5, p0, Lcom/android/exchange/EasSyncService;->mAttIdToFetchAttachment:J

    .line 392
    iput-wide v5, p0, Lcom/android/exchange/EasSyncService;->mAttSize:J

    .line 396
    iput-wide v5, p0, Lcom/android/exchange/EasSyncService;->mThreadId:J

    .line 425
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    .line 426
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    invoke-static {p1, v0, v1}, Lcom/android/email/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$HostAuth;

    move-result-object v0

    .line 427
    iget v1, v0, Lcom/android/email/provider/EmailContent$HostAuth;->mFlags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    :goto_0
    iput-boolean v1, p0, Lcom/android/exchange/EasSyncService;->mSsl:Z

    .line 428
    iget v0, v0, Lcom/android/email/provider/EmailContent$HostAuth;->mFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_1

    move v0, v3

    :goto_1
    iput-boolean v0, p0, Lcom/android/exchange/EasSyncService;->mTrustSsl:Z

    .line 429
    return-void

    :cond_0
    move v1, v2

    .line 427
    goto :goto_0

    :cond_1
    move v0, v2

    .line 428
    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/email/provider/EmailContent$Mailbox;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/16 v7, 0x1d6

    const-wide/16 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 405
    invoke-direct {p0, p1, p2}, Lcom/android/exchange/AbstractSyncService;-><init>(Landroid/content/Context;Lcom/android/email/provider/EmailContent$Mailbox;)V

    .line 315
    iput-boolean v2, p0, Lcom/android/exchange/EasSyncService;->mEasNeedsProvisioning:Z

    .line 328
    const-string v0, "2.5"

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersion:Ljava/lang/String;

    .line 331
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersion:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    .line 336
    iput-object v4, p0, Lcom/android/exchange/EasSyncService;->mDeviceId:Ljava/lang/String;

    .line 341
    const-string v0, "Apple-iPhone3C1"

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mModelName_UserAgent:Ljava/lang/String;

    .line 343
    const-string v0, "iPhone"

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mModelName_DeviceType:Ljava/lang/String;

    .line 344
    const-string v0, "iPhone"

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mDeviceType:Ljava/lang/String;

    .line 345
    const-string v0, "Apple-iPhone3C1"

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mDeviceTypeForUserAgent:Ljava/lang/String;

    .line 349
    iput-object v4, p0, Lcom/android/exchange/EasSyncService;->mAuthString:Ljava/lang/String;

    .line 350
    iput-object v4, p0, Lcom/android/exchange/EasSyncService;->mCmdString:Ljava/lang/String;

    .line 358
    iput-boolean v3, p0, Lcom/android/exchange/EasSyncService;->mSsl:Z

    .line 359
    iput-boolean v2, p0, Lcom/android/exchange/EasSyncService;->mTrustSsl:Z

    .line 361
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mBindArguments:[Ljava/lang/String;

    .line 364
    iput-object v4, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    .line 365
    iput-boolean v2, p0, Lcom/android/exchange/EasSyncService;->commandFinished:Z

    .line 367
    const/16 v0, 0x78

    iput v0, p0, Lcom/android/exchange/EasSyncService;->mPingForceHeartbeat:I

    .line 370
    iput v7, p0, Lcom/android/exchange/EasSyncService;->mPingMinHeartbeat:I

    .line 372
    const/16 v0, 0xdca

    iput v0, p0, Lcom/android/exchange/EasSyncService;->mPingMaxHeartbeat:I

    .line 374
    iput v7, p0, Lcom/android/exchange/EasSyncService;->mPingHeartbeat:I

    .line 376
    iput v2, p0, Lcom/android/exchange/EasSyncService;->mPingHighWaterMark:I

    .line 378
    iput-boolean v2, p0, Lcom/android/exchange/EasSyncService;->mPingHeartbeatDropped:Z

    .line 380
    iput-boolean v2, p0, Lcom/android/exchange/EasSyncService;->mPostAborted:Z

    .line 382
    iput-boolean v2, p0, Lcom/android/exchange/EasSyncService;->mPostReset:Z

    .line 384
    iput-boolean v3, p0, Lcom/android/exchange/EasSyncService;->mIsValid:Z

    .line 386
    iput-boolean v2, p0, Lcom/android/exchange/EasSyncService;->mIsHTMLDisabled:Z

    .line 390
    iput-wide v5, p0, Lcom/android/exchange/EasSyncService;->mMsgIdToFetchAttachment:J

    .line 391
    iput-wide v5, p0, Lcom/android/exchange/EasSyncService;->mAttIdToFetchAttachment:J

    .line 392
    iput-wide v5, p0, Lcom/android/exchange/EasSyncService;->mAttSize:J

    .line 396
    iput-wide v5, p0, Lcom/android/exchange/EasSyncService;->mThreadId:J

    .line 406
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    .line 407
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    if-nez v0, :cond_0

    .line 408
    iput-boolean v2, p0, Lcom/android/exchange/EasSyncService;->mIsValid:Z

    .line 418
    :goto_0
    return-void

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    invoke-static {p1, v0, v1}, Lcom/android/email/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$HostAuth;

    move-result-object v0

    .line 412
    if-nez v0, :cond_1

    .line 413
    iput-boolean v2, p0, Lcom/android/exchange/EasSyncService;->mIsValid:Z

    goto :goto_0

    .line 416
    :cond_1
    iget v1, v0, Lcom/android/email/provider/EmailContent$HostAuth;->mFlags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    move v1, v3

    :goto_1
    iput-boolean v1, p0, Lcom/android/exchange/EasSyncService;->mSsl:Z

    .line 417
    iget v0, v0, Lcom/android/email/provider/EmailContent$HostAuth;->mFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    move v0, v3

    :goto_2
    iput-boolean v0, p0, Lcom/android/exchange/EasSyncService;->mTrustSsl:Z

    goto :goto_0

    :cond_2
    move v1, v2

    .line 416
    goto :goto_1

    :cond_3
    move v0, v2

    .line 417
    goto :goto_2
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/email/provider/EmailContent$Message;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/16 v7, 0x1d6

    const-wide/16 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 434
    invoke-direct {p0, p1, p2}, Lcom/android/exchange/AbstractSyncService;-><init>(Landroid/content/Context;Lcom/android/email/provider/EmailContent$Message;)V

    .line 315
    iput-boolean v2, p0, Lcom/android/exchange/EasSyncService;->mEasNeedsProvisioning:Z

    .line 328
    const-string v0, "2.5"

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersion:Ljava/lang/String;

    .line 331
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersion:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    .line 336
    iput-object v4, p0, Lcom/android/exchange/EasSyncService;->mDeviceId:Ljava/lang/String;

    .line 341
    const-string v0, "Apple-iPhone3C1"

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mModelName_UserAgent:Ljava/lang/String;

    .line 343
    const-string v0, "iPhone"

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mModelName_DeviceType:Ljava/lang/String;

    .line 344
    const-string v0, "iPhone"

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mDeviceType:Ljava/lang/String;

    .line 345
    const-string v0, "Apple-iPhone3C1"

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mDeviceTypeForUserAgent:Ljava/lang/String;

    .line 349
    iput-object v4, p0, Lcom/android/exchange/EasSyncService;->mAuthString:Ljava/lang/String;

    .line 350
    iput-object v4, p0, Lcom/android/exchange/EasSyncService;->mCmdString:Ljava/lang/String;

    .line 358
    iput-boolean v3, p0, Lcom/android/exchange/EasSyncService;->mSsl:Z

    .line 359
    iput-boolean v2, p0, Lcom/android/exchange/EasSyncService;->mTrustSsl:Z

    .line 361
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mBindArguments:[Ljava/lang/String;

    .line 364
    iput-object v4, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    .line 365
    iput-boolean v2, p0, Lcom/android/exchange/EasSyncService;->commandFinished:Z

    .line 367
    const/16 v0, 0x78

    iput v0, p0, Lcom/android/exchange/EasSyncService;->mPingForceHeartbeat:I

    .line 370
    iput v7, p0, Lcom/android/exchange/EasSyncService;->mPingMinHeartbeat:I

    .line 372
    const/16 v0, 0xdca

    iput v0, p0, Lcom/android/exchange/EasSyncService;->mPingMaxHeartbeat:I

    .line 374
    iput v7, p0, Lcom/android/exchange/EasSyncService;->mPingHeartbeat:I

    .line 376
    iput v2, p0, Lcom/android/exchange/EasSyncService;->mPingHighWaterMark:I

    .line 378
    iput-boolean v2, p0, Lcom/android/exchange/EasSyncService;->mPingHeartbeatDropped:Z

    .line 380
    iput-boolean v2, p0, Lcom/android/exchange/EasSyncService;->mPostAborted:Z

    .line 382
    iput-boolean v2, p0, Lcom/android/exchange/EasSyncService;->mPostReset:Z

    .line 384
    iput-boolean v3, p0, Lcom/android/exchange/EasSyncService;->mIsValid:Z

    .line 386
    iput-boolean v2, p0, Lcom/android/exchange/EasSyncService;->mIsHTMLDisabled:Z

    .line 390
    iput-wide v5, p0, Lcom/android/exchange/EasSyncService;->mMsgIdToFetchAttachment:J

    .line 391
    iput-wide v5, p0, Lcom/android/exchange/EasSyncService;->mAttIdToFetchAttachment:J

    .line 392
    iput-wide v5, p0, Lcom/android/exchange/EasSyncService;->mAttSize:J

    .line 396
    iput-wide v5, p0, Lcom/android/exchange/EasSyncService;->mThreadId:J

    .line 435
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    .line 436
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    invoke-static {p1, v0, v1}, Lcom/android/email/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$HostAuth;

    move-result-object v0

    .line 437
    iget v1, v0, Lcom/android/email/provider/EmailContent$HostAuth;->mFlags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    :goto_0
    iput-boolean v1, p0, Lcom/android/exchange/EasSyncService;->mSsl:Z

    .line 438
    iget v0, v0, Lcom/android/email/provider/EmailContent$HostAuth;->mFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_1

    move v0, v3

    :goto_1
    iput-boolean v0, p0, Lcom/android/exchange/EasSyncService;->mTrustSsl:Z

    .line 439
    return-void

    :cond_0
    move v1, v2

    .line 437
    goto :goto_0

    :cond_1
    move v0, v2

    .line 438
    goto :goto_1
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 8
    .parameter

    .prologue
    const/16 v7, 0x1d6

    const/4 v6, 0x1

    const-wide/16 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 443
    invoke-direct {p0, p1}, Lcom/android/exchange/AbstractSyncService;-><init>(Ljava/lang/String;)V

    .line 315
    iput-boolean v2, p0, Lcom/android/exchange/EasSyncService;->mEasNeedsProvisioning:Z

    .line 328
    const-string v0, "2.5"

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersion:Ljava/lang/String;

    .line 331
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersion:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    .line 336
    iput-object v3, p0, Lcom/android/exchange/EasSyncService;->mDeviceId:Ljava/lang/String;

    .line 341
    const-string v0, "Apple-iPhone3C1"

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mModelName_UserAgent:Ljava/lang/String;

    .line 343
    const-string v0, "iPhone"

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mModelName_DeviceType:Ljava/lang/String;

    .line 344
    const-string v0, "iPhone"

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mDeviceType:Ljava/lang/String;

    .line 345
    const-string v0, "Apple-iPhone3C1"

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mDeviceTypeForUserAgent:Ljava/lang/String;

    .line 349
    iput-object v3, p0, Lcom/android/exchange/EasSyncService;->mAuthString:Ljava/lang/String;

    .line 350
    iput-object v3, p0, Lcom/android/exchange/EasSyncService;->mCmdString:Ljava/lang/String;

    .line 358
    iput-boolean v6, p0, Lcom/android/exchange/EasSyncService;->mSsl:Z

    .line 359
    iput-boolean v2, p0, Lcom/android/exchange/EasSyncService;->mTrustSsl:Z

    .line 361
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mBindArguments:[Ljava/lang/String;

    .line 364
    iput-object v3, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    .line 365
    iput-boolean v2, p0, Lcom/android/exchange/EasSyncService;->commandFinished:Z

    .line 367
    const/16 v0, 0x78

    iput v0, p0, Lcom/android/exchange/EasSyncService;->mPingForceHeartbeat:I

    .line 370
    iput v7, p0, Lcom/android/exchange/EasSyncService;->mPingMinHeartbeat:I

    .line 372
    const/16 v0, 0xdca

    iput v0, p0, Lcom/android/exchange/EasSyncService;->mPingMaxHeartbeat:I

    .line 374
    iput v7, p0, Lcom/android/exchange/EasSyncService;->mPingHeartbeat:I

    .line 376
    iput v2, p0, Lcom/android/exchange/EasSyncService;->mPingHighWaterMark:I

    .line 378
    iput-boolean v2, p0, Lcom/android/exchange/EasSyncService;->mPingHeartbeatDropped:Z

    .line 380
    iput-boolean v2, p0, Lcom/android/exchange/EasSyncService;->mPostAborted:Z

    .line 382
    iput-boolean v2, p0, Lcom/android/exchange/EasSyncService;->mPostReset:Z

    .line 384
    iput-boolean v6, p0, Lcom/android/exchange/EasSyncService;->mIsValid:Z

    .line 386
    iput-boolean v2, p0, Lcom/android/exchange/EasSyncService;->mIsHTMLDisabled:Z

    .line 390
    iput-wide v4, p0, Lcom/android/exchange/EasSyncService;->mMsgIdToFetchAttachment:J

    .line 391
    iput-wide v4, p0, Lcom/android/exchange/EasSyncService;->mAttIdToFetchAttachment:J

    .line 392
    iput-wide v4, p0, Lcom/android/exchange/EasSyncService;->mAttSize:J

    .line 396
    iput-wide v4, p0, Lcom/android/exchange/EasSyncService;->mThreadId:J

    .line 444
    return-void
.end method

.method private acknowledgeProvisionImpl(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 7
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x38b

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 3117
    new-instance v0, Lcom/android/exchange/adapter/Serializer;

    invoke-direct {v0}, Lcom/android/exchange/adapter/Serializer;-><init>()V

    .line 3118
    const/16 v1, 0x385

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    const/16 v2, 0x386

    invoke-virtual {v1, v2}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 3119
    const/16 v1, 0x387

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 3122
    const/16 v1, 0x388

    invoke-direct {p0}, Lcom/android/exchange/EasSyncService;->getPolicyType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 3124
    const/16 v1, 0x389

    invoke-virtual {v0, v1, p1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 3125
    invoke-virtual {v0, v5, p2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 3126
    invoke-virtual {v0}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 3127
    if-eqz p3, :cond_0

    .line 3128
    const/16 v1, 0x38c

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 3129
    const-string v1, "1"

    invoke-virtual {v0, v5, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 3130
    invoke-virtual {v0}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 3132
    :cond_0
    invoke-virtual {v0}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->done()V

    .line 3134
    sget-boolean v1, Lcom/android/exchange/Eas;->PARSER_LOG:Z

    if-eqz v1, :cond_1

    .line 3135
    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "acknowledgeProvisionImpl(): Wbxml:"

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 3136
    invoke-virtual {v0}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v1

    .line 3137
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 3138
    new-instance v1, Lcom/android/exchange/adapter/LogAdapter;

    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    invoke-direct {v1, v3, p0}, Lcom/android/exchange/adapter/LogAdapter;-><init>(Lcom/android/email/provider/EmailContent$Mailbox;Lcom/android/exchange/EasSyncService;)V

    .line 3139
    invoke-virtual {v1, v2}, Lcom/android/exchange/adapter/LogAdapter;->parse(Ljava/io/InputStream;)Z

    .line 3143
    :cond_1
    :try_start_0
    const-string v1, "Provision"

    invoke-virtual {v0}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/android/exchange/EasSyncService;->sendHttpClientPost(Ljava/lang/String;[B)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 3144
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    .line 3147
    sget-boolean v2, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v2, :cond_2

    .line 3148
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "acknowledgeProvisionImpl():Provision command response code:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v2}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 3152
    :cond_2
    const/16 v2, 0xc8

    if-ne v1, v2, :cond_5

    .line 3153
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 3154
    new-instance v1, Lcom/android/exchange/adapter/ProvisionParser;

    invoke-direct {v1, v0, p0}, Lcom/android/exchange/adapter/ProvisionParser;-><init>(Ljava/io/InputStream;Lcom/android/exchange/EasSyncService;)V

    .line 3155
    invoke-virtual {v1}, Lcom/android/exchange/adapter/ProvisionParser;->parse()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3157
    invoke-virtual {v1}, Lcom/android/exchange/adapter/ProvisionParser;->getPolicyKey()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 3163
    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 3164
    :try_start_1
    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    if-eqz v2, :cond_3

    .line 3165
    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 3166
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    .line 3168
    :cond_3
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 3172
    :goto_0
    return-object v0

    .line 3163
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 3164
    :try_start_2
    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    if-eqz v2, :cond_4

    .line 3165
    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 3166
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    .line 3168
    :cond_4
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3163
    throw v0

    :cond_5
    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3164
    :try_start_3
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    if-eqz v1, :cond_6

    .line 3165
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 3166
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    .line 3168
    :cond_6
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-object v0, v6

    .line 3172
    goto :goto_0

    .line 3168
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    :catchall_3
    move-exception v1

    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v1
.end method

.method public static addProxyParamsIfProxySet(Landroid/content/Context;Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpRequestBase;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const-string v4, "PROXY"

    .line 4782
    invoke-static {p0}, Landroid/net/Proxy;->getHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 4783
    invoke-static {p0}, Landroid/net/Proxy;->getPort(Landroid/content/Context;)I

    move-result v1

    .line 4784
    const-string v2, "PROXY"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Proxy Host: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 4785
    const-string v2, "PROXY"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Proxy port: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 4786
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    if-ltz v1, :cond_0

    .line 4787
    invoke-interface {p1}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    .line 4788
    new-instance v3, Lorg/apache/http/HttpHost;

    invoke-direct {v3, v0, v1}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    invoke-static {v2, v3}, Lorg/apache/http/conn/params/ConnRouteParams;->setDefaultProxy(Lorg/apache/http/params/HttpParams;Lorg/apache/http/HttpHost;)V

    .line 4790
    invoke-virtual {p2, v2}, Lorg/apache/http/client/methods/HttpRequestBase;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 4791
    const-string v0, "PROXY"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Added param: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 4793
    :cond_0
    return-void
.end method

.method private cacheAuthAndCmdString()V
    .locals 4

    .prologue
    const/16 v3, 0x3a

    .line 2369
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mUserName:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2373
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mDomain:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2374
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mDomain:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\\"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mUserName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mPassword:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2381
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Basic "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v3, 0x2

    invoke-static {v1, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exchange/EasSyncService;->mAuthString:Ljava/lang/String;

    .line 2382
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&User="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&DeviceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&DeviceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mDeviceType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mCmdString:Ljava/lang/String;

    .line 2384
    return-void

    .line 2377
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mUserName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mPassword:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private doProgressCallback(JJI)V
    .locals 7
    .parameter "messageId"
    .parameter "attachmentId"
    .parameter "progress"

    .prologue
    .line 1693
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

    .line 1698
    :goto_0
    return-void

    .line 1695
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static doResolveRecipients(Landroid/content/Context;J[Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J[",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/exchange/provider/RRResponse;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v5, 0xc8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v0, "Resolve Recipients returned "

    const-string v0, "19"

    .line 1501
    invoke-static {p1, p2}, Lcom/android/exchange/SyncManager;->getAccountById(J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v0

    .line 1502
    if-eqz v0, :cond_9

    if-eqz p3, :cond_9

    array-length v1, p3

    if-lez v1, :cond_9

    .line 1503
    iget-wide v1, v0, Lcom/android/email/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    invoke-static {p0, v1, v2}, Lcom/android/email/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$HostAuth;

    move-result-object v1

    .line 1504
    new-instance v2, Lcom/android/exchange/EasSyncService;

    const-string v3, "%ResolveRecipients%"

    invoke-direct {v2, v3}, Lcom/android/exchange/EasSyncService;-><init>(Ljava/lang/String;)V

    .line 1506
    :try_start_0
    iput-object p0, v2, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    .line 1507
    iget-object v3, v1, Lcom/android/email/provider/EmailContent$HostAuth;->mAddress:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/exchange/EasSyncService;->mHostAddress:Ljava/lang/String;

    .line 1508
    iget-object v3, v1, Lcom/android/email/provider/EmailContent$HostAuth;->mLogin:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/exchange/EasSyncService;->mUserName:Ljava/lang/String;

    .line 1509
    iget-object v3, v1, Lcom/android/email/provider/EmailContent$HostAuth;->mPassword:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/exchange/EasSyncService;->mPassword:Ljava/lang/String;

    .line 1510
    iget v3, v1, Lcom/android/email/provider/EmailContent$HostAuth;->mFlags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    move v3, v7

    :goto_0
    iput-boolean v3, v2, Lcom/android/exchange/EasSyncService;->mSsl:Z

    .line 1511
    iget v1, v1, Lcom/android/email/provider/EmailContent$HostAuth;->mFlags:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_2

    move v1, v7

    :goto_1
    iput-boolean v1, v2, Lcom/android/exchange/EasSyncService;->mTrustSsl:Z

    .line 1512
    invoke-static {}, Lcom/android/exchange/SyncManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/android/exchange/EasSyncService;->mDeviceId:Ljava/lang/String;

    .line 1513
    iput-object v0, v2, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    .line 1514
    new-instance v0, Lcom/android/exchange/adapter/Serializer;

    invoke-direct {v0}, Lcom/android/exchange/adapter/Serializer;-><init>()V

    .line 1515
    const/16 v1, 0x285

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move v1, v6

    .line 1516
    :goto_2
    array-length v3, p3

    if-ge v1, v3, :cond_3

    .line 1518
    aget-object v3, p3, v1

    if-eqz v3, :cond_0

    .line 1519
    const/16 v3, 0x290

    aget-object v4, p3, v1

    invoke-virtual {v0, v3, v4}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1516
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1
    move v3, v6

    .line 1510
    goto :goto_0

    :cond_2
    move v1, v6

    .line 1511
    goto :goto_1

    .line 1525
    :cond_3
    const/16 v1, 0x28f

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1531
    const/4 v1, 0x2

    if-eq p4, v1, :cond_4

    const/4 v1, 0x3

    if-ne p4, v1, :cond_5

    .line 1533
    :cond_4
    const/16 v1, 0x291

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1534
    const/16 v1, 0x293

    const-string v3, "19"

    invoke-virtual {v0, v1, v3}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1540
    :cond_5
    const/16 v1, 0x294

    const-string v3, "19"

    invoke-virtual {v0, v1, v3}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1545
    if-eqz p5, :cond_6

    if-eqz p6, :cond_6

    .line 1546
    const/16 v1, 0x296

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1547
    const/16 v1, 0x297

    invoke-virtual {v0, v1, p5}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1548
    const/16 v1, 0x298

    invoke-virtual {v0, v1, p6}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1550
    invoke-virtual {v0}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 1553
    :cond_6
    invoke-virtual {v0}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->done()V

    .line 1555
    const-string v1, "ResolveRecipients"

    invoke-virtual {v0}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/android/exchange/EasSyncService;->sendHttpClientPost(Ljava/lang/String;[B)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 1556
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    .line 1557
    if-ne v3, v5, :cond_a

    .line 1558
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    .line 1559
    new-instance v3, Lcom/android/exchange/adapter/ResolveRecipientsParser;

    invoke-direct {v3, v1, v2}, Lcom/android/exchange/adapter/ResolveRecipientsParser;-><init>(Ljava/io/InputStream;Lcom/android/exchange/EasSyncService;)V

    .line 1560
    invoke-virtual {v3}, Lcom/android/exchange/adapter/ResolveRecipientsParser;->parse()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1562
    invoke-virtual {v3}, Lcom/android/exchange/adapter/ResolveRecipientsParser;->getResult()Ljava/util/ArrayList;

    move-result-object v0

    .line 1592
    :goto_3
    return-object v0

    .line 1564
    :cond_7
    invoke-virtual {v3}, Lcom/android/exchange/adapter/ResolveRecipientsParser;->getStatus()B

    move-result v1

    const/4 v3, 0x6

    if-ne v1, v3, :cond_9

    .line 1565
    const-string v1, "ResolveRecipients"

    invoke-virtual {v0}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/android/exchange/EasSyncService;->sendHttpClientPost(Ljava/lang/String;[B)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 1566
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    .line 1567
    if-ne v1, v5, :cond_8

    .line 1568
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 1569
    new-instance v1, Lcom/android/exchange/adapter/ResolveRecipientsParser;

    invoke-direct {v1, v0, v2}, Lcom/android/exchange/adapter/ResolveRecipientsParser;-><init>(Ljava/io/InputStream;Lcom/android/exchange/EasSyncService;)V

    .line 1570
    invoke-virtual {v1}, Lcom/android/exchange/adapter/ResolveRecipientsParser;->parse()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1572
    invoke-virtual {v1}, Lcom/android/exchange/adapter/ResolveRecipientsParser;->getResult()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_3

    .line 1577
    :cond_8
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Resolve Recipients returned "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-virtual {v2, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 1592
    :cond_9
    :goto_4
    const/4 v0, 0x0

    goto :goto_3

    .line 1584
    :cond_a
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Resolve Recipients returned "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-virtual {v2, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 1587
    :catch_0
    move-exception v0

    .line 1589
    new-array v1, v7, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Resolve Recipients "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v6

    invoke-virtual {v2, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    goto :goto_4
.end method

.method private doStatusCallback(JJI)V
    .locals 7
    .parameter "messageId"
    .parameter "attachmentId"
    .parameter "status"

    .prologue
    .line 1685
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

    .line 1689
    :goto_0
    return-void

    .line 1686
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static doValidateCert(Landroid/content/Context;J[Ljava/lang/String;[Ljava/lang/String;Z)Ljava/util/ArrayList;
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1604
    invoke-static {p1, p2}, Lcom/android/exchange/SyncManager;->getAccountById(J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v0

    .line 1605
    if-eqz v0, :cond_9

    if-eqz p3, :cond_9

    array-length v1, p3

    if-lez v1, :cond_9

    .line 1606
    iget-wide v1, v0, Lcom/android/email/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    invoke-static {p0, v1, v2}, Lcom/android/email/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$HostAuth;

    move-result-object v1

    .line 1607
    new-instance v2, Lcom/android/exchange/EasSyncService;

    const-string v3, "%ValidateCert%"

    invoke-direct {v2, v3}, Lcom/android/exchange/EasSyncService;-><init>(Ljava/lang/String;)V

    .line 1609
    if-nez v1, :cond_0

    move-object v0, v9

    .line 1679
    :goto_0
    return-object v0

    .line 1611
    :cond_0
    :try_start_0
    iput-object p0, v2, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    .line 1612
    iget-object v3, v1, Lcom/android/email/provider/EmailContent$HostAuth;->mAddress:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/exchange/EasSyncService;->mHostAddress:Ljava/lang/String;

    .line 1613
    iget-object v3, v1, Lcom/android/email/provider/EmailContent$HostAuth;->mLogin:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/exchange/EasSyncService;->mUserName:Ljava/lang/String;

    .line 1614
    iget-object v3, v1, Lcom/android/email/provider/EmailContent$HostAuth;->mPassword:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/exchange/EasSyncService;->mPassword:Ljava/lang/String;

    .line 1615
    iget v3, v1, Lcom/android/email/provider/EmailContent$HostAuth;->mFlags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    move v3, v8

    :goto_1
    iput-boolean v3, v2, Lcom/android/exchange/EasSyncService;->mSsl:Z

    .line 1616
    iget v1, v1, Lcom/android/email/provider/EmailContent$HostAuth;->mFlags:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_2

    move v1, v8

    :goto_2
    iput-boolean v1, v2, Lcom/android/exchange/EasSyncService;->mTrustSsl:Z

    .line 1617
    invoke-static {}, Lcom/android/exchange/SyncManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/android/exchange/EasSyncService;->mDeviceId:Ljava/lang/String;

    .line 1618
    iput-object v0, v2, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    .line 1620
    new-instance v0, Lcom/android/exchange/adapter/Serializer;

    invoke-direct {v0}, Lcom/android/exchange/adapter/Serializer;-><init>()V

    .line 1622
    const/16 v1, 0x2c5

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1624
    if-eqz p4, :cond_4

    array-length v1, p4

    if-lez v1, :cond_4

    .line 1625
    const/16 v1, 0x2c8

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1626
    array-length v1, p4

    move v3, v7

    :goto_3
    if-ge v3, v1, :cond_3

    aget-object v4, p4, v3

    .line 1627
    const/16 v5, 0x2c7

    invoke-virtual {v0, v5, v4}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1626
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_1
    move v3, v7

    .line 1615
    goto :goto_1

    :cond_2
    move v1, v7

    .line 1616
    goto :goto_2

    .line 1628
    :cond_3
    invoke-virtual {v0}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 1631
    :cond_4
    const/16 v1, 0x2c6

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1632
    array-length v1, p3

    move v3, v7

    :goto_4
    if-ge v3, v1, :cond_5

    aget-object v4, p3, v3

    .line 1633
    const/16 v5, 0x2c7

    invoke-virtual {v0, v5, v4}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1632
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1634
    :cond_5
    invoke-virtual {v0}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 1636
    if-eqz p5, :cond_6

    .line 1637
    const/16 v1, 0x2c9

    const-string v3, "1"

    invoke-virtual {v0, v1, v3}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1639
    :cond_6
    invoke-virtual {v0}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->done()V

    .line 1641
    const-string v1, "ValidateCert"

    invoke-virtual {v0}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/android/exchange/EasSyncService;->sendHttpClientPost(Ljava/lang/String;[B)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 1642
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    .line 1644
    if-nez v0, :cond_7

    .line 1645
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "ValidateCert response is null"

    aput-object v3, v0, v1

    invoke-virtual {v2, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    move-object v0, v9

    .line 1646
    goto/16 :goto_0

    .line 1649
    :cond_7
    const/16 v3, 0xc8

    if-ne v1, v3, :cond_a

    .line 1650
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 1651
    new-instance v3, Lcom/android/exchange/adapter/ValidateCertParser;

    invoke-direct {v3, v0}, Lcom/android/exchange/adapter/ValidateCertParser;-><init>(Ljava/io/InputStream;)V

    .line 1652
    invoke-virtual {v3}, Lcom/android/exchange/adapter/ValidateCertParser;->parse()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1653
    invoke-virtual {v3}, Lcom/android/exchange/adapter/ValidateCertParser;->getResult()Ljava/util/ArrayList;

    move-result-object v0

    goto/16 :goto_0

    .line 1655
    :cond_8
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ValidateCert request is not successful. Status: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    invoke-virtual {v2, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 1657
    invoke-virtual {v3}, Lcom/android/exchange/adapter/ValidateCertParser;->getStatus()I

    move-result v0

    invoke-static {v1, v0}, Lcom/android/exchange/EasSyncService;->isProvisionError(II)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1659
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/android/exchange/SyncManager;->reloadFolderList(Landroid/content/Context;JZ)V

    .line 1660
    new-instance v0, Lcom/android/email/mail/MessagingException;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lcom/android/email/mail/MessagingException;-><init>(I)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1675
    :catch_0
    move-exception v0

    .line 1676
    new-array v1, v8, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException during ValidateCert: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v7

    invoke-virtual {v2, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    :cond_9
    move-object v0, v9

    .line 1679
    goto/16 :goto_0

    .line 1666
    :cond_a
    const/4 v0, 0x1

    :try_start_1
    new-array v0, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Http Status code for ValidateCert: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    invoke-virtual {v2, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 1668
    const/16 v0, 0x1c1

    if-eq v1, v0, :cond_b

    const/16 v0, 0x193

    if-ne v1, v0, :cond_9

    .line 1670
    :cond_b
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/android/exchange/SyncManager;->reloadFolderList(Landroid/content/Context;JZ)V

    .line 1671
    new-instance v0, Lcom/android/email/mail/MessagingException;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lcom/android/email/mail/MessagingException;-><init>(I)V

    throw v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method private getClientConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;
    .locals 1

    .prologue
    .line 2465
    invoke-static {}, Lcom/android/exchange/SyncManager;->getClientConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    return-object v0
.end method

.method private getClientConnectionManagerForLoadMore()Lorg/apache/http/conn/ClientConnectionManager;
    .locals 1

    .prologue
    .line 2470
    invoke-static {}, Lcom/android/exchange/SyncManager;->getClientConnectionManagerForLoadMore()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    return-object v0
.end method

.method private getHttpClient(I)Lorg/apache/http/client/HttpClient;
    .locals 6
    .parameter

    .prologue
    .line 2519
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 2520
    const/16 v1, 0x4e20

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 2521
    invoke-static {v0, p1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 2522
    const/16 v1, 0x2000

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 2524
    const-wide/16 v1, 0x4e20

    invoke-static {v0, v1, v2}, Lorg/apache/http/conn/params/ConnManagerParams;->setTimeout(Lorg/apache/http/params/HttpParams;J)V

    .line 2528
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/net/Proxy;->getHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 2529
    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/net/Proxy;->getPort(Landroid/content/Context;)I

    move-result v2

    .line 2530
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    if-ltz v2, :cond_0

    .line 2531
    new-instance v3, Lorg/apache/http/HttpHost;

    invoke-direct {v3, v1, v2}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    invoke-static {v0, v3}, Lorg/apache/http/conn/params/ConnRouteParams;->setDefaultProxy(Lorg/apache/http/params/HttpParams;Lorg/apache/http/HttpHost;)V

    .line 2533
    const-string v3, "PROXY"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Added proxy param host: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " port: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/exchange/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2536
    :cond_0
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {p0}, Lcom/android/exchange/EasSyncService;->getClientConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    .line 2541
    return-object v1
.end method

.method private getLoadMoreClient(I)Lorg/apache/http/client/HttpClient;
    .locals 6
    .parameter

    .prologue
    .line 2546
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 2547
    const/16 v1, 0x4e20

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 2548
    invoke-static {v0, p1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 2549
    const/16 v1, 0x2000

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 2551
    const-wide/16 v1, 0x4e20

    invoke-static {v0, v1, v2}, Lorg/apache/http/conn/params/ConnManagerParams;->setTimeout(Lorg/apache/http/params/HttpParams;J)V

    .line 2555
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/net/Proxy;->getHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 2556
    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/net/Proxy;->getPort(Landroid/content/Context;)I

    move-result v2

    .line 2557
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    if-ltz v2, :cond_0

    .line 2558
    new-instance v3, Lorg/apache/http/HttpHost;

    invoke-direct {v3, v1, v2}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    invoke-static {v0, v3}, Lorg/apache/http/conn/params/ConnRouteParams;->setDefaultProxy(Lorg/apache/http/params/HttpParams;Lorg/apache/http/HttpHost;)V

    .line 2560
    const-string v3, "PROXY"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Added proxy param host: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " port: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/exchange/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2563
    :cond_0
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {p0}, Lcom/android/exchange/EasSyncService;->getClientConnectionManagerForLoadMore()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    .line 2564
    const-string v0, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getClientConnectionManagerForLoadMore : client : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/exchange/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2568
    return-object v1
.end method

.method private getPingClient(I)Lorg/apache/http/client/HttpClient;
    .locals 6
    .parameter

    .prologue
    .line 2498
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 2499
    const/16 v1, 0x4e20

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 2500
    invoke-static {v0, p1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 2501
    const/16 v1, 0x2000

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 2502
    const-wide/16 v1, 0x4e20

    invoke-static {v0, v1, v2}, Lorg/apache/http/conn/params/ConnManagerParams;->setTimeout(Lorg/apache/http/params/HttpParams;J)V

    .line 2505
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/net/Proxy;->getHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 2506
    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/net/Proxy;->getPort(Landroid/content/Context;)I

    move-result v2

    .line 2507
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    if-ltz v2, :cond_0

    .line 2508
    new-instance v3, Lorg/apache/http/HttpHost;

    invoke-direct {v3, v1, v2}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    invoke-static {v0, v3}, Lorg/apache/http/conn/params/ConnRouteParams;->setDefaultProxy(Lorg/apache/http/params/HttpParams;Lorg/apache/http/HttpHost;)V

    .line 2510
    const-string v3, "PROXY"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Added proxy param host: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " port: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/exchange/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2513
    :cond_0
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-static {}, Lcom/android/exchange/SyncManager;->newClientConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    return-object v1
.end method

.method private getPolicyType()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2987
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
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 849
    const-string v0, "X-MS-Location"

    invoke-interface {p1, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 850
    if-eqz v0, :cond_0

    .line 851
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 854
    if-eqz v0, :cond_0

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 855
    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/apache/http/client/methods/HttpPost;->setURI(Ljava/net/URI;)V

    move-object v0, p2

    .line 859
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isLikelyNatFailure(Ljava/lang/String;JI)Z
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3626
    if-nez p1, :cond_0

    move v0, v4

    .line 3638
    :goto_0
    return v0

    .line 3627
    :cond_0
    const-string v0, "reset by peer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v5

    .line 3628
    goto :goto_0

    .line 3631
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

    .line 3634
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "Read timed out for long heartbeat. Decrease heartbeat"

    aput-object v1, v0, v4

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    move v0, v5

    .line 3635
    goto :goto_0

    :cond_2
    move v0, v4

    .line 3638
    goto :goto_0
.end method

.method protected static isProvisionError(II)Z
    .locals 2
    .parameter "code"
    .parameter "status"

    .prologue
    const/4 v1, 0x1

    .line 626
    const/16 v0, 0x1c1

    if-eq p0, v0, :cond_0

    const/16 v0, 0x193

    if-ne p0, v0, :cond_1

    :cond_0
    move v0, v1

    .line 650
    :goto_0
    return v0

    .line 631
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 650
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_0
    move v0, v1

    .line 637
    goto :goto_0

    :pswitch_1
    move v0, v1

    .line 644
    goto :goto_0

    .line 631
    :pswitch_data_0
    .packed-switch 0x8b
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private makeUriString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2388
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mAuthString:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mCmdString:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 2389
    :cond_0
    invoke-direct {p0}, Lcom/android/exchange/EasSyncService;->cacheAuthAndCmdString()V

    .line 2400
    :cond_1
    const/4 v0, 0x0

    .line 2401
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/net/Proxy;->getHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/net/Proxy;->getHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/net/Proxy;->getPort(Landroid/content/Context;)I

    move-result v1

    if-ltz v1, :cond_2

    .line 2403
    iget-boolean v1, p0, Lcom/android/exchange/EasSyncService;->mSsl:Z

    if-eqz v1, :cond_2

    .line 2404
    const/4 v0, 0x1

    .line 2409
    :cond_2
    new-instance v1, Ljava/lang/StringBuffer;

    iget-boolean v2, p0, Lcom/android/exchange/EasSyncService;->mSsl:Z

    if-eqz v2, :cond_6

    iget-boolean v2, p0, Lcom/android/exchange/EasSyncService;->mTrustSsl:Z

    if-eqz v2, :cond_5

    const-string v2, "httpts"

    :goto_0
    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 2410
    const-string v2, "://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mHostAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    if-eqz v0, :cond_7

    const-string v0, ":443"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "/Microsoft-Server-ActiveSync"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2411
    if-eqz p1, :cond_3

    .line 2412
    const-string v0, "?Cmd="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mCmdString:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2414
    :cond_3
    if-eqz p2, :cond_4

    .line 2415
    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2418
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2409
    :cond_5
    const-string v2, "https"

    goto :goto_0

    :cond_6
    const-string v2, "http"

    goto :goto_0

    .line 2410
    :cond_7
    const-string v0, ""

    goto :goto_1
.end method

.method private parsePingResult(Ljava/io/InputStream;Landroid/content/ContentResolver;Ljava/util/HashMap;)I
    .locals 15
    .parameter
    .parameter
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
            Lcom/android/exchange/IllegalHeartbeatException;,
            Lcom/android/email/mail/DeviceAccessException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v14, 0x3

    const/4 v6, 0x0

    const/4 v13, 0x1

    .line 3911
    new-instance v10, Lcom/android/exchange/adapter/PingParser;

    move-object v0, v10

    move-object/from16 v1, p1

    move-object v2, p0

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/adapter/PingParser;-><init>(Ljava/io/InputStream;Lcom/android/exchange/EasSyncService;)V

    .line 3912
    invoke-virtual {v10}, Lcom/android/exchange/adapter/PingParser;->parse()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 3915
    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mBindArguments:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v4, v4, Lcom/android/email/provider/EmailContent$Account;->mId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    .line 3916
    invoke-virtual {v10}, Lcom/android/exchange/adapter/PingParser;->getSyncList()Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exchange/EasSyncService;->mPingChangeList:Ljava/util/ArrayList;

    .line 3917
    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mPingChangeList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v9, v0

    .line 3918
    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mBindArguments:[Ljava/lang/String;

    aput-object v9, v3, v13

    .line 3919
    sget-object v4, Lcom/android/email/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/android/email/provider/EmailContent$Mailbox;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v6, "accountKey=? and serverId=?"

    iget-object v7, p0, Lcom/android/exchange/EasSyncService;->mBindArguments:[Ljava/lang/String;

    move-object/from16 v3, p2

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 3922
    :try_start_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3939
    const/16 v3, 0xf

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 3940
    invoke-static {v3}, Lcom/android/exchange/SyncManager;->getStatusType(Ljava/lang/String;)I

    move-result v5

    .line 3942
    if-ne v5, v14, :cond_0

    .line 3943
    invoke-static {v3}, Lcom/android/exchange/SyncManager;->getStatusChangeCount(Ljava/lang/String;)I

    move-result v3

    .line 3944
    if-lez v3, :cond_2

    .line 3945
    move-object/from16 v0, p3

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3966
    :cond_0
    :goto_1
    const/4 v3, 0x0

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    const/4 v3, 0x3

    const/4 v7, 0x0

    invoke-static {v5, v6, v3, v7}, Lcom/android/exchange/SyncManager;->startManualSync(JILcom/android/exchange/Request;)Lcom/android/exchange/AbstractSyncService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3970
    :cond_1
    :goto_2
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 3946
    :cond_2
    if-nez v3, :cond_0

    .line 3949
    const/4 v3, 0x1

    :try_start_1
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 3950
    move-object/from16 v0, p3

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 3951
    if-nez v3, :cond_3

    .line 3952
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "Last ping reported changes in error for: "

    aput-object v7, v3, v6

    const/4 v6, 0x1

    aput-object v5, v3, v6

    invoke-virtual {p0, v3}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 3953
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, p3

    move-object v1, v9

    move-object v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 3970
    :catchall_0
    move-exception v3

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    throw v3

    .line 3954
    :cond_3
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-le v6, v13, :cond_4

    .line 3956
    const/4 v3, 0x0

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-direct {p0, v5, v6}, Lcom/android/exchange/EasSyncService;->pushFallback(J)V

    goto :goto_2

    .line 3959
    :cond_4
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v12, "Last ping reported changes in error for: "

    aput-object v12, v6, v7

    const/4 v7, 0x1

    aput-object v5, v6, v7

    invoke-virtual {p0, v6}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 3960
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, p3

    move-object v1, v9

    move-object v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 3974
    :cond_5
    invoke-virtual {v10}, Lcom/android/exchange/adapter/PingParser;->getSyncStatus()I

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

    .line 877
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

    .line 879
    invoke-virtual {p0, p1, p2, v8}, Lcom/android/exchange/EasSyncService;->executePostWithTimeout(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpPost;I)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 880
    .local v2, resp:Lorg/apache/http/HttpResponse;
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    .line 884
    .local v1, code:I
    if-ne v1, v9, :cond_1

    .line 886
    invoke-virtual {p0, v2, p2}, Lcom/android/exchange/EasSyncService;->parseAutoDiscoverResponse(Lorg/apache/http/HttpResponse;Lorg/apache/http/client/methods/HttpPost;)Lorg/apache/http/client/methods/HttpPost;

    .line 887
    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mAutoDiscInfo:Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;

    iget-boolean v3, v3, Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;->isRedirectTagPresent:Z

    if-eqz v3, :cond_0

    .line 888
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

    .line 889
    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mAutoDiscInfo:Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;

    iget-object v3, v3, Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;->RedirectPost:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {p0, p1, v3, v8}, Lcom/android/exchange/EasSyncService;->executePostWithTimeout(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpPost;I)Lorg/apache/http/HttpResponse;

    .line 928
    :cond_0
    :goto_0
    return-void

    .line 896
    :cond_1
    const/16 v3, 0x1c3

    if-ne v1, v3, :cond_2

    .line 897
    invoke-direct {p0, v2, p2}, Lcom/android/exchange/EasSyncService;->getRedirect(Lorg/apache/http/HttpResponse;Lorg/apache/http/client/methods/HttpPost;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object p2

    .line 898
    if-eqz p2, :cond_0

    .line 899
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

    .line 901
    invoke-virtual {p0, p1, p2, v8}, Lcom/android/exchange/EasSyncService;->executePostWithTimeout(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpPost;I)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 902
    if-ne v1, v9, :cond_0

    .line 903
    invoke-virtual {p0, v2, p2}, Lcom/android/exchange/EasSyncService;->parseAutoDiscoverResponse(Lorg/apache/http/HttpResponse;Lorg/apache/http/client/methods/HttpPost;)Lorg/apache/http/client/methods/HttpPost;

    goto :goto_0

    .line 908
    :cond_2
    const/16 v3, 0x191

    if-ne v1, v3, :cond_4

    .line 909
    if-eqz p3, :cond_3

    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mUserName:Ljava/lang/String;

    const-string v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 911
    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mUserName:Ljava/lang/String;

    const/16 v4, 0x40

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 912
    .local v0, atSignIndex:I
    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mUserName:Ljava/lang/String;

    invoke-virtual {v3, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exchange/EasSyncService;->mUserName:Ljava/lang/String;

    .line 913
    invoke-direct {p0}, Lcom/android/exchange/EasSyncService;->cacheAuthAndCmdString()V

    .line 914
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "401 received; trying username: "

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/android/exchange/EasSyncService;->mUserName:Ljava/lang/String;

    aput-object v4, v3, v7

    invoke-virtual {p0, v3}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 916
    const-string v3, "Authorization"

    invoke-virtual {p2, v10}, Lorg/apache/http/client/methods/HttpPost;->removeHeaders(Ljava/lang/String;)V

    .line 917
    const-string v3, "Authorization"

    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mAuthString:Ljava/lang/String;

    invoke-virtual {p2, v10, v3}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 918
    invoke-direct {p0, p1, p2, v6}, Lcom/android/exchange/EasSyncService;->postAutodiscover(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpPost;Z)V

    goto :goto_0

    .line 921
    .end local v0           #atSignIndex:I
    :cond_3
    new-instance v3, Lcom/android/email/mail/MessagingException;

    const/4 v4, 0x5

    invoke-direct {v3, v4}, Lcom/android/email/mail/MessagingException;-><init>(I)V

    throw v3

    .line 925
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

    .line 926
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3}, Ljava/io/IOException;-><init>()V

    throw v3
.end method

.method private pushFallback(J)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 3601
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v0

    .line 3602
    if-nez v0, :cond_0

    .line 3615
    :goto_0
    return-void

    .line 3605
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 3606
    const/16 v2, 0x19

    .line 3607
    iget v3, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    if-nez v3, :cond_1

    .line 3608
    const/4 v2, 0x5

    .line 3610
    :cond_1
    const-string v3, "syncInterval"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3611
    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/email/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v1, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3613
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "*** PING ERROR LOOP: Set "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " min sync"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->errorLog(Ljava/lang/String;)V

    .line 3614
    const-string v0, "push fallback"

    invoke-static {v0}, Lcom/android/exchange/SyncManager;->kick(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private runPingLoop()V
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/exchange/StaleFolderListException;,
            Lcom/android/exchange/IllegalHeartbeatException;,
            Lcom/android/email/mail/DeviceAccessException;
        }
    .end annotation

    .prologue
    .line 3643
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exchange/EasSyncService;->mPingHeartbeat:I

    move v5, v0

    .line 3644
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "runPingLoop"

    aput-object v8, v6, v7

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 3648
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/32 v8, 0x36ee80

    add-long v11, v6, v8

    .line 3649
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 3650
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 3651
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 3652
    const/4 v6, 0x0

    move/from16 v16, v6

    move/from16 v17, v5

    .line 3654
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    cmp-long v5, v5, v11

    if-gez v5, :cond_2a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/exchange/EasSyncService;->mStop:Z

    move v5, v0

    if-nez v5, :cond_2a

    .line 3656
    const/16 v18, 0x0

    .line 3658
    const/16 v19, 0x0

    .line 3660
    const/16 v20, 0x0

    .line 3662
    new-instance v21, Lcom/android/exchange/adapter/Serializer;

    invoke-direct/range {v21 .. v21}, Lcom/android/exchange/adapter/Serializer;-><init>()V

    .line 3663
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

    move-result-object v5

    .line 3666
    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    .line 3667
    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    move/from16 v6, v20

    move/from16 v7, v19

    move/from16 v8, v18

    .line 3670
    :cond_0
    :goto_1
    :try_start_0
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 3671
    add-int/lit8 v8, v8, 0x1

    .line 3675
    const/4 v9, 0x0

    invoke-interface {v5, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 3676
    invoke-static {v9, v10}, Lcom/android/exchange/SyncManager;->pingStatus(J)I

    move-result v9

    .line 3677
    const/4 v10, 0x1

    invoke-interface {v5, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 3678
    if-nez v9, :cond_5

    .line 3679
    const/4 v9, 0x7

    invoke-interface {v5, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 3680
    if-eqz v9, :cond_1

    const-string v18, "0"

    move-object/from16 v0, v18

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 3682
    :cond_1
    add-int/lit8 v8, v8, -0x1

    .line 3683
    add-int/lit8 v6, v6, 0x1

    .line 3684
    goto :goto_1

    .line 3687
    :cond_2
    add-int/lit8 v9, v7, 0x1

    if-nez v7, :cond_3

    .line 3689
    const/16 v7, 0x345

    move-object/from16 v0, v21

    move v1, v7

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v7

    const/16 v18, 0x348

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    move-object v0, v7

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v7

    const/16 v18, 0x349

    move-object v0, v7

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 3695
    :cond_3
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->getTargetCollectionClassFromCursor(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v7

    .line 3699
    const/16 v18, 0x5

    move-object v0, v5

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 3700
    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/email/provider/EmailContent$Account;->mFlags:I

    move/from16 v18, v0

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0x200

    move/from16 v18, v0

    if-nez v18, :cond_4

    move v7, v9

    .line 3701
    goto :goto_1

    .line 3704
    :cond_4
    const/16 v18, 0x34a

    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v18

    const/16 v19, 0x34b

    const/16 v20, 0x2

    move-object v0, v5

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v18

    const/16 v19, 0x34c

    move-object/from16 v0, v18

    move/from16 v1, v19

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 3708
    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v7, v9

    .line 3709
    goto/16 :goto_1

    :cond_5
    const/16 v18, 0x1

    move v0, v9

    move/from16 v1, v18

    if-eq v0, v1, :cond_6

    const/16 v18, 0x2

    move v0, v9

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    .line 3711
    :cond_6
    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_1

    .line 3719
    :catchall_0
    move-exception v6

    if-eqz v5, :cond_7

    .line 3720
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 3719
    :cond_7
    throw v6

    .line 3712
    :cond_8
    const/16 v18, 0x3

    move v0, v9

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 3713
    add-int/lit8 v8, v8, -0x1

    .line 3714
    const/4 v9, 0x2

    :try_start_1
    new-array v9, v9, [Ljava/lang/String;

    const/16 v18, 0x0

    aput-object v10, v9, v18

    const/4 v10, 0x1

    const-string v18, " in error state; ignore"

    aput-object v18, v9, v10

    move-object/from16 v0, p0

    move-object v1, v9

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 3719
    :cond_9
    if-eqz v5, :cond_a

    .line 3720
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 3723
    :cond_a
    sget-boolean v5, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v5, :cond_c

    .line 3724
    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_b

    .line 3725
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v9, 0x0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Ping not ready for: "

    move-object v0, v10

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v5, v9

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 3727
    :cond_b
    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_c

    .line 3728
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v9, 0x0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Ping ready for: "

    move-object v0, v10

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v5, v9

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 3734
    :cond_c
    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_e

    const/4 v5, 0x5

    move/from16 v0, v16

    move v1, v5

    if-le v0, v1, :cond_e

    const/4 v5, 0x1

    .line 3736
    :goto_2
    if-lez v7, :cond_26

    if-eq v7, v8, :cond_d

    if-eqz v5, :cond_26

    .line 3738
    :cond_d
    invoke-virtual/range {v21 .. v21}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/exchange/adapter/Serializer;->done()V

    .line 3739
    const/4 v6, 0x0

    .line 3740
    const/4 v7, 0x0

    move v0, v7

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/exchange/EasSyncService;->mPostReset:Z

    .line 3741
    const/4 v7, 0x0

    move v0, v7

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/exchange/EasSyncService;->mPostAborted:Z

    .line 3744
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/exchange/EasSyncService;->mStop:Z

    move v7, v0

    if-eqz v7, :cond_f

    .line 3891
    :goto_3
    return-void

    .line 3734
    :cond_e
    const/4 v5, 0x0

    goto :goto_2

    .line 3746
    :cond_f
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 3749
    if-eqz v5, :cond_10

    .line 3750
    const/4 v9, 0x1

    :try_start_2
    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v16, "Forcing ping after waiting for all boxes to be ready"

    aput-object v16, v9, v10

    move-object/from16 v0, p0

    move-object v1, v9

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 3753
    :cond_10
    sget-boolean v9, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v9, :cond_11

    .line 3755
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v16, "runPingLoop:Wbxml"

    aput-object v16, v9, v10

    move-object/from16 v0, p0

    move-object v1, v9

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 3756
    invoke-virtual/range {v21 .. v21}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v9

    .line 3757
    new-instance v10, Ljava/io/ByteArrayInputStream;

    invoke-direct {v10, v9}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 3758
    new-instance v9, Lcom/android/exchange/adapter/LogAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    move-object/from16 v16, v0

    move-object v0, v9

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/adapter/LogAdapter;-><init>(Lcom/android/email/provider/EmailContent$Mailbox;Lcom/android/exchange/EasSyncService;)V

    .line 3759
    invoke-virtual {v9, v10}, Lcom/android/exchange/adapter/LogAdapter;->parse(Ljava/io/InputStream;)Z

    .line 3763
    :cond_11
    invoke-virtual/range {v21 .. v21}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v9

    if-eqz v5, :cond_13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exchange/EasSyncService;->mPingForceHeartbeat:I

    move v10, v0

    :goto_4
    move-object/from16 v0, p0

    move-object v1, v9

    move v2, v10

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/EasSyncService;->sendPing([BI)Lorg/apache/http/HttpResponse;

    move-result-object v9

    .line 3766
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v10

    .line 3767
    const-string v16, "Ping response: "

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move v2, v10

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/EasSyncService;->userLog(Ljava/lang/String;I)V

    .line 3770
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/exchange/EasSyncService;->mStop:Z

    move/from16 v16, v0

    if-eqz v16, :cond_14

    .line 3771
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "Stopping pingLoop"

    aput-object v10, v5, v9

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 3854
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 3855
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    move-object v6, v0

    if-eqz v6, :cond_12

    .line 3856
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    move-object v6, v0

    invoke-virtual {v6}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 3857
    const/4 v6, 0x0

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    .line 3859
    :cond_12
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 3861
    invoke-direct/range {p0 .. p0}, Lcom/android/exchange/EasSyncService;->shutdownConnectionManager()V

    goto/16 :goto_3

    :cond_13
    move/from16 v10, v17

    .line 3763
    goto :goto_4

    .line 3775
    :cond_14
    const/16 v16, 0xc8

    move v0, v10

    move/from16 v1, v16

    if-ne v0, v1, :cond_1a

    .line 3777
    :try_start_4
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Lcom/android/exchange/SyncManager;->removeFromSyncErrorMap(J)V

    .line 3778
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v10

    .line 3779
    invoke-interface {v10}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move v10, v0

    .line 3780
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v9

    .line 3781
    if-eqz v10, :cond_18

    .line 3782
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    move-object v10, v0

    move-object/from16 v0, p0

    move-object v1, v9

    move-object v2, v10

    move-object v3, v13

    invoke-direct {v0, v1, v2, v3}, Lcom/android/exchange/EasSyncService;->parsePingResult(Ljava/io/InputStream;Landroid/content/ContentResolver;Ljava/util/HashMap;)I

    move-result v9

    .line 3785
    const/4 v10, 0x1

    if-ne v9, v10, :cond_2b

    if-nez v5, :cond_2b

    .line 3786
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exchange/EasSyncService;->mPingHighWaterMark:I

    move v5, v0

    move/from16 v0, v17

    move v1, v5

    if-le v0, v1, :cond_15

    .line 3787
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/exchange/EasSyncService;->mPingHighWaterMark:I

    .line 3788
    const-string v5, "Setting high water mark at: "

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exchange/EasSyncService;->mPingHighWaterMark:I

    move v9, v0

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v9

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/EasSyncService;->userLog(Ljava/lang/String;I)V

    .line 3790
    :cond_15
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exchange/EasSyncService;->mPingMaxHeartbeat:I

    move v5, v0

    move/from16 v0, v17

    move v1, v5

    if-ge v0, v1, :cond_2b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/exchange/EasSyncService;->mPingHeartbeatDropped:Z

    move v5, v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    if-nez v5, :cond_2b

    .line 3792
    move/from16 v0, v17

    add-int/lit16 v0, v0, 0xb4

    move v5, v0

    .line 3793
    :try_start_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exchange/EasSyncService;->mPingMaxHeartbeat:I

    move v9, v0

    if-le v5, v9, :cond_16

    .line 3794
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exchange/EasSyncService;->mPingMaxHeartbeat:I

    move v5, v0

    .line 3796
    :cond_16
    const-string v9, "Increasing ping heartbeat to "

    const-string v10, "s"

    move-object/from16 v0, p0

    move-object v1, v9

    move v2, v5

    move-object v3, v10

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/exchange/EasSyncService;->userLog(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 3854
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 3855
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    move-object v8, v0

    if-eqz v8, :cond_17

    .line 3856
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    move-object v8, v0

    invoke-virtual {v8}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 3857
    const/4 v8, 0x0

    move-object v0, v8

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    .line 3859
    :cond_17
    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 3861
    :goto_6
    invoke-direct/range {p0 .. p0}, Lcom/android/exchange/EasSyncService;->shutdownConnectionManager()V

    move/from16 v22, v6

    move v6, v5

    move/from16 v5, v22

    :goto_7
    move/from16 v16, v5

    move/from16 v17, v6

    .line 3887
    goto/16 :goto_0

    .line 3800
    :cond_18
    const/4 v5, 0x1

    :try_start_7
    new-array v5, v5, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "Ping returned empty result; throwing IOException"

    aput-object v10, v5, v9

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 3801
    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5}, Ljava/io/IOException;-><init>()V

    throw v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    .line 3808
    :catch_0
    move-exception v5

    move/from16 v9, v17

    .line 3809
    :goto_8
    :try_start_8
    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    .line 3812
    if-eqz v10, :cond_1c

    const/16 v16, 0x1

    .line 3813
    :goto_9
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "IOException runPingLoop: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    if-eqz v16, :cond_1d

    move-object/from16 v20, v10

    :goto_a
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 3815
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v17

    sub-long v7, v17, v7

    .line 3816
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/exchange/EasSyncService;->mPostReset:Z

    move/from16 v17, v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-eqz v17, :cond_1e

    move v5, v9

    .line 3854
    :goto_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 3855
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    move-object v8, v0

    if-eqz v8, :cond_19

    .line 3856
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    move-object v8, v0

    invoke-virtual {v8}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 3857
    const/4 v8, 0x0

    move-object v0, v8

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    .line 3859
    :cond_19
    monitor-exit v7

    goto/16 :goto_6

    :catchall_1
    move-exception v5

    monitor-exit v7
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    throw v5

    .line 3803
    :cond_1a
    :try_start_a
    move-object/from16 v0, p0

    move v1, v10

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->isAuthError(I)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 3804
    const/4 v5, 0x2

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/exchange/EasSyncService;->mExitStatus:I

    .line 3805
    const-string v5, "Authorization error during Ping: "

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v10

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/EasSyncService;->userLog(Ljava/lang/String;I)V

    .line 3806
    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5}, Ljava/io/IOException;-><init>()V

    throw v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0

    .line 3854
    :catchall_2
    move-exception v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 3855
    :try_start_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    move-object v7, v0

    if-eqz v7, :cond_1b

    .line 3856
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    move-object v7, v0

    invoke-virtual {v7}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 3857
    const/4 v7, 0x0

    move-object v0, v7

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    .line 3859
    :cond_1b
    monitor-exit v6
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 3861
    invoke-direct/range {p0 .. p0}, Lcom/android/exchange/EasSyncService;->shutdownConnectionManager()V

    .line 3854
    throw v5

    .line 3812
    :cond_1c
    const/16 v16, 0x0

    goto/16 :goto_9

    .line 3813
    :cond_1d
    :try_start_c
    const-string v20, "[no message]"

    goto/16 :goto_a

    .line 3819
    :cond_1e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/exchange/EasSyncService;->mPostAborted:Z

    move/from16 v17, v0

    if-nez v17, :cond_1f

    move-object/from16 v0, p0

    move-object v1, v10

    move-wide v2, v7

    move v4, v9

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/exchange/EasSyncService;->isLikelyNatFailure(Ljava/lang/String;JI)Z

    move-result v17

    if-eqz v17, :cond_24

    .line 3823
    :cond_1f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exchange/EasSyncService;->mPingMinHeartbeat:I

    move v10, v0

    if-le v9, v10, :cond_21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exchange/EasSyncService;->mPingHighWaterMark:I

    move v10, v0

    if-le v9, v10, :cond_21

    .line 3825
    add-int/lit16 v5, v9, -0xb4

    .line 3826
    const/4 v7, 0x1

    move v0, v7

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/exchange/EasSyncService;->mPingHeartbeatDropped:Z

    .line 3827
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exchange/EasSyncService;->mPingMinHeartbeat:I

    move v7, v0

    if-ge v5, v7, :cond_20

    .line 3828
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exchange/EasSyncService;->mPingMinHeartbeat:I

    move v5, v0

    .line 3830
    :cond_20
    const-string v7, "Decreased ping heartbeat to "

    const-string v8, "s"

    move-object/from16 v0, p0

    move-object v1, v7

    move v2, v5

    move-object v3, v8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/exchange/EasSyncService;->userLog(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_b

    .line 3831
    :cond_21
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/exchange/EasSyncService;->mPostAborted:Z

    move v10, v0

    if-eqz v10, :cond_22

    .line 3837
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "Ping aborted; retry"

    aput-object v8, v5, v7

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    move v5, v9

    goto/16 :goto_b

    .line 3838
    :cond_22
    const-wide/16 v16, 0x7d0

    cmp-long v7, v7, v16

    if-gez v7, :cond_23

    .line 3839
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "Abort or NAT type return < 2 seconds; throwing IOException"

    aput-object v8, v6, v7

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 3840
    throw v5

    .line 3842
    :cond_23
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "NAT type IOException"

    aput-object v8, v5, v7

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    move v5, v9

    goto/16 :goto_b

    .line 3844
    :cond_24
    if-eqz v16, :cond_25

    const-string v7, "roken pipe"

    invoke-virtual {v10, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_25

    move v5, v9

    goto/16 :goto_b

    .line 3849
    :cond_25
    throw v5
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 3864
    :cond_26
    if-eqz v5, :cond_27

    .line 3867
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "pingLoop waiting 60s for any pingable boxes"

    aput-object v7, v5, v6

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 3868
    const-wide/32 v5, 0xea60

    const/4 v7, 0x1

    move-object/from16 v0, p0

    move-wide v1, v5

    move v3, v7

    invoke-direct {v0, v1, v2, v3}, Lcom/android/exchange/EasSyncService;->sleep(JZ)V

    move/from16 v5, v16

    move/from16 v6, v17

    goto/16 :goto_7

    .line 3869
    :cond_27
    if-lez v8, :cond_28

    .line 3872
    const-wide/16 v5, 0x7d0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-wide v1, v5

    move v3, v7

    invoke-direct {v0, v1, v2, v3}, Lcom/android/exchange/EasSyncService;->sleep(JZ)V

    .line 3873
    add-int/lit8 v5, v16, 0x1

    move/from16 v6, v17

    goto/16 :goto_7

    .line 3875
    :cond_28
    if-lez v6, :cond_29

    .line 3879
    const-string v5, "pingLoop waiting for initial sync of "

    const-string v7, " box(es)"

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v6

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/exchange/EasSyncService;->userLog(Ljava/lang/String;ILjava/lang/String;)V

    .line 3880
    const-wide/16 v5, 0x2710

    const/4 v7, 0x1

    move-object/from16 v0, p0

    move-wide v1, v5

    move v3, v7

    invoke-direct {v0, v1, v2, v3}, Lcom/android/exchange/EasSyncService;->sleep(JZ)V

    move/from16 v5, v16

    move/from16 v6, v17

    goto/16 :goto_7

    .line 3884
    :cond_29
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "pingLoop sleeping for 30m"

    aput-object v7, v5, v6

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 3885
    const-wide/32 v5, 0x1b7740

    const/4 v7, 0x1

    move-object/from16 v0, p0

    move-wide v1, v5

    move v3, v7

    invoke-direct {v0, v1, v2, v3}, Lcom/android/exchange/EasSyncService;->sleep(JZ)V

    move/from16 v5, v16

    move/from16 v6, v17

    goto/16 :goto_7

    .line 3890
    :cond_2a
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/exchange/EasSyncService;->mPingHeartbeat:I

    goto/16 :goto_3

    .line 3859
    :catchall_3
    move-exception v5

    :try_start_d
    monitor-exit v6
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    throw v5

    :catchall_4
    move-exception v6

    :try_start_e
    monitor-exit v5
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    throw v6

    :catchall_5
    move-exception v5

    :try_start_f
    monitor-exit v7
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    throw v5

    .line 3808
    :catch_1
    move-exception v9

    move-object/from16 v22, v9

    move v9, v5

    move-object/from16 v5, v22

    goto/16 :goto_8

    :cond_2b
    move/from16 v5, v17

    goto/16 :goto_5
.end method

.method public static searchEmail(Landroid/content/Context;JJJLcom/android/exchange/SearchRequest;)Lcom/android/exchange/provider/EmailResult;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1341
    invoke-static {p1, p2}, Lcom/android/exchange/SyncManager;->getAccountById(J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v0

    .line 1342
    if-eqz v0, :cond_3

    .line 1344
    iget-wide v1, v0, Lcom/android/email/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    invoke-static {p0, v1, v2}, Lcom/android/email/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$HostAuth;

    move-result-object v1

    .line 1345
    new-instance v2, Lcom/android/exchange/EasSyncService;

    const-string v3, "%EmailSearch%"

    invoke-direct {v2, v3}, Lcom/android/exchange/EasSyncService;-><init>(Ljava/lang/String;)V

    .line 1347
    :try_start_0
    iput-object p0, v2, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    .line 1348
    iget-object v3, v1, Lcom/android/email/provider/EmailContent$HostAuth;->mAddress:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/exchange/EasSyncService;->mHostAddress:Ljava/lang/String;

    .line 1349
    iget-object v3, v1, Lcom/android/email/provider/EmailContent$HostAuth;->mLogin:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/exchange/EasSyncService;->mUserName:Ljava/lang/String;

    .line 1350
    iget-object v3, v1, Lcom/android/email/provider/EmailContent$HostAuth;->mPassword:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/exchange/EasSyncService;->mPassword:Ljava/lang/String;

    .line 1351
    iget v3, v1, Lcom/android/email/provider/EmailContent$HostAuth;->mFlags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, v2, Lcom/android/exchange/EasSyncService;->mSsl:Z

    .line 1352
    iget v3, v1, Lcom/android/email/provider/EmailContent$HostAuth;->mFlags:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    iput-boolean v3, v2, Lcom/android/exchange/EasSyncService;->mTrustSsl:Z

    .line 1353
    invoke-static {}, Lcom/android/exchange/SyncManager;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/exchange/EasSyncService;->mDeviceId:Ljava/lang/String;

    .line 1354
    iput-object v0, v2, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    .line 1355
    invoke-static {p0, p3, p4}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v3

    iput-object v3, v2, Lcom/android/exchange/EasSyncService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    .line 1357
    const-string v3, "EasSyncService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fzhang search mailboxID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v3, p3}, Lcom/android/exchange/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1359
    invoke-static {p0, v0, p7}, Lcom/android/exchange/adapter/EasEmailSearchAdapter;->buildEasEmailSearchRequest(Landroid/content/Context;Lcom/android/email/provider/EmailContent$Account;Lcom/android/exchange/SearchRequest;)Lcom/android/exchange/adapter/Serializer;

    move-result-object p0

    .line 1361
    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/String;

    const/4 p4, 0x0

    new-instance p7, Ljava/lang/StringBuilder;

    invoke-direct {p7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Start Email Search "

    invoke-virtual {p7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p7

    iget-object v1, v1, Lcom/android/email/provider/EmailContent$HostAuth;->mAddress:Ljava/lang/String;

    invoke-virtual {p7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p7

    invoke-virtual {p7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p7

    aput-object p7, p3, p4

    invoke-virtual {v2, p3}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 1362
    const-string p3, "Search"

    invoke-virtual {p0}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object p0

    invoke-virtual {v2, p3, p0}, Lcom/android/exchange/EasSyncService;->sendHttpClientPost(Ljava/lang/String;[B)Lorg/apache/http/HttpResponse;

    move-result-object p0

    .line 1363
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object p3

    invoke-interface {p3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result p3

    .line 1364
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object p0

    .line 1365
    new-instance p4, Lcom/android/exchange/adapter/EasEmailSearchParser;

    new-instance p7, Lcom/android/exchange/adapter/EmailSyncAdapter;

    iget-object v1, v2, Lcom/android/exchange/EasSyncService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    invoke-direct {p7, v1, v2}, Lcom/android/exchange/adapter/EmailSyncAdapter;-><init>(Lcom/android/email/provider/EmailContent$Mailbox;Lcom/android/exchange/EasSyncService;)V

    invoke-direct {p4, p0, p7}, Lcom/android/exchange/adapter/EasEmailSearchParser;-><init>(Ljava/io/InputStream;Lcom/android/exchange/adapter/AbstractSyncAdapter;)V

    .line 1366
    invoke-virtual {p4, p5, p6}, Lcom/android/exchange/adapter/EasEmailSearchParser;->setFoldId(J)V

    .line 1368
    const/16 p0, 0xc8

    if-ne p3, p0, :cond_2

    .line 1369
    invoke-virtual {p4}, Lcom/android/exchange/adapter/EasEmailSearchParser;->parse_email_response()Lcom/android/exchange/provider/EmailResult;

    move-result-object p0

    .line 1389
    :goto_2
    return-object p0

    .line 1351
    :cond_0
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 1352
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 1373
    :cond_2
    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/String;

    const/4 p4, 0x0

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "Search Email returned "

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    aput-object p3, p0, p4

    invoke-virtual {v2, p0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/email/mail/DeviceAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1389
    :cond_3
    :goto_3
    const/4 p0, 0x0

    goto :goto_2

    .line 1375
    :catch_0
    move-exception p0

    .line 1377
    const-string p1, "EasSyncService"

    invoke-virtual {v2, p1, p0}, Lcom/android/exchange/EasSyncService;->userLog(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_3

    .line 1379
    :catch_1
    move-exception p0

    .line 1381
    new-instance p0, Lcom/android/exchange/provider/EmailResult;

    invoke-direct {p0}, Lcom/android/exchange/provider/EmailResult;-><init>()V

    .line 1382
    const/16 p3, 0xd

    iput p3, p0, Lcom/android/exchange/provider/EmailResult;->result:I

    .line 1383
    iget-wide p3, v0, Lcom/android/email/provider/EmailContent$Account;->mId:J

    sget p5, Lcom/android/email/provider/EmailContent$Account;->DEVICE_IS_BLOCKED:I

    invoke-static {p3, p4, p5}, Lcom/android/exchange/SyncManager;->blockDevice(JI)V

    .line 1384
    invoke-static {p1, p2}, Lcom/android/exchange/SyncManager;->stopAccountSyncs(J)V

    goto :goto_2
.end method

.method public static searchGal(Landroid/content/Context;JLjava/lang/String;ZI)Lcom/android/exchange/provider/GalResult;
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v0, ""

    .line 1409
    invoke-static {p1, p2}, Lcom/android/exchange/SyncManager;->getAccountById(J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v0

    .line 1410
    if-eqz v0, :cond_5

    .line 1411
    iget-wide v1, v0, Lcom/android/email/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    invoke-static {p0, v1, v2}, Lcom/android/email/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$HostAuth;

    move-result-object v1

    .line 1412
    new-instance v2, Lcom/android/exchange/EasSyncService;

    const-string v3, "%GalLookupk%"

    invoke-direct {v2, v3}, Lcom/android/exchange/EasSyncService;-><init>(Ljava/lang/String;)V

    .line 1414
    :try_start_0
    iput-object p0, v2, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    .line 1415
    iget-object v3, v1, Lcom/android/email/provider/EmailContent$HostAuth;->mAddress:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/exchange/EasSyncService;->mHostAddress:Ljava/lang/String;

    .line 1416
    iget-object v3, v1, Lcom/android/email/provider/EmailContent$HostAuth;->mLogin:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/exchange/EasSyncService;->mUserName:Ljava/lang/String;

    .line 1417
    iget-object v3, v1, Lcom/android/email/provider/EmailContent$HostAuth;->mPassword:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/exchange/EasSyncService;->mPassword:Ljava/lang/String;

    .line 1418
    iget v3, v1, Lcom/android/email/provider/EmailContent$HostAuth;->mFlags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    move v3, v8

    :goto_0
    iput-boolean v3, v2, Lcom/android/exchange/EasSyncService;->mSsl:Z

    .line 1419
    iget v1, v1, Lcom/android/email/provider/EmailContent$HostAuth;->mFlags:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    move v1, v8

    :goto_1
    iput-boolean v1, v2, Lcom/android/exchange/EasSyncService;->mTrustSsl:Z

    .line 1420
    invoke-static {}, Lcom/android/exchange/SyncManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/android/exchange/EasSyncService;->mDeviceId:Ljava/lang/String;

    .line 1421
    iput-object v0, v2, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    .line 1423
    sget-wide v0, Lcom/android/exchange/SyncManager;->MAILBOX_DUMMY_GALSEARCH:J

    iput-wide v0, v2, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    .line 1425
    new-instance v0, Lcom/android/exchange/adapter/Serializer;

    invoke-direct {v0}, Lcom/android/exchange/adapter/Serializer;-><init>()V

    .line 1426
    const/16 v1, 0x3c5

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    const/16 v3, 0x3c7

    invoke-virtual {v1, v3}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1427
    const/16 v1, 0x3c8

    const-string v3, "GAL"

    invoke-virtual {v0, v1, v3}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    const/16 v3, 0x3c9

    invoke-virtual {v1, v3, p3}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1428
    const/16 v1, 0x3ca

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1430
    add-int/lit8 v1, p5, 0x14

    .line 1432
    if-eqz p4, :cond_4

    .line 1434
    const/16 v3, 0x3cb

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1441
    :goto_2
    invoke-virtual {v0}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->done()V

    .line 1444
    sget-boolean v1, Lcom/android/exchange/Eas;->PARSER_LOG:Z

    if-eqz v1, :cond_0

    .line 1445
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "searchGal(): Wbxml:"

    aput-object v4, v1, v3

    invoke-virtual {v2, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 1446
    invoke-virtual {v0}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v1

    .line 1447
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1448
    new-instance v1, Lcom/android/exchange/adapter/LogAdapter;

    iget-object v4, v2, Lcom/android/exchange/EasSyncService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    invoke-direct {v1, v4, v2}, Lcom/android/exchange/adapter/LogAdapter;-><init>(Lcom/android/email/provider/EmailContent$Mailbox;Lcom/android/exchange/EasSyncService;)V

    .line 1449
    invoke-virtual {v1, v3}, Lcom/android/exchange/adapter/LogAdapter;->parse(Ljava/io/InputStream;)Z

    .line 1453
    :cond_0
    const-string v1, "Search"

    invoke-virtual {v0}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/android/exchange/EasSyncService;->sendHttpClientPost(Ljava/lang/String;[B)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 1454
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    .line 1457
    sget-boolean v3, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v3, :cond_1

    .line 1458
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "searchGal() Search command response code:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 1462
    :cond_1
    const/16 v3, 0xc8

    if-ne v1, v3, :cond_6

    .line 1463
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 1464
    new-instance v1, Lcom/android/exchange/adapter/GalParser;

    invoke-direct {v1, v0, v2}, Lcom/android/exchange/adapter/GalParser;-><init>(Ljava/io/InputStream;Lcom/android/exchange/EasSyncService;)V

    .line 1465
    invoke-virtual {v1}, Lcom/android/exchange/adapter/GalParser;->parse()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1467
    invoke-virtual {v1}, Lcom/android/exchange/adapter/GalParser;->getGalResult()Lcom/android/exchange/provider/GalResult;

    move-result-object v0

    .line 1479
    :goto_3
    return-object v0

    :cond_2
    move v3, v7

    .line 1418
    goto/16 :goto_0

    :cond_3
    move v1, v7

    .line 1419
    goto/16 :goto_1

    .line 1438
    :cond_4
    const/16 v1, 0x3cb

    const-string v3, "0-19"

    invoke-virtual {v0, v1, v3}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 1474
    :catch_0
    move-exception v0

    .line 1476
    new-array v1, v8, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GAL lookup exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v7

    invoke-virtual {v2, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 1479
    :cond_5
    :goto_4
    const/4 v0, 0x0

    goto :goto_3

    .line 1472
    :cond_6
    const/4 v0, 0x1

    :try_start_1
    new-array v0, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GAL lookup returned "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-virtual {v2, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4
.end method

.method private sendMeetingResponseMail(Lcom/android/email/provider/EmailContent$Message;I)V
    .locals 12
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x1

    const-string v11, "attendeeRelationship"

    const-string v10, "attendeeEmail"

    const-string v8, "DTSTAMP"

    .line 2090
    new-instance v0, Lcom/android/email/mail/PackedString;

    iget-object v1, p1, Lcom/android/email/provider/EmailContent$Message;->mMeetingInfo:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/android/email/mail/PackedString;-><init>(Ljava/lang/String;)V

    .line 2091
    if-nez v0, :cond_1

    .line 2155
    :cond_0
    :goto_0
    return-void

    .line 2095
    :cond_1
    const-string v1, "ORGMAIL"

    invoke-virtual {v0, v1}, Lcom/android/email/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/email/mail/Address;->parse(Ljava/lang/String;)[Lcom/android/email/mail/Address;

    move-result-object v1

    .line 2097
    array-length v2, v1

    if-ne v2, v9, :cond_0

    .line 2098
    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/android/email/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 2100
    const-string v2, "DTSTAMP"

    invoke-virtual {v0, v8}, Lcom/android/email/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2101
    const-string v3, "DTSTART"

    invoke-virtual {v0, v3}, Lcom/android/email/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2102
    const-string v4, "DTEND"

    invoke-virtual {v0, v4}, Lcom/android/email/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2106
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 2107
    new-instance v6, Landroid/content/Entity;

    invoke-direct {v6, v5}, Landroid/content/Entity;-><init>(Landroid/content/ContentValues;)V

    .line 2110
    const-string v7, "DTSTAMP"

    invoke-static {v2}, Lcom/android/exchange/utility/CalendarUtilities;->convertEmailDateTimeToCalendarDateTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v8, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2112
    const-string v2, "dtstart"

    invoke-static {v3}, Lcom/android/email/Utility;->parseEmailDateTimeToMillis(Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2113
    const-string v2, "dtend"

    invoke-static {v4}, Lcom/android/email/Utility;->parseEmailDateTimeToMillis(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2114
    const-string v2, "eventLocation"

    const-string v3, "LOC"

    invoke-virtual {v0, v3}, Lcom/android/email/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2115
    const-string v2, "title"

    const-string v3, "TITLE"

    invoke-virtual {v0, v3}, Lcom/android/email/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2116
    const-string v2, "organizer"

    invoke-virtual {v5, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2119
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 2120
    const-string v3, "attendeeRelationship"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v11, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2122
    const-string v3, "attendeeEmail"

    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v3, v3, Lcom/android/email/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v2, v10, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2123
    sget-object v3, Landroid/provider/Calendar$Attendees;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v3, v2}, Landroid/content/Entity;->addSubValue(Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 2126
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 2127
    const-string v3, "attendeeRelationship"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v11, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2129
    const-string v3, "attendeeEmail"

    invoke-virtual {v2, v10, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2130
    sget-object v1, Landroid/provider/Calendar$Attendees;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v1, v2}, Landroid/content/Entity;->addSubValue(Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 2136
    packed-switch p2, :pswitch_data_0

    .line 2145
    :pswitch_0
    const/16 v1, 0x100

    .line 2148
    :goto_1
    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    const-string v3, "UID"

    invoke-virtual {v0, v3}, Lcom/android/email/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-static {v2, v6, v1, v0, v3}, Lcom/android/exchange/utility/CalendarUtilities;->createMessageForEntity(Landroid/content/Context;Landroid/content/Entity;ILjava/lang/String;Lcom/android/email/provider/EmailContent$Account;)Lcom/android/email/provider/EmailContent$Message;

    move-result-object v0

    .line 2152
    if-eqz v0, :cond_0

    .line 2153
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v2, v2, Lcom/android/email/provider/EmailContent$Account;->mId:J

    invoke-static {v1, v2, v3, v0}, Lcom/android/exchange/EasOutboxService;->sendMessage(Landroid/content/Context;JLcom/android/email/provider/EmailContent$Message;)V

    goto/16 :goto_0

    .line 2138
    :pswitch_1
    const/16 v1, 0x40

    .line 2139
    goto :goto_1

    .line 2141
    :pswitch_2
    const/16 v1, 0x80

    .line 2142
    goto :goto_1

    .line 2136
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
    .line 659
    invoke-interface {p2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 660
    .local v4, supportedVersions:Ljava/lang/String;
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "Server supports versions: "

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v4, v7, v8

    invoke-virtual {p0, v7}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 661
    const-string v7, ","

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 662
    .local v5, supportedVersionsArray:[Ljava/lang/String;
    const/4 v3, 0x0

    .line 664
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

    .line 665
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

    if-nez v7, :cond_0

    const-string v7, "14.0"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "14.1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 675
    :cond_0
    move-object v3, v6

    .line 664
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 680
    .end local v6           #version:Ljava/lang/String;
    :cond_2
    if-nez v3, :cond_3

    .line 681
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

    .line 682
    new-instance v7, Lcom/android/email/mail/MessagingException;

    const/16 v8, 0x9

    invoke-direct {v7, v8}, Lcom/android/email/mail/MessagingException;-><init>(I)V

    throw v7

    .line 684
    :cond_3
    iput-object v3, p1, Lcom/android/exchange/EasSyncService;->mProtocolVersion:Ljava/lang/String;

    .line 685
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    iput-object v7, p1, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    .line 686
    iget-object v7, p1, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    if-eqz v7, :cond_4

    .line 687
    iget-object v7, p1, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iput-object v3, v7, Lcom/android/email/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    .line 690
    :cond_4
    iget-object v7, p1, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    sput-wide v7, Lcom/android/exchange/EasSyncService;->protocolVersion:D

    .line 693
    return-void
.end method

.method private shutdownConnectionManager()V
    .locals 1

    .prologue
    .line 2479
    sget-object v0, Lcom/android/exchange/SyncManager;->mClientConnectionManager:Lorg/apache/http/conn/ClientConnectionManager;

    if-eqz v0, :cond_0

    .line 2480
    invoke-static {}, Lcom/android/exchange/SyncManager;->newClientConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 2481
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/android/exchange/SyncManager;->mClientConnectionManager:Lorg/apache/http/conn/ClientConnectionManager;

    .line 2482
    return-void
.end method

.method private shutdownConnectionManagerForLoadMore()V
    .locals 2

    .prologue
    .line 2486
    sget-object v0, Lcom/android/exchange/SyncManager;->lmClientConnectionManager:Lorg/apache/http/conn/ClientConnectionManager;

    if-eqz v0, :cond_0

    .line 2487
    const-string v0, "Email"

    const-string v1, "shutdownConnectionManagerForLoadMore"

    invoke-static {v0, v1}, Lcom/android/exchange/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2488
    invoke-static {}, Lcom/android/exchange/SyncManager;->getClientConnectionManagerForLoadMore()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 2490
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/android/exchange/SyncManager;->lmClientConnectionManager:Lorg/apache/http/conn/ClientConnectionManager;

    .line 2491
    return-void
.end method

.method private sleep(JZ)V
    .locals 4
    .parameter "ms"
    .parameter "runAsleep"

    .prologue
    .line 3894
    if-eqz p3, :cond_0

    .line 3895
    iget-wide v0, p0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    const-wide/16 v2, 0x1388

    add-long/2addr v2, p1

    invoke-static {v0, v1, v2, v3}, Lcom/android/exchange/SyncManager;->runAsleep(JJ)V

    .line 3898
    :cond_0
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3902
    if-eqz p3, :cond_1

    .line 3903
    iget-wide v0, p0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    :goto_0
    invoke-static {v0, v1}, Lcom/android/exchange/SyncManager;->runAwake(J)V

    .line 3906
    :cond_1
    return-void

    .line 3902
    :catchall_0
    move-exception v0

    if-eqz p3, :cond_2

    .line 3903
    iget-wide v1, p0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    invoke-static {v1, v2}, Lcom/android/exchange/SyncManager;->runAwake(J)V

    .line 3902
    :cond_2
    throw v0

    .line 3899
    :catch_0
    move-exception v0

    .line 3902
    if-eqz p3, :cond_1

    .line 3903
    iget-wide v0, p0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    goto :goto_0
.end method


# virtual methods
.method protected acknowledgeProvision(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "tempKey"
    .parameter "result"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3112
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/exchange/EasSyncService;->acknowledgeProvisionImpl(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected acknowledgeRemoteWipe(Ljava/lang/String;)V
    .locals 2
    .parameter "tempKey"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3107
    const-string v0, "1"

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/exchange/EasSyncService;->acknowledgeProvisionImpl(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 3108
    return-void
.end method

.method public activateDevice(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    const-string v3, "ExchangeActivation"

    .line 4767
    new-instance v0, Lcom/android/exchange/adapter/EasActivator;

    invoke-direct {v0, p1}, Lcom/android/exchange/adapter/EasActivator;-><init>(Landroid/content/Context;)V

    .line 4768
    invoke-virtual {v0}, Lcom/android/exchange/adapter/EasActivator;->actionActivateDevice()Ljava/lang/String;

    move-result-object v0

    .line 4769
    if-nez v0, :cond_0

    .line 4770
    const-string v1, "ExchangeActivation"

    const-string v1, "Activation fail"

    invoke-static {v3, v1}, Lcom/android/exchange/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4774
    :goto_0
    return-object v0

    .line 4772
    :cond_0
    const-string v1, "ExchangeActivation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activation succeed - key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/exchange/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public alarm()Z
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 465
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    move v0, v7

    .line 522
    :goto_0
    return v0

    .line 466
    :cond_0
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    .line 468
    new-array v1, v7, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "alarm() called for for thread:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mThread:Ljava/lang/Thread;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 471
    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 473
    :try_start_0
    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    .line 474
    if-eqz v2, :cond_6

    iget-boolean v3, p0, Lcom/android/exchange/EasSyncService;->commandFinished:Z

    if-nez v3, :cond_6

    .line 477
    sget-boolean v3, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v3, :cond_2

    .line 478
    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpPost;->getURI()Ljava/net/URI;

    move-result-object v3

    .line 479
    if-eqz v3, :cond_5

    .line 480
    invoke-virtual {v3}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v3

    .line 481
    if-nez v3, :cond_1

    .line 482
    const-string v3, "POST"

    .line 484
    :cond_1
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v5, 0x1

    const-string v6, ": Alert, aborting "

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object v3, v4, v5

    invoke-virtual {p0, v4}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 490
    :cond_2
    :goto_2
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/exchange/EasSyncService;->mPostAborted:Z

    .line 491
    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 497
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 501
    const-wide/16 v3, 0x2710

    :try_start_1
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 505
    :goto_3
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v1

    .line 506
    sget-boolean v3, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v3, :cond_3

    .line 507
    new-array v3, v7, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ": State = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Thread$State;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v8

    invoke-virtual {p0, v3}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 510
    :cond_3
    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 513
    :try_start_2
    sget-object v3, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    invoke-virtual {v3, v1}, Ljava/lang/Thread$State;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 514
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/exchange/EasSyncService;->mStop:Z

    .line 515
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 516
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Interrupting..."

    aput-object v3, v1, v2

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 518
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move v0, v8

    goto/16 :goto_0

    .line 468
    :cond_4
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 486
    :cond_5
    const/4 v3, 0x2

    :try_start_3
    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    const-string v5, ": Alert, no URI?"

    aput-object v5, v3, v4

    invoke-virtual {p0, v3}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    goto :goto_2

    .line 497
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 494
    :cond_6
    const/4 v0, 0x1

    :try_start_4
    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Alert, no pending POST"

    aput-object v3, v0, v2

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 495
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move v0, v7

    goto/16 :goto_0

    .line 520
    :cond_7
    :try_start_5
    monitor-exit v0

    move v0, v7

    .line 522
    goto/16 :goto_0

    .line 520
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v1

    .line 502
    :catch_0
    move-exception v1

    goto/16 :goto_3
.end method

.method protected canProvision()Lcom/android/exchange/adapter/ProvisionParser;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x387

    const/16 v8, 0x386

    const/4 v7, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 3000
    new-instance v0, Lcom/android/exchange/adapter/Serializer;

    invoke-direct {v0}, Lcom/android/exchange/adapter/Serializer;-><init>()V

    .line 3002
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    const-wide v3, 0x402c333333333333L

    cmpl-double v1, v1, v3

    if-ltz v1, :cond_3

    .line 3003
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->sendDeviceInfomationProvision(Landroid/content/Context;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v0

    .line 3004
    invoke-virtual {v0, v8}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 3005
    invoke-virtual {v0, v9}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    const/16 v2, 0x388

    invoke-direct {p0}, Lcom/android/exchange/EasSyncService;->getPolicyType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->done()V

    .line 3015
    :goto_0
    sget-boolean v1, Lcom/android/exchange/Eas;->PARSER_LOG:Z

    if-eqz v1, :cond_0

    .line 3016
    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "canProvision(): Wbxml:"

    aput-object v2, v1, v5

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 3017
    invoke-virtual {v0}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v1

    .line 3018
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 3019
    new-instance v1, Lcom/android/exchange/adapter/LogAdapter;

    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    invoke-direct {v1, v3, p0}, Lcom/android/exchange/adapter/LogAdapter;-><init>(Lcom/android/email/provider/EmailContent$Mailbox;Lcom/android/exchange/EasSyncService;)V

    .line 3020
    invoke-virtual {v1, v2}, Lcom/android/exchange/adapter/LogAdapter;->parse(Ljava/io/InputStream;)Z

    .line 3025
    :cond_0
    :try_start_0
    const-string v1, "Provision"

    invoke-virtual {v0}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/android/exchange/EasSyncService;->sendHttpClientPost(Ljava/lang/String;[B)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 3026
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    .line 3028
    sget-boolean v2, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v2, :cond_1

    .line 3029
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "canProvision(): Provision command response code:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v2}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 3033
    :cond_1
    const/16 v2, 0xc8

    if-ne v1, v2, :cond_a

    .line 3034
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 3035
    new-instance v1, Lcom/android/exchange/adapter/ProvisionParser;

    invoke-direct {v1, v0, p0}, Lcom/android/exchange/adapter/ProvisionParser;-><init>(Ljava/io/InputStream;Lcom/android/exchange/EasSyncService;)V

    .line 3036
    invoke-virtual {v1}, Lcom/android/exchange/adapter/ProvisionParser;->parse()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3040
    invoke-virtual {v1}, Lcom/android/exchange/adapter/ProvisionParser;->getPolicySet()Lcom/android/email/SecurityPolicy$PolicySet;

    move-result-object v0

    .line 3044
    if-eqz v0, :cond_4

    invoke-virtual {v1}, Lcom/android/exchange/adapter/ProvisionParser;->hasSupportablePolicySet()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v0

    if-eqz v0, :cond_4

    .line 3085
    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3086
    :try_start_1
    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    if-eqz v2, :cond_2

    .line 3087
    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 3088
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    .line 3090
    :cond_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move-object v0, v1

    .line 3095
    :goto_1
    return-object v0

    .line 3010
    :cond_3
    const/16 v1, 0x385

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 3011
    invoke-virtual {v0, v9}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    const/16 v2, 0x388

    invoke-direct {p0}, Lcom/android/exchange/EasSyncService;->getPolicyType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->done()V

    goto/16 :goto_0

    .line 3049
    :cond_4
    :try_start_2
    invoke-virtual {v1}, Lcom/android/exchange/adapter/ProvisionParser;->getRemoteWipe()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v0

    if-eqz v0, :cond_6

    .line 3085
    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3086
    :try_start_3
    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    if-eqz v2, :cond_5

    .line 3087
    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 3088
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    .line 3090
    :cond_5
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    move-object v0, v1

    .line 3050
    goto :goto_1

    .line 3054
    :cond_6
    :try_start_4
    invoke-virtual {v1}, Lcom/android/exchange/adapter/ProvisionParser;->getPolicyStatus()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_a

    .line 3056
    invoke-virtual {v1}, Lcom/android/exchange/adapter/ProvisionParser;->getPolicyKey()Ljava/lang/String;

    move-result-object v0

    const-string v2, "2"

    invoke-virtual {p0, v0, v2}, Lcom/android/exchange/EasSyncService;->acknowledgeProvision(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v0

    .line 3059
    if-eqz v0, :cond_8

    move-object v0, v1

    .line 3085
    :goto_2
    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 3086
    :try_start_5
    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    if-eqz v2, :cond_7

    .line 3087
    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 3088
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    .line 3090
    :cond_7
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0

    :cond_8
    move-object v0, v6

    .line 3059
    goto :goto_2

    .line 3085
    :catchall_1
    move-exception v0

    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 3086
    :try_start_6
    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    if-eqz v2, :cond_9

    .line 3087
    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 3088
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    .line 3090
    :cond_9
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 3085
    throw v0

    :cond_a
    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3086
    :try_start_7
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    if-eqz v1, :cond_b

    .line 3087
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 3088
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    .line 3090
    :cond_b
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    move-object v0, v6

    .line 3095
    goto/16 :goto_1

    .line 3090
    :catchall_2
    move-exception v0

    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v0

    :catchall_3
    move-exception v1

    :try_start_9
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v1

    :catchall_4
    move-exception v1

    :try_start_a
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    throw v1

    :catchall_5
    move-exception v1

    :try_start_b
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    throw v1
.end method

.method protected checkGzipRequired(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 2848
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

    .line 2857
    :cond_0
    const/4 v0, 0x1

    .line 2859
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public createUniqueFileInternal(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 1702
    if-nez p1, :cond_1

    .line 1703
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 1707
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1708
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 1710
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1711
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    move-object v0, v1

    .line 1735
    :goto_1
    return-object v0

    .line 1705
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 1715
    :cond_2
    const/16 v1, 0x2e

    invoke-virtual {p2, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 1717
    const-string v2, ""

    .line 1718
    const/4 v3, -0x1

    if-eq v1, v3, :cond_5

    .line 1719
    const/4 v2, 0x0

    invoke-virtual {p2, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1720
    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1722
    :goto_2
    const/4 v3, 0x2

    :goto_3
    const v4, 0x7fffffff

    if-ge v3, v4, :cond_4

    .line 1726
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 1727
    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const/16 v6, 0x2d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1728
    new-instance v5, Ljava/io/File;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1731
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_3

    move-object v0, v5

    .line 1732
    goto :goto_1

    .line 1722
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1735
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    :cond_5
    move-object v1, v2

    move-object v2, p2

    goto :goto_2
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
    .line 2595
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
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v0, "jykim : finally, mStop and isPingCommand == false"

    const-string v0, "EasSyncService"

    .line 2610
    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2611
    :try_start_0
    iput-object p2, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    .line 2612
    add-int/lit16 v1, p3, 0x2710

    int-to-long v1, v1

    .line 2613
    if-eqz p4, :cond_1

    .line 2614
    iget-wide v3, p0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    invoke-static {v3, v4, v1, v2}, Lcom/android/exchange/SyncManager;->runAsleep(JJ)V

    .line 2618
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2620
    :try_start_1
    const-string v0, "EasSyncService"

    const-string v1, "jykim : before client.execute(method) "

    invoke-static {v0, v1}, Lcom/android/exchange/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2621
    invoke-interface {p1, p2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 2639
    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2640
    :try_start_2
    iget-boolean v2, p0, Lcom/android/exchange/EasSyncService;->mStop:Z

    if-nez v2, :cond_6

    .line 2647
    if-eqz p4, :cond_7

    .line 2648
    iget-wide v2, p0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    invoke-static {v2, v3}, Lcom/android/exchange/SyncManager;->runAwake(J)V

    .line 2657
    :goto_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/exchange/EasSyncService;->commandFinished:Z

    .line 2658
    if-eqz p5, :cond_0

    .line 2659
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    .line 2660
    :cond_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 2621
    return-object v0

    .line 2616
    :cond_1
    :try_start_3
    iget-wide v3, p0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    invoke-static {v3, v4, v1, v2}, Lcom/android/exchange/SyncManager;->setWatchdogAlarm(JJ)V

    goto :goto_0

    .line 2618
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 2624
    :catch_0
    move-exception v0

    .line 2627
    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Timeout waiting for connection"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2628
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "executePostWithTimeout(): Timeout Waiting for Connection. Shutting down ConnectionManager"

    aput-object v3, v1, v2

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 2629
    invoke-static {}, Lcom/android/exchange/SyncManager;->shutdownConnectionManager()V

    .line 2631
    :cond_2
    const-string v1, "EasSyncService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "jykim : IOException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/exchange/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2632
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2639
    :catchall_1
    move-exception v0

    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2640
    :try_start_5
    iget-boolean v2, p0, Lcom/android/exchange/EasSyncService;->mStop:Z

    if-nez v2, :cond_4

    .line 2647
    if-eqz p4, :cond_5

    .line 2648
    iget-wide v2, p0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    invoke-static {v2, v3}, Lcom/android/exchange/SyncManager;->runAwake(J)V

    .line 2657
    :goto_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/exchange/EasSyncService;->commandFinished:Z

    .line 2658
    if-eqz p5, :cond_3

    .line 2659
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    .line 2660
    :cond_3
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 2639
    throw v0

    .line 2634
    :catch_1
    move-exception v0

    .line 2635
    :try_start_6
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 2660
    :catchall_2
    move-exception v0

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v0

    .line 2654
    :cond_4
    :try_start_8
    const-string v2, "EasSyncService"

    const-string v3, "jykim : finally, mStop and isPingCommand == false"

    invoke-static {v2, v3}, Lcom/android/exchange/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2650
    :cond_5
    const-string v2, "EasSyncService"

    const-string v3, "jykim : finally, mStop and isPingCommand == false"

    invoke-static {v2, v3}, Lcom/android/exchange/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2651
    iget-wide v2, p0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    invoke-static {v2, v3}, Lcom/android/exchange/SyncManager;->clearWatchdogAlarm(J)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_2

    .line 2660
    :catchall_3
    move-exception v0

    :try_start_9
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v0

    .line 2654
    :cond_6
    :try_start_a
    const-string v2, "EasSyncService"

    const-string v3, "jykim : finally, mStop and isPingCommand == false"

    invoke-static {v2, v3}, Lcom/android/exchange/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2650
    :cond_7
    const-string v2, "EasSyncService"

    const-string v3, "jykim : finally, mStop and isPingCommand == false"

    invoke-static {v2, v3}, Lcom/android/exchange/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2651
    iget-wide v2, p0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    invoke-static {v2, v3}, Lcom/android/exchange/SyncManager;->clearWatchdogAlarm(J)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto/16 :goto_1
.end method

.method protected fetchAttachment(Lcom/android/exchange/PartRequest;)V
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/email/mail/DeviceAccessException;
        }
    .end annotation

    .prologue
    .line 1785
    if-eqz p1, :cond_0

    .line 1787
    iget-object v6, p1, Lcom/android/exchange/PartRequest;->mAttachment:Lcom/android/email/provider/EmailContent$Attachment;

    .line 1788
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-wide v1, v6, Lcom/android/email/provider/EmailContent$Attachment;->mMessageKey:J

    invoke-static {v0, v1, v2}, Lcom/android/email/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Message;

    move-result-object v7

    .line 1790
    iget-wide v0, v7, Lcom/android/email/provider/EmailContent$Message;->mId:J

    iput-wide v0, p0, Lcom/android/exchange/EasSyncService;->mMsgIdToFetchAttachment:J

    .line 1791
    iget-wide v0, v6, Lcom/android/email/provider/EmailContent$Attachment;->mId:J

    iput-wide v0, p0, Lcom/android/exchange/EasSyncService;->mAttIdToFetchAttachment:J

    .line 1793
    iget-wide v1, v7, Lcom/android/email/provider/EmailContent$Message;->mId:J

    iget-wide v3, v6, Lcom/android/email/provider/EmailContent$Attachment;->mId:J

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/exchange/EasSyncService;->doProgressCallback(JJI)V

    .line 1795
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 1796
    if-eqz v0, :cond_2

    .line 1797
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/SecurityPolicy;->getAdminComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getMaxAttachmentSize(Landroid/content/ComponentName;)I

    move-result v1

    int-to-long v1, v1

    .line 1798
    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/email/SecurityPolicy;->getAdminComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->getAttachmentsEnabled(Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1800
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->TAG:Ljava/lang/String;

    const-string v1, "IT SecurityPolicy: Attachments disabled"

    invoke-static {v0, v1}, Lcom/android/exchange/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1801
    iget-wide v1, v7, Lcom/android/email/provider/EmailContent$Message;->mId:J

    iget-wide v3, v6, Lcom/android/email/provider/EmailContent$Attachment;->mId:J

    const/16 v5, 0x17

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/exchange/EasSyncService;->doStatusCallback(JJI)V

    .line 1910
    :cond_0
    :goto_0
    return-void

    .line 1803
    :cond_1
    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-lez v0, :cond_2

    iget-wide v3, v6, Lcom/android/email/provider/EmailContent$Attachment;->mSize:J

    cmp-long v0, v3, v1

    if-lez v0, :cond_2

    .line 1805
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IT SecurityPolicy: Attachment Maxsize exceeded. request:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v6, Lcom/android/email/provider/EmailContent$Attachment;->mSize:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", max="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/exchange/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1806
    iget-wide v1, v7, Lcom/android/email/provider/EmailContent$Message;->mId:J

    iget-wide v3, v6, Lcom/android/email/provider/EmailContent$Attachment;->mId:J

    const/16 v5, 0x17

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/exchange/EasSyncService;->doStatusCallback(JJI)V

    goto :goto_0

    .line 1812
    :cond_2
    const/4 v8, 0x0

    .line 1814
    :try_start_0
    iget-object v0, v6, Lcom/android/email/provider/EmailContent$Attachment;->mLocation:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/exchange/EasSyncService;->makeFetchAttachmentRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Lcom/android/email/mail/DeviceAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1821
    :goto_1
    if-eqz v0, :cond_8

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_8

    .line 1824
    sget-boolean v2, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v2, :cond_3

    .line 1825
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAttachment(): GetAttachment command http response code:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-virtual {p0, v2}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 1828
    :cond_3
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 1829
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/exchange/EasSyncService;->mAttSize:J

    .line 1830
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 1832
    new-instance v1, Lcom/android/exchange/adapter/ItemOperationsParser;

    new-instance v2, Lcom/android/exchange/adapter/ItemOperationsAdapter;

    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    invoke-direct {v2, v3, p0}, Lcom/android/exchange/adapter/ItemOperationsAdapter;-><init>(Lcom/android/email/provider/EmailContent$Mailbox;Lcom/android/exchange/EasSyncService;)V

    invoke-direct {v1, v0, v2}, Lcom/android/exchange/adapter/ItemOperationsParser;-><init>(Ljava/io/InputStream;Lcom/android/exchange/adapter/AbstractSyncAdapter;)V

    .line 1834
    :try_start_1
    iput-object p1, p0, Lcom/android/exchange/EasSyncService;->mPendingRequest:Lcom/android/exchange/PartRequest;

    .line 1856
    iget-object v0, p1, Lcom/android/exchange/PartRequest;->mDestination:Ljava/lang/String;

    if-eqz v0, :cond_6

    new-instance v0, Ljava/io/File;

    iget-object v2, p1, Lcom/android/exchange/PartRequest;->mDestination:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1860
    :goto_2
    if-eqz v0, :cond_5

    .line 1862
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    .line 1863
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1864
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 1866
    :cond_4
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1868
    invoke-virtual {v1, v2}, Lcom/android/exchange/adapter/ItemOperationsParser;->setOutputStream(Ljava/io/OutputStream;)V

    .line 1869
    invoke-virtual {v1, p0}, Lcom/android/exchange/adapter/ItemOperationsParser;->setObserver(Ljava/util/Observer;)V

    .line 1870
    invoke-virtual {v1}, Lcom/android/exchange/adapter/ItemOperationsParser;->parse()Z

    .line 1872
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 1873
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 1876
    invoke-virtual {v6}, Lcom/android/email/provider/EmailContent$Attachment;->isSaved()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1877
    iget-object v1, p1, Lcom/android/exchange/PartRequest;->mContentUriString:Ljava/lang/String;

    if-eqz v1, :cond_7

    iget-object v0, p1, Lcom/android/exchange/PartRequest;->mContentUriString:Ljava/lang/String;

    .line 1880
    :goto_3
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1881
    const-string v2, "contentUri"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1882
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v0, v1}, Lcom/android/email/provider/EmailContent$Attachment;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 1883
    iget-wide v1, v7, Lcom/android/email/provider/EmailContent$Message;->mId:J

    iget-wide v3, v6, Lcom/android/email/provider/EmailContent$Attachment;->mId:J

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/exchange/EasSyncService;->doStatusCallback(JJI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    .line 1895
    :cond_5
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mPendingRequest:Lcom/android/exchange/PartRequest;

    .line 1896
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/exchange/EasSyncService;->mMsgIdToFetchAttachment:J

    .line 1897
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/exchange/EasSyncService;->mAttIdToFetchAttachment:J

    .line 1898
    :goto_4
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/exchange/EasSyncService;->mAttSize:J

    goto/16 :goto_0

    .line 1815
    :catch_0
    move-exception v0

    .line 1816
    iget-wide v1, v7, Lcom/android/email/provider/EmailContent$Message;->mId:J

    iget-wide v3, v6, Lcom/android/email/provider/EmailContent$Attachment;->mId:J

    const/4 v5, 0x3

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/exchange/EasSyncService;->doStatusCallback(JJI)V

    move-object v0, v8

    goto/16 :goto_1

    .line 1856
    :cond_6
    :try_start_2
    iget-object v0, p1, Lcom/android/exchange/PartRequest;->mDestination:Ljava/lang/String;

    iget-object v2, v6, Lcom/android/email/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, Lcom/android/exchange/EasSyncService;->createUniqueFileInternal(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    goto :goto_2

    .line 1877
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    goto :goto_3

    .line 1892
    :catch_1
    move-exception v0

    .line 1893
    :try_start_3
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->TAG:Ljava/lang/String;

    const-string v1, "Fetching attachment is Out of Memory"

    invoke-static {v0, v1}, Lcom/android/exchange/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1895
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mPendingRequest:Lcom/android/exchange/PartRequest;

    .line 1896
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/exchange/EasSyncService;->mMsgIdToFetchAttachment:J

    .line 1897
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/exchange/EasSyncService;->mAttIdToFetchAttachment:J

    goto :goto_4

    .line 1895
    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/exchange/EasSyncService;->mPendingRequest:Lcom/android/exchange/PartRequest;

    .line 1896
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/exchange/EasSyncService;->mMsgIdToFetchAttachment:J

    .line 1897
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/exchange/EasSyncService;->mAttIdToFetchAttachment:J

    .line 1898
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/exchange/EasSyncService;->mAttSize:J

    .line 1895
    throw v0

    .line 1904
    :cond_8
    iget-wide v1, v7, Lcom/android/email/provider/EmailContent$Message;->mId:J

    iget-wide v3, v6, Lcom/android/email/provider/EmailContent$Attachment;->mId:J

    const/16 v5, 0x10

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/exchange/EasSyncService;->doStatusCallback(JJI)V

    goto/16 :goto_0
.end method

.method protected getAttachment(Lcom/android/exchange/PartRequest;)V
    .locals 14
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1926
    :try_start_0
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v2, 0x402c

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_1

    .line 1927
    invoke-virtual {p0, p1}, Lcom/android/exchange/EasSyncService;->fetchAttachment(Lcom/android/exchange/PartRequest;)V
    :try_end_0
    .catch Lcom/android/email/mail/DeviceAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2081
    :cond_0
    :goto_0
    return-void

    .line 1930
    :catch_0
    move-exception v0

    .line 1931
    iget-wide v1, p1, Lcom/android/exchange/PartRequest;->mMessageId:J

    iget-object v0, p1, Lcom/android/exchange/PartRequest;->mAttachment:Lcom/android/email/provider/EmailContent$Attachment;

    iget-wide v3, v0, Lcom/android/email/provider/EmailContent$Attachment;->mId:J

    const/4 v5, 0x3

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/exchange/EasSyncService;->doStatusCallback(JJI)V

    goto :goto_0

    .line 1938
    :cond_1
    iget-object v6, p1, Lcom/android/exchange/PartRequest;->mAttachment:Lcom/android/email/provider/EmailContent$Attachment;

    .line 1939
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-wide v1, v6, Lcom/android/email/provider/EmailContent$Attachment;->mMessageKey:J

    invoke-static {v0, v1, v2}, Lcom/android/email/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Message;

    move-result-object v7

    .line 1940
    iget-wide v1, v7, Lcom/android/email/provider/EmailContent$Message;->mId:J

    iget-wide v3, v6, Lcom/android/email/provider/EmailContent$Attachment;->mId:J

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/exchange/EasSyncService;->doProgressCallback(JJI)V

    .line 1943
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 1944
    if-eqz v0, :cond_3

    .line 1945
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/SecurityPolicy;->getAdminComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getMaxAttachmentSize(Landroid/content/ComponentName;)I

    move-result v1

    int-to-long v1, v1

    .line 1946
    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/email/SecurityPolicy;->getAdminComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->getAttachmentsEnabled(Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1948
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->TAG:Ljava/lang/String;

    const-string v1, "IT SecurityPolicy: Attachments disabled"

    invoke-static {v0, v1}, Lcom/android/exchange/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1949
    iget-wide v1, v7, Lcom/android/email/provider/EmailContent$Message;->mId:J

    iget-wide v3, v6, Lcom/android/email/provider/EmailContent$Attachment;->mId:J

    const/16 v5, 0x17

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/exchange/EasSyncService;->doStatusCallback(JJI)V

    goto :goto_0

    .line 1951
    :cond_2
    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-lez v0, :cond_3

    iget-wide v3, v6, Lcom/android/email/provider/EmailContent$Attachment;->mSize:J

    cmp-long v0, v3, v1

    if-lez v0, :cond_3

    .line 1953
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IT SecurityPolicy: Attachment Maxsize exceeded. request:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v6, Lcom/android/email/provider/EmailContent$Attachment;->mSize:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", max="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/exchange/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1954
    iget-wide v1, v7, Lcom/android/email/provider/EmailContent$Message;->mId:J

    iget-wide v3, v6, Lcom/android/email/provider/EmailContent$Attachment;->mId:J

    const/16 v5, 0x17

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/exchange/EasSyncService;->doStatusCallback(JJI)V

    goto/16 :goto_0

    .line 1963
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GetAttachment&AttachmentName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v6, Lcom/android/email/provider/EmailContent$Attachment;->mLocation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v6, Lcom/android/email/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1964
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->TAG:Ljava/lang/String;

    const-string v2, "getAttachment http request start"

    invoke-static {v1, v2}, Lcom/android/exchange/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1965
    const/4 v1, 0x0

    const v2, 0xea60

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/exchange/EasSyncService;->sendHttpClientPost(Ljava/lang/String;Lorg/apache/http/HttpEntity;I)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 1966
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->TAG:Ljava/lang/String;

    const-string v2, "getattachment http response received"

    invoke-static {v1, v2}, Lcom/android/exchange/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1969
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    .line 1972
    sget-boolean v2, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v2, :cond_4

    .line 1973
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAttachment(): GetAttachment command http response code:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v2}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 1977
    :cond_4
    const/16 v2, 0xc8

    if-ne v1, v2, :cond_d

    .line 1978
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 1979
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v1

    long-to-int v8, v1

    .line 1980
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    .line 1983
    if-eqz v1, :cond_e

    .line 1985
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v0

    .line 1987
    if-eqz v0, :cond_e

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "gzip"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1990
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->TAG:Ljava/lang/String;

    const-string v2, "getAttachment unzip start"

    invoke-static {v0, v2}, Lcom/android/exchange/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1991
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1992
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->TAG:Ljava/lang/String;

    const-string v2, "getAttachment unzip end"

    invoke-static {v1, v2}, Lcom/android/exchange/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v9, v0

    .line 1999
    :goto_1
    iget-object v0, p1, Lcom/android/exchange/PartRequest;->mDestination:Ljava/lang/String;

    if-eqz v0, :cond_7

    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Lcom/android/exchange/PartRequest;->mDestination:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v10, v0

    .line 2002
    :goto_2
    if-eqz v10, :cond_0

    .line 2004
    invoke-virtual {v10}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 2005
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_5

    .line 2006
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 2008
    :cond_5
    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 2011
    if-eqz v8, :cond_6

    .line 2013
    :try_start_1
    iput-object p1, p0, Lcom/android/exchange/EasSyncService;->mPendingRequest:Lcom/android/exchange/PartRequest;

    .line 2014
    const/16 v0, 0x4000

    new-array v12, v0, [B

    .line 2018
    const/4 v0, 0x0

    .line 2019
    const-string v1, "Attachment content-length: "

    invoke-virtual {p0, v1, v8}, Lcom/android/exchange/EasSyncService;->userLog(Ljava/lang/String;I)V

    .line 2021
    :goto_3
    const/4 v1, 0x0

    const/16 v2, 0x4000

    invoke-virtual {v9, v12, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 2024
    if-gez v1, :cond_8

    .line 2025
    const-string v1, "Attachment load reached EOF, totalRead: "

    invoke-virtual {p0, v1, v0}, Lcom/android/exchange/EasSyncService;->userLog(Ljava/lang/String;I)V

    .line 2050
    :goto_4
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "gzipAttachment: totalRead= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2053
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mPendingRequest:Lcom/android/exchange/PartRequest;

    .line 2056
    :cond_6
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->flush()V

    .line 2057
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V

    .line 2060
    invoke-virtual {v6}, Lcom/android/email/provider/EmailContent$Attachment;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2061
    iget-object v0, p1, Lcom/android/exchange/PartRequest;->mContentUriString:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, p1, Lcom/android/exchange/PartRequest;->mContentUriString:Ljava/lang/String;

    .line 2064
    :goto_5
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2065
    const-string v2, "contentUri"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2066
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v0, v1}, Lcom/android/email/provider/EmailContent$Attachment;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 2067
    iget-wide v1, v7, Lcom/android/email/provider/EmailContent$Message;->mId:J

    iget-wide v3, v6, Lcom/android/email/provider/EmailContent$Attachment;->mId:J

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/exchange/EasSyncService;->doStatusCallback(JJI)V

    goto/16 :goto_0

    .line 1999
    :cond_7
    iget-object v0, p1, Lcom/android/exchange/PartRequest;->mDestination:Ljava/lang/String;

    iget-object v1, v6, Lcom/android/email/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/android/exchange/EasSyncService;->createUniqueFileInternal(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    move-object v10, v0

    goto/16 :goto_2

    .line 2030
    :cond_8
    add-int v13, v0, v1

    .line 2033
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {v11, v12, v0, v1}, Ljava/io/FileOutputStream;->write([BII)V

    .line 2038
    if-lez v8, :cond_a

    instance-of v0, v9, Ljava/util/zip/GZIPInputStream;

    if-nez v0, :cond_a

    .line 2040
    if-le v13, v8, :cond_9

    .line 2041
    const-string v0, "totalRead is greater than attachment length?"

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->errorLog(Ljava/lang/String;)V

    move v0, v13

    .line 2042
    goto :goto_4

    .line 2044
    :cond_9
    mul-int/lit8 v0, v13, 0x64

    div-int v5, v0, v8

    .line 2045
    iget-wide v1, v7, Lcom/android/email/provider/EmailContent$Message;->mId:J

    iget-wide v3, v6, Lcom/android/email/provider/EmailContent$Attachment;->mId:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/exchange/EasSyncService;->doProgressCallback(JJI)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_a
    move v0, v13

    .line 2047
    goto/16 :goto_3

    .line 2053
    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/exchange/EasSyncService;->mPendingRequest:Lcom/android/exchange/PartRequest;

    throw v0

    .line 2061
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 2073
    :cond_c
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 2075
    iget-wide v1, v7, Lcom/android/email/provider/EmailContent$Message;->mId:J

    iget-wide v3, v6, Lcom/android/email/provider/EmailContent$Attachment;->mId:J

    const/16 v5, 0x11

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/exchange/EasSyncService;->doStatusCallback(JJI)V

    goto/16 :goto_0

    .line 2079
    :cond_d
    iget-wide v1, v7, Lcom/android/email/provider/EmailContent$Message;->mId:J

    iget-wide v3, v6, Lcom/android/email/provider/EmailContent$Attachment;->mId:J

    const/16 v5, 0x10

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/exchange/EasSyncService;->doStatusCallback(JJI)V

    goto/16 :goto_0

    :cond_e
    move-object v9, v1

    goto/16 :goto_1
.end method

.method public getCalendarFilterType()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "4"

    .line 4011
    const-string v0, "4"

    .line 4014
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget v0, v0, Lcom/android/email/provider/EmailContent$Account;->mCalendarSyncLookback:I

    packed-switch v0, :pswitch_data_0

    .line 4033
    :pswitch_0
    new-array v0, v1, [Ljava/lang/String;

    const-string v1, "getCalendarFilterType 5"

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 4034
    const-string v0, "4"

    move-object v0, v3

    .line 4039
    :goto_0
    return-object v0

    .line 4016
    :pswitch_1
    new-array v0, v1, [Ljava/lang/String;

    const-string v1, "getCalendarFilterType 1"

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 4017
    const-string v0, "0"

    goto :goto_0

    .line 4020
    :pswitch_2
    new-array v0, v1, [Ljava/lang/String;

    const-string v1, "getCalendarFilterType 2"

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 4021
    const-string v0, "5"

    goto :goto_0

    .line 4024
    :pswitch_3
    new-array v0, v1, [Ljava/lang/String;

    const-string v1, "getCalendarFilterType 3"

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 4025
    const-string v0, "6"

    goto :goto_0

    .line 4028
    :pswitch_4
    new-array v0, v1, [Ljava/lang/String;

    const-string v1, "getCalendarFilterType 4"

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 4029
    const-string v0, "7"

    goto :goto_0

    .line 4014
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

.method public getEmailFilter()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v1, "3"

    .line 3978
    const-string v0, "3"

    .line 3979
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget v0, v0, Lcom/android/email/provider/EmailContent$Account;->mSyncLookback:I

    packed-switch v0, :pswitch_data_0

    move-object v0, v1

    .line 4005
    :goto_0
    return-object v0

    .line 3981
    :pswitch_0
    const-string v0, "1"

    goto :goto_0

    .line 3985
    :pswitch_1
    const-string v0, "2"

    goto :goto_0

    .line 3989
    :pswitch_2
    const-string v0, "3"

    move-object v0, v1

    .line 3990
    goto :goto_0

    .line 3993
    :pswitch_3
    const-string v0, "4"

    goto :goto_0

    .line 3997
    :pswitch_4
    const-string v0, "5"

    goto :goto_0

    .line 4001
    :pswitch_5
    const-string v0, "0"

    goto :goto_0

    .line 3979
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

.method getTargetCollectionClassFromCursor(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 2884
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 2885
    const/16 v1, 0x42

    if-ne v0, v1, :cond_0

    .line 2886
    const-string v0, "Contacts"

    .line 2897
    :goto_0
    return-object v0

    .line 2887
    :cond_0
    const/16 v1, 0x41

    if-ne v0, v1, :cond_1

    .line 2888
    const-string v0, "Calendar"

    goto :goto_0

    .line 2890
    :cond_1
    const/16 v1, 0x43

    if-ne v0, v1, :cond_2

    .line 2891
    const-string v0, "Tasks"

    goto :goto_0

    .line 2893
    :cond_2
    const/16 v1, 0x45

    if-ne v0, v1, :cond_3

    .line 2895
    const-string v0, "Notes"

    goto :goto_0

    .line 2897
    :cond_3
    const-string v0, "Email"

    goto :goto_0
.end method

.method public getTasksFilterType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4045
    const-string v0, "8"

    .line 4047
    return-object v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 4

    .prologue
    .line 4870
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mDeviceTypeForUserAgent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "807"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4871
    const-string v1, "jykim"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUserAgent() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/exchange/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4872
    return-object v0
.end method

.method protected isAuthError(I)Z
    .locals 1
    .parameter "code"

    .prologue
    .line 580
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
    .line 590
    const/16 v0, 0x1c1

    if-eq p1, v0, :cond_0

    const/16 v0, 0x193

    if-ne p1, v0, :cond_1

    .line 592
    :cond_0
    const/4 v0, 0x1

    .line 595
    :goto_0
    return v0

    :cond_1
    iget-boolean v0, p0, Lcom/android/exchange/EasSyncService;->mEasNeedsProvisioning:Z

    goto :goto_0
.end method

.method protected isProvisionError(Ljava/io/InputStream;I)Z
    .locals 3
    .parameter "is"
    .parameter "code"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/DeviceAccessException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 602
    const/16 v1, 0x1c1

    if-eq p2, v1, :cond_0

    const/16 v1, 0x193

    if-ne p2, v1, :cond_1

    :cond_0
    move v1, v2

    .line 614
    :goto_0
    return v1

    .line 607
    :cond_1
    if-eqz p1, :cond_2

    :try_start_0
    new-instance v1, Lcom/android/exchange/adapter/FourteenProvisionParser;

    invoke-direct {v1, p1}, Lcom/android/exchange/adapter/FourteenProvisionParser;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1}, Lcom/android/exchange/adapter/FourteenProvisionParser;->checkForProvisioning()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    .line 608
    goto :goto_0

    .line 610
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 611
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 614
    .end local v0           #e:Ljava/io/IOException;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected makeFetchAttachmentRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpResponse;
    .locals 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/email/mail/DeviceAccessException;
        }
    .end annotation

    .prologue
    .line 1752
    const/4 v0, 0x0

    .line 1754
    if-eqz p1, :cond_1

    .line 1755
    new-instance v0, Lcom/android/exchange/adapter/Serializer;

    invoke-direct {v0}, Lcom/android/exchange/adapter/Serializer;-><init>()V

    .line 1757
    const/16 v1, 0x505

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    const/16 v2, 0x506

    invoke-virtual {v1, v2}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    const/16 v2, 0x507

    const-string v3, "Mailbox"

    invoke-virtual {v1, v2, v3}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    const/16 v2, 0x451

    invoke-virtual {v1, v2, p1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1762
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    const-wide/high16 v3, 0x402c

    cmpl-double v1, v1, v3

    if-ltz v1, :cond_0

    .line 1765
    const/16 v1, 0x508

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    const/16 v2, 0x514

    invoke-virtual {v1, v2, p2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    const/16 v2, 0x515

    invoke-virtual {v1, v2, p3}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 1770
    :cond_0
    invoke-virtual {v0}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->done()V

    .line 1773
    const-string v1, "ItemOperations"

    invoke-virtual {v0}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/android/exchange/EasSyncService;->sendHttpClientPost(Ljava/lang/String;[B)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 1776
    :cond_1
    return-object v0
.end method

.method parseAction(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/email/provider/EmailContent$HostAuth;)V
    .locals 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const-string v7, "Authorization"

    .line 1179
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 1181
    if-ne v0, v5, :cond_2

    .line 1237
    :cond_1
    return-void

    .line 1184
    :cond_2
    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Action"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1186
    :cond_3
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1187
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1188
    const-string v1, "Error"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1190
    invoke-virtual {p0, p1, p2}, Lcom/android/exchange/EasSyncService;->parseError(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/email/provider/EmailContent$HostAuth;)V

    goto :goto_0

    .line 1192
    :cond_4
    const-string v1, "Redirect"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1195
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mAutoDiscInfo:Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;

    invoke-static {v0}, Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;->access$100(Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;)I

    move-result v0

    if-ge v0, v5, :cond_0

    .line 1196
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mAutoDiscInfo:Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;

    invoke-static {v0}, Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;->access$108(Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;)I

    .line 1197
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mAutoDiscInfo:Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;

    iput-boolean v5, v0, Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;->isRedirectTagPresent:Z

    .line 1198
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1199
    aget-object v1, v0, v6

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exchange/EasSyncService;->mUserName:Ljava/lang/String;

    .line 1200
    invoke-direct {p0}, Lcom/android/exchange/EasSyncService;->cacheAuthAndCmdString()V

    .line 1201
    aget-object v0, v0, v5

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1202
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mAutoDiscInfo:Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;

    iget-object v1, v1, Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;->RedirectPost:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpPost;->getURI()Ljava/net/URI;

    move-result-object v1

    .line 1203
    invoke-virtual {v1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 1205
    const-string v2, "autodiscvoer"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1206
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "autodiscvoer."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1209
    :cond_5
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mAutoDiscInfo:Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;

    iget-object v1, v1, Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;->RedirectPost:Lorg/apache/http/client/methods/HttpPost;

    const-string v2, "Authorization"

    invoke-virtual {v1, v7}, Lorg/apache/http/client/methods/HttpPost;->removeHeaders(Ljava/lang/String;)V

    .line 1210
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mAutoDiscInfo:Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;

    iget-object v1, v1, Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;->RedirectPost:Lorg/apache/http/client/methods/HttpPost;

    const-string v2, "Authorization"

    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mAuthString:Ljava/lang/String;

    invoke-virtual {v1, v7, v2}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1212
    iget-boolean v1, p0, Lcom/android/exchange/EasSyncService;->mTrustSsl:Z

    if-eqz v1, :cond_6

    const-string v1, "httpts://"

    .line 1214
    :goto_1
    const/4 v2, 0x0

    .line 1216
    :try_start_0
    new-instance v3, Ljava/net/URI;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":443"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/autodiscover/autodiscover.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 1222
    :goto_2
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mAutoDiscInfo:Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;

    iget-object v1, v1, Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;->RedirectPost:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v1, v0}, Lorg/apache/http/client/methods/HttpPost;->setURI(Ljava/net/URI;)V

    .line 1224
    new-array v1, v5, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Autodiscover, Redirected URI : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v6

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1212
    :cond_6
    const-string v1, "https://"

    goto :goto_1

    .line 1217
    :catch_0
    move-exception v0

    .line 1219
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    move-object v0, v2

    goto :goto_2

    .line 1232
    :cond_7
    const-string v1, "Settings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1233
    invoke-virtual {p0, p1, p2}, Lcom/android/exchange/EasSyncService;->parseSettings(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/email/provider/EmailContent$HostAuth;)V

    goto/16 :goto_0
.end method

.method parseAutoDiscoverResponse(Lorg/apache/http/HttpResponse;Lorg/apache/http/client/methods/HttpPost;)Lorg/apache/http/client/methods/HttpPost;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v0, "autodiscover_error_code"

    .line 1046
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mAutoDiscInfo:Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;

    iput-object p2, v0, Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;->RedirectPost:Lorg/apache/http/client/methods/HttpPost;

    .line 1054
    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 1055
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 1056
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v1

    .line 1057
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 1058
    const-string v2, "UTF-8"

    invoke-interface {v1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1062
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 1063
    if-nez v0, :cond_0

    .line 1064
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 1065
    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 1066
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1067
    const-string v2, "Autodiscover"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1068
    new-instance v0, Lcom/android/email/provider/EmailContent$HostAuth;

    invoke-direct {v0}, Lcom/android/email/provider/EmailContent$HostAuth;-><init>()V

    .line 1069
    invoke-virtual {p0, v1, v0}, Lcom/android/exchange/EasSyncService;->parseAutodiscover(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/email/provider/EmailContent$HostAuth;)V

    .line 1071
    iget-object v1, v0, Lcom/android/email/provider/EmailContent$HostAuth;->mAddress:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 1077
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mDomain:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1078
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mDomain:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\\"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mUserName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/email/provider/EmailContent$HostAuth;->mLogin:Ljava/lang/String;

    .line 1085
    :goto_0
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mPassword:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/email/provider/EmailContent$HostAuth;->mPassword:Ljava/lang/String;

    .line 1086
    const/16 v1, 0x1bb

    iput v1, v0, Lcom/android/email/provider/EmailContent$HostAuth;->mPort:I

    .line 1087
    const-string v1, "eas"

    iput-object v1, v0, Lcom/android/email/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    .line 1090
    const/4 v1, 0x5

    iput v1, v0, Lcom/android/email/provider/EmailContent$HostAuth;->mFlags:I

    .line 1094
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mAutoDiscInfo:Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;

    iget-object v1, v1, Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;->bundle:Landroid/os/Bundle;

    const-string v2, "autodiscover_host_auth"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1114
    :cond_0
    :goto_1
    const/4 v0, 0x0

    return-object v0

    .line 1081
    :cond_1
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mUserName:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/email/provider/EmailContent$HostAuth;->mLogin:Ljava/lang/String;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1109
    :catch_0
    move-exception v0

    .line 1111
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_1

    .line 1098
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mAutoDiscInfo:Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;

    iget-boolean v0, v0, Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;->isErrorTagPresent:Z

    if-eqz v0, :cond_3

    .line 1099
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mAutoDiscInfo:Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;

    iget-object v0, v0, Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;->bundle:Landroid/os/Bundle;

    const-string v1, "autodiscover_error_code"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    .line 1102
    :cond_3
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mAutoDiscInfo:Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;

    iget-object v0, v0, Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;->bundle:Landroid/os/Bundle;

    const-string v1, "autodiscover_error_code"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method parseAutodiscover(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/email/provider/EmailContent$HostAuth;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1317
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v0

    .line 1319
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 1328
    :cond_1
    return-void

    .line 1322
    :cond_2
    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Autodiscover"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1324
    :cond_3
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Response"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1325
    invoke-virtual {p0, p1, p2}, Lcom/android/exchange/EasSyncService;->parseResponse(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/email/provider/EmailContent$HostAuth;)V

    goto :goto_0
.end method

.method parseError(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/email/provider/EmailContent$HostAuth;)V
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1244
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 1246
    if-ne v0, v4, :cond_2

    .line 1266
    :cond_1
    return-void

    .line 1249
    :cond_2
    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1251
    :cond_3
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1252
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mAutoDiscInfo:Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;

    iput-boolean v4, v0, Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;->isErrorTagPresent:Z

    .line 1253
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1254
    const-string v1, "Status"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1255
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    .line 1256
    new-array v1, v4, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Autodiscover, Error Status : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v5

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    goto :goto_0

    .line 1257
    :cond_4
    const-string v1, "Message"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1258
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    .line 1259
    new-array v1, v4, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Autodiscover, Error Message : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v5

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    goto :goto_0

    .line 1260
    :cond_5
    const-string v1, "DebugData"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1261
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    .line 1262
    new-array v1, v4, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Autodiscover, Error DebugData : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v5

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method parseResponse(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/email/provider/EmailContent$HostAuth;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1296
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 1298
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 1312
    :cond_1
    return-void

    .line 1301
    :cond_2
    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Response"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1303
    :cond_3
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1304
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1305
    const-string v1, "User"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1306
    invoke-virtual {p0, p1, p2}, Lcom/android/exchange/EasSyncService;->parseUser(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/email/provider/EmailContent$HostAuth;)V

    goto :goto_0

    .line 1307
    :cond_4
    const-string v1, "Action"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1308
    invoke-virtual {p0, p1, p2}, Lcom/android/exchange/EasSyncService;->parseAction(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/email/provider/EmailContent$HostAuth;)V

    goto :goto_0
.end method

.method parseServer(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/email/provider/EmailContent$HostAuth;)V
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1124
    move v0, v6

    .line 1126
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 1128
    if-ne v1, v5, :cond_2

    .line 1155
    :cond_1
    return-void

    .line 1131
    :cond_2
    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Server"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1133
    :cond_3
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 1134
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1135
    const-string v2, "Type"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1136
    const-string v1, "MobileSync"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v0, v5

    .line 1137
    goto :goto_0

    .line 1141
    :cond_4
    if-eqz v0, :cond_0

    const-string v2, "Url"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1142
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 1143
    new-array v2, v5, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Autodiscover, server URL :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p0, v2}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 1146
    const-string v2, "https://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "/microsoft-server-activesync"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1148
    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 1149
    const/16 v3, 0x8

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/android/email/provider/EmailContent$HostAuth;->mAddress:Ljava/lang/String;

    .line 1150
    new-array v1, v5, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Autodiscover, server: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Lcom/android/email/provider/EmailContent$HostAuth;->mAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method parseSettings(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/email/provider/EmailContent$HostAuth;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1160
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 1162
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 1174
    :cond_1
    return-void

    .line 1165
    :cond_2
    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Settings"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1167
    :cond_3
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1168
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1169
    const-string v1, "Server"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1170
    invoke-virtual {p0, p1, p2}, Lcom/android/exchange/EasSyncService;->parseServer(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/email/provider/EmailContent$HostAuth;)V

    goto :goto_0
.end method

.method parseUser(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/email/provider/EmailContent$HostAuth;)V
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1273
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 1275
    if-ne v0, v4, :cond_2

    .line 1291
    :cond_1
    return-void

    .line 1278
    :cond_2
    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "User"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1280
    :cond_3
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1281
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1282
    const-string v1, "EMailAddress"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1283
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    .line 1284
    new-array v1, v4, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Autodiscover, email: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v5

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    goto :goto_0

    .line 1285
    :cond_4
    const-string v1, "DisplayName"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1286
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    .line 1287
    new-array v1, v4, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Autodiscover, user: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v5

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected declared-synchronized processCommand(Lcom/android/exchange/adapter/AbstractCommandAdapter;)Z
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/email/mail/DeviceAccessException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4443
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/android/exchange/adapter/AbstractCommandAdapter;->hasChangedItems()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4444
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "processCommand(): No changed items."

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v3

    .line 4500
    :goto_0
    monitor-exit p0

    return v0

    .line 4450
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/email/provider/EmailContent$Account;->refresh(Landroid/content/Context;)V

    .line 4452
    new-instance v0, Lcom/android/exchange/adapter/Serializer;

    invoke-direct {v0}, Lcom/android/exchange/adapter/Serializer;-><init>()V

    .line 4453
    invoke-virtual {p1, v0}, Lcom/android/exchange/adapter/AbstractCommandAdapter;->sendLocalChanges(Lcom/android/exchange/adapter/Serializer;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4455
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->TAG:Ljava/lang/String;

    const-string v1, "sendLocalChanges returned false. Returning ..."

    invoke-static {v0, v1}, Lcom/android/exchange/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    .line 4456
    goto :goto_0

    .line 4458
    :cond_1
    invoke-virtual {v0}, Lcom/android/exchange/adapter/Serializer;->done()V

    .line 4460
    invoke-virtual {p1}, Lcom/android/exchange/adapter/AbstractCommandAdapter;->getCommandName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-virtual {v0}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    const/16 v0, 0x7530

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/exchange/EasSyncService;->sendHttpClientPost(Ljava/lang/String;Lorg/apache/http/HttpEntity;I)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 4462
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    .line 4463
    const/16 v2, 0xc8

    if-ne v1, v2, :cond_5

    .line 4464
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 4465
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v1

    long-to-int v1, v1

    .line 4466
    if-eqz v1, :cond_2

    .line 4467
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 4468
    if-eqz v0, :cond_3

    .line 4469
    invoke-virtual {p1, v0}, Lcom/android/exchange/adapter/AbstractCommandAdapter;->parse(Ljava/io/InputStream;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 4499
    :cond_2
    :goto_1
    const/4 v0, 0x0

    :try_start_2
    iput v0, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v0, v4

    .line 4500
    goto :goto_0

    .line 4471
    :cond_3
    const/4 v0, 0x1

    :try_start_3
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/exchange/adapter/AbstractCommandAdapter;->getCommandName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": Empty input stream"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 4488
    :catch_0
    move-exception v0

    .line 4489
    :try_start_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processCommand(): Caught IOException:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasSyncService;->errorLog(Ljava/lang/String;)V

    .line 4490
    const/16 v1, 0x21

    invoke-virtual {p1, v1}, Lcom/android/exchange/adapter/AbstractCommandAdapter;->callback(I)V

    .line 4491
    invoke-virtual {p1}, Lcom/android/exchange/adapter/AbstractCommandAdapter;->cleanup()V

    .line 4492
    iget-boolean v1, p0, Lcom/android/exchange/EasSyncService;->mStop:Z

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/android/exchange/EasSyncService;->mPostAborted:Z

    if-eqz v1, :cond_8

    .line 4493
    :cond_4
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "processCommand(): Post is stopped or aborted. Throwing IOException back to caller"

    aput-object v3, v1, v2

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 4494
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 4443
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 4475
    :cond_5
    :try_start_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/exchange/adapter/AbstractCommandAdapter;->getCommandName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": Response error: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/android/exchange/EasSyncService;->userLog(Ljava/lang/String;I)V

    .line 4476
    invoke-virtual {p0, v1}, Lcom/android/exchange/EasSyncService;->isAuthError(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4477
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I

    :goto_2
    move v0, v4

    .line 4486
    goto/16 :goto_0

    .line 4479
    :cond_6
    invoke-virtual {p0, v1}, Lcom/android/exchange/EasSyncService;->isProvisionError(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4480
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I

    goto :goto_2

    .line 4484
    :cond_7
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_2

    .line 4496
    :cond_8
    const/4 v0, 0x0

    :try_start_6
    iput v0, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move v0, v4

    .line 4497
    goto/16 :goto_0
.end method

.method public reset()V
    .locals 7

    .prologue
    const-string v2, "Email"

    .line 527
    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 528
    :try_start_0
    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/exchange/EasSyncService;->commandFinished:Z

    if-nez v3, :cond_0

    .line 529
    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v3}, Lorg/apache/http/client/methods/HttpPost;->getURI()Ljava/net/URI;

    move-result-object v1

    .line 530
    .local v1, uri:Ljava/net/URI;
    if-eqz v1, :cond_0

    .line 531
    invoke-virtual {v1}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v0

    .line 532
    .local v0, query:Ljava/lang/String;
    const-string v3, "Cmd=Ping"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 533
    const-string v3, "Email"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Reset, aborting Ping. for thread: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/exchange/EasSyncService;->mThread:Ljava/lang/Thread;

    invoke-virtual {v5}, Ljava/lang/Thread;->getId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/exchange/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/exchange/EasSyncService;->mPostReset:Z

    .line 535
    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v3}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 537
    invoke-direct {p0}, Lcom/android/exchange/EasSyncService;->shutdownConnectionManager()V

    .line 551
    .end local v0           #query:Ljava/lang/String;
    .end local v1           #uri:Ljava/net/URI;
    :cond_0
    :goto_0
    monitor-exit v2

    .line 552
    return-void

    .line 542
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

    .line 543
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

    .line 544
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/exchange/EasSyncService;->mPostReset:Z

    .line 545
    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v3}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 546
    invoke-direct {p0}, Lcom/android/exchange/EasSyncService;->shutdownConnectionManagerForLoadMore()V

    goto :goto_0

    .line 551
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
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 3567
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

    .line 3571
    iget v0, p0, Lcom/android/exchange/EasSyncService;->mPingHeartbeat:I

    if-le p1, v0, :cond_3

    .line 3575
    iget v0, p0, Lcom/android/exchange/EasSyncService;->mPingMinHeartbeat:I

    if-ge v0, p1, :cond_0

    .line 3576
    iput p1, p0, Lcom/android/exchange/EasSyncService;->mPingMinHeartbeat:I

    .line 3578
    :cond_0
    iget v0, p0, Lcom/android/exchange/EasSyncService;->mPingForceHeartbeat:I

    if-ge v0, p1, :cond_1

    .line 3579
    iput p1, p0, Lcom/android/exchange/EasSyncService;->mPingForceHeartbeat:I

    .line 3582
    :cond_1
    iget v0, p0, Lcom/android/exchange/EasSyncService;->mPingMinHeartbeat:I

    iget v1, p0, Lcom/android/exchange/EasSyncService;->mPingMaxHeartbeat:I

    if-le v0, v1, :cond_2

    .line 3583
    iput p1, p0, Lcom/android/exchange/EasSyncService;->mPingMaxHeartbeat:I

    .line 3595
    :cond_2
    :goto_0
    iput p1, p0, Lcom/android/exchange/EasSyncService;->mPingHeartbeat:I

    .line 3597
    iput-boolean v3, p0, Lcom/android/exchange/EasSyncService;->mPingHeartbeatDropped:Z

    .line 3598
    return-void

    .line 3585
    :cond_3
    iget v0, p0, Lcom/android/exchange/EasSyncService;->mPingHeartbeat:I

    if-ge p1, v0, :cond_2

    .line 3588
    iput p1, p0, Lcom/android/exchange/EasSyncService;->mPingMaxHeartbeat:I

    .line 3590
    iget v0, p0, Lcom/android/exchange/EasSyncService;->mPingMaxHeartbeat:I

    iget v1, p0, Lcom/android/exchange/EasSyncService;->mPingMinHeartbeat:I

    if-ge v0, v1, :cond_2

    .line 3591
    iput p1, p0, Lcom/android/exchange/EasSyncService;->mPingMinHeartbeat:I

    goto :goto_0
.end method

.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v7, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v8, "DeviceAccessPermission"

    .line 4551
    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->setupService()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4754
    :goto_0
    return-void

    .line 4554
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/android/exchange/SyncManager;->callback()Lcom/android/email/service/IEmailServiceCallback;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/email/service/IEmailServiceCallback;->syncMailboxStatus(JII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_b

    .line 4559
    :goto_1
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/exchange/EasSyncService;->mThreadId:J

    .line 4565
    :try_start_1
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 4566
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 4567
    if-eqz v0, :cond_1

    .line 4568
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getAllowHTMLEmail(Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v5

    :goto_2
    iput-boolean v0, p0, Lcom/android/exchange/EasSyncService;->mIsHTMLDisabled:Z

    .line 4569
    iget-boolean v0, p0, Lcom/android/exchange/EasSyncService;->mIsHTMLDisabled:Z

    if-eqz v0, :cond_1

    .line 4570
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exchange IT Policy has disabled HTML email. mIsHTMLDisabled ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/exchange/EasSyncService;->mIsHTMLDisabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 4575
    :cond_1
    invoke-static {}, Lcom/android/exchange/SyncManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mDeviceId:Ljava/lang/String;

    .line 4576
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/android/exchange/EasAuthenticationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/email/mail/DeviceAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    if-nez v0, :cond_4

    .line 4642
    :cond_2
    iget-boolean v0, p0, Lcom/android/exchange/EasSyncService;->mStop:Z

    if-nez v0, :cond_1e

    .line 4644
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sync finished exit status :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/exchange/SyncManager;->alwaysLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 4645
    invoke-static {p0}, Lcom/android/exchange/SyncManager;->done(Lcom/android/exchange/AbstractSyncService;)V

    .line 4647
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sync finished exit status :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/exchange/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4649
    iget v0, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I

    packed-switch v0, :pswitch_data_0

    .line 4695
    :pswitch_0
    const/16 v0, 0x15

    .line 4696
    const-string v1, "Sync ended due to an exception."

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasSyncService;->errorLog(Ljava/lang/String;)V

    .line 4739
    :goto_3
    :try_start_2
    iget v1, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_20

    .line 4740
    invoke-static {}, Lcom/android/exchange/SyncManager;->callback()Lcom/android/email/service/IEmailServiceCallback;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    const/16 v4, -0x20

    invoke-interface {v1, v2, v3, v0, v4}, Lcom/android/email/service/IEmailServiceCallback;->syncMailboxStatus(JII)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_9

    .line 4752
    :goto_4
    const-string v0, "sync finished"

    :goto_5
    invoke-static {v0}, Lcom/android/exchange/SyncManager;->kick(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    move v0, v6

    .line 4568
    goto/16 :goto_2

    .line 4578
    :cond_4
    :try_start_3
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    const/16 v1, 0x44

    if-ne v0, v1, :cond_5

    .line 4579
    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->runAccountMailbox()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lcom/android/exchange/EasAuthenticationException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/android/email/mail/DeviceAccessException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 4642
    :goto_6
    iget-boolean v0, p0, Lcom/android/exchange/EasSyncService;->mStop:Z

    if-nez v0, :cond_21

    .line 4644
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sync finished exit status :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/exchange/SyncManager;->alwaysLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 4645
    invoke-static {p0}, Lcom/android/exchange/SyncManager;->done(Lcom/android/exchange/AbstractSyncService;)V

    .line 4647
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sync finished exit status :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/exchange/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4649
    iget v0, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I

    packed-switch v0, :pswitch_data_1

    .line 4695
    :pswitch_1
    const/16 v0, 0x15

    .line 4696
    const-string v1, "Sync ended due to an exception."

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasSyncService;->errorLog(Ljava/lang/String;)V

    .line 4739
    :goto_7
    :try_start_4
    iget v1, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_23

    .line 4740
    invoke-static {}, Lcom/android/exchange/SyncManager;->callback()Lcom/android/email/service/IEmailServiceCallback;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    const/16 v4, -0x20

    invoke-interface {v1, v2, v3, v0, v4}, Lcom/android/email/service/IEmailServiceCallback;->syncMailboxStatus(JII)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_a

    .line 4752
    :goto_8
    const-string v0, "sync finished"

    goto/16 :goto_5

    .line 4582
    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v2, 0x402c

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_6

    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mSyncKey:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 4584
    new-instance v0, Lcom/android/exchange/adapter/GetItemEstimateAdapter;

    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    invoke-direct {v0, v1, p0}, Lcom/android/exchange/adapter/GetItemEstimateAdapter;-><init>(Lcom/android/email/provider/EmailContent$Mailbox;Lcom/android/exchange/EasSyncService;)V

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->processCommand(Lcom/android/exchange/adapter/AbstractCommandAdapter;)Z

    .line 4587
    :cond_6
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    const/16 v1, 0x42

    if-ne v0, v1, :cond_9

    .line 4588
    new-instance v0, Lcom/android/exchange/adapter/ContactsSyncAdapter;

    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    invoke-direct {v0, v1, p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter;-><init>(Lcom/android/email/provider/EmailContent$Mailbox;Lcom/android/exchange/EasSyncService;)V

    .line 4610
    :cond_7
    :goto_9
    iget-wide v1, p0, Lcom/android/exchange/EasSyncService;->mRequestTime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_8

    .line 4611
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Looping for user request..."

    aput-object v3, v1, v2

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 4612
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/exchange/EasSyncService;->mRequestTime:J

    .line 4614
    :cond_8
    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->sync(Lcom/android/exchange/adapter/AbstractSyncAdapter;)V

    .line 4615
    iget-wide v1, p0, Lcom/android/exchange/EasSyncService;->mRequestTime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_7

    goto/16 :goto_6

    .line 4589
    :cond_9
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    const/16 v1, 0x41

    if-ne v0, v1, :cond_a

    .line 4590
    new-instance v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;

    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    invoke-direct {v0, v1, p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter;-><init>(Lcom/android/email/provider/EmailContent$Mailbox;Lcom/android/exchange/EasSyncService;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Lcom/android/exchange/EasAuthenticationException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lcom/android/email/mail/DeviceAccessException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_9

    .line 4617
    :catch_0
    move-exception v0

    .line 4618
    const/4 v0, 0x1

    :try_start_6
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Caught authentication error"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 4619
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 4642
    iget-boolean v0, p0, Lcom/android/exchange/EasSyncService;->mStop:Z

    if-nez v0, :cond_12

    .line 4644
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sync finished exit status :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/exchange/SyncManager;->alwaysLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 4645
    invoke-static {p0}, Lcom/android/exchange/SyncManager;->done(Lcom/android/exchange/AbstractSyncService;)V

    .line 4647
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sync finished exit status :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/exchange/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4649
    iget v0, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I

    packed-switch v0, :pswitch_data_2

    .line 4695
    :pswitch_2
    const/16 v0, 0x15

    .line 4696
    const-string v1, "Sync ended due to an exception."

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasSyncService;->errorLog(Ljava/lang/String;)V

    .line 4739
    :goto_a
    :try_start_7
    iget v1, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_14

    .line 4740
    invoke-static {}, Lcom/android/exchange/SyncManager;->callback()Lcom/android/email/service/IEmailServiceCallback;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    const/16 v4, -0x20

    invoke-interface {v1, v2, v3, v0, v4}, Lcom/android/email/service/IEmailServiceCallback;->syncMailboxStatus(JII)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_5

    .line 4752
    :goto_b
    const-string v0, "sync finished"

    goto/16 :goto_5

    .line 4592
    :cond_a
    :try_start_8
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    const/16 v1, 0x45

    if-ne v0, v1, :cond_b

    .line 4593
    new-instance v0, Lcom/android/exchange/adapter/NotesSyncAdapter;

    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    invoke-direct {v0, v1, p0}, Lcom/android/exchange/adapter/NotesSyncAdapter;-><init>(Lcom/android/email/provider/EmailContent$Mailbox;Lcom/android/exchange/EasSyncService;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Lcom/android/exchange/EasAuthenticationException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Lcom/android/email/mail/DeviceAccessException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    goto/16 :goto_9

    .line 4621
    :catch_1
    move-exception v0

    .line 4622
    :try_start_9
    const-string v1, "DeviceAccessPermission"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Caught Exceptoin, Device is blocked or quarantined "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/email/mail/DeviceAccessException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/exchange/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4623
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I

    .line 4624
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Account;->mId:J

    sget v2, Lcom/android/email/provider/EmailContent$Account;->DEVICE_IS_BLOCKED:I

    invoke-static {v0, v1, v2}, Lcom/android/exchange/SyncManager;->blockDevice(JI)V

    .line 4625
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Account;->mId:J

    invoke-static {v0, v1}, Lcom/android/exchange/SyncManager;->stopAccountSyncs(J)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 4642
    iget-boolean v0, p0, Lcom/android/exchange/EasSyncService;->mStop:Z

    if-nez v0, :cond_15

    .line 4644
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sync finished exit status :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/exchange/SyncManager;->alwaysLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 4645
    invoke-static {p0}, Lcom/android/exchange/SyncManager;->done(Lcom/android/exchange/AbstractSyncService;)V

    .line 4647
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sync finished exit status :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/exchange/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4649
    iget v0, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I

    packed-switch v0, :pswitch_data_3

    .line 4695
    :pswitch_3
    const/16 v0, 0x15

    .line 4696
    const-string v1, "Sync ended due to an exception."

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasSyncService;->errorLog(Ljava/lang/String;)V

    .line 4739
    :goto_c
    :try_start_a
    iget v1, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_17

    .line 4740
    invoke-static {}, Lcom/android/exchange/SyncManager;->callback()Lcom/android/email/service/IEmailServiceCallback;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    const/16 v4, -0x20

    invoke-interface {v1, v2, v3, v0, v4}, Lcom/android/email/service/IEmailServiceCallback;->syncMailboxStatus(JII)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_6

    .line 4752
    :goto_d
    const-string v0, "sync finished"

    goto/16 :goto_5

    .line 4597
    :cond_b
    :try_start_b
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    const/16 v1, 0x43

    if-ne v0, v1, :cond_e

    .line 4599
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->TAG:Ljava/lang/String;

    const-string v1, "Syncing Tasks.."

    invoke-static {v0, v1}, Lcom/android/exchange/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4600
    new-instance v0, Lcom/android/exchange/adapter/TasksSyncAdapter;

    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    invoke-direct {v0, v1, p0}, Lcom/android/exchange/adapter/TasksSyncAdapter;-><init>(Lcom/android/email/provider/EmailContent$Mailbox;Lcom/android/exchange/EasSyncService;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Lcom/android/exchange/EasAuthenticationException; {:try_start_b .. :try_end_b} :catch_0
    .catch Lcom/android/email/mail/DeviceAccessException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    goto/16 :goto_9

    .line 4627
    :catch_2
    move-exception v0

    .line 4628
    :try_start_c
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 4629
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Caught IOException: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    if-nez v0, :cond_c

    const-string v0, "No message"

    :cond_c
    aput-object v0, v1, v2

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 4632
    iget v0, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_d

    .line 4633
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 4642
    :cond_d
    iget-boolean v0, p0, Lcom/android/exchange/EasSyncService;->mStop:Z

    if-nez v0, :cond_18

    .line 4644
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sync finished exit status :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/exchange/SyncManager;->alwaysLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 4645
    invoke-static {p0}, Lcom/android/exchange/SyncManager;->done(Lcom/android/exchange/AbstractSyncService;)V

    .line 4647
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sync finished exit status :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/exchange/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4649
    iget v0, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I

    packed-switch v0, :pswitch_data_4

    .line 4695
    :pswitch_4
    const/16 v0, 0x15

    .line 4696
    const-string v1, "Sync ended due to an exception."

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasSyncService;->errorLog(Ljava/lang/String;)V

    .line 4739
    :goto_e
    :try_start_d
    iget v1, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_1a

    .line 4740
    invoke-static {}, Lcom/android/exchange/SyncManager;->callback()Lcom/android/email/service/IEmailServiceCallback;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    const/16 v4, -0x20

    invoke-interface {v1, v2, v3, v0, v4}, Lcom/android/email/service/IEmailServiceCallback;->syncMailboxStatus(JII)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_7

    .line 4752
    :goto_f
    const-string v0, "sync finished"

    goto/16 :goto_5

    .line 4603
    :cond_e
    :try_start_e
    new-instance v0, Lcom/android/exchange/adapter/EmailSyncAdapter;

    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    invoke-direct {v0, v1, p0}, Lcom/android/exchange/adapter/EmailSyncAdapter;-><init>(Lcom/android/email/provider/EmailContent$Mailbox;Lcom/android/exchange/EasSyncService;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0
    .catch Lcom/android/exchange/EasAuthenticationException; {:try_start_e .. :try_end_e} :catch_0
    .catch Lcom/android/email/mail/DeviceAccessException; {:try_start_e .. :try_end_e} :catch_1
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_2
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_3

    goto/16 :goto_9

    .line 4636
    :catch_3
    move-exception v0

    .line 4637
    :try_start_f
    const-string v1, "Uncaught exception in EasSyncService"

    invoke-virtual {p0, v1, v0}, Lcom/android/exchange/EasSyncService;->userLog(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 4642
    iget-boolean v0, p0, Lcom/android/exchange/EasSyncService;->mStop:Z

    if-nez v0, :cond_1b

    .line 4644
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sync finished exit status :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/exchange/SyncManager;->alwaysLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 4645
    invoke-static {p0}, Lcom/android/exchange/SyncManager;->done(Lcom/android/exchange/AbstractSyncService;)V

    .line 4647
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sync finished exit status :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/exchange/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4649
    iget v0, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I

    packed-switch v0, :pswitch_data_5

    .line 4695
    :pswitch_5
    const/16 v0, 0x15

    .line 4696
    const-string v1, "Sync ended due to an exception."

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasSyncService;->errorLog(Ljava/lang/String;)V

    .line 4739
    :goto_10
    :try_start_10
    iget v1, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_1d

    .line 4740
    invoke-static {}, Lcom/android/exchange/SyncManager;->callback()Lcom/android/email/service/IEmailServiceCallback;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    const/16 v4, -0x20

    invoke-interface {v1, v2, v3, v0, v4}, Lcom/android/email/service/IEmailServiceCallback;->syncMailboxStatus(JII)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_8

    .line 4752
    :goto_11
    const-string v0, "sync finished"

    goto/16 :goto_5

    .line 4651
    :pswitch_6
    const/16 v1, 0x20

    .line 4739
    :goto_12
    :try_start_11
    iget v2, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_11

    .line 4740
    invoke-static {}, Lcom/android/exchange/SyncManager;->callback()Lcom/android/email/service/IEmailServiceCallback;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    const/16 v5, -0x20

    invoke-interface {v2, v3, v4, v1, v5}, Lcom/android/email/service/IEmailServiceCallback;->syncMailboxStatus(JII)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_11} :catch_4

    .line 4752
    :goto_13
    const-string v1, "sync finished"

    invoke-static {v1}, Lcom/android/exchange/SyncManager;->kick(Ljava/lang/String;)V

    .line 4640
    throw v0

    :catchall_0
    move-exception v0

    .line 4642
    iget-boolean v1, p0, Lcom/android/exchange/EasSyncService;->mStop:Z

    if-nez v1, :cond_f

    .line 4644
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sync finished exit status :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/exchange/SyncManager;->alwaysLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 4645
    invoke-static {p0}, Lcom/android/exchange/SyncManager;->done(Lcom/android/exchange/AbstractSyncService;)V

    .line 4647
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sync finished exit status :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/exchange/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4649
    iget v1, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I

    packed-switch v1, :pswitch_data_6

    .line 4695
    :pswitch_7
    const/16 v1, 0x15

    .line 4696
    const-string v2, "Sync ended due to an exception."

    invoke-virtual {p0, v2}, Lcom/android/exchange/EasSyncService;->errorLog(Ljava/lang/String;)V

    goto/16 :goto_12

    .line 4700
    :cond_f
    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "Stopped sync finished."

    aput-object v2, v1, v6

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 4703
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v2, v2, Lcom/android/email/provider/EmailContent$Account;->mId:J

    invoke-static {v1, v2, v3}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v1

    .line 4704
    if-eqz v1, :cond_10

    iget v1, v1, Lcom/android/email/provider/EmailContent$Account;->mSyncInterval:I

    const/4 v2, -0x2

    if-eq v1, v2, :cond_10

    .line 4705
    iget-wide v1, p0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    const-wide/16 v3, 0x1f40

    invoke-static {v1, v2, v3, v4}, Lcom/android/exchange/SyncManager;->runAsleep(JJ)V

    .line 4710
    :cond_10
    iget v1, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I

    packed-switch v1, :pswitch_data_7

    move v1, v6

    .line 4729
    goto/16 :goto_12

    .line 4655
    :pswitch_8
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v1, v1, Lcom/android/email/provider/EmailContent$Account;->mId:J

    sget v3, Lcom/android/email/provider/EmailContent$Account;->DEVICE_IS_ALLOWED:I

    invoke-static {v1, v2, v3}, Lcom/android/exchange/SyncManager;->blockDevice(JI)V

    .line 4658
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 4659
    const-string v2, "syncTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4660
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "S"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/exchange/EasSyncService;->mSyncReason:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/exchange/EasSyncService;->mChangeCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4661
    const-string v3, "syncStatus"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4662
    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/email/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v4, p0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v1, v7, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move v1, v6

    .line 4664
    goto/16 :goto_12

    .line 4666
    :pswitch_9
    const/16 v1, 0x16

    .line 4667
    goto/16 :goto_12

    .line 4669
    :pswitch_a
    const/16 v1, 0x17

    .line 4678
    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v3, v3, Lcom/android/email/provider/EmailContent$Account;->mId:J

    invoke-static {v2, v3, v4, v5}, Lcom/android/exchange/SyncManager;->reloadFolderList(Landroid/content/Context;JZ)V

    goto/16 :goto_12

    :pswitch_b
    move v1, v9

    .line 4687
    goto/16 :goto_12

    .line 4690
    :pswitch_c
    const/4 v1, 0x4

    .line 4691
    goto/16 :goto_12

    .line 4713
    :pswitch_d
    const-string v1, "DeviceAccessPermission"

    const-string v1, "Service is stopped as server block this device"

    invoke-static {v8, v1}, Lcom/android/exchange/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v9

    .line 4714
    goto/16 :goto_12

    .line 4717
    :pswitch_e
    const/4 v1, 0x4

    .line 4718
    const-string v2, "DeviceAccessPermission"

    const-string v2, "Service is stopped as server qurantined this device"

    invoke-static {v8, v2}, Lcom/android/exchange/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12

    .line 4723
    :pswitch_f
    const/16 v1, 0x20

    .line 4724
    const-string v2, "Connection Error "

    const-string v3, "Service is stopped as Network Connectivity Failed"

    invoke-static {v2, v3}, Lcom/android/exchange/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12

    .line 4744
    :cond_11
    :try_start_12
    invoke-static {}, Lcom/android/exchange/SyncManager;->callback()Lcom/android/email/service/IEmailServiceCallback;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v1, v5}, Lcom/android/email/service/IEmailServiceCallback;->syncMailboxStatus(JII)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_12} :catch_4

    goto/16 :goto_13

    .line 4747
    :catch_4
    move-exception v1

    goto/16 :goto_13

    .line 4700
    :cond_12
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "Stopped sync finished."

    aput-object v1, v0, v6

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 4703
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v1, v1, Lcom/android/email/provider/EmailContent$Account;->mId:J

    invoke-static {v0, v1, v2}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v0

    .line 4704
    if-eqz v0, :cond_13

    iget v0, v0, Lcom/android/email/provider/EmailContent$Account;->mSyncInterval:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_13

    .line 4705
    iget-wide v0, p0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    const-wide/16 v2, 0x1f40

    invoke-static {v0, v1, v2, v3}, Lcom/android/exchange/SyncManager;->runAsleep(JJ)V

    .line 4710
    :cond_13
    iget v0, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I

    packed-switch v0, :pswitch_data_8

    move v0, v6

    .line 4729
    goto/16 :goto_a

    .line 4655
    :pswitch_10
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Account;->mId:J

    sget v2, Lcom/android/email/provider/EmailContent$Account;->DEVICE_IS_ALLOWED:I

    invoke-static {v0, v1, v2}, Lcom/android/exchange/SyncManager;->blockDevice(JI)V

    .line 4658
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 4659
    const-string v1, "syncTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4660
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "S"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/exchange/EasSyncService;->mSyncReason:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/exchange/EasSyncService;->mChangeCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4661
    const-string v2, "syncStatus"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4662
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/email/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, p0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v7, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move v0, v6

    .line 4664
    goto/16 :goto_a

    .line 4651
    :pswitch_11
    const/16 v0, 0x20

    .line 4652
    goto/16 :goto_a

    .line 4666
    :pswitch_12
    const/16 v0, 0x16

    .line 4667
    goto/16 :goto_a

    .line 4669
    :pswitch_13
    const/16 v0, 0x17

    .line 4678
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v2, v2, Lcom/android/email/provider/EmailContent$Account;->mId:J

    invoke-static {v1, v2, v3, v5}, Lcom/android/exchange/SyncManager;->reloadFolderList(Landroid/content/Context;JZ)V

    goto/16 :goto_a

    :pswitch_14
    move v0, v9

    .line 4687
    goto/16 :goto_a

    .line 4690
    :pswitch_15
    const/4 v0, 0x4

    .line 4691
    goto/16 :goto_a

    .line 4713
    :pswitch_16
    const-string v0, "DeviceAccessPermission"

    const-string v0, "Service is stopped as server block this device"

    invoke-static {v8, v0}, Lcom/android/exchange/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v9

    .line 4714
    goto/16 :goto_a

    .line 4717
    :pswitch_17
    const/4 v0, 0x4

    .line 4718
    const-string v1, "DeviceAccessPermission"

    const-string v1, "Service is stopped as server qurantined this device"

    invoke-static {v8, v1}, Lcom/android/exchange/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 4723
    :pswitch_18
    const/16 v0, 0x20

    .line 4724
    const-string v1, "Connection Error "

    const-string v2, "Service is stopped as Network Connectivity Failed"

    invoke-static {v1, v2}, Lcom/android/exchange/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 4744
    :cond_14
    :try_start_13
    invoke-static {}, Lcom/android/exchange/SyncManager;->callback()Lcom/android/email/service/IEmailServiceCallback;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v0, v4}, Lcom/android/email/service/IEmailServiceCallback;->syncMailboxStatus(JII)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_13} :catch_5

    goto/16 :goto_b

    .line 4747
    :catch_5
    move-exception v0

    goto/16 :goto_b

    .line 4700
    :cond_15
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "Stopped sync finished."

    aput-object v1, v0, v6

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 4703
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v1, v1, Lcom/android/email/provider/EmailContent$Account;->mId:J

    invoke-static {v0, v1, v2}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v0

    .line 4704
    if-eqz v0, :cond_16

    iget v0, v0, Lcom/android/email/provider/EmailContent$Account;->mSyncInterval:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_16

    .line 4705
    iget-wide v0, p0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    const-wide/16 v2, 0x1f40

    invoke-static {v0, v1, v2, v3}, Lcom/android/exchange/SyncManager;->runAsleep(JJ)V

    .line 4710
    :cond_16
    iget v0, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I

    packed-switch v0, :pswitch_data_9

    move v0, v6

    .line 4729
    goto/16 :goto_c

    .line 4655
    :pswitch_19
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Account;->mId:J

    sget v2, Lcom/android/email/provider/EmailContent$Account;->DEVICE_IS_ALLOWED:I

    invoke-static {v0, v1, v2}, Lcom/android/exchange/SyncManager;->blockDevice(JI)V

    .line 4658
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 4659
    const-string v1, "syncTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4660
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "S"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/exchange/EasSyncService;->mSyncReason:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/exchange/EasSyncService;->mChangeCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4661
    const-string v2, "syncStatus"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4662
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/email/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, p0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v7, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move v0, v6

    .line 4664
    goto/16 :goto_c

    .line 4651
    :pswitch_1a
    const/16 v0, 0x20

    .line 4652
    goto/16 :goto_c

    .line 4666
    :pswitch_1b
    const/16 v0, 0x16

    .line 4667
    goto/16 :goto_c

    .line 4669
    :pswitch_1c
    const/16 v0, 0x17

    .line 4678
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v2, v2, Lcom/android/email/provider/EmailContent$Account;->mId:J

    invoke-static {v1, v2, v3, v5}, Lcom/android/exchange/SyncManager;->reloadFolderList(Landroid/content/Context;JZ)V

    goto/16 :goto_c

    :pswitch_1d
    move v0, v9

    .line 4687
    goto/16 :goto_c

    .line 4690
    :pswitch_1e
    const/4 v0, 0x4

    .line 4691
    goto/16 :goto_c

    .line 4713
    :pswitch_1f
    const-string v0, "DeviceAccessPermission"

    const-string v0, "Service is stopped as server block this device"

    invoke-static {v8, v0}, Lcom/android/exchange/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v9

    .line 4714
    goto/16 :goto_c

    .line 4717
    :pswitch_20
    const/4 v0, 0x4

    .line 4718
    const-string v1, "DeviceAccessPermission"

    const-string v1, "Service is stopped as server qurantined this device"

    invoke-static {v8, v1}, Lcom/android/exchange/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 4723
    :pswitch_21
    const/16 v0, 0x20

    .line 4724
    const-string v1, "Connection Error "

    const-string v2, "Service is stopped as Network Connectivity Failed"

    invoke-static {v1, v2}, Lcom/android/exchange/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 4744
    :cond_17
    :try_start_14
    invoke-static {}, Lcom/android/exchange/SyncManager;->callback()Lcom/android/email/service/IEmailServiceCallback;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v0, v4}, Lcom/android/email/service/IEmailServiceCallback;->syncMailboxStatus(JII)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_14} :catch_6

    goto/16 :goto_d

    .line 4747
    :catch_6
    move-exception v0

    goto/16 :goto_d

    .line 4700
    :cond_18
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "Stopped sync finished."

    aput-object v1, v0, v6

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 4703
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v1, v1, Lcom/android/email/provider/EmailContent$Account;->mId:J

    invoke-static {v0, v1, v2}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v0

    .line 4704
    if-eqz v0, :cond_19

    iget v0, v0, Lcom/android/email/provider/EmailContent$Account;->mSyncInterval:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_19

    .line 4705
    iget-wide v0, p0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    const-wide/16 v2, 0x1f40

    invoke-static {v0, v1, v2, v3}, Lcom/android/exchange/SyncManager;->runAsleep(JJ)V

    .line 4710
    :cond_19
    iget v0, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I

    packed-switch v0, :pswitch_data_a

    move v0, v6

    .line 4729
    goto/16 :goto_e

    .line 4655
    :pswitch_22
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Account;->mId:J

    sget v2, Lcom/android/email/provider/EmailContent$Account;->DEVICE_IS_ALLOWED:I

    invoke-static {v0, v1, v2}, Lcom/android/exchange/SyncManager;->blockDevice(JI)V

    .line 4658
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 4659
    const-string v1, "syncTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4660
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "S"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/exchange/EasSyncService;->mSyncReason:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/exchange/EasSyncService;->mChangeCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4661
    const-string v2, "syncStatus"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4662
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/email/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, p0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v7, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move v0, v6

    .line 4664
    goto/16 :goto_e

    .line 4651
    :pswitch_23
    const/16 v0, 0x20

    .line 4652
    goto/16 :goto_e

    .line 4666
    :pswitch_24
    const/16 v0, 0x16

    .line 4667
    goto/16 :goto_e

    .line 4669
    :pswitch_25
    const/16 v0, 0x17

    .line 4678
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v2, v2, Lcom/android/email/provider/EmailContent$Account;->mId:J

    invoke-static {v1, v2, v3, v5}, Lcom/android/exchange/SyncManager;->reloadFolderList(Landroid/content/Context;JZ)V

    goto/16 :goto_e

    :pswitch_26
    move v0, v9

    .line 4687
    goto/16 :goto_e

    .line 4690
    :pswitch_27
    const/4 v0, 0x4

    .line 4691
    goto/16 :goto_e

    .line 4713
    :pswitch_28
    const-string v0, "DeviceAccessPermission"

    const-string v0, "Service is stopped as server block this device"

    invoke-static {v8, v0}, Lcom/android/exchange/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v9

    .line 4714
    goto/16 :goto_e

    .line 4717
    :pswitch_29
    const/4 v0, 0x4

    .line 4718
    const-string v1, "DeviceAccessPermission"

    const-string v1, "Service is stopped as server qurantined this device"

    invoke-static {v8, v1}, Lcom/android/exchange/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    .line 4723
    :pswitch_2a
    const/16 v0, 0x20

    .line 4724
    const-string v1, "Connection Error "

    const-string v2, "Service is stopped as Network Connectivity Failed"

    invoke-static {v1, v2}, Lcom/android/exchange/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    .line 4744
    :cond_1a
    :try_start_15
    invoke-static {}, Lcom/android/exchange/SyncManager;->callback()Lcom/android/email/service/IEmailServiceCallback;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v0, v4}, Lcom/android/email/service/IEmailServiceCallback;->syncMailboxStatus(JII)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_15} :catch_7

    goto/16 :goto_f

    .line 4747
    :catch_7
    move-exception v0

    goto/16 :goto_f

    .line 4700
    :cond_1b
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "Stopped sync finished."

    aput-object v1, v0, v6

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 4703
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v1, v1, Lcom/android/email/provider/EmailContent$Account;->mId:J

    invoke-static {v0, v1, v2}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v0

    .line 4704
    if-eqz v0, :cond_1c

    iget v0, v0, Lcom/android/email/provider/EmailContent$Account;->mSyncInterval:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_1c

    .line 4705
    iget-wide v0, p0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    const-wide/16 v2, 0x1f40

    invoke-static {v0, v1, v2, v3}, Lcom/android/exchange/SyncManager;->runAsleep(JJ)V

    .line 4710
    :cond_1c
    iget v0, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I

    packed-switch v0, :pswitch_data_b

    move v0, v6

    .line 4729
    goto/16 :goto_10

    .line 4655
    :pswitch_2b
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Account;->mId:J

    sget v2, Lcom/android/email/provider/EmailContent$Account;->DEVICE_IS_ALLOWED:I

    invoke-static {v0, v1, v2}, Lcom/android/exchange/SyncManager;->blockDevice(JI)V

    .line 4658
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 4659
    const-string v1, "syncTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4660
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "S"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/exchange/EasSyncService;->mSyncReason:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/exchange/EasSyncService;->mChangeCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4661
    const-string v2, "syncStatus"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4662
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/email/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, p0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v7, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move v0, v6

    .line 4664
    goto/16 :goto_10

    .line 4651
    :pswitch_2c
    const/16 v0, 0x20

    .line 4652
    goto/16 :goto_10

    .line 4666
    :pswitch_2d
    const/16 v0, 0x16

    .line 4667
    goto/16 :goto_10

    .line 4669
    :pswitch_2e
    const/16 v0, 0x17

    .line 4678
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v2, v2, Lcom/android/email/provider/EmailContent$Account;->mId:J

    invoke-static {v1, v2, v3, v5}, Lcom/android/exchange/SyncManager;->reloadFolderList(Landroid/content/Context;JZ)V

    goto/16 :goto_10

    :pswitch_2f
    move v0, v9

    .line 4687
    goto/16 :goto_10

    .line 4690
    :pswitch_30
    const/4 v0, 0x4

    .line 4691
    goto/16 :goto_10

    .line 4713
    :pswitch_31
    const-string v0, "DeviceAccessPermission"

    const-string v0, "Service is stopped as server block this device"

    invoke-static {v8, v0}, Lcom/android/exchange/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v9

    .line 4714
    goto/16 :goto_10

    .line 4717
    :pswitch_32
    const/4 v0, 0x4

    .line 4718
    const-string v1, "DeviceAccessPermission"

    const-string v1, "Service is stopped as server qurantined this device"

    invoke-static {v8, v1}, Lcom/android/exchange/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10

    .line 4723
    :pswitch_33
    const/16 v0, 0x20

    .line 4724
    const-string v1, "Connection Error "

    const-string v2, "Service is stopped as Network Connectivity Failed"

    invoke-static {v1, v2}, Lcom/android/exchange/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10

    .line 4744
    :cond_1d
    :try_start_16
    invoke-static {}, Lcom/android/exchange/SyncManager;->callback()Lcom/android/email/service/IEmailServiceCallback;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v0, v4}, Lcom/android/email/service/IEmailServiceCallback;->syncMailboxStatus(JII)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_16} :catch_8

    goto/16 :goto_11

    .line 4747
    :catch_8
    move-exception v0

    goto/16 :goto_11

    .line 4700
    :cond_1e
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "Stopped sync finished."

    aput-object v1, v0, v6

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 4703
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v1, v1, Lcom/android/email/provider/EmailContent$Account;->mId:J

    invoke-static {v0, v1, v2}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v0

    .line 4704
    if-eqz v0, :cond_1f

    iget v0, v0, Lcom/android/email/provider/EmailContent$Account;->mSyncInterval:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_1f

    .line 4705
    iget-wide v0, p0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    const-wide/16 v2, 0x1f40

    invoke-static {v0, v1, v2, v3}, Lcom/android/exchange/SyncManager;->runAsleep(JJ)V

    .line 4710
    :cond_1f
    iget v0, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I

    packed-switch v0, :pswitch_data_c

    move v0, v6

    .line 4729
    goto/16 :goto_3

    .line 4655
    :pswitch_34
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Account;->mId:J

    sget v2, Lcom/android/email/provider/EmailContent$Account;->DEVICE_IS_ALLOWED:I

    invoke-static {v0, v1, v2}, Lcom/android/exchange/SyncManager;->blockDevice(JI)V

    .line 4658
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 4659
    const-string v1, "syncTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4660
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "S"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/exchange/EasSyncService;->mSyncReason:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/exchange/EasSyncService;->mChangeCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4661
    const-string v2, "syncStatus"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4662
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/email/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, p0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v7, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move v0, v6

    .line 4664
    goto/16 :goto_3

    .line 4651
    :pswitch_35
    const/16 v0, 0x20

    .line 4652
    goto/16 :goto_3

    .line 4666
    :pswitch_36
    const/16 v0, 0x16

    .line 4667
    goto/16 :goto_3

    .line 4669
    :pswitch_37
    const/16 v0, 0x17

    .line 4678
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v2, v2, Lcom/android/email/provider/EmailContent$Account;->mId:J

    invoke-static {v1, v2, v3, v5}, Lcom/android/exchange/SyncManager;->reloadFolderList(Landroid/content/Context;JZ)V

    goto/16 :goto_3

    :pswitch_38
    move v0, v9

    .line 4687
    goto/16 :goto_3

    .line 4690
    :pswitch_39
    const/4 v0, 0x4

    .line 4691
    goto/16 :goto_3

    .line 4713
    :pswitch_3a
    const-string v0, "DeviceAccessPermission"

    const-string v0, "Service is stopped as server block this device"

    invoke-static {v8, v0}, Lcom/android/exchange/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v9

    .line 4714
    goto/16 :goto_3

    .line 4717
    :pswitch_3b
    const/4 v0, 0x4

    .line 4718
    const-string v1, "DeviceAccessPermission"

    const-string v1, "Service is stopped as server qurantined this device"

    invoke-static {v8, v1}, Lcom/android/exchange/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 4723
    :pswitch_3c
    const/16 v0, 0x20

    .line 4724
    const-string v1, "Connection Error "

    const-string v2, "Service is stopped as Network Connectivity Failed"

    invoke-static {v1, v2}, Lcom/android/exchange/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 4744
    :cond_20
    :try_start_17
    invoke-static {}, Lcom/android/exchange/SyncManager;->callback()Lcom/android/email/service/IEmailServiceCallback;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v0, v4}, Lcom/android/email/service/IEmailServiceCallback;->syncMailboxStatus(JII)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_17} :catch_9

    goto/16 :goto_4

    .line 4747
    :catch_9
    move-exception v0

    goto/16 :goto_4

    .line 4700
    :cond_21
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "Stopped sync finished."

    aput-object v1, v0, v6

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 4703
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v1, v1, Lcom/android/email/provider/EmailContent$Account;->mId:J

    invoke-static {v0, v1, v2}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v0

    .line 4704
    if-eqz v0, :cond_22

    iget v0, v0, Lcom/android/email/provider/EmailContent$Account;->mSyncInterval:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_22

    .line 4705
    iget-wide v0, p0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    const-wide/16 v2, 0x1f40

    invoke-static {v0, v1, v2, v3}, Lcom/android/exchange/SyncManager;->runAsleep(JJ)V

    .line 4710
    :cond_22
    iget v0, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I

    packed-switch v0, :pswitch_data_d

    move v0, v6

    .line 4729
    goto/16 :goto_7

    .line 4655
    :pswitch_3d
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Account;->mId:J

    sget v2, Lcom/android/email/provider/EmailContent$Account;->DEVICE_IS_ALLOWED:I

    invoke-static {v0, v1, v2}, Lcom/android/exchange/SyncManager;->blockDevice(JI)V

    .line 4658
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 4659
    const-string v1, "syncTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4660
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "S"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/exchange/EasSyncService;->mSyncReason:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/exchange/EasSyncService;->mChangeCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4661
    const-string v2, "syncStatus"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4662
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/email/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, p0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v7, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move v0, v6

    .line 4664
    goto/16 :goto_7

    .line 4651
    :pswitch_3e
    const/16 v0, 0x20

    .line 4652
    goto/16 :goto_7

    .line 4666
    :pswitch_3f
    const/16 v0, 0x16

    .line 4667
    goto/16 :goto_7

    .line 4669
    :pswitch_40
    const/16 v0, 0x17

    .line 4678
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v2, v2, Lcom/android/email/provider/EmailContent$Account;->mId:J

    invoke-static {v1, v2, v3, v5}, Lcom/android/exchange/SyncManager;->reloadFolderList(Landroid/content/Context;JZ)V

    goto/16 :goto_7

    :pswitch_41
    move v0, v9

    .line 4687
    goto/16 :goto_7

    .line 4690
    :pswitch_42
    const/4 v0, 0x4

    .line 4691
    goto/16 :goto_7

    .line 4713
    :pswitch_43
    const-string v0, "DeviceAccessPermission"

    const-string v0, "Service is stopped as server block this device"

    invoke-static {v8, v0}, Lcom/android/exchange/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v9

    .line 4714
    goto/16 :goto_7

    .line 4717
    :pswitch_44
    const/4 v0, 0x4

    .line 4718
    const-string v1, "DeviceAccessPermission"

    const-string v1, "Service is stopped as server qurantined this device"

    invoke-static {v8, v1}, Lcom/android/exchange/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 4723
    :pswitch_45
    const/16 v0, 0x20

    .line 4724
    const-string v1, "Connection Error "

    const-string v2, "Service is stopped as Network Connectivity Failed"

    invoke-static {v1, v2}, Lcom/android/exchange/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 4744
    :cond_23
    :try_start_18
    invoke-static {}, Lcom/android/exchange/SyncManager;->callback()Lcom/android/email/service/IEmailServiceCallback;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v0, v4}, Lcom/android/email/service/IEmailServiceCallback;->syncMailboxStatus(JII)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_18} :catch_a

    goto/16 :goto_8

    .line 4747
    :catch_a
    move-exception v0

    goto/16 :goto_8

    .line 4555
    :catch_b
    move-exception v0

    goto/16 :goto_1

    .line 4649
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_0
        :pswitch_37
        :pswitch_38
        :pswitch_39
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3d
        :pswitch_3e
        :pswitch_3f
        :pswitch_1
        :pswitch_40
        :pswitch_41
        :pswitch_42
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_2
        :pswitch_13
        :pswitch_14
        :pswitch_15
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_3
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_4
        :pswitch_25
        :pswitch_26
        :pswitch_27
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_5
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_8
        :pswitch_6
        :pswitch_9
        :pswitch_7
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch

    .line 4710
    :pswitch_data_7
    .packed-switch 0x5
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x5
        :pswitch_16
        :pswitch_17
        :pswitch_18
    .end packed-switch

    :pswitch_data_9
    .packed-switch 0x5
        :pswitch_1f
        :pswitch_20
        :pswitch_21
    .end packed-switch

    :pswitch_data_a
    .packed-switch 0x5
        :pswitch_28
        :pswitch_29
        :pswitch_2a
    .end packed-switch

    :pswitch_data_b
    .packed-switch 0x5
        :pswitch_31
        :pswitch_32
        :pswitch_33
    .end packed-switch

    :pswitch_data_c
    .packed-switch 0x5
        :pswitch_3a
        :pswitch_3b
        :pswitch_3c
    .end packed-switch

    :pswitch_data_d
    .packed-switch 0x5
        :pswitch_43
        :pswitch_44
        :pswitch_45
    .end packed-switch
.end method

.method public runAccountMailbox()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/exchange/adapter/Parser$EasParserException;,
            Lcom/android/email/mail/DeviceAccessException;
        }
    .end annotation

    .prologue
    const/4 v11, -0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 3183
    iput v9, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I

    .line 3186
    :try_start_0
    invoke-static {}, Lcom/android/exchange/SyncManager;->callback()Lcom/android/email/service/IEmailServiceCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v1, v1, Lcom/android/email/provider/EmailContent$Account;->mId:J

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/email/service/IEmailServiceCallback;->syncMailboxListStatus(JII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3192
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Account;->mSyncKey:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 3193
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    const-string v1, "0"

    iput-object v1, v0, Lcom/android/email/provider/EmailContent$Account;->mSyncKey:Ljava/lang/String;

    .line 3194
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Account syncKey INIT to 0"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 3195
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 3196
    const-string v1, "syncKey"

    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v2, v2, Lcom/android/email/provider/EmailContent$Account;->mSyncKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3197
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/android/email/provider/EmailContent$Account;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 3200
    :cond_0
    const-string v0, "0"

    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v1, v1, Lcom/android/email/provider/EmailContent$Account;->mSyncKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 3201
    if-eqz v0, :cond_7

    .line 3202
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Initial FolderSync"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 3247
    :cond_1
    :goto_1
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 3248
    const-string v0, "syncInterval"

    const/4 v1, -0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3249
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/email/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "accountKey=? and syncInterval=-3"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v7, v5, Lcom/android/email/provider/EmailContent$Account;->mId:J

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v6, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_2

    .line 3252
    const-string v0, "change ping boxes to push"

    invoke-static {v0}, Lcom/android/exchange/SyncManager;->kick(Ljava/lang/String;)V

    .line 3257
    :cond_2
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-wide v2, v2, Lcom/android/email/provider/EmailContent$Mailbox;->mSyncTime:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-lez v0, :cond_4

    .line 3259
    :cond_3
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Determine EAS protocol version"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 3260
    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->sendHttpClientOptions()Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 3261
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    .line 3262
    const-string v2, "OPTIONS response: "

    invoke-virtual {p0, v2, v1}, Lcom/android/exchange/EasSyncService;->userLog(Ljava/lang/String;I)V

    .line 3263
    const/16 v2, 0xc8

    if-ne v1, v2, :cond_11

    .line 3264
    const-string v1, "MS-ASProtocolCommands"

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v1

    .line 3265
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-virtual {p0, v2}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 3266
    const-string v1, "ms-asprotocolversions"

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 3268
    :try_start_2
    invoke-direct {p0, p0, v0}, Lcom/android/exchange/EasSyncService;->setupProtocolVersion(Lcom/android/exchange/EasSyncService;Lorg/apache/http/Header;)V

    .line 3270
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Using version "

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersion:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/android/email/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 3277
    :try_start_3
    invoke-virtual {v6}, Landroid/content/ContentValues;->clear()V

    .line 3279
    const-string v0, "protocolVersion"

    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersion:Ljava/lang/String;

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3281
    const-string v0, "deviceBlockedType"

    sget v1, Lcom/android/email/provider/EmailContent$Account;->DEVICE_IS_ALLOWED:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3283
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v6}, Lcom/android/email/provider/EmailContent$Account;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 3284
    invoke-virtual {v6}, Landroid/content/ContentValues;->clear()V

    .line 3286
    const-string v0, "syncTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3287
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v6}, Lcom/android/email/provider/EmailContent$Mailbox;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 3295
    :cond_4
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget v0, v0, Lcom/android/email/provider/EmailContent$Account;->mSyncInterval:I

    if-ne v0, v11, :cond_5

    .line 3297
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v1, v1, Lcom/android/email/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    const/4 v2, -0x2

    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v3, v3, Lcom/android/email/provider/EmailContent$Account;->mId:J

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lcom/android/exchange/SyncManager;->setEasSyncIntervals(Landroid/content/Context;Ljava/lang/String;IJZ)V

    .line 3316
    :cond_5
    :goto_2
    iget-boolean v0, p0, Lcom/android/exchange/EasSyncService;->mStop:Z

    if-nez v0, :cond_6

    .line 3318
    iget v0, p0, Lcom/android/exchange/EasSyncService;->mSyncReason:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_13

    .line 3327
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "runAccountMailbox(): Provisioning needed. Sending Provision..."

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 3328
    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->tryProvision()Z

    move-result v0

    if-nez v0, :cond_12

    .line 3330
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I

    .line 3560
    :cond_6
    :goto_3
    return-void

    .line 3205
    :cond_7
    new-instance v0, Lcom/android/exchange/adapter/FolderUpdateAdapter;

    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    invoke-direct {v0, v1, p0}, Lcom/android/exchange/adapter/FolderUpdateAdapter;-><init>(Lcom/android/email/provider/EmailContent$Mailbox;Lcom/android/exchange/EasSyncService;)V

    move v1, v9

    .line 3209
    :cond_8
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processCommand(): Iteration: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v2}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 3210
    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->processCommand(Lcom/android/exchange/adapter/AbstractCommandAdapter;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 3218
    :cond_9
    :goto_4
    iget-boolean v0, p0, Lcom/android/exchange/EasSyncService;->mStop:Z

    if-eqz v0, :cond_c

    .line 3219
    const-string v0, "Thread has been stopped 1. Terminating"

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->errorLog(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    .line 3544
    :catch_0
    move-exception v0

    .line 3548
    :try_start_4
    iget-boolean v1, p0, Lcom/android/exchange/EasSyncService;->mStop:Z

    if-nez v1, :cond_a

    .line 3549
    invoke-static {}, Lcom/android/exchange/SyncManager;->callback()Lcom/android/email/service/IEmailServiceCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v2, v2, Lcom/android/email/provider/EmailContent$Account;->mId:J

    const/16 v4, 0x20

    const/4 v5, 0x0

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/android/email/service/IEmailServiceCallback;->syncMailboxListStatus(JII)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_6

    .line 3557
    :cond_a
    :goto_5
    new-array v1, v10, [Ljava/lang/String;

    const-string v2, "runAccountMailbox(): Caught IO exception. Sending to run()"

    aput-object v2, v1, v9

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 3558
    throw v0

    .line 3213
    :cond_b
    :try_start_5
    iget v2, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I

    if-nez v2, :cond_9

    .line 3215
    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x5

    if-ge v1, v2, :cond_9

    iget-boolean v2, p0, Lcom/android/exchange/EasSyncService;->mStop:Z

    if-eqz v2, :cond_8

    goto :goto_4

    .line 3222
    :cond_c
    iget v0, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_10

    .line 3223
    new-instance v0, Lcom/android/exchange/adapter/FolderDeleteAdapter;

    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    invoke-direct {v0, v1, p0}, Lcom/android/exchange/adapter/FolderDeleteAdapter;-><init>(Lcom/android/email/provider/EmailContent$Mailbox;Lcom/android/exchange/EasSyncService;)V

    move v1, v9

    .line 3227
    :cond_d
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processCommand(): Iteration: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v2}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 3228
    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->processCommand(Lcom/android/exchange/adapter/AbstractCommandAdapter;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 3233
    :cond_e
    :goto_6
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/email/provider/EmailContent$Account;->refresh(Landroid/content/Context;)V

    .line 3234
    iget-boolean v0, p0, Lcom/android/exchange/EasSyncService;->mStop:Z

    if-eqz v0, :cond_10

    .line 3235
    const-string v0, "Thread has been stopped 2. Terminating"

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->errorLog(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 3230
    :cond_f
    iget v2, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I

    if-nez v2, :cond_e

    .line 3232
    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x5

    if-ge v1, v2, :cond_e

    iget-boolean v2, p0, Lcom/android/exchange/EasSyncService;->mStop:Z

    if-eqz v2, :cond_d

    goto :goto_6

    .line 3240
    :cond_10
    iget v0, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 3241
    const/16 v0, 0x9

    iput v0, p0, Lcom/android/exchange/EasSyncService;->mSyncReason:I

    goto/16 :goto_1

    .line 3271
    :catch_1
    move-exception v0

    .line 3274
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 3289
    :cond_11
    const-string v0, "OPTIONS command failed; throwing IOException"

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->errorLog(Ljava/lang/String;)V

    .line 3290
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 3336
    :cond_12
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/exchange/EasSyncService;->mSyncReason:I

    .line 3337
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I

    .line 3340
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exchange/EasSyncService;->mEasNeedsProvisioning:Z

    .line 3341
    sget-object v0, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/exchange/SyncManager;->releaseSyncHolds(Landroid/content/Context;ILcom/android/email/provider/EmailContent$Account;)V

    goto/16 :goto_3

    .line 3351
    :cond_13
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/email/provider/EmailContent$Account;->refresh(Landroid/content/Context;)V

    .line 3354
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Sending Account syncKey: "

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v2, v2, Lcom/android/email/provider/EmailContent$Account;->mSyncKey:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 3358
    new-instance v0, Lcom/android/exchange/adapter/Serializer;

    invoke-direct {v0}, Lcom/android/exchange/adapter/Serializer;-><init>()V

    .line 3359
    const/16 v1, 0x1d6

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    const/16 v2, 0x1d2

    invoke-virtual {v1, v2}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v2, v2, Lcom/android/email/provider/EmailContent$Account;->mSyncKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/exchange/adapter/Serializer;->text(Ljava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->done()V

    .line 3362
    sget-boolean v1, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v1, :cond_14

    .line 3363
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "runAccountMailbox(): Wbxml:"

    aput-object v3, v1, v2

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 3364
    invoke-virtual {v0}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v1

    .line 3365
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 3366
    new-instance v1, Lcom/android/exchange/adapter/LogAdapter;

    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    invoke-direct {v1, v3, p0}, Lcom/android/exchange/adapter/LogAdapter;-><init>(Lcom/android/email/provider/EmailContent$Mailbox;Lcom/android/exchange/EasSyncService;)V

    .line 3367
    invoke-virtual {v1, v2}, Lcom/android/exchange/adapter/LogAdapter;->parse(Ljava/io/InputStream;)Z
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 3374
    :cond_14
    :try_start_6
    const-string v1, "FolderSync"

    invoke-virtual {v0}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/android/exchange/EasSyncService;->sendHttpClientPost(Ljava/lang/String;[B)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 3375
    iget-boolean v1, p0, Lcom/android/exchange/EasSyncService;->mStop:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-eqz v1, :cond_16

    .line 3475
    :try_start_7
    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    .line 3476
    :try_start_8
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    if-eqz v1, :cond_15

    .line 3477
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 3478
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    .line 3480
    :cond_15
    monitor-exit v0

    goto/16 :goto_3

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    throw v1
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0

    .line 3376
    :cond_16
    :try_start_a
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    .line 3378
    sget-boolean v2, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v2, :cond_17

    .line 3379
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "runAccountMailbox(): FolderSync command http response code:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v2}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 3383
    :cond_17
    const/16 v2, 0xc8

    if-ne v1, v2, :cond_19

    .line 3384
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 3385
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v2

    long-to-int v2, v2

    .line 3386
    if-eqz v2, :cond_19

    .line 3387
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 3389
    new-instance v2, Lcom/android/exchange/adapter/FolderSyncParser;

    new-instance v3, Lcom/android/exchange/adapter/AccountSyncAdapter;

    iget-object v4, p0, Lcom/android/exchange/EasSyncService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    invoke-direct {v3, v4, p0}, Lcom/android/exchange/adapter/AccountSyncAdapter;-><init>(Lcom/android/email/provider/EmailContent$Mailbox;Lcom/android/exchange/EasSyncService;)V

    invoke-direct {v2, v0, v3}, Lcom/android/exchange/adapter/FolderSyncParser;-><init>(Ljava/io/InputStream;Lcom/android/exchange/adapter/AbstractSyncAdapter;)V

    invoke-virtual {v2}, Lcom/android/exchange/adapter/FolderSyncParser;->parse()Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    move-result v0

    if-eqz v0, :cond_19

    .line 3475
    :try_start_b
    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0

    .line 3476
    :try_start_c
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    if-eqz v1, :cond_18

    .line 3477
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 3478
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    .line 3480
    :cond_18
    monitor-exit v0

    goto/16 :goto_2

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :try_start_d
    throw v1
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_0

    .line 3396
    :cond_19
    :try_start_e
    invoke-virtual {p0, v1}, Lcom/android/exchange/EasSyncService;->isProvisionError(I)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 3401
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v0}, Lcom/android/email/provider/EmailContent$Account;->getDeviceInfoSent()I

    move-result v0

    if-ne v0, v10, :cond_1c

    move v0, v10

    .line 3402
    :goto_7
    if-nez v0, :cond_1a

    .line 3404
    const-string v0, "EasSyncService"

    const-string v2, "Device info not yet sent"

    invoke-static {v0, v2}, Lcom/android/exchange/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 3406
    :try_start_f
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-wide/high16 v4, 0x4028

    cmpl-double v0, v2, v4

    if-ltz v0, :cond_1a

    .line 3408
    new-instance v0, Lcom/android/exchange/DeviceInformation;

    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/android/exchange/DeviceInformation;-><init>(D)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f .. :try_end_f} :catch_3

    .line 3411
    :try_start_10
    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->getUserAgent()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/exchange/DeviceInformation;->prepareDeviceInformation(Landroid/content/Context;Ljava/lang/String;Lcom/android/email/provider/EmailContent$Account;)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 3412
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->TAG:Ljava/lang/String;

    const-string v2, "INIT_ERROR Device Information"

    invoke-static {v0, v2}, Lcom/android/exchange/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_10} :catch_3

    .line 3443
    :cond_1a
    :goto_8
    :try_start_11
    invoke-virtual {p0, v1}, Lcom/android/exchange/EasSyncService;->isProvisionError(I)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 3451
    const/16 v0, 0x9

    iput v0, p0, Lcom/android/exchange/EasSyncService;->mSyncReason:I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    .line 3475
    :try_start_12
    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_0

    .line 3476
    :try_start_13
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    if-eqz v1, :cond_1b

    .line 3477
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 3478
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    .line 3480
    :cond_1b
    monitor-exit v0

    goto/16 :goto_2

    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    :try_start_14
    throw v1
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_0

    :cond_1c
    move v0, v9

    .line 3401
    goto :goto_7

    .line 3414
    :cond_1d
    :try_start_15
    invoke-virtual {v0}, Lcom/android/exchange/DeviceInformation;->buildCommand()Lcom/android/exchange/adapter/Serializer;

    move-result-object v0

    .line 3415
    if-eqz v0, :cond_1f

    .line 3416
    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2, v0}, Lcom/android/exchange/EasSyncService;->sendDeviceInformation(Landroid/content/Context;Lcom/android/exchange/adapter/Serializer;)I

    move-result v0

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_1a

    .line 3417
    const-string v0, "EasSyncService"

    const-string v2, "Device Info sent, set to 1 in db"

    invoke-static {v0, v2}, Lcom/android/exchange/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3418
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/email/provider/EmailContent$Account;->setDeviceInfoSent(I)V

    .line 3419
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 3420
    const-string v2, "deviceInfoSent"

    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v3}, Lcom/android/email/provider/EmailContent$Account;->getDeviceInfoSent()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3421
    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v0}, Lcom/android/email/provider/EmailContent$Account;->update(Landroid/content/Context;Landroid/content/ContentValues;)I
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_15 .. :try_end_15} :catch_3

    goto :goto_8

    .line 3428
    :catch_2
    move-exception v0

    .line 3429
    :try_start_16
    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->TAG:Ljava/lang/String;

    const-string v3, "INIT_ERROR Device Information"

    invoke-static {v2, v3}, Lcom/android/exchange/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3430
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_16 .. :try_end_16} :catch_3

    goto :goto_8

    .line 3433
    :catch_3
    move-exception v0

    .line 3434
    :try_start_17
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_3

    goto :goto_8

    .line 3475
    :catchall_3
    move-exception v0

    :try_start_18
    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_0

    .line 3476
    :try_start_19
    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    if-eqz v2, :cond_1e

    .line 3477
    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 3478
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    .line 3480
    :cond_1e
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_6

    .line 3475
    :try_start_1a
    throw v0
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_0

    .line 3425
    :cond_1f
    :try_start_1b
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->TAG:Ljava/lang/String;

    const-string v2, "deviceSerializer is null"

    invoke-static {v0, v2}, Lcom/android/exchange/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1b .. :try_end_1b} :catch_3

    goto/16 :goto_8

    .line 3466
    :cond_20
    :try_start_1c
    invoke-virtual {p0, v1}, Lcom/android/exchange/EasSyncService;->isAuthError(I)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 3467
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_3

    .line 3475
    :try_start_1d
    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_0

    .line 3476
    :try_start_1e
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    if-eqz v1, :cond_21

    .line 3477
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 3478
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    .line 3480
    :cond_21
    monitor-exit v0

    goto/16 :goto_3

    :catchall_4
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_4

    :try_start_1f
    throw v1
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_0

    .line 3470
    :cond_22
    :try_start_20
    const-string v0, "FolderSync response error: "

    invoke-virtual {p0, v0, v1}, Lcom/android/exchange/EasSyncService;->userLog(Ljava/lang/String;I)V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_3

    .line 3475
    :try_start_21
    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_0

    .line 3476
    :try_start_22
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    if-eqz v1, :cond_23

    .line 3477
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 3478
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    .line 3480
    :cond_23
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_7

    .line 3486
    :try_start_23
    invoke-virtual {v6}, Landroid/content/ContentValues;->clear()V

    .line 3487
    const-string v0, "syncInterval"

    const/4 v1, -0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3488
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/email/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "accountKey=? and syncInterval=-4"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v7, v5, Lcom/android/email/provider/EmailContent$Account;->mId:J

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v6, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_24

    .line 3491
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Set push/hold boxes to push..."

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_23} :catch_0

    .line 3495
    :cond_24
    :try_start_24
    invoke-static {}, Lcom/android/exchange/SyncManager;->callback()Lcom/android/email/service/IEmailServiceCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v1, v1, Lcom/android/email/provider/EmailContent$Account;->mId:J

    iget v3, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/email/service/IEmailServiceCallback;->syncMailboxListStatus(JII)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_24} :catch_7
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_24} :catch_0

    .line 3504
    :goto_9
    :try_start_25
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Account;->mSecuritySyncKey:Ljava/lang/String;

    .line 3505
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 3506
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v0

    .line 3507
    new-instance v1, Lcom/android/email/SecurityPolicy$PolicySet;

    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-direct {v1, v2}, Lcom/android/email/SecurityPolicy$PolicySet;-><init>(Lcom/android/email/provider/EmailContent$Account;)V

    .line 3508
    invoke-virtual {v0, v1}, Lcom/android/email/SecurityPolicy;->isActive(Lcom/android/email/SecurityPolicy$PolicySet;)Z

    move-result v1

    if-nez v1, :cond_25

    .line 3509
    invoke-virtual {v6}, Landroid/content/ContentValues;->clear()V

    .line 3510
    const-string v1, "securityFlags"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3511
    const-string v1, "securitySyncKey"

    invoke-virtual {v6, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 3512
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v1, v1, Lcom/android/email/provider/EmailContent$Account;->mId:J

    .line 3513
    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/email/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v6, v5, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3515
    invoke-virtual {v0, v1, v2}, Lcom/android/email/SecurityPolicy;->policiesRequired(J)V

    .line 3520
    :cond_25
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget v0, v0, Lcom/android/email/provider/EmailContent$Account;->mSyncInterval:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_26

    .line 3521
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Account id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v3, v3, Lcom/android/email/provider/EmailContent$Account;->mId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " set to syncInterval:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget v3, v3, Lcom/android/email/provider/EmailContent$Account;->mSyncInterval:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". runPingloop not started"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 3522
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I

    goto/16 :goto_3

    .line 3528
    :cond_26
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_25} :catch_0

    move-result-object v0

    .line 3531
    const/4 v1, 0x1

    :try_start_26
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "runAccountMailbox(): Starting runPingLoop()"

    aput-object v3, v1, v2

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 3532
    invoke-direct {p0}, Lcom/android/exchange/EasSyncService;->runPingLoop()V
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_5
    .catch Lcom/android/exchange/StaleFolderListException; {:try_start_26 .. :try_end_26} :catch_4
    .catch Lcom/android/exchange/IllegalHeartbeatException; {:try_start_26 .. :try_end_26} :catch_5

    .line 3541
    :try_start_27
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_27} :catch_0

    goto/16 :goto_2

    .line 3533
    :catch_4
    move-exception v1

    .line 3535
    const/4 v1, 0x1

    :try_start_28
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Ping interrupted; folder list requires sync..."

    aput-object v3, v1, v2

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_5

    .line 3541
    :try_start_29
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_29} :catch_0

    goto/16 :goto_2

    .line 3536
    :catch_5
    move-exception v1

    .line 3539
    :try_start_2a
    iget v1, v1, Lcom/android/exchange/IllegalHeartbeatException;->mLegalHeartbeat:I

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasSyncService;->resetHeartbeats(I)V
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_5

    .line 3541
    :try_start_2b
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    goto/16 :goto_2

    :catchall_5
    move-exception v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    throw v1
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2b} :catch_0

    .line 3480
    :catchall_6
    move-exception v0

    :try_start_2c
    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_6

    :try_start_2d
    throw v0
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_2d} :catch_0

    :catchall_7
    move-exception v1

    :try_start_2e
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_7

    :try_start_2f
    throw v1
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_2f} :catch_0

    .line 3553
    :catch_6
    move-exception v1

    goto/16 :goto_5

    .line 3497
    :catch_7
    move-exception v0

    goto/16 :goto_9

    .line 3188
    :catch_8
    move-exception v0

    goto/16 :goto_0
.end method

.method public sendDeviceInfomationProvision(Landroid/content/Context;)Lcom/android/exchange/adapter/Serializer;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 4880
    if-nez p1, :cond_0

    .line 4881
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4884
    :cond_0
    new-instance v0, Lcom/android/exchange/DeviceInformation;

    sget-wide v1, Lcom/android/exchange/EasSyncService;->protocolVersion:D

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/DeviceInformation;-><init>(D)V

    .line 4886
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mDeviceType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "100"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/exchange/DeviceInformation;->prepareDeviceInformation(Landroid/content/Context;Ljava/lang/String;Lcom/android/email/provider/EmailContent$Account;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4891
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/exchange/DeviceInformation;->buildCommand(Z)Lcom/android/exchange/adapter/Serializer;

    move-result-object v0

    return-object v0

    .line 4887
    :catch_0
    move-exception v1

    .line 4888
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public sendDeviceInformation(Landroid/content/Context;Lcom/android/exchange/adapter/Serializer;)I
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 4829
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 4830
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4833
    :cond_1
    const-string v0, "Settings"

    invoke-virtual {p2}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/exchange/EasSyncService;->sendHttpClientPost(Ljava/lang/String;[B)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 4835
    if-nez v0, :cond_2

    .line 4836
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->TAG:Ljava/lang/String;

    const-string v1, "unable to get response from the server"

    invoke-static {v0, v1}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 4837
    const/4 v0, -0x1

    .line 4861
    :goto_0
    return v0

    .line 4840
    :cond_2
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    .line 4842
    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Settings response = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 4844
    const/16 v2, 0xc8

    if-ne v1, v2, :cond_3

    .line 4845
    new-instance v2, Lcom/android/exchange/adapter/SettingsParser;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/android/exchange/adapter/SettingsParser;-><init>(Ljava/io/InputStream;)V

    .line 4847
    :try_start_0
    invoke-virtual {v2}, Lcom/android/exchange/adapter/SettingsParser;->parse()Z

    move-result v0

    if-nez v0, :cond_4

    .line 4848
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Server responded with error: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lcom/android/exchange/adapter/SettingsParser;->getStatus()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " for settings command"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 4849
    invoke-virtual {v2}, Lcom/android/exchange/adapter/SettingsParser;->getStatus()I
    :try_end_0
    .catch Lcom/android/exchange/EasException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 4851
    :catch_0
    move-exception v0

    .line 4852
    invoke-virtual {v0}, Lcom/android/exchange/EasException;->printStackTrace()V

    .line 4853
    const/4 v0, -0x2

    goto :goto_0

    .line 4859
    :cond_3
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->TAG:Ljava/lang/String;

    const-string v2, "unable to send device information to the server"

    invoke-static {v0, v2}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    move v0, v1

    .line 4861
    goto :goto_0
.end method

.method protected sendHttpClientOptions()Lorg/apache/http/HttpResponse;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2865
    const v0, 0xea60

    invoke-direct {p0, v0}, Lcom/android/exchange/EasSyncService;->getHttpClient(I)Lorg/apache/http/client/HttpClient;

    move-result-object v0

    .line 2866
    const-string v1, "OPTIONS"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/exchange/EasSyncService;->makeUriString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2867
    new-instance v2, Lorg/apache/http/client/methods/HttpOptions;

    invoke-static {v1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/http/client/methods/HttpOptions;-><init>(Ljava/net/URI;)V

    .line 2868
    invoke-virtual {p0, v2, v7}, Lcom/android/exchange/EasSyncService;->setHeaders(Lorg/apache/http/client/methods/HttpRequestBase;Z)V

    .line 2870
    sget-boolean v3, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v3, :cond_1

    .line 2871
    new-array v3, v8, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendHttpClientOptions(): URI String:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v7

    invoke-virtual {p0, v3}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 2872
    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpOptions;->headerIterator()Lorg/apache/http/HeaderIterator;

    move-result-object v1

    .line 2873
    :cond_0
    :goto_0
    invoke-interface {v1}, Lorg/apache/http/HeaderIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2874
    invoke-interface {v1}, Lorg/apache/http/HeaderIterator;->nextHeader()Lorg/apache/http/Header;

    move-result-object v3

    .line 2875
    if-eqz v3, :cond_0

    .line 2876
    new-array v4, v8, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v7

    invoke-virtual {p0, v4}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    goto :goto_0

    .line 2880
    :cond_1
    invoke-interface {v0, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method protected sendHttpClientPost(Ljava/lang/String;Lorg/apache/http/HttpEntity;I)Lorg/apache/http/HttpResponse;
    .locals 19
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2666
    const-string v3, "Ping"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 2671
    if-nez v10, :cond_0

    const-string v3, "FolderSync"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 2673
    :cond_0
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/exchange/EasSyncService;->getPingClient(I)Lorg/apache/http/client/HttpClient;

    move-result-object v3

    move-object v11, v3

    .line 2689
    :goto_0
    const-string v3, "GetAttachment&AttachmentName="

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    .line 2690
    const/4 v3, 0x0

    .line 2695
    const/4 v4, 0x1

    .line 2698
    const/4 v5, 0x0

    .line 2699
    const/4 v6, 0x0

    .line 2700
    const-string v7, "SmartForward&"

    move-object/from16 v0, p1

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "SmartReply&"

    move-object/from16 v0, p1

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 2701
    :cond_1
    const/16 v5, 0x26

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 2702
    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 2703
    const/4 v7, 0x0

    move-object/from16 v0, p1

    move v1, v7

    move v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 2706
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v7, v0

    iget-object v7, v7, Lcom/android/email/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    const-wide/high16 v13, 0x402c

    cmpl-double v7, v7, v13

    if-ltz v7, :cond_d

    .line 2708
    const/4 v7, 0x0

    :goto_1
    move v13, v7

    .line 2724
    :goto_2
    const-string v7, "Ping"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "Options"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 2725
    :cond_2
    const/4 v4, 0x0

    .line 2734
    :cond_3
    :goto_3
    if-eqz v12, :cond_18

    .line 2736
    const-string v3, ";"

    invoke-virtual {v5, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 2737
    add-int/lit8 v7, v3, 0x1

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 2738
    const/4 v8, 0x0

    invoke-virtual {v5, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 2739
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->TAG:Ljava/lang/String;

    move-object v5, v0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sendHttpClientPost cmd for attachment "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/exchange/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v14, v7

    move-object v5, v3

    .line 2743
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    const-string v3, "2.5"

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v15

    cmpl-double v3, v7, v15

    if-nez v3, :cond_4

    .line 2744
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v3, v0

    if-eqz v3, :cond_4

    .line 2745
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/email/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 2747
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/email/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exchange/EasSyncService;->mProtocolVersion:Ljava/lang/String;

    .line 2748
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mProtocolVersion:Ljava/lang/String;

    move-object v3, v0

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    .line 2752
    :cond_4
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mProtocolVersion: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mProtocolVersion:Ljava/lang/String;

    move-object v9, v0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " - cmd: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v7

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 2756
    const-string v3, "0"

    .line 2757
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v7, v0

    if-eqz v7, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v7, v0

    iget-object v7, v7, Lcom/android/email/provider/EmailContent$Account;->mSecuritySyncKey:Ljava/lang/String;

    if-eqz v7, :cond_5

    .line 2758
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/email/provider/EmailContent$Account;->mSecuritySyncKey:Ljava/lang/String;

    .line 2759
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "PolicyKey is set. PolicyKey:"

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    move-object/from16 v0, p0

    move-object v1, v7

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    :cond_5
    move-object v8, v3

    .line 2763
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v15

    const-wide v17, 0x402c333333333333L

    cmpg-double v3, v15, v17

    if-lez v3, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mDeviceId:Ljava/lang/String;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v7, 0x10

    if-gt v3, v7, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mDeviceType:Ljava/lang/String;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v7, 0x10

    if-le v3, v7, :cond_11

    .line 2767
    :cond_6
    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/EasSyncService;->makeUriString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2769
    sget-boolean v6, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v6, :cond_7

    .line 2770
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sendHttpClientPost:URI:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 2773
    :cond_7
    new-instance v6, Lorg/apache/http/client/methods/HttpPost;

    invoke-static {v3}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v3

    invoke-direct {v6, v3}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/net/URI;)V

    .line 2774
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/EasSyncService;->setHeaders(Lorg/apache/http/client/methods/HttpRequestBase;Z)V

    .line 2798
    :goto_5
    if-eqz v13, :cond_14

    .line 2799
    const-string v3, "Content-Type"

    const-string v4, "message/rfc822"

    invoke-virtual {v6, v3, v4}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 2817
    :cond_8
    :goto_6
    move-object v0, v6

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 2819
    sget-boolean v3, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v3, :cond_16

    .line 2820
    invoke-virtual {v6}, Lorg/apache/http/client/methods/HttpPost;->headerIterator()Lorg/apache/http/HeaderIterator;

    move-result-object v3

    .line 2821
    :cond_9
    :goto_7
    invoke-interface {v3}, Lorg/apache/http/HeaderIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_16

    .line 2822
    invoke-interface {v3}, Lorg/apache/http/HeaderIterator;->nextHeader()Lorg/apache/http/Header;

    move-result-object v4

    .line 2823
    if-eqz v4, :cond_9

    .line 2824
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v4}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, ":"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v8

    move-object/from16 v0, p0

    move-object v1, v7

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    goto :goto_7

    .line 2676
    :cond_a
    const-string v3, "ItemOperations"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    const-string v3, "Sync"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    const-wide/high16 v5, 0x4004

    cmpg-double v3, v3, v5

    if-gtz v3, :cond_c

    .line 2678
    :cond_b
    const-string v3, "Email"

    const-string v4, "client = getLoadMoreClient(timeout)"

    invoke-static {v3, v4}, Lcom/android/exchange/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2679
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/exchange/EasSyncService;->getLoadMoreClient(I)Lorg/apache/http/client/HttpClient;

    move-result-object v3

    move-object v11, v3

    goto/16 :goto_0

    .line 2683
    :cond_c
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/exchange/EasSyncService;->getHttpClient(I)Lorg/apache/http/client/HttpClient;

    move-result-object v3

    move-object v11, v3

    goto/16 :goto_0

    .line 2710
    :cond_d
    const/4 v7, 0x1

    goto/16 :goto_1

    .line 2713
    :cond_e
    const-string v7, "SendMail&"

    move-object/from16 v0, p1

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_19

    .line 2716
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/email/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    const-wide/high16 v8, 0x402c

    cmpl-double v6, v6, v8

    if-ltz v6, :cond_f

    .line 2718
    const/4 v6, 0x0

    move v13, v6

    move-object v6, v5

    move-object/from16 v5, p1

    goto/16 :goto_2

    .line 2720
    :cond_f
    const/4 v6, 0x1

    move v13, v6

    move-object v6, v5

    move-object/from16 v5, p1

    goto/16 :goto_2

    .line 2726
    :cond_10
    const-string v7, "NHProvision"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 2728
    const/4 v4, 0x0

    .line 2730
    const-string v5, "Provision"

    goto/16 :goto_3

    .line 2776
    :cond_11
    new-instance v3, Lcom/android/exchange/adapter/EasBase64EncodedURI;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/exchange/EasSyncService;->mSsl:Z

    move v4, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/exchange/EasSyncService;->mTrustSsl:Z

    move v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mHostAddress:Ljava/lang/String;

    move-object v9, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mUserName:Ljava/lang/String;

    move-object v15, v0

    invoke-direct {v3, v4, v7, v9, v15}, Lcom/android/exchange/adapter/EasBase64EncodedURI;-><init>(ZZLjava/lang/String;Ljava/lang/String;)V

    .line 2777
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mProtocolVersion:Ljava/lang/String;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mDeviceId:Ljava/lang/String;

    move-object v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mDeviceType:Ljava/lang/String;

    move-object v9, v0

    invoke-virtual/range {v3 .. v9}, Lcom/android/exchange/adapter/EasBase64EncodedURI;->getUriString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2779
    sget-boolean v4, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v4, :cond_12

    .line 2780
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sendHttpClientPost:URI:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 2783
    :cond_12
    new-instance v4, Lorg/apache/http/client/methods/HttpPost;

    invoke-static {v3}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v3

    invoke-direct {v4, v3}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/net/URI;)V

    .line 2785
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mUserName:Ljava/lang/String;

    move-object v3, v0

    invoke-static {v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2786
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mAuthString:Ljava/lang/String;

    move-object v6, v0

    if-nez v6, :cond_13

    .line 2787
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mUserName:Ljava/lang/String;

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x3a

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mPassword:Ljava/lang/String;

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2788
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Basic "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    new-instance v8, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-static {v6}, Lcom/android/email/codec/binary/Base64;->encodeBase64([B)[B

    move-result-object v6

    invoke-direct {v8, v6}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exchange/EasSyncService;->mAuthString:Ljava/lang/String;

    .line 2789
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "&User="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "&DeviceId="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mDeviceId:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "&DeviceType="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mDeviceType:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exchange/EasSyncService;->mCmdString:Ljava/lang/String;

    .line 2792
    :cond_13
    const-string v3, "Authorization"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mAuthString:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v4, v3, v6}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 2793
    const-string v3, "Connection"

    const-string v6, "keep-alive"

    invoke-virtual {v4, v3, v6}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v4

    goto/16 :goto_5

    .line 2800
    :cond_14
    if-eqz p2, :cond_15

    .line 2801
    const-string v3, "Content-Type"

    const-string v4, "application/vnd.ms-sync.wbxml"

    invoke-virtual {v6, v3, v4}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 2804
    :cond_15
    if-eqz v12, :cond_8

    if-eqz v14, :cond_8

    .line 2807
    invoke-virtual {v14}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 2808
    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->checkGzipRequired(Ljava/lang/String;)Z

    move-result v3

    .line 2809
    if-eqz v3, :cond_8

    .line 2811
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->TAG:Ljava/lang/String;

    move-object v3, v0

    const-string v4, "sendHttpClientPost setheader:gzip "

    invoke-static {v3, v4}, Lcom/android/exchange/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2812
    const-string v3, "Accept-Encoding"

    const-string v4, "gzip"

    invoke-virtual {v6, v3, v4}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 2830
    :cond_16
    const/4 v3, 0x0

    .line 2831
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/exchange/EasSyncService;->commandFinished:Z

    .line 2832
    const-string v4, "Sync"

    invoke-virtual {v5, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_17

    const-string v4, "FolderSync"

    invoke-virtual {v5, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_17

    const-string v4, "Provision"

    invoke-virtual {v5, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_17

    const-string v4, "Ping"

    invoke-virtual {v5, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_17

    .line 2837
    const/4 v3, 0x1

    move v8, v3

    .line 2842
    :goto_8
    const-string v3, "EasSyncService"

    const-string v4, "jykim : before executePostWithTimeout "

    invoke-static {v3, v4}, Lcom/android/exchange/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v3, p0

    move-object v4, v11

    move-object v5, v6

    move/from16 v6, p3

    move v7, v10

    .line 2843
    invoke-virtual/range {v3 .. v8}, Lcom/android/exchange/EasSyncService;->executePostWithTimeout(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpPost;IZZ)Lorg/apache/http/HttpResponse;

    move-result-object v3

    return-object v3

    :cond_17
    move v8, v3

    goto :goto_8

    :cond_18
    move-object v14, v3

    goto/16 :goto_4

    :cond_19
    move v13, v6

    move-object v6, v5

    move-object/from16 v5, p1

    goto/16 :goto_2
.end method

.method protected sendHttpClientPost(Ljava/lang/String;[B)Lorg/apache/http/HttpResponse;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2573
    const-string v0, "EasSyncService"

    const-string v1, "jykim : before sendHttpClientPost "

    invoke-static {v0, v1}, Lcom/android/exchange/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2574
    new-instance v0, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v0, p2}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    const v1, 0xea60

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/exchange/EasSyncService;->sendHttpClientPost(Ljava/lang/String;Lorg/apache/http/HttpEntity;I)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method protected sendMeetingResponse(Lcom/android/exchange/MeetingResponseRequest;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/email/mail/DeviceAccessException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2165
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-wide v1, p1, Lcom/android/exchange/MeetingResponseRequest;->mMessageId:J

    invoke-static {v0, v1, v2}, Lcom/android/email/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Message;

    move-result-object v0

    .line 2166
    if-nez v0, :cond_1

    .line 2209
    :cond_0
    :goto_0
    return-void

    .line 2167
    :cond_1
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-wide v2, v0, Lcom/android/email/provider/EmailContent$Message;->mMailboxKey:J

    invoke-static {v1, v2, v3}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v1

    .line 2168
    if-eqz v1, :cond_0

    .line 2169
    new-instance v2, Lcom/android/exchange/adapter/Serializer;

    invoke-direct {v2}, Lcom/android/exchange/adapter/Serializer;-><init>()V

    .line 2170
    const/16 v3, 0x207

    invoke-virtual {v2, v3}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v3

    const/16 v4, 0x209

    invoke-virtual {v3, v4}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 2171
    const/16 v3, 0x20c

    iget v4, p1, Lcom/android/exchange/MeetingResponseRequest;->mResponse:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 2172
    const/16 v3, 0x206

    iget-object v1, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mServerId:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 2173
    const/16 v1, 0x208

    iget-object v3, v0, Lcom/android/email/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 2174
    invoke-virtual {v2}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->done()V

    .line 2177
    sget-boolean v1, Lcom/android/exchange/Eas;->PARSER_LOG:Z

    if-eqz v1, :cond_2

    .line 2178
    new-array v1, v7, [Ljava/lang/String;

    const-string v3, "sendMeetingResponse(): Wbxml:"

    aput-object v3, v1, v6

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 2179
    invoke-virtual {v2}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v1

    .line 2180
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 2181
    new-instance v1, Lcom/android/exchange/adapter/LogAdapter;

    iget-object v4, p0, Lcom/android/exchange/EasSyncService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    invoke-direct {v1, v4, p0}, Lcom/android/exchange/adapter/LogAdapter;-><init>(Lcom/android/email/provider/EmailContent$Mailbox;Lcom/android/exchange/EasSyncService;)V

    .line 2182
    invoke-virtual {v1, v3}, Lcom/android/exchange/adapter/LogAdapter;->parse(Ljava/io/InputStream;)Z

    .line 2186
    :cond_2
    const-string v1, "MeetingResponse"

    invoke-virtual {v2}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/exchange/EasSyncService;->sendHttpClientPost(Ljava/lang/String;[B)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 2187
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    .line 2190
    sget-boolean v3, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v3, :cond_3

    .line 2191
    new-array v3, v7, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendMeetingResponse(): MeetingResponse http response code:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p0, v3}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 2195
    :cond_3
    const/16 v3, 0xc8

    if-ne v2, v3, :cond_4

    .line 2196
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    .line 2197
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v2

    long-to-int v2, v2

    .line 2198
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    .line 2199
    if-eqz v2, :cond_0

    .line 2200
    new-instance v2, Lcom/android/exchange/adapter/MeetingResponseParser;

    invoke-direct {v2, v1, p0}, Lcom/android/exchange/adapter/MeetingResponseParser;-><init>(Ljava/io/InputStream;Lcom/android/exchange/EasSyncService;)V

    invoke-virtual {v2}, Lcom/android/exchange/adapter/MeetingResponseParser;->parse()Z

    .line 2201
    iget v1, p1, Lcom/android/exchange/MeetingResponseRequest;->mResponse:I

    invoke-direct {p0, v0, v1}, Lcom/android/exchange/EasSyncService;->sendMeetingResponseMail(Lcom/android/email/provider/EmailContent$Message;I)V

    goto/16 :goto_0

    .line 2203
    :cond_4
    invoke-virtual {p0, v2}, Lcom/android/exchange/EasSyncService;->isAuthError(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2204
    new-instance v0, Lcom/android/exchange/EasAuthenticationException;

    invoke-direct {v0}, Lcom/android/exchange/EasAuthenticationException;-><init>()V

    throw v0

    .line 2206
    :cond_5
    new-array v0, v7, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Meeting response request failed, code: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 2207
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
.end method

.method protected sendMoveMessage(Lcom/android/exchange/MoveMessageRequest;)I
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/email/mail/DeviceAccessException;
        }
    .end annotation

    .prologue
    .line 2213
    const/4 v0, 0x0

    .line 2215
    new-instance v1, Lcom/android/exchange/adapter/Serializer;

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/android/exchange/adapter/Serializer;-><init>(ZZ)V

    .line 2217
    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-wide v3, p1, Lcom/android/exchange/MoveMessageRequest;->mCurBoxId:J

    invoke-static {v2, v3, v4}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v2

    .line 2218
    if-nez v2, :cond_0

    const/4 v0, 0x1

    .line 2357
    :goto_0
    return v0

    .line 2219
    :cond_0
    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-wide v4, p1, Lcom/android/exchange/MoveMessageRequest;->mSelBoxId:J

    invoke-static {v3, v4, v5}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v3

    .line 2220
    if-nez v3, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    .line 2225
    :cond_1
    const v4, 0xea60

    .line 2226
    iget-object v5, v2, Lcom/android/email/provider/EmailContent$Mailbox;->mServerId:Ljava/lang/String;

    iget-object v6, v3, Lcom/android/email/provider/EmailContent$Mailbox;->mServerId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2228
    const-string v0, "Email"

    .line 2229
    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    const/16 v3, 0x1c

    invoke-virtual {v2, v3}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    const/16 v3, 0x10

    invoke-virtual {v2, v3, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v0

    const/16 v2, 0xb

    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->SyncKey:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v0

    const/16 v2, 0x12

    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->CollectionId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 2235
    const/16 v0, 0x13

    invoke-virtual {v1, v0}, Lcom/android/exchange/adapter/Serializer;->tag(I)Lcom/android/exchange/adapter/Serializer;

    .line 2240
    const/16 v0, 0x15

    const-string v2, "50"

    invoke-virtual {v1, v0, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 2245
    const/16 v0, 0x16

    invoke-virtual {v1, v0}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 2246
    iget-object v0, p1, Lcom/android/exchange/MoveMessageRequest;->mMessageIdList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    .line 2247
    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v2, v5, v6}, Lcom/android/email/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Message;

    move-result-object v2

    .line 2248
    const/16 v3, 0x9

    invoke-virtual {v1, v3}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v3

    const/16 v5, 0xd

    iget-object v2, v2, Lcom/android/email/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v3, v5, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 2249
    sget-object v2, Lcom/android/email/provider/EmailContent$Message;->SYNCED_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v2, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 2250
    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v2, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    .line 2252
    :cond_2
    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 2253
    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/exchange/adapter/Serializer;->done()V

    .line 2254
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "EasSyncService"

    aput-object v3, v0, v2

    const/4 v2, 0x1

    const-string v3, "EAS SyncService : Sending Http Client Post"

    aput-object v3, v0, v2

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 2255
    const-string v0, "Sync"

    new-instance v2, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    invoke-virtual {p0, v0, v2, v4}, Lcom/android/exchange/EasSyncService;->sendHttpClientPost(Ljava/lang/String;Lorg/apache/http/HttpEntity;I)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 2257
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 2258
    const/16 v1, 0xc8

    if-ne v0, v1, :cond_3

    .line 2259
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "EasSyncService"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "send Delete Message : 200 OK"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 2270
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 2261
    :cond_3
    const-string v1, "Sync response error: "

    invoke-virtual {p0, v1, v0}, Lcom/android/exchange/EasSyncService;->userLog(Ljava/lang/String;I)V

    .line 2262
    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->isAuthError(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2263
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I

    .line 2264
    new-instance v0, Lcom/android/exchange/EasAuthenticationException;

    invoke-direct {v0}, Lcom/android/exchange/EasAuthenticationException;-><init>()V

    throw v0

    .line 2266
    :cond_4
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I

    .line 2267
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 2273
    :cond_5
    const/16 v4, 0x145

    invoke-virtual {v1, v4}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 2275
    iget-object v4, p1, Lcom/android/exchange/MoveMessageRequest;->mMessageIdList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    .line 2276
    iget-object v5, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lcom/android/email/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Message;

    move-result-object v5

    .line 2277
    if-nez v5, :cond_7

    const/4 v0, 0x1

    goto/16 :goto_0

    .line 2279
    :cond_7
    iget-object v6, v5, Lcom/android/email/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    if-nez v6, :cond_8

    .line 2281
    sget-object v5, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 2282
    iget-object v6, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6, v5, v7, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_2

    .line 2285
    :cond_8
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "James"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "EAS Sync Service : req.mMessageId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v5, Lcom/android/email/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", req.mCurBoxId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v2, Lcom/android/email/provider/EmailContent$Mailbox;->mServerId:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "req.mSelBoxId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v3, Lcom/android/email/provider/EmailContent$Mailbox;->mServerId:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {p0, v6}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 2292
    const/16 v6, 0x146

    invoke-virtual {v1, v6}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 2294
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6}, Ljava/lang/String;-><init>()V

    .line 2295
    iget-object v6, v5, Lcom/android/email/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    const-string v7, "LocalAccountMoved-"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 2297
    const/4 v0, 0x1

    .line 2298
    iget-object v5, v5, Lcom/android/email/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    const-string v6, "LocalAccountMoved-"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 2299
    const/16 v6, 0x147

    invoke-virtual {v1, v6, v5}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 2306
    :goto_3
    const/16 v5, 0x148

    iget-object v6, v2, Lcom/android/email/provider/EmailContent$Mailbox;->mServerId:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 2307
    const/16 v5, 0x149

    iget-object v6, v3, Lcom/android/email/provider/EmailContent$Mailbox;->mServerId:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 2308
    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 2310
    if-eqz v0, :cond_6

    .line 2319
    if-eqz v0, :cond_6

    .line 2322
    :try_start_0
    invoke-static {}, Lcom/android/exchange/SyncManager;->callback()Lcom/android/email/service/IEmailServiceCallback;

    move-result-object v5

    iget-wide v6, p0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-interface {v5, v6, v7, v8, v9}, Lcom/android/email/service/IEmailServiceCallback;->syncMailboxStatus(JII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 2323
    :catch_0
    move-exception v5

    goto/16 :goto_2

    .line 2303
    :cond_9
    const/16 v6, 0x147

    iget-object v5, v5, Lcom/android/email/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v1, v6, v5}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto :goto_3

    .line 2332
    :cond_a
    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/exchange/adapter/Serializer;->done()V

    .line 2334
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "EasSyncService"

    aput-object v5, v0, v4

    const/4 v4, 0x1

    const-string v5, "EAS SyncService : Sending Http Client Post"

    aput-object v5, v0, v4

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 2335
    const-string v0, "MoveItems"

    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/exchange/EasSyncService;->sendHttpClientPost(Ljava/lang/String;[B)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 2336
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    .line 2337
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 2338
    const/16 v4, 0xc8

    if-ne v1, v4, :cond_c

    .line 2339
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "EasSyncService"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "send Move Message : 200 OK"

    aput-object v6, v4, v5

    invoke-virtual {p0, v4}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 2340
    if-eqz v0, :cond_b

    .line 2341
    new-instance v4, Lcom/android/exchange/adapter/MoveItemAdapter;

    invoke-direct {v4, v2, p0}, Lcom/android/exchange/adapter/MoveItemAdapter;-><init>(Lcom/android/email/provider/EmailContent$Mailbox;Lcom/android/exchange/EasSyncService;)V

    .line 2342
    iget-wide v2, v3, Lcom/android/email/provider/EmailContent$Mailbox;->mId:J

    invoke-virtual {v4, v2, v3}, Lcom/android/exchange/adapter/MoveItemAdapter;->setDestinationMailBox(J)V

    .line 2343
    invoke-virtual {v4, v0}, Lcom/android/exchange/adapter/MoveItemAdapter;->parse(Ljava/io/InputStream;)Z

    .line 2356
    :cond_b
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "EasSyncService"

    aput-object v3, v0, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Done - MoveMessage! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 2357
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 2345
    :cond_c
    invoke-virtual {p0, v1}, Lcom/android/exchange/EasSyncService;->isAuthError(I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2347
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "EasSyncService"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "send Move Message : isAuthError"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 2348
    new-instance v0, Lcom/android/exchange/EasAuthenticationException;

    invoke-direct {v0}, Lcom/android/exchange/EasAuthenticationException;-><init>()V

    throw v0

    .line 2351
    :cond_d
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "EasSyncService"

    aput-object v3, v0, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Meeting response request failed, code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 2352
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Meeting response request failed, code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 2353
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
.end method

.method protected sendPing([BI)Lorg/apache/http/HttpResponse;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2582
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

    .line 2583
    sget-boolean v0, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v0, :cond_0

    .line 2584
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

    .line 2586
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
    .locals 6
    .parameter
    .parameter

    .prologue
    const-string v5, "X-MS-PolicyKey"

    const-string v4, "0"

    .line 2428
    const-string v0, "Authorization"

    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mAuthString:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 2429
    const-string v0, "MS-ASProtocolVersion"

    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersion:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 2430
    const-string v0, "Connection"

    const-string v1, "keep-alive"

    invoke-virtual {p1, v0, v1}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 2435
    const-string v0, "User-Agent"

    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->getUserAgent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 2439
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v2, 0x402c

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_1

    .line 2443
    :cond_0
    const-string v0, "X-MS-PolicyKey"

    const-string v0, "0"

    invoke-virtual {p1, v5, v4}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 2449
    :cond_1
    if-eqz p2, :cond_4

    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    if-eqz v0, :cond_4

    .line 2450
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Account;->mSecuritySyncKey:Ljava/lang/String;

    .line 2451
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    .line 2457
    :cond_2
    const-string v0, "0"

    move-object v0, v4

    .line 2459
    :cond_3
    const-string v1, "X-MS-PolicyKey"

    invoke-virtual {p1, v5, v0}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 2462
    :cond_4
    return-void
.end method

.method public setupAdhocService(Landroid/content/Context;)Z
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 4799
    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v2, v2, Lcom/android/email/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    invoke-static {p1, v2, v3}, Lcom/android/email/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$HostAuth;

    move-result-object v1

    .line 4800
    .local v1, ha:Lcom/android/email/provider/EmailContent$HostAuth;
    if-nez v1, :cond_0

    move v2, v4

    .line 4819
    :goto_0
    return v2

    .line 4803
    :cond_0
    iput-object p1, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    .line 4804
    iget-object v2, v1, Lcom/android/email/provider/EmailContent$HostAuth;->mAddress:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/exchange/EasSyncService;->mHostAddress:Ljava/lang/String;

    .line 4805
    iget-object v2, v1, Lcom/android/email/provider/EmailContent$HostAuth;->mLogin:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/exchange/EasSyncService;->mUserName:Ljava/lang/String;

    .line 4806
    iget-object v2, v1, Lcom/android/email/provider/EmailContent$HostAuth;->mPassword:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/exchange/EasSyncService;->mPassword:Ljava/lang/String;

    .line 4807
    iget v2, v1, Lcom/android/email/provider/EmailContent$HostAuth;->mFlags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    move v2, v5

    :goto_1
    iput-boolean v2, p0, Lcom/android/exchange/EasSyncService;->mSsl:Z

    .line 4808
    iget v2, v1, Lcom/android/email/provider/EmailContent$HostAuth;->mFlags:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_2

    move v2, v5

    :goto_2
    iput-boolean v2, p0, Lcom/android/exchange/EasSyncService;->mTrustSsl:Z

    .line 4809
    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v2, v2, Lcom/android/email/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersion:Ljava/lang/String;

    .line 4810
    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersion:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    .line 4813
    :try_start_0
    invoke-static {}, Lcom/android/exchange/SyncManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exchange/EasSyncService;->mDeviceId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v5

    .line 4819
    goto :goto_0

    :cond_1
    move v2, v4

    .line 4807
    goto :goto_1

    :cond_2
    move v2, v4

    .line 4808
    goto :goto_2

    .line 4814
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 4815
    .local v0, e:Ljava/io/IOException;
    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->TAG:Ljava/lang/String;

    const-string v3, "Unable to get deviceId"

    invoke-static {v2, v3}, Lcom/android/exchange/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4816
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move v2, v4

    .line 4817
    goto :goto_0
.end method

.method protected setupService()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 4507
    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v3, v3, Lcom/android/email/provider/EmailContent$Account;->mId:J

    invoke-static {v2, v3, v4}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    .line 4508
    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    if-nez v2, :cond_0

    move v2, v6

    .line 4544
    :goto_0
    return v2

    .line 4511
    :cond_0
    sget-boolean v2, Lcom/android/exchange/Eas;->FILE_LOG:Z

    if-eqz v2, :cond_1

    .line 4512
    invoke-static {}, Lcom/android/exchange/utility/FileLogger;->restoreLog()V

    .line 4515
    :cond_1
    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v3, v3, Lcom/android/email/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    invoke-static {v2, v3, v4}, Lcom/android/email/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$HostAuth;

    move-result-object v1

    .line 4516
    .local v1, ha:Lcom/android/email/provider/EmailContent$HostAuth;
    if-nez v1, :cond_2

    .line 4518
    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->TAG:Ljava/lang/String;

    const-string v3, "ha is null for account"

    invoke-static {v2, v3}, Lcom/android/exchange/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v6

    .line 4519
    goto :goto_0

    .line 4521
    :cond_2
    iget-object v2, v1, Lcom/android/email/provider/EmailContent$HostAuth;->mAddress:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/exchange/EasSyncService;->mHostAddress:Ljava/lang/String;

    .line 4522
    iget-object v2, v1, Lcom/android/email/provider/EmailContent$HostAuth;->mLogin:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/exchange/EasSyncService;->mUserName:Ljava/lang/String;

    .line 4523
    iget-object v2, v1, Lcom/android/email/provider/EmailContent$HostAuth;->mPassword:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/exchange/EasSyncService;->mPassword:Ljava/lang/String;

    .line 4526
    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v2, v2, Lcom/android/email/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersion:Ljava/lang/String;

    .line 4528
    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersion:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 4529
    const-string v2, "2.5"

    iput-object v2, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersion:Ljava/lang/String;

    .line 4531
    :cond_3
    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersion:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    .line 4534
    :try_start_0
    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-wide v3, v3, Lcom/android/email/provider/EmailContent$Mailbox;->mId:J

    invoke-static {v2, v3, v4}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exchange/EasSyncService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4539
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

    .line 4535
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 4536
    .local v0, e:Ljava/lang/Exception;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "error occruerd here "

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 4537
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 4540
    .end local v0           #e:Ljava/lang/Exception;
    :cond_5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exchange/EasSyncService;->mThread:Ljava/lang/Thread;

    .line 4541
    const/16 v2, 0xa

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 4542
    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exchange/EasSyncService;->TAG:Ljava/lang/String;

    .line 4544
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public stop()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x1

    .line 556
    iput-boolean v0, p0, Lcom/android/exchange/EasSyncService;->mStop:Z

    .line 557
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

    .line 558
    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 559
    :try_start_0
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/exchange/EasSyncService;->commandFinished:Z

    if-nez v1, :cond_0

    .line 560
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 564
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

    .line 565
    iget-wide v1, p0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    invoke-static {v1, v2}, Lcom/android/exchange/SyncManager;->clearWatchdogAlarm(J)V

    .line 568
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 570
    sget-object v0, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    if-eqz v0, :cond_1

    .line 571
    sget-object v0, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    iget-wide v1, p0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/SyncManager;->releaseWakeLock(J)V

    .line 572
    :cond_1
    return-void

    .line 557
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 568
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public sync(Lcom/android/exchange/adapter/AbstractSyncAdapter;)V
    .locals 14
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/email/mail/DeviceAccessException;
        }
    .end annotation

    .prologue
    .line 4056
    iget-object v3, p1, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    .line 4057
    invoke-virtual {p1}, Lcom/android/exchange/adapter/AbstractSyncAdapter;->getCollectionName()Ljava/lang/String;

    .line 4058
    invoke-virtual {p1}, Lcom/android/exchange/adapter/AbstractSyncAdapter;->getSyncKey()Ljava/lang/String;

    move-result-object v1

    .line 4059
    iput-object v1, p0, Lcom/android/exchange/EasSyncService;->SyncKey:Ljava/lang/String;

    .line 4060
    iget-object v1, v3, Lcom/android/email/provider/EmailContent$Mailbox;->mServerId:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/exchange/EasSyncService;->CollectionId:Ljava/lang/String;

    .line 4061
    const/4 v1, 0x1

    .line 4062
    const/4 v2, 0x0

    move v4, v2

    move v5, v1

    .line 4063
    :goto_0
    iget-boolean v1, p0, Lcom/android/exchange/EasSyncService;->mStop:Z

    if-nez v1, :cond_31

    if-eqz v5, :cond_31

    .line 4066
    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->hasConnectivity()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4067
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "No connectivity in sync; finishing sync"

    aput-object v3, v1, v2

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 4068
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I

    .line 4435
    :goto_1
    return-void

    .line 4073
    :cond_0
    invoke-virtual {p1}, Lcom/android/exchange/adapter/AbstractSyncAdapter;->isSyncable()Z

    move-result v1

    if-nez v1, :cond_3

    .line 4074
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I

    goto :goto_1

    .line 4085
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mRequests:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/exchange/Request;

    .line 4087
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4092
    instance-of v2, v1, Lcom/android/exchange/PartRequest;

    if-eqz v2, :cond_9

    .line 4095
    :try_start_1
    move-object v0, v1

    check-cast v0, Lcom/android/exchange/PartRequest;

    move-object v2, v0

    invoke-virtual {p0, v2}, Lcom/android/exchange/EasSyncService;->getAttachment(Lcom/android/exchange/PartRequest;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 4111
    :cond_2
    :goto_2
    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mRequests:Ljava/util/ArrayList;

    monitor-enter v2

    .line 4112
    :try_start_2
    iget-object v6, p0, Lcom/android/exchange/EasSyncService;->mRequests:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4113
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 4081
    :cond_3
    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mRequests:Ljava/util/ArrayList;

    monitor-enter v2

    .line 4082
    :try_start_3
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mRequests:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4083
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 4116
    new-instance v1, Lcom/android/exchange/adapter/Serializer;

    invoke-direct {v1}, Lcom/android/exchange/adapter/Serializer;-><init>()V

    .line 4118
    invoke-virtual {p1}, Lcom/android/exchange/adapter/AbstractSyncAdapter;->getCollectionName()Ljava/lang/String;

    move-result-object v2

    .line 4119
    invoke-virtual {p1}, Lcom/android/exchange/adapter/AbstractSyncAdapter;->getSyncKey()Ljava/lang/String;

    move-result-object v6

    .line 4120
    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "sync, sending "

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v2, v7, v8

    const/4 v8, 0x2

    const-string v9, " syncKey: "

    aput-object v9, v7, v8

    const/4 v8, 0x3

    aput-object v6, v7, v8

    invoke-virtual {p0, v7}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 4124
    const/4 v7, 0x1

    .line 4126
    iget-object v8, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    const-wide v10, 0x4028333333333333L

    cmpl-double v8, v8, v10

    if-ltz v8, :cond_c

    .line 4127
    const/4 v8, 0x5

    invoke-virtual {v1, v8}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v8

    const/16 v9, 0x1c

    invoke-virtual {v8, v9}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v8

    const/16 v9, 0xf

    invoke-virtual {v8, v9}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v8

    const/16 v9, 0xb

    invoke-virtual {v8, v9, v6}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v8

    const/16 v9, 0x12

    iget-object v10, v3, Lcom/android/email/provider/EmailContent$Mailbox;->mServerId:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 4134
    if-eqz v7, :cond_b

    iget v7, v3, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    const/4 v8, 0x6

    if-eq v7, v8, :cond_b

    .line 4137
    const/16 v7, 0x1e

    invoke-virtual {v1, v7}, Lcom/android/exchange/adapter/Serializer;->tag(I)Lcom/android/exchange/adapter/Serializer;

    .line 4157
    :cond_4
    :goto_3
    const v7, 0xea60

    .line 4160
    iget v8, v3, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    const/4 v9, 0x4

    if-eq v8, v9, :cond_22

    .line 4163
    iget v8, v3, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    const/16 v9, 0x61

    if-ne v8, v9, :cond_d

    const-string v8, "0"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_d

    .line 4165
    const/16 v6, 0x17

    invoke-virtual {v1, v6}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 4166
    const/16 v6, 0x28

    const-string v8, "30"

    invoke-virtual {v1, v6, v8}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 4167
    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move v6, v7

    .line 4325
    :goto_4
    iget v7, v3, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    const/16 v8, 0x61

    if-eq v7, v8, :cond_5

    .line 4328
    invoke-virtual {p1, v1}, Lcom/android/exchange/adapter/AbstractSyncAdapter;->sendLocalChanges(Lcom/android/exchange/adapter/Serializer;)Z

    .line 4343
    :cond_5
    :goto_5
    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/exchange/adapter/Serializer;->done()V

    .line 4346
    sget-boolean v7, Lcom/android/exchange/Eas;->PARSER_LOG:Z

    if-eqz v7, :cond_6

    .line 4347
    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v7

    .line 4348
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "sync(): Wbxml:"

    aput-object v10, v8, v9

    invoke-virtual {p0, v8}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 4349
    new-instance v8, Ljava/io/ByteArrayInputStream;

    invoke-direct {v8, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 4350
    new-instance v7, Lcom/android/exchange/adapter/LogAdapter;

    iget-object v9, p0, Lcom/android/exchange/EasSyncService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    invoke-direct {v7, v9, p0}, Lcom/android/exchange/adapter/LogAdapter;-><init>(Lcom/android/email/provider/EmailContent$Mailbox;Lcom/android/exchange/EasSyncService;)V

    .line 4351
    invoke-virtual {v7, v8}, Lcom/android/exchange/adapter/LogAdapter;->parse(Ljava/io/InputStream;)Z

    .line 4356
    :cond_6
    :try_start_4
    const-string v7, "Sync"

    new-instance v8, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v1

    invoke-direct {v8, v1}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    invoke-virtual {p0, v7, v8, v6}, Lcom/android/exchange/EasSyncService;->sendHttpClientPost(Ljava/lang/String;Lorg/apache/http/HttpEntity;I)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 4358
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    .line 4360
    const-string v7, "sync(): sendHttpClientPost HTTP response code: "

    invoke-virtual {p0, v7, v6}, Lcom/android/exchange/EasSyncService;->userLog(Ljava/lang/String;I)V

    .line 4362
    const/16 v7, 0xc8

    if-ne v6, v7, :cond_28

    .line 4365
    iget-object v7, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    const-wide v9, 0x4028333333333333L

    cmpl-double v7, v7, v9

    if-ltz v7, :cond_24

    .line 4366
    const-string v7, "Content-Length"

    invoke-interface {v1, v7}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v7

    .line 4367
    if-eqz v7, :cond_24

    invoke-interface {v7}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v7

    const-string v8, "0"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_24

    .line 4368
    const-string v1, "EasSynService"

    const-string v2, "Sync Response has a header [Content-Length: 0]"

    invoke-static {v1, v2}, Lcom/android/exchange/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4370
    invoke-virtual {p1}, Lcom/android/exchange/adapter/AbstractSyncAdapter;->setIntervalPing()V

    .line 4372
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_7

    .line 4425
    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 4426
    :try_start_5
    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    if-eqz v2, :cond_7

    .line 4427
    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 4428
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    .line 4430
    :cond_7
    monitor-exit v1

    goto/16 :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v2

    .line 4087
    :catchall_1
    move-exception v1

    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v1

    .line 4096
    :catch_0
    move-exception v2

    .line 4097
    const/4 v6, 0x7

    iput v6, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I

    .line 4098
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 4100
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "Caught IOException in Get Attachment: "

    aput-object v8, v6, v7

    const/4 v7, 0x1

    if-nez v2, :cond_8

    const-string v2, "No message"

    :cond_8
    aput-object v2, v6, v7

    invoke-virtual {p0, v6}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    goto/16 :goto_2

    .line 4103
    :cond_9
    instance-of v2, v1, Lcom/android/exchange/MeetingResponseRequest;

    if-eqz v2, :cond_a

    .line 4104
    move-object v0, v1

    check-cast v0, Lcom/android/exchange/MeetingResponseRequest;

    move-object v2, v0

    invoke-virtual {p0, v2}, Lcom/android/exchange/EasSyncService;->sendMeetingResponse(Lcom/android/exchange/MeetingResponseRequest;)V

    goto/16 :goto_2

    .line 4105
    :cond_a
    instance-of v2, v1, Lcom/android/exchange/MoveMessageRequest;

    if-eqz v2, :cond_2

    .line 4106
    move-object v0, v1

    check-cast v0, Lcom/android/exchange/MoveMessageRequest;

    move-object v2, v0

    invoke-virtual {p0, v2}, Lcom/android/exchange/EasSyncService;->sendMoveMessage(Lcom/android/exchange/MoveMessageRequest;)I

    goto/16 :goto_2

    .line 4113
    :catchall_2
    move-exception v1

    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v1

    .line 4140
    :cond_b
    const/16 v7, 0x1e

    const-string v8, "0"

    invoke-virtual {v1, v7, v8}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto/16 :goto_3

    .line 4143
    :cond_c
    const/4 v8, 0x5

    invoke-virtual {v1, v8}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v8

    const/16 v9, 0x1c

    invoke-virtual {v8, v9}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v8

    const/16 v9, 0xf

    invoke-virtual {v8, v9}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v8

    const/16 v9, 0x10

    invoke-virtual {v8, v9, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v8

    const/16 v9, 0xb

    invoke-virtual {v8, v9, v6}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v8

    const/16 v9, 0x12

    iget-object v10, v3, Lcom/android/email/provider/EmailContent$Mailbox;->mServerId:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 4149
    if-eqz v7, :cond_4

    .line 4151
    const/16 v7, 0x1e

    invoke-virtual {v1, v7}, Lcom/android/exchange/adapter/Serializer;->tag(I)Lcom/android/exchange/adapter/Serializer;

    goto/16 :goto_3

    .line 4172
    :cond_d
    const-string v8, "0"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_21

    .line 4178
    const/16 v6, 0x13

    invoke-virtual {v1, v6}, Lcom/android/exchange/adapter/Serializer;->tag(I)Lcom/android/exchange/adapter/Serializer;

    .line 4184
    const/16 v6, 0x15

    const-string v8, "Email"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_17

    const-string v8, "50"

    :goto_6
    invoke-virtual {v1, v6, v8}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 4193
    const/4 v6, 0x0

    .line 4194
    const-string v8, "Email"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 4195
    iget-object v6, p1, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mContext:Landroid/content/Context;

    iget-wide v8, v3, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-static {v6, v8, v9}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v6

    .line 4197
    iget-object v8, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    const-wide/high16 v10, 0x402c

    cmpl-double v8, v8, v10

    if-ltz v8, :cond_e

    invoke-virtual {v6}, Lcom/android/email/provider/EmailContent$Account;->getConversationMode()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_e

    .line 4198
    const/16 v8, 0x27

    invoke-virtual {v1, v8}, Lcom/android/exchange/adapter/Serializer;->tag(I)Lcom/android/exchange/adapter/Serializer;

    .line 4204
    :cond_e
    const/16 v8, 0x17

    invoke-virtual {v1, v8}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 4206
    const-string v8, "Email"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_19

    .line 4207
    const/16 v8, 0x18

    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->getEmailFilter()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 4229
    :cond_f
    :goto_7
    const-string v8, "Email"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 4230
    iget-object v6, p1, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mContext:Landroid/content/Context;

    iget-wide v9, v3, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-static {v6, v9, v10}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v6

    .line 4235
    :cond_10
    iget-object v9, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    const-wide/high16 v11, 0x4028

    cmpl-double v9, v9, v11

    if-ltz v9, :cond_1f

    .line 4237
    const/16 v9, 0x445

    invoke-virtual {v1, v9}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v9

    const/16 v10, 0x446

    if-eqz v8, :cond_1c

    iget-boolean v11, p0, Lcom/android/exchange/EasSyncService;->mIsHTMLDisabled:Z

    if-nez v11, :cond_1c

    const-string v11, "2"

    :goto_8
    invoke-virtual {v9, v10, v11}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 4247
    if-eqz v8, :cond_1d

    invoke-virtual {v6}, Lcom/android/email/provider/EmailContent$Account;->getEmailSize()B

    move-result v9

    invoke-static {v9}, Lcom/android/exchange/Eas$EmailDataSize;->parse(B)Lcom/android/exchange/Eas$EmailDataSize;

    move-result-object v9

    sget-object v10, Lcom/android/exchange/Eas$EmailDataSize;->ALL:Lcom/android/exchange/Eas$EmailDataSize;

    if-eq v9, v10, :cond_1d

    .line 4249
    const/16 v8, 0x447

    invoke-virtual {v6}, Lcom/android/email/provider/EmailContent$Account;->getEmailSize()B

    move-result v9

    invoke-static {v9}, Lcom/android/exchange/Eas$EmailDataSize;->parse(B)Lcom/android/exchange/Eas$EmailDataSize;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/exchange/Eas$EmailDataSize;->toEas12Text()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 4251
    const-string v8, "EasSyncService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "1. Email Size = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Lcom/android/email/provider/EmailContent$Account;->getEmailSize()B

    move-result v10

    invoke-static {v10}, Lcom/android/exchange/Eas$EmailDataSize;->parse(B)Lcom/android/exchange/Eas$EmailDataSize;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/exchange/Eas$EmailDataSize;->toEas12Text()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/exchange/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4275
    :cond_11
    :goto_9
    const-string v8, "Email"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 4276
    if-nez v6, :cond_12

    .line 4277
    iget-object v6, p1, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mContext:Landroid/content/Context;

    iget-wide v9, v3, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-static {v6, v9, v10}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v6

    .line 4279
    :cond_12
    iget-object v9, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    const-wide/high16 v11, 0x402c

    cmpl-double v9, v9, v11

    if-ltz v9, :cond_13

    invoke-virtual {v6}, Lcom/android/email/provider/EmailContent$Account;->getConversationMode()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_13

    .line 4280
    const/16 v9, 0x458

    invoke-virtual {v6}, Lcom/android/email/provider/EmailContent$Account;->getTextPreviewSize()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v9, v6}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 4284
    :cond_13
    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 4287
    if-eqz v8, :cond_14

    .line 4288
    const/16 v6, 0x445

    invoke-virtual {v1, v6}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v6

    const/16 v8, 0x446

    const-string v9, "4"

    invoke-virtual {v6, v8, v9}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 4290
    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 4305
    :cond_14
    :goto_a
    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 4308
    iget-object v6, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    const-wide/high16 v10, 0x402c

    cmpl-double v6, v8, v10

    if-ltz v6, :cond_16

    iget-object v6, p0, Lcom/android/exchange/EasSyncService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget v6, v6, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    if-eqz v6, :cond_15

    iget-object v6, p0, Lcom/android/exchange/EasSyncService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget v6, v6, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    const/4 v8, 0x5

    if-ne v6, v8, :cond_16

    .line 4309
    :cond_15
    iget-object v6, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget v6, v6, Lcom/android/email/provider/EmailContent$Account;->mFlags:I

    and-int/lit16 v6, v6, 0x200

    if-eqz v6, :cond_16

    .line 4310
    const/16 v6, 0x17

    invoke-virtual {v1, v6}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v6

    const/16 v8, 0x10

    const-string v9, "SMS"

    invoke-virtual {v6, v8, v9}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v6

    const/16 v8, 0x18

    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->getEmailFilter()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v6

    const/16 v8, 0x445

    invoke-virtual {v6, v8}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v6

    const/16 v8, 0x446

    const-string v9, "1"

    invoke-virtual {v6, v8, v9}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    :cond_16
    move v6, v7

    .line 4320
    goto/16 :goto_4

    .line 4184
    :cond_17
    const-string v8, "IPM.StickyNote"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_18

    const-string v8, "6"

    goto/16 :goto_6

    :cond_18
    const-string v8, "5"

    goto/16 :goto_6

    .line 4208
    :cond_19
    const-string v8, "Calendar"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1a

    .line 4211
    const/16 v8, 0x18

    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->getCalendarFilterType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto/16 :goto_7

    .line 4213
    :cond_1a
    const-string v8, "Tasks"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1b

    .line 4214
    const/16 v8, 0x18

    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->getTasksFilterType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto/16 :goto_7

    .line 4217
    :cond_1b
    const-string v8, "IPM.StickyNote"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 4218
    const/16 v8, 0x18

    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->getEmailFilter()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto/16 :goto_7

    .line 4237
    :cond_1c
    const-string v11, "1"

    goto/16 :goto_8

    .line 4256
    :cond_1d
    if-nez v8, :cond_1e

    const-string v9, "IPM.StickyNote"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1e

    .line 4259
    iget-object v8, p1, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mContext:Landroid/content/Context;

    iget-wide v9, v3, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-static {v8, v9, v10}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v8

    .line 4262
    const/16 v9, 0x447

    invoke-virtual {v8}, Lcom/android/email/provider/EmailContent$Account;->getEmailSize()B

    move-result v8

    invoke-static {v8}, Lcom/android/exchange/Eas$EmailDataSize;->parse(B)Lcom/android/exchange/Eas$EmailDataSize;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/exchange/Eas$EmailDataSize;->toEas12Text()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v9, v8}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto/16 :goto_9

    .line 4267
    :cond_1e
    if-nez v8, :cond_11

    .line 4268
    const/16 v8, 0x447

    const-string v9, "400000"

    invoke-virtual {v1, v8, v9}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 4271
    const-string v8, "EasSyncService"

    const-string v9, "2. Email Size = 400000"

    invoke-static {v8, v9}, Lcom/android/exchange/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 4297
    :cond_1f
    const/16 v9, 0x19

    if-eqz v8, :cond_20

    invoke-virtual {v6}, Lcom/android/email/provider/EmailContent$Account;->getEmailSize()B

    move-result v6

    invoke-static {v6}, Lcom/android/exchange/Eas$EmailDataSize;->parse(B)Lcom/android/exchange/Eas$EmailDataSize;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/exchange/Eas$EmailDataSize;->toEas2_5Text()Ljava/lang/String;

    move-result-object v6

    :goto_b
    invoke-virtual {v1, v9, v6}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto/16 :goto_a

    :cond_20
    const-string v6, "8"

    goto :goto_b

    .line 4322
    :cond_21
    const v6, 0x1d4c0

    goto/16 :goto_4

    .line 4331
    :cond_22
    iget-object v6, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    const-wide/high16 v10, 0x402c

    cmpl-double v6, v8, v10

    if-ltz v6, :cond_23

    iget-object v6, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget v6, v6, Lcom/android/email/provider/EmailContent$Account;->mFlags:I

    and-int/lit16 v6, v6, 0x200

    if-eqz v6, :cond_23

    .line 4332
    const/16 v6, 0x17

    invoke-virtual {v1, v6}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v6

    const/16 v8, 0x10

    const-string v9, "SMS"

    invoke-virtual {v6, v8, v9}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v6

    const/16 v8, 0x18

    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->getEmailFilter()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v6

    const/16 v8, 0x445

    invoke-virtual {v6, v8}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v6

    const/16 v8, 0x446

    const-string v9, "1"

    invoke-virtual {v6, v8, v9}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    :cond_23
    move v6, v7

    goto/16 :goto_5

    .line 4378
    :cond_24
    :try_start_8
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    .line 4379
    if-eqz v1, :cond_27

    .line 4380
    invoke-virtual {p1, v1}, Lcom/android/exchange/adapter/AbstractSyncAdapter;->parse(Ljava/io/InputStream;)Z

    move-result v1

    .line 4381
    invoke-virtual {p1}, Lcom/android/exchange/adapter/AbstractSyncAdapter;->isLooping()Z

    move-result v5

    if-eqz v5, :cond_26

    .line 4382
    add-int/lit8 v4, v4, 0x1

    .line 4383
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "** Looping: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v7

    invoke-virtual {p0, v5}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 4386
    if-eqz v1, :cond_33

    const/16 v5, 0x64

    if-le v4, v5, :cond_33

    .line 4387
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v7, "** Looping force stopped"

    aput-object v7, v1, v5

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 4388
    const/4 v1, 0x0

    move v13, v4

    move v4, v1

    move v1, v13

    .line 4393
    :goto_c
    invoke-virtual {p1}, Lcom/android/exchange/adapter/AbstractSyncAdapter;->cleanup()V

    .line 4395
    const/4 v5, 0x1

    if-ne v4, v5, :cond_32

    const-string v5, "Email"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 4397
    const-wide/16 v7, 0xbb8

    const/4 v2, 0x0

    invoke-direct {p0, v7, v8, v2}, Lcom/android/exchange/EasSyncService;->sleep(JZ)V

    move v2, v4

    .line 4403
    :goto_d
    invoke-virtual {p0, v6}, Lcom/android/exchange/EasSyncService;->isProvisionError(I)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 4404
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    .line 4425
    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 4426
    :try_start_9
    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    if-eqz v2, :cond_25

    .line 4427
    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 4428
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    .line 4430
    :cond_25
    monitor-exit v1

    goto/16 :goto_1

    :catchall_3
    move-exception v2

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v2

    .line 4391
    :cond_26
    const/4 v4, 0x0

    move v13, v4

    move v4, v1

    move v1, v13

    goto :goto_c

    .line 4400
    :cond_27
    const/4 v1, 0x1

    :try_start_a
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v7, "Empty input stream in sync command response"

    aput-object v7, v1, v2

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    move v1, v4

    move v2, v5

    goto :goto_d

    .line 4410
    :cond_28
    const-string v1, "Sync response error: "

    invoke-virtual {p0, v1, v6}, Lcom/android/exchange/EasSyncService;->userLog(Ljava/lang/String;I)V

    .line 4411
    invoke-virtual {p0, v6}, Lcom/android/exchange/EasSyncService;->isProvisionError(I)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 4412
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    .line 4425
    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 4426
    :try_start_b
    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    if-eqz v2, :cond_29

    .line 4427
    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 4428
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    .line 4430
    :cond_29
    monitor-exit v1

    goto/16 :goto_1

    :catchall_4
    move-exception v2

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    throw v2

    .line 4414
    :cond_2a
    :try_start_c
    invoke-virtual {p0, v6}, Lcom/android/exchange/EasSyncService;->isAuthError(I)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 4415
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    .line 4425
    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 4426
    :try_start_d
    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    if-eqz v2, :cond_2b

    .line 4427
    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 4428
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    .line 4430
    :cond_2b
    monitor-exit v1

    goto/16 :goto_1

    :catchall_5
    move-exception v2

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    throw v2

    .line 4418
    :cond_2c
    const/4 v1, 0x1

    :try_start_e
    iput v1, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    .line 4425
    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 4426
    :try_start_f
    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    if-eqz v2, :cond_2d

    .line 4427
    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 4428
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    .line 4430
    :cond_2d
    monitor-exit v1

    goto/16 :goto_1

    :catchall_6
    move-exception v2

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    throw v2

    .line 4425
    :catchall_7
    move-exception v1

    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 4426
    :try_start_10
    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    if-eqz v3, :cond_2e

    .line 4427
    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v3}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 4428
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    .line 4430
    :cond_2e
    monitor-exit v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    .line 4425
    throw v1

    :cond_2f
    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 4426
    :try_start_11
    iget-object v5, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    if-eqz v5, :cond_30

    .line 4427
    iget-object v5, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v5}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 4428
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    .line 4430
    :cond_30
    monitor-exit v4
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_9

    move v4, v1

    move v5, v2

    .line 4433
    goto/16 :goto_0

    .line 4434
    :cond_31
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I

    goto/16 :goto_1

    .line 4430
    :catchall_8
    move-exception v1

    :try_start_12
    monitor-exit v2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    throw v1

    :catchall_9
    move-exception v1

    :try_start_13
    monitor-exit v4
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_9

    throw v1

    :cond_32
    move v2, v4

    goto/16 :goto_d

    :cond_33
    move v13, v4

    move v4, v1

    move v1, v13

    goto/16 :goto_c
.end method

.method public tryAutodiscover(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/os/Bundle;
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v1, 0x0

    const-string v0, "/autodiscover/autodiscover.xml"

    const-string v9, "autodiscover_error_code"

    .line 942
    new-instance v0, Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;

    invoke-direct {v0, p0, v1}, Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;-><init>(Lcom/android/exchange/EasSyncService;Lcom/android/exchange/EasSyncService$1;)V

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mAutoDiscInfo:Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;

    .line 943
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mAutoDiscInfo:Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;

    iput-boolean v7, v0, Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;->isRedirectTagPresent:Z

    .line 944
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mAutoDiscInfo:Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;

    iput-boolean v7, v0, Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;->isErrorTagPresent:Z

    .line 945
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mAutoDiscInfo:Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;

    invoke-static {v0, v7}, Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;->access$102(Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;I)I

    .line 946
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mAutoDiscInfo:Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;

    iput-object v1, v0, Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;->RedirectPost:Lorg/apache/http/client/methods/HttpPost;

    .line 947
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mAutoDiscInfo:Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, v0, Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;->bundle:Landroid/os/Bundle;

    .line 950
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    .line 951
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x400

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 952
    new-instance v2, Lcom/android/email/provider/EmailContent$HostAuth;

    invoke-direct {v2}, Lcom/android/email/provider/EmailContent$HostAuth;-><init>()V

    .line 954
    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mAutoDiscInfo:Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;

    iget-object v2, v2, Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;->bundle:Landroid/os/Bundle;

    const-string v3, "autodiscover_error_code"

    const/4 v3, -0x1

    invoke-virtual {v2, v9, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 958
    :try_start_0
    const-string v2, "UTF-8"

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 959
    const-string v2, "UTF-8"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 960
    const/4 v2, 0x0

    const-string v3, "Autodiscover"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 961
    const/4 v2, 0x0

    const-string v3, "xmlns"

    const-string v4, "http://schemas.microsoft.com/exchange/autodiscover/mobilesync/requestschema/2006"

    invoke-interface {v0, v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 962
    const/4 v2, 0x0

    const-string v3, "Request"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 963
    const/4 v2, 0x0

    const-string v3, "EMailAddress"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v2

    invoke-interface {v2, p1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "EMailAddress"

    invoke-interface {v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 964
    const/4 v2, 0x0

    const-string v3, "AcceptableResponseSchema"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 965
    const-string v2, "http://schemas.microsoft.com/exchange/autodiscover/mobilesync/responseschema/2006"

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 966
    const/4 v2, 0x0

    const-string v3, "AcceptableResponseSchema"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 967
    const/4 v2, 0x0

    const-string v3, "Request"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 968
    const/4 v2, 0x0

    const-string v3, "Autodiscover"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 969
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 970
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0

    .line 973
    iput-object p1, p0, Lcom/android/exchange/EasSyncService;->mUserName:Ljava/lang/String;

    .line 974
    iput-object p2, p0, Lcom/android/exchange/EasSyncService;->mPassword:Ljava/lang/String;

    .line 976
    iput-object p3, p0, Lcom/android/exchange/EasSyncService;->mDomain:Ljava/lang/String;

    .line 977
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/exchange/EasSyncService;->mSsl:Z

    .line 978
    iput-boolean p4, p0, Lcom/android/exchange/EasSyncService;->mTrustSsl:Z

    .line 981
    invoke-direct {p0}, Lcom/android/exchange/EasSyncService;->cacheAuthAndCmdString()V

    .line 984
    const/16 v1, 0x40

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 986
    if-gez v1, :cond_0

    .line 987
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/android/email/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_4

    .line 1024
    :catch_0
    move-exception v0

    .line 1025
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mAutoDiscInfo:Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;

    iget-object v0, v0, Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;->bundle:Landroid/os/Bundle;

    const-string v1, "autodiscover_error_code"

    invoke-virtual {v0, v9, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1038
    :goto_0
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mAutoDiscInfo:Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;

    iget-object v0, v0, Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;->bundle:Landroid/os/Bundle;

    return-object v0

    .line 989
    :cond_0
    add-int/lit8 v1, v1, 0x1

    :try_start_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1000
    iget-boolean v2, p0, Lcom/android/exchange/EasSyncService;->mTrustSsl:Z

    if-eqz v2, :cond_1

    const-string v2, "httpts://"

    .line 1001
    :goto_1
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":443"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/autodiscover/autodiscover.xml"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 1004
    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/android/exchange/EasSyncService;->setHeaders(Lorg/apache/http/client/methods/HttpRequestBase;Z)V

    .line 1005
    const-string v4, "Content-Type"

    const-string v5, "text/xml"

    invoke-virtual {v3, v4, v5}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1006
    new-instance v4, Lorg/apache/http/entity/StringEntity;

    invoke-direct {v4, v0}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 1007
    const v0, 0xea60

    invoke-direct {p0, v0}, Lcom/android/exchange/EasSyncService;->getHttpClient(I)Lorg/apache/http/client/HttpClient;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/android/email/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v0

    .line 1010
    const/4 v4, 0x1

    :try_start_2
    invoke-direct {p0, v0, v3, v4}, Lcom/android/exchange/EasSyncService;->postAutodiscover(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpPost;Z)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/android/email/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_0

    .line 1011
    :catch_1
    move-exception v4

    .line 1012
    const/4 v4, 0x1

    :try_start_3
    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "IOException in autodiscover; trying alternate address"

    aput-object v6, v4, v5

    invoke-virtual {p0, v4}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 1014
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "autodiscover."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":443"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/autodiscover/autodiscover.xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v3, v1}, Lorg/apache/http/client/methods/HttpPost;->setURI(Ljava/net/URI;)V

    .line 1017
    const/4 v1, 0x1

    invoke-direct {p0, v0, v3, v1}, Lcom/android/exchange/EasSyncService;->postAutodiscover(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpPost;Z)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lcom/android/email/mail/MessagingException; {:try_start_3 .. :try_end_3} :catch_4

    goto/16 :goto_0

    .line 1027
    :catch_2
    move-exception v0

    .line 1028
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mAutoDiscInfo:Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;

    iget-object v0, v0, Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;->bundle:Landroid/os/Bundle;

    const-string v1, "autodiscover_error_code"

    invoke-virtual {v0, v9, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 1000
    :cond_1
    :try_start_4
    const-string v2, "https://"
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lcom/android/email/mail/MessagingException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_1

    .line 1030
    :catch_3
    move-exception v0

    .line 1031
    const-string v1, "IOException in Autodiscover"

    invoke-virtual {p0, v1, v0}, Lcom/android/exchange/EasSyncService;->userLog(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1032
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mAutoDiscInfo:Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;

    iget-object v0, v0, Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;->bundle:Landroid/os/Bundle;

    const-string v1, "autodiscover_error_code"

    invoke-virtual {v0, v9, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 1034
    :catch_4
    move-exception v0

    .line 1035
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mAutoDiscInfo:Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;

    iget-object v0, v0, Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;->bundle:Landroid/os/Bundle;

    const-string v1, "autodiscover_error_code"

    const/4 v1, 0x5

    invoke-virtual {v0, v9, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0
.end method

.method protected tryProvision()Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v9, ">"

    const-string v8, "<"

    .line 2914
    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->canProvision()Lcom/android/exchange/adapter/ProvisionParser;

    move-result-object v0

    .line 2915
    if-eqz v0, :cond_5

    .line 2916
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v1

    .line 2918
    invoke-virtual {v0}, Lcom/android/exchange/adapter/ProvisionParser;->getPolicySet()Lcom/android/email/SecurityPolicy$PolicySet;

    move-result-object v2

    .line 2923
    if-eqz v2, :cond_0

    .line 2924
    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v4, v7, v5}, Lcom/android/email/SecurityPolicy$PolicySet;->writeAccount(Lcom/android/email/provider/EmailContent$Account;Ljava/lang/String;ZLandroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2925
    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v3, v3, Lcom/android/email/provider/EmailContent$Account;->mId:J

    invoke-virtual {v1, v3, v4}, Lcom/android/email/SecurityPolicy;->updatePolicies(J)V

    .line 2928
    :cond_0
    invoke-virtual {v0}, Lcom/android/exchange/adapter/ProvisionParser;->getRemoteWipe()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2930
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Remote Wipe got from Provision Parser"

    invoke-static {v2, v3}, Lcom/android/exchange/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2939
    :try_start_0
    invoke-virtual {v0}, Lcom/android/exchange/adapter/ProvisionParser;->getPolicyKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->acknowledgeRemoteWipe(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2947
    :goto_0
    invoke-virtual {v1}, Lcom/android/email/SecurityPolicy;->isActiveAdmin()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2949
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->TAG:Ljava/lang/String;

    const-string v1, "Email is not admin. Sending broadcast for MASTER_CLEAR"

    invoke-static {v0, v1}, Lcom/android/exchange/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2950
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :goto_1
    move v0, v6

    .line 2983
    :goto_2
    return v0

    .line 2940
    :catch_0
    move-exception v0

    .line 2943
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->TAG:Ljava/lang/String;

    const-string v2, "acknowledgeRemoteWipe exception"

    invoke-static {v0, v2}, Lcom/android/exchange/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2952
    :cond_1
    invoke-virtual {v1}, Lcom/android/email/SecurityPolicy;->remoteWipe()V

    goto :goto_1

    .line 2955
    :cond_2
    invoke-virtual {v1, v2}, Lcom/android/email/SecurityPolicy;->isActive(Lcom/android/email/SecurityPolicy$PolicySet;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2958
    invoke-virtual {v0}, Lcom/android/exchange/adapter/ProvisionParser;->getPolicyKey()Ljava/lang/String;

    move-result-object v0

    const-string v3, "1"

    invoke-virtual {p0, v0, v3}, Lcom/android/exchange/EasSyncService;->acknowledgeProvision(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2959
    if-eqz v0, :cond_4

    .line 2961
    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v4, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v0, v7, v4}, Lcom/android/email/SecurityPolicy$PolicySet;->writeAccount(Lcom/android/email/provider/EmailContent$Account;Ljava/lang/String;ZLandroid/content/Context;)Z

    .line 2964
    invoke-virtual {v1, v6}, Lcom/android/email/SecurityPolicy;->reducePolicies(Z)V

    .line 2967
    sget-object v0, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/exchange/SyncManager;->releaseSyncHolds(Landroid/content/Context;ILcom/android/email/provider/EmailContent$Account;)V

    .line 2971
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/exchange/security/ode/ODEService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2972
    const-string v1, "startProc"

    const-string v2, "accountProvision"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2973
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move v0, v7

    .line 2975
    goto :goto_2

    .line 2979
    :cond_3
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v2, v0, Lcom/android/email/provider/EmailContent$Account;->mId:J

    invoke-virtual {v1, v2, v3}, Lcom/android/email/SecurityPolicy;->policiesRequired(J)V

    :cond_4
    :goto_3
    move v0, v6

    .line 2983
    goto :goto_2

    .line 2982
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pp is null. CANNOT PROVISION"

    invoke-static {v0, v1}, Lcom/android/exchange/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 9
    .parameter "observable"
    .parameter "data"

    .prologue
    .line 1741
    instance-of v0, p1, Lcom/android/exchange/adapter/ItemOperationsParser;

    if-eqz v0, :cond_0

    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/exchange/EasSyncService;->mAttSize:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 1744
    iget-wide v1, p0, Lcom/android/exchange/EasSyncService;->mMsgIdToFetchAttachment:J

    iget-wide v3, p0, Lcom/android/exchange/EasSyncService;->mAttIdToFetchAttachment:J

    check-cast p2, Ljava/lang/Long;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0x64

    mul-long/2addr v5, v7

    iget-wide v7, p0, Lcom/android/exchange/EasSyncService;->mAttSize:J

    div-long/2addr v5, v7

    long-to-int v5, v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/exchange/EasSyncService;->doProgressCallback(JJI)V

    .line 1746
    :cond_0
    return-void
.end method

.method public validateAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZLandroid/content/Context;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 699
    const/4 v0, 0x6

    :try_start_0
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Testing EAS: "

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    const-string v2, ", "

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p2, v0, v1

    const/4 v1, 0x4

    const-string v2, ", ssl = "

    aput-object v2, v0, v1

    const/4 v1, 0x5

    if-eqz p5, :cond_1

    const-string v2, "1"

    :goto_0
    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 700
    new-instance v0, Lcom/android/exchange/EasSyncService;

    const-string v1, "%TestAccount%"

    invoke-direct {v0, v1}, Lcom/android/exchange/EasSyncService;-><init>(Ljava/lang/String;)V

    .line 701
    iput-object p7, v0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    .line 702
    iput-object p1, v0, Lcom/android/exchange/EasSyncService;->mHostAddress:Ljava/lang/String;

    .line 703
    iput-object p2, v0, Lcom/android/exchange/EasSyncService;->mUserName:Ljava/lang/String;

    .line 704
    iput-object p3, v0, Lcom/android/exchange/EasSyncService;->mPassword:Ljava/lang/String;

    .line 705
    iput-boolean p5, v0, Lcom/android/exchange/EasSyncService;->mSsl:Z

    .line 706
    iput-boolean p6, v0, Lcom/android/exchange/EasSyncService;->mTrustSsl:Z

    .line 709
    const-string v1, "validate"

    iput-object v1, v0, Lcom/android/exchange/EasSyncService;->mDeviceId:Ljava/lang/String;

    .line 711
    invoke-virtual {v0}, Lcom/android/exchange/EasSyncService;->sendHttpClientOptions()Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 712
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    .line 713
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Validation (OPTIONS) response: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v3}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 714
    const/4 v3, 0x0

    .line 715
    const/16 v4, 0xc8

    if-ne v2, v4, :cond_b

    .line 717
    const-string v2, "MS-ASProtocolCommands"

    invoke-interface {v1, v2}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v2

    .line 718
    const-string v4, "ms-asprotocolversions"

    invoke-interface {v1, v4}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v1

    .line 719
    if-eqz v2, :cond_0

    if-nez v1, :cond_2

    .line 720
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "OPTIONS response without commands or versions; reporting I/O error"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 721
    new-instance v0, Lcom/android/email/mail/MessagingException;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/email/mail/MessagingException;-><init>(I)V

    throw v0
    :try_end_0
    .catch Lcom/android/email/mail/DeviceAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 808
    :catch_0
    move-exception v0

    .line 809
    const-string v1, "DeviceAccessPermission"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Caught Exceptoin, Device is blocked "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/email/mail/DeviceAccessException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/exchange/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    const/4 v1, 0x5

    iput v1, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I

    .line 812
    throw v0

    .line 699
    :cond_1
    :try_start_1
    const-string v2, "0"

    goto/16 :goto_0

    .line 725
    :cond_2
    invoke-direct {p0, v0, v1}, Lcom/android/exchange/EasSyncService;->setupProtocolVersion(Lcom/android/exchange/EasSyncService;Lorg/apache/http/Header;)V

    .line 728
    new-instance v1, Lcom/android/exchange/adapter/Serializer;

    invoke-direct {v1}, Lcom/android/exchange/adapter/Serializer;-><init>()V

    .line 729
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "Validate: try folder sync"

    aput-object v5, v2, v4

    invoke-virtual {p0, v2}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 730
    const/16 v2, 0x1d6

    invoke-virtual {v1, v2}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    const/16 v4, 0x1d2

    invoke-virtual {v2, v4}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    const-string v4, "0"

    invoke-virtual {v2, v4}, Lcom/android/exchange/adapter/Serializer;->text(Ljava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/exchange/adapter/Serializer;->done()V

    .line 733
    sget-boolean v2, Lcom/android/exchange/Eas;->PARSER_LOG:Z

    if-eqz v2, :cond_3

    .line 734
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "validateAccount(): Wbxml:"

    aput-object v5, v2, v4

    invoke-virtual {p0, v2}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 735
    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v2

    .line 736
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 737
    new-instance v2, Lcom/android/exchange/adapter/LogAdapter;

    iget-object v5, p0, Lcom/android/exchange/EasSyncService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    invoke-direct {v2, v5, p0}, Lcom/android/exchange/adapter/LogAdapter;-><init>(Lcom/android/email/provider/EmailContent$Mailbox;Lcom/android/exchange/EasSyncService;)V

    .line 738
    invoke-virtual {v2, v4}, Lcom/android/exchange/adapter/LogAdapter;->parse(Ljava/io/InputStream;)Z
    :try_end_1
    .catch Lcom/android/email/mail/DeviceAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 743
    :cond_3
    :try_start_2
    const-string v2, "FolderSync"

    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/android/exchange/EasSyncService;->sendHttpClientPost(Ljava/lang/String;[B)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 744
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    .line 746
    const/16 v4, 0xc8

    if-ne v2, v4, :cond_e

    .line 747
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 748
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v4

    long-to-int v4, v4

    .line 749
    if-eqz v4, :cond_e

    .line 750
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    .line 755
    :goto_1
    sget-boolean v3, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v3, :cond_4

    .line 756
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "validateAccount(): FolderSync response code:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";is="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v3}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 763
    :cond_4
    :try_start_3
    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_3
    .catch Lcom/android/email/mail/DeviceAccessException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 764
    :try_start_4
    iget-object v4, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    if-eqz v4, :cond_5

    .line 765
    iget-object v4, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v4}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 766
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    .line 768
    :cond_5
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 775
    :try_start_5
    invoke-virtual {p0, v1, v2}, Lcom/android/exchange/EasSyncService;->isProvisionError(Ljava/io/InputStream;I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 777
    invoke-virtual {v0}, Lcom/android/exchange/EasSyncService;->canProvision()Lcom/android/exchange/adapter/ProvisionParser;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 779
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Validate: provisioning is possible"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 780
    new-instance v0, Lcom/android/email/mail/MessagingException;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lcom/android/email/mail/MessagingException;-><init>(I)V

    throw v0
    :try_end_5
    .catch Lcom/android/email/mail/DeviceAccessException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 814
    :catch_1
    move-exception v0

    .line 815
    invoke-virtual {v0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 816
    if-eqz v1, :cond_d

    instance-of v1, v1, Ljava/security/cert/CertificateException;

    if-eqz v1, :cond_d

    .line 817
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "CertificateException caught: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 818
    new-instance v0, Lcom/android/email/mail/MessagingException;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/android/email/mail/MessagingException;-><init>(I)V

    throw v0

    .line 763
    :catchall_0
    move-exception v0

    :try_start_6
    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_6
    .catch Lcom/android/email/mail/DeviceAccessException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 764
    :try_start_7
    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    if-eqz v2, :cond_6

    .line 765
    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 766
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    .line 768
    :cond_6
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 763
    :try_start_8
    throw v0

    .line 782
    :cond_7
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Validate: provisioning not possible"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 784
    new-instance v0, Lcom/android/email/mail/MessagingException;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/android/email/mail/MessagingException;-><init>(I)V

    throw v0

    .line 788
    :cond_8
    const/16 v0, 0x194

    if-ne v2, v0, :cond_9

    .line 789
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Wrong address or bad protocol version"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 791
    new-instance v0, Lcom/android/email/mail/MessagingException;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lcom/android/email/mail/MessagingException;-><init>(I)V

    throw v0

    .line 792
    :cond_9
    const/16 v0, 0xc8

    if-eq v2, v0, :cond_a

    .line 794
    const-string v0, "Unexpected response for FolderSync: "

    invoke-virtual {p0, v0, v2}, Lcom/android/exchange/EasSyncService;->userLog(Ljava/lang/String;I)V

    .line 795
    new-instance v0, Lcom/android/email/mail/MessagingException;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/email/mail/MessagingException;-><init>(I)V

    throw v0

    .line 797
    :cond_a
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Validation successful"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 798
    return-void

    .line 800
    :cond_b
    invoke-virtual {p0, v2}, Lcom/android/exchange/EasSyncService;->isAuthError(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 801
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Authentication failed"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 802
    new-instance v0, Lcom/android/email/mail/AuthenticationFailedException;

    const-string v1, "Validation failed"

    invoke-direct {v0, v1}, Lcom/android/email/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 805
    :cond_c
    const-string v0, "Validation failed, reporting I/O error: "

    invoke-virtual {p0, v0, v2}, Lcom/android/exchange/EasSyncService;->userLog(Ljava/lang/String;I)V

    .line 806
    new-instance v0, Lcom/android/email/mail/MessagingException;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/email/mail/MessagingException;-><init>(I)V

    throw v0
    :try_end_8
    .catch Lcom/android/email/mail/DeviceAccessException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    .line 820
    :cond_d
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "IOException caught: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 821
    new-instance v0, Lcom/android/email/mail/MessagingException;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/email/mail/MessagingException;-><init>(I)V

    throw v0

    .line 768
    :catchall_1
    move-exception v0

    :try_start_9
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    throw v0
    :try_end_a
    .catch Lcom/android/email/mail/DeviceAccessException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    :catchall_2
    move-exception v0

    :try_start_b
    monitor-exit v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :try_start_c
    throw v0
    :try_end_c
    .catch Lcom/android/email/mail/DeviceAccessException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1

    :cond_e
    move-object v1, v3

    goto/16 :goto_1
.end method
