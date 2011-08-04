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
.field private static final ACCOUNT_FLAGS_PROJECTION:[Ljava/lang/String;

.field private static final ACCOUNT_SECURITY_PROJECTION:[Ljava/lang/String;

.field private static DEFAULT_POLICY_SET:Lcom/android/email/SecurityPolicy$PolicySet;

.field static final NO_POLICY_SET:Lcom/android/email/SecurityPolicy$PolicySet;

.field public static final PASSWORD_POLICIES:[Ljava/lang/String;

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
    .line 68
    const/4 v0, 0x0

    sput-object v0, Lcom/android/email/SecurityPolicy;->sInstance:Lcom/android/email/SecurityPolicy;

    .line 127
    const/4 v0, 0x0

    sput-object v0, Lcom/android/email/SecurityPolicy;->DEFAULT_POLICY_SET:Lcom/android/email/SecurityPolicy$PolicySet;

    .line 129
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

    const/16 v28, -0x1

    const/16 v29, -0x1

    const/16 v30, -0x1

    const/16 v31, 0x1

    const/16 v32, 0x1

    const/16 v33, 0x1

    const/16 v34, 0x0

    const/16 v35, 0x0

    invoke-direct/range {v0 .. v35}, Lcom/android/email/SecurityPolicy$PolicySet;-><init>(IIIIZZIIZIZZZZZZZZZIIIIIIZZIIIZZZZZ)V

    sput-object v0, Lcom/android/email/SecurityPolicy;->NO_POLICY_SET:Lcom/android/email/SecurityPolicy$PolicySet;

    .line 192
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

    .line 209
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "securityFlags"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/SecurityPolicy;->ACCOUNT_SECURITY_PROJECTION:[Ljava/lang/String;

    .line 221
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
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 254
    iput-object p1, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    .line 255
    iput-object v2, p0, Lcom/android/email/SecurityPolicy;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 256
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/android/email/SecurityPolicy$PolicyAdmin;

    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    .line 257
    iput-object v2, p0, Lcom/android/email/SecurityPolicy;->mAggregatePolicy:Lcom/android/email/SecurityPolicy$PolicySet;

    .line 260
    invoke-direct {p0}, Lcom/android/email/SecurityPolicy;->getDPM()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    .line 261
    iget-object v1, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 262
    iget-object v1, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->setAdminPermissions(Landroid/content/ComponentName;)V

    .line 264
    :cond_0
    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 279
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
    .line 646
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/email/SecurityPolicy;->mDPM:Landroid/app/admin/DevicePolicyManager;

    if-nez v0, :cond_0

    .line 647
    iget-object v0, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/email/SecurityPolicy;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 649
    :cond_0
    iget-object v0, p0, Lcom/android/email/SecurityPolicy;->mDPM:Landroid/app/admin/DevicePolicyManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 646
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;
    .locals 2
    .parameter "context"

    .prologue
    .line 244
    const-class v0, Lcom/android/email/SecurityPolicy;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/email/SecurityPolicy;->sInstance:Lcom/android/email/SecurityPolicy;

    if-nez v1, :cond_0

    .line 245
    new-instance v1, Lcom/android/email/SecurityPolicy;

    invoke-direct {v1, p0}, Lcom/android/email/SecurityPolicy;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/email/SecurityPolicy;->sInstance:Lcom/android/email/SecurityPolicy;

    .line 247
    :cond_0
    sget-object v1, Lcom/android/email/SecurityPolicy;->sInstance:Lcom/android/email/SecurityPolicy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 244
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public IsAllowAttachmentDownload()Z
    .locals 3

    .prologue
    .line 1147
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "11111 SecurityPolicy.java >>>>> IsAllowAttachmentDownload()  >>>>> 880"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1148
    invoke-direct {p0}, Lcom/android/email/SecurityPolicy;->getDPM()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    .line 1150
    .local v0, dpm:Landroid/app/admin/DevicePolicyManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getAttachmentsEnabled(Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1152
    const/4 v1, 0x1

    .line 1155
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public IsAllowHTMLEmailSetted()Z
    .locals 2

    .prologue
    .line 1182
    invoke-direct {p0}, Lcom/android/email/SecurityPolicy;->getDPM()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    .line 1184
    .local v0, dpm:Landroid/app/admin/DevicePolicyManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getAllowHTMLEmail(Landroid/content/ComponentName;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1186
    const/4 v1, 0x1

    .line 1189
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public IsAllowPOPIMAPEmailSetted()Z
    .locals 3

    .prologue
    .line 1133
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "11111 SecurityPolicy.java >>>>> IsAllowPOPIMAPEmailSetted()  >>>>> 870"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1134
    invoke-direct {p0}, Lcom/android/email/SecurityPolicy;->getDPM()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    .line 1136
    .local v0, dpm:Landroid/app/admin/DevicePolicyManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getAllowPOPIMAPEmail(Landroid/content/ComponentName;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1138
    const/4 v1, 0x1

    .line 1142
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public checkDeviceEnryptionOnPasswordChanged(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 2202
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/exchange/security/ode/ODEService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2203
    const-string v1, "startProc"

    const-string v2, "onPassword"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2204
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 2205
    return-void
.end method

.method public clearAccountHoldFlags()V
    .locals 12

    .prologue
    const/4 v3, 0x0

    .line 1340
    iget-object v1, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1342
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/email/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/email/SecurityPolicy;->ACCOUNT_FLAGS_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1347
    .local v8, c:Landroid/database/Cursor;
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1349
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 1350
    .local v6, accountId:J
    iget-object v1, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-static {v1, v6, v7}, Lcom/android/email/provider/EmailContent$Policies;->getNumberOfPoliciesForAccount(Landroid/content/Context;J)I

    move-result v1

    if-lez v1, :cond_0

    .line 1351
    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 1352
    .local v10, flags:I
    and-int/lit8 v1, v10, 0x20

    if-eqz v1, :cond_0

    .line 1353
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 1354
    .local v9, cv:Landroid/content/ContentValues;
    const-string v1, "flags"

    and-int/lit8 v2, v10, -0x21

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1355
    sget-object v1, Lcom/android/email/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v11

    .line 1356
    .local v11, uri:Landroid/net/Uri;
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v11, v9, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1362
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

    .line 1364
    return-void
.end method

.method public clearNotification(J)V
    .locals 3
    .parameter "accountId"

    .prologue
    .line 1423
    iget-object v1, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1425
    .local v0, notificationManager:Landroid/app/NotificationManager;
    sget v1, Lcom/android/email/service/MailService;->NOTIFICATION_ID_SECURITY_NEEDED:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1426
    return-void
.end method

.method computeAggregatePolicy()Lcom/android/email/SecurityPolicy$PolicySet;
    .locals 43

    .prologue
    .line 329
    const/16 v41, 0x0

    .line 331
    .local v41, policiesFound:Z
    const/high16 v3, -0x8000

    .line 332
    .local v3, minPasswordLength:I
    const/high16 v4, -0x8000

    .line 333
    .local v4, passwordMode:I
    const v5, 0x7fffffff

    .line 334
    .local v5, maxPasswordFails:I
    const v6, 0x7fffffff

    .line 335
    .local v6, maxScreenLockTime:I
    const/4 v7, 0x0

    .line 337
    .local v7, requireRemoteWipe:Z
    const/4 v8, 0x0

    .line 338
    .local v8, passwordRecoverable:Z
    const/4 v9, 0x0

    .line 339
    .local v9, passwordExpires:I
    const/4 v10, 0x0

    .line 340
    .local v10, passwordHistory:I
    const/4 v11, 0x1

    .line 341
    .local v11, attachmentsEnabled:Z
    const v12, 0x7fffffff

    .line 343
    .local v12, maxAttachmentSize:I
    const/4 v13, 0x1

    .line 344
    .local v13, allowStorageCard:Z
    const/4 v14, 0x1

    .line 345
    .local v14, allowCamera:Z
    const/4 v15, 0x1

    .line 346
    .local v15, allowWifi:Z
    const/16 v16, 0x1

    .line 347
    .local v16, allowTextMessaging:Z
    const/16 v17, 0x1

    .line 348
    .local v17, allowPOPIMAPEmail:Z
    const/16 v18, 0x1

    .line 349
    .local v18, allowHTMLEmail:Z
    const/16 v19, 0x1

    .line 350
    .local v19, allowBrowser:Z
    const/16 v20, 0x1

    .line 351
    .local v20, allowInternetSharing:Z
    const/16 v21, 0x0

    .line 352
    .local v21, requireManualSyncWhenRoaming:Z
    const/16 v22, 0x2

    .line 353
    .local v22, allowBluetoothMode:I
    const/16 v23, 0x0

    .line 354
    .local v23, minPasswordComplexChars:I
    const/16 v24, 0x0

    .line 355
    .local v24, maxCalendarAgeFilter:I
    const/16 v25, 0x0

    .line 356
    .local v25, maxEmailAgeFilter:I
    const v26, 0x7fffffff

    .line 357
    .local v26, maxEmailBodyTruncationSize:I
    const v27, 0x7fffffff

    .line 358
    .local v27, maxEmailHtmlBodyTruncationSize:I
    const/16 v28, 0x0

    .line 359
    .local v28, requireSignedSMIMEMessages:Z
    const/16 v29, 0x0

    .line 360
    .local v29, requireEncryptedSMIMEMessages:Z
    const/16 v30, -0x1

    .line 361
    .local v30, requireSignedSMIMEAlgorithm:I
    const/16 v31, -0x1

    .line 362
    .local v31, requireEncryptionSMIMEAlgorithm:I
    const/16 v32, -0x1

    .line 363
    .local v32, allowSMIMEEncryptionAlgorithmNegotiation:I
    const/16 v33, 0x1

    .line 364
    .local v33, allowSMIMESoftCerts:Z
    const/16 v34, 0x1

    .line 365
    .local v34, allowDesktopSync:Z
    const/16 v35, 0x1

    .line 366
    .local v35, allowIrDA:Z
    const/16 v36, 0x0

    .line 367
    .local v36, requireDeviceEncryption:Z
    const/16 v37, 0x0

    .line 370
    .local v37, requireStorageCardEncryption:Z
    new-instance v40, Lcom/android/exchange/PoliciesMultiplexer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    move-object v2, v0

    move-object/from16 v0, v40

    move-object v1, v2

    invoke-direct {v0, v1}, Lcom/android/exchange/PoliciesMultiplexer;-><init>(Landroid/content/Context;)V

    .line 371
    .local v40, pm:Lcom/android/exchange/PoliciesMultiplexer;
    invoke-virtual/range {v40 .. v40}, Lcom/android/exchange/PoliciesMultiplexer;->computeAggregatePolicy()Ljava/util/HashMap;

    move-result-object v42

    .line 373
    .local v42, values:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v42, :cond_0

    invoke-virtual/range {v42 .. v42}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 374
    const/16 v41, 0x1

    .line 376
    const/16 v39, 0x0

    .line 377
    .local v39, intValue:Ljava/lang/Integer;
    const/16 v38, 0x0

    .line 379
    .local v38, boolValue:Ljava/lang/Boolean;
    const-string v2, "PasswordMode"

    move-object/from16 v0, v42

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v39

    .end local v39           #intValue:Ljava/lang/Integer;
    check-cast v39, Ljava/lang/Integer;

    .restart local v39       #intValue:Ljava/lang/Integer;
    if-nez v39, :cond_11

    .line 380
    :goto_0
    const-string v2, "MinDevicePasswordLength"

    move-object/from16 v0, v42

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v39

    .end local v39           #intValue:Ljava/lang/Integer;
    check-cast v39, Ljava/lang/Integer;

    .restart local v39       #intValue:Ljava/lang/Integer;
    if-nez v39, :cond_12

    .line 381
    :goto_1
    const-string v2, "MaxDevicePasswordFailedAttempts"

    move-object/from16 v0, v42

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v39

    .end local v39           #intValue:Ljava/lang/Integer;
    check-cast v39, Ljava/lang/Integer;

    .restart local v39       #intValue:Ljava/lang/Integer;
    if-nez v39, :cond_13

    .line 382
    :goto_2
    const-string v2, "MaxInactivityTime"

    move-object/from16 v0, v42

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v39

    .end local v39           #intValue:Ljava/lang/Integer;
    check-cast v39, Ljava/lang/Integer;

    .restart local v39       #intValue:Ljava/lang/Integer;
    if-nez v39, :cond_14

    .line 383
    :goto_3
    const-string v2, "RemoteWipe"

    move-object/from16 v0, v42

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    .end local v38           #boolValue:Ljava/lang/Boolean;
    check-cast v38, Ljava/lang/Boolean;

    .restart local v38       #boolValue:Ljava/lang/Boolean;
    if-nez v38, :cond_15

    .line 384
    :goto_4
    const-string v2, "PasswordRecoveryEnabled"

    move-object/from16 v0, v42

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    .end local v38           #boolValue:Ljava/lang/Boolean;
    check-cast v38, Ljava/lang/Boolean;

    .restart local v38       #boolValue:Ljava/lang/Boolean;
    if-nez v38, :cond_16

    .line 385
    :goto_5
    const-string v2, "DevicePasswordExpiration"

    move-object/from16 v0, v42

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v39

    .end local v39           #intValue:Ljava/lang/Integer;
    check-cast v39, Ljava/lang/Integer;

    .restart local v39       #intValue:Ljava/lang/Integer;
    if-nez v39, :cond_17

    .line 386
    :goto_6
    const-string v2, "DevicePasswordHistory"

    move-object/from16 v0, v42

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v39

    .end local v39           #intValue:Ljava/lang/Integer;
    check-cast v39, Ljava/lang/Integer;

    .restart local v39       #intValue:Ljava/lang/Integer;
    if-nez v39, :cond_18

    .line 387
    :goto_7
    const-string v2, "AttachmentsEnabled"

    move-object/from16 v0, v42

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    .end local v38           #boolValue:Ljava/lang/Boolean;
    check-cast v38, Ljava/lang/Boolean;

    .restart local v38       #boolValue:Ljava/lang/Boolean;
    if-nez v38, :cond_19

    .line 388
    :goto_8
    const-string v2, "MaxAttachmentSize"

    move-object/from16 v0, v42

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v39

    .end local v39           #intValue:Ljava/lang/Integer;
    check-cast v39, Ljava/lang/Integer;

    .restart local v39       #intValue:Ljava/lang/Integer;
    if-nez v39, :cond_1a

    .line 390
    :goto_9
    const-string v2, "AllowStorageCard"

    move-object/from16 v0, v42

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    .end local v38           #boolValue:Ljava/lang/Boolean;
    check-cast v38, Ljava/lang/Boolean;

    .restart local v38       #boolValue:Ljava/lang/Boolean;
    if-nez v38, :cond_1b

    .line 391
    :goto_a
    const-string v2, "AllowCamera"

    move-object/from16 v0, v42

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    .end local v38           #boolValue:Ljava/lang/Boolean;
    check-cast v38, Ljava/lang/Boolean;

    .restart local v38       #boolValue:Ljava/lang/Boolean;
    if-nez v38, :cond_1c

    .line 392
    :goto_b
    const-string v2, "AllowWifi"

    move-object/from16 v0, v42

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    .end local v38           #boolValue:Ljava/lang/Boolean;
    check-cast v38, Ljava/lang/Boolean;

    .restart local v38       #boolValue:Ljava/lang/Boolean;
    if-nez v38, :cond_1d

    .line 393
    :goto_c
    const-string v2, "AllowTextMessaging"

    move-object/from16 v0, v42

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    .end local v38           #boolValue:Ljava/lang/Boolean;
    check-cast v38, Ljava/lang/Boolean;

    .restart local v38       #boolValue:Ljava/lang/Boolean;
    if-nez v38, :cond_1e

    .line 394
    :goto_d
    const-string v2, "AllowPOPIMAPEmail"

    move-object/from16 v0, v42

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    .end local v38           #boolValue:Ljava/lang/Boolean;
    check-cast v38, Ljava/lang/Boolean;

    .restart local v38       #boolValue:Ljava/lang/Boolean;
    if-nez v38, :cond_1f

    .line 395
    :goto_e
    const-string v2, "AllowHTMLEmail"

    move-object/from16 v0, v42

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    .end local v38           #boolValue:Ljava/lang/Boolean;
    check-cast v38, Ljava/lang/Boolean;

    .restart local v38       #boolValue:Ljava/lang/Boolean;
    if-nez v38, :cond_20

    .line 396
    :goto_f
    const-string v2, "AllowBrowser"

    move-object/from16 v0, v42

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    .end local v38           #boolValue:Ljava/lang/Boolean;
    check-cast v38, Ljava/lang/Boolean;

    .restart local v38       #boolValue:Ljava/lang/Boolean;
    if-nez v38, :cond_21

    .line 397
    :goto_10
    const-string v2, "AllowInternetSharing"

    move-object/from16 v0, v42

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    .end local v38           #boolValue:Ljava/lang/Boolean;
    check-cast v38, Ljava/lang/Boolean;

    .restart local v38       #boolValue:Ljava/lang/Boolean;
    if-nez v38, :cond_22

    .line 398
    :goto_11
    const-string v2, "RequireManualSyncWhenRoaming"

    move-object/from16 v0, v42

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    .end local v38           #boolValue:Ljava/lang/Boolean;
    check-cast v38, Ljava/lang/Boolean;

    .restart local v38       #boolValue:Ljava/lang/Boolean;
    if-nez v38, :cond_23

    .line 399
    :goto_12
    const-string v2, "AllowBluetoothMode"

    move-object/from16 v0, v42

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v39

    .end local v39           #intValue:Ljava/lang/Integer;
    check-cast v39, Ljava/lang/Integer;

    .restart local v39       #intValue:Ljava/lang/Integer;
    if-nez v39, :cond_24

    .line 400
    :goto_13
    const-string v2, "MinPasswordComplexCharacters"

    move-object/from16 v0, v42

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v39

    .end local v39           #intValue:Ljava/lang/Integer;
    check-cast v39, Ljava/lang/Integer;

    .restart local v39       #intValue:Ljava/lang/Integer;
    if-nez v39, :cond_25

    .line 401
    :goto_14
    const-string v2, "MaxCalendarAgeFilter"

    move-object/from16 v0, v42

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v39

    .end local v39           #intValue:Ljava/lang/Integer;
    check-cast v39, Ljava/lang/Integer;

    .restart local v39       #intValue:Ljava/lang/Integer;
    if-nez v39, :cond_26

    .line 402
    :goto_15
    const-string v2, "MaxEmailAgeFilter"

    move-object/from16 v0, v42

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v39

    .end local v39           #intValue:Ljava/lang/Integer;
    check-cast v39, Ljava/lang/Integer;

    .restart local v39       #intValue:Ljava/lang/Integer;
    if-nez v39, :cond_27

    .line 403
    :goto_16
    const-string v2, "MaxEmailBodyTruncationSize"

    move-object/from16 v0, v42

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v39

    .end local v39           #intValue:Ljava/lang/Integer;
    check-cast v39, Ljava/lang/Integer;

    .restart local v39       #intValue:Ljava/lang/Integer;
    if-nez v39, :cond_28

    .line 404
    :goto_17
    const-string v2, "MaxEmailHtmlBodyTruncationSize"

    move-object/from16 v0, v42

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v39

    .end local v39           #intValue:Ljava/lang/Integer;
    check-cast v39, Ljava/lang/Integer;

    .restart local v39       #intValue:Ljava/lang/Integer;
    if-nez v39, :cond_29

    .line 405
    :goto_18
    const-string v2, "RequireSignedSMIMEMessages"

    move-object/from16 v0, v42

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    .end local v38           #boolValue:Ljava/lang/Boolean;
    check-cast v38, Ljava/lang/Boolean;

    .restart local v38       #boolValue:Ljava/lang/Boolean;
    if-nez v38, :cond_2a

    .line 406
    :goto_19
    const-string v2, "RequireEncryptedSMIMEMessages"

    move-object/from16 v0, v42

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    .end local v38           #boolValue:Ljava/lang/Boolean;
    check-cast v38, Ljava/lang/Boolean;

    .restart local v38       #boolValue:Ljava/lang/Boolean;
    if-nez v38, :cond_2b

    .line 408
    :goto_1a
    const-string v2, "RequireSignedSMIMEAlgorithm"

    move-object/from16 v0, v42

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v39

    .end local v39           #intValue:Ljava/lang/Integer;
    check-cast v39, Ljava/lang/Integer;

    .restart local v39       #intValue:Ljava/lang/Integer;
    if-nez v39, :cond_2c

    .line 409
    :goto_1b
    const-string v2, "RequireEncryptionSMIMEAlgorithm"

    move-object/from16 v0, v42

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v39

    .end local v39           #intValue:Ljava/lang/Integer;
    check-cast v39, Ljava/lang/Integer;

    .restart local v39       #intValue:Ljava/lang/Integer;
    if-nez v39, :cond_2d

    .line 410
    :goto_1c
    const-string v2, "AllowSMIMEEncryptionAlgorithmNegotiation"

    move-object/from16 v0, v42

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v39

    .end local v39           #intValue:Ljava/lang/Integer;
    check-cast v39, Ljava/lang/Integer;

    .restart local v39       #intValue:Ljava/lang/Integer;
    if-nez v39, :cond_2e

    .line 412
    :goto_1d
    const-string v2, "AllowSMIMESoftCerts"

    move-object/from16 v0, v42

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    .end local v38           #boolValue:Ljava/lang/Boolean;
    check-cast v38, Ljava/lang/Boolean;

    .restart local v38       #boolValue:Ljava/lang/Boolean;
    if-nez v38, :cond_2f

    .line 413
    :goto_1e
    const-string v2, "AllowDesktopSync"

    move-object/from16 v0, v42

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    .end local v38           #boolValue:Ljava/lang/Boolean;
    check-cast v38, Ljava/lang/Boolean;

    .restart local v38       #boolValue:Ljava/lang/Boolean;
    if-nez v38, :cond_30

    .line 414
    :goto_1f
    const-string v2, "AllowIrDA"

    move-object/from16 v0, v42

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    .end local v38           #boolValue:Ljava/lang/Boolean;
    check-cast v38, Ljava/lang/Boolean;

    .restart local v38       #boolValue:Ljava/lang/Boolean;
    if-nez v38, :cond_31

    .line 415
    :goto_20
    const-string v2, "RequireDeviceEncryption"

    move-object/from16 v0, v42

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    .end local v38           #boolValue:Ljava/lang/Boolean;
    check-cast v38, Ljava/lang/Boolean;

    .restart local v38       #boolValue:Ljava/lang/Boolean;
    if-nez v38, :cond_32

    .line 416
    :goto_21
    const-string v2, "RequireStorageCardEncryption"

    move-object/from16 v0, v42

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    .end local v38           #boolValue:Ljava/lang/Boolean;
    check-cast v38, Ljava/lang/Boolean;

    .restart local v38       #boolValue:Ljava/lang/Boolean;
    if-nez v38, :cond_33

    .line 444
    .end local v38           #boolValue:Ljava/lang/Boolean;
    .end local v39           #intValue:Ljava/lang/Integer;
    :cond_0
    :goto_22
    if-eqz v41, :cond_34

    .line 446
    const/high16 v2, -0x8000

    if-ne v3, v2, :cond_1

    const/4 v3, 0x0

    .line 447
    :cond_1
    const/high16 v2, -0x8000

    if-ne v4, v2, :cond_2

    const/4 v4, 0x0

    .line 448
    :cond_2
    const v2, 0x7fffffff

    if-ne v5, v2, :cond_3

    const/4 v5, 0x0

    .line 449
    :cond_3
    const v2, 0x7fffffff

    if-ne v6, v2, :cond_4

    const/4 v6, 0x0

    .line 451
    :cond_4
    const v2, 0x7fffffff

    if-ne v12, v2, :cond_5

    const/4 v12, 0x0

    .line 452
    :cond_5
    const v2, 0x7fffffff

    if-eq v9, v2, :cond_6

    const/high16 v2, -0x8000

    if-ne v9, v2, :cond_7

    :cond_6
    const/4 v9, 0x0

    .line 453
    :cond_7
    const v2, 0x7fffffff

    if-eq v10, v2, :cond_8

    const/high16 v2, -0x8000

    if-ne v10, v2, :cond_9

    :cond_8
    const/4 v10, 0x0

    .line 455
    :cond_9
    const v2, 0x7fffffff

    move/from16 v0, v26

    move v1, v2

    if-eq v0, v1, :cond_a

    if-gez v26, :cond_b

    :cond_a
    const/16 v26, 0x0

    .line 456
    :cond_b
    const v2, 0x7fffffff

    move/from16 v0, v27

    move v1, v2

    if-eq v0, v1, :cond_c

    if-gez v27, :cond_d

    :cond_c
    const/16 v27, 0x0

    .line 458
    :cond_d
    const v2, 0x7fffffff

    move/from16 v0, v30

    move v1, v2

    if-ne v0, v1, :cond_e

    const/16 v30, -0x1

    .line 459
    :cond_e
    const v2, 0x7fffffff

    move/from16 v0, v31

    move v1, v2

    if-ne v0, v1, :cond_f

    const/16 v31, -0x1

    .line 460
    :cond_f
    const v2, 0x7fffffff

    move/from16 v0, v32

    move v1, v2

    if-ne v0, v1, :cond_10

    const/16 v32, -0x1

    .line 463
    :cond_10
    new-instance v2, Lcom/android/email/SecurityPolicy$PolicySet;

    invoke-direct/range {v2 .. v37}, Lcom/android/email/SecurityPolicy$PolicySet;-><init>(IIIIZZIIZIZZZZZZZZZIIIIIIZZIIIZZZZZ)V

    .line 475
    :goto_23
    return-object v2

    .line 379
    .restart local v38       #boolValue:Ljava/lang/Boolean;
    .restart local v39       #intValue:Ljava/lang/Integer;
    :cond_11
    invoke-virtual/range {v39 .. v39}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move v4, v2

    goto/16 :goto_0

    .line 380
    :cond_12
    invoke-virtual/range {v39 .. v39}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move v3, v2

    goto/16 :goto_1

    .line 381
    :cond_13
    invoke-virtual/range {v39 .. v39}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move v5, v2

    goto/16 :goto_2

    .line 382
    :cond_14
    invoke-virtual/range {v39 .. v39}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move v6, v2

    goto/16 :goto_3

    .line 383
    :cond_15
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move v7, v2

    goto/16 :goto_4

    .line 384
    :cond_16
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move v8, v2

    goto/16 :goto_5

    .line 385
    :cond_17
    invoke-virtual/range {v39 .. v39}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move v9, v2

    goto/16 :goto_6

    .line 386
    :cond_18
    invoke-virtual/range {v39 .. v39}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move v10, v2

    goto/16 :goto_7

    .line 387
    :cond_19
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move v11, v2

    goto/16 :goto_8

    .line 388
    :cond_1a
    invoke-virtual/range {v39 .. v39}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move v12, v2

    goto/16 :goto_9

    .line 390
    :cond_1b
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move v13, v2

    goto/16 :goto_a

    .line 391
    :cond_1c
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move v14, v2

    goto/16 :goto_b

    .line 392
    :cond_1d
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move v15, v2

    goto/16 :goto_c

    .line 393
    :cond_1e
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move/from16 v16, v2

    goto/16 :goto_d

    .line 394
    :cond_1f
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move/from16 v17, v2

    goto/16 :goto_e

    .line 395
    :cond_20
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move/from16 v18, v2

    goto/16 :goto_f

    .line 396
    :cond_21
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move/from16 v19, v2

    goto/16 :goto_10

    .line 397
    :cond_22
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move/from16 v20, v2

    goto/16 :goto_11

    .line 398
    :cond_23
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move/from16 v21, v2

    goto/16 :goto_12

    .line 399
    :cond_24
    invoke-virtual/range {v39 .. v39}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move/from16 v22, v2

    goto/16 :goto_13

    .line 400
    :cond_25
    invoke-virtual/range {v39 .. v39}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move/from16 v23, v2

    goto/16 :goto_14

    .line 401
    :cond_26
    invoke-virtual/range {v39 .. v39}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move/from16 v24, v2

    goto/16 :goto_15

    .line 402
    :cond_27
    invoke-virtual/range {v39 .. v39}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move/from16 v25, v2

    goto/16 :goto_16

    .line 403
    :cond_28
    invoke-virtual/range {v39 .. v39}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move/from16 v26, v2

    goto/16 :goto_17

    .line 404
    :cond_29
    invoke-virtual/range {v39 .. v39}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move/from16 v27, v2

    goto/16 :goto_18

    .line 405
    :cond_2a
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move/from16 v28, v2

    goto/16 :goto_19

    .line 406
    :cond_2b
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move/from16 v29, v2

    goto/16 :goto_1a

    .line 408
    :cond_2c
    invoke-virtual/range {v39 .. v39}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move/from16 v30, v2

    goto/16 :goto_1b

    .line 409
    :cond_2d
    invoke-virtual/range {v39 .. v39}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move/from16 v31, v2

    goto/16 :goto_1c

    .line 410
    :cond_2e
    invoke-virtual/range {v39 .. v39}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move/from16 v32, v2

    goto/16 :goto_1d

    .line 412
    :cond_2f
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move/from16 v33, v2

    goto/16 :goto_1e

    .line 413
    :cond_30
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move/from16 v34, v2

    goto/16 :goto_1f

    .line 414
    :cond_31
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move/from16 v35, v2

    goto/16 :goto_20

    .line 415
    :cond_32
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move/from16 v36, v2

    goto/16 :goto_21

    .line 416
    :cond_33
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move/from16 v37, v2

    goto/16 :goto_22

    .line 475
    .end local v38           #boolValue:Ljava/lang/Boolean;
    .end local v39           #intValue:Ljava/lang/Integer;
    :cond_34
    sget-object v2, Lcom/android/email/SecurityPolicy;->NO_POLICY_SET:Lcom/android/email/SecurityPolicy$PolicySet;

    goto/16 :goto_23
.end method

.method public getAdminComponent()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 2159
    iget-object v0, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public declared-synchronized getAggregatePolicy()Lcom/android/email/SecurityPolicy$PolicySet;
    .locals 1

    .prologue
    .line 616
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/email/SecurityPolicy;->mAggregatePolicy:Lcom/android/email/SecurityPolicy$PolicySet;

    if-nez v0, :cond_0

    .line 617
    invoke-virtual {p0}, Lcom/android/email/SecurityPolicy;->computeAggregatePolicy()Lcom/android/email/SecurityPolicy$PolicySet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/SecurityPolicy;->mAggregatePolicy:Lcom/android/email/SecurityPolicy$PolicySet;

    .line 639
    :cond_0
    iget-object v0, p0, Lcom/android/email/SecurityPolicy;->mAggregatePolicy:Lcom/android/email/SecurityPolicy$PolicySet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 616
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getAllowedMaxAttachmentSize()I
    .locals 3

    .prologue
    .line 1160
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "11111 SecurityPolicy.java >>>>> getAllowedMaxAttachmentSize()  >>>>> 990"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1161
    invoke-direct {p0}, Lcom/android/email/SecurityPolicy;->getDPM()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    .line 1163
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

    const-string v11, ", value:"

    const-string v10, ", return false"

    const-string v9, " is stronger than device value:"

    const-string v8, "Email"

    .line 732
    if-nez p1, :cond_0

    .line 733
    invoke-virtual {p0}, Lcom/android/email/SecurityPolicy;->getAggregatePolicy()Lcom/android/email/SecurityPolicy$PolicySet;

    move-result-object p1

    .line 736
    :cond_0
    sget-object v3, Lcom/android/email/SecurityPolicy;->NO_POLICY_SET:Lcom/android/email/SecurityPolicy$PolicySet;

    invoke-virtual {p1, v3}, Lcom/android/email/SecurityPolicy$PolicySet;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 737
    const/4 v3, 0x1

    .line 1127
    :goto_0
    return v3

    .line 739
    :cond_1
    invoke-direct {p0}, Lcom/android/email/SecurityPolicy;->getDPM()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    .line 740
    .local v0, dpm:Landroid/app/admin/DevicePolicyManager;
    iget-object v3, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 742
    iget v3, p1, Lcom/android/email/SecurityPolicy$PolicySet;->mMinPasswordLength:I

    if-lez v3, :cond_2

    .line 743
    iget-object v3, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v3

    iget v4, p1, Lcom/android/email/SecurityPolicy$PolicySet;->mMinPasswordLength:I

    if-ge v3, v4, :cond_2

    move v3, v7

    .line 744
    goto :goto_0

    .line 747
    :cond_2
    iget v3, p1, Lcom/android/email/SecurityPolicy$PolicySet;->mPasswordMode:I

    if-lez v3, :cond_4

    .line 748
    iget-object v3, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v3

    invoke-virtual {p1}, Lcom/android/email/SecurityPolicy$PolicySet;->getDPManagerPasswordQuality()I

    move-result v4

    if-ge v3, v4, :cond_3

    move v3, v7

    .line 749
    goto :goto_0

    .line 751
    :cond_3
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->isActivePasswordSufficient()Z

    move-result v3

    if-nez v3, :cond_4

    move v3, v7

    .line 752
    goto :goto_0

    .line 755
    :cond_4
    iget v3, p1, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxScreenLockTime:I

    if-lez v3, :cond_5

    .line 757
    iget-object v3, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v3

    iget v5, p1, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxScreenLockTime:I

    mul-int/lit16 v5, v5, 0x3e8

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-lez v3, :cond_5

    move v3, v7

    .line 758
    goto :goto_0

    .line 765
    :cond_5
    new-instance v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;

    invoke-direct {v1}, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;-><init>()V

    .line 766
    .local v1, ps:Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;
    new-instance v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;

    invoke-direct {v2}, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;-><init>()V

    .line 767
    .local v2, psAnother:Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;
    const-string v3, "MaxDevicePasswordFailedAttempts"

    iput-object v3, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mName:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mName:Ljava/lang/String;

    .line 768
    const-string v3, "Integer"

    iput-object v3, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mType:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mType:Ljava/lang/String;

    .line 769
    iget v3, p1, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxPasswordFails:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    .line 770
    iget-object v3, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    .line 771
    invoke-virtual {v1, v2}, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->compareTo(Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;)I

    move-result v3

    if-lez v3, :cond_6

    .line 773
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

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is stronger than device value:"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", return false"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v7

    .line 774
    goto/16 :goto_0

    .line 777
    :cond_6
    const-string v3, "DevicePasswordExpiration"

    iput-object v3, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mName:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mName:Ljava/lang/String;

    .line 778
    const-string v3, "Integer"

    iput-object v3, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mType:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mType:Ljava/lang/String;

    .line 779
    iget v3, p1, Lcom/android/email/SecurityPolicy$PolicySet;->mPasswordExpires:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    .line 780
    iget-object v3, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->getPasswordExpires(Landroid/content/ComponentName;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    .line 781
    invoke-virtual {v1, v2}, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->compareTo(Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;)I

    move-result v3

    if-lez v3, :cond_7

    .line 783
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

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is stronger than device value:"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", return false"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v7

    .line 784
    goto/16 :goto_0

    .line 787
    :cond_7
    const-string v3, "DevicePasswordHistory"

    iput-object v3, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mName:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mName:Ljava/lang/String;

    .line 788
    const-string v3, "Integer"

    iput-object v3, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mType:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mType:Ljava/lang/String;

    .line 789
    iget v3, p1, Lcom/android/email/SecurityPolicy$PolicySet;->mPasswordHistory:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    .line 790
    iget-object v3, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->getPasswordHistory(Landroid/content/ComponentName;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    .line 791
    invoke-virtual {v1, v2}, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->compareTo(Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;)I

    move-result v3

    if-lez v3, :cond_8

    .line 793
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

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is stronger than device value:"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", return false"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v7

    .line 794
    goto/16 :goto_0

    .line 797
    :cond_8
    const-string v3, "AttachmentsEnabled"

    iput-object v3, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mName:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mName:Ljava/lang/String;

    .line 798
    const-string v3, "Boolean"

    iput-object v3, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mType:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mType:Ljava/lang/String;

    .line 799
    iget-boolean v3, p1, Lcom/android/email/SecurityPolicy$PolicySet;->mAttachmentsEnabled:Z

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    .line 800
    iget-object v3, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->getAttachmentsEnabled(Landroid/content/ComponentName;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    .line 801
    invoke-virtual {v1, v2}, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->compareTo(Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;)I

    move-result v3

    if-lez v3, :cond_9

    .line 803
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

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is stronger than device value:"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", return false"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v7

    .line 804
    goto/16 :goto_0

    .line 807
    :cond_9
    const-string v3, "MaxAttachmentSize"

    iput-object v3, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mName:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mName:Ljava/lang/String;

    .line 808
    const-string v3, "Integer"

    iput-object v3, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mType:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mType:Ljava/lang/String;

    .line 809
    iget v3, p1, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxAttachmentSize:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    .line 810
    iget-object v3, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->getMaxAttachmentSize(Landroid/content/ComponentName;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    .line 811
    invoke-virtual {v1, v2}, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->compareTo(Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;)I

    move-result v3

    if-lez v3, :cond_a

    .line 813
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

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is stronger than device value:"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", return false"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v7

    .line 814
    goto/16 :goto_0

    .line 817
    :cond_a
    const-string v3, "PasswordRecoveryEnabled"

    iput-object v3, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mName:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mName:Ljava/lang/String;

    .line 818
    const-string v3, "Boolean"

    iput-object v3, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mType:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mType:Ljava/lang/String;

    .line 819
    iget-boolean v3, p1, Lcom/android/email/SecurityPolicy$PolicySet;->mPasswordRecoverable:Z

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    .line 820
    iget-object v3, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->getPasswordRecoverable(Landroid/content/ComponentName;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    .line 821
    invoke-virtual {v1, v2}, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->compareTo(Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;)I

    move-result v3

    if-lez v3, :cond_b

    .line 823
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

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is stronger than device value:"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", return false"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v7

    .line 824
    goto/16 :goto_0

    .line 829
    :cond_b
    const-string v3, "AllowStorageCard"

    iput-object v3, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mName:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mName:Ljava/lang/String;

    .line 830
    const-string v3, "Boolean"

    iput-object v3, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mType:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mType:Ljava/lang/String;

    .line 831
    iget-boolean v3, p1, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowStorageCard:Z

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    .line 832
    iget-object v3, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->getAllowStorageCard(Landroid/content/ComponentName;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    .line 833
    invoke-virtual {v1, v2}, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->compareTo(Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;)I

    move-result v3

    if-lez v3, :cond_c

    .line 835
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

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is stronger than device value:"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", return false"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v7

    .line 836
    goto/16 :goto_0

    .line 839
    :cond_c
    const-string v3, "AllowCamera"

    iput-object v3, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mName:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mName:Ljava/lang/String;

    .line 840
    const-string v3, "Boolean"

    iput-object v3, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mType:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mType:Ljava/lang/String;

    .line 841
    iget-boolean v3, p1, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowCamera:Z

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    .line 842
    iget-object v3, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->getAllowCamera(Landroid/content/ComponentName;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    .line 843
    invoke-virtual {v1, v2}, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->compareTo(Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;)I

    move-result v3

    if-lez v3, :cond_d

    .line 845
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

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is stronger than device value:"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", return false"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v7

    .line 846
    goto/16 :goto_0

    .line 849
    :cond_d
    const-string v3, "AllowWifi"

    iput-object v3, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mName:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mName:Ljava/lang/String;

    .line 850
    const-string v3, "Boolean"

    iput-object v3, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mType:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mType:Ljava/lang/String;

    .line 851
    iget-boolean v3, p1, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowWifi:Z

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    .line 852
    iget-object v3, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->getAllowWifi(Landroid/content/ComponentName;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    .line 853
    invoke-virtual {v1, v2}, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->compareTo(Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;)I

    move-result v3

    if-lez v3, :cond_e

    .line 855
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

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is stronger than device value:"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", return false"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v7

    .line 856
    goto/16 :goto_0

    .line 860
    :cond_e
    const-string v3, "AllowTextMessaging"

    iput-object v3, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mName:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mName:Ljava/lang/String;

    .line 861
    const-string v3, "Boolean"

    iput-object v3, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mType:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mType:Ljava/lang/String;

    .line 862
    iget-boolean v3, p1, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowTextMessaging:Z

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    .line 863
    iget-object v3, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->getAllowTextMessaging(Landroid/content/ComponentName;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    .line 864
    invoke-virtual {v1, v2}, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->compareTo(Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;)I

    move-result v3

    if-lez v3, :cond_f

    .line 866
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

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is stronger than device value:"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", return false"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v7

    .line 867
    goto/16 :goto_0

    .line 870
    :cond_f
    const-string v3, "AllowPOPIMAPEmail"

    iput-object v3, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mName:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mName:Ljava/lang/String;

    .line 871
    const-string v3, "Boolean"

    iput-object v3, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mType:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mType:Ljava/lang/String;

    .line 872
    iget-boolean v3, p1, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowPOPIMAPEmail:Z

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    .line 873
    iget-object v3, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->getAllowPOPIMAPEmail(Landroid/content/ComponentName;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    .line 874
    invoke-virtual {v1, v2}, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->compareTo(Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;)I

    move-result v3

    if-lez v3, :cond_10

    .line 876
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

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is stronger than device value:"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", return false"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v7

    .line 877
    goto/16 :goto_0

    .line 880
    :cond_10
    const-string v3, "AllowHTMLEmail"

    iput-object v3, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mName:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mName:Ljava/lang/String;

    .line 881
    const-string v3, "Boolean"

    iput-object v3, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mType:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mType:Ljava/lang/String;

    .line 882
    iget-boolean v3, p1, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowHTMLEmail:Z

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    .line 883
    iget-object v3, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->getAllowHTMLEmail(Landroid/content/ComponentName;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    .line 884
    invoke-virtual {v1, v2}, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->compareTo(Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;)I

    move-result v3

    if-lez v3, :cond_11

    .line 886
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

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is stronger than device value:"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", return false"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v7

    .line 887
    goto/16 :goto_0

    .line 890
    :cond_11
    const-string v3, "AllowBrowser"

    iput-object v3, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mName:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mName:Ljava/lang/String;

    .line 891
    const-string v3, "Boolean"

    iput-object v3, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mType:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mType:Ljava/lang/String;

    .line 892
    iget-boolean v3, p1, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowBrowser:Z

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    .line 893
    iget-object v3, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->getAllowBrowser(Landroid/content/ComponentName;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    .line 894
    invoke-virtual {v1, v2}, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->compareTo(Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;)I

    move-result v3

    if-lez v3, :cond_12

    .line 896
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

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is stronger than device value:"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", return false"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v7

    .line 897
    goto/16 :goto_0

    .line 900
    :cond_12
    const-string v3, "AllowInternetSharing"

    iput-object v3, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mName:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mName:Ljava/lang/String;

    .line 901
    const-string v3, "Boolean"

    iput-object v3, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mType:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mType:Ljava/lang/String;

    .line 902
    iget-boolean v3, p1, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowInternetSharing:Z

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    .line 903
    iget-object v3, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->getAllowInternetSharing(Landroid/content/ComponentName;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    .line 904
    invoke-virtual {v1, v2}, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->compareTo(Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;)I

    move-result v3

    if-lez v3, :cond_13

    .line 906
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

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is stronger than device value:"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", return false"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v7

    .line 907
    goto/16 :goto_0

    .line 910
    :cond_13
    const-string v3, "RequireManualSyncWhenRoaming"

    iput-object v3, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mName:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mName:Ljava/lang/String;

    .line 911
    const-string v3, "Boolean"

    iput-object v3, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mType:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mType:Ljava/lang/String;

    .line 912
    iget-boolean v3, p1, Lcom/android/email/SecurityPolicy$PolicySet;->mRequireManualSyncWhenRoaming:Z

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    .line 913
    iget-object v3, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->getRequireManualSyncRoaming(Landroid/content/ComponentName;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    .line 914
    invoke-virtual {v1, v2}, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->compareTo(Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;)I

    move-result v3

    if-lez v3, :cond_14

    .line 916
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

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is stronger than device value:"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", return false"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v7

    .line 917
    goto/16 :goto_0

    .line 920
    :cond_14
    const-string v3, "AllowBluetoothMode"

    iput-object v3, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mName:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mName:Ljava/lang/String;

    .line 921
    const-string v3, "Integer"

    iput-object v3, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mType:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mType:Ljava/lang/String;

    .line 922
    iget v3, p1, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowBluetoothMode:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    .line 923
    iget-object v3, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->getAllowBluetoothMode(Landroid/content/ComponentName;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    .line 924
    invoke-virtual {v1, v2}, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->compareTo(Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;)I

    move-result v3

    if-lez v3, :cond_15

    .line 926
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

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is stronger than device value:"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", return false"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v7

    .line 927
    goto/16 :goto_0

    .line 930
    :cond_15
    const-string v3, "MinPasswordComplexCharacters"

    iput-object v3, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mName:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mName:Ljava/lang/String;

    .line 931
    const-string v3, "Integer"

    iput-object v3, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mType:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mType:Ljava/lang/String;

    .line 932
    iget v3, p1, Lcom/android/email/SecurityPolicy$PolicySet;->mMinPasswordComplexChars:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    .line 933
    iget-object v3, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->getMinPasswordComplexChars(Landroid/content/ComponentName;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    .line 934
    invoke-virtual {v1, v2}, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->compareTo(Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;)I

    move-result v3

    if-lez v3, :cond_16

    .line 936
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

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is stronger than device value:"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", return false"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v7

    .line 937
    goto/16 :goto_0

    .line 940
    :cond_16
    const-string v3, "MaxCalendarAgeFilter"

    iput-object v3, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mName:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mName:Ljava/lang/String;

    .line 941
    const-string v3, "Integer"

    iput-object v3, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mType:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mType:Ljava/lang/String;

    .line 942
    iget v3, p1, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxCalendarAgeFilter:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    .line 943
    iget-object v3, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->getMaxCalendarAge(Landroid/content/ComponentName;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    .line 944
    invoke-virtual {v1, v2}, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->compareTo(Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;)I

    move-result v3

    if-lez v3, :cond_17

    .line 946
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

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is stronger than device value:"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", return false"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v7

    .line 947
    goto/16 :goto_0

    .line 950
    :cond_17
    const-string v3, "MaxEmailAgeFilter"

    iput-object v3, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mName:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mName:Ljava/lang/String;

    .line 951
    const-string v3, "Integer"

    iput-object v3, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mType:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mType:Ljava/lang/String;

    .line 952
    iget v3, p1, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxEmailAgeFilter:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    .line 953
    iget-object v3, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->getMaxEmailAge(Landroid/content/ComponentName;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    .line 954
    invoke-virtual {v1, v2}, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->compareTo(Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;)I

    move-result v3

    if-lez v3, :cond_18

    .line 956
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

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is stronger than device value:"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", return false"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v7

    .line 957
    goto/16 :goto_0

    .line 960
    :cond_18
    const-string v3, "MaxEmailBodyTruncationSize"

    iput-object v3, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mName:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mName:Ljava/lang/String;

    .line 961
    const-string v3, "Integer"

    iput-object v3, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mType:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mType:Ljava/lang/String;

    .line 962
    iget v3, p1, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxEmailBodyTruncationSize:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    .line 963
    iget-object v3, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->getMaxEmailBodyTruncSize(Landroid/content/ComponentName;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    .line 964
    invoke-virtual {v1, v2}, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->compareTo(Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;)I

    move-result v3

    if-lez v3, :cond_19

    .line 966
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

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is stronger than device value:"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", return false"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v7

    .line 967
    goto/16 :goto_0

    .line 970
    :cond_19
    const-string v3, "MaxEmailHtmlBodyTruncationSize"

    iput-object v3, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mName:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mName:Ljava/lang/String;

    .line 971
    const-string v3, "Integer"

    iput-object v3, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mType:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mType:Ljava/lang/String;

    .line 972
    iget v3, p1, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxEmailHtmlBodyTruncationSize:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    .line 973
    iget-object v3, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->getMaxHtmlEmailBodyTruncSize(Landroid/content/ComponentName;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    .line 974
    invoke-virtual {v1, v2}, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->compareTo(Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;)I

    move-result v3

    if-lez v3, :cond_1a

    .line 976
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

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is stronger than device value:"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", return false"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v7

    .line 977
    goto/16 :goto_0

    .line 1092
    :cond_1a
    const-string v3, "RequireDeviceEncryption"

    iput-object v3, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mName:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mName:Ljava/lang/String;

    .line 1093
    const-string v3, "Boolean"

    iput-object v3, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mType:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mType:Ljava/lang/String;

    .line 1094
    iget-boolean v3, p1, Lcom/android/email/SecurityPolicy$PolicySet;->mRequireDeviceEncryption:Z

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    .line 1095
    iget-object v3, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->getRequireDeviceEncryption(Landroid/content/ComponentName;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    .line 1096
    invoke-virtual {v1, v2}, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->compareTo(Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;)I

    move-result v3

    if-lez v3, :cond_1b

    .line 1098
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

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is stronger than device value:"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", return false"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v7

    .line 1099
    goto/16 :goto_0

    .line 1101
    :cond_1b
    iget-object v3, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->getRequireDeviceEncryption(Landroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-static {}, Landroid/deviceencryption/DeviceEncryptionManager;->getInternalStorageStatus()Z

    move-result v3

    iget-object v4, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0, v4}, Landroid/app/admin/DevicePolicyManager;->getRequireDeviceEncryption(Landroid/content/ComponentName;)Z

    move-result v4

    if-eq v3, v4, :cond_1c

    .line 1103
    const-string v3, "Email"

    const-string v3, "isActive(): Device Encryption is not applied yet!"

    invoke-static {v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v7

    .line 1104
    goto/16 :goto_0

    .line 1107
    :cond_1c
    const-string v3, "RequireStorageCardEncryption"

    iput-object v3, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mName:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mName:Ljava/lang/String;

    .line 1108
    const-string v3, "Boolean"

    iput-object v3, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mType:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mType:Ljava/lang/String;

    .line 1109
    iget-boolean v3, p1, Lcom/android/email/SecurityPolicy$PolicySet;->mRequireStorageCardEncryption:Z

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    .line 1110
    iget-object v3, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->getRequireStorageCardEncryption(Landroid/content/ComponentName;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    .line 1111
    invoke-virtual {v1, v2}, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->compareTo(Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;)I

    move-result v3

    if-lez v3, :cond_1d

    .line 1113
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

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is stronger than device value:"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", return false"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v7

    .line 1114
    goto/16 :goto_0

    .line 1116
    :cond_1d
    iget-object v3, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->getRequireStorageCardEncryption(Landroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_1e

    invoke-static {}, Landroid/deviceencryption/DeviceEncryptionManager;->getExternalStorageStatus()Z

    move-result v3

    iget-object v4, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0, v4}, Landroid/app/admin/DevicePolicyManager;->getRequireStorageCardEncryption(Landroid/content/ComponentName;)Z

    move-result v4

    if-eq v3, v4, :cond_1e

    .line 1118
    const-string v3, "Email"

    const-string v3, "isActive(); StorageCard encryption is not applied yet!"

    invoke-static {v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v7

    .line 1119
    goto/16 :goto_0

    .line 1124
    :cond_1e
    const/4 v3, 0x1

    goto/16 :goto_0

    .end local v1           #ps:Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;
    .end local v2           #psAnother:Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;
    :cond_1f
    move v3, v7

    .line 1127
    goto/16 :goto_0
.end method

.method public isActiveAdmin()Z
    .locals 2

    .prologue
    .line 2151
    invoke-direct {p0}, Lcom/android/email/SecurityPolicy;->getDPM()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    .line 2152
    .local v0, dpm:Landroid/app/admin/DevicePolicyManager;
    iget-object v1, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v1

    return v1
.end method

.method onAdminEnabled(Z)V
    .locals 8
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 2167
    if-nez p1, :cond_1

    .line 2171
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2172
    const-string v1, "securityFlags"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2173
    const-string v1, "securitySyncKey"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 2174
    iget-object v1, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/email/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2175
    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/email/SecurityPolicy;->updatePolicies(J)V

    .line 2177
    invoke-virtual {p0}, Lcom/android/email/SecurityPolicy;->setActivePoliciesAtSystemProperties()V

    .line 2184
    :try_start_0
    iget-object v0, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/email/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 2185
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 2186
    const-string v1, "SecurityPolicy"

    const-string v2, "Last account removed!! informing DEM to decrypt the device"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2187
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/exchange/security/ode/ODEService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2188
    const-string v2, "startProc"

    const-string v3, "encryptionDisable"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2189
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2192
    :cond_0
    if-eqz v0, :cond_1

    .line 2193
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2198
    :cond_1
    return-void

    .line 2192
    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_0
    if-eqz v1, :cond_2

    .line 2193
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 2192
    :catchall_1
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_0
.end method

.method public policiesRequired(J)V
    .locals 24
    .parameter "accountId"

    .prologue
    .line 1375
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-wide/from16 v1, p1

    invoke-static {v0, v1, v2}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v5

    .line 1378
    .local v5, account:Lcom/android/email/provider/EmailContent$Account;
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move-object v1, v5

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/email/SecurityPolicy;->setAccountHoldFlag(Lcom/android/email/provider/EmailContent$Account;Z)V

    .line 1381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const v20, 0x7f08017e

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

    .line 1383
    .local v16, tickerText:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const v20, 0x7f08019e

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1384
    .local v8, contentTitle:Ljava/lang/String;
    invoke-virtual {v5}, Lcom/android/email/provider/EmailContent$Account;->getDisplayName()Ljava/lang/String;

    move-result-object v7

    .line 1385
    .local v7, contentText:Ljava/lang/String;
    invoke-virtual {v5}, Lcom/android/email/provider/EmailContent$Account;->getRingtone()Ljava/lang/String;

    move-result-object v15

    .line 1386
    .local v15, ringtoneString:Ljava/lang/String;
    if-nez v15, :cond_2

    const/16 v19, 0x0

    move-object/from16 v14, v19

    .line 1387
    .local v14, ringTone:Landroid/net/Uri;
    :goto_0
    move-object v0, v5

    iget v0, v0, Lcom/android/email/provider/EmailContent$Account;->mFlags:I

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x2

    if-eqz v19, :cond_3

    const/16 v19, 0x1

    move/from16 v17, v19

    .line 1388
    .local v17, vibrate:Z
    :goto_1
    move-object v0, v5

    iget v0, v0, Lcom/android/email/provider/EmailContent$Account;->mFlags:I

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x40

    if-eqz v19, :cond_4

    const/16 v19, 0x1

    move/from16 v18, v19

    .line 1390
    .local v18, vibrateWhenSilent:Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-wide/from16 v1, p1

    invoke-static {v0, v1, v2}, Lcom/android/email/activity/setup/AccountSecurity;->actionUpdateSecurityIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v9

    .line 1391
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

    .line 1394
    .local v13, pending:Landroid/app/PendingIntent;
    new-instance v10, Landroid/app/Notification;

    const v19, 0x7f0200fd

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move-object v0, v10

    move/from16 v1, v19

    move-object/from16 v2, v16

    move-wide/from16 v3, v20

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 1396
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

    .line 1399
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string v20, "audio"

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/AudioManager;

    .line 1401
    .local v6, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v6}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_5

    const/16 v19, 0x1

    move/from16 v12, v19

    .line 1403
    .local v12, nowSilent:Z
    :goto_3
    iput-object v14, v10, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 1405
    if-nez v17, :cond_0

    if-eqz v18, :cond_1

    if-eqz v12, :cond_1

    .line 1406
    :cond_0
    move-object v0, v10

    iget v0, v0, Landroid/app/Notification;->defaults:I

    move/from16 v19, v0

    or-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    move-object v1, v10

    iput v0, v1, Landroid/app/Notification;->defaults:I

    .line 1408
    :cond_1
    move-object v0, v10

    iget v0, v0, Landroid/app/Notification;->flags:I

    move/from16 v19, v0

    or-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    move-object v1, v10

    iput v0, v1, Landroid/app/Notification;->flags:I

    .line 1410
    move-object v0, v10

    iget v0, v0, Landroid/app/Notification;->flags:I

    move/from16 v19, v0

    or-int/lit8 v19, v19, 0x8

    move/from16 v0, v19

    move-object v1, v10

    iput v0, v1, Landroid/app/Notification;->flags:I

    .line 1411
    move-object v0, v10

    iget v0, v0, Landroid/app/Notification;->defaults:I

    move/from16 v19, v0

    or-int/lit8 v19, v19, 0x4

    move/from16 v0, v19

    move-object v1, v10

    iput v0, v1, Landroid/app/Notification;->defaults:I

    .line 1413
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string v20, "notification"

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/NotificationManager;

    .line 1415
    .local v11, notificationManager:Landroid/app/NotificationManager;
    sget v19, Lcom/android/email/service/MailService;->NOTIFICATION_ID_SECURITY_NEEDED:I

    move-object v0, v11

    move/from16 v1, v19

    move-object v2, v10

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1416
    return-void

    .line 1386
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

    .line 1387
    .restart local v14       #ringTone:Landroid/net/Uri;
    :cond_3
    const/16 v19, 0x0

    move/from16 v17, v19

    goto/16 :goto_1

    .line 1388
    .restart local v17       #vibrate:Z
    :cond_4
    const/16 v19, 0x0

    move/from16 v18, v19

    goto/16 :goto_2

    .line 1401
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
    .line 694
    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/email/SecurityPolicy;->updatePolicies(J)V

    .line 695
    invoke-virtual {p0}, Lcom/android/email/SecurityPolicy;->setActivePolicies()V

    .line 696
    return-void
.end method

.method public reducePolicies(Z)V
    .locals 3
    .parameter

    .prologue
    .line 706
    invoke-virtual {p0}, Lcom/android/email/SecurityPolicy;->reducePolicies()V

    .line 707
    if-eqz p1, :cond_0

    .line 708
    invoke-direct {p0}, Lcom/android/email/SecurityPolicy;->getDPM()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 709
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/exchange/security/ode/ODEService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 710
    const-string v1, "startProc"

    const-string v2, "onPolicyChanged"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 711
    iget-object v1, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 714
    :cond_0
    return-void
.end method

.method public remoteWipe()V
    .locals 3

    .prologue
    .line 1433
    invoke-direct {p0}, Lcom/android/email/SecurityPolicy;->getDPM()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    .line 1434
    .local v0, dpm:Landroid/app/admin/DevicePolicyManager;
    iget-object v1, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1435
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->wipeData(I)V

    .line 1439
    :goto_0
    return-void

    .line 1437
    :cond_0
    const-string v1, "Email"

    const-string v2, "Could not remote wipe because not device admin."

    invoke-static {v1, v2}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method sendRecoveryPassword()V
    .locals 2

    .prologue
    .line 1443
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.security.intent.action.PASSWORD_RECOVERY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1444
    .local v0, i:Landroid/content/Intent;
    invoke-static {}, Lcom/android/email/SecurityPolicy;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1445
    return-void
.end method

.method public setAccountHoldFlag(Lcom/android/email/provider/EmailContent$Account;Z)V
    .locals 3
    .parameter "account"
    .parameter "newState"

    .prologue
    .line 1325
    if-eqz p2, :cond_0

    .line 1326
    iget v1, p1, Lcom/android/email/provider/EmailContent$Account;->mFlags:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p1, Lcom/android/email/provider/EmailContent$Account;->mFlags:I

    .line 1330
    :goto_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1331
    .local v0, cv:Landroid/content/ContentValues;
    const-string v1, "flags"

    iget v2, p1, Lcom/android/email/provider/EmailContent$Account;->mFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1332
    iget-object v1, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1, v0}, Lcom/android/email/provider/EmailContent$Account;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 1333
    return-void

    .line 1328
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

    .line 1231
    invoke-direct {p0}, Lcom/android/email/SecurityPolicy;->getDPM()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    .line 1233
    .local v0, dpm:Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {p0}, Lcom/android/email/SecurityPolicy;->getAggregatePolicy()Lcom/android/email/SecurityPolicy$PolicySet;

    move-result-object v1

    .line 1235
    .local v1, policies:Lcom/android/email/SecurityPolicy$PolicySet;
    sget-object v2, Lcom/android/email/SecurityPolicy;->NO_POLICY_SET:Lcom/android/email/SecurityPolicy$PolicySet;

    invoke-virtual {v1, v2}, Lcom/android/email/SecurityPolicy$PolicySet;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/exchange/SyncManager;->exchangeAccountsExist()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1236
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0, v2, v5}, Landroid/app/admin/DevicePolicyManager;->setAllowCamera(Landroid/content/ComponentName;Z)V

    .line 1237
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Landroid/app/admin/DevicePolicyManager;->removeActiveAdmin(Landroid/content/ComponentName;)V

    .line 1310
    :goto_0
    return-void

    .line 1238
    :cond_0
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1241
    :try_start_0
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/admin/DevicePolicyManager;->notifyChanges(Landroid/content/ComponentName;Z)V

    .line 1245
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Lcom/android/email/SecurityPolicy$PolicySet;->getDPManagerPasswordQuality()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/app/admin/DevicePolicyManager;->setPasswordQuality(Landroid/content/ComponentName;I)V

    .line 1246
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget v3, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mMinPasswordLength:I

    invoke-virtual {v0, v2, v3}, Landroid/app/admin/DevicePolicyManager;->setPasswordMinimumLength(Landroid/content/ComponentName;I)V

    .line 1248
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget v3, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxScreenLockTime:I

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v3, v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/app/admin/DevicePolicyManager;->setMaximumTimeToLock(Landroid/content/ComponentName;J)V

    .line 1250
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget v3, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxPasswordFails:I

    invoke-virtual {v0, v2, v3}, Landroid/app/admin/DevicePolicyManager;->setMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)V

    .line 1252
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget-boolean v3, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mPasswordRecoverable:Z

    invoke-virtual {v0, v2, v3}, Landroid/app/admin/DevicePolicyManager;->setPasswordRecoverable(Landroid/content/ComponentName;Z)V

    .line 1253
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget v3, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mPasswordExpires:I

    invoke-virtual {v0, v2, v3}, Landroid/app/admin/DevicePolicyManager;->setPasswordExpires(Landroid/content/ComponentName;I)V

    .line 1254
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget v3, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mPasswordHistory:I

    invoke-virtual {v0, v2, v3}, Landroid/app/admin/DevicePolicyManager;->setPasswordHistory(Landroid/content/ComponentName;I)V

    .line 1255
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget-boolean v3, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mAttachmentsEnabled:Z

    invoke-virtual {v0, v2, v3}, Landroid/app/admin/DevicePolicyManager;->setAttachmentsEnabled(Landroid/content/ComponentName;Z)V

    .line 1256
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget v3, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxAttachmentSize:I

    invoke-virtual {v0, v2, v3}, Landroid/app/admin/DevicePolicyManager;->setMaxAttachmentSize(Landroid/content/ComponentName;I)V

    .line 1260
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget-boolean v3, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowStorageCard:Z

    invoke-virtual {v0, v2, v3}, Landroid/app/admin/DevicePolicyManager;->setAllowStorageCard(Landroid/content/ComponentName;Z)V

    .line 1261
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget-boolean v3, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowCamera:Z

    invoke-virtual {v0, v2, v3}, Landroid/app/admin/DevicePolicyManager;->setAllowCamera(Landroid/content/ComponentName;Z)V

    .line 1262
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget-boolean v3, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowWifi:Z

    invoke-virtual {v0, v2, v3}, Landroid/app/admin/DevicePolicyManager;->setAllowWifi(Landroid/content/ComponentName;Z)V

    .line 1263
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget-boolean v3, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowTextMessaging:Z

    invoke-virtual {v0, v2, v3}, Landroid/app/admin/DevicePolicyManager;->setAllowTextMessaging(Landroid/content/ComponentName;Z)V

    .line 1264
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget-boolean v3, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowPOPIMAPEmail:Z

    invoke-virtual {v0, v2, v3}, Landroid/app/admin/DevicePolicyManager;->setAllowPOPIMAPEmail(Landroid/content/ComponentName;Z)V

    .line 1265
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget-boolean v3, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowHTMLEmail:Z

    invoke-virtual {v0, v2, v3}, Landroid/app/admin/DevicePolicyManager;->setAllowHTMLEmail(Landroid/content/ComponentName;Z)V

    .line 1266
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget-boolean v3, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowBrowser:Z

    invoke-virtual {v0, v2, v3}, Landroid/app/admin/DevicePolicyManager;->setAllowBrowser(Landroid/content/ComponentName;Z)V

    .line 1267
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget-boolean v3, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowInternetSharing:Z

    invoke-virtual {v0, v2, v3}, Landroid/app/admin/DevicePolicyManager;->setAllowInternetSharing(Landroid/content/ComponentName;Z)V

    .line 1268
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget-boolean v3, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mRequireManualSyncWhenRoaming:Z

    invoke-virtual {v0, v2, v3}, Landroid/app/admin/DevicePolicyManager;->setRequireManualSyncRoaming(Landroid/content/ComponentName;Z)V

    .line 1270
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget v3, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowBluetoothMode:I

    invoke-virtual {v0, v2, v3}, Landroid/app/admin/DevicePolicyManager;->setAllowBluetoothMode(Landroid/content/ComponentName;I)V

    .line 1271
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget v3, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mMinPasswordComplexChars:I

    invoke-virtual {v0, v2, v3}, Landroid/app/admin/DevicePolicyManager;->setMinPasswordComplexChars(Landroid/content/ComponentName;I)V

    .line 1273
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget v3, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxCalendarAgeFilter:I

    invoke-virtual {v0, v2, v3}, Landroid/app/admin/DevicePolicyManager;->setMaxCalendarAge(Landroid/content/ComponentName;I)V

    .line 1275
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget v3, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxEmailAgeFilter:I

    invoke-virtual {v0, v2, v3}, Landroid/app/admin/DevicePolicyManager;->setMaxEmailAge(Landroid/content/ComponentName;I)V

    .line 1277
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget v3, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxEmailBodyTruncationSize:I

    invoke-virtual {v0, v2, v3}, Landroid/app/admin/DevicePolicyManager;->setMaxEmailBodyTruncSize(Landroid/content/ComponentName;I)V

    .line 1279
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget v3, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxEmailHtmlBodyTruncationSize:I

    invoke-virtual {v0, v2, v3}, Landroid/app/admin/DevicePolicyManager;->setMaxHtmlEmailBodyTruncSize(Landroid/content/ComponentName;I)V

    .line 1282
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget-boolean v3, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mRequireDeviceEncryption:Z

    invoke-virtual {v0, v2, v3}, Landroid/app/admin/DevicePolicyManager;->setRequireDeviceEncryption(Landroid/content/ComponentName;Z)V

    .line 1283
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget-boolean v3, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mRequireStorageCardEncryption:Z

    invoke-virtual {v0, v2, v3}, Landroid/app/admin/DevicePolicyManager;->setRequireStorageCardEncryption(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1301
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0, v2, v5}, Landroid/app/admin/DevicePolicyManager;->notifyChanges(Landroid/content/ComponentName;Z)V

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0, v3, v5}, Landroid/app/admin/DevicePolicyManager;->notifyChanges(Landroid/content/ComponentName;Z)V

    throw v2

    .line 1307
    :cond_1
    const-string v2, "Email"

    const-string v3, "setActivePolicies() : noActiveAdmin case :  dpm.setAllowCamera : true"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1308
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0, v2, v5}, Landroid/app/admin/DevicePolicyManager;->setAllowCamera(Landroid/content/ComponentName;Z)V

    goto/16 :goto_0
.end method

.method public setActivePoliciesAtSystemProperties()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const-string v4, "Email"

    .line 1194
    const-string v2, "Email"

    const-string v2, "setActivePoliciesAtSystemProperties()"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1196
    invoke-direct {p0}, Lcom/android/email/SecurityPolicy;->getDPM()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    .line 1197
    .local v0, dpm:Landroid/app/admin/DevicePolicyManager;
    if-nez v0, :cond_0

    .line 1222
    :goto_0
    return-void

    .line 1202
    :cond_0
    invoke-virtual {p0}, Lcom/android/email/SecurityPolicy;->getAggregatePolicy()Lcom/android/email/SecurityPolicy$PolicySet;

    move-result-object v1

    .line 1204
    .local v1, policies:Lcom/android/email/SecurityPolicy$PolicySet;
    if-eqz v1, :cond_1

    sget-object v2, Lcom/android/email/SecurityPolicy;->NO_POLICY_SET:Lcom/android/email/SecurityPolicy$PolicySet;

    invoke-virtual {v1, v2}, Lcom/android/email/SecurityPolicy$PolicySet;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/exchange/SyncManager;->exchangeAccountsExist()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1206
    :cond_1
    const-string v2, "Email"

    const-string v2, "setActivePoliciesAtSystemProperties() : no policy exists case : dpm.setAllowCamera : true"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1207
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0, v2, v3}, Landroid/app/admin/DevicePolicyManager;->setAllowCamera(Landroid/content/ComponentName;Z)V

    goto :goto_0

    .line 1208
    :cond_2
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1210
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

    .line 1212
    :try_start_0
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget-boolean v3, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowCamera:Z

    invoke-virtual {v0, v2, v3}, Landroid/app/admin/DevicePolicyManager;->setAllowCamera(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1214
    :catchall_0
    move-exception v2

    throw v2

    .line 1219
    :cond_3
    const-string v2, "Email"

    const-string v2, "setActivePoliciesAtSystemProperties() : noActiveAdmin case :  dpm.setAllowCamera : true"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1220
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0, v2, v3}, Landroid/app/admin/DevicePolicyManager;->setAllowCamera(Landroid/content/ComponentName;Z)V

    goto :goto_0
.end method

.method setContext(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 270
    iput-object p1, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    .line 271
    return-void
.end method

.method public setRecoverPasswordState(Z)V
    .locals 3
    .parameter "result"

    .prologue
    .line 1314
    invoke-direct {p0}, Lcom/android/email/SecurityPolicy;->getDPM()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    .line 1315
    .local v0, mDPM:Landroid/app/admin/DevicePolicyManager;
    iget-object v1, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->setRecoveryPasswordState(Landroid/content/ComponentName;Z)V

    .line 1316
    return-void
.end method

.method public declared-synchronized updatePolicies(J)V
    .locals 1
    .parameter "accountId"

    .prologue
    .line 684
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/android/email/SecurityPolicy;->mAggregatePolicy:Lcom/android/email/SecurityPolicy$PolicySet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 685
    monitor-exit p0

    return-void

    .line 684
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
