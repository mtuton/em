.class public Lcom/android/exchange/EasConvSvc;
.super Lcom/android/exchange/EasSyncService;
.source "EasConvSvc.java"


# instance fields
.field private mConversationId:[B

.field mIgnore:I

.field private mMsg:Lcom/android/email/provider/EmailContent$Message;

.field mToMailboxId:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/email/provider/EmailContent$Message;J[BI)V
    .locals 2
    .parameter "_context"
    .parameter "_msg"
    .parameter "_toMailboxId"
    .parameter "_conversationId"
    .parameter "_ignore"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/android/exchange/EasSyncService;-><init>(Landroid/content/Context;Lcom/android/email/provider/EmailContent$Message;)V

    .line 41
    iput-object p2, p0, Lcom/android/exchange/EasConvSvc;->mMsg:Lcom/android/email/provider/EmailContent$Message;

    .line 42
    iput-object p5, p0, Lcom/android/exchange/EasConvSvc;->mConversationId:[B

    .line 43
    iput-wide p3, p0, Lcom/android/exchange/EasConvSvc;->mToMailboxId:J

    .line 44
    iput p6, p0, Lcom/android/exchange/EasConvSvc;->mIgnore:I

    .line 45
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersion:Ljava/lang/String;

    .line 46
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersion:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    .line 47
    return-void
.end method

.method private moveConvAlwaysCb([BIII)V
    .locals 1
    .parameter "convId"
    .parameter "status"
    .parameter "progress"
    .parameter "ignore"

    .prologue
    .line 51
    :try_start_0
    invoke-static {}, Lcom/android/exchange/SyncManager;->callback()Lcom/android/email/service/IEmailServiceCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/email/service/IEmailServiceCallback;->moveConvAlwaysStatus([BIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :goto_0
    return-void

    .line 52
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private moveConversationAlways()I
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/email/mail/DeviceAccessException;
        }
    .end annotation

    .prologue
    .line 59
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasConvSvc;->mConversationId:[B

    move-object/from16 v19, v0

    const/16 v20, 0x1

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exchange/EasConvSvc;->mIgnore:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/exchange/EasConvSvc;->moveConvAlwaysCb([BIII)V

    .line 61
    const/4 v15, 0x0

    .line 63
    .local v15, result:I
    new-instance v17, Lcom/android/exchange/adapter/Serializer;

    invoke-direct/range {v17 .. v17}, Lcom/android/exchange/adapter/Serializer;-><init>()V

    .line 64
    .local v17, s:Lcom/android/exchange/adapter/Serializer;
    const/4 v6, 0x0

    .line 67
    .local v6, commandType:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v19

    const-wide/high16 v21, 0x402c

    cmpl-double v19, v19, v21

    if-ltz v19, :cond_0

    .line 68
    const-string v6, "ItemOperations"

    .line 69
    const/16 v19, 0x505

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 76
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/exchange/EasConvSvc;->mToMailboxId:J

    move-wide/from16 v20, v0

    invoke-static/range {v19 .. v21}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v7

    .line 77
    .local v7, dstMailbox:Lcom/android/email/provider/EmailContent$Mailbox;
    const/16 v19, 0x516

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v19

    const/16 v20, 0x518

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasConvSvc;->mConversationId:[B

    move-object/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Lcom/android/exchange/adapter/Serializer;->dataOpaque(I[B)Lcom/android/exchange/adapter/Serializer;

    move-result-object v19

    const/16 v20, 0x517

    move-object v0, v7

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mServerId:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v19

    const/16 v20, 0x508

    invoke-virtual/range {v19 .. v20}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v19

    const/16 v20, 0x519

    invoke-virtual/range {v19 .. v20}, Lcom/android/exchange/adapter/Serializer;->tag(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 82
    invoke-virtual/range {v17 .. v17}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 83
    invoke-virtual/range {v17 .. v17}, Lcom/android/exchange/adapter/Serializer;->done()V

    .line 88
    .end local v7           #dstMailbox:Lcom/android/email/provider/EmailContent$Mailbox;
    :cond_0
    :try_start_0
    invoke-virtual/range {v17 .. v17}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v19

    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/EasConvSvc;->sendHttpClientPost(Ljava/lang/String;[B)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    .line 96
    .local v14, res:Lorg/apache/http/HttpResponse;
    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    .local v5, code:I
    const/16 v19, 0xc8

    move v0, v5

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    .line 98
    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v8

    .line 101
    .local v8, e:Lorg/apache/http/HttpEntity;
    invoke-interface {v8}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v19

    move-wide/from16 v0, v19

    long-to-int v0, v0

    move v12, v0

    .local v12, len:I
    if-lez v12, :cond_3

    invoke-interface {v8}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v11

    .local v11, is:Ljava/io/InputStream;
    if-eqz v11, :cond_3

    .line 103
    const/16 v18, 0x1

    .line 105
    .local v18, successp:Z
    :try_start_1
    new-instance v10, Lcom/android/exchange/adapter/ItemOperationsParser;

    new-instance v19, Lcom/android/exchange/adapter/ItemOperationsAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/adapter/ItemOperationsAdapter;-><init>(Lcom/android/email/provider/EmailContent$Mailbox;Lcom/android/exchange/EasSyncService;)V

    move-object v0, v10

    move-object v1, v11

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/adapter/ItemOperationsParser;-><init>(Ljava/io/InputStream;Lcom/android/exchange/adapter/AbstractSyncAdapter;)V

    .line 107
    .local v10, iop:Lcom/android/exchange/adapter/ItemOperationsParser;
    invoke-virtual {v10}, Lcom/android/exchange/adapter/ItemOperationsParser;->parse()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_2

    move-result v18

    .line 116
    .end local v10           #iop:Lcom/android/exchange/adapter/ItemOperationsParser;
    :goto_0
    if-eqz v18, :cond_2

    .line 117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasConvSvc;->mConversationId:[B

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x64

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exchange/EasConvSvc;->mIgnore:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/exchange/EasConvSvc;->moveConvAlwaysCb([BIII)V

    .line 127
    :cond_1
    :goto_1
    const/4 v15, 0x0

    .end local v8           #e:Lorg/apache/http/HttpEntity;
    .end local v11           #is:Ljava/io/InputStream;
    .end local v12           #len:I
    .end local v18           #successp:Z
    :goto_2
    move/from16 v16, v15

    .line 143
    .end local v5           #code:I
    .end local v14           #res:Lorg/apache/http/HttpResponse;
    .end local v15           #result:I
    .local v16, result:I
    :goto_3
    return v16

    .line 89
    .end local v16           #result:I
    .restart local v15       #result:I
    :catch_0
    move-exception v19

    move-object/from16 v8, v19

    .line 90
    .local v8, e:Ljava/lang/Exception;
    const/4 v15, 0x0

    .line 91
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasConvSvc;->mConversationId:[B

    move-object/from16 v19, v0

    const/16 v20, -0x3

    const/16 v21, 0x64

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exchange/EasConvSvc;->mIgnore:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/exchange/EasConvSvc;->moveConvAlwaysCb([BIII)V

    move/from16 v16, v15

    .line 92
    .end local v15           #result:I
    .restart local v16       #result:I
    goto :goto_3

    .line 108
    .end local v16           #result:I
    .restart local v5       #code:I
    .local v8, e:Lorg/apache/http/HttpEntity;
    .restart local v11       #is:Ljava/io/InputStream;
    .restart local v12       #len:I
    .restart local v14       #res:Lorg/apache/http/HttpResponse;
    .restart local v15       #result:I
    .restart local v18       #successp:Z
    :catch_1
    move-exception v19

    move-object/from16 v9, v19

    .line 109
    .local v9, ioe:Ljava/io/IOException;
    const/16 v18, 0x0

    .line 110
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasConvSvc;->mConversationId:[B

    move-object/from16 v19, v0

    const/high16 v20, 0x8

    const/16 v21, 0x64

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exchange/EasConvSvc;->mIgnore:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/exchange/EasConvSvc;->moveConvAlwaysCb([BIII)V

    goto :goto_0

    .line 111
    .end local v9           #ioe:Ljava/io/IOException;
    :catch_2
    move-exception v19

    move-object/from16 v13, v19

    .line 112
    .local v13, ome:Ljava/lang/OutOfMemoryError;
    const/16 v18, 0x0

    .line 114
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasConvSvc;->mConversationId:[B

    move-object/from16 v19, v0

    const/high16 v20, 0x9

    const/16 v21, 0x64

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exchange/EasConvSvc;->mIgnore:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/exchange/EasConvSvc;->moveConvAlwaysCb([BIII)V

    goto/16 :goto_0

    .line 122
    .end local v13           #ome:Ljava/lang/OutOfMemoryError;
    :cond_2
    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasConvSvc;->isProvisionError(I)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasConvSvc;->mConversationId:[B

    move-object/from16 v19, v0

    const/16 v20, 0x17

    const/16 v21, 0x64

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exchange/EasConvSvc;->mIgnore:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/exchange/EasConvSvc;->moveConvAlwaysCb([BIII)V

    goto/16 :goto_1

    .line 129
    .end local v11           #is:Ljava/io/InputStream;
    .end local v18           #successp:Z
    :cond_3
    const/4 v15, 0x0

    .line 130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasConvSvc;->mConversationId:[B

    move-object/from16 v19, v0

    const/16 v20, 0x15

    const/16 v21, 0x64

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exchange/EasConvSvc;->mIgnore:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/exchange/EasConvSvc;->moveConvAlwaysCb([BIII)V

    goto/16 :goto_2

    .line 133
    .end local v8           #e:Lorg/apache/http/HttpEntity;
    .end local v12           #len:I
    :cond_4
    const/16 v15, 0x15

    .line 135
    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasConvSvc;->isAuthError(I)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 136
    const/16 v15, 0x16

    .line 138
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasConvSvc;->mConversationId:[B

    move-object/from16 v19, v0

    const/16 v20, 0x64

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exchange/EasConvSvc;->mIgnore:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move v2, v15

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/exchange/EasConvSvc;->moveConvAlwaysCb([BIII)V

    .line 139
    const/4 v15, 0x0

    goto/16 :goto_2
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v9, ": sync finished"

    .line 148
    invoke-virtual {p0}, Lcom/android/exchange/EasConvSvc;->setupService()Z

    .line 150
    :try_start_0
    invoke-static {}, Lcom/android/exchange/SyncManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exchange/EasSyncService;->mDeviceId:Ljava/lang/String;

    .line 152
    invoke-direct {p0}, Lcom/android/exchange/EasConvSvc;->moveConversationAlways()I

    move-result v1

    .line 153
    .local v1, result:I
    packed-switch v1, :pswitch_data_0

    .line 161
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/android/email/mail/DeviceAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 178
    :goto_0
    new-array v2, v8, [Ljava/lang/String;

    iget-object v3, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-object v3, v3, Lcom/android/email/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    aput-object v3, v2, v6

    const-string v3, ": sync finished"

    aput-object v9, v2, v7

    invoke-virtual {p0, v2}, Lcom/android/exchange/EasConvSvc;->userLog([Ljava/lang/String;)V

    .line 179
    .end local v1           #result:I
    :goto_1
    invoke-static {p0}, Lcom/android/exchange/SyncManager;->done(Lcom/android/exchange/AbstractSyncService;)V

    .line 181
    return-void

    .line 155
    .restart local v1       #result:I
    :pswitch_0
    const/4 v2, 0x2

    :try_start_1
    iput v2, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/android/email/mail/DeviceAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 165
    .end local v1           #result:I
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 166
    .local v0, e:Lcom/android/email/mail/DeviceAccessException;
    :try_start_2
    const-string v2, "DeviceAccessPermission"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Caught Exceptoin, Device is blocked or quarantined "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/email/mail/DeviceAccessException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/exchange/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    const/4 v2, 0x5

    iput v2, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    .line 168
    iget-object v2, p0, Lcom/android/exchange/EasConvSvc;->mConversationId:[B

    const/4 v3, 0x3

    const/16 v4, 0x64

    iget v5, p0, Lcom/android/exchange/EasConvSvc;->mIgnore:I

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/exchange/EasConvSvc;->moveConvAlwaysCb([BIII)V

    .line 169
    iget-object v2, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v2, v2, Lcom/android/email/provider/EmailContent;->mId:J

    sget v4, Lcom/android/email/provider/EmailContent$Account;->DEVICE_IS_BLOCKED:I

    invoke-static {v2, v3, v4}, Lcom/android/exchange/SyncManager;->blockDevice(JI)V

    .line 170
    iget-object v2, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v2, v2, Lcom/android/email/provider/EmailContent;->mId:J

    invoke-static {v2, v3}, Lcom/android/exchange/SyncManager;->stopAccountSyncs(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 178
    new-array v2, v8, [Ljava/lang/String;

    iget-object v3, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-object v3, v3, Lcom/android/email/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    aput-object v3, v2, v6

    const-string v3, ": sync finished"

    aput-object v9, v2, v7

    invoke-virtual {p0, v2}, Lcom/android/exchange/EasConvSvc;->userLog([Ljava/lang/String;)V

    goto :goto_1

    .line 158
    .end local v0           #e:Lcom/android/email/mail/DeviceAccessException;
    .restart local v1       #result:I
    :pswitch_1
    const/4 v2, 0x3

    :try_start_3
    iput v2, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lcom/android/email/mail/DeviceAccessException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 172
    .end local v1           #result:I
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 173
    .local v0, e:Ljava/io/IOException;
    const/4 v2, 0x1

    :try_start_4
    iput v2, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 178
    new-array v2, v8, [Ljava/lang/String;

    iget-object v3, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-object v3, v3, Lcom/android/email/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    aput-object v3, v2, v6

    const-string v3, ": sync finished"

    aput-object v9, v2, v7

    invoke-virtual {p0, v2}, Lcom/android/exchange/EasConvSvc;->userLog([Ljava/lang/String;)V

    goto :goto_1

    .line 174
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v2

    move-object v0, v2

    .line 175
    .local v0, e:Ljava/lang/Exception;
    :try_start_5
    const-string v2, "Exception caught in EasConvSvc"

    invoke-virtual {p0, v2, v0}, Lcom/android/exchange/EasConvSvc;->userLog(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 176
    const/4 v2, 0x3

    iput v2, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 178
    new-array v2, v8, [Ljava/lang/String;

    iget-object v3, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-object v3, v3, Lcom/android/email/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    aput-object v3, v2, v6

    const-string v3, ": sync finished"

    aput-object v9, v2, v7

    invoke-virtual {p0, v2}, Lcom/android/exchange/EasConvSvc;->userLog([Ljava/lang/String;)V

    goto/16 :goto_1

    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    new-array v3, v8, [Ljava/lang/String;

    iget-object v4, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-object v4, v4, Lcom/android/email/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    aput-object v4, v3, v6

    const-string v4, ": sync finished"

    aput-object v9, v3, v7

    invoke-virtual {p0, v3}, Lcom/android/exchange/EasConvSvc;->userLog([Ljava/lang/String;)V

    .line 179
    invoke-static {p0}, Lcom/android/exchange/SyncManager;->done(Lcom/android/exchange/AbstractSyncService;)V

    .line 178
    throw v2

    .line 153
    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
