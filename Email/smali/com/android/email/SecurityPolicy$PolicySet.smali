.class public Lcom/android/email/SecurityPolicy$PolicySet;
.super Ljava/lang/Object;
.source "SecurityPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/SecurityPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PolicySet"
.end annotation


# static fields
.field private static final PASSWORD_LENGTH_EXCEEDED:I = 0x1f

.field private static final PASSWORD_LENGTH_MASK:I = 0x1f

.field public static final PASSWORD_LENGTH_MAX:I = 0x1e

.field private static final PASSWORD_LENGTH_SHIFT:I = 0x0

.field private static final PASSWORD_MAX_FAILS_MASK:I = 0x3e00

.field public static final PASSWORD_MAX_FAILS_MAX:I = 0x1f

.field private static final PASSWORD_MAX_FAILS_SHIFT:I = 0x9

.field public static final PASSWORD_MODE_NONE:I = 0x0

.field public static final PASSWORD_MODE_REQUIRED:I = 0x1

.field public static final PASSWORD_MODE_SIMPLE:I = 0x2

.field public static final PASSWORD_MODE_STRONG:I = 0x4

.field private static final REQUIRE_REMOTE_WIPE:I = 0x2000000

.field private static final SCREEN_LOCK_TIME_MASK:I = 0x1ffc000

.field public static final SCREEN_LOCK_TIME_MAX:I = 0x7ff

.field private static final SCREEN_LOCK_TIME_SHIFT:I = 0xe


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

.field public mMaxPasswordFails:I

.field public mMaxScreenLockTime:I

.field public mMinPasswordComplexChars:I

.field public mMinPasswordLength:I

.field public mPasswordExpires:I

.field public mPasswordHistory:I

.field public mPasswordMode:I

.field public mPasswordRecoverable:Z

.field public mRequireDeviceEncryption:Z

.field public mRequireEncryptedSMIMEMessages:Z

.field public mRequireEncryptionSMIMEAlgorithm:Z

.field public mRequireManualSyncWhenRoaming:Z

.field public mRequireRemoteWipe:Z

.field public mRequireSignedSMIMEAlgorithm:Z

.field public mRequireSignedSMIMEMessages:Z

.field public mRequireStorageCardEncryption:Z


