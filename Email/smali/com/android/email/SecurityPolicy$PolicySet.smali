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

.field public mRequireEncryptionSMIMEAlgorithm:I

.field public mRequireManualSyncWhenRoaming:Z

.field public mRequireRemoteWipe:Z

.field public mRequireSignedSMIMEAlgorithm:I

.field public mRequireSignedSMIMEMessages:Z

.field public mRequireStorageCardEncryption:Z


# direct methods
.method public constructor <init>(IIIIZZIIZIZZZZZZZZZIIIIIIZZIIIZZZZZ)V
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
    .line 1568
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1572
    const/16 v2, 0x1e

    if-le p1, v2, :cond_0

    .line 1573
    const/16 p1, 0x1f

    .line 1575
    :cond_0
    if-ltz p2, :cond_1

    const/4 v2, 0x4

    if-le p2, v2, :cond_2

    .line 1577
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "password mode"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1587
    :cond_2
    const/16 v2, 0x1f

    if-le p3, v2, :cond_3

    .line 1588
    const/16 p3, 0x1f

    .line 1591
    :cond_3
    const/16 v2, 0x7ff

    if-le p4, v2, :cond_4

    .line 1592
    const/16 p4, 0x7ff

    .line 1595
    :cond_4
    iput p1, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mMinPasswordLength:I

    .line 1596
    iput p2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mPasswordMode:I

    .line 1597
    iput p3, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxPasswordFails:I

    .line 1598
    iput p4, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxScreenLockTime:I

    .line 1599
    iput-boolean p5, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mRequireRemoteWipe:Z

    .line 1602
    iput-boolean p6, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mPasswordRecoverable:Z

    .line 1603
    iput p7, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mPasswordExpires:I

    .line 1604
    iput p8, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mPasswordHistory:I

    .line 1605
    iput-boolean p9, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mAttachmentsEnabled:Z

    .line 1606
    iput p10, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxAttachmentSize:I

    .line 1610
    iput-boolean p11, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowStorageCard:Z

    .line 1611
    move/from16 v0, p12

    move-object v1, p0

    iput-boolean v0, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowCamera:Z

    .line 1612
    move/from16 v0, p13

    move-object v1, p0

    iput-boolean v0, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowWifi:Z

    .line 1613
    move/from16 v0, p14

    move-object v1, p0

    iput-boolean v0, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowTextMessaging:Z

    .line 1614
    move/from16 v0, p15

    move-object v1, p0

    iput-boolean v0, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowPOPIMAPEmail:Z

    .line 1615
    move/from16 v0, p16

    move-object v1, p0

    iput-boolean v0, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowHTMLEmail:Z

    .line 1616
    move/from16 v0, p17

    move-object v1, p0

    iput-boolean v0, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowBrowser:Z

    .line 1617
    move/from16 v0, p18

    move-object v1, p0

    iput-boolean v0, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowInternetSharing:Z

    .line 1618
    move/from16 v0, p19

    move-object v1, p0

    iput-boolean v0, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mRequireManualSyncWhenRoaming:Z

    .line 1619
    move/from16 v0, p20

    move-object v1, p0

    iput v0, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowBluetoothMode:I

    .line 1620
    move/from16 v0, p21

    move-object v1, p0

    iput v0, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mMinPasswordComplexChars:I

    .line 1621
    move/from16 v0, p22

    move-object v1, p0

    iput v0, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxCalendarAgeFilter:I

    .line 1622
    move/from16 v0, p23

    move-object v1, p0

    iput v0, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxEmailAgeFilter:I

    .line 1623
    move/from16 v0, p24

    move-object v1, p0

    iput v0, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxEmailBodyTruncationSize:I

    .line 1624
    move/from16 v0, p25

    move-object v1, p0

    iput v0, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxEmailHtmlBodyTruncationSize:I

    .line 1625
    move/from16 v0, p26

    move-object v1, p0

    iput-boolean v0, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mRequireSignedSMIMEMessages:Z

    .line 1626
    move/from16 v0, p27

    move-object v1, p0

    iput-boolean v0, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mRequireEncryptedSMIMEMessages:Z

    .line 1627
    move/from16 v0, p28

    move-object v1, p0

    iput v0, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mRequireSignedSMIMEAlgorithm:I

    .line 1628
    move/from16 v0, p29

    move-object v1, p0

    iput v0, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mRequireEncryptionSMIMEAlgorithm:I

    .line 1629
    move/from16 v0, p30

    move-object v1, p0

    iput v0, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowSMIMEEncryptionAlgorithmNegotiation:I

    .line 1630
    move/from16 v0, p31

    move-object v1, p0

    iput-boolean v0, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowSMIMESoftCerts:Z

    .line 1631
    move/from16 v0, p32

    move-object v1, p0

    iput-boolean v0, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowDesktopSync:Z

    .line 1632
    move/from16 v0, p33

    move-object v1, p0

    iput-boolean v0, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowIrDA:Z

    .line 1636
    move/from16 v0, p34

    move-object v1, p0

    iput-boolean v0, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mRequireDeviceEncryption:Z

    .line 1637
    move/from16 v0, p35

    move-object v1, p0

    iput-boolean v0, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mRequireStorageCardEncryption:Z

    .line 1638
    return-void
