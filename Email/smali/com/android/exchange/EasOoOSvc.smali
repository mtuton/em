.class public Lcom/android/exchange/EasOoOSvc;
.super Lcom/android/exchange/EasSyncService;
.source "EasOoOSvc.java"


# instance fields
.field private mEndDate:Ljava/util/Date;

.field private mExternalKnownMsg:Ljava/lang/String;

.field private mExternalUnKnownMsg:Ljava/lang/String;

.field private mInternalMsg:Ljava/lang/String;

.field private mIsExtKnown:Z

.field private mIsExtUnKnown:Z

.field private mIsGlobal:Z

.field private mIsInternal:Z

.field private mIsTimeBased:Z

.field private mStartDate:Ljava/util/Date;

.field private mSvcData:Lcom/android/exchange/OoODataList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/email/provider/EmailContent$Account;Lcom/android/exchange/OoODataList;)V
    .locals 5
    .parameter "_context"
    .parameter "_acc"
    .parameter "data"

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Lcom/android/exchange/EasSyncService;-><init>(Landroid/content/Context;Lcom/android/email/provider/EmailContent$Account;)V

    .line 76
    iput-object p3, p0, Lcom/android/exchange/EasOoOSvc;->mSvcData:Lcom/android/exchange/OoODataList;

    .line 77
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/exchange/EasOoOSvc;->mIsExtUnKnown:Z

    iput-boolean v2, p0, Lcom/android/exchange/EasOoOSvc;->mIsExtKnown:Z

    iput-boolean v2, p0, Lcom/android/exchange/EasOoOSvc;->mIsInternal:Z

    iput-boolean v2, p0, Lcom/android/exchange/EasOoOSvc;->mIsGlobal:Z

    iput-boolean v2, p0, Lcom/android/exchange/EasOoOSvc;->mIsTimeBased:Z

    .line 78
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    iput-object v2, p0, Lcom/android/exchange/EasOoOSvc;->mStartDate:Ljava/util/Date;

    .line 79
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    iput-object v2, p0, Lcom/android/exchange/EasOoOSvc;->mEndDate:Ljava/util/Date;

    .line 81
    iget-object v2, p0, Lcom/android/exchange/EasOoOSvc;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v2, v2, Lcom/android/email/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/exchange/EasOoOSvc;->mProtocolVersion:Ljava/lang/String;

    .line 82
    iget-object v2, p0, Lcom/android/exchange/EasOoOSvc;->mProtocolVersion:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exchange/EasOoOSvc;->mProtocolVersionDouble:Ljava/lang/Double;

    .line 85
    iget-object v2, p0, Lcom/android/exchange/EasOoOSvc;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    sget-wide v3, Lcom/android/exchange/SyncManager;->MAILBOX_DUMMY_OoO:J

    iput-wide v3, v2, Lcom/android/email/provider/EmailContent$Mailbox;->mId:J

    .line 86
    iget-object v2, p0, Lcom/android/exchange/EasOoOSvc;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-wide v2, v2, Lcom/android/email/provider/EmailContent$Mailbox;->mId:J

    iput-wide v2, p0, Lcom/android/exchange/EasOoOSvc;->mMailboxId:J

    .line 87
    iget-object v2, p0, Lcom/android/exchange/EasOoOSvc;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    const-string v3, "OoO"

    iput-object v3, v2, Lcom/android/email/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    .line 90
    iget-object v2, p0, Lcom/android/exchange/EasOoOSvc;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v2, v2, Lcom/android/email/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    invoke-static {p1, v2, v3}, Lcom/android/email/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$HostAuth;

    move-result-object v1

    .line 92
    .local v1, ha:Lcom/android/email/provider/EmailContent$HostAuth;
    iget-object v2, v1, Lcom/android/email/provider/EmailContent$HostAuth;->mAddress:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/exchange/EasOoOSvc;->mHostAddress:Ljava/lang/String;

    .line 93
    iget-object v2, v1, Lcom/android/email/provider/EmailContent$HostAuth;->mLogin:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/exchange/EasOoOSvc;->mUserName:Ljava/lang/String;

    .line 94
    iget-object v2, v1, Lcom/android/email/provider/EmailContent$HostAuth;->mPassword:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/exchange/EasOoOSvc;->mPassword:Ljava/lang/String;

    .line 96
    :try_start_0
    invoke-static {}, Lcom/android/exchange/SyncManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exchange/EasOoOSvc;->mDeviceId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :goto_0
    return-void

    .line 97
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 98
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "android_out_of_office"

    iput-object v2, p0, Lcom/android/exchange/EasOoOSvc;->mDeviceId:Ljava/lang/String;

    goto :goto_0
.end method

