.class public Lcom/android/exchange/EasLoadMoreSvc;
.super Lcom/android/exchange/EasSyncService;
.source "EasLoadMoreSvc.java"


# static fields
.field private static final COMMAND_TIMEOUT:I = 0x4e20


# instance fields
.field private mMsg:Lcom/android/email/provider/EmailContent$Message;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/email/provider/EmailContent$Message;)V
    .locals 2
    .parameter "_context"
    .parameter "_msg"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/android/exchange/EasSyncService;-><init>(Landroid/content/Context;Lcom/android/email/provider/EmailContent$Message;)V

    .line 44
    iput-object p2, p0, Lcom/android/exchange/EasLoadMoreSvc;->mMsg:Lcom/android/email/provider/EmailContent$Message;

    .line 46
    iget-object v0, p0, Lcom/android/exchange/EasLoadMoreSvc;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/exchange/EasLoadMoreSvc;->mProtocolVersion:Ljava/lang/String;

    .line 47
    iget-object v0, p0, Lcom/android/exchange/EasLoadMoreSvc;->mProtocolVersion:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/EasLoadMoreSvc;->mProtocolVersionDouble:Ljava/lang/Double;

    .line 48
    return-void
.end method

.method private loadMore()I
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasLoadMoreSvc;->mMsg:Lcom/android/email/provider/EmailContent$Message;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Message;->mId:J

    move-wide/from16 v20, v0

    const/16 v22, 0x1

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/exchange/EasLoadMoreSvc;->loadMoreCb(JII)V

    .line 61
    const/16 v16, 0x0

    .line 63
    .local v16, result:I
    new-instance v18, Lcom/android/exchange/adapter/Serializer;

    invoke-direct/range {v18 .. v18}, Lcom/android/exchange/adapter/Serializer;-><init>()V

    .line 64
    .local v18, s:Lcom/android/exchange/adapter/Serializer;
    const/4 v7, 0x0

    .line 65
    .local v7, commandType:Ljava/lang/String;
    const/4 v9, 0x0

    .line 67
    .local v9, eas12p:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasLoadMoreSvc;->mProtocolVersionDouble:Ljava/lang/Double;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v20

    const-wide/high16 v22, 0x4028

    cmpl-double v20, v20, v22

    if-ltz v20, :cond_4

    .line 68
    const-string v7, "ItemOperations"

    .line 70
    const/16 v20, 0x505

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v20

    const/16 v21, 0x506

    invoke-virtual/range {v20 .. v21}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v20

    const/16 v21, 0x507

    const-string v22, "Mailbox"

    invoke-virtual/range {v20 .. v22}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 74
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasLoadMoreSvc;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mServerId:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasLoadMoreSvc;->mMsg:Lcom/android/email/provider/EmailContent$Message;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_3

    .line 76
    const/16 v20, 0x12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasLoadMoreSvc;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mServerId:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 77
    const/16 v20, 0xd

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasLoadMoreSvc;->mMsg:Lcom/android/email/provider/EmailContent$Message;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 82
    :cond_0
    :goto_0
    const/16 v20, 0x508

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v20

    const/16 v21, 0x445

    invoke-virtual/range {v20 .. v21}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v20

    const/16 v21, 0x446

    const-string v22, "2"

    invoke-virtual/range {v20 .. v22}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/exchange/adapter/Serializer;->done()V

    .line 90
    const/4 v9, 0x1

    .line 122
    :goto_1
    :try_start_0
    sget-boolean v20, Lcom/android/exchange/Eas;->PARSER_LOG:Z

    if-eqz v20, :cond_1

    .line 123
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string v22, "loadMore(): Wbxml:"

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasLoadMoreSvc;->userLog([Ljava/lang/String;)V

    .line 124
    invoke-virtual/range {v18 .. v18}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v5

    .line 125
    .local v5, b:[B
    new-instance v20, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 131
    .end local v5           #b:[B
    :cond_1
    invoke-virtual/range {v18 .. v18}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v20

    move-object/from16 v0, p0

    move-object v1, v7

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/EasLoadMoreSvc;->sendHttpClientPost(Ljava/lang/String;[B)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v15

    .line 138
    .local v15, res:Lorg/apache/http/HttpResponse;
    invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    .line 139
    .local v6, code:I
    const-string v20, "loadMore(): sendHttpClientPost HTTP response code: "

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/EasLoadMoreSvc;->userLog(Ljava/lang/String;I)V

    .line 141
    const/16 v20, 0xc8

    move v0, v6

    move/from16 v1, v20

    if-ne v0, v1, :cond_7

    .line 143
    invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v8

    .line 147
    .local v8, e:Lorg/apache/http/HttpEntity;
    invoke-interface {v8}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v13

    .local v13, is:Ljava/io/InputStream;
    if-eqz v13, :cond_6

    .line 150
    const/16 v19, 0x1

    .line 152
    .local v19, successp:Z
    if-eqz v9, :cond_5

    .line 153
    :try_start_1
    new-instance v12, Lcom/android/exchange/adapter/ItemOperationsParser;

    new-instance v20, Lcom/android/exchange/adapter/ItemOperationsAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasLoadMoreSvc;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/adapter/ItemOperationsAdapter;-><init>(Lcom/android/email/provider/EmailContent$Mailbox;Lcom/android/exchange/EasSyncService;)V

    move-object v0, v12

    move-object v1, v13

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/adapter/ItemOperationsParser;-><init>(Ljava/io/InputStream;Lcom/android/exchange/adapter/AbstractSyncAdapter;)V

    .line 155
    .local v12, iop:Lcom/android/exchange/adapter/ItemOperationsParser;
    invoke-virtual {v12}, Lcom/android/exchange/adapter/ItemOperationsParser;->parse()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_2

    .line 170
    .end local v12           #iop:Lcom/android/exchange/adapter/ItemOperationsParser;
    :goto_2
    if-eqz v19, :cond_2

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasLoadMoreSvc;->mMsg:Lcom/android/email/provider/EmailContent$Message;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Message;->mId:J

    move-wide/from16 v20, v0

    const/16 v22, 0x0

    const/16 v23, 0x64

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/exchange/EasLoadMoreSvc;->loadMoreCb(JII)V

    .line 174
    :cond_2
    const/16 v16, 0x0

    .end local v8           #e:Lorg/apache/http/HttpEntity;
    .end local v13           #is:Ljava/io/InputStream;
    .end local v19           #successp:Z
    :goto_3
    move/from16 v17, v16

    .line 189
    .end local v6           #code:I
    .end local v15           #res:Lorg/apache/http/HttpResponse;
    .end local v16           #result:I
    .local v17, result:I
    :goto_4
    return v17

    .line 78
    .end local v17           #result:I
    .restart local v16       #result:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasLoadMoreSvc;->mMsg:Lcom/android/email/provider/EmailContent$Message;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    .line 79
    const/16 v20, 0x3d8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasLoadMoreSvc;->mMsg:Lcom/android/email/provider/EmailContent$Message;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto/16 :goto_0

    .line 93
    :cond_4
    const-string v7, "Sync"

    .line 96
    const/16 v20, 0x5

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v20

    const/16 v21, 0x1c

    invoke-virtual/range {v20 .. v21}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v20

    const/16 v21, 0xf

    invoke-virtual/range {v20 .. v21}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v20

    const/16 v21, 0x10

    const-string v22, "Email"

    invoke-virtual/range {v20 .. v22}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v20

    const/16 v21, 0xb

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasLoadMoreSvc;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mSyncKey:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v20 .. v22}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v20

    const/16 v21, 0x12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasLoadMoreSvc;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mServerId:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v20 .. v22}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v20

    const/16 v21, 0x17

    invoke-virtual/range {v20 .. v21}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v20

    const/16 v21, 0x23

    const-string v22, "8"

    invoke-virtual/range {v20 .. v22}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v20

    const/16 v21, 0x22

    const-string v22, "2"

    invoke-virtual/range {v20 .. v22}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v20

    const/16 v21, 0x16

    invoke-virtual/range {v20 .. v21}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v20

    const/16 v21, 0xa

    invoke-virtual/range {v20 .. v21}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v20

    const/16 v21, 0xd

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasLoadMoreSvc;->mMsg:Lcom/android/email/provider/EmailContent$Message;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v20 .. v22}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/exchange/adapter/Serializer;->done()V

    goto/16 :goto_1

    .line 132
    :catch_0
    move-exception v20

    move-object/from16 v8, v20

    .line 133
    .local v8, e:Ljava/lang/Exception;
    const/16 v16, 0x0

    .line 134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasLoadMoreSvc;->mMsg:Lcom/android/email/provider/EmailContent$Message;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Message;->mId:J

    move-wide/from16 v20, v0

    const/16 v22, -0x3

    const/16 v23, 0x64

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/exchange/EasLoadMoreSvc;->loadMoreCb(JII)V

    move/from16 v17, v16

    .line 135
    .end local v16           #result:I
    .restart local v17       #result:I
    goto/16 :goto_4

    .line 157
    .end local v17           #result:I
    .restart local v6       #code:I
    .local v8, e:Lorg/apache/http/HttpEntity;
    .restart local v13       #is:Ljava/io/InputStream;
    .restart local v15       #res:Lorg/apache/http/HttpResponse;
    .restart local v16       #result:I
    .restart local v19       #successp:Z
    :cond_5
    :try_start_2
    new-instance v10, Lcom/android/exchange/adapter/EmailSyncAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasLoadMoreSvc;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    move-object/from16 v20, v0

    move-object v0, v10

    move-object/from16 v1, v20

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/adapter/EmailSyncAdapter;-><init>(Lcom/android/email/provider/EmailContent$Mailbox;Lcom/android/exchange/EasSyncService;)V

    .line 158
    .local v10, esa:Lcom/android/exchange/adapter/EmailSyncAdapter;
    invoke-virtual {v10, v13}, Lcom/android/exchange/adapter/EmailSyncAdapter;->parse(Ljava/io/InputStream;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_2

    .line 160
    .end local v10           #esa:Lcom/android/exchange/adapter/EmailSyncAdapter;
    :catch_1
    move-exception v20

    move-object/from16 v11, v20

    .line 161
    .local v11, ioe:Ljava/io/IOException;
    const/16 v19, 0x0

    .line 164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasLoadMoreSvc;->mMsg:Lcom/android/email/provider/EmailContent$Message;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Message;->mId:J

    move-wide/from16 v20, v0

    const/high16 v22, 0x3

    const/16 v23, 0x64

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/exchange/EasLoadMoreSvc;->loadMoreCb(JII)V

    goto/16 :goto_2

    .line 165
    .end local v11           #ioe:Ljava/io/IOException;
    :catch_2
    move-exception v20

    move-object/from16 v14, v20

    .line 166
    .local v14, ome:Ljava/lang/OutOfMemoryError;
    const/16 v19, 0x0

    .line 168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasLoadMoreSvc;->mMsg:Lcom/android/email/provider/EmailContent$Message;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Message;->mId:J

    move-wide/from16 v20, v0

    const/high16 v22, 0x5

    const/16 v23, 0x64

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/exchange/EasLoadMoreSvc;->loadMoreCb(JII)V

    goto/16 :goto_2

    .line 176
    .end local v14           #ome:Ljava/lang/OutOfMemoryError;
    .end local v19           #successp:Z
    :cond_6
    const/16 v16, 0x0

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasLoadMoreSvc;->mMsg:Lcom/android/email/provider/EmailContent$Message;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Message;->mId:J

    move-wide/from16 v20, v0

    const/16 v22, 0x15

    const/16 v23, 0x64

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/exchange/EasLoadMoreSvc;->loadMoreCb(JII)V

    goto/16 :goto_3

    .line 180
    .end local v8           #e:Lorg/apache/http/HttpEntity;
    .end local v13           #is:Ljava/io/InputStream;
    :cond_7
    const/16 v16, 0x15

    .line 182
    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasLoadMoreSvc;->isAuthError(I)Z

    move-result v20

    if-eqz v20, :cond_8

    .line 183
    const/16 v16, 0x16

    .line 185
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasLoadMoreSvc;->mMsg:Lcom/android/email/provider/EmailContent$Message;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Message;->mId:J

    move-wide/from16 v20, v0

    const/16 v22, 0x64

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    move/from16 v3, v16

    move/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/exchange/EasLoadMoreSvc;->loadMoreCb(JII)V

    .line 186
    const/16 v16, 0x0

    goto/16 :goto_3
.end method

.method private loadMoreCb(JII)V
    .locals 1
    .parameter "msgId"
    .parameter "status"
    .parameter "progress"

    .prologue
    .line 52
    :try_start_0
    invoke-static {}, Lcom/android/exchange/SyncManager;->callback()Lcom/android/email/service/IEmailServiceCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/email/service/IEmailServiceCallback;->loadMoreStatus(JII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :goto_0
    return-void

    .line 53
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v3, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v8, "OoB exited with status "

    const-string v7, ": sync finished"

    .line 194
    invoke-virtual {p0}, Lcom/android/exchange/EasLoadMoreSvc;->setupService()Z

    .line 197
    :try_start_0
    invoke-static {}, Lcom/android/exchange/SyncManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exchange/EasLoadMoreSvc;->mDeviceId:Ljava/lang/String;

    .line 199
    invoke-direct {p0}, Lcom/android/exchange/EasLoadMoreSvc;->loadMore()I

    move-result v1

    .line 200
    .local v1, result:I
    packed-switch v1, :pswitch_data_0

    .line 208
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/exchange/EasLoadMoreSvc;->mExitStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 217
    :goto_0
    new-array v2, v3, [Ljava/lang/String;

    iget-object v3, p0, Lcom/android/exchange/EasLoadMoreSvc;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-object v3, v3, Lcom/android/email/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    aput-object v3, v2, v5

    const-string v3, ": sync finished"

    aput-object v7, v2, v6

    invoke-virtual {p0, v2}, Lcom/android/exchange/EasLoadMoreSvc;->userLog([Ljava/lang/String;)V

    .line 218
    const-string v2, "OoB exited with status "

    iget v2, p0, Lcom/android/exchange/EasLoadMoreSvc;->mExitStatus:I

    invoke-virtual {p0, v8, v2}, Lcom/android/exchange/EasLoadMoreSvc;->userLog(Ljava/lang/String;I)V

    .line 220
    .end local v1           #result:I
    :goto_1
    invoke-static {p0}, Lcom/android/exchange/SyncManager;->doneOutOfBand(Lcom/android/exchange/AbstractSyncService;)V

    .line 222
    return-void

    .line 202
    .restart local v1       #result:I
    :pswitch_0
    const/4 v2, 0x2

    :try_start_1
    iput v2, p0, Lcom/android/exchange/EasLoadMoreSvc;->mExitStatus:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 211
    .end local v1           #result:I
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 212
    .local v0, e:Ljava/io/IOException;
    const/4 v2, 0x1

    :try_start_2
    iput v2, p0, Lcom/android/exchange/EasLoadMoreSvc;->mExitStatus:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 217
    new-array v2, v3, [Ljava/lang/String;

    iget-object v3, p0, Lcom/android/exchange/EasLoadMoreSvc;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-object v3, v3, Lcom/android/email/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    aput-object v3, v2, v5

    const-string v3, ": sync finished"

    aput-object v7, v2, v6

    invoke-virtual {p0, v2}, Lcom/android/exchange/EasLoadMoreSvc;->userLog([Ljava/lang/String;)V

    .line 218
    const-string v2, "OoB exited with status "

    iget v2, p0, Lcom/android/exchange/EasLoadMoreSvc;->mExitStatus:I

    invoke-virtual {p0, v8, v2}, Lcom/android/exchange/EasLoadMoreSvc;->userLog(Ljava/lang/String;I)V

    goto :goto_1

    .line 205
    .end local v0           #e:Ljava/io/IOException;
    .restart local v1       #result:I
    :pswitch_1
    const/4 v2, 0x3

    :try_start_3
    iput v2, p0, Lcom/android/exchange/EasLoadMoreSvc;->mExitStatus:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 213
    .end local v1           #result:I
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 214
    .local v0, e:Ljava/lang/Exception;
    :try_start_4
    const-string v2, "Exception caught in EasLoadMoreSvc"

    invoke-virtual {p0, v2, v0}, Lcom/android/exchange/EasLoadMoreSvc;->userLog(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 215
    const/4 v2, 0x3

    iput v2, p0, Lcom/android/exchange/EasLoadMoreSvc;->mExitStatus:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 217
    new-array v2, v3, [Ljava/lang/String;

    iget-object v3, p0, Lcom/android/exchange/EasLoadMoreSvc;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-object v3, v3, Lcom/android/email/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    aput-object v3, v2, v5

    const-string v3, ": sync finished"

    aput-object v7, v2, v6

    invoke-virtual {p0, v2}, Lcom/android/exchange/EasLoadMoreSvc;->userLog([Ljava/lang/String;)V

    .line 218
    const-string v2, "OoB exited with status "

    iget v2, p0, Lcom/android/exchange/EasLoadMoreSvc;->mExitStatus:I

    invoke-virtual {p0, v8, v2}, Lcom/android/exchange/EasLoadMoreSvc;->userLog(Ljava/lang/String;I)V

    goto :goto_1

    .line 217
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    new-array v3, v3, [Ljava/lang/String;

    iget-object v4, p0, Lcom/android/exchange/EasLoadMoreSvc;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-object v4, v4, Lcom/android/email/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    aput-object v4, v3, v5

    const-string v4, ": sync finished"

    aput-object v7, v3, v6

    invoke-virtual {p0, v3}, Lcom/android/exchange/EasLoadMoreSvc;->userLog([Ljava/lang/String;)V

    .line 218
    const-string v3, "OoB exited with status "

    iget v3, p0, Lcom/android/exchange/EasLoadMoreSvc;->mExitStatus:I

    invoke-virtual {p0, v8, v3}, Lcom/android/exchange/EasLoadMoreSvc;->userLog(Ljava/lang/String;I)V

    .line 220
    invoke-static {p0}, Lcom/android/exchange/SyncManager;->doneOutOfBand(Lcom/android/exchange/AbstractSyncService;)V

    .line 217
    throw v2

    .line 200
    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