.end method

.method public constructor <init>(Lcom/android/email/provider/EmailContent$Account;)V
    .locals 13
    .parameter "account"

    .prologue
    .line 1644
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1647
    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/email/SecurityPolicy;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1649
    :cond_0
    const-string v0, "SecurityPolicy"

    const-string v1, "PolicySet(): account is null or context is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1777
    :cond_1
    :goto_0
    return-void

    .line 1652
    :cond_2
    invoke-static {}, Lcom/android/email/SecurityPolicy;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1655
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

    .line 1659
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 1660
    :cond_3
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1661
    const-string v0, "name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1662
    .local v7, name:Ljava/lang/String;
    const-string v0, "type"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1663
    .local v8, type:Ljava/lang/String;
    const-string v0, "value"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1665
    .local v10, value:Ljava/lang/String;
    const-string v0, "Integer"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1666
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 1667
    .local v9, val:Ljava/lang/Integer;
    const-string v0, "PasswordMode"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1668
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mPasswordMode:I

    .line 1677
    :cond_4
    :goto_2
    const-string v0, "DevicePasswordExpiration"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1678
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mPasswordExpires:I

    goto :goto_1

    .line 1669
    :cond_5
    const-string v0, "MaxDevicePasswordFailedAttempts"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1670
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxPasswordFails:I

    goto :goto_2

    .line 1671
    :cond_6
    const-string v0, "MinDevicePasswordLength"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1672
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mMinPasswordLength:I

    goto :goto_2

    .line 1673
    :cond_7
    const-string v0, "MaxInactivityTime"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1674
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxScreenLockTime:I

    goto :goto_2

    .line 1675
    :cond_8
    const-string v0, "MaxAttachmentSize"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1676
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxAttachmentSize:I

    goto :goto_2

    .line 1679
    :cond_9
    const-string v0, "DevicePasswordHistory"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1680
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mPasswordHistory:I

    goto/16 :goto_1

    .line 1683
    :cond_a
    const-string v0, "AllowBluetoothMode"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1684
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowBluetoothMode:I

    goto/16 :goto_1

    .line 1686
    :cond_b
    const-string v0, "MinPasswordComplexCharacters"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1687
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mMinPasswordComplexChars:I

    goto/16 :goto_1

    .line 1689
    :cond_c
    const-string v0, "MaxCalendarAgeFilter"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1690
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxCalendarAgeFilter:I

    goto/16 :goto_1

    .line 1692
    :cond_d
    const-string v0, "MaxEmailAgeFilter"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1693
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxEmailAgeFilter:I

    goto/16 :goto_1

    .line 1695
    :cond_e
    const-string v0, "MaxEmailBodyTruncationSize"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1696
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxEmailBodyTruncationSize:I

    goto/16 :goto_1

    .line 1698
    :cond_f
    const-string v0, "MaxEmailHtmlBodyTruncationSize"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1699
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxEmailHtmlBodyTruncationSize:I

    goto/16 :goto_1

    .line 1702
    :cond_10
    const-string v0, "RequireSignedSMIMEAlgorithm"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1703
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mRequireSignedSMIMEAlgorithm:I

    goto/16 :goto_1

    .line 1705
    :cond_11
    const-string v0, "RequireEncryptionSMIMEAlgorithm"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1706
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mRequireEncryptionSMIMEAlgorithm:I

    goto/16 :goto_1

    .line 1708
    :cond_12
    const-string v0, "AllowSMIMEEncryptionAlgorithmNegotiation"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1709
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowSMIMEEncryptionAlgorithmNegotiation:I

    goto/16 :goto_1

    .line 1713
    .end local v9           #val:Ljava/lang/Integer;
    :cond_13
    const-string v0, "Boolean"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1714
    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 1715
    .local v9, val:Ljava/lang/Boolean;
    const-string v0, "PasswordRecoveryEnabled"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1716
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mPasswordRecoverable:Z

    goto/16 :goto_1

    .line 1717
    :cond_14
    const-string v0, "AttachmentsEnabled"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1718
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mAttachmentsEnabled:Z

    goto/16 :goto_1

    .line 1719
    :cond_15
    const-string v0, "RemoteWipe"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1720
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mRequireRemoteWipe:Z

    goto/16 :goto_1

    .line 1723
    :cond_16
    const-string v0, "AllowStorageCard"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1724
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowStorageCard:Z

    goto/16 :goto_1

    .line 1726
    :cond_17
    const-string v0, "AllowCamera"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1727
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowCamera:Z

    goto/16 :goto_1

    .line 1729
    :cond_18
    const-string v0, "AllowWifi"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1730
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowWifi:Z

    goto/16 :goto_1

    .line 1732
    :cond_19
    const-string v0, "AllowTextMessaging"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1733
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowTextMessaging:Z

    goto/16 :goto_1

    .line 1735
    :cond_1a
    const-string v0, "AllowPOPIMAPEmail"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1736
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowPOPIMAPEmail:Z

    goto/16 :goto_1

    .line 1738
    :cond_1b
    const-string v0, "AllowHTMLEmail"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1739
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowHTMLEmail:Z

    goto/16 :goto_1

    .line 1741
    :cond_1c
    const-string v0, "AllowBrowser"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1742
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowBrowser:Z

    goto/16 :goto_1

    .line 1744
    :cond_1d
    const-string v0, "AllowInternetSharing"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1745
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowInternetSharing:Z

    goto/16 :goto_1

    .line 1747
    :cond_1e
    const-string v0, "RequireManualSyncWhenRoaming"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1748
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mRequireManualSyncWhenRoaming:Z

    goto/16 :goto_1

    .line 1750
    :cond_1f
    const-string v0, "RequireSignedSMIMEMessages"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1751
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mRequireSignedSMIMEMessages:Z

    goto/16 :goto_1

    .line 1753
    :cond_20
    const-string v0, "RequireEncryptedSMIMEMessages"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1754
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mRequireEncryptedSMIMEMessages:Z

    goto/16 :goto_1

    .line 1756
    :cond_21
    const-string v0, "AllowSMIMESoftCerts"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1757
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowSMIMESoftCerts:Z

    goto/16 :goto_1

    .line 1759
    :cond_22
    const-string v0, "AllowDesktopSync"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1760
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowDesktopSync:Z

    goto/16 :goto_1

    .line 1762
    :cond_23
    const-string v0, "AllowIrDA"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 1763
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowIrDA:Z

    goto/16 :goto_1

    .line 1765
    :cond_24
    const-string v0, "RequireDeviceEncryption"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 1766
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mRequireDeviceEncryption:Z

    goto/16 :goto_1

    .line 1768
    :cond_25
    const-string v0, "RequireStorageCardEncryption"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1769
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mRequireStorageCardEncryption:Z

    goto/16 :goto_1

    .line 1774
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

    .line 2006
    const-string v1, "PasswordMode"

    iget v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mPasswordMode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2008
    iget v1, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mPasswordMode:I

    if-eqz v1, :cond_1

    .line 2009
    const-string v1, "PasswordRecoveryEnabled"

    iget-boolean v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mPasswordRecoverable:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2010
    const-string v1, "MaxDevicePasswordFailedAttempts"

    iget v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxPasswordFails:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2011
    const-string v1, "DevicePasswordExpiration"

    iget v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mPasswordExpires:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2012
    const-string v1, "DevicePasswordHistory"

    iget v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mPasswordHistory:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2014
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

    .line 2015
    const-string v1, "MinDevicePasswordLength"

    iget v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mMinPasswordLength:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2018
    :cond_1
    const-string v1, "MaxAttachmentSize"

    iget v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxAttachmentSize:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2019
    const-string v1, "AttachmentsEnabled"

    iget-boolean v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mAttachmentsEnabled:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2021
    iget v0, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxScreenLockTime:I

    .line 2023
    .local v0, inactivityTime:I
    const-string v1, "MaxInactivityTime"

    const/16 v2, 0x270f

    if-lt v0, v2, :cond_6

    move v2, v4

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2024
    const-string v1, "RemoteWipe"

    iget-boolean v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mRequireRemoteWipe:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2026
    const-string v1, "AllowStorageCard"

    iget-boolean v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowStorageCard:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2027
    const-string v1, "AllowCamera"

    iget-boolean v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowCamera:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2028
    const-string v1, "AllowWifi"

    iget-boolean v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowWifi:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2029
    const-string v1, "AllowTextMessaging"

    iget-boolean v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowTextMessaging:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2030
    const-string v1, "AllowPOPIMAPEmail"

    iget-boolean v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowPOPIMAPEmail:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2031
    const-string v1, "AllowHTMLEmail"

    iget-boolean v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowHTMLEmail:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2032
    const-string v1, "AllowBrowser"

    iget-boolean v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowBrowser:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2033
    const-string v1, "AllowInternetSharing"

    iget-boolean v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowInternetSharing:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2034
    const-string v1, "RequireManualSyncWhenRoaming"

    iget-boolean v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mRequireManualSyncWhenRoaming:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2035
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

    .line 2037
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

    .line 2038
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

    .line 2039
    const-string v1, "MaxEmailBodyTruncationSize"

    iget v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxEmailBodyTruncationSize:I

    if-gez v2, :cond_a

    move v2, v4

    :goto_5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2040
    const-string v1, "MaxEmailHtmlBodyTruncationSize"

    iget v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxEmailHtmlBodyTruncationSize:I

    if-gez v2, :cond_b

    move v2, v4

    :goto_6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2041
    const-string v1, "RequireSignedSMIMEMessages"

    iget-boolean v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mRequireSignedSMIMEMessages:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2042
    const-string v1, "RequireEncryptedSMIMEMessages"

    iget-boolean v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mRequireEncryptedSMIMEMessages:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2043
    const-string v1, "RequireSignedSMIMEAlgorithm"

    iget v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mRequireSignedSMIMEAlgorithm:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2044
    const-string v1, "RequireEncryptionSMIMEAlgorithm"

    iget v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mRequireEncryptionSMIMEAlgorithm:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2045
    const-string v1, "AllowSMIMEEncryptionAlgorithmNegotiation"

    iget v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowSMIMEEncryptionAlgorithmNegotiation:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2046
    const-string v1, "AllowSMIMESoftCerts"

    iget-boolean v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowSMIMESoftCerts:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2047
    const-string v1, "AllowDesktopSync"

    iget-boolean v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowDesktopSync:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2048
    const-string v1, "AllowIrDA"

    iget-boolean v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowIrDA:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2049
    const-string v1, "RequireDeviceEncryption"

    iget-boolean v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mRequireDeviceEncryption:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2050
    const-string v1, "RequireStorageCardEncryption"

    iget-boolean v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mRequireStorageCardEncryption:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2052
    return-void

    .line 2014
    .end local v0           #inactivityTime:I
    :cond_5
    iget v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mMinPasswordComplexChars:I

    goto/16 :goto_0

    .restart local v0       #inactivityTime:I
    :cond_6
    move v2, v0

    .line 2023
    goto/16 :goto_1

    .line 2035
    :cond_7
    iget v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowBluetoothMode:I

    goto/16 :goto_2

    .line 2037
    :cond_8
    iget v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxCalendarAgeFilter:I

    goto/16 :goto_3

    .line 2038
    :cond_9
    iget v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxEmailAgeFilter:I

    goto/16 :goto_4

    .line 2039
    :cond_a
    iget v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxEmailBodyTruncationSize:I

    goto/16 :goto_5

    .line 2040
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

    .line 2057
    instance-of v2, p1, Lcom/android/email/SecurityPolicy$PolicySet;

    if-eqz v2, :cond_1

    .line 2058
    move-object v0, p1

    check-cast v0, Lcom/android/email/SecurityPolicy$PolicySet;

    move-object v1, v0

    .line 2059
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

    iget-boolean v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mRequireDeviceEncryption:Z

    iget-boolean v3, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mRequireDeviceEncryption:Z

    if-ne v2, v3, :cond_0

    iget-boolean v2, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mRequireStorageCardEncryption:Z

    iget-boolean v3, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mRequireStorageCardEncryption:Z

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    .line 2103
    .end local v1           #other:Lcom/android/email/SecurityPolicy$PolicySet;
    :goto_0
    return v2

    .restart local v1       #other:Lcom/android/email/SecurityPolicy$PolicySet;
    :cond_0
    move v2, v4

    .line 2059
    goto :goto_0

    .end local v1           #other:Lcom/android/email/SecurityPolicy$PolicySet;
    :cond_1
    move v2, v4

    .line 2103
    goto :goto_0
