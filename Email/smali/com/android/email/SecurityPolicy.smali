.class public Lcom/android/email/SecurityPolicy;
.super Ljava/lang/Object;
.source "SecurityPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/SecurityPolicy$PolicyAdmin;,
        Lcom/android/email/SecurityPolicy$PolicySet;
    }
.end annotation


# static fields
.field private static final ACCOUNT_FLAGS_COLUMN_FLAGS:I = 0x1

.field private static final ACCOUNT_FLAGS_COLUMN_ID:I = 0x0

.field private static final ACCOUNT_FLAGS_PROJECTION:[Ljava/lang/String; = null

.field private static final ACCOUNT_SECURITY_COLUMN_FLAGS:I = 0x1

.field private static final ACCOUNT_SECURITY_PROJECTION:[Ljava/lang/String; = null

.field public static final ALLOW_BLUETOOTH_MODE_VALUE_ALLOW:I = 0x2

.field public static final ALLOW_BLUETOOTH_MODE_VALUE_DISABLE:I = 0x0

.field public static final ALLOW_BLUETOOTH_MODE_VALUE_HANDSFREE_ONLY:I = 0x1

.field private static final LIMIT_MIN_PASSWORD_LENGTH:I = 0x10

.field private static final LIMIT_PASSWORD_MODE:I = 0x4

.field private static final LIMIT_SCREENLOCK_TIME:I = 0x7ff

.field static final NO_POLICY_SET:Lcom/android/email/SecurityPolicy$PolicySet; = null

.field public static final PASSWORD_POLICIES:[Ljava/lang/String; = null

.field public static final POLICY_ALLOW_BLUETOOTH:Ljava/lang/String; = "AllowBluetoothMode"

.field public static final POLICY_ALLOW_BROWSER:Ljava/lang/String; = "AllowBrowser"

.field public static final POLICY_ALLOW_CAMERA:Ljava/lang/String; = "AllowCamera"

.field public static final POLICY_ALLOW_DESKTOP_SYNC:Ljava/lang/String; = "AllowDesktopSync"

.field public static final POLICY_ALLOW_HTML_EMAIL:Ljava/lang/String; = "AllowHTMLEmail"

.field public static final POLICY_ALLOW_INTERNET_SHARING:Ljava/lang/String; = "AllowInternetSharing"

.field public static final POLICY_ALLOW_IRDA:Ljava/lang/String; = "AllowIrDA"

.field public static final POLICY_ALLOW_POPIMAP_EMAIL:Ljava/lang/String; = "AllowPOPIMAPEmail"

.field public static final POLICY_ALLOW_SMIME_ENCRYPTION_ALGO_NEGOTIATION:Ljava/lang/String; = "AllowSMIMEEncryptionAlgorithmNegotiation"

.field public static final POLICY_ALLOW_SMIME_SOFT_CERTS:Ljava/lang/String; = "AllowSMIMESoftCerts"

.field public static final POLICY_ALLOW_STORAGE_CARD:Ljava/lang/String; = "AllowStorageCard"

.field public static final POLICY_ALLOW_TEXT_MESSAGING:Ljava/lang/String; = "AllowTextMessaging"

.field public static final POLICY_ALLOW_WIFI:Ljava/lang/String; = "AllowWifi"

.field public static final POLICY_ATTACHMENTS_ENABLED:Ljava/lang/String; = "AttachmentsEnabled"

.field public static final POLICY_DEVICE_PASSWORD_EXPIRATION:Ljava/lang/String; = "DevicePasswordExpiration"

.field public static final POLICY_DEVICE_PASSWORD_HISTORY:Ljava/lang/String; = "DevicePasswordHistory"

.field public static final POLICY_MAX_ATTACHMENT_SIZE:Ljava/lang/String; = "MaxAttachmentSize"

.field public static final POLICY_MAX_CALENDAR_AGE_FILTER:Ljava/lang/String; = "MaxCalendarAgeFilter"

.field public static final POLICY_MAX_DEVICE_PASSWORD_FAILED_ATTEMPTS:Ljava/lang/String; = "MaxDevicePasswordFailedAttempts"

.field public static final POLICY_MAX_EMAILHTML_BODY_TRUNC_SIZE:Ljava/lang/String; = "MaxEmailHtmlBodyTruncationSize"

.field public static final POLICY_MAX_EMAIL_AGE_FILTER:Ljava/lang/String; = "MaxEmailAgeFilter"

.field public static final POLICY_MAX_EMAIL_BODY_TRUNC_SIZE:Ljava/lang/String; = "MaxEmailBodyTruncationSize"

.field public static final POLICY_MAX_INACTIVITY_TIME:Ljava/lang/String; = "MaxInactivityTime"

.field public static final POLICY_MIN_DEVICE_PASSWORD_LENGTH:Ljava/lang/String; = "MinDevicePasswordLength"

.field public static final POLICY_MIN_PASSWORD_COMPLEX_CHARS:Ljava/lang/String; = "MinPasswordComplexCharacters"

.field public static final POLICY_PASSWORD_MODE:Ljava/lang/String; = "PasswordMode"

.field public static final POLICY_PASSWORD_RECOVERY_ENABLED:Ljava/lang/String; = "PasswordRecoveryEnabled"

.field public static final POLICY_REMOTE_WIPE_REQUIRED:Ljava/lang/String; = "RemoteWipe"

.field public static final POLICY_REQUIRE_DEVICE_ENCRYPTION:Ljava/lang/String; = "RequireDeviceEncryption"

.field public static final POLICY_REQUIRE_ENCRYPTED_SMIME_MSGS:Ljava/lang/String; = "RequireEncryptedSMIMEMessages"

.field public static final POLICY_REQUIRE_ENCRYPTION_SMIME_ALGORITHM:Ljava/lang/String; = "RequireEncryptionSMIMEAlgorithm"

.field public static final POLICY_REQUIRE_MANUALSYNC_ROAMING:Ljava/lang/String; = "RequireManualSyncWhenRoaming"

.field public static final POLICY_REQUIRE_SIGNED_SMIME_ALGORITHM:Ljava/lang/String; = "RequireSignedSMIMEAlgorithm"

.field public static final POLICY_REQUIRE_SIGNED_SMIME_MSGS:Ljava/lang/String; = "RequireSignedSMIMEMessages"

.field public static final POLICY_REQUIRE_STORAGECARD_ENCRYPTION:Ljava/lang/String; = "RequireStorageCardEncryption"

.field private static final TAG:Ljava/lang/String; = "SecurityPolicy"

.field private static final WHERE_ACCOUNT_SECURITY_NONZERO:Ljava/lang/String; = "securityFlags IS NOT NULL"

.field private static sInstance:Lcom/android/email/SecurityPolicy;


# instance fields
.field private mAdminName:Landroid/content/ComponentName;

.field private mAggregatePolicy:Lcom/android/email/SecurityPolicy$PolicySet;

.field private mContext:Landroid/content/Context;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 36

    .prologue
    .line 59
    const/4 v0, 0x0

    sput-object v0, Lcom/android/email/SecurityPolicy;->sInstance:Lcom/android/email/SecurityPolicy;

    .line 117
    new-instance v0, Lcom/android/email/SecurityPolicy$PolicySet;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x1

    const/4 v13, 0x1

    const/4 v14, 0x1

    const/4 v15, 0x1

    const/16 v16, 0x1

    const/16 v17, 0x1

    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x2

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x1

    const/16 v31, 0x1

    const/16 v32, 0x1

    const/16 v33, 0x1

    const/16 v34, 0x0

    const/16 v35, 0x0

    invoke-direct/range {v0 .. v35}, Lcom/android/email/SecurityPolicy$PolicySet;-><init>(IIIIZZIIZIZZZZZZZZZIIIIIIZZZZZZZZZZ)V

    sput-object v0, Lcom/android/email/SecurityPolicy;->NO_POLICY_SET:Lcom/android/email/SecurityPolicy$PolicySet;

    .line 180
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "PasswordMode"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "PasswordRecoveryEnabled"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "MaxDevicePasswordFailedAttempts"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "DevicePasswordExpiration"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "DevicePasswordHistory"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "MinDevicePasswordLength"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "MinPasswordComplexCharacters"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/SecurityPolicy;->PASSWORD_POLICIES:[Ljava/lang/String;

    .line 197
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "securityFlags"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/SecurityPolicy;->ACCOUNT_SECURITY_PROJECTION:[Ljava/lang/String;

    .line 209
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "flags"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "securityFlags"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/SecurityPolicy;->ACCOUNT_FLAGS_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    iput-object p1, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    .line 239
    iput-object v3, p0, Lcom/android/email/SecurityPolicy;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 240
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/android/email/SecurityPolicy$PolicyAdmin;

    invoke-direct {v1, p1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    .line 241
    iput-object v3, p0, Lcom/android/email/SecurityPolicy;->mAggregatePolicy:Lcom/android/email/SecurityPolicy$PolicySet;

    .line 244
    invoke-direct {p0}, Lcom/android/email/SecurityPolicy;->getDPM()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    .line 245
    .local v0, dpm:Landroid/app/admin/DevicePolicyManager;
    iget-object v1, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 246
    iget-object v1, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->setAdminPermissions(Landroid/content/ComponentName;)V

    .line 248
    :cond_0
    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 263
    sget-object v0, Lcom/android/email/SecurityPolicy;->sInstance:Lcom/android/email/SecurityPolicy;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/email/SecurityPolicy;->sInstance:Lcom/android/email/SecurityPolicy;

    iget-object v0, v0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    goto :goto_0
.end method

.method private declared-synchronized getDPM()Landroid/app/admin/DevicePolicyManager;
    .locals 2

    .prologue
    .line 470
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/email/SecurityPolicy;->mDPM:Landroid/app/admin/DevicePolicyManager;

    if-nez v0, :cond_0

    .line 471
    iget-object v0, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/email/SecurityPolicy;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 473
    :cond_0
    iget-object v0, p0, Lcom/android/email/SecurityPolicy;->mDPM:Landroid/app/admin/DevicePolicyManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 470
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;
    .locals 2
    .parameter "context"

    .prologue
    .line 228
    const-class v0, Lcom/android/email/SecurityPolicy;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/email/SecurityPolicy;->sInstance:Lcom/android/email/SecurityPolicy;

    if-nez v1, :cond_0

    .line 229
    new-instance v1, Lcom/android/email/SecurityPolicy;

    invoke-direct {v1, p0}, Lcom/android/email/SecurityPolicy;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/email/SecurityPolicy;->sInstance:Lcom/android/email/SecurityPolicy;

    .line 231
    :cond_0
    sget-object v1, Lcom/android/email/SecurityPolicy;->sInstance:Lcom/android/email/SecurityPolicy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 228
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public IsAllowAttachmentDownload()Z
    .locals 3

    .prologue
    .line 914
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "11111 SecurityPolicy.java >>>>> IsAllowAttachmentDownload()  >>>>> 880"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 915
    invoke-direct {p0}, Lcom/android/email/SecurityPolicy;->getDPM()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    .line 917
    .local v0, dpm:Landroid/app/admin/DevicePolicyManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getAttachmentsEnabled(Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 919
    const/4 v1, 0x1

    .line 922
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public IsAllowHTMLEmailSetted()Z
    .locals 2

    .prologue
    .line 949
    invoke-direct {p0}, Lcom/android/email/SecurityPolicy;->getDPM()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    .line 951
    .local v0, dpm:Landroid/app/admin/DevicePolicyManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getAllowHTMLEmail(Landroid/content/ComponentName;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 953
    const/4 v1, 0x1

    .line 956
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public IsAllowPOPIMAPEmailSetted()Z
    .locals 3

    .prologue
    .line 900
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "11111 SecurityPolicy.java >>>>> IsAllowPOPIMAPEmailSetted()  >>>>> 870"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 901
    invoke-direct {p0}, Lcom/android/email/SecurityPolicy;->getDPM()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    .line 903
    .local v0, dpm:Landroid/app/admin/DevicePolicyManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getAllowPOPIMAPEmail(Landroid/content/ComponentName;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 905
    const/4 v1, 0x1

    .line 909
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public clearAccountHoldFlags()V
    .locals 12

    .prologue
    const/4 v3, 0x0

    .line 1104
    iget-object v1, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1106
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/email/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/email/SecurityPolicy;->ACCOUNT_FLAGS_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1111
    .local v8, c:Landroid/database/Cursor;
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1113
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 1114
    .local v6, accountId:J
    iget-object v1, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-static {v1, v6, v7}, Lcom/android/email/provider/EmailContent$Policies;->getNumberOfPoliciesForAccount(Landroid/content/Context;J)I

    move-result v1

    if-lez v1, :cond_0

    .line 1115
    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 1116
    .local v10, flags:I
    and-int/lit8 v1, v10, 0x20

    if-eqz v1, :cond_0

    .line 1117
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 1118
    .local v9, cv:Landroid/content/ContentValues;
    const-string v1, "flags"

    and-int/lit8 v2, v10, -0x21

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1119
    sget-object v1, Lcom/android/email/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v11

    .line 1120
    .local v11, uri:Landroid/net/Uri;
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v11, v9, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1126
    .end local v6           #accountId:J
    .end local v9           #cv:Landroid/content/ContentValues;
    .end local v10           #flags:I
    .end local v11           #uri:Landroid/net/Uri;
    :catchall_0
    move-exception v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1128
    return-void
.end method

.method public clearNotification(J)V
    .locals 3
    .parameter "accountId"

    .prologue
    .line 1185
    iget-object v1, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1187
    .local v0, notificationManager:Landroid/app/NotificationManager;
    sget v1, Lcom/android/email/service/MailService;->NOTIFICATION_ID_SECURITY_NEEDED:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1188
    return-void
.end method

.method computeAggregatePolicy()Lcom/android/email/SecurityPolicy$PolicySet;
    .locals 43

    .prologue
    .line 313
    const/16 v41, 0x0

    .line 315
    .local v41, policiesFound:Z
    const/high16 v3, -0x8000

    .line 316
    .local v3, minPasswordLength:I
    const/high16 v4, -0x8000

    .line 317
    .local v4, passwordMode:I
    const v5, 0x7fffffff

    .line 318
    .local v5, maxPasswordFails:I
    const v6, 0x7fffffff

    .line 319
    .local v6, maxScreenLockTime:I
    const/4 v7, 0x0

    .line 321
    .local v7, requireRemoteWipe:Z
    const/4 v8, 0x0

    .line 322
    .local v8, passwordRecoverable:Z
    const/4 v9, 0x0

    .line 323
    .local v9, passwordExpires:I
    const/4 v10, 0x0

    .line 324
    .local v10, passwordHistory:I
    const/4 v11, 0x1

    .line 325
    .local v11, attachmentsEnabled:Z
    const v12, 0x7fffffff

    .line 327
    .local v12, maxAttachmentSize:I
    const/4 v13, 0x1

    .line 328
    .local v13, allowStorageCard:Z
    const/4 v14, 0x1

    .line 329
    .local v14, allowCamera:Z
    const/4 v15, 0x1

    .line 330
    .local v15, allowWifi:Z
    const/16 v16, 0x1

    .line 331
    .local v16, allowTextMessaging:Z
    const/16 v17, 0x1

    .line 332
    .local v17, allowPOPIMAPEmail:Z
    const/16 v18, 0x1

    .line 333
    .local v18, allowHTMLEmail:Z
    const/16 v19, 0x1

    .line 334
    .local v19, allowBrowser:Z
    const/16 v20, 0x1

    .line 335
    .local v20, allowInternetSharing:Z
    const/16 v21, 0x0

    .line 336
    .local v21, requireManualSyncWhenRoaming:Z
    const/16 v22, 0x2

    .line 337
    .local v22, allowBluetoothMode:I
    const/16 v23, 0x0

    .line 338
    .local v23, minPasswordComplexChars:I
    const/16 v24, 0x0

    .line 339
    .local v24, maxCalendarAgeFilter:I
    const/16 v25, 0x0

    .line 340
    .local v25, maxEmailAgeFilter:I
    const v26, 0x7fffffff

    .line 341
    .local v26, maxEmailBodyTruncationSize:I
    const v27, 0x7fffffff

    .line 342
    .local v27, maxEmailHtmlBodyTruncationSize:I
    const/16 v28, 0x0

    .line 343
    .local v28, requireSignedSMIMEMessages:Z
    const/16 v29, 0x0

    .line 344
    .local v29, requireEncryptedSMIMEMessages:Z
    const/16 v30, 0x0

    .line 345
    .local v30, requireSignedSMIMEAlgorithm:Z
    const/16 v31, 0x0

    .line 346
    .local v31, requireEncryptionSMIMEAlgorithm:Z
    const/16 v32, 0x1

    .line 347
    .local v32, allowSMIMEEncryptionAlgorithmNegotiation:Z
    const/16 v33, 0x1

    .line 348
    .local v33, allowSMIMESoftCerts:Z
    const/16 v34, 0x1

    .line 349
    .local v34, allowDesktopSync:Z
    const/16 v35, 0x1

    .line 350
    .local v35, allowIrDA:Z
    const/16 v36, 0x0

    .line 351
    .local v36, requireDeviceEncryption:Z
    const/16 v37, 0x0

    .line 354
    .local v37, requireStorageCardEncryption:Z
    new-instance v40, Lcom/android/exchange/PoliciesMultiplexer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    move-object v2, v0

    move-object/from16 v0, v40

    move-object v1, v2

    invoke-direct {v0, v1}, Lcom/android/exchange/PoliciesMultiplexer;-><init>(Landroid/content/Context;)V

    .line 355
    .local v40, pm:Lcom/android/exchange/PoliciesMultiplexer;
    invoke-virtual/range {v40 .. v40}, Lcom/android/exchange/PoliciesMultiplexer;->computeAggregatePolicy()Ljava/util/HashMap;

    move-result-object v42

    .line 357
    .local v42, values:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v42, :cond_0

    invoke-virtual/range {v42 .. v42}, Ljava/util/HashMap;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 358
    const/16 v41, 0x1

    .line 360
    const/16 v39, 0x0

    .line 361
    .local v39, intValue:Ljava/lang/Integer;
    const/16 v38, 0x0

    .line 363
    .local v38, boolValue:Ljava/lang/Boolean;
    const-string v2, "PasswordMode"

    move-object/from16 v0, v42

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v39

    .end local v39           #intValue:Ljava/lang/Integer;
    check-cast v39, Ljava/lang/Integer;

    .restart local v39       #intValue:Ljava/lang/Integer;
    if-nez v39, :cond_e

    .line 364
    :goto_0
    const-string v2, "MinDevicePasswordLength"

    move-object/from16 v0, v42

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v39

    .end local v39           #intValue:Ljava/lang/Integer;
    check-cast v39, Ljava/lang/Integer;

    .restart local v39       #intValue:Ljava/lang/Integer;
    if-nez v39, :cond_f

    .line 365
    :goto_1
    const-string v2, "MaxDevicePasswordFailedAttempts"

    move-object/from16 v0, v42

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v39

    .end local v39           #intValue:Ljava/lang/Integer;
    check-cast v39, Ljava/lang/Integer;

    .restart local v39       #intValue:Ljava/lang/Integer;
    if-nez v39, :cond_10

    .line 366
    :goto_2
    const-string v2, "MaxInactivityTime"

    move-object/from16 v0, v42

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v39

    .end local v39           #intValue:Ljava/lang/Integer;
    check-cast v39, Ljava/lang/Integer;

    .restart local v39       #intValue:Ljava/lang/Integer;
    if-nez v39, :cond_11

    .line 367
    :goto_3
    const-string v2, "RemoteWipe"

    move-object/from16 v0, v42

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    .end local v38           #boolValue:Ljava/lang/Boolean;
    check-cast v38, Ljava/lang/Boolean;

    .restart local v38       #boolValue:Ljava/lang/Boolean;
    if-nez v38, :cond_12

    .line 368
    :goto_4
    const-string v2, "PasswordRecoveryEnabled"

    move-object/from16 v0, v42

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    .end local v38           #boolValue:Ljava/lang/Boolean;
    check-cast v38, Ljava/lang/Boolean;

    .restart local v38       #boolValue:Ljava/lang/Boolean;
    if-nez v38, :cond_13

    .line 369
    :goto_5
    const-string v2, "DevicePasswordExpiration"

    move-object/from16 v0, v42

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v39

    .end local v39           #intValue:Ljava/lang/Integer;
    check-cast v39, Ljava/lang/Integer;

    .restart local v39       #intValue:Ljava/lang/Integer;
    if-nez v39, :cond_14

    .line 370
    :goto_6
    const-string v2, "DevicePasswordHistory"

    move-object/from16 v0, v42

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v39

    .end local v39           #intValue:Ljava/lang/Integer;
    check-cast v39, Ljava/lang/Integer;

    .restart local v39       #intValue:Ljava/lang/Integer;
    if-nez v39, :cond_15

    .line 371
    :goto_7
    const-string v2, "AttachmentsEnabled"

    move-object/from16 v0, v42

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    .end local v38           #boolValue:Ljava/lang/Boolean;
    check-cast v38, Ljava/lang/Boolean;

    .restart local v38       #boolValue:Ljava/lang/Boolean;
    if-nez v38, :cond_16

    .line 372
    :goto_8
    const-string v2, "MaxAttachmentSize"

    move-object/from16 v0, v42

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v39

    .end local v39           #intValue:Ljava/lang/Integer;
    check-cast v39, Ljava/lang/Integer;

    .restart local v39       #intValue:Ljava/lang/Integer;
    if-nez v39, :cond_17

    .line 374
    :goto_9
    const-string v2, "AllowStorageCard"

    move-object/from16 v0, v42

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    .end local v38           #boolValue:Ljava/lang/Boolean;
    check-cast v38, Ljava/lang/Boolean;

    .restart local v38       #boolValue:Ljava/lang/Boolean;
    if-nez v38, :cond_18

    .line 375
    :goto_a
    const-string v2, "AllowCamera"

    move-object/from16 v0, v42

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    .end local v38           #boolValue:Ljava/lang/Boolean;
    check-cast v38, Ljava/lang/Boolean;

    .restart local v38       #boolValue:Ljava/lang/Boolean;
    if-nez v38, :cond_19

    .line 376
    :goto_b
    const-string v2, "AllowWifi"

    move-object/from16 v0, v42

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    .end local v38           #boolValue:Ljava/lang/Boolean;
    check-cast v38, Ljava/lang/Boolean;

    .restart local v38       #boolValue:Ljava/lang/Boolean;
    if-nez v38, :cond_1a

    .line 377
    :goto_c
    const-string v2, "AllowTextMessaging"

    move-object/from16 v0, v42

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    .end local v38           #boolValue:Ljava/lang/Boolean;
    check-cast v38, Ljava/lang/Boolean;

    .restart local v38       #boolValue:Ljava/lang/Boolean;
    if-nez v38, :cond_1b

    .line 378
    :goto_d
    const-string v2, "AllowPOPIMAPEmail"

    move-object/from16 v0, v42

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    .end local v38           #boolValue:Ljava/lang/Boolean;
    check-cast v38, Ljava/lang/Boolean;

    .restart local v38       #boolValue:Ljava/lang/Boolean;
    if-nez v38, :cond_1c

    .line 379
    :goto_e
    const-string v2, "AllowHTMLEmail"

    move-object/from16 v0, v42

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    .end local v38           #boolValue:Ljava/lang/Boolean;
    check-cast v38, Ljava/lang/Boolean;

    .restart local v38       #boolValue:Ljava/lang/Boolean;
    if-nez v38, :cond_1d

    .line 380
    :goto_f
    const-string v2, "AllowBrowser"

    move-object/from16 v0, v42

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    .end local v38           #boolValue:Ljava/lang/Boolean;
    check-cast v38, Ljava/lang/Boolean;

    .restart local v38       #boolValue:Ljava/lang/Boolean;
    if-nez v38, :cond_1e

    .line 381
    :goto_10
    const-string v2, "AllowInternetSharing"

    move-object/from16 v0, v42

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    .end local v38           #boolValue:Ljava/lang/Boolean;
    check-cast v38, Ljava/lang/Boolean;

    .restart local v38       #boolValue:Ljava/lang/Boolean;
    if-nez v38, :cond_1f

    .line 382
    :goto_11
    const-string v2, "RequireManualSyncWhenRoaming"

    move-object/from16 v0, v42

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    .end local v38           #boolValue:Ljava/lang/Boolean;
    check-cast v38, Ljava/lang/Boolean;

    .restart local v38       #boolValue:Ljava/lang/Boolean;
    if-nez v38, :cond_20

    .line 383
    :goto_12
    const-string v2, "AllowBluetoothMode"

    move-object/from16 v0, v42

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v39

    .end local v39           #intValue:Ljava/lang/Integer;
    check-cast v39, Ljava/lang/Integer;

    .restart local v39       #intValue:Ljava/lang/Integer;
    if-nez v39, :cond_21

    .line 384
    :goto_13
    const-string v2, "MinPasswordComplexCharacters"

    move-object/from16 v0, v42

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v39

    .end local v39           #intValue:Ljava/lang/Integer;
    check-cast v39, Ljava/lang/Integer;

    .restart local v39       #intValue:Ljava/lang/Integer;
    if-nez v39, :cond_22

    .line 385
    :goto_14
    const-string v2, "MaxCalendarAgeFilter"

    move-object/from16 v0, v42

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v39

    .end local v39           #intValue:Ljava/lang/Integer;
    check-cast v39, Ljava/lang/Integer;

    .restart local v39       #intValue:Ljava/lang/Integer;
    if-nez v39, :cond_23

    .line 386
    :goto_15
    const-string v2, "MaxEmailAgeFilter"

    move-object/from16 v0, v42

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v39

    .end local v39           #intValue:Ljava/lang/Integer;
    check-cast v39, Ljava/lang/Integer;

    .restart local v39       #intValue:Ljava/lang/Integer;
    if-nez v39, :cond_24

    .line 387
    :goto_16
    const-string v2, "MaxEmailBodyTruncationSize"

    move-object/from16 v0, v42

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v39

    .end local v39           #intValue:Ljava/lang/Integer;
    check-cast v39, Ljava/lang/Integer;

    .restart local v39       #intValue:Ljava/lang/Integer;
    if-nez v39, :cond_25

    .line 388
    :goto_17
    const-string v2, "MaxEmailHtmlBodyTruncationSize"

    move-object/from16 v0, v42

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v39

    .end local v39           #intValue:Ljava/lang/Integer;
    check-cast v39, Ljava/lang/Integer;

    .restart local v39       #intValue:Ljava/lang/Integer;
    if-nez v39, :cond_26

    .line 389
    :goto_18
    const-string v2, "RequireSignedSMIMEMessages"

    move-object/from16 v0, v42

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    .end local v38           #boolValue:Ljava/lang/Boolean;
    check-cast v38, Ljava/lang/Boolean;

    .restart local v38       #boolValue:Ljava/lang/Boolean;
    if-nez v38, :cond_27

    .line 390
    :goto_19
    const-string v2, "RequireEncryptedSMIMEMessages"

    move-object/from16 v0, v42

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    .end local v38           #boolValue:Ljava/lang/Boolean;
    check-cast v38, Ljava/lang/Boolean;

    .restart local v38       #boolValue:Ljava/lang/Boolean;
    if-nez v38, :cond_28

    .line 391
    :goto_1a
    const-string v2, "RequireSignedSMIMEAlgorithm"

    move-object/from16 v0, v42

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    .end local v38           #boolValue:Ljava/lang/Boolean;
    check-cast v38, Ljava/lang/Boolean;

    .restart local v38       #boolValue:Ljava/lang/Boolean;
    if-nez v38, :cond_29

    .line 392
    :goto_1b
    const-string v2, "RequireEncryptionSMIMEAlgorithm"

    move-object/from16 v0, v42

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    .end local v38           #boolValue:Ljava/lang/Boolean;
    check-cast v38, Ljava/lang/Boolean;

    .restart local v38       #boolValue:Ljava/lang/Boolean;
    if-nez v38, :cond_2a

    .line 393
    :goto_1c
    const-string v2, "AllowSMIMEEncryptionAlgorithmNegotiation"

    move-object/from16 v0, v42

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    .end local v38           #boolValue:Ljava/lang/Boolean;
    check-cast v38, Ljava/lang/Boolean;

    .restart local v38       #boolValue:Ljava/lang/Boolean;
    if-nez v38, :cond_2b

    .line 394
    :goto_1d
    const-string v2, "AllowSMIMESoftCerts"

    move-object/from16 v0, v42

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    .end local v38           #boolValue:Ljava/lang/Boolean;
    check-cast v38, Ljava/lang/Boolean;

    .restart local v38       #boolValue:Ljava/lang/Boolean;
    if-nez v38, :cond_2c

    .line 395
    :goto_1e
    const-string v2, "AllowDesktopSync"

    move-object/from16 v0, v42

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    .end local v38           #boolValue:Ljava/lang/Boolean;
    check-cast v38, Ljava/lang/Boolean;

    .restart local v38       #boolValue:Ljava/lang/Boolean;
    if-nez v38, :cond_2d

    .line 396
    :goto_1f
    const-string v2, "AllowIrDA"

    move-object/from16 v0, v42

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    .end local v38           #boolValue:Ljava/lang/Boolean;
    check-cast v38, Ljava/lang/Boolean;

    .restart local v38       #boolValue:Ljava/lang/Boolean;
    if-nez v38, :cond_2e

    .line 397
    :goto_20
    const-string v2, "RequireDeviceEncryption"

    move-object/from16 v0, v42

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    .end local v38           #boolValue:Ljava/lang/Boolean;
    check-cast v38, Ljava/lang/Boolean;

    .restart local v38       #boolValue:Ljava/lang/Boolean;
    if-nez v38, :cond_2f

    .line 398
    :goto_21
    const-string v2, "RequireStorageCardEncryption"

    move-object/from16 v0, v42

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    .end local v38           #boolValue:Ljava/lang/Boolean;
    check-cast v38, Ljava/lang/Boolean;

    .restart local v38       #boolValue:Ljava/lang/Boolean;
    if-nez v38, :cond_30

    .line 426
    .end local v38           #boolValue:Ljava/lang/Boolean;
    .end local v39           #intValue:Ljava/lang/Integer;
    :cond_0
    :goto_22
    if-eqz v41, :cond_31

    .line 428
    const/high16 v2, -0x8000

    if-ne v3, v2, :cond_1

    const/4 v3, 0x0

    .line 429
    :cond_1
    const/high16 v2, -0x8000

    if-ne v4, v2, :cond_2

    const/4 v4, 0x0

    .line 430
    :cond_2
    const v2, 0x7fffffff

    if-ne v5, v2, :cond_3

    const/4 v5, 0x0

    .line 431
    :cond_3
    const v2, 0x7fffffff

    if-ne v6, v2, :cond_4

    const/4 v6, 0x0

    .line 433
    :cond_4
    const v2, 0x7fffffff

    if-ne v12, v2, :cond_5

    const/4 v12, 0x0

    .line 434
    :cond_5
    const v2, 0x7fffffff

    if-eq v9, v2, :cond_6

    const/high16 v2, -0x8000

    if-ne v9, v2, :cond_7

    :cond_6
    const/4 v9, 0x0

    .line 435
    :cond_7
    const v2, 0x7fffffff

    if-eq v10, v2, :cond_8

    const/high16 v2, -0x8000

    if-ne v10, v2, :cond_9

    :cond_8
    const/4 v10, 0x0

    .line 437
    :cond_9
    const v2, 0x7fffffff

    move/from16 v0, v26

    move v1, v2

    if-eq v0, v1, :cond_a

    if-gez v26, :cond_b

    :cond_a
    const/16 v26, 0x0

    .line 438
    :cond_b
    const v2, 0x7fffffff

    move/from16 v0, v27

    move v1, v2

    if-eq v0, v1, :cond_c

    if-gez v27, :cond_d

    :cond_c
    const/16 v27, 0x0

    .line 440
    :cond_d
    new-instance v2, Lcom/android/email/SecurityPolicy$PolicySet;

    invoke-direct/range {v2 .. v37}, Lcom/android/email/SecurityPolicy$PolicySet;-><init>(IIIIZZIIZIZZZZZZZZZIIIIIIZZZZZZZZZZ)V

    .line 452
    :goto_23
    return-object v2

    .line 363
    .restart local v38       #boolValue:Ljava/lang/Boolean;
    .restart local v39       #intValue:Ljava/lang/Integer;
    :cond_e
    invoke-virtual/range {v39 .. v39}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move v4, v2

    goto/16 :goto_0

    .line 364
    :cond_f
    invoke-virtual/range {v39 .. v39}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move v3, v2

    goto/16 :goto_1

    .line 365
    :cond_10
    invoke-virtual/range {v39 .. v39}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move v5, v2

    goto/16 :goto_2

    .line 366
    :cond_11
    invoke-virtual/range {v39 .. v39}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move v6, v2

    goto/16 :goto_3

    .line 367
    :cond_12
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move v7, v2

    goto/16 :goto_4

    .line 368
    :cond_13
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move v8, v2

    goto/16 :goto_5

    .line 369
    :cond_14
    invoke-virtual/range {v39 .. v39}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move v9, v2

    goto/16 :goto_6

    .line 370
    :cond_15
    invoke-virtual/range {v39 .. v39}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move v10, v2

    goto/16 :goto_7

    .line 371
    :cond_16
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move v11, v2

    goto/16 :goto_8

    .line 372
    :cond_17
    invoke-virtual/range {v39 .. v39}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move v12, v2

    goto/16 :goto_9

    .line 374
    :cond_18
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move v13, v2

    goto/16 :goto_a

    .line 375
    :cond_19
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move v14, v2

    goto/16 :goto_b

    .line 376
    :cond_1a
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move v15, v2

    goto/16 :goto_c

    .line 377
    :cond_1b
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move/from16 v16, v2

    goto/16 :goto_d

    .line 378
    :cond_1c
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move/from16 v17, v2

    goto/16 :goto_e

    .line 379
    :cond_1d
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move/from16 v18, v2

    goto/16 :goto_f

    .line 380
    :cond_1e
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move/from16 v19, v2

    goto/16 :goto_10

    .line 381
    :cond_1f
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move/from16 v20, v2

    goto/16 :goto_11

    .line 382
    :cond_20
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move/from16 v21, v2

    goto/16 :goto_12

    .line 383
    :cond_21
    invoke-virtual/range {v39 .. v39}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move/from16 v22, v2

    goto/16 :goto_13

    .line 384
    :cond_22
    invoke-virtual/range {v39 .. v39}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move/from16 v23, v2

    goto/16 :goto_14

    .line 385
    :cond_23
    invoke-virtual/range {v39 .. v39}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move/from16 v24, v2

    goto/16 :goto_15

    .line 386
    :cond_24
    invoke-virtual/range {v39 .. v39}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move/from16 v25, v2

    goto/16 :goto_16

    .line 387
    :cond_25
    invoke-virtual/range {v39 .. v39}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move/from16 v26, v2

    goto/16 :goto_17

    .line 388
    :cond_26
    invoke-virtual/range {v39 .. v39}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move/from16 v27, v2

    goto/16 :goto_18

    .line 389
    :cond_27
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move/from16 v28, v2

    goto/16 :goto_19

    .line 390
    :cond_28
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move/from16 v29, v2

    goto/16 :goto_1a

    .line 391
    :cond_29
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move/from16 v30, v2

    goto/16 :goto_1b

    .line 392
    :cond_2a
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move/from16 v31, v2

    goto/16 :goto_1c

    .line 393
    :cond_2b
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move/from16 v32, v2

    goto/16 :goto_1d

    .line 394
    :cond_2c
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move/from16 v33, v2

    goto/16 :goto_1e

    .line 395
    :cond_2d
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move/from16 v34, v2

    goto/16 :goto_1f

    .line 396
    :cond_2e
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move/from16 v35, v2

    goto/16 :goto_20

    .line 397
    :cond_2f
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move/from16 v36, v2

    goto/16 :goto_21

    .line 398
    :cond_30
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move/from16 v37, v2

    goto/16 :goto_22

    .line 452
    .end local v38           #boolValue:Ljava/lang/Boolean;
    .end local v39           #intValue:Ljava/lang/Integer;
    :cond_31
    sget-object v2, Lcom/android/email/SecurityPolicy;->NO_POLICY_SET:Lcom/android/email/SecurityPolicy$PolicySet;

    goto/16 :goto_23
.end method

.method public getAdminComponent()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 1915
    iget-object v0, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public declared-synchronized getAggregatePolicy()Lcom/android/email/SecurityPolicy$PolicySet;
    .locals 1

    .prologue
    .line 460
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/email/SecurityPolicy;->mAggregatePolicy:Lcom/android/email/SecurityPolicy$PolicySet;

    if-nez v0, :cond_0

    .line 461
    invoke-virtual {p0}, Lcom/android/email/SecurityPolicy;->computeAggregatePolicy()Lcom/android/email/SecurityPolicy$PolicySet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/SecurityPolicy;->mAggregatePolicy:Lcom/android/email/SecurityPolicy$PolicySet;

    .line 463
    :cond_0
    iget-object v0, p0, Lcom/android/email/SecurityPolicy;->mAggregatePolicy:Lcom/android/email/SecurityPolicy$PolicySet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 460
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getAllowedMaxAttachmentSize()I
    .locals 3

    .prologue
    .line 927
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "11111 SecurityPolicy.java >>>>> getAllowedMaxAttachmentSize()  >>>>> 990"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 928
    invoke-direct {p0}, Lcom/android/email/SecurityPolicy;->getDPM()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    .line 930
    .local v0, dpm:Landroid/app/admin/DevicePolicyManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getMaxAttachmentSize(Landroid/content/ComponentName;)I

    move-result v1

    return v1
.end method

.method public isActive(Lcom/android/email/SecurityPolicy$PolicySet;)Z
    .locals 12
    .parameter "policies"

    .prologue
    const/4 v7, 0x0

    const-string v11, "Email"

    const-string v10, ", value:"

    const-string v9, ", return false"

    const-string v8, " is stronger than device value:"

    .line 537
    if-nez p1, :cond_0

    .line 538
    invoke-virtual {p0}, Lcom/android/email/SecurityPolicy;->getAggregatePolicy()Lcom/android/email/SecurityPolicy$PolicySet;

    move-result-object p1

    .line 541
    :cond_0
    sget-object v3, Lcom/android/email/SecurityPolicy;->NO_POLICY_SET:Lcom/android/email/SecurityPolicy$PolicySet;

    invoke-virtual {p1, v3}, Lcom/android/email/SecurityPolicy$PolicySet;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 542
    const/4 v3, 0x1

    .line 894
    :goto_0
    return v3

    .line 544
    :cond_1
    invoke-direct {p0}, Lcom/android/email/SecurityPolicy;->getDPM()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    .line 545
    .local v0, dpm:Landroid/app/admin/DevicePolicyManager;
    iget-object v3, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 547
    iget v3, p1, Lcom/android/email/SecurityPolicy$PolicySet;->mMinPasswordLength:I

    if-lez v3, :cond_2

    .line 548
    iget-object v3, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v3

    iget v4, p1, Lcom/android/email/SecurityPolicy$PolicySet;->mMinPasswordLength:I

    if-ge v3, v4, :cond_2

    move v3, v7

    .line 549
    goto :goto_0

    .line 552
    :cond_2
    iget v3, p1, Lcom/android/email/SecurityPolicy$PolicySet;->mPasswordMode:I

    if-lez v3, :cond_4

    .line 553
    iget-object v3, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v3

    invoke-virtual {p1}, Lcom/android/email/SecurityPolicy$PolicySet;->getDPManagerPasswordQuality()I

    move-result v4

    if-ge v3, v4, :cond_3

    move v3, v7

    .line 554
    goto :goto_0

    .line 556
    :cond_3
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->isActivePasswordSufficient()Z

    move-result v3

    if-nez v3, :cond_4

    move v3, v7

    .line 557
    goto :goto_0

    .line 560
    :cond_4
    iget v3, p1, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxScreenLockTime:I

    if-lez v3, :cond_5

    .line 562
    iget-object v3, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v3

    iget v5, p1, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxScreenLockTime:I

    mul-int/lit16 v5, v5, 0x3e8

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-lez v3, :cond_5

    move v3, v7

    .line 563
    goto :goto_0

    .line 570
    :cond_5
    new-instance v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;

    invoke-direct {v1}, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;-><init>()V

    .line 571
    .local v1, ps:Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;
    new-instance v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;

    invoke-direct {v2}, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;-><init>()V

    .line 572
    .local v2, psAnother:Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;
    const-string v3, "MaxDevicePasswordFailedAttempts"

    iput-object v3, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mName:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mName:Ljava/lang/String;

    .line 573
    const-string v3, "Integer"

    iput-object v3, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mType:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mType:Ljava/lang/String;

    .line 574
    iget v3, p1, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxPasswordFails:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    .line 575
    iget-object v3, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    .line 576
    invoke-virtual {v1, v2}, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->compareTo(Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;)I

    move-result v3

    if-lez v3, :cond_6

    .line 578
    const-string v3, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isActive(): thisPolicy:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", value:"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is stronger than device value:"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", return false"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v7

    .line 579
    goto/16 :goto_0

    .line 582
    :cond_6
    const-string v3, "DevicePasswordExpiration"

    iput-object v3, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mName:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mName:Ljava/lang/String;

    .line 583
    const-string v3, "Integer"

    iput-object v3, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mType:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mType:Ljava/lang/String;

    .line 584
    iget v3, p1, Lcom/android/email/SecurityPolicy$PolicySet;->mPasswordExpires:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    .line 585
    iget-object v3, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->getPasswordExpires(Landroid/content/ComponentName;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    .line 586
    invoke-virtual {v1, v2}, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->compareTo(Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;)I

    move-result v3

    if-lez v3, :cond_7

    .line 588
    const-string v3, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isActive(): thisPolicy:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", value:"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is stronger than device value:"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", return false"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v7

    .line 589
    goto/16 :goto_0

    .line 592
    :cond_7
    const-string v3, "DevicePasswordHistory"

    iput-object v3, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mName:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mName:Ljava/lang/String;

    .line 593
    const-string v3, "Integer"

    iput-object v3, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mType:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mType:Ljava/lang/String;

    .line 594
    iget v3, p1, Lcom/android/email/SecurityPolicy$PolicySet;->mPasswordHistory:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    .line 595
    iget-object v3, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->getPasswordHistory(Landroid/content/ComponentName;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    .line 596
    invoke-virtual {v1, v2}, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->compareTo(Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;)I

    move-result v3

    if-lez v3, :cond_8

    .line 598
    const-string v3, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isActive(): thisPolicy:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", value:"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is stronger than device value:"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", return false"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v7

    .line 599
    goto/16 :goto_0

    .line 602
    :cond_8
    const-string v3, "AttachmentsEnabled"

    iput-object v3, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mName:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mName:Ljava/lang/String;

    .line 603
    const-string v3, "Boolean"

    iput-object v3, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mType:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mType:Ljava/lang/String;

    .line 604
    iget-boolean v3, p1, Lcom/android/email/SecurityPolicy$PolicySet;->mAttachmentsEnabled:Z

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    .line 605
    iget-object v3, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->getAttachmentsEnabled(Landroid/content/ComponentName;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    .line 606
    invoke-virtual {v1, v2}, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->compareTo(Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;)I

    move-result v3

    if-lez v3, :cond_9

    .line 608
    const-string v3, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isActive(): thisPolicy:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", value:"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is stronger than device value:"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", return false"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v7

    .line 609
    goto/16 :goto_0

    .line 612
    :cond_9
    const-string v3, "MaxAttachmentSize"

    iput-object v3, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mName:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mName:Ljava/lang/String;

    .line 613
    const-string v3, "Integer"

    iput-object v3, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mType:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mType:Ljava/lang/String;

    .line 614
    iget v3, p1, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxAttachmentSize:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    .line 615
    iget-object v3, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->getMaxAttachmentSize(Landroid/content/ComponentName;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    .line 616
    invoke-virtual {v1, v2}, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->compareTo(Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;)I

    move-result v3

    if-lez v3, :cond_a

    .line 618
    const-string v3, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isActive(): thisPolicy:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", value:"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is stronger than device value:"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", return false"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v7

    .line 619
    goto/16 :goto_0

    .line 622
    :cond_a
    const-string v3, "PasswordRecoveryEnabled"

    iput-object v3, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mName:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mName:Ljava/lang/String;

    .line 623
    const-string v3, "Boolean"

    iput-object v3, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mType:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mType:Ljava/lang/String;

    .line 624
    iget-boolean v3, p1, Lcom/android/email/SecurityPolicy$PolicySet;->mPasswordRecoverable:Z

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    .line 625
    iget-object v3, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->getPasswordRecoverable(Landroid/content/ComponentName;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    .line 626
    invoke-virtual {v1, v2}, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->compareTo(Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;)I

    move-result v3

    if-lez v3, :cond_b

    .line 628
    const-string v3, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isActive(): thisPolicy:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", value:"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is stronger than device value:"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", return false"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v7

    .line 629
    goto/16 :goto_0

    .line 634
    :cond_b
    const-string v3, "AllowStorageCard"

    iput-object v3, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mName:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mName:Ljava/lang/String;

    .line 635
    const-string v3, "Boolean"

    iput-object v3, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mType:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mType:Ljava/lang/String;

    .line 636
    iget-boolean v3, p1, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowStorageCard:Z

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    .line 637
    iget-object v3, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->getAllowStorageCard(Landroid/content/ComponentName;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    .line 638
    invoke-virtual {v1, v2}, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->compareTo(Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;)I

    move-result v3

    if-lez v3, :cond_c

    .line 640
    const-string v3, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isActive(): thisPolicy:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", value:"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is stronger than device value:"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", return false"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v7

    .line 641
    goto/16 :goto_0

    .line 644
    :cond_c
    const-string v3, "AllowCamera"

    iput-object v3, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mName:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mName:Ljava/lang/String;

    .line 645
    const-string v3, "Boolean"

    iput-object v3, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mType:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mType:Ljava/lang/String;

    .line 646
    iget-boolean v3, p1, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowCamera:Z

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    .line 647
    iget-object v3, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->getAllowCamera(Landroid/content/ComponentName;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    .line 648
    invoke-virtual {v1, v2}, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->compareTo(Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;)I

    move-result v3

    if-lez v3, :cond_d

    .line 650
    const-string v3, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isActive(): thisPolicy:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", value:"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is stronger than device value:"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", return false"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v7

    .line 651
    goto/16 :goto_0

    .line 654
    :cond_d
    const-string v3, "AllowWifi"

    iput-object v3, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mName:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mName:Ljava/lang/String;

    .line 655
    const-string v3, "Boolean"

    iput-object v3, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mType:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mType:Ljava/lang/String;

    .line 656
    iget-boolean v3, p1, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowWifi:Z

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    .line 657
    iget-object v3, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->getAllowWifi(Landroid/content/ComponentName;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    .line 658
    invoke-virtual {v1, v2}, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->compareTo(Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;)I

    move-result v3

    if-lez v3, :cond_e

    .line 660
    const-string v3, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isActive(): thisPolicy:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", value:"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is stronger than device value:"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", return false"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v7

    .line 661
    goto/16 :goto_0

    .line 665
    :cond_e
    const-string v3, "AllowTextMessaging"

    iput-object v3, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mName:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mName:Ljava/lang/String;

    .line 666
    const-string v3, "Boolean"

    iput-object v3, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mType:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mType:Ljava/lang/String;

    .line 667
    iget-boolean v3, p1, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowTextMessaging:Z

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    .line 668
    iget-object v3, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->getAllowTextMessaging(Landroid/content/ComponentName;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    .line 669
    invoke-virtual {v1, v2}, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->compareTo(Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;)I

    move-result v3

    if-lez v3, :cond_f

    .line 671
    const-string v3, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isActive(): thisPolicy:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", value:"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is stronger than device value:"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", return false"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v7

    .line 672
    goto/16 :goto_0

    .line 675
    :cond_f
    const-string v3, "AllowPOPIMAPEmail"

    iput-object v3, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mName:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mName:Ljava/lang/String;

    .line 676
    const-string v3, "Boolean"

    iput-object v3, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mType:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mType:Ljava/lang/String;

    .line 677
    iget-boolean v3, p1, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowPOPIMAPEmail:Z

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    .line 678
    iget-object v3, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->getAllowPOPIMAPEmail(Landroid/content/ComponentName;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    .line 679
    invoke-virtual {v1, v2}, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->compareTo(Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;)I

    move-result v3

    if-lez v3, :cond_10

    .line 681
    const-string v3, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isActive(): thisPolicy:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", value:"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is stronger than device value:"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", return false"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v7

    .line 682
    goto/16 :goto_0

    .line 685
    :cond_10
    const-string v3, "AllowHTMLEmail"

    iput-object v3, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mName:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mName:Ljava/lang/String;

    .line 686
    const-string v3, "Boolean"

    iput-object v3, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mType:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mType:Ljava/lang/String;

    .line 687
    iget-boolean v3, p1, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowHTMLEmail:Z

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    .line 688
    iget-object v3, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->getAllowHTMLEmail(Landroid/content/ComponentName;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    .line 689
    invoke-virtual {v1, v2}, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->compareTo(Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;)I

    move-result v3

    if-lez v3, :cond_11

    .line 691
    const-string v3, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isActive(): thisPolicy:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", value:"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is stronger than device value:"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", return false"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v7

    .line 692
    goto/16 :goto_0

    .line 695
    :cond_11
    const-string v3, "AllowBrowser"

    iput-object v3, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mName:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mName:Ljava/lang/String;

    .line 696
    const-string v3, "Boolean"

    iput-object v3, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mType:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mType:Ljava/lang/String;

    .line 697
    iget-boolean v3, p1, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowBrowser:Z

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    .line 698
    iget-object v3, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->getAllowBrowser(Landroid/content/ComponentName;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    .line 699
    invoke-virtual {v1, v2}, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->compareTo(Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;)I

    move-result v3

    if-lez v3, :cond_12

    .line 701
    const-string v3, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isActive(): thisPolicy:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", value:"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is stronger than device value:"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", return false"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v7

    .line 702
    goto/16 :goto_0

    .line 705
    :cond_12
    const-string v3, "AllowInternetSharing"

    iput-object v3, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mName:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mName:Ljava/lang/String;

    .line 706
    const-string v3, "Boolean"

    iput-object v3, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mType:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mType:Ljava/lang/String;

    .line 707
    iget-boolean v3, p1, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowInternetSharing:Z

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    .line 708
    iget-object v3, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->getAllowInternetSharing(Landroid/content/ComponentName;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    .line 709
    invoke-virtual {v1, v2}, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->compareTo(Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;)I

    move-result v3

    if-lez v3, :cond_13

    .line 711
    const-string v3, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isActive(): thisPolicy:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", value:"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is stronger than device value:"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", return false"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v7

    .line 712
    goto/16 :goto_0

    .line 715
    :cond_13
    const-string v3, "RequireManualSyncWhenRoaming"

    iput-object v3, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mName:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mName:Ljava/lang/String;

    .line 716
    const-string v3, "Boolean"

    iput-object v3, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mType:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mType:Ljava/lang/String;

    .line 717
    iget-boolean v3, p1, Lcom/android/email/SecurityPolicy$PolicySet;->mRequireManualSyncWhenRoaming:Z

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    .line 718
    iget-object v3, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->getRequireManualSyncRoaming(Landroid/content/ComponentName;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    .line 719
    invoke-virtual {v1, v2}, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->compareTo(Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;)I

    move-result v3

    if-lez v3, :cond_14

    .line 721
    const-string v3, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isActive(): thisPolicy:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", value:"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is stronger than device value:"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", return false"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v7

    .line 722
    goto/16 :goto_0

    .line 725
    :cond_14
    const-string v3, "AllowBluetoothMode"

    iput-object v3, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mName:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mName:Ljava/lang/String;

    .line 726
    const-string v3, "Integer"

    iput-object v3, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mType:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mType:Ljava/lang/String;

    .line 727
    iget v3, p1, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowBluetoothMode:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    .line 728
    iget-object v3, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->getAllowBluetoothMode(Landroid/content/ComponentName;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    .line 729
    invoke-virtual {v1, v2}, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->compareTo(Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;)I

    move-result v3

    if-lez v3, :cond_15

    .line 731
    const-string v3, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isActive(): thisPolicy:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", value:"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is stronger than device value:"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", return false"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v7

    .line 732
    goto/16 :goto_0

    .line 735
    :cond_15
    const-string v3, "MinPasswordComplexCharacters"

    iput-object v3, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mName:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mName:Ljava/lang/String;

    .line 736
    const-string v3, "Integer"

    iput-object v3, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mType:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mType:Ljava/lang/String;

    .line 737
    iget v3, p1, Lcom/android/email/SecurityPolicy$PolicySet;->mMinPasswordComplexChars:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    .line 738
    iget-object v3, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->getMinPasswordComplexChars(Landroid/content/ComponentName;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    .line 739
    invoke-virtual {v1, v2}, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->compareTo(Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;)I

    move-result v3

    if-lez v3, :cond_16

    .line 741
    const-string v3, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isActive(): thisPolicy:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", value:"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is stronger than device value:"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", return false"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v7

    .line 742
    goto/16 :goto_0

    .line 745
    :cond_16
    const-string v3, "MaxCalendarAgeFilter"

    iput-object v3, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mName:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mName:Ljava/lang/String;

    .line 746
    const-string v3, "Integer"

    iput-object v3, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mType:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mType:Ljava/lang/String;

    .line 747
    iget v3, p1, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxCalendarAgeFilter:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    .line 748
    iget-object v3, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->getMaxCalendarAge(Landroid/content/ComponentName;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    .line 749
    invoke-virtual {v1, v2}, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->compareTo(Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;)I

    move-result v3

    if-lez v3, :cond_17

    .line 751
    const-string v3, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isActive(): thisPolicy:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", value:"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is stronger than device value:"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", return false"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v7

    .line 752
    goto/16 :goto_0

    .line 755
    :cond_17
    const-string v3, "MaxEmailAgeFilter"

    iput-object v3, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mName:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mName:Ljava/lang/String;

    .line 756
    const-string v3, "Integer"

    iput-object v3, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mType:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mType:Ljava/lang/String;

    .line 757
    iget v3, p1, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxEmailAgeFilter:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    .line 758
    iget-object v3, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->getMaxEmailAge(Landroid/content/ComponentName;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    .line 759
    invoke-virtual {v1, v2}, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->compareTo(Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;)I

    move-result v3

    if-lez v3, :cond_18

    .line 761
    const-string v3, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isActive(): thisPolicy:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", value:"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is stronger than device value:"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", return false"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v7

    .line 762
    goto/16 :goto_0

    .line 765
    :cond_18
    const-string v3, "MaxEmailBodyTruncationSize"

    iput-object v3, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mName:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mName:Ljava/lang/String;

    .line 766
    const-string v3, "Integer"

    iput-object v3, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mType:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mType:Ljava/lang/String;

    .line 767
    iget v3, p1, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxEmailBodyTruncationSize:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    .line 768
    iget-object v3, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->getMaxEmailBodyTruncSize(Landroid/content/ComponentName;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    .line 769
    invoke-virtual {v1, v2}, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->compareTo(Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;)I

    move-result v3

    if-lez v3, :cond_19

    .line 771
    const-string v3, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isActive(): thisPolicy:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", value:"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is stronger than device value:"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", return false"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v7

    .line 772
    goto/16 :goto_0

    .line 775
    :cond_19
    const-string v3, "MaxEmailHtmlBodyTruncationSize"

    iput-object v3, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mName:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mName:Ljava/lang/String;

    .line 776
    const-string v3, "Integer"

    iput-object v3, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mType:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mType:Ljava/lang/String;

    .line 777
    iget v3, p1, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxEmailHtmlBodyTruncationSize:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    .line 778
    iget-object v3, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->getMaxHtmlEmailBodyTruncSize(Landroid/content/ComponentName;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    .line 779
    invoke-virtual {v1, v2}, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->compareTo(Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;)I

    move-result v3

    if-lez v3, :cond_1a

    .line 781
    const-string v3, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isActive(): thisPolicy:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", value:"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is stronger than device value:"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", return false"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v7

    .line 782
    goto/16 :goto_0

    .line 891
    :cond_1a
    const/4 v3, 0x1

    goto/16 :goto_0

    .end local v1           #ps:Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;
    .end local v2           #psAnother:Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;
    :cond_1b
    move v3, v7

    .line 894
    goto/16 :goto_0
.end method

.method public isActiveAdmin()Z
    .locals 2

    .prologue
    .line 1907
    invoke-direct {p0}, Lcom/android/email/SecurityPolicy;->getDPM()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    .line 1908
    .local v0, dpm:Landroid/app/admin/DevicePolicyManager;
    iget-object v1, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v1

    return v1
.end method

.method public isSupported(Lcom/android/email/SecurityPolicy$PolicySet;)Z
    .locals 3
    .parameter "policies"

    .prologue
    const/4 v2, 0x0

    .line 488
    iget v0, p1, Lcom/android/email/SecurityPolicy$PolicySet;->mMinPasswordLength:I

    const/16 v1, 0x10

    if-le v0, v1, :cond_0

    move v0, v2

    .line 500
    :goto_0
    return v0

    .line 491
    :cond_0
    iget v0, p1, Lcom/android/email/SecurityPolicy$PolicySet;->mPasswordMode:I

    const/4 v1, 0x4

    if-le v0, v1, :cond_1

    move v0, v2

    .line 492
    goto :goto_0

    .line 495
    :cond_1
    iget v0, p1, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxScreenLockTime:I

    const/16 v1, 0x7ff

    if-le v0, v1, :cond_2

    move v0, v2

    .line 496
    goto :goto_0

    .line 500
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method onAdminEnabled(Z)V
    .locals 4
    .parameter "isEnabled"

    .prologue
    const/4 v3, 0x0

    .line 1923
    if-nez p1, :cond_0

    .line 1927
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1928
    .local v0, cv:Landroid/content/ContentValues;
    const-string v1, "securityFlags"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1929
    const-string v1, "securitySyncKey"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1930
    iget-object v1, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/email/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1931
    const-wide/16 v1, -0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/email/SecurityPolicy;->updatePolicies(J)V

    .line 1933
    invoke-virtual {p0}, Lcom/android/email/SecurityPolicy;->setActivePoliciesAtSystemProperties()V

    .line 1935
    .end local v0           #cv:Landroid/content/ContentValues;
    :cond_0
    return-void
.end method

.method public policiesRequired(J)V
    .locals 24
    .parameter "accountId"

    .prologue
    .line 1139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-wide/from16 v1, p1

    invoke-static {v0, v1, v2}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v5

    .line 1142
    .local v5, account:Lcom/android/email/provider/EmailContent$Account;
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move-object v1, v5

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/email/SecurityPolicy;->setAccountHoldFlag(Lcom/android/email/provider/EmailContent$Account;Z)V

    .line 1145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const v20, 0x7f080168

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual {v5}, Lcom/android/email/provider/EmailContent$Account;->getDisplayName()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-virtual/range {v19 .. v21}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 1147
    .local v16, tickerText:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const v20, 0x7f080183

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1148
    .local v8, contentTitle:Ljava/lang/String;
    invoke-virtual {v5}, Lcom/android/email/provider/EmailContent$Account;->getDisplayName()Ljava/lang/String;

    move-result-object v7

    .line 1149
    .local v7, contentText:Ljava/lang/String;
    invoke-virtual {v5}, Lcom/android/email/provider/EmailContent$Account;->getRingtone()Ljava/lang/String;

    move-result-object v15

    .line 1150
    .local v15, ringtoneString:Ljava/lang/String;
    if-nez v15, :cond_2

    const/16 v19, 0x0

    move-object/from16 v14, v19

    .line 1151
    .local v14, ringTone:Landroid/net/Uri;
    :goto_0
    move-object v0, v5

    iget v0, v0, Lcom/android/email/provider/EmailContent$Account;->mFlags:I

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x2

    if-eqz v19, :cond_3

    const/16 v19, 0x1

    move/from16 v17, v19

    .line 1152
    .local v17, vibrate:Z
    :goto_1
    move-object v0, v5

    iget v0, v0, Lcom/android/email/provider/EmailContent$Account;->mFlags:I

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x40

    if-eqz v19, :cond_4

    const/16 v19, 0x1

    move/from16 v18, v19

    .line 1154
    .local v18, vibrateWhenSilent:Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-wide/from16 v1, p1

    invoke-static {v0, v1, v2}, Lcom/android/email/activity/setup/AccountSecurity;->actionUpdateSecurityIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v9

    .line 1155
    .local v9, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/high16 v21, 0x800

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object v2, v9

    move/from16 v3, v21

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v13

    .line 1158
    .local v13, pending:Landroid/app/PendingIntent;
    new-instance v10, Landroid/app/Notification;

    const v19, 0x7f0200d4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move-object v0, v10

    move/from16 v1, v19

    move-object/from16 v2, v16

    move-wide/from16 v3, v20

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 1160
    .local v10, notification:Landroid/app/Notification;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object v0, v10

    move-object/from16 v1, v19

    move-object v2, v8

    move-object v3, v7

    move-object v4, v13

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string v20, "audio"

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/AudioManager;

    .line 1165
    .local v6, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v6}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_5

    const/16 v19, 0x1

    move/from16 v12, v19

    .line 1167
    .local v12, nowSilent:Z
    :goto_3
    iput-object v14, v10, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 1169
    if-nez v17, :cond_0

    if-eqz v18, :cond_1

    if-eqz v12, :cond_1

    .line 1170
    :cond_0
    move-object v0, v10

    iget v0, v0, Landroid/app/Notification;->defaults:I

    move/from16 v19, v0

    or-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    move-object v1, v10

    iput v0, v1, Landroid/app/Notification;->defaults:I

    .line 1172
    :cond_1
    move-object v0, v10

    iget v0, v0, Landroid/app/Notification;->flags:I

    move/from16 v19, v0

    or-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    move-object v1, v10

    iput v0, v1, Landroid/app/Notification;->flags:I

    .line 1173
    move-object v0, v10

    iget v0, v0, Landroid/app/Notification;->defaults:I

    move/from16 v19, v0

    or-int/lit8 v19, v19, 0x4

    move/from16 v0, v19

    move-object v1, v10

    iput v0, v1, Landroid/app/Notification;->defaults:I

    .line 1175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string v20, "notification"

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/NotificationManager;

    .line 1177
    .local v11, notificationManager:Landroid/app/NotificationManager;
    sget v19, Lcom/android/email/service/MailService;->NOTIFICATION_ID_SECURITY_NEEDED:I

    move-object v0, v11

    move/from16 v1, v19

    move-object v2, v10

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1178
    return-void

    .line 1150
    .end local v6           #audioManager:Landroid/media/AudioManager;
    .end local v9           #intent:Landroid/content/Intent;
    .end local v10           #notification:Landroid/app/Notification;
    .end local v11           #notificationManager:Landroid/app/NotificationManager;
    .end local v12           #nowSilent:Z
    .end local v13           #pending:Landroid/app/PendingIntent;
    .end local v14           #ringTone:Landroid/net/Uri;
    .end local v17           #vibrate:Z
    .end local v18           #vibrateWhenSilent:Z
    :cond_2
    invoke-static {v15}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    move-object/from16 v14, v19

    goto/16 :goto_0

    .line 1151
    .restart local v14       #ringTone:Landroid/net/Uri;
    :cond_3
    const/16 v19, 0x0

    move/from16 v17, v19

    goto/16 :goto_1

    .line 1152
    .restart local v17       #vibrate:Z
    :cond_4
    const/16 v19, 0x0

    move/from16 v18, v19

    goto/16 :goto_2

    .line 1165
    .restart local v6       #audioManager:Landroid/media/AudioManager;
    .restart local v9       #intent:Landroid/content/Intent;
    .restart local v10       #notification:Landroid/app/Notification;
    .restart local v13       #pending:Landroid/app/PendingIntent;
    .restart local v18       #vibrateWhenSilent:Z
    :cond_5
    const/16 v19, 0x0

    move/from16 v12, v19

    goto :goto_3
.end method

.method public reducePolicies()V
    .locals 2

    .prologue
    .line 518
    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/email/SecurityPolicy;->updatePolicies(J)V

    .line 519
    invoke-virtual {p0}, Lcom/android/email/SecurityPolicy;->setActivePolicies()V

    .line 520
    return-void
.end method

.method public remoteWipe()V
    .locals 3

    .prologue
    .line 1195
    invoke-direct {p0}, Lcom/android/email/SecurityPolicy;->getDPM()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    .line 1196
    .local v0, dpm:Landroid/app/admin/DevicePolicyManager;
    iget-object v1, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1197
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->wipeData(I)V

    .line 1201
    :goto_0
    return-void

    .line 1199
    :cond_0
    const-string v1, "Email"

    const-string v2, "Could not remote wipe because not device admin."

    invoke-static {v1, v2}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method sendRecoveryPassword()V
    .locals 2

    .prologue
    .line 1205
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.security.intent.action.PASSWORD_RECOVERY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1206
    .local v0, i:Landroid/content/Intent;
    invoke-static {}, Lcom/android/email/SecurityPolicy;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1207
    return-void
.end method

.method public setAccountHoldFlag(Lcom/android/email/provider/EmailContent$Account;Z)V
    .locals 3
    .parameter "account"
    .parameter "newState"

    .prologue
    .line 1089
    if-eqz p2, :cond_0

    .line 1090
    iget v1, p1, Lcom/android/email/provider/EmailContent$Account;->mFlags:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p1, Lcom/android/email/provider/EmailContent$Account;->mFlags:I

    .line 1094
    :goto_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1095
    .local v0, cv:Landroid/content/ContentValues;
    const-string v1, "flags"

    iget v2, p1, Lcom/android/email/provider/EmailContent$Account;->mFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1096
    iget-object v1, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1, v0}, Lcom/android/email/provider/EmailContent$Account;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 1097
    return-void

    .line 1092
    .end local v0           #cv:Landroid/content/ContentValues;
    :cond_0
    iget v1, p1, Lcom/android/email/provider/EmailContent$Account;->mFlags:I

    and-int/lit8 v1, v1, -0x21

    iput v1, p1, Lcom/android/email/provider/EmailContent$Account;->mFlags:I

    goto :goto_0
.end method

.method public setActivePolicies()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 998
    invoke-direct {p0}, Lcom/android/email/SecurityPolicy;->getDPM()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    .line 1000
    .local v0, dpm:Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {p0}, Lcom/android/email/SecurityPolicy;->getAggregatePolicy()Lcom/android/email/SecurityPolicy$PolicySet;

    move-result-object v1

    .line 1002
    .local v1, policies:Lcom/android/email/SecurityPolicy$PolicySet;
    sget-object v2, Lcom/android/email/SecurityPolicy;->NO_POLICY_SET:Lcom/android/email/SecurityPolicy$PolicySet;

    invoke-virtual {v1, v2}, Lcom/android/email/SecurityPolicy$PolicySet;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/exchange/SyncManager;->exchangeAccountsExist()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1003
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0, v2, v5}, Landroid/app/admin/DevicePolicyManager;->setAllowCamera(Landroid/content/ComponentName;Z)V

    .line 1004
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Landroid/app/admin/DevicePolicyManager;->removeActiveAdmin(Landroid/content/ComponentName;)V

    .line 1074
    :goto_0
    return-void

    .line 1005
    :cond_0
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1008
    :try_start_0
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/admin/DevicePolicyManager;->notifyChanges(Landroid/content/ComponentName;Z)V

    .line 1012
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Lcom/android/email/SecurityPolicy$PolicySet;->getDPManagerPasswordQuality()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/app/admin/DevicePolicyManager;->setPasswordQuality(Landroid/content/ComponentName;I)V

    .line 1013
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget v3, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mMinPasswordLength:I

    invoke-virtual {v0, v2, v3}, Landroid/app/admin/DevicePolicyManager;->setPasswordMinimumLength(Landroid/content/ComponentName;I)V

    .line 1015
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget v3, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxScreenLockTime:I

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v3, v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/app/admin/DevicePolicyManager;->setMaximumTimeToLock(Landroid/content/ComponentName;J)V

    .line 1017
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget v3, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxPasswordFails:I

    invoke-virtual {v0, v2, v3}, Landroid/app/admin/DevicePolicyManager;->setMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)V

    .line 1019
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget-boolean v3, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mPasswordRecoverable:Z

    invoke-virtual {v0, v2, v3}, Landroid/app/admin/DevicePolicyManager;->setPasswordRecoverable(Landroid/content/ComponentName;Z)V

    .line 1020
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget v3, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mPasswordExpires:I

    invoke-virtual {v0, v2, v3}, Landroid/app/admin/DevicePolicyManager;->setPasswordExpires(Landroid/content/ComponentName;I)V

    .line 1021
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget v3, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mPasswordHistory:I

    invoke-virtual {v0, v2, v3}, Landroid/app/admin/DevicePolicyManager;->setPasswordHistory(Landroid/content/ComponentName;I)V

    .line 1022
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget-boolean v3, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mAttachmentsEnabled:Z

    invoke-virtual {v0, v2, v3}, Landroid/app/admin/DevicePolicyManager;->setAttachmentsEnabled(Landroid/content/ComponentName;Z)V

    .line 1023
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget v3, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxAttachmentSize:I

    invoke-virtual {v0, v2, v3}, Landroid/app/admin/DevicePolicyManager;->setMaxAttachmentSize(Landroid/content/ComponentName;I)V

    .line 1027
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget-boolean v3, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowStorageCard:Z

    invoke-virtual {v0, v2, v3}, Landroid/app/admin/DevicePolicyManager;->setAllowStorageCard(Landroid/content/ComponentName;Z)V

    .line 1028
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget-boolean v3, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowCamera:Z

    invoke-virtual {v0, v2, v3}, Landroid/app/admin/DevicePolicyManager;->setAllowCamera(Landroid/content/ComponentName;Z)V

    .line 1029
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget-boolean v3, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowWifi:Z

    invoke-virtual {v0, v2, v3}, Landroid/app/admin/DevicePolicyManager;->setAllowWifi(Landroid/content/ComponentName;Z)V

    .line 1030
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget-boolean v3, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowTextMessaging:Z

    invoke-virtual {v0, v2, v3}, Landroid/app/admin/DevicePolicyManager;->setAllowTextMessaging(Landroid/content/ComponentName;Z)V

    .line 1031
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget-boolean v3, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowPOPIMAPEmail:Z

    invoke-virtual {v0, v2, v3}, Landroid/app/admin/DevicePolicyManager;->setAllowPOPIMAPEmail(Landroid/content/ComponentName;Z)V

    .line 1032
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget-boolean v3, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowHTMLEmail:Z

    invoke-virtual {v0, v2, v3}, Landroid/app/admin/DevicePolicyManager;->setAllowHTMLEmail(Landroid/content/ComponentName;Z)V

    .line 1033
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget-boolean v3, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowBrowser:Z

    invoke-virtual {v0, v2, v3}, Landroid/app/admin/DevicePolicyManager;->setAllowBrowser(Landroid/content/ComponentName;Z)V

    .line 1034
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget-boolean v3, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowInternetSharing:Z

    invoke-virtual {v0, v2, v3}, Landroid/app/admin/DevicePolicyManager;->setAllowInternetSharing(Landroid/content/ComponentName;Z)V

    .line 1035
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget-boolean v3, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mRequireManualSyncWhenRoaming:Z

    invoke-virtual {v0, v2, v3}, Landroid/app/admin/DevicePolicyManager;->setRequireManualSyncRoaming(Landroid/content/ComponentName;Z)V

    .line 1037
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget v3, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowBluetoothMode:I

    invoke-virtual {v0, v2, v3}, Landroid/app/admin/DevicePolicyManager;->setAllowBluetoothMode(Landroid/content/ComponentName;I)V

    .line 1038
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget v3, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mMinPasswordComplexChars:I

    invoke-virtual {v0, v2, v3}, Landroid/app/admin/DevicePolicyManager;->setMinPasswordComplexChars(Landroid/content/ComponentName;I)V

    .line 1040
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget v3, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxCalendarAgeFilter:I

    invoke-virtual {v0, v2, v3}, Landroid/app/admin/DevicePolicyManager;->setMaxCalendarAge(Landroid/content/ComponentName;I)V

    .line 1042
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget v3, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxEmailAgeFilter:I

    invoke-virtual {v0, v2, v3}, Landroid/app/admin/DevicePolicyManager;->setMaxEmailAge(Landroid/content/ComponentName;I)V

    .line 1044
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget v3, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxEmailBodyTruncationSize:I

    invoke-virtual {v0, v2, v3}, Landroid/app/admin/DevicePolicyManager;->setMaxEmailBodyTruncSize(Landroid/content/ComponentName;I)V

    .line 1046
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget v3, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxEmailHtmlBodyTruncationSize:I

    invoke-virtual {v0, v2, v3}, Landroid/app/admin/DevicePolicyManager;->setMaxHtmlEmailBodyTruncSize(Landroid/content/ComponentName;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1065
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0, v2, v5}, Landroid/app/admin/DevicePolicyManager;->notifyChanges(Landroid/content/ComponentName;Z)V

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0, v3, v5}, Landroid/app/admin/DevicePolicyManager;->notifyChanges(Landroid/content/ComponentName;Z)V

    throw v2

    .line 1071
    :cond_1
    const-string v2, "Email"

    const-string v3, "setActivePolicies() : noActiveAdmin case :  dpm.setAllowCamera : true"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1072
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0, v2, v5}, Landroid/app/admin/DevicePolicyManager;->setAllowCamera(Landroid/content/ComponentName;Z)V

    goto/16 :goto_0
.end method

.method public setActivePoliciesAtSystemProperties()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const-string v4, "Email"

    .line 961
    const-string v2, "Email"

    const-string v2, "setActivePoliciesAtSystemProperties()"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    invoke-direct {p0}, Lcom/android/email/SecurityPolicy;->getDPM()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    .line 964
    .local v0, dpm:Landroid/app/admin/DevicePolicyManager;
    if-nez v0, :cond_0

    .line 989
    :goto_0
    return-void

    .line 969
    :cond_0
    invoke-virtual {p0}, Lcom/android/email/SecurityPolicy;->getAggregatePolicy()Lcom/android/email/SecurityPolicy$PolicySet;

    move-result-object v1

    .line 971
    .local v1, policies:Lcom/android/email/SecurityPolicy$PolicySet;
    if-eqz v1, :cond_1

    sget-object v2, Lcom/android/email/SecurityPolicy;->NO_POLICY_SET:Lcom/android/email/SecurityPolicy$PolicySet;

    invoke-virtual {v1, v2}, Lcom/android/email/SecurityPolicy$PolicySet;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/exchange/SyncManager;->exchangeAccountsExist()Z

    move-result v2

    if-nez v2, :cond_2

    .line 973
    :cond_1
    const-string v2, "Email"

    const-string v2, "setActivePoliciesAtSystemProperties() : no policy exists case : dpm.setAllowCamera : true"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0, v2, v3}, Landroid/app/admin/DevicePolicyManager;->setAllowCamera(Landroid/content/ComponentName;Z)V

    goto :goto_0

    .line 975
    :cond_2
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 977
    const-string v2, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setActivePoliciesAtSystemProperties() : AdminActive  case : dpm.setAllowCamera : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowCamera:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    :try_start_0
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget-boolean v3, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowCamera:Z

    invoke-virtual {v0, v2, v3}, Landroid/app/admin/DevicePolicyManager;->setAllowCamera(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 981
    :catchall_0
    move-exception v2

    throw v2

    .line 986
    :cond_3
    const-string v2, "Email"

    const-string v2, "setActivePoliciesAtSystemProperties() : noActiveAdmin case :  dpm.setAllowCamera : true"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0, v2, v3}, Landroid/app/admin/DevicePolicyManager;->setAllowCamera(Landroid/content/ComponentName;Z)V

    goto :goto_0
.end method

.method setContext(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 254
    iput-object p1, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    .line 255
    return-void
.end method

.method public setRecoverPasswordState(Z)V
    .locals 3
    .parameter "result"

    .prologue
    .line 1078
    invoke-direct {p0}, Lcom/android/email/SecurityPolicy;->getDPM()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    .line 1079
    .local v0, mDPM:Landroid/app/admin/DevicePolicyManager;
    iget-object v1, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->setRecoveryPasswordState(Landroid/content/ComponentName;Z)V

    .line 1080
    return-void
.end method

.method public declared-synchronized updatePolicies(J)V
    .locals 1
    .parameter "accountId"

    .prologue
    .line 508
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/android/email/SecurityPolicy;->mAggregatePolicy:Lcom/android/email/SecurityPolicy$PolicySet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 509
    monitor-exit p0

    return-void

    .line 508
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