# direct methods
.method public constructor <init>(IIIIZZIIZIZZZZZZZZZIIIIIIZZZZZZZZZZ)V
    .locals 4
    .parameter "minPasswordLength"
    .parameter "passwordMode"
    .parameter "maxPasswordFails"
    .parameter "maxScreenLockTime"
    .parameter "requireRemoteWipe"
    .parameter "passwordRecoverable"
    .parameter "passwordExpires"
    .parameter "passwordHistory"
    .parameter "attachmentsEnabled"
    .parameter "maxAttachmentSize"
    .parameter "allowStorageCard"
    .parameter "allowCamera"
    .parameter "allowWifi"
    .parameter "allowTextMessaging"
    .parameter "allowPOPIMAPEmail"
    .parameter "allowHTMLEmail"
    .parameter "allowBrowser"
    .parameter "allowInternetSharing"
    .parameter "requireManualSyncWhenRoaming"
    .parameter "allowBluetoothMode"
    .parameter "minPasswordComplexChars"
    .parameter "maxCalendarAgeFilter"
    .parameter "maxEmailAgeFilter"
    .parameter "maxEmailBodyTruncationSize"
    .parameter "maxEmailHtmlBodyTruncationSize"
    .parameter "requireSignedSMIMEMessages"
    .parameter "requireEncryptedSMIMEMessages"
    .parameter "requireSignedSMIMEAlgorithm"
    .parameter "requireEncryptionSMIMEAlgorithm"
    .parameter "allowSMIMEEncryptionAlgorithmNegotiation"
    .parameter "allowSMIMESoftCerts"
    .parameter "allowDesktopSync"
    .parameter "allowIrDA"
    .parameter "requireDeviceEncryption"
    .parameter "requireStorageCardEncryption"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 1328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1331
    const/16 v2, 0x1e

    if-le p1, v2, :cond_0

    .line 1332
    const/16 p1, 0x1f

    .line 1334
    :cond_0
    if-ltz p2, :cond_1

    const/4 v2, 0x4

    if-le p2, v2, :cond_2

    .line 1336
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "password mode"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1346
    :cond_2
    const/16 v2, 0x1f

    if-le p3, v2, :cond_3

    .line 1347
    const/16 p3, 0x1f

    .line 1350
    :cond_3
    const/16 v2, 0x7ff

    if-le p4, v2, :cond_4

    .line 1351
    const/16 p4, 0x7ff

    .line 1354
    :cond_4
    iput p1, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mMinPasswordLength:I

    .line 1355
    iput p2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mPasswordMode:I

    .line 1356
    iput p3, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxPasswordFails:I

    .line 1357
    iput p4, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxScreenLockTime:I

    .line 1358
    iput-boolean p5, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mRequireRemoteWipe:Z

    .line 1361
    iput-boolean p6, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mPasswordRecoverable:Z

    .line 1362
    iput p7, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mPasswordExpires:I

    .line 1363
    iput p8, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mPasswordHistory:I

    .line 1364
    iput-boolean p9, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mAttachmentsEnabled:Z

    .line 1365
    iput p10, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxAttachmentSize:I

    .line 1369
    iput-boolean p11, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowStorageCard:Z

    .line 1370
    move/from16 v0, p12

    move-object v1, p0

    iput-boolean v0, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowCamera:Z

    .line 1371
    move/from16 v0, p13

    move-object v1, p0

    iput-boolean v0, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowWifi:Z

    .line 1372
    move/from16 v0, p14

    move-object v1, p0

    iput-boolean v0, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowTextMessaging:Z

    .line 1373
    move/from16 v0, p15

    move-object v1, p0

    iput-boolean v0, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowPOPIMAPEmail:Z

    .line 1374
    move/from16 v0, p16

    move-object v1, p0

    iput-boolean v0, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowHTMLEmail:Z

    .line 1375
    move/from16 v0, p17

    move-object v1, p0

    iput-boolean v0, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowBrowser:Z

    .line 1376
    move/from16 v0, p18

    move-object v1, p0

    iput-boolean v0, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowInternetSharing:Z

    .line 1377
    move/from16 v0, p19

    move-object v1, p0

    iput-boolean v0, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mRequireManualSyncWhenRoaming:Z

    .line 1378
    move/from16 v0, p20

    move-object v1, p0

    iput v0, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowBluetoothMode:I

    .line 1379
    move/from16 v0, p21

    move-object v1, p0

    iput v0, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mMinPasswordComplexChars:I

    .line 1380
    move/from16 v0, p22

    move-object v1, p0

    iput v0, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxCalendarAgeFilter:I

    .line 1381
    move/from16 v0, p23

    move-object v1, p0

    iput v0, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxEmailAgeFilter:I

    .line 1382
    move/from16 v0, p24

    move-object v1, p0

    iput v0, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxEmailBodyTruncationSize:I

    .line 1383
    move/from16 v0, p25

    move-object v1, p0

    iput v0, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxEmailHtmlBodyTruncationSize:I

    .line 1384
    move/from16 v0, p26

    move-object v1, p0

    iput-boolean v0, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mRequireSignedSMIMEMessages:Z

    .line 1385
    move/from16 v0, p27

    move-object v1, p0

    iput-boolean v0, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mRequireEncryptedSMIMEMessages:Z

    .line 1386
    move/from16 v0, p28

    move-object v1, p0

    iput-boolean v0, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mRequireSignedSMIMEAlgorithm:Z

    .line 1387
    move/from16 v0, p29

    move-object v1, p0

    iput-boolean v0, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mRequireEncryptionSMIMEAlgorithm:Z

    .line 1388
    move/from16 v0, p30

    move-object v1, p0

    iput-boolean v0, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowSMIMEEncryptionAlgorithmNegotiation:Z

    .line 1389
    move/from16 v0, p31

    move-object v1, p0

    iput-boolean v0, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowSMIMESoftCerts:Z

    .line 1390
    move/from16 v0, p32

    move-object v1, p0

    iput-boolean v0, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowDesktopSync:Z

    .line 1391
    move/from16 v0, p33

    move-object v1, p0

    iput-boolean v0, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowIrDA:Z

    .line 1392
    move/from16 v0, p34

    move-object v1, p0

    iput-boolean v0, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mRequireDeviceEncryption:Z

    .line 1393
    move/from16 v0, p35

    move-object v1, p0

    iput-boolean v0, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mRequireStorageCardEncryption:Z

    .line 1395
    return-void
.end method