.end method

.method public getDPManagerPasswordQuality()I
    .locals 1

    .prologue
    .line 1836
    iget v0, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mPasswordMode:I

    packed-switch v0, :pswitch_data_0

    .line 1845
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1838
    :pswitch_1
    const/high16 v0, 0x2

    goto :goto_0

    .line 1840
    :pswitch_2
    const/high16 v0, 0x5

    goto :goto_0

    .line 1843
    :pswitch_3
    const/high16 v0, 0x1

    goto :goto_0

    .line 1836
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 2111
    const/4 v0, 0x0

    .line 2112
    .local v0, flags:I
    iget v1, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mMinPasswordLength:I

    shl-int/lit8 v0, v1, 0x0

    .line 2113
    iget v1, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mPasswordMode:I

    or-int/2addr v0, v1

    .line 2114
    iget v1, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxPasswordFails:I

    shl-int/lit8 v1, v1, 0x9

    or-int/2addr v0, v1

    .line 2115
    iget v1, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxScreenLockTime:I

    shl-int/lit8 v1, v1, 0xe

    or-int/2addr v0, v1

    .line 2116
    iget-boolean v1, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mRequireRemoteWipe:Z

    if-eqz v1, :cond_0

    .line 2117
    const/high16 v1, 0x200

    or-int/2addr v0, v1

    .line 2119
    :cond_0
    return v0
