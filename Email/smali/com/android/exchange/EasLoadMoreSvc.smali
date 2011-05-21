.class public Lcom/android/exchange/EasLoadMoreSvc;
.super Lcom/android/exchange/EasSyncService;
.source "EasLoadMoreSvc.java"


# static fields
.field private static final COMMAND_TIMEOUT:I = 0x4e20


# instance fields
.field public mMsg:Lcom/android/email/provider/EmailContent$Message;

.field public userCancelledFlag:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/email/provider/EmailContent$Message;)V
    .locals 2
    .parameter "_context"
    .parameter "_msg"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/android/exchange/EasSyncService;-><init>(Landroid/content/Context;Lcom/android/email/provider/EmailContent$Message;)V

    .line 47
    iput-object p2, p0, Lcom/android/exchange/EasLoadMoreSvc;->mMsg:Lcom/android/email/provider/EmailContent$Message;

    .line 49
    iget-object v0, p0, Lcom/android/exchange/EasLoadMoreSvc;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/exchange/EasLoadMoreSvc;->mProtocolVersion:Ljava/lang/String;

    .line 50
    iget-object v0, p0, Lcom/android/exchange/EasLoadMoreSvc;->mProtocolVersion:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/EasLoadMoreSvc;->mProtocolVersionDouble:Ljava/lang/Double;

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exchange/EasLoadMoreSvc;->userCancelledFlag:Z

    .line 53
    return-void
.end method