.method private convertLocalToUTC(J)Ljava/lang/String;
    .locals 6
    .parameter "millis"

    .prologue
    const/4 v5, 0x0

    .line 105
    new-instance v2, Landroid/text/format/Time;

    const-string v3, "UTC"

    invoke-direct {v2, v3}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 106
    .local v2, utcTime:Landroid/text/format/Time;
    invoke-virtual {v2, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 107
    invoke-virtual {v2, v5}, Landroid/text/format/Time;->format3339(Z)Ljava/lang/String;

    move-result-object v1

    .line 109
    .local v1, result:Ljava/lang/String;
    const-string v3, "000"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, actualResult:[Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 111
    aget-object v3, v0, v5

    if-eqz v3, :cond_0

    .line 112
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v0, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "000Z"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v5

    .line 113
    aget-object v3, v0, v5

    .line 116
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private getOoO()I
    .locals 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasOoOSvc;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v4, v0

    iget-wide v5, v4, Lcom/android/email/provider/EmailContent$Account;->mId:J

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/exchange/EasOoOSvc;->outOfOfficeCb(JIILandroid/os/Bundle;)V

    .line 365
    const/16 v24, 0x0

    .line 367
    .local v24, result:I
    new-instance v25, Lcom/android/exchange/adapter/Serializer;

    invoke-direct/range {v25 .. v25}, Lcom/android/exchange/adapter/Serializer;-><init>()V

    .line 369
    .local v25, s:Lcom/android/exchange/adapter/Serializer;
    const/16 v4, 0x485

    move-object/from16 v0, v25

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v4

    const/16 v5, 0x489

    invoke-virtual {v4, v5}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v4

    const/16 v5, 0x487

    invoke-virtual {v4, v5}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v4

    const/16 v5, 0x493

    invoke-virtual {v4, v5}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v4

    const-string v5, "text"

    invoke-virtual {v4, v5}, Lcom/android/exchange/adapter/Serializer;->text(Ljava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/exchange/adapter/Serializer;->done()V

    .line 378
    :try_start_0
    sget-boolean v4, Lcom/android/exchange/Eas;->PARSER_LOG:Z

    if-eqz v4, :cond_0

    .line 379
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "getOoO(): Wbxml:"

    aput-object v6, v4, v5

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasOoOSvc;->userLog([Ljava/lang/String;)V

    .line 380
    invoke-virtual/range {v25 .. v25}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v16

    .line 381
    .local v16, b:[B
    new-instance v17, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 382
    .local v17, byTe:Ljava/io/ByteArrayInputStream;
    new-instance v22, Lcom/android/exchange/adapter/LogAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasOoOSvc;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    move-object v4, v0

    move-object/from16 v0, v22

    move-object v1, v4

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/adapter/LogAdapter;-><init>(Lcom/android/email/provider/EmailContent$Mailbox;Lcom/android/exchange/EasSyncService;)V

    .line 383
    .local v22, logA:Lcom/android/exchange/adapter/LogAdapter;
    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/LogAdapter;->parse(Ljava/io/InputStream;)Z

    .line 387
    .end local v16           #b:[B
    .end local v17           #byTe:Ljava/io/ByteArrayInputStream;
    .end local v22           #logA:Lcom/android/exchange/adapter/LogAdapter;
    :cond_0
    const-string v4, "Settings"

    new-instance v5, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-virtual/range {v25 .. v25}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    const v6, 0xea60

    move-object/from16 v0, p0

    move-object v1, v4

    move-object v2, v5

    move v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/exchange/EasOoOSvc;->sendHttpClientPost(Ljava/lang/String;Lorg/apache/http/HttpEntity;I)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v23

    .line 395
    .local v23, resp:Lorg/apache/http/HttpResponse;
    invoke-interface/range {v23 .. v23}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v27

    .line 398
    .local v27, status:I
    const-string v4, "getOoO(): sendHttpClientPost HTTP response code: "

    move-object/from16 v0, p0

    move-object v1, v4

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/EasOoOSvc;->userLog(Ljava/lang/String;I)V

    .line 400
    const/16 v4, 0xc8

    move/from16 v0, v27

    move v1, v4

    if-ne v0, v1, :cond_3

    .line 402
    invoke-interface/range {v23 .. v23}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v19

    .line 404
    .local v19, entity:Lorg/apache/http/HttpEntity;
    invoke-interface/range {v19 .. v19}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v4

    move-wide v0, v4

    long-to-int v0, v0

    move/from16 v21, v0

    .line 406
    .local v21, len:I
    if-eqz v21, :cond_2

    .line 407
    invoke-interface/range {v19 .. v19}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v20

    .line 408
    .local v20, in:Ljava/io/InputStream;
    new-instance v26, Lcom/android/exchange/adapter/OoOCommandParser;

    new-instance v4, Lcom/android/exchange/adapter/SettingsCommandAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasOoOSvc;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    move-object v5, v0

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/adapter/SettingsCommandAdapter;-><init>(Lcom/android/email/provider/EmailContent$Mailbox;Lcom/android/exchange/EasSyncService;)V

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/adapter/OoOCommandParser;-><init>(Ljava/io/InputStream;Lcom/android/exchange/adapter/AbstractSyncAdapter;)V

    .line 411
    .local v26, sParser:Lcom/android/exchange/adapter/OoOCommandParser;
    :try_start_1
    invoke-virtual/range {v26 .. v26}, Lcom/android/exchange/adapter/OoOCommandParser;->parse()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 412
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 415
    .local v9, parserResult:Landroid/os/Bundle;
    sget-object v4, Lcom/android/email/activity/setup/OoOConstants;->OOO_GET_DATA:Ljava/lang/String;

    invoke-virtual/range {v26 .. v26}, Lcom/android/exchange/adapter/OoOCommandParser;->getParsedData()Lcom/android/exchange/OoODataList;

    move-result-object v5

    invoke-virtual {v9, v4, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 416
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasOoOSvc;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v4, v0

    iget-wide v5, v4, Lcom/android/email/provider/EmailContent$Account;->mId:J

    const/4 v7, 0x0

    const/16 v8, 0x64

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/exchange/EasOoOSvc;->outOfOfficeCb(JIILandroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .end local v9           #parserResult:Landroid/os/Bundle;
    :goto_0
    move/from16 v13, v24

    .end local v19           #entity:Lorg/apache/http/HttpEntity;
    .end local v20           #in:Ljava/io/InputStream;
    .end local v21           #len:I
    .end local v24           #result:I
    .end local v26           #sParser:Lcom/android/exchange/adapter/OoOCommandParser;
    .local v13, result:I
    :goto_1
    move/from16 v24, v13

    .line 442
    .end local v13           #result:I
    .end local v23           #resp:Lorg/apache/http/HttpResponse;
    .end local v27           #status:I
    .restart local v24       #result:I
    :goto_2
    return v24

    .line 389
    :catch_0
    move-exception v4

    move-object/from16 v18, v4

    .line 390
    .local v18, e:Ljava/lang/Exception;
    const/4 v13, 0x0

    .line 391
    .end local v24           #result:I
    .restart local v13       #result:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasOoOSvc;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v4, v0

    iget-wide v5, v4, Lcom/android/email/provider/EmailContent$Account;->mId:J

    const/4 v7, -0x3

    const/16 v8, 0x64

    const/4 v9, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/exchange/EasOoOSvc;->outOfOfficeCb(JIILandroid/os/Bundle;)V

    move/from16 v24, v13

    .line 392
    .end local v13           #result:I
    .restart local v24       #result:I
    goto :goto_2

    .line 419
    .end local v18           #e:Ljava/lang/Exception;
    .restart local v19       #entity:Lorg/apache/http/HttpEntity;
    .restart local v20       #in:Ljava/io/InputStream;
    .restart local v21       #len:I
    .restart local v23       #resp:Lorg/apache/http/HttpResponse;
    .restart local v26       #sParser:Lcom/android/exchange/adapter/OoOCommandParser;
    .restart local v27       #status:I
    :cond_1
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasOoOSvc;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v4, v0

    iget-wide v11, v4, Lcom/android/email/provider/EmailContent$Account;->mId:J

    const/4 v13, -0x8

    const/16 v14, 0x64

    const/4 v15, 0x0

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v15}, Lcom/android/exchange/EasOoOSvc;->outOfOfficeCb(JIILandroid/os/Bundle;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 421
    :catch_1
    move-exception v4

    move-object/from16 v18, v4

    .line 422
    .restart local v18       #e:Ljava/lang/Exception;
    const/16 v24, 0x0

    .line 423
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasOoOSvc;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v4, v0

    iget-wide v11, v4, Lcom/android/email/provider/EmailContent$Account;->mId:J

    const/16 v13, -0x9

    const/16 v14, 0x64

    const/4 v15, 0x0

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v15}, Lcom/android/exchange/EasOoOSvc;->outOfOfficeCb(JIILandroid/os/Bundle;)V

    .end local v18           #e:Ljava/lang/Exception;
    .end local v20           #in:Ljava/io/InputStream;
    .end local v26           #sParser:Lcom/android/exchange/adapter/OoOCommandParser;
    :goto_3
    move/from16 v13, v24

    .end local v24           #result:I
    .restart local v13       #result:I
    goto :goto_1

    .line 427
    .end local v13           #result:I
    .restart local v24       #result:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasOoOSvc;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v4, v0

    iget-wide v11, v4, Lcom/android/email/provider/EmailContent$Account;->mId:J

    const/4 v13, 0x0

    const/16 v14, 0x64

    const/4 v15, 0x0

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v15}, Lcom/android/exchange/EasOoOSvc;->outOfOfficeCb(JIILandroid/os/Bundle;)V

    goto :goto_3

    .line 429
    .end local v19           #entity:Lorg/apache/http/HttpEntity;
    .end local v21           #len:I
    :cond_3
    const/16 v13, 0x15

    .line 431
    .end local v24           #result:I
    .restart local v13       #result:I
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasOoOSvc;->isAuthError(I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 432
    const/16 v13, 0x16

    .line 439
    :cond_4
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasOoOSvc;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v4, v0

    iget-wide v11, v4, Lcom/android/email/provider/EmailContent$Account;->mId:J

    const/16 v14, 0x64

    const/4 v15, 0x0

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v15}, Lcom/android/exchange/EasOoOSvc;->outOfOfficeCb(JIILandroid/os/Bundle;)V

    goto :goto_1

    .line 435
    :cond_5
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasOoOSvc;->isProvisionError(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 436
    const/16 v13, 0x17

    goto :goto_4
.end method

.method private outOfOfficeCb(JIILandroid/os/Bundle;)V
    .locals 6
    .parameter "accId"
    .parameter "status"
    .parameter "progress"
    .parameter "results"

    .prologue
    .line 121
    :try_start_0
    invoke-static {}, Lcom/android/exchange/SyncManager;->callback()Lcom/android/email/service/IEmailServiceCallback;

    move-result-object v0

    move-wide v1, p1

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/email/service/IEmailServiceCallback;->oOOfStatus(JIILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :goto_0
    return-void

    .line 123
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private prepareSetCommand()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 129
    iput-boolean v4, p0, Lcom/android/exchange/EasOoOSvc;->mIsExtUnKnown:Z

    iput-boolean v4, p0, Lcom/android/exchange/EasOoOSvc;->mIsExtKnown:Z

    iput-boolean v4, p0, Lcom/android/exchange/EasOoOSvc;->mIsInternal:Z

    iput-boolean v4, p0, Lcom/android/exchange/EasOoOSvc;->mIsGlobal:Z

    iput-boolean v4, p0, Lcom/android/exchange/EasOoOSvc;->mIsTimeBased:Z

    .line 131
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/exchange/EasOoOSvc;->mSvcData:Lcom/android/exchange/OoODataList;

    invoke-virtual {v2}, Lcom/android/exchange/OoODataList;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 132
    iget-object v2, p0, Lcom/android/exchange/EasOoOSvc;->mSvcData:Lcom/android/exchange/OoODataList;

    invoke-virtual {v2, v0}, Lcom/android/exchange/OoODataList;->getItem(I)Lcom/android/exchange/OoOData;

    move-result-object v1

    .line 134
    .local v1, singleData:Lcom/android/exchange/OoOData;
    iget v2, v1, Lcom/android/exchange/OoOData;->state:I

    packed-switch v2, :pswitch_data_0

    .line 131
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 136
    :pswitch_0
    iput-boolean v4, p0, Lcom/android/exchange/EasOoOSvc;->mIsExtUnKnown:Z

    iput-boolean v4, p0, Lcom/android/exchange/EasOoOSvc;->mIsExtKnown:Z

    iput-boolean v4, p0, Lcom/android/exchange/EasOoOSvc;->mIsInternal:Z

    iput-boolean v4, p0, Lcom/android/exchange/EasOoOSvc;->mIsGlobal:Z

    iput-boolean v4, p0, Lcom/android/exchange/EasOoOSvc;->mIsTimeBased:Z

    goto :goto_1

    .line 143
    :pswitch_1
    iput-boolean v3, p0, Lcom/android/exchange/EasOoOSvc;->mIsGlobal:Z

    .line 145
    iget v2, v1, Lcom/android/exchange/OoOData;->type:I

    packed-switch v2, :pswitch_data_1

    goto :goto_1

    .line 147
    :pswitch_2
    iput-boolean v3, p0, Lcom/android/exchange/EasOoOSvc;->mIsInternal:Z

    .line 148
    iget-object v2, v1, Lcom/android/exchange/OoOData;->msg:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 149
    iget-object v2, v1, Lcom/android/exchange/OoOData;->msg:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/exchange/EasOoOSvc;->mInternalMsg:Ljava/lang/String;

    goto :goto_1

    .line 152
    :pswitch_3
    iput-boolean v3, p0, Lcom/android/exchange/EasOoOSvc;->mIsExtKnown:Z

    .line 153
    iget-object v2, v1, Lcom/android/exchange/OoOData;->msg:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 154
    iget-object v2, v1, Lcom/android/exchange/OoOData;->msg:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/exchange/EasOoOSvc;->mExternalKnownMsg:Ljava/lang/String;

    goto :goto_1

    .line 157
    :pswitch_4
    iput-boolean v3, p0, Lcom/android/exchange/EasOoOSvc;->mIsExtUnKnown:Z

    .line 158
    iget-object v2, v1, Lcom/android/exchange/OoOData;->msg:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 159
    iget-object v2, v1, Lcom/android/exchange/OoOData;->msg:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/exchange/EasOoOSvc;->mExternalUnKnownMsg:Ljava/lang/String;

    goto :goto_1

    .line 167
    :pswitch_5
    iput-boolean v3, p0, Lcom/android/exchange/EasOoOSvc;->mIsTimeBased:Z

    .line 168
    iget-object v2, v1, Lcom/android/exchange/OoOData;->start:Ljava/util/Date;

    if-eqz v2, :cond_1

    .line 169
    iget-object v2, v1, Lcom/android/exchange/OoOData;->start:Ljava/util/Date;

    iput-object v2, p0, Lcom/android/exchange/EasOoOSvc;->mStartDate:Ljava/util/Date;

    .line 170
    :cond_1
    iget-object v2, v1, Lcom/android/exchange/OoOData;->end:Ljava/util/Date;

    if-eqz v2, :cond_2

    .line 171
    iget-object v2, v1, Lcom/android/exchange/OoOData;->end:Ljava/util/Date;

    iput-object v2, p0, Lcom/android/exchange/EasOoOSvc;->mEndDate:Ljava/util/Date;

    .line 173
    :cond_2
    iget v2, v1, Lcom/android/exchange/OoOData;->type:I

    packed-switch v2, :pswitch_data_2

    goto :goto_1

    .line 175
    :pswitch_6
    iput-boolean v3, p0, Lcom/android/exchange/EasOoOSvc;->mIsInternal:Z

    .line 176
    iget-object v2, v1, Lcom/android/exchange/OoOData;->msg:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 177
    iget-object v2, v1, Lcom/android/exchange/OoOData;->msg:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/exchange/EasOoOSvc;->mInternalMsg:Ljava/lang/String;

    goto :goto_1

    .line 180
    :pswitch_7
    iput-boolean v3, p0, Lcom/android/exchange/EasOoOSvc;->mIsExtKnown:Z

    .line 181
    iget-object v2, v1, Lcom/android/exchange/OoOData;->msg:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 182
    iget-object v2, v1, Lcom/android/exchange/OoOData;->msg:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/exchange/EasOoOSvc;->mExternalKnownMsg:Ljava/lang/String;

    goto :goto_1

    .line 185
    :pswitch_8
    iput-boolean v3, p0, Lcom/android/exchange/EasOoOSvc;->mIsExtUnKnown:Z

    .line 186
    iget-object v2, v1, Lcom/android/exchange/OoOData;->msg:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 187
    iget-object v2, v1, Lcom/android/exchange/OoOData;->msg:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/exchange/EasOoOSvc;->mExternalUnKnownMsg:Ljava/lang/String;

    goto :goto_1

    .line 198
    .end local v1           #singleData:Lcom/android/exchange/OoOData;
    :cond_3
    return-void

    .line 134
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_5
    .end packed-switch

    .line 145
    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 173
    :pswitch_data_2
    .packed-switch 0x4
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private setOoO()I
    .locals 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasOoOSvc;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v4, v0

    iget-wide v5, v4, Lcom/android/email/provider/EmailContent$Account;->mId:J

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/exchange/EasOoOSvc;->outOfOfficeCb(JIILandroid/os/Bundle;)V

    .line 204
    const/16 v24, 0x0

    .line 205
    .local v24, result:I
    new-instance v25, Lcom/android/exchange/adapter/Serializer;

    invoke-direct/range {v25 .. v25}, Lcom/android/exchange/adapter/Serializer;-><init>()V

    .line 207
    .local v25, s:Lcom/android/exchange/adapter/Serializer;
    invoke-direct/range {p0 .. p0}, Lcom/android/exchange/EasOoOSvc;->prepareSetCommand()V

    .line 209
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/exchange/EasOoOSvc;->mIsTimeBased:Z

    move v4, v0

    if-nez v4, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/exchange/EasOoOSvc;->mIsGlobal:Z

    move v4, v0

    if-nez v4, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/exchange/EasOoOSvc;->mIsInternal:Z

    move v4, v0

    if-nez v4, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/exchange/EasOoOSvc;->mIsExtKnown:Z

    move v4, v0

    if-nez v4, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/exchange/EasOoOSvc;->mIsExtUnKnown:Z

    move v4, v0

    if-nez v4, :cond_1

    .line 210
    const/16 v4, 0x485

    move-object/from16 v0, v25

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v4

    const/16 v5, 0x489

    invoke-virtual {v4, v5}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v4

    const/16 v5, 0x488

    invoke-virtual {v4, v5}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v4

    const/16 v5, 0x48a

    invoke-virtual {v4, v5}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v4

    const-string v5, "0"

    invoke-virtual {v4, v5}, Lcom/android/exchange/adapter/Serializer;->text(Ljava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/exchange/adapter/Serializer;->done()V

    .line 293
    :goto_0
    const/16 v23, 0x0

    .line 296
    .local v23, resp:Lorg/apache/http/HttpResponse;
    :try_start_0
    sget-boolean v4, Lcom/android/exchange/Eas;->PARSER_LOG:Z

    if-eqz v4, :cond_0

    .line 297
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "setOoO(): Wbxml:"

    aput-object v6, v4, v5

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasOoOSvc;->userLog([Ljava/lang/String;)V

    .line 298
    invoke-virtual/range {v25 .. v25}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v16

    .line 299
    .local v16, b:[B
    new-instance v17, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 300
    .local v17, byTe:Ljava/io/ByteArrayInputStream;
    new-instance v22, Lcom/android/exchange/adapter/LogAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasOoOSvc;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    move-object v4, v0

    move-object/from16 v0, v22

    move-object v1, v4

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/adapter/LogAdapter;-><init>(Lcom/android/email/provider/EmailContent$Mailbox;Lcom/android/exchange/EasSyncService;)V

    .line 301
    .local v22, logA:Lcom/android/exchange/adapter/LogAdapter;
    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/LogAdapter;->parse(Ljava/io/InputStream;)Z

    .line 305
    .end local v16           #b:[B
    .end local v17           #byTe:Ljava/io/ByteArrayInputStream;
    .end local v22           #logA:Lcom/android/exchange/adapter/LogAdapter;
    :cond_0
    const-string v4, "Settings"

    new-instance v5, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-virtual/range {v25 .. v25}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    const v6, 0xea60

    move-object/from16 v0, p0

    move-object v1, v4

    move-object v2, v5

    move v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/exchange/EasOoOSvc;->sendHttpClientPost(Ljava/lang/String;Lorg/apache/http/HttpEntity;I)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v23

    .line 314
    invoke-interface/range {v23 .. v23}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v27

    .line 317
    .local v27, status:I
    const-string v4, "setOoO(): sendHttpClientPost HTTP response code: "

    move-object/from16 v0, p0

    move-object v1, v4

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/EasOoOSvc;->userLog(Ljava/lang/String;I)V

    .line 319
    const/16 v4, 0xc8

    move/from16 v0, v27

    move v1, v4

    if-ne v0, v1, :cond_8

    .line 321
    invoke-interface/range {v23 .. v23}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v19

    .line 323
    .local v19, entity:Lorg/apache/http/HttpEntity;
    invoke-interface/range {v19 .. v19}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v4

    move-wide v0, v4

    long-to-int v0, v0

    move/from16 v21, v0

    .line 325
    .local v21, len:I
    if-eqz v21, :cond_7

    .line 326
    invoke-interface/range {v19 .. v19}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v20

    .line 327
    .local v20, in:Ljava/io/InputStream;
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 328
    .local v9, bundle:Landroid/os/Bundle;
    new-instance v26, Lcom/android/exchange/adapter/OoOCommandParser;

    new-instance v4, Lcom/android/exchange/adapter/SettingsCommandAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasOoOSvc;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    move-object v5, v0

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/adapter/SettingsCommandAdapter;-><init>(Lcom/android/email/provider/EmailContent$Mailbox;Lcom/android/exchange/EasSyncService;)V

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/adapter/OoOCommandParser;-><init>(Ljava/io/InputStream;Lcom/android/exchange/adapter/AbstractSyncAdapter;)V

    .line 330
    .local v26, sParser:Lcom/android/exchange/adapter/OoOCommandParser;
    invoke-virtual/range {v26 .. v26}, Lcom/android/exchange/adapter/OoOCommandParser;->parse()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 331
    sget-object v4, Lcom/android/email/activity/setup/OoOConstants;->OOO_SET_DATA:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-virtual {v9, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 332
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasOoOSvc;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v4, v0

    iget-wide v5, v4, Lcom/android/email/provider/EmailContent$Account;->mId:J

    const/4 v7, 0x0

    const/16 v8, 0x64

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/exchange/EasOoOSvc;->outOfOfficeCb(JIILandroid/os/Bundle;)V

    .end local v9           #bundle:Landroid/os/Bundle;
    .end local v20           #in:Ljava/io/InputStream;
    .end local v26           #sParser:Lcom/android/exchange/adapter/OoOCommandParser;
    :goto_1
    move/from16 v13, v24

    .end local v19           #entity:Lorg/apache/http/HttpEntity;
    .end local v21           #len:I
    .end local v24           #result:I
    .local v13, result:I
    :goto_2
    move/from16 v24, v13

    .line 355
    .end local v13           #result:I
    .end local v27           #status:I
    .restart local v24       #result:I
    :goto_3
    return v24

    .line 217
    .end local v23           #resp:Lorg/apache/http/HttpResponse;
    :cond_1
    const/16 v4, 0x485

    move-object/from16 v0, v25

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v4

    const/16 v5, 0x489

    invoke-virtual {v4, v5}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v4

    const/16 v5, 0x488

    invoke-virtual {v4, v5}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v25

    .line 221
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/exchange/EasOoOSvc;->mIsTimeBased:Z

    move v4, v0

    if-eqz v4, :cond_2

    .line 222
    const/16 v4, 0x48a

    move-object/from16 v0, v25

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v4

    const-string v5, "2"

    invoke-virtual {v4, v5}, Lcom/android/exchange/adapter/Serializer;->text(Ljava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v25

    .line 224
    const/16 v4, 0x48b

    move-object/from16 v0, v25

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasOoOSvc;->mStartDate:Ljava/util/Date;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    move-object/from16 v0, p0

    move-wide v1, v5

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/EasOoOSvc;->convertLocalToUTC(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/exchange/adapter/Serializer;->text(Ljava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v25

    .line 225
    const/16 v4, 0x48c

    move-object/from16 v0, v25

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasOoOSvc;->mEndDate:Ljava/util/Date;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    move-object/from16 v0, p0

    move-wide v1, v5

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/EasOoOSvc;->convertLocalToUTC(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/exchange/adapter/Serializer;->text(Ljava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v25

    .line 230
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/exchange/EasOoOSvc;->mIsInternal:Z

    move v4, v0

    if-eqz v4, :cond_3

    .line 231
    const/16 v4, 0x48d

    move-object/from16 v0, v25

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v4

    const/16 v5, 0x48e

    invoke-virtual {v4, v5}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v4

    const/16 v5, 0x491

    invoke-virtual {v4, v5}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Lcom/android/exchange/adapter/Serializer;->text(Ljava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v4

    const/16 v5, 0x492

    invoke-virtual {v4, v5}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasOoOSvc;->mInternalMsg:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v4, v5}, Lcom/android/exchange/adapter/Serializer;->text(Ljava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v4

    const/16 v5, 0x493

    invoke-virtual {v4, v5}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v4

    const-string v5, "text"

    invoke-virtual {v4, v5}, Lcom/android/exchange/adapter/Serializer;->text(Ljava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v25

    .line 247
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/exchange/EasOoOSvc;->mIsExtKnown:Z

    move v4, v0

    if-eqz v4, :cond_4

    .line 249
    const/16 v4, 0x48d

    move-object/from16 v0, v25

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v4

    const/16 v5, 0x48f

    invoke-virtual {v4, v5}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v4

    const/16 v5, 0x491

    invoke-virtual {v4, v5}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Lcom/android/exchange/adapter/Serializer;->text(Ljava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v4

    const/16 v5, 0x492

    invoke-virtual {v4, v5}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasOoOSvc;->mExternalKnownMsg:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v4, v5}, Lcom/android/exchange/adapter/Serializer;->text(Ljava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v4

    const/16 v5, 0x493

    invoke-virtual {v4, v5}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v4

    const-string v5, "text"

    invoke-virtual {v4, v5}, Lcom/android/exchange/adapter/Serializer;->text(Ljava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v25

    .line 256
    const/16 v4, 0x48d

    move-object/from16 v0, v25

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v4

    const/16 v5, 0x490

    invoke-virtual {v4, v5}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v4

    const/16 v5, 0x491

    invoke-virtual {v4, v5}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v4

    const-string v5, "0"

    invoke-virtual {v4, v5}, Lcom/android/exchange/adapter/Serializer;->text(Ljava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v25

    .line 289
    :goto_6
    invoke-virtual/range {v25 .. v25}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v25

    .line 290
    invoke-virtual/range {v25 .. v25}, Lcom/android/exchange/adapter/Serializer;->done()V

    goto/16 :goto_0

    .line 228
    :cond_2
    const/16 v4, 0x48a

    move-object/from16 v0, v25

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Lcom/android/exchange/adapter/Serializer;->text(Ljava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v25

    goto/16 :goto_4

    .line 239
    :cond_3
    const/16 v4, 0x48d

    move-object/from16 v0, v25

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v4

    const/16 v5, 0x48e

    invoke-virtual {v4, v5}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v4

    const/16 v5, 0x491

    invoke-virtual {v4, v5}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Lcom/android/exchange/adapter/Serializer;->text(Ljava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v4

    const/16 v5, 0x492

    invoke-virtual {v4, v5}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v4

    const/16 v5, 0x493

    invoke-virtual {v4, v5}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v4

    const-string v5, "text"

    invoke-virtual {v4, v5}, Lcom/android/exchange/adapter/Serializer;->text(Ljava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v25

    goto/16 :goto_5

    .line 262
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/exchange/EasOoOSvc;->mIsExtUnKnown:Z

    move v4, v0

    if-eqz v4, :cond_5

    .line 263
    const/16 v4, 0x48d

    move-object/from16 v0, v25

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v4

    const/16 v5, 0x48f

    invoke-virtual {v4, v5}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v4

    const/16 v5, 0x491

    invoke-virtual {v4, v5}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Lcom/android/exchange/adapter/Serializer;->text(Ljava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v4

    const/16 v5, 0x492

    invoke-virtual {v4, v5}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasOoOSvc;->mExternalUnKnownMsg:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v4, v5}, Lcom/android/exchange/adapter/Serializer;->text(Ljava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v4

    const/16 v5, 0x493

    invoke-virtual {v4, v5}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v4

    const-string v5, "text"

    invoke-virtual {v4, v5}, Lcom/android/exchange/adapter/Serializer;->text(Ljava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v25

    .line 269
    const/16 v4, 0x48d

    move-object/from16 v0, v25

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v4

    const/16 v5, 0x490

    invoke-virtual {v4, v5}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v4

    const/16 v5, 0x491

    invoke-virtual {v4, v5}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Lcom/android/exchange/adapter/Serializer;->text(Ljava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v4

    const/16 v5, 0x492

    invoke-virtual {v4, v5}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasOoOSvc;->mExternalUnKnownMsg:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v4, v5}, Lcom/android/exchange/adapter/Serializer;->text(Ljava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v4

    const/16 v5, 0x493

    invoke-virtual {v4, v5}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v4

    const-string v5, "text"

    invoke-virtual {v4, v5}, Lcom/android/exchange/adapter/Serializer;->text(Ljava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v25

    goto/16 :goto_6

    .line 277
    :cond_5
    const/16 v4, 0x48d

    move-object/from16 v0, v25

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v4

    const/16 v5, 0x48f

    invoke-virtual {v4, v5}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v4

    const/16 v5, 0x491

    invoke-virtual {v4, v5}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v4

    const-string v5, "0"

    invoke-virtual {v4, v5}, Lcom/android/exchange/adapter/Serializer;->text(Ljava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v25

    .line 282
    const/16 v4, 0x48d

    move-object/from16 v0, v25

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v4

    const/16 v5, 0x490

    invoke-virtual {v4, v5}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v4

    const/16 v5, 0x491

    invoke-virtual {v4, v5}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v4

    const-string v5, "0"

    invoke-virtual {v4, v5}, Lcom/android/exchange/adapter/Serializer;->text(Ljava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v25

    goto/16 :goto_6

    .line 307
    .restart local v23       #resp:Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v4

    move-object/from16 v18, v4

    .line 308
    .local v18, e:Ljava/lang/Exception;
    const/4 v13, 0x0

    .line 309
    .end local v24           #result:I
    .restart local v13       #result:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasOoOSvc;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v4, v0

    iget-wide v5, v4, Lcom/android/email/provider/EmailContent$Account;->mId:J

    const/4 v7, -0x3

    const/16 v8, 0x64

    const/4 v9, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/exchange/EasOoOSvc;->outOfOfficeCb(JIILandroid/os/Bundle;)V

    move/from16 v24, v13

    .line 310
    .end local v13           #result:I
    .restart local v24       #result:I
    goto/16 :goto_3

    .line 335
    .end local v18           #e:Ljava/lang/Exception;
    .restart local v9       #bundle:Landroid/os/Bundle;
    .restart local v19       #entity:Lorg/apache/http/HttpEntity;
    .restart local v20       #in:Ljava/io/InputStream;
    .restart local v21       #len:I
    .restart local v26       #sParser:Lcom/android/exchange/adapter/OoOCommandParser;
    .restart local v27       #status:I
    :cond_6
    sget-object v4, Lcom/android/email/activity/setup/OoOConstants;->OOO_SET_DATA:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v9, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 336
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasOoOSvc;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v4, v0

    iget-wide v5, v4, Lcom/android/email/provider/EmailContent$Account;->mId:J

    const/4 v7, -0x7

    const/16 v8, 0x64

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/exchange/EasOoOSvc;->outOfOfficeCb(JIILandroid/os/Bundle;)V

    goto/16 :goto_1

    .line 340
    .end local v9           #bundle:Landroid/os/Bundle;
    .end local v20           #in:Ljava/io/InputStream;
    .end local v26           #sParser:Lcom/android/exchange/adapter/OoOCommandParser;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasOoOSvc;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v4, v0

    iget-wide v11, v4, Lcom/android/email/provider/EmailContent$Account;->mId:J

    const/4 v13, 0x0

    const/16 v14, 0x64

    const/4 v15, 0x0

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v15}, Lcom/android/exchange/EasOoOSvc;->outOfOfficeCb(JIILandroid/os/Bundle;)V

    goto/16 :goto_1

    .line 342
    .end local v19           #entity:Lorg/apache/http/HttpEntity;
    .end local v21           #len:I
    :cond_8
    const/16 v13, 0x15

    .line 344
    .end local v24           #result:I
    .restart local v13       #result:I
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasOoOSvc;->isAuthError(I)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 345
    const/16 v13, 0x16

    .line 352
    :cond_9
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasOoOSvc;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v4, v0

    iget-wide v11, v4, Lcom/android/email/provider/EmailContent$Account;->mId:J

    const/16 v14, 0x64

    const/4 v15, 0x0

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v15}, Lcom/android/exchange/EasOoOSvc;->outOfOfficeCb(JIILandroid/os/Bundle;)V

    goto/16 :goto_2

    .line 348
    :cond_a
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasOoOSvc;->isProvisionError(I)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 349
    const/16 v13, 0x17

    goto :goto_7
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    const-string v11, ": OoO operation finished"

    .line 447
    invoke-virtual {p0}, Lcom/android/exchange/EasOoOSvc;->setupService()Z

    .line 449
    :try_start_0
    invoke-static {}, Lcom/android/exchange/SyncManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/EasOoOSvc;->mDeviceId:Ljava/lang/String;

    .line 451
    const/4 v3, 0x0

    .line 455
    .local v3, result:I
    iget-object v0, p0, Lcom/android/exchange/EasOoOSvc;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v4, 0x4028

    cmpg-double v0, v0, v4

    if-gez v0, :cond_2

    .line 457
    const/4 v3, -0x2

    .line 458
    iget-object v0, p0, Lcom/android/exchange/EasOoOSvc;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v1, v0, Lcom/android/email/provider/EmailContent$Account;->mId:J

    const/16 v4, 0x64

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/exchange/EasOoOSvc;->outOfOfficeCb(JIILandroid/os/Bundle;)V

    .line 467
    :goto_0
    const/16 v0, 0x16

    if-ne v3, v0, :cond_4

    .line 468
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/exchange/EasOoOSvc;->mExitStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 488
    iget-object v0, p0, Lcom/android/exchange/EasOoOSvc;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    if-eqz v0, :cond_11

    .line 489
    new-array v0, v9, [Ljava/lang/String;

    iget-object v1, p0, Lcom/android/exchange/EasOoOSvc;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-object v1, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    aput-object v1, v0, v8

    const-string v1, ": sync finished"

    aput-object v1, v0, v7

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasOoOSvc;->userLog([Ljava/lang/String;)V

    .line 494
    :cond_0
    :goto_1
    const-string v0, "OoB exited with status "

    iget v1, p0, Lcom/android/exchange/EasOoOSvc;->mExitStatus:I

    invoke-virtual {p0, v0, v1}, Lcom/android/exchange/EasOoOSvc;->userLog(Ljava/lang/String;I)V

    .line 496
    invoke-static {p0}, Lcom/android/exchange/SyncManager;->doneOutOfBand(Lcom/android/exchange/AbstractSyncService;)V

    .line 499
    iget v0, p0, Lcom/android/exchange/EasOoOSvc;->mExitStatus:I

    if-ne v0, v10, :cond_1

    .line 500
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "Outbox calling: SyncManager.reloadFolderList"

    aput-object v1, v0, v8

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasOoOSvc;->userLog([Ljava/lang/String;)V

    .line 501
    iget-object v0, p0, Lcom/android/exchange/EasOoOSvc;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/exchange/EasOoOSvc;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v1, v1, Lcom/android/email/provider/EmailContent$Account;->mId:J

    .end local v3           #result:I
    :goto_2
    invoke-static {v0, v1, v2, v7}, Lcom/android/exchange/SyncManager;->reloadFolderList(Landroid/content/Context;JZ)V

    .line 505
    :cond_1
    return-void

    .line 461
    .restart local v3       #result:I
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/exchange/EasOoOSvc;->mSvcData:Lcom/android/exchange/OoODataList;

    if-nez v0, :cond_3

    .line 462
    invoke-direct {p0}, Lcom/android/exchange/EasOoOSvc;->getOoO()I

    move-result v3

    goto :goto_0

    .line 464
    :cond_3
    invoke-direct {p0}, Lcom/android/exchange/EasOoOSvc;->setOoO()I

    move-result v3

    goto :goto_0

    .line 470
    :cond_4
    const/16 v0, 0x15

    if-ne v3, v0, :cond_6

    .line 471
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/exchange/EasOoOSvc;->mExitStatus:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 488
    iget-object v0, p0, Lcom/android/exchange/EasOoOSvc;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    if-eqz v0, :cond_12

    .line 489
    new-array v0, v9, [Ljava/lang/String;

    iget-object v1, p0, Lcom/android/exchange/EasOoOSvc;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-object v1, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    aput-object v1, v0, v8

    const-string v1, ": sync finished"

    aput-object v1, v0, v7

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasOoOSvc;->userLog([Ljava/lang/String;)V

    .line 494
    :cond_5
    :goto_3
    const-string v0, "OoB exited with status "

    iget v1, p0, Lcom/android/exchange/EasOoOSvc;->mExitStatus:I

    invoke-virtual {p0, v0, v1}, Lcom/android/exchange/EasOoOSvc;->userLog(Ljava/lang/String;I)V

    .line 496
    invoke-static {p0}, Lcom/android/exchange/SyncManager;->doneOutOfBand(Lcom/android/exchange/AbstractSyncService;)V

    .line 499
    iget v0, p0, Lcom/android/exchange/EasOoOSvc;->mExitStatus:I

    if-ne v0, v10, :cond_1

    .line 500
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "Outbox calling: SyncManager.reloadFolderList"

    aput-object v1, v0, v8

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasOoOSvc;->userLog([Ljava/lang/String;)V

    .line 501
    iget-object v0, p0, Lcom/android/exchange/EasOoOSvc;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/exchange/EasOoOSvc;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v1, v1, Lcom/android/email/provider/EmailContent$Account;->mId:J

    goto :goto_2

    .line 475
    :cond_6
    const/16 v0, 0x17

    if-ne v3, v0, :cond_8

    .line 476
    const/4 v0, 0x4

    :try_start_2
    iput v0, p0, Lcom/android/exchange/EasOoOSvc;->mExitStatus:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 488
    iget-object v0, p0, Lcom/android/exchange/EasOoOSvc;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    if-eqz v0, :cond_13

    .line 489
    new-array v0, v9, [Ljava/lang/String;

    iget-object v1, p0, Lcom/android/exchange/EasOoOSvc;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-object v1, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    aput-object v1, v0, v8

    const-string v1, ": sync finished"

    aput-object v1, v0, v7

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasOoOSvc;->userLog([Ljava/lang/String;)V

    .line 494
    :cond_7
    :goto_4
    const-string v0, "OoB exited with status "

    iget v1, p0, Lcom/android/exchange/EasOoOSvc;->mExitStatus:I

    invoke-virtual {p0, v0, v1}, Lcom/android/exchange/EasOoOSvc;->userLog(Ljava/lang/String;I)V

    .line 496
    invoke-static {p0}, Lcom/android/exchange/SyncManager;->doneOutOfBand(Lcom/android/exchange/AbstractSyncService;)V

    .line 499
    iget v0, p0, Lcom/android/exchange/EasOoOSvc;->mExitStatus:I

    if-ne v0, v10, :cond_1

    .line 500
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "Outbox calling: SyncManager.reloadFolderList"

    aput-object v1, v0, v8

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasOoOSvc;->userLog([Ljava/lang/String;)V

    .line 501
    iget-object v0, p0, Lcom/android/exchange/EasOoOSvc;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/exchange/EasOoOSvc;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v1, v1, Lcom/android/email/provider/EmailContent$Account;->mId:J

    goto/16 :goto_2

    .line 480
    :cond_8
    const/4 v0, 0x0

    :try_start_3
    iput v0, p0, Lcom/android/exchange/EasOoOSvc;->mExitStatus:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 488
    iget-object v0, p0, Lcom/android/exchange/EasOoOSvc;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    if-eqz v0, :cond_14

    .line 489
    new-array v0, v9, [Ljava/lang/String;

    iget-object v1, p0, Lcom/android/exchange/EasOoOSvc;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-object v1, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    aput-object v1, v0, v8

    const-string v1, ": sync finished"

    aput-object v1, v0, v7

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasOoOSvc;->userLog([Ljava/lang/String;)V

    .line 494
    :cond_9
    :goto_5
    const-string v0, "OoB exited with status "

    iget v1, p0, Lcom/android/exchange/EasOoOSvc;->mExitStatus:I

    invoke-virtual {p0, v0, v1}, Lcom/android/exchange/EasOoOSvc;->userLog(Ljava/lang/String;I)V

    .line 496
    invoke-static {p0}, Lcom/android/exchange/SyncManager;->doneOutOfBand(Lcom/android/exchange/AbstractSyncService;)V

    .line 499
    iget v0, p0, Lcom/android/exchange/EasOoOSvc;->mExitStatus:I

    if-ne v0, v10, :cond_1

    .line 500
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "Outbox calling: SyncManager.reloadFolderList"

    aput-object v1, v0, v8

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasOoOSvc;->userLog([Ljava/lang/String;)V

    .line 501
    iget-object v0, p0, Lcom/android/exchange/EasOoOSvc;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/exchange/EasOoOSvc;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v1, v1, Lcom/android/email/provider/EmailContent$Account;->mId:J

    goto/16 :goto_2

    .line 481
    .end local v3           #result:I
    :catch_0
    move-exception v0

    move-object v6, v0

    .line 482
    .local v6, e:Ljava/io/IOException;
    const/4 v0, 0x1

    :try_start_4
    iput v0, p0, Lcom/android/exchange/EasOoOSvc;->mExitStatus:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 488
    iget-object v0, p0, Lcom/android/exchange/EasOoOSvc;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    if-eqz v0, :cond_f

    .line 489
    new-array v0, v9, [Ljava/lang/String;

    iget-object v1, p0, Lcom/android/exchange/EasOoOSvc;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-object v1, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    aput-object v1, v0, v8

    const-string v1, ": sync finished"

    aput-object v1, v0, v7

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasOoOSvc;->userLog([Ljava/lang/String;)V

    .line 494
    :cond_a
    :goto_6
    const-string v0, "OoB exited with status "

    iget v1, p0, Lcom/android/exchange/EasOoOSvc;->mExitStatus:I

    invoke-virtual {p0, v0, v1}, Lcom/android/exchange/EasOoOSvc;->userLog(Ljava/lang/String;I)V

    .line 496
    invoke-static {p0}, Lcom/android/exchange/SyncManager;->doneOutOfBand(Lcom/android/exchange/AbstractSyncService;)V

    .line 499
    iget v0, p0, Lcom/android/exchange/EasOoOSvc;->mExitStatus:I

    if-ne v0, v10, :cond_1

    .line 500
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "Outbox calling: SyncManager.reloadFolderList"

    aput-object v1, v0, v8

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasOoOSvc;->userLog([Ljava/lang/String;)V

    .line 501
    iget-object v0, p0, Lcom/android/exchange/EasOoOSvc;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/exchange/EasOoOSvc;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v1, v1, Lcom/android/email/provider/EmailContent$Account;->mId:J

    goto/16 :goto_2

    .line 483
    .end local v6           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    move-object v6, v0

    .line 484
    .local v6, e:Ljava/lang/Exception;
    :try_start_5
    const-string v0, "Exception caught in EasOOFSvc"

    invoke-virtual {p0, v0, v6}, Lcom/android/exchange/EasOoOSvc;->userLog(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 485
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/exchange/EasOoOSvc;->mExitStatus:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 488
    iget-object v0, p0, Lcom/android/exchange/EasOoOSvc;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    if-eqz v0, :cond_10

    .line 489
    new-array v0, v9, [Ljava/lang/String;

    iget-object v1, p0, Lcom/android/exchange/EasOoOSvc;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-object v1, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    aput-object v1, v0, v8

    const-string v1, ": sync finished"

    aput-object v1, v0, v7

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasOoOSvc;->userLog([Ljava/lang/String;)V

    .line 494
    :cond_b
    :goto_7
    const-string v0, "OoB exited with status "

    iget v1, p0, Lcom/android/exchange/EasOoOSvc;->mExitStatus:I

    invoke-virtual {p0, v0, v1}, Lcom/android/exchange/EasOoOSvc;->userLog(Ljava/lang/String;I)V

    .line 496
    invoke-static {p0}, Lcom/android/exchange/SyncManager;->doneOutOfBand(Lcom/android/exchange/AbstractSyncService;)V

    .line 499
    iget v0, p0, Lcom/android/exchange/EasOoOSvc;->mExitStatus:I

    if-ne v0, v10, :cond_1

    .line 500
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "Outbox calling: SyncManager.reloadFolderList"

    aput-object v1, v0, v8

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasOoOSvc;->userLog([Ljava/lang/String;)V

    .line 501
    iget-object v0, p0, Lcom/android/exchange/EasOoOSvc;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/exchange/EasOoOSvc;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v1, v1, Lcom/android/email/provider/EmailContent$Account;->mId:J

    goto/16 :goto_2

    .line 488
    .end local v6           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/exchange/EasOoOSvc;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    if-eqz v1, :cond_e

    .line 489
    new-array v1, v9, [Ljava/lang/String;

    iget-object v2, p0, Lcom/android/exchange/EasOoOSvc;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-object v2, v2, Lcom/android/email/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    aput-object v2, v1, v8

    const-string v2, ": sync finished"

    aput-object v2, v1, v7

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasOoOSvc;->userLog([Ljava/lang/String;)V

    .line 494
    :cond_c
    :goto_8
    const-string v1, "OoB exited with status "

    iget v2, p0, Lcom/android/exchange/EasOoOSvc;->mExitStatus:I

    invoke-virtual {p0, v1, v2}, Lcom/android/exchange/EasOoOSvc;->userLog(Ljava/lang/String;I)V

    .line 496
    invoke-static {p0}, Lcom/android/exchange/SyncManager;->doneOutOfBand(Lcom/android/exchange/AbstractSyncService;)V

    .line 499
    iget v1, p0, Lcom/android/exchange/EasOoOSvc;->mExitStatus:I

    if-ne v1, v10, :cond_d

    .line 500
    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "Outbox calling: SyncManager.reloadFolderList"

    aput-object v2, v1, v8

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasOoOSvc;->userLog([Ljava/lang/String;)V

    .line 501
    iget-object v1, p0, Lcom/android/exchange/EasOoOSvc;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/exchange/EasOoOSvc;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v4, v2, Lcom/android/email/provider/EmailContent$Account;->mId:J

    invoke-static {v1, v4, v5, v7}, Lcom/android/exchange/SyncManager;->reloadFolderList(Landroid/content/Context;JZ)V

    .line 488
    :cond_d
    throw v0

    .line 490
    :cond_e
    iget-wide v1, p0, Lcom/android/exchange/EasOoOSvc;->mMailboxId:J

    sget-wide v4, Lcom/android/exchange/SyncManager;->MAILBOX_DUMMY_MIN:J

    cmp-long v1, v1, v4

    if-lez v1, :cond_c

    iget-wide v1, p0, Lcom/android/exchange/EasOoOSvc;->mMailboxId:J

    sget-wide v4, Lcom/android/exchange/SyncManager;->MAILBOX_DUMMY_MAX:J

    cmp-long v1, v1, v4

    if-gez v1, :cond_c

    .line 492
    new-array v1, v9, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OoBMailbox:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/android/exchange/EasOoOSvc;->mMailboxId:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    const-string v2, ": OoO operation finished"

    aput-object v11, v1, v7

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasOoOSvc;->userLog([Ljava/lang/String;)V

    goto :goto_8

    .line 490
    .local v6, e:Ljava/io/IOException;
    :cond_f
    iget-wide v0, p0, Lcom/android/exchange/EasOoOSvc;->mMailboxId:J

    sget-wide v4, Lcom/android/exchange/SyncManager;->MAILBOX_DUMMY_MIN:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_a

    iget-wide v0, p0, Lcom/android/exchange/EasOoOSvc;->mMailboxId:J

    sget-wide v4, Lcom/android/exchange/SyncManager;->MAILBOX_DUMMY_MAX:J

    cmp-long v0, v0, v4

    if-gez v0, :cond_a

    .line 492
    new-array v0, v9, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OoBMailbox:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v4, p0, Lcom/android/exchange/EasOoOSvc;->mMailboxId:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    const-string v1, ": OoO operation finished"

    aput-object v11, v0, v7

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasOoOSvc;->userLog([Ljava/lang/String;)V

    goto/16 :goto_6

    .line 490
    .local v6, e:Ljava/lang/Exception;
    :cond_10
    iget-wide v0, p0, Lcom/android/exchange/EasOoOSvc;->mMailboxId:J

    sget-wide v4, Lcom/android/exchange/SyncManager;->MAILBOX_DUMMY_MIN:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_b

    iget-wide v0, p0, Lcom/android/exchange/EasOoOSvc;->mMailboxId:J

    sget-wide v4, Lcom/android/exchange/SyncManager;->MAILBOX_DUMMY_MAX:J

    cmp-long v0, v0, v4

    if-gez v0, :cond_b

    .line 492
    new-array v0, v9, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OoBMailbox:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v4, p0, Lcom/android/exchange/EasOoOSvc;->mMailboxId:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    const-string v1, ": OoO operation finished"

    aput-object v11, v0, v7

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasOoOSvc;->userLog([Ljava/lang/String;)V

    goto/16 :goto_7

    .line 490
    .end local v6           #e:Ljava/lang/Exception;
    .restart local v3       #result:I
    :cond_11
    iget-wide v0, p0, Lcom/android/exchange/EasOoOSvc;->mMailboxId:J

    sget-wide v4, Lcom/android/exchange/SyncManager;->MAILBOX_DUMMY_MIN:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/android/exchange/EasOoOSvc;->mMailboxId:J

    sget-wide v4, Lcom/android/exchange/SyncManager;->MAILBOX_DUMMY_MAX:J

    cmp-long v0, v0, v4

    if-gez v0, :cond_0

    .line 492
    new-array v0, v9, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OoBMailbox:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v4, p0, Lcom/android/exchange/EasOoOSvc;->mMailboxId:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    const-string v1, ": OoO operation finished"

    aput-object v11, v0, v7

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasOoOSvc;->userLog([Ljava/lang/String;)V

    goto/16 :goto_1

    .line 490
    :cond_12
    iget-wide v0, p0, Lcom/android/exchange/EasOoOSvc;->mMailboxId:J

    sget-wide v4, Lcom/android/exchange/SyncManager;->MAILBOX_DUMMY_MIN:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_5

    iget-wide v0, p0, Lcom/android/exchange/EasOoOSvc;->mMailboxId:J

    sget-wide v4, Lcom/android/exchange/SyncManager;->MAILBOX_DUMMY_MAX:J

    cmp-long v0, v0, v4

    if-gez v0, :cond_5

    .line 492
    new-array v0, v9, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OoBMailbox:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v4, p0, Lcom/android/exchange/EasOoOSvc;->mMailboxId:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    const-string v1, ": OoO operation finished"

    aput-object v11, v0, v7

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasOoOSvc;->userLog([Ljava/lang/String;)V

    goto/16 :goto_3

    .line 490
    :cond_13
    iget-wide v0, p0, Lcom/android/exchange/EasOoOSvc;->mMailboxId:J

    sget-wide v4, Lcom/android/exchange/SyncManager;->MAILBOX_DUMMY_MIN:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_7

    iget-wide v0, p0, Lcom/android/exchange/EasOoOSvc;->mMailboxId:J

    sget-wide v4, Lcom/android/exchange/SyncManager;->MAILBOX_DUMMY_MAX:J

    cmp-long v0, v0, v4

    if-gez v0, :cond_7

    .line 492
    new-array v0, v9, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OoBMailbox:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v4, p0, Lcom/android/exchange/EasOoOSvc;->mMailboxId:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    const-string v1, ": OoO operation finished"

    aput-object v11, v0, v7

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasOoOSvc;->userLog([Ljava/lang/String;)V

    goto/16 :goto_4

    .line 490
    :cond_14
    iget-wide v0, p0, Lcom/android/exchange/EasOoOSvc;->mMailboxId:J

    sget-wide v4, Lcom/android/exchange/SyncManager;->MAILBOX_DUMMY_MIN:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_9

    iget-wide v0, p0, Lcom/android/exchange/EasOoOSvc;->mMailboxId:J

    sget-wide v4, Lcom/android/exchange/SyncManager;->MAILBOX_DUMMY_MAX:J

    cmp-long v0, v0, v4

    if-gez v0, :cond_9

    .line 492
    new-array v0, v9, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OoBMailbox:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v4, p0, Lcom/android/exchange/EasOoOSvc;->mMailboxId:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    const-string v1, ": OoO operation finished"

    aput-object v11, v0, v7

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasOoOSvc;->userLog([Ljava/lang/String;)V

    goto/16 :goto_5
.end method
