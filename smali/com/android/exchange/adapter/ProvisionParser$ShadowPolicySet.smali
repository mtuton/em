.class Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;
.super Ljava/lang/Object;
.source "ProvisionParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/adapter/ProvisionParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ShadowPolicySet"
.end annotation


# instance fields
.field public mAllowBluetoothMode:I

.field public mAllowBrowser:Z

.field public mAllowCamera:Z

.field public mAllowDesktopSync:Z

.field public mAllowHTMLEmail:Z

.field public mAllowInternetSharing:Z

.field public mAllowIrDA:Z

.field public mAllowPOPIMAPEmail:Z

.field public mAllowSMIMEEncryptionAlgorithmNegotiation:Z

.field public mAllowSMIMESoftCerts:Z

.field public mAllowStorageCard:Z

.field public mAllowTextMessaging:Z

.field public mAllowWifi:Z

.field public mAttachmentsEnabled:Z

.field public mMaxAttachmentSize:I

.field public mMaxCalendarAgeFilter:I

.field public mMaxEmailAgeFilter:I

.field public mMaxEmailBodyTruncationSize:I

.field public mMaxEmailHtmlBodyTruncationSize:I

.field mMaxPasswordFails:I

.field mMaxScreenLockTime:I

.field public mMinPasswordComplexChars:I

.field mMinPasswordLength:I

.field public mPasswordExpires:I

.field public mPasswordHistory:I

.field mPasswordMode:I

.field public mPasswordRecoverable:Z

.field public mRequireDeviceEncryption:Z

.field public mRequireEncryptedSMIMEMessages:Z

.field public mRequireEncryptionSMIMEAlgorithm:Z

.field public mRequireManualSyncWhenRoaming:Z

.field public mRequireSignedSMIMEAlgorithm:Z

.field public mRequireSignedSMIMEMessages:Z

.field public mRequireStorageCardEncryption:Z

.field final synthetic this$0:Lcom/android/exchange/adapter/ProvisionParser;


# direct methods
.method constructor <init>(Lcom/android/exchange/adapter/ProvisionParser;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 347
    iput-object p1, p0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->this$0:Lcom/android/exchange/adapter/ProvisionParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 348
    iput v1, p0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mMinPasswordLength:I

    .line 349
    iput v1, p0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mPasswordMode:I

    .line 350
    iput v1, p0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mMaxPasswordFails:I

    .line 351
    iput v1, p0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mMaxScreenLockTime:I

    .line 353
    iput-boolean v1, p0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mPasswordRecoverable:Z

    .line 354
    iput v1, p0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mPasswordExpires:I

    .line 355
    iput v1, p0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mPasswordHistory:I

    .line 356
    iput-boolean v2, p0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mAttachmentsEnabled:Z

    .line 357
    iput v1, p0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mMaxAttachmentSize:I

    .line 360
    iput-boolean v2, p0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mAllowStorageCard:Z

    .line 361
    iput-boolean v2, p0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mAllowCamera:Z

    .line 362
    iput-boolean v2, p0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mAllowWifi:Z

    .line 363
    iput-boolean v2, p0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mAllowTextMessaging:Z

    .line 364
    iput-boolean v2, p0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mAllowPOPIMAPEmail:Z

    .line 365
    iput-boolean v2, p0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mAllowHTMLEmail:Z

    .line 366
    iput-boolean v2, p0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mAllowBrowser:Z

    .line 367
    iput-boolean v2, p0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mAllowInternetSharing:Z

    .line 368
    iput-boolean v1, p0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mRequireManualSyncWhenRoaming:Z

    .line 369
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mAllowBluetoothMode:I

    .line 370
    iput v1, p0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mMinPasswordComplexChars:I

    .line 371
    iput v1, p0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mMaxCalendarAgeFilter:I

    .line 372
    iput v1, p0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mMaxEmailAgeFilter:I

    .line 373
    iput v1, p0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mMaxEmailBodyTruncationSize:I

    .line 374
    iput v1, p0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mMaxEmailHtmlBodyTruncationSize:I

    .line 375
    iput-boolean v1, p0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mRequireSignedSMIMEMessages:Z

    .line 376
    iput-boolean v1, p0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mRequireEncryptedSMIMEMessages:Z

    .line 377
    iput-boolean v1, p0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mRequireSignedSMIMEAlgorithm:Z

    .line 378
    iput-boolean v1, p0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mRequireEncryptionSMIMEAlgorithm:Z

    .line 379
    iput-boolean v2, p0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mAllowSMIMEEncryptionAlgorithmNegotiation:Z

    .line 380
    iput-boolean v2, p0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mAllowSMIMESoftCerts:Z

    .line 381
    iput-boolean v2, p0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mAllowDesktopSync:Z

    .line 382
    iput-boolean v2, p0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mAllowIrDA:Z

    .line 383
    iput-boolean v1, p0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mRequireDeviceEncryption:Z

    .line 384
    iput-boolean v1, p0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mRequireStorageCardEncryption:Z

    return-void
.end method