.method private loadMore()I
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasLoadMoreSvc;->mMsg:Lcom/android/email/provider/EmailContent$Message;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Message;->mId:J

    move-wide/from16 v21, v0

    const/16 v23, 0x1

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v21

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/exchange/EasLoadMoreSvc;->loadMoreCb(JII)V

    .line 69
    const/16 v17, 0x0

    .line 71
    .local v17, result:I
    new-instance v19, Lcom/android/exchange/adapter/Serializer;

    invoke-direct/range {v19 .. v19}, Lcom/android/exchange/adapter/Serializer;-><init>()V

    .line 72
    .local v19, s:Lcom/android/exchange/adapter/Serializer;
    const/4 v7, 0x0

    .line 73
    .local v7, commandType:Ljava/lang/String;
    const/4 v9, 0x0

    .line 75
    .local v9, eas12p:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasLoadMoreSvc;->mProtocolVersionDouble:Ljava/lang/Double;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v21

    const-wide/high16 v23, 0x4028

    cmpl-double v21, v21, v23

    if-ltz v21, :cond_4

    .line 76
    const-string v7, "ItemOperations"

    .line 78
    const/16 v21, 0x505

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v21

    const/16 v22, 0x506

    invoke-virtual/range {v21 .. v22}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v21

    const/16 v22, 0x507

    const-string v23, "Mailbox"

    invoke-virtual/range {v21 .. v23}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 82
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasLoadMoreSvc;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mServerId:Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasLoadMoreSvc;->mMsg:Lcom/android/email/provider/EmailContent$Message;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_3

    .line 84
    const/16 v21, 0x12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasLoadMoreSvc;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mServerId:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v19

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 85
    const/16 v21, 0xd

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasLoadMoreSvc;->mMsg:Lcom/android/email/provider/EmailContent$Message;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v19

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 90
    :cond_0
    :goto_0
    const/16 v21, 0x508

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v21

    const/16 v22, 0x22

    const-string v23, "2"

    invoke-virtual/range {v21 .. v23}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v21

    const/16 v22, 0x445

    invoke-virtual/range {v21 .. v22}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v21

    const/16 v22, 0x446

    const-string v23, "4"

    invoke-virtual/range {v21 .. v23}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/exchange/adapter/Serializer;->done()V

    .line 99
    const/4 v9, 0x1

    .line 131
    :goto_1
    :try_start_0
    sget-boolean v21, Lcom/android/exchange/Eas;->PARSER_LOG:Z

    if-eqz v21, :cond_1

    .line 132
    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const-string v23, "loadMore(): Wbxml:"

    aput-object v23, v21, v22

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasLoadMoreSvc;->userLog([Ljava/lang/String;)V

    .line 133
    invoke-virtual/range {v19 .. v19}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v5

    .line 134
    .local v5, b:[B
    new-instance v21, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v21

    move-object v1, v5

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 140
    .end local v5           #b:[B
    :cond_1
    invoke-virtual/range {v19 .. v19}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v21

    move-object/from16 v0, p0

    move-object v1, v7

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/EasLoadMoreSvc;->sendHttpClientPost(Ljava/lang/String;[B)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v16

    .line 153
    .local v16, res:Lorg/apache/http/HttpResponse;
    invoke-interface/range {v16 .. v16}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    .line 154
    .local v6, code:I
    const-string v21, "loadMore(): sendHttpClientPost HTTP response code: "

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/EasLoadMoreSvc;->userLog(Ljava/lang/String;I)V

    .line 156
    const/16 v21, 0xc8

    move v0, v6

    move/from16 v1, v21

    if-ne v0, v1, :cond_8

    .line 158
    invoke-interface/range {v16 .. v16}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v8

    .line 162
    .local v8, e:Lorg/apache/http/HttpEntity;
    invoke-interface {v8}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v14

    .local v14, is:Ljava/io/InputStream;
    if-eqz v14, :cond_7

    .line 165
    const/16 v20, 0x1

    .line 167
    .local v20, successp:Z
    if-eqz v9, :cond_6

    .line 169
    :try_start_1
    new-instance v13, Lcom/android/exchange/adapter/ItemOperationsAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasLoadMoreSvc;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    move-object/from16 v21, v0

    move-object v0, v13

    move-object/from16 v1, v21

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/adapter/ItemOperationsAdapter;-><init>(Lcom/android/email/provider/EmailContent$Mailbox;Lcom/android/exchange/EasSyncService;)V

    .line 170
    .local v13, iot:Lcom/android/exchange/adapter/ItemOperationsAdapter;
    const/16 v21, 0x1

    move-object v0, v13

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/ItemOperationsAdapter;->setMIMERequested(Z)V

    .line 171
    new-instance v12, Lcom/android/exchange/adapter/ItemOperationsParser;

    invoke-direct {v12, v14, v13}, Lcom/android/exchange/adapter/ItemOperationsParser;-><init>(Ljava/io/InputStream;Lcom/android/exchange/adapter/AbstractSyncAdapter;)V

    .line 173
    .local v12, iop:Lcom/android/exchange/adapter/ItemOperationsParser;
    invoke-virtual {v12}, Lcom/android/exchange/adapter/ItemOperationsParser;->parse()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_2

    .line 188
    .end local v12           #iop:Lcom/android/exchange/adapter/ItemOperationsParser;
    .end local v13           #iot:Lcom/android/exchange/adapter/ItemOperationsAdapter;
    :goto_2
    if-eqz v20, :cond_2

    .line 189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasLoadMoreSvc;->mMsg:Lcom/android/email/provider/EmailContent$Message;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Message;->mId:J

    move-wide/from16 v21, v0

    const/16 v23, 0x0

    const/16 v24, 0x64

    move-object/from16 v0, p0

    move-wide/from16 v1, v21

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/exchange/EasLoadMoreSvc;->loadMoreCb(JII)V

    .line 192
    :cond_2
    const/16 v17, 0x0

    .end local v8           #e:Lorg/apache/http/HttpEntity;
    .end local v14           #is:Ljava/io/InputStream;
    .end local v20           #successp:Z
    :goto_3
    move/from16 v18, v17

    .line 207
    .end local v6           #code:I
    .end local v16           #res:Lorg/apache/http/HttpResponse;
    .end local v17           #result:I
    .local v18, result:I
    :goto_4
    return v18

    .line 86
    .end local v18           #result:I
    .restart local v17       #result:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasLoadMoreSvc;->mMsg:Lcom/android/email/provider/EmailContent$Message;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    .line 87
    const/16 v21, 0x3d8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasLoadMoreSvc;->mMsg:Lcom/android/email/provider/EmailContent$Message;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v19

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto/16 :goto_0

    .line 102
    :cond_4
    const-string v7, "Sync"

    .line 105
    const/16 v21, 0x5

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v21

    const/16 v22, 0x1c

    invoke-virtual/range {v21 .. v22}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v21

    const/16 v22, 0xf

    invoke-virtual/range {v21 .. v22}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v21

    const/16 v22, 0x10

    const-string v23, "Email"

    invoke-virtual/range {v21 .. v23}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v21

    const/16 v22, 0xb

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasLoadMoreSvc;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mSyncKey:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v21

    const/16 v22, 0x12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasLoadMoreSvc;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mServerId:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v21

    const/16 v22, 0x17

    invoke-virtual/range {v21 .. v22}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v21

    const/16 v22, 0x23

    const-string v23, "8"

    invoke-virtual/range {v21 .. v23}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v21

    const/16 v22, 0x22

    const-string v23, "2"

    invoke-virtual/range {v21 .. v23}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v21

    const/16 v22, 0x16

    invoke-virtual/range {v21 .. v22}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v21

    const/16 v22, 0xa

    invoke-virtual/range {v21 .. v22}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v21

    const/16 v22, 0xd

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasLoadMoreSvc;->mMsg:Lcom/android/email/provider/EmailContent$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/exchange/adapter/Serializer;->done()V

    goto/16 :goto_1

    .line 141
    :catch_0
    move-exception v21

    move-object/from16 v8, v21

    .line 143
    .local v8, e:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/exchange/EasLoadMoreSvc;->userCancelledFlag:Z

    move/from16 v21, v0

    if-nez v21, :cond_5

    .line 144
    const/16 v17, 0x0

    .line 145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasLoadMoreSvc;->mMsg:Lcom/android/email/provider/EmailContent$Message;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Message;->mId:J

    move-wide/from16 v21, v0

    const/16 v23, -0x3

    const/16 v24, 0x64

    move-object/from16 v0, p0

    move-wide/from16 v1, v21

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/exchange/EasLoadMoreSvc;->loadMoreCb(JII)V

    :goto_5
    move/from16 v18, v17

    .line 150
    .end local v17           #result:I
    .restart local v18       #result:I
    goto/16 :goto_4

    .line 147
    .end local v18           #result:I
    .restart local v17       #result:I
    :cond_5
    const/high16 v17, 0x10

    goto :goto_5

    .line 175
    .restart local v6       #code:I
    .local v8, e:Lorg/apache/http/HttpEntity;
    .restart local v14       #is:Ljava/io/InputStream;
    .restart local v16       #res:Lorg/apache/http/HttpResponse;
    .restart local v20       #successp:Z
    :cond_6
    :try_start_2
    new-instance v10, Lcom/android/exchange/adapter/EmailSyncAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasLoadMoreSvc;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    move-object/from16 v21, v0

    move-object v0, v10

    move-object/from16 v1, v21

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/adapter/EmailSyncAdapter;-><init>(Lcom/android/email/provider/EmailContent$Mailbox;Lcom/android/exchange/EasSyncService;)V

    .line 176
    .local v10, esa:Lcom/android/exchange/adapter/EmailSyncAdapter;
    invoke-virtual {v10, v14}, Lcom/android/exchange/adapter/EmailSyncAdapter;->parse(Ljava/io/InputStream;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_2

    .line 178
    .end local v10           #esa:Lcom/android/exchange/adapter/EmailSyncAdapter;
    :catch_1
    move-exception v21

    move-object/from16 v11, v21

    .line 179
    .local v11, ioe:Ljava/io/IOException;
    const/16 v20, 0x0

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasLoadMoreSvc;->mMsg:Lcom/android/email/provider/EmailContent$Message;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Message;->mId:J

    move-wide/from16 v21, v0

    const/high16 v23, 0x3

    const/16 v24, 0x64

    move-object/from16 v0, p0

    move-wide/from16 v1, v21

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/exchange/EasLoadMoreSvc;->loadMoreCb(JII)V

    goto/16 :goto_2

    .line 183
    .end local v11           #ioe:Ljava/io/IOException;
    :catch_2
    move-exception v21

    move-object/from16 v15, v21

    .line 184
    .local v15, ome:Ljava/lang/OutOfMemoryError;
    const/16 v20, 0x0

    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasLoadMoreSvc;->mMsg:Lcom/android/email/provider/EmailContent$Message;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Message;->mId:J

    move-wide/from16 v21, v0

    const/high16 v23, 0x5

    const/16 v24, 0x64

    move-object/from16 v0, p0

    move-wide/from16 v1, v21

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/exchange/EasLoadMoreSvc;->loadMoreCb(JII)V

    goto/16 :goto_2

    .line 194
    .end local v15           #ome:Ljava/lang/OutOfMemoryError;
    .end local v20           #successp:Z
    :cond_7
    const/16 v17, 0x0

    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasLoadMoreSvc;->mMsg:Lcom/android/email/provider/EmailContent$Message;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Message;->mId:J

    move-wide/from16 v21, v0

    const/16 v23, 0x15

    const/16 v24, 0x64

    move-object/from16 v0, p0

    move-wide/from16 v1, v21

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/exchange/EasLoadMoreSvc;->loadMoreCb(JII)V

    goto/16 :goto_3

    .line 198
    .end local v8           #e:Lorg/apache/http/HttpEntity;
    .end local v14           #is:Ljava/io/InputStream;
    :cond_8
    const/16 v17, 0x15

    .line 200
    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasLoadMoreSvc;->isAuthError(I)Z

    move-result v21

    if-eqz v21, :cond_9

    .line 201
    const/16 v17, 0x16

    .line 203
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasLoadMoreSvc;->mMsg:Lcom/android/email/provider/EmailContent$Message;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Message;->mId:J

    move-wide/from16 v21, v0

    const/16 v23, 0x64

    move-object/from16 v0, p0

    move-wide/from16 v1, v21

    move/from16 v3, v17

    move/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/exchange/EasLoadMoreSvc;->loadMoreCb(JII)V

    .line 204
    const/16 v17, 0x0

    goto/16 :goto_3
.end method

.method private loadMoreCb(JII)V
    .locals 1
    .parameter "msgId"
    .parameter "status"
    .parameter "progress"

    .prologue
    .line 57
    :try_start_0
    invoke-static {}, Lcom/android/exchange/SyncManager;->callback()Lcom/android/email/service/IEmailServiceCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/email/service/IEmailServiceCallback;->loadMoreStatus(JII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :goto_0
    return-void

    .line 58
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

    .line 212
    invoke-virtual {p0}, Lcom/android/exchange/EasLoadMoreSvc;->setupService()Z

    .line 215
    :try_start_0
    invoke-static {}, Lcom/android/exchange/SyncManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exchange/EasLoadMoreSvc;->mDeviceId:Ljava/lang/String;

    .line 217
    invoke-direct {p0}, Lcom/android/exchange/EasLoadMoreSvc;->loadMore()I

    move-result v1

    .line 218
    .local v1, result:I
    sparse-switch v1, :sswitch_data_0

    .line 229
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/exchange/EasLoadMoreSvc;->mExitStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 238
    :goto_0
    :sswitch_0
    new-array v2, v3, [Ljava/lang/String;

    iget-object v3, p0, Lcom/android/exchange/EasLoadMoreSvc;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-object v3, v3, Lcom/android/email/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    aput-object v3, v2, v5

    const-string v3, ": sync finished"

    aput-object v7, v2, v6

    invoke-virtual {p0, v2}, Lcom/android/exchange/EasLoadMoreSvc;->userLog([Ljava/lang/String;)V

    .line 239
    const-string v2, "OoB exited with status "

    iget v2, p0, Lcom/android/exchange/EasLoadMoreSvc;->mExitStatus:I

    invoke-virtual {p0, v8, v2}, Lcom/android/exchange/EasLoadMoreSvc;->userLog(Ljava/lang/String;I)V

    .line 241
    .end local v1           #result:I
    :goto_1
    invoke-static {p0}, Lcom/android/exchange/SyncManager;->doneOutOfBand(Lcom/android/exchange/AbstractSyncService;)V

    .line 243
    return-void

    .line 220
    .restart local v1       #result:I
    :sswitch_1
    const/4 v2, 0x2

    :try_start_1
    iput v2, p0, Lcom/android/exchange/EasLoadMoreSvc;->mExitStatus:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 232
    .end local v1           #result:I
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 233
    .local v0, e:Ljava/io/IOException;
    const/4 v2, 0x1

    :try_start_2
    iput v2, p0, Lcom/android/exchange/EasLoadMoreSvc;->mExitStatus:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 238
    new-array v2, v3, [Ljava/lang/String;

    iget-object v3, p0, Lcom/android/exchange/EasLoadMoreSvc;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-object v3, v3, Lcom/android/email/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    aput-object v3, v2, v5

    const-string v3, ": sync finished"

    aput-object v7, v2, v6

    invoke-virtual {p0, v2}, Lcom/android/exchange/EasLoadMoreSvc;->userLog([Ljava/lang/String;)V

    .line 239
    const-string v2, "OoB exited with status "

    iget v2, p0, Lcom/android/exchange/EasLoadMoreSvc;->mExitStatus:I

    invoke-virtual {p0, v8, v2}, Lcom/android/exchange/EasLoadMoreSvc;->userLog(Ljava/lang/String;I)V

    goto :goto_1

    .line 223
    .end local v0           #e:Ljava/io/IOException;
    .restart local v1       #result:I
    :sswitch_2
    const/4 v2, 0x3

    :try_start_3
    iput v2, p0, Lcom/android/exchange/EasLoadMoreSvc;->mExitStatus:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 234
    .end local v1           #result:I
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 235
    .local v0, e:Ljava/lang/Exception;
    :try_start_4
    const-string v2, "Exception caught in EasLoadMoreSvc"

    invoke-virtual {p0, v2, v0}, Lcom/android/exchange/EasLoadMoreSvc;->userLog(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 236
    const/4 v2, 0x3

    iput v2, p0, Lcom/android/exchange/EasLoadMoreSvc;->mExitStatus:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 238
    new-array v2, v3, [Ljava/lang/String;

    iget-object v3, p0, Lcom/android/exchange/EasLoadMoreSvc;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-object v3, v3, Lcom/android/email/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    aput-object v3, v2, v5

    const-string v3, ": sync finished"

    aput-object v7, v2, v6

    invoke-virtual {p0, v2}, Lcom/android/exchange/EasLoadMoreSvc;->userLog([Ljava/lang/String;)V

    .line 239
    const-string v2, "OoB exited with status "

    iget v2, p0, Lcom/android/exchange/EasLoadMoreSvc;->mExitStatus:I

    invoke-virtual {p0, v8, v2}, Lcom/android/exchange/EasLoadMoreSvc;->userLog(Ljava/lang/String;I)V

    goto :goto_1

    .line 238
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

    .line 239
    const-string v3, "OoB exited with status "

    iget v3, p0, Lcom/android/exchange/EasLoadMoreSvc;->mExitStatus:I

    invoke-virtual {p0, v8, v3}, Lcom/android/exchange/EasLoadMoreSvc;->userLog(Ljava/lang/String;I)V

    .line 241
    invoke-static {p0}, Lcom/android/exchange/SyncManager;->doneOutOfBand(Lcom/android/exchange/AbstractSyncService;)V

    .line 238
    throw v2

    .line 218
    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_2
        0x16 -> :sswitch_1
        0x100000 -> :sswitch_0
    .end sparse-switch
.end method

.method public userCancelled()V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/exchange/EasLoadMoreSvc;->userCancelledFlag:Z

    .line 64
    return-void
.end method