.method public constructor <init>(Lcom/android/email/provider/EmailContent$Account;)V
    .locals 13
    .parameter "account"

    .prologue
    .line 1401
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1404
    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/email/SecurityPolicy;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1406
    :cond_0
    const-string v0, "SecurityPolicy"

    const-string v1, "PolicySet(): account is null or context is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1532
    :cond_1
    :goto_0
    return-void

    .line 1409
    :cond_2
    invoke-static {}, Lcom/android/email/SecurityPolicy;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1412
    invoke-static {}, Lcom/android/email/SecurityPolicy;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/email/provider/EmailContent$Policies;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/email/provider/EmailContent$Policies;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v3, "account_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-wide v11, p1, Lcom/android/email/provider/EmailContent$Account;->mId:J

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1416
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 1417
    :cond_3
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1418
    const-string v0, "name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1419
    .local v7, name:Ljava/lang/String;
    const-string v0, "type"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1420
    .local v8, type:Ljava/lang/String;
    const-string v0, "value"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1422
    .local v10, value:Ljava/lang/String;
    const-string v0, "Integer"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1423
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 1424
    .local v9, val:Ljava/lang/Integer;
    const-string v0, "PasswordMode"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1425
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mPasswordMode:I

    .line 1434
    :cond_4
    :goto_2
    const-string v0, "DevicePasswordExpiration"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1435
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mPasswordExpires:I

    goto :goto_1

    .line 1426
    :cond_5
    const-string v0, "MaxDevicePasswordFailedAttempts"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1427
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxPasswordFails:I

    goto :goto_2

    .line 1428
    :cond_6
    const-string v0, "MinDevicePasswordLength"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1429
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mMinPasswordLength:I

    goto :goto_2

    .line 1430
    :cond_7
    const-string v0, "MaxInactivityTime"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1431
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxScreenLockTime:I

    goto :goto_2

    .line 1432
    :cond_8
    const-string v0, "MaxAttachmentSize"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1433
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxAttachmentSize:I

    goto :goto_2

    .line 1436
    :cond_9
    const-string v0, "DevicePasswordHistory"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1437
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mPasswordHistory:I

    goto/16 :goto_1

    .line 1440
    :cond_a
    const-string v0, "AllowBluetoothMode"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1441
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowBluetoothMode:I

    goto/16 :goto_1

    .line 1443
    :cond_b
    const-string v0, "MinPasswordComplexCharacters"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1444
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mMinPasswordComplexChars:I

    goto/16 :goto_1

    .line 1446
    :cond_c
    const-string v0, "MaxCalendarAgeFilter"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1447
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxCalendarAgeFilter:I

    goto/16 :goto_1

    .line 1449
    :cond_d
    const-string v0, "MaxEmailAgeFilter"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1450
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxEmailAgeFilter:I

    goto/16 :goto_1

    .line 1452
    :cond_e
    const-string v0, "MaxEmailBodyTruncationSize"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1453
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxEmailBodyTruncationSize:I

    goto/16 :goto_1

    .line 1455
    :cond_f
    const-string v0, "MaxEmailHtmlBodyTruncationSize"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1456
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxEmailHtmlBodyTruncationSize:I

    goto/16 :goto_1

    .line 1459
    .end local v9           #val:Ljava/lang/Integer;
    :cond_10
    const-string v0, "Boolean"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1460
    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 1461
    .local v9, val:Ljava/lang/Boolean;
    const-string v0, "PasswordRecoveryEnabled"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1462
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mPasswordRecoverable:Z

    goto/16 :goto_1

    .line 1463
    :cond_11
    const-string v0, "AttachmentsEnabled"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1464
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mAttachmentsEnabled:Z

    goto/16 :goto_1

    .line 1465
    :cond_12
    const-string v0, "RemoteWipe"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1466
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mRequireRemoteWipe:Z

    goto/16 :goto_1

    .line 1469
    :cond_13
    const-string v0, "AllowStorageCard"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1470
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowStorageCard:Z

    goto/16 :goto_1

    .line 1472
    :cond_14
    const-string v0, "AllowCamera"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1473
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowCamera:Z

    goto/16 :goto_1

    .line 1475
    :cond_15
    const-string v0, "AllowWifi"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1476
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowWifi:Z

    goto/16 :goto_1

    .line 1478
    :cond_16
    const-string v0, "AllowTextMessaging"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1479
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowTextMessaging:Z

    goto/16 :goto_1

    .line 1481
    :cond_17
    const-string v0, "AllowPOPIMAPEmail"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1482
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowPOPIMAPEmail:Z

    goto/16 :goto_1

    .line 1484
    :cond_18
    const-string v0, "AllowHTMLEmail"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1485
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowHTMLEmail:Z

    goto/16 :goto_1

    .line 1487
    :cond_19
    const-string v0, "AllowBrowser"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1488
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowBrowser:Z

    goto/16 :goto_1

    .line 1490
    :cond_1a
    const-string v0, "AllowInternetSharing"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1491
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowInternetSharing:Z

    goto/16 :goto_1

    .line 1493
    :cond_1b
    const-string v0, "RequireManualSyncWhenRoaming"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1494
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mRequireManualSyncWhenRoaming:Z

    goto/16 :goto_1

    .line 1496
    :cond_1c
    const-string v0, "RequireSignedSMIMEMessages"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1497
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mRequireSignedSMIMEMessages:Z

    goto/16 :goto_1

    .line 1499
    :cond_1d
    const-string v0, "RequireEncryptedSMIMEMessages"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1500
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mRequireEncryptedSMIMEMessages:Z

    goto/16 :goto_1

    .line 1502
    :cond_1e
    const-string v0, "RequireSignedSMIMEAlgorithm"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1503
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mRequireSignedSMIMEAlgorithm:Z

    goto/16 :goto_1

    .line 1505
    :cond_1f
    const-string v0, "RequireEncryptionSMIMEAlgorithm"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1506
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mRequireEncryptionSMIMEAlgorithm:Z

    goto/16 :goto_1

    .line 1508
    :cond_20
    const-string v0, "AllowSMIMEEncryptionAlgorithmNegotiation"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1509
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowSMIMEEncryptionAlgorithmNegotiation:Z

    goto/16 :goto_1

    .line 1511
    :cond_21
    const-string v0, "AllowSMIMESoftCerts"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1512
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowSMIMESoftCerts:Z

    goto/16 :goto_1

    .line 1514
    :cond_22
    const-string v0, "AllowDesktopSync"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1515
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowDesktopSync:Z

    goto/16 :goto_1

    .line 1517
    :cond_23
    const-string v0, "AllowIrDA"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 1518
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowIrDA:Z

    goto/16 :goto_1

    .line 1520
    :cond_24
    const-string v0, "RequireDeviceEncryption"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 1521
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mRequireDeviceEncryption:Z

    goto/16 :goto_1

    .line 1523
    :cond_25
    const-string v0, "RequireStorageCardEncryption"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1524
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mRequireStorageCardEncryption:Z

    goto/16 :goto_1

    .line 1529
    .end local v7           #name:Ljava/lang/String;
    .end local v8           #type:Ljava/lang/String;
    .end local v9           #val:Ljava/lang/Boolean;
    .end local v10           #value:Ljava/lang/String;
    :cond_26
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method private populateHash(Ljava/util/HashMap;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, values:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v6, 0x7

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 1761
    const-string v1, "PasswordMode"

    iget v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mPasswordMode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1763
    iget v1, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mPasswordMode:I

    if-eqz v1, :cond_1

    .line 1764
    const-string v1, "PasswordRecoveryEnabled"

    iget-boolean v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mPasswordRecoverable:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1765
    const-string v1, "MaxDevicePasswordFailedAttempts"

    iget v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxPasswordFails:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1766
    const-string v1, "DevicePasswordExpiration"

    iget v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mPasswordExpires:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1767
    const-string v1, "DevicePasswordHistory"

    iget v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mPasswordHistory:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1769
    const-string v1, "MinPasswordComplexCharacters"

    iget v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mMinPasswordComplexChars:I

    if-ltz v2, :cond_0

    iget v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mMinPasswordComplexChars:I

    const/4 v3, 0x4

    if-le v2, v3, :cond_5

    :cond_0
    const/4 v2, 0x3

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1770
    const-string v1, "MinDevicePasswordLength"

    iget v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mMinPasswordLength:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1773
    :cond_1
    const-string v1, "MaxAttachmentSize"

    iget v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxAttachmentSize:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1774
    const-string v1, "AttachmentsEnabled"

    iget-boolean v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mAttachmentsEnabled:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1776
    iget v0, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxScreenLockTime:I

    .line 1778
    .local v0, inactivityTime:I
    const-string v1, "MaxInactivityTime"

    const/16 v2, 0x270f

    if-lt v0, v2, :cond_6

    move v2, v4

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1779
    const-string v1, "RemoteWipe"

    iget-boolean v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mRequireRemoteWipe:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1781
    const-string v1, "AllowStorageCard"

    iget-boolean v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowStorageCard:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1782
    const-string v1, "AllowCamera"

    iget-boolean v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowCamera:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1783
    const-string v1, "AllowWifi"

    iget-boolean v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowWifi:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1784
    const-string v1, "AllowTextMessaging"

    iget-boolean v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowTextMessaging:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1785
    const-string v1, "AllowPOPIMAPEmail"

    iget-boolean v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowPOPIMAPEmail:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1786
    const-string v1, "AllowHTMLEmail"

    iget-boolean v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowHTMLEmail:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1787
    const-string v1, "AllowBrowser"

    iget-boolean v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowBrowser:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1788
    const-string v1, "AllowInternetSharing"

    iget-boolean v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowInternetSharing:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1789
    const-string v1, "RequireManualSyncWhenRoaming"

    iget-boolean v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mRequireManualSyncWhenRoaming:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1790
    const-string v1, "AllowBluetoothMode"

    iget v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowBluetoothMode:I

    if-ltz v2, :cond_2

    iget v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowBluetoothMode:I

    if-le v2, v5, :cond_7

    :cond_2
    move v2, v5

    :goto_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1792
    const-string v1, "MaxCalendarAgeFilter"

    iget v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxCalendarAgeFilter:I

    if-ltz v2, :cond_3

    iget v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxCalendarAgeFilter:I

    if-le v2, v6, :cond_8

    :cond_3
    move v2, v4

    :goto_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1793
    const-string v1, "MaxEmailAgeFilter"

    iget v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxEmailAgeFilter:I

    if-ltz v2, :cond_4

    iget v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxEmailAgeFilter:I

    if-le v2, v6, :cond_9

    :cond_4
    move v2, v4

    :goto_4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1794
    const-string v1, "MaxEmailBodyTruncationSize"

    iget v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxEmailBodyTruncationSize:I

    if-gez v2, :cond_a

    move v2, v4

    :goto_5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1795
    const-string v1, "MaxEmailHtmlBodyTruncationSize"

    iget v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxEmailHtmlBodyTruncationSize:I

    if-gez v2, :cond_b

    move v2, v4

    :goto_6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1796
    const-string v1, "RequireSignedSMIMEMessages"

    iget-boolean v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mRequireSignedSMIMEMessages:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1797
    const-string v1, "RequireEncryptedSMIMEMessages"

    iget-boolean v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mRequireEncryptedSMIMEMessages:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1798
    const-string v1, "RequireSignedSMIMEAlgorithm"

    iget-boolean v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mRequireSignedSMIMEAlgorithm:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1799
    const-string v1, "RequireEncryptionSMIMEAlgorithm"

    iget-boolean v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mRequireEncryptionSMIMEAlgorithm:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1800
    const-string v1, "AllowSMIMEEncryptionAlgorithmNegotiation"

    iget-boolean v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowSMIMEEncryptionAlgorithmNegotiation:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1801
    const-string v1, "AllowSMIMESoftCerts"

    iget-boolean v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowSMIMESoftCerts:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1802
    const-string v1, "AllowDesktopSync"

    iget-boolean v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowDesktopSync:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1803
    const-string v1, "AllowIrDA"

    iget-boolean v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowIrDA:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1804
    const-string v1, "RequireDeviceEncryption"

    iget-boolean v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mRequireDeviceEncryption:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1805
    const-string v1, "RequireStorageCardEncryption"

    iget-boolean v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mRequireStorageCardEncryption:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1807
    return-void

    .line 1769
    .end local v0           #inactivityTime:I
    :cond_5
    iget v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mMinPasswordComplexChars:I

    goto/16 :goto_0

    .restart local v0       #inactivityTime:I
    :cond_6
    move v2, v0

    .line 1778
    goto/16 :goto_1

    .line 1790
    :cond_7
    iget v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowBluetoothMode:I

    goto/16 :goto_2

    .line 1792
    :cond_8
    iget v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxCalendarAgeFilter:I

    goto/16 :goto_3

    .line 1793
    :cond_9
    iget v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxEmailAgeFilter:I

    goto/16 :goto_4

    .line 1794
    :cond_a
    iget v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxEmailBodyTruncationSize:I

    goto/16 :goto_5

    .line 1795
    :cond_b
    iget v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxEmailHtmlBodyTruncationSize:I

    goto/16 :goto_6
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v4, 0x0

    .line 1812
    instance-of v2, p1, Lcom/android/email/SecurityPolicy$PolicySet;

    if-eqz v2, :cond_1

    .line 1813
    move-object v0, p1

    check-cast v0, Lcom/android/email/SecurityPolicy$PolicySet;

    move-object v1, v0

    .line 1814
    .local v1, other:Lcom/android/email/SecurityPolicy$PolicySet;
    iget v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mMinPasswordLength:I

    iget v3, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mMinPasswordLength:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mPasswordMode:I

    iget v3, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mPasswordMode:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxPasswordFails:I

    iget v3, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxPasswordFails:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxScreenLockTime:I

    iget v3, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxScreenLockTime:I

    if-ne v2, v3, :cond_0

    iget-boolean v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mRequireRemoteWipe:Z

    iget-boolean v3, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mRequireRemoteWipe:Z

    if-ne v2, v3, :cond_0

    iget-boolean v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mPasswordRecoverable:Z

    iget-boolean v3, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mPasswordRecoverable:Z

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mPasswordExpires:I

    iget v3, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mPasswordExpires:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mPasswordHistory:I

    iget v3, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mPasswordHistory:I

    if-ne v2, v3, :cond_0

    iget-boolean v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mAttachmentsEnabled:Z

    iget-boolean v3, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mAttachmentsEnabled:Z

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxAttachmentSize:I

    iget v3, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxAttachmentSize:I

    if-ne v2, v3, :cond_0

    iget-boolean v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowStorageCard:Z

    iget-boolean v3, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowStorageCard:Z

    if-ne v2, v3, :cond_0

    iget-boolean v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowCamera:Z

    iget-boolean v3, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowCamera:Z

    if-ne v2, v3, :cond_0

    iget-boolean v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowWifi:Z

    iget-boolean v3, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowWifi:Z

    if-ne v2, v3, :cond_0

    iget-boolean v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowTextMessaging:Z

    iget-boolean v3, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowTextMessaging:Z

    if-ne v2, v3, :cond_0

    iget-boolean v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowPOPIMAPEmail:Z

    iget-boolean v3, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowPOPIMAPEmail:Z

    if-ne v2, v3, :cond_0

    iget-boolean v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowHTMLEmail:Z

    iget-boolean v3, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowHTMLEmail:Z

    if-ne v2, v3, :cond_0

    iget-boolean v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowBrowser:Z

    iget-boolean v3, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowBrowser:Z

    if-ne v2, v3, :cond_0

    iget-boolean v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowInternetSharing:Z

    iget-boolean v3, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowInternetSharing:Z

    if-ne v2, v3, :cond_0

    iget-boolean v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mRequireManualSyncWhenRoaming:Z

    iget-boolean v3, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mRequireManualSyncWhenRoaming:Z

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowBluetoothMode:I

    iget v3, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowBluetoothMode:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mMinPasswordComplexChars:I

    iget v3, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mMinPasswordComplexChars:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxCalendarAgeFilter:I

    iget v3, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxCalendarAgeFilter:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxEmailAgeFilter:I

    iget v3, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxEmailAgeFilter:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxEmailBodyTruncationSize:I

    iget v3, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxEmailBodyTruncationSize:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxEmailHtmlBodyTruncationSize:I

    iget v3, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxEmailHtmlBodyTruncationSize:I

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    .line 1859
    .end local v1           #other:Lcom/android/email/SecurityPolicy$PolicySet;
    :goto_0
    return v2

    .restart local v1       #other:Lcom/android/email/SecurityPolicy$PolicySet;
    :cond_0
    move v2, v4

    .line 1814
    goto :goto_0

    .end local v1           #other:Lcom/android/email/SecurityPolicy$PolicySet;
    :cond_1
    move v2, v4

    .line 1859
    goto :goto_0
.end method

.method public getDPManagerPasswordQuality()I
    .locals 1

    .prologue
    .line 1591
    iget v0, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mPasswordMode:I

    packed-switch v0, :pswitch_data_0

    .line 1600
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1593
    :pswitch_1
    const/high16 v0, 0x2

    goto :goto_0

    .line 1595
    :pswitch_2
    const/high16 v0, 0x5

    goto :goto_0

    .line 1598
    :pswitch_3
    const/high16 v0, 0x1

    goto :goto_0

    .line 1591
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getMaxPasswordFails()I
    .locals 1

    .prologue
    .line 1291
    iget v0, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxPasswordFails:I

    return v0
.end method

.method public getMaxScreenLockTime()I
    .locals 1

    .prologue
    .line 1295
    iget v0, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxScreenLockTime:I

    return v0
.end method

.method public getMinPasswordLength()I
    .locals 1

    .prologue
    .line 1283
    iget v0, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mMinPasswordLength:I

    return v0
.end method

.method public getPasswordMode()I
    .locals 1

    .prologue
    .line 1287
    iget v0, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mPasswordMode:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 1867
    const/4 v0, 0x0

    .line 1868
    .local v0, flags:I
    iget v1, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mMinPasswordLength:I

    shl-int/lit8 v0, v1, 0x0

    .line 1869
    iget v1, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mPasswordMode:I

    or-int/2addr v0, v1

    .line 1870
    iget v1, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxPasswordFails:I

    shl-int/lit8 v1, v1, 0x9

    or-int/2addr v0, v1

    .line 1871
    iget v1, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxScreenLockTime:I

    shl-int/lit8 v1, v1, 0xe

    or-int/2addr v0, v1

    .line 1872
    iget-boolean v1, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mRequireRemoteWipe:Z

    if-eqz v1, :cond_0

    .line 1873
    const/high16 v1, 0x200

    or-int/2addr v0, v1

    .line 1875
    :cond_0
    return v0
.end method

.method public isRequireRemoteWipe()Z
    .locals 1

    .prologue
    .line 1299
    iget-boolean v0, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mRequireRemoteWipe:Z

    return v0
.end method

.method public removePolicyRules(J)V
    .locals 6
    .parameter "accountId"

    .prologue
    .line 1753
    invoke-static {}, Lcom/android/email/SecurityPolicy;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/email/provider/EmailContent$Policies;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "account_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1754
    return-void
.end method

.method public storePolicyRules(J)V
    .locals 9
    .parameter "accountId"

    .prologue
    const-string v5, "Email"

    .line 1724
    const-class v5, Lcom/android/email/SecurityPolicy;

    monitor-enter v5

    .line 1725
    :try_start_0
    const-string v6, "Email"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "storePolicyRules() - accountId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1726
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1728
    .local v4, values:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0, v4}, Lcom/android/email/SecurityPolicy$PolicySet;->populateHash(Ljava/util/HashMap;)V

    .line 1730
    invoke-static {}, Lcom/android/email/SecurityPolicy;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1732
    .local v0, cv:Landroid/content/ContentResolver;
    invoke-virtual {p0, p1, p2}, Lcom/android/email/SecurityPolicy$PolicySet;->removePolicyRules(J)V

    .line 1733
    const-string v6, "Email"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " storePolicyRules: removed policies for accountId:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1734
    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local p0
    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1735
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 1736
    new-instance v3, Lcom/android/email/provider/EmailContent$Policies;

    invoke-direct {v3}, Lcom/android/email/provider/EmailContent$Policies;-><init>()V

    .line 1737
    .local v3, policy:Lcom/android/email/provider/EmailContent$Policies;
    iput-wide p1, v3, Lcom/android/email/provider/EmailContent$Policies;->mAccountId:J

    .line 1738
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    iput-object p0, v3, Lcom/android/email/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    .line 1739
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/android/email/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    .line 1740
    sget-boolean v6, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v6, :cond_1

    .line 1741
    const-string v6, "SecurityPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "policy Name:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v3, Lcom/android/email/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", policyValue:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v3, Lcom/android/email/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1742
    :cond_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/android/email/provider/EmailContent$Policies;->mType:Ljava/lang/String;

    .line 1743
    sget-object v6, Lcom/android/email/provider/EmailContent$Policies;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Lcom/android/email/provider/EmailContent$Policies;->toContentValues()Landroid/content/ContentValues;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_0

    .line 1746
    .end local v0           #cv:Landroid/content/ContentResolver;
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #policy:Lcom/android/email/provider/EmailContent$Policies;
    .end local v4           #values:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :catchall_0
    move-exception v6

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .restart local v0       #cv:Landroid/content/ContentResolver;
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v4       #values:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1747
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1880
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{ pw-len-min="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mMinPasswordLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pw-mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mPasswordMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pw-fails-max="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxPasswordFails:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " screenlock-max="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxScreenLockTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " remote-wipe-req="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mRequireRemoteWipe:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pw-recovery="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mPasswordRecoverable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pw-expiration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mPasswordExpires:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pw-history="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mPasswordHistory:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " att-enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mAttachmentsEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " att-max-size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxAttachmentSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mAllowStorageCard="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowStorageCard:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mAllowCamera="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowCamera:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mAllowWifi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowWifi:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mAllowTextMessaging="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowTextMessaging:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mAllowPOPIMAPEmail="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowPOPIMAPEmail:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mAllowHTMLEmail="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowHTMLEmail:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mAllowBrowser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowBrowser:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mAllowInternetSharing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowInternetSharing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mRequireManualSyncWhenRoaming="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mRequireManualSyncWhenRoaming:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mAllowBluetoothMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowBluetoothMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mMinPasswordComplexChars="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mMinPasswordComplexChars:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mMaxCalendarAgeFilter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxCalendarAgeFilter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mMaxEmailAgeFilter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxEmailAgeFilter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mMaxEmailBodyTruncationSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxEmailBodyTruncationSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mMaxEmailHtmlBodyTruncationSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxEmailHtmlBodyTruncationSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mRequireSignedSMIMEMessages="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mRequireSignedSMIMEMessages:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mRequireEncryptedSMIMEMessages="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mRequireEncryptedSMIMEMessages:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mRequireSignedSMIMEAlgorithm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mRequireSignedSMIMEAlgorithm:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mRequireEncryptionSMIMEAlgorithm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mRequireEncryptionSMIMEAlgorithm:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mAllowSMIMEEncryptionAlgorithmNegotiation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowSMIMEEncryptionAlgorithmNegotiation:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mAllowSMIMESoftCerts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowSMIMESoftCerts:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mAllowDesktopSync="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowDesktopSync:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mAllowIrDA="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowIrDA:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mRequireDeviceEncryption="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mRequireDeviceEncryption:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mRequireStorageCardEncryption="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mRequireStorageCardEncryption:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeAccount(Lcom/android/email/provider/EmailContent$Account;Ljava/lang/String;ZLandroid/content/Context;)Z
    .locals 16
    .parameter "account"
    .parameter "syncKey"
    .parameter "update"
    .parameter "context"

    .prologue
    .line 1621
    new-instance v9, Lcom/android/email/SecurityPolicy$PolicySet;

    move-object v0, v9

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/android/email/SecurityPolicy$PolicySet;-><init>(Lcom/android/email/provider/EmailContent$Account;)V

    .line 1622
    .local v9, oldPolicy:Lcom/android/email/SecurityPolicy$PolicySet;
    move-object/from16 v0, p0

    move-object v1, v9

    invoke-virtual {v0, v1}, Lcom/android/email/SecurityPolicy$PolicySet;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_8

    const/4 v13, 0x1

    move v6, v13

    .line 1627
    .local v6, dirty:Z
    :goto_0
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/email/provider/EmailContent$Account;->mSecuritySyncKey:Ljava/lang/String;

    .line 1628
    if-eqz p3, :cond_7

    .line 1632
    const/4 v3, 0x0

    .line 1633
    .local v3, changedValues:Z
    const/4 v4, 0x0

    .line 1635
    .local v4, currentSize:I
    move-object/from16 v0, p1

    iget-byte v0, v0, Lcom/android/email/provider/EmailContent$Account;->mEmailSize:B

    move v13, v0

    invoke-static {v13}, Lcom/android/exchange/Eas$EmailDataSize;->parse(B)Lcom/android/exchange/Eas$EmailDataSize;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/exchange/Eas$EmailDataSize;->toEas12Value()I

    move-result v4

    .line 1638
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxEmailBodyTruncationSize:I

    move v10, v0

    .line 1639
    .local v10, plainTextSize:I
    const-string v13, "SecurityPolicy"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "plainTextSize = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1640
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxEmailHtmlBodyTruncationSize:I

    move v13, v0

    div-int/lit16 v7, v13, 0x400

    .line 1641
    .local v7, htmlSize:I
    const-string v13, "SecurityPolicy"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "htmlSize = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1642
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowHTMLEmail:Z

    move v8, v0

    .line 1643
    .local v8, isHtmlAllowed:Z
    const-string v13, "SecurityPolicy"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "isHtmlAllowed = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1644
    if-eqz v8, :cond_9

    if-lez v7, :cond_9

    .line 1645
    move v11, v7

    .line 1649
    .local v11, restrictedSize:I
    :goto_1
    if-lez v11, :cond_a

    .line 1650
    mul-int/lit16 v11, v11, 0x400

    .line 1653
    :goto_2
    if-ge v11, v4, :cond_1

    .line 1655
    const-string v13, "SecurityPolicy"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Exchange IT Policy has restricted SyncSize, CurrentSize="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " Bytes, restrictedSize="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " Bytes"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1657
    move-object/from16 v0, p1

    iget-byte v0, v0, Lcom/android/email/provider/EmailContent$Account;->mEmailSize:B

    move v13, v0

    if-lez v13, :cond_0

    .line 1658
    invoke-static {v11}, Lcom/android/exchange/Eas$EmailDataSize;->parseToByte(I)B

    move-result v13

    move v0, v13

    move-object/from16 v1, p1

    iput-byte v0, v1, Lcom/android/email/provider/EmailContent$Account;->mEmailSize:B

    .line 1659
    :cond_0
    const/4 v3, 0x1

    .line 1662
    :cond_1
    const/4 v12, 0x6

    .line 1663
    .local v12, restrictedWindow:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxEmailAgeFilter:I

    move v12, v0

    .line 1664
    if-gtz v12, :cond_2

    .line 1665
    const/4 v12, 0x6

    .line 1666
    :cond_2
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/email/provider/EmailContent$Account;->mSyncLookback:I

    move v13, v0

    if-ge v12, v13, :cond_3

    .line 1668
    const-string v13, "AccountSettings"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Exchange IT Policy has restricted SyncLookback, current:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/email/provider/EmailContent$Account;->mSyncLookback:I

    move v15, v0

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", restricted="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1669
    move v0, v12

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/email/provider/EmailContent$Account;->mSyncLookback:I

    .line 1670
    const/4 v3, 0x1

    .line 1673
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxCalendarAgeFilter:I

    move v12, v0

    .line 1674
    if-lez v12, :cond_5

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/email/provider/EmailContent$Account;->mCalendarSyncLookback:I

    move v13, v0

    if-eqz v13, :cond_4

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/email/provider/EmailContent$Account;->mCalendarSyncLookback:I

    move v13, v0

    if-ge v12, v13, :cond_5

    .line 1678
    :cond_4
    const-string v13, "AccountSettings"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Exchange IT Policy has restricted CalendarSyncLookback, current:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/email/provider/EmailContent$Account;->mCalendarSyncLookback:I

    move v15, v0

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", restricted="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1679
    move v0, v12

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/email/provider/EmailContent$Account;->mCalendarSyncLookback:I

    .line 1680
    const/4 v3, 0x1

    .line 1684
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/android/email/provider/EmailContent$Account;->isSaved()Z

    move-result v13

    if-eqz v13, :cond_c

    .line 1685
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 1687
    .local v5, cv:Landroid/content/ContentValues;
    const-string v13, "securitySyncKey"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Account;->mSecuritySyncKey:Ljava/lang/String;

    move-object v14, v0

    invoke-virtual {v5, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1692
    if-eqz v3, :cond_6

    .line 1695
    const-string v13, "isDefault"

    move-object/from16 v0, p1

    iget-byte v0, v0, Lcom/android/email/provider/EmailContent$Account;->mEmailSize:B

    move v14, v0

    shl-int/lit8 v14, v14, 0x4

    int-to-byte v14, v14

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/email/provider/EmailContent$Account;->mIsDefault:Z

    move v15, v0

    if-eqz v15, :cond_b

    const/4 v15, 0x1

    :goto_3
    int-to-byte v15, v15

    or-int/2addr v14, v15

    int-to-byte v14, v14

    invoke-static {v14}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v14

    invoke-virtual {v5, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Byte;)V

    .line 1696
    const-string v13, "syncLookback"

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/email/provider/EmailContent$Account;->mSyncLookback:I

    move v14, v0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v5, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1698
    const-string v13, "calendarSyncLookback"

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/email/provider/EmailContent$Account;->mCalendarSyncLookback:I

    move v14, v0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v5, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1704
    :cond_6
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/android/email/provider/EmailContent$Account;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 1711
    .end local v5           #cv:Landroid/content/ContentValues;
    :goto_4
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Account;->mId:J

    move-wide v13, v0

    move-object/from16 v0, p0

    move-wide v1, v13

    invoke-virtual {v0, v1, v2}, Lcom/android/email/SecurityPolicy$PolicySet;->storePolicyRules(J)V

    .line 1714
    .end local v3           #changedValues:Z
    .end local v4           #currentSize:I
    .end local v7           #htmlSize:I
    .end local v8           #isHtmlAllowed:Z
    .end local v10           #plainTextSize:I
    .end local v11           #restrictedSize:I
    .end local v12           #restrictedWindow:I
    :cond_7
    const-string v13, "Email"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "SecurityPolicy.writeAccount: returning dirty = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1715
    return v6

    .line 1622
    .end local v6           #dirty:Z
    :cond_8
    const/4 v13, 0x0

    move v6, v13

    goto/16 :goto_0

    .line 1647
    .restart local v3       #changedValues:Z
    .restart local v4       #currentSize:I
    .restart local v6       #dirty:Z
    .restart local v7       #htmlSize:I
    .restart local v8       #isHtmlAllowed:Z
    .restart local v10       #plainTextSize:I
    :cond_9
    move v11, v10

    .restart local v11       #restrictedSize:I
    goto/16 :goto_1

    .line 1652
    :cond_a
    const v11, 0x7fffffff

    goto/16 :goto_2

    .line 1695
    .restart local v5       #cv:Landroid/content/ContentValues;
    .restart local v12       #restrictedWindow:I
    :cond_b
    const/4 v15, 0x0

    goto :goto_3

    .line 1706
    .end local v5           #cv:Landroid/content/ContentValues;
    :cond_c
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/email/provider/EmailContent$Account;->save(Landroid/content/Context;)Landroid/net/Uri;

    goto :goto_4
.end method