.end method

.method public removePolicyRules(J)V
    .locals 6
    .parameter "accountId"

    .prologue
    .line 1998
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

    .line 1999
    return-void
.end method

.method public storePolicyRules(J)V
    .locals 7
    .parameter

    .prologue
    const-string v0, "Email"

    .line 1969
    const-class v1, Lcom/android/email/SecurityPolicy;

    monitor-enter v1

    .line 1970
    :try_start_0
    const-string v0, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "storePolicyRules() - accountId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1971
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1973
    invoke-direct {p0, v0}, Lcom/android/email/SecurityPolicy$PolicySet;->populateHash(Ljava/util/HashMap;)V

    .line 1975
    invoke-static {}, Lcom/android/email/SecurityPolicy;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1977
    invoke-virtual {p0, p1, p2}, Lcom/android/email/SecurityPolicy$PolicySet;->removePolicyRules(J)V

    .line 1978
    const-string v3, "Email"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " storePolicyRules: removed policies for accountId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1979
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    .line 1980
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1981
    new-instance v4, Lcom/android/email/provider/EmailContent$Policies;

    invoke-direct {v4}, Lcom/android/email/provider/EmailContent$Policies;-><init>()V

    .line 1982
    iput-wide p1, v4, Lcom/android/email/provider/EmailContent$Policies;->mAccountId:J

    .line 1983
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v4, Lcom/android/email/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    .line 1984
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/android/email/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    .line 1985
    sget-boolean v0, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v0, :cond_1

    .line 1986
    const-string v0, "SecurityPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "policy Name:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v4, Lcom/android/email/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", policyValue:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v4, Lcom/android/email/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1987
    :cond_1
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/android/email/provider/EmailContent$Policies;->mType:Ljava/lang/String;

    .line 1988
    sget-object v0, Lcom/android/email/provider/EmailContent$Policies;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Lcom/android/email/provider/EmailContent$Policies;->toContentValues()Landroid/content/ContentValues;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_0

    .line 1991
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1992
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2124
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

    iget v1, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mRequireSignedSMIMEAlgorithm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mRequireEncryptionSMIMEAlgorithm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mRequireEncryptionSMIMEAlgorithm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mAllowSMIMEEncryptionAlgorithmNegotiation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowSMIMEEncryptionAlgorithmNegotiation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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
    .line 1866
    new-instance v9, Lcom/android/email/SecurityPolicy$PolicySet;

    move-object v0, v9

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/android/email/SecurityPolicy$PolicySet;-><init>(Lcom/android/email/provider/EmailContent$Account;)V

    .line 1867
    .local v9, oldPolicy:Lcom/android/email/SecurityPolicy$PolicySet;
    move-object/from16 v0, p0

    move-object v1, v9

    invoke-virtual {v0, v1}, Lcom/android/email/SecurityPolicy$PolicySet;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_8

    const/4 v13, 0x1

    move v6, v13

    .line 1872
    .local v6, dirty:Z
    :goto_0
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/email/provider/EmailContent$Account;->mSecuritySyncKey:Ljava/lang/String;

    .line 1873
    if-eqz p3, :cond_7

    .line 1877
    const/4 v3, 0x0

    .line 1878
    .local v3, changedValues:Z
    const/4 v4, 0x0

    .line 1880
    .local v4, currentSize:I
    move-object/from16 v0, p1

    iget-byte v0, v0, Lcom/android/email/provider/EmailContent$Account;->mEmailSize:B

    move v13, v0

    invoke-static {v13}, Lcom/android/exchange/Eas$EmailDataSize;->parse(B)Lcom/android/exchange/Eas$EmailDataSize;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/exchange/Eas$EmailDataSize;->toEas12Value()I

    move-result v4

    .line 1883
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxEmailBodyTruncationSize:I

    move v10, v0

    .line 1884
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

    .line 1885
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxEmailHtmlBodyTruncationSize:I

    move v13, v0

    div-int/lit16 v7, v13, 0x400

    .line 1886
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

    .line 1887
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowHTMLEmail:Z

    move v8, v0

    .line 1888
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

    .line 1889
    if-eqz v8, :cond_9

    if-lez v7, :cond_9

    .line 1890
    move v11, v7

    .line 1894
    .local v11, restrictedSize:I
    :goto_1
    if-lez v11, :cond_a

    .line 1895
    mul-int/lit16 v11, v11, 0x400

    .line 1898
    :goto_2
    if-ge v11, v4, :cond_1

    .line 1900
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

    .line 1902
    move-object/from16 v0, p1

    iget-byte v0, v0, Lcom/android/email/provider/EmailContent$Account;->mEmailSize:B

    move v13, v0

    if-lez v13, :cond_0

    .line 1903
    invoke-static {v11}, Lcom/android/exchange/Eas$EmailDataSize;->parseToByte(I)B

    move-result v13

    move v0, v13

    move-object/from16 v1, p1

    iput-byte v0, v1, Lcom/android/email/provider/EmailContent$Account;->mEmailSize:B

    .line 1904
    :cond_0
    const/4 v3, 0x1

    .line 1907
    :cond_1
    const/4 v12, 0x6

    .line 1908
    .local v12, restrictedWindow:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxEmailAgeFilter:I

    move v12, v0

    .line 1909
    if-gtz v12, :cond_2

    .line 1910
    const/4 v12, 0x6

    .line 1911
    :cond_2
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/email/provider/EmailContent$Account;->mSyncLookback:I

    move v13, v0

    if-ge v12, v13, :cond_3

    .line 1913
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

    .line 1914
    move v0, v12

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/email/provider/EmailContent$Account;->mSyncLookback:I

    .line 1915
    const/4 v3, 0x1

    .line 1918
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/SecurityPolicy$PolicySet;->mMaxCalendarAgeFilter:I

    move v12, v0

    .line 1919
    if-lez v12, :cond_5

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/email/provider/EmailContent$Account;->mCalendarSyncLookback:I

    move v13, v0

    if-eqz v13, :cond_4

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/email/provider/EmailContent$Account;->mCalendarSyncLookback:I

    move v13, v0

    if-ge v12, v13, :cond_5

    .line 1923
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

    .line 1924
    move v0, v12

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/email/provider/EmailContent$Account;->mCalendarSyncLookback:I

    .line 1925
    const/4 v3, 0x1

    .line 1929
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/android/email/provider/EmailContent$Account;->isSaved()Z

    move-result v13

    if-eqz v13, :cond_c

    .line 1930
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 1932
    .local v5, cv:Landroid/content/ContentValues;
    const-string v13, "securitySyncKey"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Account;->mSecuritySyncKey:Ljava/lang/String;

    move-object v14, v0

    invoke-virtual {v5, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1937
    if-eqz v3, :cond_6

    .line 1940
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

    .line 1941
    const-string v13, "syncLookback"

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/email/provider/EmailContent$Account;->mSyncLookback:I

    move v14, v0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v5, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1943
    const-string v13, "calendarSyncLookback"

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/email/provider/EmailContent$Account;->mCalendarSyncLookback:I

    move v14, v0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v5, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1949
    :cond_6
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/android/email/provider/EmailContent$Account;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 1956
    .end local v5           #cv:Landroid/content/ContentValues;
    :goto_4
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Account;->mId:J

    move-wide v13, v0

    move-object/from16 v0, p0

    move-wide v1, v13

    invoke-virtual {v0, v1, v2}, Lcom/android/email/SecurityPolicy$PolicySet;->storePolicyRules(J)V

    .line 1959
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

    .line 1960
    return v6

    .line 1867
    .end local v6           #dirty:Z
    :cond_8
    const/4 v13, 0x0

    move v6, v13

    goto/16 :goto_0

    .line 1892
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

    .line 1897
    :cond_a
    const v11, 0x7fffffff

    goto/16 :goto_2

    .line 1940
    .restart local v5       #cv:Landroid/content/ContentValues;
    .restart local v12       #restrictedWindow:I
    :cond_b
    const/4 v15, 0x0

    goto :goto_3

    .line 1951
    .end local v5           #cv:Landroid/content/ContentValues;
    :cond_c
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/email/provider/EmailContent$Account;->save(Landroid/content/Context;)Landroid/net/Uri;

    goto :goto_4
.end method
