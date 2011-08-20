.class public Lcom/android/exchange/adapter/ProvisionParser;
.super Lcom/android/exchange/adapter/Parser;
.source "ProvisionParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;
    }
.end annotation


# instance fields
.field mIsSupportable:Z

.field mPolicyKey:Ljava/lang/String;

.field mPolicySet:Lcom/android/email/SecurityPolicy$PolicySet;

.field mPolicyStatus:I

.field mRemoteWipe:Z

.field private mService:Lcom/android/exchange/EasSyncService;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcom/android/exchange/EasSyncService;)V
    .locals 1
    .parameter "in"
    .parameter "service"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/exchange/adapter/Parser;-><init>(Ljava/io/InputStream;)V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exchange/adapter/ProvisionParser;->mPolicySet:Lcom/android/email/SecurityPolicy$PolicySet;

    .line 41
    const-string v0, "0"

    iput-object v0, p0, Lcom/android/exchange/adapter/ProvisionParser;->mPolicyKey:Ljava/lang/String;

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exchange/adapter/ProvisionParser;->mRemoteWipe:Z

    .line 45
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/exchange/adapter/ProvisionParser;->mPolicyStatus:I

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/exchange/adapter/ProvisionParser;->mIsSupportable:Z

    .line 50
    iput-object p2, p0, Lcom/android/exchange/adapter/ProvisionParser;->mService:Lcom/android/exchange/EasSyncService;

    .line 51
    return-void
.end method

