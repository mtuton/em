.class public Lcom/android/exchange/EasEmptyTrashSvc;
.super Lcom/android/exchange/EasSyncService;
.source "EasEmptyTrashSvc.java"


# static fields
.field private static final COMMAND_TIMEOUT:I = 0x4e20


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/email/provider/EmailContent$Mailbox;)V
    .locals 2
    .parameter "_context"
    .parameter "_mailbox"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/android/exchange/EasSyncService;-><init>(Landroid/content/Context;Lcom/android/email/provider/EmailContent$Mailbox;)V

    .line 42
    iget-object v0, p0, Lcom/android/exchange/EasEmptyTrashSvc;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/exchange/EasEmptyTrashSvc;->mProtocolVersion:Ljava/lang/String;

    .line 43
    iget-object v0, p0, Lcom/android/exchange/EasEmptyTrashSvc;->mProtocolVersion:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/EasEmptyTrashSvc;->mProtocolVersionDouble:Ljava/lang/Double;

    .line 44
    return-void
.end method

.method private emptyTrash()I
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasEmptyTrashSvc;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Account;->mId:J

    move-wide/from16 v21, v0

    const/16 v23, 0x1

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v21

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/exchange/EasEmptyTrashSvc;->emptyTrashCb(JII)V

    .line 57
    const/16 v16, 0x0

    .line 59
    .local v16, result:I
    new-instance v18, Lcom/android/exchange/adapter/Serializer;

    invoke-direct/range {v18 .. v18}, Lcom/android/exchange/adapter/Serializer;-><init>()V

    .line 60
    .local v18, s:Lcom/android/exchange/adapter/Serializer;
    const/4 v8, 0x0

    .line 62
    .local v8, commandType:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasEmptyTrashSvc;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mServerId:Ljava/lang/String;

    move-object/from16 v21, v0

    if-nez v21, :cond_2

    .line 63
    const-string v21, "EasEmptyTrashSvc"

    const-string v22, "mServerId is null"

    invoke-static/range {v21 .. v22}, Lcom/android/exchange/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasEmptyTrashSvc;->mProtocolVersionDouble:Ljava/lang/Double;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v21

    const-wide/high16 v23, 0x4028

    cmpl-double v21, v21, v23

    if-ltz v21, :cond_0

    .line 68
    const-string v8, "ItemOperations"

    .line 71
    const/16 v21, 0x505

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v21

    const/16 v22, 0x512

    invoke-virtual/range {v21 .. v22}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v21

    const/16 v22, 0x12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasEmptyTrashSvc;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mServerId:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v21

    const/16 v22, 0x508

    invoke-virtual/range {v21 .. v22}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v21

    const/16 v22, 0x513

    invoke-virtual/range {v21 .. v22}, Lcom/android/exchange/adapter/Serializer;->tag(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/exchange/adapter/Serializer;->done()V

    .line 86
    :cond_0
    :try_start_0
    sget-boolean v21, Lcom/android/exchange/Eas;->PARSER_LOG:Z

    if-eqz v21, :cond_1

    .line 87
    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const-string v23, "emptyTrash(): Wbxml:"

    aput-object v23, v21, v22

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasEmptyTrashSvc;->userLog([Ljava/lang/String;)V

    .line 88
    invoke-virtual/range {v18 .. v18}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v5

    .line 89
    .local v5, b:[B
    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 90
    .local v6, byTe:Ljava/io/ByteArrayInputStream;
    new-instance v14, Lcom/android/exchange/adapter/LogAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasEmptyTrashSvc;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    move-object/from16 v21, v0

    move-object v0, v14

    move-object/from16 v1, v21

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/adapter/LogAdapter;-><init>(Lcom/android/email/provider/EmailContent$Mailbox;Lcom/android/exchange/EasSyncService;)V

    .line 91
    .local v14, logA:Lcom/android/exchange/adapter/LogAdapter;
    invoke-virtual {v14, v6}, Lcom/android/exchange/adapter/LogAdapter;->parse(Ljava/io/InputStream;)Z

    .line 95
    .end local v5           #b:[B
    .end local v6           #byTe:Ljava/io/ByteArrayInputStream;
    .end local v14           #logA:Lcom/android/exchange/adapter/LogAdapter;
    :cond_1
    invoke-virtual/range {v18 .. v18}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v21

    move-object/from16 v0, p0

    move-object v1, v8

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/EasEmptyTrashSvc;->sendHttpClientPost(Ljava/lang/String;[B)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v15

    .line 115
    .local v15, res:Lorg/apache/http/HttpResponse;
    invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v7

    .line 117
    .local v7, code:I
    const-string v21, "emptyTrash(): sendHttpClientPost HTTP response code: "

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/EasEmptyTrashSvc;->userLog(Ljava/lang/String;I)V

    .line 119
    const/16 v21, 0xc8

    move v0, v7

    move/from16 v1, v21

    if-ne v0, v1, :cond_6

    .line 121
    invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v9

    .line 129
    .local v9, e:Lorg/apache/http/HttpEntity;
    invoke-interface {v9}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v21

    move-wide/from16 v0, v21

    long-to-int v0, v0

    move v13, v0

    .line 130
    .local v13, len:I
    invoke-interface {v9}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v12

    .line 131
    .local v12, is:Ljava/io/InputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasEmptyTrashSvc;->TAG:Ljava/lang/String;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "contentLength = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    if-ltz v13, :cond_3

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    :goto_1
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/exchange/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    if-eqz v12, :cond_5

    .line 137
    :try_start_1
    new-instance v11, Lcom/android/exchange/adapter/ItemOperationsParser;

    new-instance v21, Lcom/android/exchange/adapter/ItemOperationsAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasEmptyTrashSvc;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/adapter/ItemOperationsAdapter;-><init>(Lcom/android/email/provider/EmailContent$Mailbox;Lcom/android/exchange/EasSyncService;)V

    move-object v0, v11

    move-object v1, v12

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/adapter/ItemOperationsParser;-><init>(Ljava/io/InputStream;Lcom/android/exchange/adapter/AbstractSyncAdapter;)V

    .line 138
    .local v11, iop:Lcom/android/exchange/adapter/ItemOperationsParser;
    invoke-virtual {v11}, Lcom/android/exchange/adapter/ItemOperationsParser;->parse()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v20

    .line 142
    .end local v11           #iop:Lcom/android/exchange/adapter/ItemOperationsParser;
    .local v20, successp:Z
    :goto_2
    if-eqz v20, :cond_4

    .line 144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasEmptyTrashSvc;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Account;->mId:J

    move-wide/from16 v21, v0

    const/16 v23, 0x0

    const/16 v24, 0x64

    move-object/from16 v0, p0

    move-wide/from16 v1, v21

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/exchange/EasEmptyTrashSvc;->emptyTrashCb(JII)V

    .line 149
    :goto_3
    const/16 v16, 0x0

    .end local v9           #e:Lorg/apache/http/HttpEntity;
    .end local v12           #is:Ljava/io/InputStream;
    .end local v13           #len:I
    .end local v20           #successp:Z
    :goto_4
    move/from16 v17, v16

    .line 164
    .end local v7           #code:I
    .end local v15           #res:Lorg/apache/http/HttpResponse;
    .end local v16           #result:I
    .local v17, result:I
    :goto_5
    return v17

    .line 65
    .end local v17           #result:I
    .restart local v16       #result:I
    :cond_2
    const-string v21, "EasEmptyTrashSvc"

    const-string v22, "mServerId is NOT null"

    invoke-static/range {v21 .. v22}, Lcom/android/exchange/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 97
    :catch_0
    move-exception v21

    move-object/from16 v19, v21

    .line 100
    .local v19, ste:Ljava/net/SocketTimeoutException;
    const/16 v16, 0x0

    .line 102
    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "emptyTrash(): Exception obtained: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v19 .. v19}, Ljava/net/SocketTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasEmptyTrashSvc;->userLog([Ljava/lang/String;)V

    .line 103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasEmptyTrashSvc;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Account;->mId:J

    move-wide/from16 v21, v0

    const/high16 v23, 0x6

    const/16 v24, 0x64

    move-object/from16 v0, p0

    move-wide/from16 v1, v21

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/exchange/EasEmptyTrashSvc;->emptyTrashCb(JII)V

    move/from16 v17, v16

    .line 104
    .end local v16           #result:I
    .restart local v17       #result:I
    goto :goto_5

    .line 106
    .end local v17           #result:I
    .end local v19           #ste:Ljava/net/SocketTimeoutException;
    .restart local v16       #result:I
    :catch_1
    move-exception v21

    move-object/from16 v9, v21

    .line 107
    .local v9, e:Ljava/lang/Exception;
    const/16 v16, 0x0

    .line 110
    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "emptyTrash(): Exception obtained: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasEmptyTrashSvc;->userLog([Ljava/lang/String;)V

    .line 111
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasEmptyTrashSvc;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Account;->mId:J

    move-wide/from16 v21, v0

    const/16 v23, -0x3

    const/16 v24, 0x64

    move-object/from16 v0, p0

    move-wide/from16 v1, v21

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/exchange/EasEmptyTrashSvc;->emptyTrashCb(JII)V

    move/from16 v17, v16

    .line 112
    .end local v16           #result:I
    .restart local v17       #result:I
    goto/16 :goto_5

    .line 131
    .end local v17           #result:I
    .restart local v7       #code:I
    .local v9, e:Lorg/apache/http/HttpEntity;
    .restart local v12       #is:Ljava/io/InputStream;
    .restart local v13       #len:I
    .restart local v15       #res:Lorg/apache/http/HttpResponse;
    .restart local v16       #result:I
    :cond_3
    const-string v23, "Unknown"

    goto/16 :goto_1

    .line 139
    :catch_2
    move-exception v21

    move-object/from16 v10, v21

    .line 140
    .local v10, ioe:Ljava/io/IOException;
    const/16 v20, 0x0

    .restart local v20       #successp:Z
    goto/16 :goto_2

    .line 147
    .end local v10           #ioe:Ljava/io/IOException;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasEmptyTrashSvc;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Account;->mId:J

    move-wide/from16 v21, v0

    const/high16 v23, 0x1

    const/16 v24, 0x64

    move-object/from16 v0, p0

    move-wide/from16 v1, v21

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/exchange/EasEmptyTrashSvc;->emptyTrashCb(JII)V

    goto/16 :goto_3

    .line 151
    .end local v20           #successp:Z
    :cond_5
    const/16 v16, 0x0

    .line 152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasEmptyTrashSvc;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Account;->mId:J

    move-wide/from16 v21, v0

    const/16 v23, 0x15

    const/16 v24, 0x64

    move-object/from16 v0, p0

    move-wide/from16 v1, v21

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/exchange/EasEmptyTrashSvc;->emptyTrashCb(JII)V

    goto/16 :goto_4

    .line 155
    .end local v9           #e:Lorg/apache/http/HttpEntity;
    .end local v12           #is:Ljava/io/InputStream;
    .end local v13           #len:I
    :cond_6
    const/16 v16, 0x15

    .line 157
    move-object/from16 v0, p0

    move v1, v7

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasEmptyTrashSvc;->isAuthError(I)Z

    move-result v21

    if-eqz v21, :cond_7

    .line 158
    const/16 v16, 0x16

    .line 160
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasEmptyTrashSvc;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Account;->mId:J

    move-wide/from16 v21, v0

    const/16 v23, 0x64

    move-object/from16 v0, p0

    move-wide/from16 v1, v21

    move/from16 v3, v16

    move/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/exchange/EasEmptyTrashSvc;->emptyTrashCb(JII)V

    .line 161
    const/16 v16, 0x0

    goto/16 :goto_4
.end method

.method private emptyTrashCb(JII)V
    .locals 1
    .parameter "accId"
    .parameter "status"
    .parameter "progress"

    .prologue
    .line 48
    :try_start_0
    invoke-static {}, Lcom/android/exchange/SyncManager;->callback()Lcom/android/email/service/IEmailServiceCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/email/service/IEmailServiceCallback;->emptyTrashStatus(JII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :goto_0
    return-void

    .line 49
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v10, "OoB exited with status "

    const-string v9, ": sync finished"

    .line 169
    invoke-virtual {p0}, Lcom/android/exchange/EasEmptyTrashSvc;->setupService()Z

    .line 172
    :try_start_0
    invoke-static {}, Lcom/android/exchange/SyncManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exchange/EasEmptyTrashSvc;->mDeviceId:Ljava/lang/String;

    .line 175
    iget-object v2, p0, Lcom/android/exchange/EasEmptyTrashSvc;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-wide/high16 v4, 0x4028

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    .line 178
    const/4 v1, 0x0

    .line 179
    .local v1, result:I
    iget-object v2, p0, Lcom/android/exchange/EasEmptyTrashSvc;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v2, v2, Lcom/android/email/provider/EmailContent$Account;->mId:J

    const/4 v4, -0x2

    const/16 v5, 0x64

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/exchange/EasEmptyTrashSvc;->emptyTrashCb(JII)V

    .line 184
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 192
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/exchange/EasEmptyTrashSvc;->mExitStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 201
    :goto_1
    new-array v2, v8, [Ljava/lang/String;

    iget-object v3, p0, Lcom/android/exchange/EasEmptyTrashSvc;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-object v3, v3, Lcom/android/email/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    aput-object v3, v2, v6

    const-string v3, ": sync finished"

    aput-object v9, v2, v7

    invoke-virtual {p0, v2}, Lcom/android/exchange/EasEmptyTrashSvc;->userLog([Ljava/lang/String;)V

    .line 202
    const-string v2, "OoB exited with status "

    iget v2, p0, Lcom/android/exchange/EasEmptyTrashSvc;->mExitStatus:I

    invoke-virtual {p0, v10, v2}, Lcom/android/exchange/EasEmptyTrashSvc;->userLog(Ljava/lang/String;I)V

    .line 204
    .end local v1           #result:I
    :goto_2
    invoke-static {p0}, Lcom/android/exchange/SyncManager;->doneOutOfBand(Lcom/android/exchange/AbstractSyncService;)V

    .line 206
    return-void

    .line 181
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/android/exchange/EasEmptyTrashSvc;->emptyTrash()I

    move-result v1

    .restart local v1       #result:I
    goto :goto_0

    .line 186
    :pswitch_0
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/exchange/EasEmptyTrashSvc;->mExitStatus:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 195
    .end local v1           #result:I
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 196
    .local v0, e:Ljava/io/IOException;
    const/4 v2, 0x1

    :try_start_2
    iput v2, p0, Lcom/android/exchange/EasEmptyTrashSvc;->mExitStatus:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 201
    new-array v2, v8, [Ljava/lang/String;

    iget-object v3, p0, Lcom/android/exchange/EasEmptyTrashSvc;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-object v3, v3, Lcom/android/email/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    aput-object v3, v2, v6

    const-string v3, ": sync finished"

    aput-object v9, v2, v7

    invoke-virtual {p0, v2}, Lcom/android/exchange/EasEmptyTrashSvc;->userLog([Ljava/lang/String;)V

    .line 202
    const-string v2, "OoB exited with status "

    iget v2, p0, Lcom/android/exchange/EasEmptyTrashSvc;->mExitStatus:I

    invoke-virtual {p0, v10, v2}, Lcom/android/exchange/EasEmptyTrashSvc;->userLog(Ljava/lang/String;I)V

    goto :goto_2

    .line 189
    .end local v0           #e:Ljava/io/IOException;
    .restart local v1       #result:I
    :pswitch_1
    const/4 v2, 0x3

    :try_start_3
    iput v2, p0, Lcom/android/exchange/EasEmptyTrashSvc;->mExitStatus:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 197
    .end local v1           #result:I
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 198
    .local v0, e:Ljava/lang/Exception;
    :try_start_4
    const-string v2, "Exception caught in EasEmptyTrashSvc"

    invoke-virtual {p0, v2, v0}, Lcom/android/exchange/EasEmptyTrashSvc;->userLog(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 199
    const/4 v2, 0x3

    iput v2, p0, Lcom/android/exchange/EasEmptyTrashSvc;->mExitStatus:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 201
    new-array v2, v8, [Ljava/lang/String;

    iget-object v3, p0, Lcom/android/exchange/EasEmptyTrashSvc;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-object v3, v3, Lcom/android/email/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    aput-object v3, v2, v6

    const-string v3, ": sync finished"

    aput-object v9, v2, v7

    invoke-virtual {p0, v2}, Lcom/android/exchange/EasEmptyTrashSvc;->userLog([Ljava/lang/String;)V

    .line 202
    const-string v2, "OoB exited with status "

    iget v2, p0, Lcom/android/exchange/EasEmptyTrashSvc;->mExitStatus:I

    invoke-virtual {p0, v10, v2}, Lcom/android/exchange/EasEmptyTrashSvc;->userLog(Ljava/lang/String;I)V

    goto :goto_2

    .line 201
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    new-array v3, v8, [Ljava/lang/String;

    iget-object v4, p0, Lcom/android/exchange/EasEmptyTrashSvc;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-object v4, v4, Lcom/android/email/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    aput-object v4, v3, v6

    const-string v4, ": sync finished"

    aput-object v9, v3, v7

    invoke-virtual {p0, v3}, Lcom/android/exchange/EasEmptyTrashSvc;->userLog([Ljava/lang/String;)V

    .line 202
    const-string v3, "OoB exited with status "

    iget v3, p0, Lcom/android/exchange/EasEmptyTrashSvc;->mExitStatus:I

    invoke-virtual {p0, v10, v3}, Lcom/android/exchange/EasEmptyTrashSvc;->userLog(Ljava/lang/String;I)V

    .line 204
    invoke-static {p0}, Lcom/android/exchange/SyncManager;->doneOutOfBand(Lcom/android/exchange/AbstractSyncService;)V

    .line 201
    throw v2

    .line 184
    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
