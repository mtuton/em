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

.field public mAllowSMIMEEncryptionAlgorithmNegotiation:I

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

.field public mRequireEncryptionSMIMEAlgorithm:I

.field public mRequireManualSyncWhenRoaming:Z

.field public mRequireSignedSMIMEAlgorithm:I

.field public mRequireSignedSMIMEMessages:Z

.field public mRequireStorageCardEncryption:Z

.field final synthetic this$0:Lcom/android/exchange/adapter/ProvisionParser;


# direct methods
.method constructor <init>(Lcom/android/exchange/adapter/ProvisionParser;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 419
    iput-object p1, p0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->this$0:Lcom/android/exchange/adapter/ProvisionParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 420
    iput v1, p0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mMinPasswordLength:I

    .line 421
    iput v1, p0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mPasswordMode:I

    .line 422
    iput v1, p0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mMaxPasswordFails:I

    .line 423
    iput v1, p0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mMaxScreenLockTime:I

    .line 425
    iput-boolean v1, p0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mPasswordRecoverable:Z

    .line 426
    iput v1, p0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mPasswordExpires:I

    .line 427
    iput v1, p0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mPasswordHistory:I

    .line 428
    iput-boolean v2, p0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mAttachmentsEnabled:Z

    .line 429
    iput v1, p0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mMaxAttachmentSize:I

    .line 432
    iput-boolean v2, p0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mAllowStorageCard:Z

    .line 433
    iput-boolean v2, p0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mAllowCamera:Z

    .line 434
    iput-boolean v2, p0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mAllowWifi:Z

    .line 435
    iput-boolean v2, p0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mAllowTextMessaging:Z

    .line 436
    iput-boolean v2, p0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mAllowPOPIMAPEmail:Z

    .line 437
    iput-boolean v2, p0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mAllowHTMLEmail:Z

    .line 438
    iput-boolean v2, p0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mAllowBrowser:Z

    .line 439
    iput-boolean v2, p0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mAllowInternetSharing:Z

    .line 440
    iput-boolean v1, p0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mRequireManualSyncWhenRoaming:Z

    .line 441
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mAllowBluetoothMode:I

    .line 442
    iput v1, p0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mMinPasswordComplexChars:I

    .line 443
    iput v1, p0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mMaxCalendarAgeFilter:I

    .line 444
    iput v1, p0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mMaxEmailAgeFilter:I

    .line 445
    iput v1, p0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mMaxEmailBodyTruncationSize:I

    .line 446
    iput v1, p0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mMaxEmailHtmlBodyTruncationSize:I

    .line 447
    iput-boolean v1, p0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mRequireSignedSMIMEMessages:Z

    .line 448
    iput-boolean v1, p0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mRequireEncryptedSMIMEMessages:Z

    .line 450
    iput v3, p0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mRequireSignedSMIMEAlgorithm:I

    .line 451
    iput v3, p0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mRequireEncryptionSMIMEAlgorithm:I

    .line 452
    iput v3, p0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mAllowSMIMEEncryptionAlgorithmNegotiation:I

    .line 454
    iput-boolean v2, p0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mAllowSMIMESoftCerts:Z

    .line 455
    iput-boolean v2, p0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mAllowDesktopSync:Z

    .line 456
    iput-boolean v2, p0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mAllowIrDA:Z

    .line 458
    iput-boolean v1, p0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mRequireDeviceEncryption:Z

    .line 459
    iput-boolean v1, p0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mRequireStorageCardEncryption:Z

    return-void
.end method