.method private parseProvisionDocWbxml()V
    .locals 42
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    const/4 v3, 0x0

    .line 94
    .local v3, minPasswordLength:I
    const/4 v4, 0x0

    .line 95
    .local v4, passwordMode:I
    const/4 v5, 0x0

    .line 96
    .local v5, maxPasswordFails:I
    const/4 v6, 0x0

    .line 98
    .local v6, maxScreenLockTime:I
    const/16 v39, 0x0

    .line 100
    .local v39, passwordEnabled:Z
    const/4 v8, 0x0

    .line 101
    .local v8, passwordRecoverable:Z
    const/4 v9, 0x0

    .line 102
    .local v9, passwordExpires:I
    const/4 v10, 0x0

    .line 103
    .local v10, passwordHistory:I
    const/4 v11, 0x1

    .line 104
    .local v11, attachmentsEnabled:Z
    const/4 v12, 0x0

    .line 107
    .local v12, maxAttachmentSize:I
    const/4 v13, 0x1

    .line 108
    .local v13, allowStorageCard:Z
    const/4 v14, 0x1

    .line 109
    .local v14, allowCamera:Z
    const/4 v15, 0x1

    .line 110
    .local v15, allowWifi:Z
    const/16 v16, 0x1

    .line 111
    .local v16, allowTextMessaging:Z
    const/16 v17, 0x1

    .line 112
    .local v17, allowPOPIMAPEmail:Z
    const/16 v18, 0x1

    .line 113
    .local v18, allowHTMLEmail:Z
    const/16 v19, 0x1

    .line 114
    .local v19, allowBrowser:Z
    const/16 v20, 0x1

    .line 115
    .local v20, allowInternetSharing:Z
    const/16 v21, 0x0

    .line 116
    .local v21, requireManualSyncWhenRoaming:Z
    const/16 v22, 0x2

    .line 117
    .local v22, allowBluetoothMode:I
    const/16 v23, 0x0

    .line 127
    .local v23, minPasswordComplexChars:I
    const/16 v24, 0x0

    .line 128
    .local v24, maxCalendarAgeFilter:I
    const/16 v25, 0x0

    .line 129
    .local v25, maxEmailAgeFilter:I
    const/16 v26, 0x0

    .line 130
    .local v26, maxEmailBodyTruncationSize:I
    const/16 v27, 0x0

    .line 131
    .local v27, maxEmailHtmlBodyTruncationSize:I
    const/16 v28, 0x0

    .line 132
    .local v28, requireSignedSMIMEMessages:Z
    const/16 v29, 0x0

    .line 134
    .local v29, requireEncryptedSMIMEMessages:Z
    const/16 v30, -0x1

    .line 135
    .local v30, requireSignedSMIMEAlgorithm:I
    const/16 v31, -0x1

    .line 136
    .local v31, requireEncryptionSMIMEAlgorithm:I
    const/16 v32, -0x1

    .line 138
    .local v32, allowSMIMEEncryptionAlgorithmNegotiation:I
    const/16 v33, 0x1

    .line 139
    .local v33, allowSMIMESoftCerts:Z
    const/16 v34, 0x1

    .line 140
    .local v34, allowDesktopSync:Z
    const/16 v35, 0x1

    .line 142
    .local v35, allowIrDA:Z
    const/16 v38, 0x1

    .line 144
    .local v38, canSupport:Z
    const/16 v36, 0x0

    .line 145
    .local v36, requireDeviceEncryption:Z
    const/16 v37, 0x0

    .line 147
    .local v37, requireStorageCardEncryption:Z
    :cond_0
    :goto_0
    const/16 v2, 0x38d

    move-object/from16 v0, p0

    move v1, v2

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/ProvisionParser;->nextTag(I)I

    move-result v2

    const/4 v7, 0x3

    if-eq v2, v7, :cond_10

    .line 148
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exchange/adapter/Parser;->tag:I

    move v2, v0

    packed-switch v2, :pswitch_data_0

    .line 394
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->skipTag()V

    goto :goto_0

    .line 151
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v2

    const/4 v7, 0x1

    if-ne v2, v7, :cond_0

    .line 152
    const/16 v39, 0x1

    .line 153
    if-nez v4, :cond_0

    .line 154
    const/4 v4, 0x1

    goto :goto_0

    .line 159
    :pswitch_2
    if-eqz v39, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->hasContent()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 160
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v40

    .line 161
    .local v40, val:I
    move/from16 v3, v40

    goto :goto_0

    .line 162
    .end local v40           #val:I
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->skipTag()V

    goto :goto_0

    .line 165
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v2

    const/4 v7, 0x1

    if-ne v2, v7, :cond_0

    if-eqz v39, :cond_0

    .line 166
    const/4 v4, 0x4

    goto :goto_0

    .line 170
    :pswitch_4
    if-eqz v39, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->hasContent()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 171
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v40

    .line 172
    .restart local v40       #val:I
    move/from16 v6, v40

    goto :goto_0

    .line 173
    .end local v40           #val:I
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->skipTag()V

    goto :goto_0

    .line 176
    :pswitch_5
    if-eqz v39, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->hasContent()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 177
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v5

    goto :goto_0

    .line 178
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->skipTag()V

    goto :goto_0

    .line 183
    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v2

    const/4 v7, 0x1

    if-ne v2, v7, :cond_0

    if-eqz v39, :cond_0

    .line 184
    const/4 v4, 0x2

    goto :goto_0

    .line 188
    :pswitch_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v2

    if-nez v2, :cond_0

    .line 189
    const/4 v11, 0x0

    goto :goto_0

    .line 193
    :pswitch_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v2

    const/4 v7, 0x1

    if-ne v2, v7, :cond_0

    if-eqz v39, :cond_0

    .line 194
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 198
    :pswitch_9
    if-eqz v39, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->hasContent()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 199
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v9

    if-gez v9, :cond_0

    .line 200
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 201
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->skipTag()V

    goto/16 :goto_0

    .line 204
    :pswitch_a
    if-eqz v39, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->hasContent()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 205
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v10

    if-gez v10, :cond_0

    .line 206
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 207
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->skipTag()V

    goto/16 :goto_0

    .line 210
    :pswitch_b
    if-eqz v11, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->hasContent()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 211
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v12

    goto/16 :goto_0

    .line 212
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->skipTag()V

    goto/16 :goto_0

    .line 220
    :pswitch_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->hasContent()Z

    move-result v2

    if-eqz v2, :cond_7

    if-eqz v39, :cond_7

    .line 221
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v2

    const/4 v7, 0x1

    if-ne v2, v7, :cond_0

    .line 222
    const/16 v37, 0x1

    goto/16 :goto_0

    .line 224
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->skipTag()V

    goto/16 :goto_0

    .line 227
    :pswitch_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->hasContent()Z

    move-result v2

    if-eqz v2, :cond_8

    if-eqz v39, :cond_8

    .line 228
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v2

    const/4 v7, 0x1

    if-ne v2, v7, :cond_0

    .line 229
    const/16 v36, 0x1

    goto/16 :goto_0

    .line 231
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->skipTag()V

    goto/16 :goto_0

    .line 236
    :pswitch_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v2

    if-nez v2, :cond_0

    .line 237
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 241
    :pswitch_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v2

    if-nez v2, :cond_0

    .line 242
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 246
    :pswitch_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v2

    if-nez v2, :cond_0

    .line 247
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 251
    :pswitch_11
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v2

    if-nez v2, :cond_0

    .line 252
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 257
    :pswitch_12
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v2

    if-nez v2, :cond_0

    .line 258
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 262
    :pswitch_13
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v2

    if-nez v2, :cond_0

    .line 263
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 267
    :pswitch_14
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v2

    if-nez v2, :cond_0

    .line 268
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 272
    :pswitch_15
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v2

    if-nez v2, :cond_0

    .line 273
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 277
    :pswitch_16
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v2

    const/4 v7, 0x1

    if-ne v2, v7, :cond_0

    .line 279
    const/16 v21, 0x1

    goto/16 :goto_0

    .line 283
    :pswitch_17
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v22

    .line 284
    goto/16 :goto_0

    .line 286
    :pswitch_18
    if-eqz v39, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->hasContent()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 287
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v23

    goto/16 :goto_0

    .line 288
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->skipTag()V

    goto/16 :goto_0

    .line 291
    :pswitch_19
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v24

    .line 292
    goto/16 :goto_0

    .line 294
    :pswitch_1a
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v25

    .line 295
    goto/16 :goto_0

    .line 297
    :pswitch_1b
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v26

    if-gez v26, :cond_0

    .line 298
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 301
    :pswitch_1c
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v27

    if-gez v27, :cond_0

    .line 302
    const/16 v27, 0x0

    goto/16 :goto_0

    .line 305
    :pswitch_1d
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v2

    const/4 v7, 0x1

    if-ne v2, v7, :cond_0

    .line 307
    const/4 v2, 0x0

    move v0, v2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/exchange/adapter/ProvisionParser;->mIsSupportable:Z

    goto/16 :goto_0

    .line 311
    :pswitch_1e
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v2

    const/4 v7, 0x1

    if-ne v2, v7, :cond_0

    .line 313
    const/4 v2, 0x0

    move v0, v2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/exchange/adapter/ProvisionParser;->mIsSupportable:Z

    goto/16 :goto_0

    .line 318
    :pswitch_1f
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->hasContent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 320
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->skipTag()V

    goto/16 :goto_0

    .line 324
    :pswitch_20
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->hasContent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 326
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->skipTag()V

    goto/16 :goto_0

    .line 330
    :pswitch_21
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->hasContent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 332
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->skipTag()V

    goto/16 :goto_0

    .line 337
    :pswitch_22
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v2

    if-nez v2, :cond_0

    .line 339
    const/4 v2, 0x0

    move v0, v2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/exchange/adapter/ProvisionParser;->mIsSupportable:Z

    goto/16 :goto_0

    .line 343
    :pswitch_23
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v2

    if-nez v2, :cond_0

    .line 344
    const/16 v34, 0x0

    goto/16 :goto_0

    .line 348
    :pswitch_24
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v2

    if-nez v2, :cond_0

    .line 349
    const/16 v35, 0x0

    goto/16 :goto_0

    .line 356
    :pswitch_25
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v2

    if-nez v2, :cond_0

    .line 357
    sget-boolean v2, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v2, :cond_a

    .line 358
    const-string v2, "Parser"

    const-string v7, "AllowUnsignedApplications is not supported by device"

    invoke-static {v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    :cond_a
    const/4 v2, 0x0

    move v0, v2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/exchange/adapter/ProvisionParser;->mIsSupportable:Z

    goto/16 :goto_0

    .line 364
    :pswitch_26
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v2

    if-nez v2, :cond_0

    .line 365
    sget-boolean v2, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v2, :cond_b

    .line 366
    const-string v2, "Parser"

    const-string v7, "AllowUnsignedInstallationPackages is not supported by device"

    invoke-static {v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    :cond_b
    const/4 v2, 0x0

    move v0, v2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/exchange/adapter/ProvisionParser;->mIsSupportable:Z

    goto/16 :goto_0

    .line 373
    :pswitch_27
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->hasContent()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 374
    sget-boolean v2, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v2, :cond_c

    .line 375
    const-string v2, "Parser"

    const-string v7, "UnapprovedInRomApplicationList is not supported by device"

    invoke-static {v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    :cond_c
    const/4 v2, 0x0

    move v0, v2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/exchange/adapter/ProvisionParser;->mIsSupportable:Z

    .line 379
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->skipTag()V

    goto/16 :goto_0

    .line 382
    :pswitch_28
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->hasContent()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 383
    sget-boolean v2, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v2, :cond_e

    .line 384
    const-string v2, "Parser"

    const-string v7, "ApprovedApplicationList is not supported by device"

    invoke-static {v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    :cond_e
    const/4 v2, 0x0

    move v0, v2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/exchange/adapter/ProvisionParser;->mIsSupportable:Z

    .line 388
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->skipTag()V

    goto/16 :goto_0

    .line 398
    :cond_10
    if-eqz v38, :cond_11

    .line 400
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/ProvisionParser;->mService:Lcom/android/exchange/EasSyncService;

    move-object v2, v0

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/16 v38, 0x0

    const-string v40, "ProvisionParser"

    .end local v38           #canSupport:Z
    aput-object v40, v7, v38

    const/16 v38, 0x1

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "PasswordEnabled = "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v39

    .end local v39           #passwordEnabled:Z
    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    aput-object v39, v7, v38

    invoke-virtual {v2, v7}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 402
    new-instance v2, Lcom/android/email/SecurityPolicy$PolicySet;

    const/4 v7, 0x1

    invoke-direct/range {v2 .. v37}, Lcom/android/email/SecurityPolicy$PolicySet;-><init>(IIIIZZIIZIZZZZZZZZZIIIIIIZZIIIZZZZZ)V

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exchange/adapter/ProvisionParser;->mPolicySet:Lcom/android/email/SecurityPolicy$PolicySet;

    .line 417
    :cond_11
    return-void

    .line 148
    nop

    :pswitch_data_0
    .packed-switch 0x38e
        :pswitch_1
        :pswitch_3
        :pswitch_c
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_b
        :pswitch_6
        :pswitch_9
        :pswitch_a
        :pswitch_e
        :pswitch_f
        :pswitch_d
        :pswitch_25
        :pswitch_26
        :pswitch_18
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_17
        :pswitch_24
        :pswitch_16
        :pswitch_23
        :pswitch_19
        :pswitch_13
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_14
        :pswitch_12
        :pswitch_0
        :pswitch_15
        :pswitch_27
        :pswitch_0
        :pswitch_28
    .end packed-switch
.end method


# virtual methods
.method public getPolicyKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/exchange/adapter/ProvisionParser;->mPolicyKey:Ljava/lang/String;

    return-object v0
.end method

.method public getPolicySet()Lcom/android/email/SecurityPolicy$PolicySet;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/exchange/adapter/ProvisionParser;->mPolicySet:Lcom/android/email/SecurityPolicy$PolicySet;

    return-object v0
.end method

.method public getPolicyStatus()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/android/exchange/adapter/ProvisionParser;->mPolicyStatus:I

    return v0
.end method

.method public getRemoteWipe()Z
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/android/exchange/adapter/ProvisionParser;->mRemoteWipe:Z

    return v0
.end method

.method public hasSupportablePolicySet()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 72
    iget-object v0, p0, Lcom/android/exchange/adapter/ProvisionParser;->mPolicySet:Lcom/android/email/SecurityPolicy$PolicySet;

    if-nez v0, :cond_0

    move v0, v2

    .line 88
    :goto_0
    return v0

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/android/exchange/adapter/ProvisionParser;->mPolicySet:Lcom/android/email/SecurityPolicy$PolicySet;

    iget v0, v0, Lcom/android/email/SecurityPolicy$PolicySet;->mMinPasswordLength:I

    const/16 v1, 0x10

    if-le v0, v1, :cond_1

    move v0, v2

    .line 77
    goto :goto_0

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/android/exchange/adapter/ProvisionParser;->mPolicySet:Lcom/android/email/SecurityPolicy$PolicySet;

    iget v0, v0, Lcom/android/email/SecurityPolicy$PolicySet;->mPasswordMode:I

    const/4 v1, 0x4

    if-le v0, v1, :cond_2

    move v0, v2

    .line 81
    goto :goto_0

    .line 85
    :cond_2
    iget-boolean v0, p0, Lcom/android/exchange/adapter/ProvisionParser;->mIsSupportable:Z

    if-nez v0, :cond_3

    move v0, v2

    .line 86
    goto :goto_0

    .line 88
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public parse()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 660
    const/4 v0, 0x0

    .line 661
    .local v0, res:Z
    invoke-virtual {p0, v4}, Lcom/android/exchange/adapter/ProvisionParser;->nextTag(I)I

    move-result v2

    const/16 v3, 0x385

    if-eq v2, v3, :cond_0

    .line 662
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    .line 667
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v1

    .line 668
    .local v1, status:I
    iget-object v2, p0, Lcom/android/exchange/adapter/ProvisionParser;->mService:Lcom/android/exchange/EasSyncService;

    const-string v3, "Provision status: "

    invoke-virtual {v2, v3, v1}, Lcom/android/exchange/EasSyncService;->userLog(Ljava/lang/String;I)V

    .line 669
    if-ne v1, v5, :cond_1

    move v0, v5

    .line 664
    .end local v1           #status:I
    :cond_0
    :goto_0
    invoke-virtual {p0, v4}, Lcom/android/exchange/adapter/ProvisionParser;->nextTag(I)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_4

    .line 665
    iget v2, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    sparse-switch v2, :sswitch_data_0

    .line 684
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ProvisionParser;->skipTag()V

    goto :goto_0

    .restart local v1       #status:I
    :cond_1
    move v0, v4

    .line 669
    goto :goto_0

    .line 672
    .end local v1           #status:I
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ProvisionParser;->parsePolicies()V

    .line 674
    iget-object v2, p0, Lcom/android/exchange/adapter/ProvisionParser;->mPolicySet:Lcom/android/email/SecurityPolicy$PolicySet;

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/exchange/adapter/ProvisionParser;->mPolicyKey:Ljava/lang/String;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    move v0, v5

    .line 675
    :goto_1
    goto :goto_0

    :cond_3
    move v0, v4

    .line 674
    goto :goto_1

    .line 678
    :sswitch_2
    iput-boolean v5, p0, Lcom/android/exchange/adapter/ProvisionParser;->mRemoteWipe:Z

    .line 681
    const/4 v0, 0x1

    .line 682
    goto :goto_0

    .line 687
    :cond_4
    return v0

    .line 665
    nop

    :sswitch_data_0
    .sparse-switch
        0x386 -> :sswitch_1
        0x38b -> :sswitch_0
        0x38c -> :sswitch_2
    .end sparse-switch
.end method

.method parseCharacteristic(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;)V
    .locals 9
    .parameter "parser"
    .parameter "sps"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x2

    const-string v6, "0"

    .line 528
    const/4 v0, 0x1

    .line 530
    .local v0, enforceInactivityTimer:Z
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v2

    .line 531
    .local v2, type:I
    const/4 v4, 0x3

    if-ne v2, v4, :cond_1

    const-string v4, "characteristic"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 566
    return-void

    .line 533
    :cond_1
    if-ne v2, v7, :cond_0

    .line 534
    const-string v4, "parm"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 535
    const-string v4, "name"

    invoke-interface {p1, v8, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 536
    .local v1, name:Ljava/lang/String;
    const-string v4, "value"

    invoke-interface {p1, v8, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 537
    .local v3, value:Ljava/lang/String;
    const-string v4, "AEFrequencyValue"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 538
    if-eqz v0, :cond_0

    .line 539
    const-string v4, "0"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 540
    const/4 v4, 0x1

    iput v4, p2, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mMaxScreenLockTime:I

    goto :goto_0

    .line 542
    :cond_2
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    mul-int/lit8 v4, v4, 0x3c

    iput v4, p2, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mMaxScreenLockTime:I

    goto :goto_0

    .line 545
    :cond_3
    const-string v4, "AEFrequencyType"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 547
    const-string v4, "0"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 548
    const/4 v0, 0x0

    goto :goto_0

    .line 550
    :cond_4
    const-string v4, "DeviceWipeThreshold"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 551
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mMaxPasswordFails:I

    goto :goto_0

    .line 552
    :cond_5
    const-string v4, "CodewordFrequency"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 554
    const-string v4, "MinimumPasswordLength"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 555
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mMinPasswordLength:I

    goto/16 :goto_0

    .line 556
    :cond_6
    const-string v4, "PasswordComplexity"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 557
    const-string v4, "0"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 558
    const/4 v4, 0x4

    iput v4, p2, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mPasswordMode:I

    goto/16 :goto_0

    .line 560
    :cond_7
    iput v7, p2, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mPasswordMode:I

    goto/16 :goto_0
.end method

.method public parsePolicies()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 649
    :goto_0
    const/16 v0, 0x386

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/ProvisionParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 650
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v1, 0x387

    if-ne v0, v1, :cond_0

    .line 651
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ProvisionParser;->parsePolicy()V

    goto :goto_0

    .line 653
    :cond_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ProvisionParser;->skipTag()V

    goto :goto_0

    .line 656
    :cond_1
    return-void
.end method

.method public parsePolicy()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 618
    const/4 v0, 0x0

    .line 619
    .local v0, policyType:Ljava/lang/String;
    :goto_0
    const/16 v1, 0x387

    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/ProvisionParser;->nextTag(I)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    .line 620
    iget v1, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    packed-switch v1, :pswitch_data_0

    .line 643
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ProvisionParser;->skipTag()V

    goto :goto_0

    .line 622
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 623
    iget-object v1, p0, Lcom/android/exchange/adapter/ProvisionParser;->mService:Lcom/android/exchange/EasSyncService;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "Policy type: "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    goto :goto_0

    .line 626
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValue()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exchange/adapter/ProvisionParser;->mPolicyKey:Ljava/lang/String;

    goto :goto_0

    .line 630
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v1

    iput v1, p0, Lcom/android/exchange/adapter/ProvisionParser;->mPolicyStatus:I

    .line 631
    iget-object v1, p0, Lcom/android/exchange/adapter/ProvisionParser;->mService:Lcom/android/exchange/EasSyncService;

    const-string v2, "Policy status: "

    iget v3, p0, Lcom/android/exchange/adapter/ProvisionParser;->mPolicyStatus:I

    invoke-virtual {v1, v2, v3}, Lcom/android/exchange/EasSyncService;->userLog(Ljava/lang/String;I)V

    goto :goto_0

    .line 634
    :pswitch_3
    const-string v1, "MS-WAP-Provisioning-XML"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 636
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/ProvisionParser;->parseProvisionDocXml(Ljava/lang/String;)V

    goto :goto_0

    .line 639
    :cond_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ProvisionParser;->parseProvisionData()V

    goto :goto_0

    .line 646
    :cond_1
    return-void

    .line 620
    :pswitch_data_0
    .packed-switch 0x388
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public parseProvisionData()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 608
    :goto_0
    const/16 v0, 0x38a

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/ProvisionParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 609
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v1, 0x38d

    if-ne v0, v1, :cond_0

    .line 610
    invoke-direct {p0}, Lcom/android/exchange/adapter/ProvisionParser;->parseProvisionDocWbxml()V

    goto :goto_0

    .line 612
    :cond_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ProvisionParser;->skipTag()V

    goto :goto_0

    .line 615
    :cond_1
    return-void
.end method

.method public parseProvisionDocXml(Ljava/lang/String;)V
    .locals 45
    .parameter "doc"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 463
    new-instance v42, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;

    move-object/from16 v0, v42

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;-><init>(Lcom/android/exchange/adapter/ProvisionParser;)V

    .line 466
    .local v42, sps:Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v40

    .line 467
    .local v40, factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual/range {v40 .. v40}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v41

    .line 468
    .local v41, parser:Lorg/xmlpull/v1/XmlPullParser;
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v4, "UTF-8"

    move-object/from16 v0, v41

    move-object v1, v3

    move-object v2, v4

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 469
    invoke-interface/range {v41 .. v41}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v44

    .line 470
    .local v44, type:I
    if-nez v44, :cond_0

    .line 471
    invoke-interface/range {v41 .. v41}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v44

    .line 472
    const/4 v3, 0x2

    move/from16 v0, v44

    move v1, v3

    if-ne v0, v1, :cond_0

    .line 473
    invoke-interface/range {v41 .. v41}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v43

    .line 474
    .local v43, tagName:Ljava/lang/String;
    const-string v3, "wap-provisioningdoc"

    move-object v0, v3

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 475
    move-object/from16 v0, p0

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/ProvisionParser;->parseWapProvisioningDoc(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 484
    .end local v43           #tagName:Ljava/lang/String;
    :cond_0
    new-instance v3, Lcom/android/email/SecurityPolicy$PolicySet;

    move-object/from16 v0, v42

    iget v0, v0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mMinPasswordLength:I

    move v4, v0

    move-object/from16 v0, v42

    iget v0, v0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mPasswordMode:I

    move v5, v0

    move-object/from16 v0, v42

    iget v0, v0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mMaxPasswordFails:I

    move v6, v0

    move-object/from16 v0, v42

    iget v0, v0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mMaxScreenLockTime:I

    move v7, v0

    const/4 v8, 0x1

    move-object/from16 v0, v42

    iget-boolean v0, v0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mPasswordRecoverable:Z

    move v9, v0

    move-object/from16 v0, v42

    iget v0, v0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mPasswordExpires:I

    move v10, v0

    move-object/from16 v0, v42

    iget v0, v0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mPasswordHistory:I

    move v11, v0

    move-object/from16 v0, v42

    iget-boolean v0, v0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mAttachmentsEnabled:Z

    move v12, v0

    move-object/from16 v0, v42

    iget v0, v0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mMaxAttachmentSize:I

    move v13, v0

    move-object/from16 v0, v42

    iget-boolean v0, v0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mAllowStorageCard:Z

    move v14, v0

    move-object/from16 v0, v42

    iget-boolean v0, v0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mAllowCamera:Z

    move v15, v0

    move-object/from16 v0, v42

    iget-boolean v0, v0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mAllowWifi:Z

    move/from16 v16, v0

    move-object/from16 v0, v42

    iget-boolean v0, v0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mAllowTextMessaging:Z

    move/from16 v17, v0

    move-object/from16 v0, v42

    iget-boolean v0, v0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mAllowPOPIMAPEmail:Z

    move/from16 v18, v0

    move-object/from16 v0, v42

    iget-boolean v0, v0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mAllowHTMLEmail:Z

    move/from16 v19, v0

    move-object/from16 v0, v42

    iget-boolean v0, v0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mAllowBrowser:Z

    move/from16 v20, v0

    move-object/from16 v0, v42

    iget-boolean v0, v0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mAllowInternetSharing:Z

    move/from16 v21, v0

    move-object/from16 v0, v42

    iget-boolean v0, v0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mRequireManualSyncWhenRoaming:Z

    move/from16 v22, v0

    move-object/from16 v0, v42

    iget v0, v0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mAllowBluetoothMode:I

    move/from16 v23, v0

    move-object/from16 v0, v42

    iget v0, v0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mMinPasswordComplexChars:I

    move/from16 v24, v0

    move-object/from16 v0, v42

    iget v0, v0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mMaxCalendarAgeFilter:I

    move/from16 v25, v0

    move-object/from16 v0, v42

    iget v0, v0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mMaxEmailAgeFilter:I

    move/from16 v26, v0

    move-object/from16 v0, v42

    iget v0, v0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mMaxEmailBodyTruncationSize:I

    move/from16 v27, v0

    move-object/from16 v0, v42

    iget v0, v0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mMaxEmailHtmlBodyTruncationSize:I

    move/from16 v28, v0

    move-object/from16 v0, v42

    iget-boolean v0, v0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mRequireSignedSMIMEMessages:Z

    move/from16 v29, v0

    move-object/from16 v0, v42

    iget-boolean v0, v0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mRequireEncryptedSMIMEMessages:Z

    move/from16 v30, v0

    move-object/from16 v0, v42

    iget v0, v0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mRequireSignedSMIMEAlgorithm:I

    move/from16 v31, v0

    move-object/from16 v0, v42

    iget v0, v0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mRequireEncryptionSMIMEAlgorithm:I

    move/from16 v32, v0

    move-object/from16 v0, v42

    iget v0, v0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mAllowSMIMEEncryptionAlgorithmNegotiation:I

    move/from16 v33, v0

    move-object/from16 v0, v42

    iget-boolean v0, v0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mAllowSMIMESoftCerts:Z

    move/from16 v34, v0

    move-object/from16 v0, v42

    iget-boolean v0, v0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mAllowDesktopSync:Z

    move/from16 v35, v0

    move-object/from16 v0, v42

    iget-boolean v0, v0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mAllowIrDA:Z

    move/from16 v36, v0

    move-object/from16 v0, v42

    iget-boolean v0, v0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mRequireDeviceEncryption:Z

    move/from16 v37, v0

    move-object/from16 v0, v42

    iget-boolean v0, v0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mRequireStorageCardEncryption:Z

    move/from16 v38, v0

    invoke-direct/range {v3 .. v38}, Lcom/android/email/SecurityPolicy$PolicySet;-><init>(IIIIZZIIZIZZZZZZZZZIIIIIIZZIIIZZZZZ)V

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exchange/adapter/ProvisionParser;->mPolicySet:Lcom/android/email/SecurityPolicy$PolicySet;

    .line 498
    return-void

    .line 479
    .end local v40           #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v41           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v44           #type:I
    :catch_0
    move-exception v3

    move-object/from16 v39, v3

    .line 480
    .local v39, e:Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3}, Ljava/io/IOException;-><init>()V

    throw v3
.end method

.method parseRegistry(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;)V
    .locals 4
    .parameter "parser"
    .parameter "sps"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v3, "characteristic"

    .line 571
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v1

    .line 572
    .local v1, type:I
    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    const-string v2, "characteristic"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 581
    return-void

    .line 574
    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 575
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 576
    .local v0, name:Ljava/lang/String;
    const-string v2, "characteristic"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 577
    invoke-virtual {p0, p1, p2}, Lcom/android/exchange/adapter/ProvisionParser;->parseCharacteristic(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;)V

    goto :goto_0
.end method

.method parseSecurityPolicy(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;)Z
    .locals 8
    .parameter "parser"
    .parameter "sps"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 505
    const/4 v1, 0x1

    .line 507
    .local v1, passwordRequired:Z
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v3

    .line 508
    .local v3, type:I
    const/4 v5, 0x3

    if-ne v3, v5, :cond_1

    const-string v5, "characteristic"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 523
    return v1

    .line 510
    :cond_1
    const/4 v5, 0x2

    if-ne v3, v5, :cond_0

    .line 511
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 512
    .local v2, tagName:Ljava/lang/String;
    const-string v5, "parm"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 513
    const-string v5, "name"

    invoke-interface {p1, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 514
    .local v0, name:Ljava/lang/String;
    const-string v5, "4131"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 515
    const-string v5, "value"

    invoke-interface {p1, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 516
    .local v4, value:Ljava/lang/String;
    const-string v5, "1"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 517
    const/4 v1, 0x0

    goto :goto_0
.end method

.method parseWapProvisioningDoc(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;)V
    .locals 5
    .parameter "parser"
    .parameter "sps"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 586
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v2

    .line 587
    .local v2, type:I
    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    const-string v3, "wap-provisioningdoc"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 605
    :goto_0
    return-void

    .line 589
    :cond_1
    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 590
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 591
    .local v1, name:Ljava/lang/String;
    const-string v3, "characteristic"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 592
    const/4 v3, 0x0

    const-string v4, "type"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 593
    .local v0, atype:Ljava/lang/String;
    const-string v3, "SecurityPolicy"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 595
    invoke-virtual {p0, p1, p2}, Lcom/android/exchange/adapter/ProvisionParser;->parseSecurityPolicy(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 598
    :cond_2
    const-string v3, "Registry"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 599
    invoke-virtual {p0, p1, p2}, Lcom/android/exchange/adapter/ProvisionParser;->parseRegistry(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;)V

    goto :goto_0
.end method
