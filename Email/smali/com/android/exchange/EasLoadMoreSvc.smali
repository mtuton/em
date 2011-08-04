.class public Lcom/android/exchange/EasLoadMoreSvc;
.super Lcom/android/exchange/EasSyncService;
.source "EasLoadMoreSvc.java"


# instance fields
.field public mMsg:Lcom/android/email/provider/EmailContent$Message;

.field private userCancelledFlag:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/email/provider/EmailContent$Message;)V
    .locals 2
    .parameter "_context"
    .parameter "_msg"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/android/exchange/EasSyncService;-><init>(Landroid/content/Context;Lcom/android/email/provider/EmailContent$Message;)V

    .line 51
    iput-object p2, p0, Lcom/android/exchange/EasLoadMoreSvc;->mMsg:Lcom/android/email/provider/EmailContent$Message;

    .line 53
    iget-object v0, p0, Lcom/android/exchange/EasLoadMoreSvc;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/exchange/EasLoadMoreSvc;->mProtocolVersion:Ljava/lang/String;

    .line 54
    iget-object v0, p0, Lcom/android/exchange/EasLoadMoreSvc;->mProtocolVersion:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/EasLoadMoreSvc;->mProtocolVersionDouble:Ljava/lang/Double;

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exchange/EasLoadMoreSvc;->userCancelledFlag:Z

    .line 58
    return-void
.end method

.method private loadMore()I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/email/mail/DeviceAccessException;
        }
    .end annotation

    .prologue
    .line 244
    iget-object v8, p0, Lcom/android/exchange/EasLoadMoreSvc;->mMsg:Lcom/android/email/provider/EmailContent$Message;

    iget-wide v8, v8, Lcom/android/email/provider/EmailContent$Message;->mId:J

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-direct {p0, v8, v9, v10, v11}, Lcom/android/exchange/EasLoadMoreSvc;->loadMoreCb(JII)V

    .line 246
    const/4 v4, 0x0

    .line 248
    .local v4, result:I
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {p0, v8, v9}, Lcom/android/exchange/EasLoadMoreSvc;->makeLoadMoreRequest(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 250
    .local v2, res:Lorg/apache/http/HttpResponse;
    if-nez v2, :cond_1

    .line 252
    iget-boolean v8, p0, Lcom/android/exchange/EasLoadMoreSvc;->userCancelledFlag:Z

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    .line 253
    const/high16 v4, 0x10

    :goto_0
    move v5, v4

    .line 354
    .end local v4           #result:I
    .local v5, result:I
    :goto_1
    return v5

    .line 255
    .end local v5           #result:I
    .restart local v4       #result:I
    :cond_0
    const/4 v4, 0x0

    .line 256
    iget-object v8, p0, Lcom/android/exchange/EasLoadMoreSvc;->mMsg:Lcom/android/email/provider/EmailContent$Message;

    iget-wide v8, v8, Lcom/android/email/provider/EmailContent$Message;->mId:J

    const/4 v10, -0x3

    const/16 v11, 0x64

    invoke-direct {p0, v8, v9, v10, v11}, Lcom/android/exchange/EasLoadMoreSvc;->loadMoreCb(JII)V

    goto :goto_0

    .line 262
    :cond_1
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 263
    .local v0, code:I
    const-string v8, "loadMore(): sendHttpClientPost HTTP response code: "

    invoke-virtual {p0, v8, v0}, Lcom/android/exchange/EasLoadMoreSvc;->userLog(Ljava/lang/String;I)V

    .line 265
    const/16 v8, 0xc8

    if-ne v0, v8, :cond_6

    .line 268
    invoke-direct {p0, v2}, Lcom/android/exchange/EasLoadMoreSvc;->parseLoadMoreResponse(Lorg/apache/http/HttpResponse;)I

    move-result v6

    .line 269
    .local v6, status:I
    sparse-switch v6, :sswitch_data_0

    .line 333
    invoke-virtual {p0, v0}, Lcom/android/exchange/EasLoadMoreSvc;->isProvisionError(I)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 334
    const/16 v4, 0x17

    .line 342
    :cond_2
    :goto_2
    iget-object v8, p0, Lcom/android/exchange/EasLoadMoreSvc;->mMsg:Lcom/android/email/provider/EmailContent$Message;

    iget-wide v8, v8, Lcom/android/email/provider/EmailContent$Message;->mId:J

    const/16 v10, 0x64

    invoke-direct {p0, v8, v9, v4, v10}, Lcom/android/exchange/EasLoadMoreSvc;->loadMoreCb(JII)V

    .end local v6           #status:I
    :goto_3
    move v5, v4

    .line 354
    .end local v4           #result:I
    .restart local v5       #result:I
    goto :goto_1

    .line 274
    .end local v5           #result:I
    .restart local v4       #result:I
    .restart local v6       #status:I
    :sswitch_0
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {p0, v8, v9}, Lcom/android/exchange/EasLoadMoreSvc;->makeLoadMoreRequest(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 276
    .local v3, resSecondRequest:Lorg/apache/http/HttpResponse;
    if-nez v3, :cond_3

    .line 277
    const/4 v4, 0x0

    .line 279
    iget-object v8, p0, Lcom/android/exchange/EasLoadMoreSvc;->mMsg:Lcom/android/email/provider/EmailContent$Message;

    iget-wide v8, v8, Lcom/android/email/provider/EmailContent$Message;->mId:J

    const/16 v10, 0x64

    invoke-direct {p0, v8, v9, v4, v10}, Lcom/android/exchange/EasLoadMoreSvc;->loadMoreCb(JII)V

    move v5, v4

    .line 281
    .end local v4           #result:I
    .restart local v5       #result:I
    goto :goto_1

    .line 285
    .end local v5           #result:I
    .restart local v4       #result:I
    :cond_3
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    .line 286
    .local v1, codeSecondRequest:I
    const-string v8, "loadMore(): sendHttpClientPost HTTP response code: "

    invoke-virtual {p0, v8, v1}, Lcom/android/exchange/EasLoadMoreSvc;->userLog(Ljava/lang/String;I)V

    .line 287
    const/16 v8, 0xc8

    if-ne v0, v8, :cond_2

    .line 288
    invoke-direct {p0, v3}, Lcom/android/exchange/EasLoadMoreSvc;->parseLoadMoreResponse(Lorg/apache/http/HttpResponse;)I

    move-result v7

    .line 290
    .local v7, statusSecondRequest:I
    packed-switch v7, :pswitch_data_0

    .line 303
    invoke-virtual {p0, v0}, Lcom/android/exchange/EasLoadMoreSvc;->isProvisionError(I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 304
    const/16 v4, 0x17

    .line 310
    :goto_4
    iget-object v8, p0, Lcom/android/exchange/EasLoadMoreSvc;->mMsg:Lcom/android/email/provider/EmailContent$Message;

    iget-wide v8, v8, Lcom/android/email/provider/EmailContent$Message;->mId:J

    const/16 v10, 0x64

    invoke-direct {p0, v8, v9, v4, v10}, Lcom/android/exchange/EasLoadMoreSvc;->loadMoreCb(JII)V

    move v5, v4

    .line 312
    .end local v4           #result:I
    .restart local v5       #result:I
    goto :goto_1

    .line 294
    .end local v5           #result:I
    .restart local v4       #result:I
    :pswitch_0
    const/4 v4, 0x0

    .line 295
    goto :goto_2

    .line 306
    :cond_4
    const/high16 v4, 0x3

    goto :goto_4

    .line 322
    .end local v1           #codeSecondRequest:I
    .end local v3           #resSecondRequest:Lorg/apache/http/HttpResponse;
    .end local v7           #statusSecondRequest:I
    :sswitch_1
    const/4 v4, 0x0

    .line 323
    goto :goto_2

    .line 336
    :cond_5
    const/high16 v4, 0x3

    goto :goto_2

    .line 345
    .end local v6           #status:I
    :cond_6
    const/16 v4, 0x15

    .line 346
    invoke-virtual {p0, v0}, Lcom/android/exchange/EasLoadMoreSvc;->isProvisionError(I)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 347
    const/16 v4, 0x17

    .line 351
    :cond_7
    :goto_5
    iget-object v8, p0, Lcom/android/exchange/EasLoadMoreSvc;->mMsg:Lcom/android/email/provider/EmailContent$Message;

    iget-wide v8, v8, Lcom/android/email/provider/EmailContent$Message;->mId:J

    const/16 v10, 0x64

    invoke-direct {p0, v8, v9, v4, v10}, Lcom/android/exchange/EasLoadMoreSvc;->loadMoreCb(JII)V

    goto :goto_3

    .line 348
    :cond_8
    invoke-virtual {p0, v0}, Lcom/android/exchange/EasLoadMoreSvc;->isAuthError(I)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 349
    const/16 v4, 0x16

    goto :goto_5

    .line 269
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x19 -> :sswitch_0
    .end sparse-switch

    .line 290
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private loadMoreCb(JII)V
    .locals 1
    .parameter "msgId"
    .parameter "status"
    .parameter "progress"

    .prologue
    .line 62
    :try_start_0
    invoke-static {}, Lcom/android/exchange/SyncManager;->callback()Lcom/android/email/service/IEmailServiceCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/email/service/IEmailServiceCallback;->loadMoreStatus(JII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :goto_0
    return-void

    .line 63
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private makeLoadMoreRequest(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpResponse;
    .locals 2
    .parameter "username"
    .parameter "pass"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/email/mail/DeviceAccessException;
        }
    .end annotation

    .prologue
    .line 170
    new-instance v0, Lcom/android/exchange/adapter/Serializer;

    invoke-direct {v0}, Lcom/android/exchange/adapter/Serializer;-><init>()V

    .line 173
    .local v0, s:Lcom/android/exchange/adapter/Serializer;
    invoke-direct {p0, v0, p1, p2}, Lcom/android/exchange/EasLoadMoreSvc;->prepareCommand(Lcom/android/exchange/adapter/Serializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    invoke-direct {p0, v0}, Lcom/android/exchange/EasLoadMoreSvc;->sendCommand(Lcom/android/exchange/adapter/Serializer;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    return-object v1
.end method

.method private parseLoadMoreResponse(Lorg/apache/http/HttpResponse;)I
    .locals 12
    .parameter "res"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/email/mail/DeviceAccessException;
        }
    .end annotation

    .prologue
    .line 188
    const/4 v7, 0x0

    .line 190
    .local v7, ret_value:I
    if-eqz p1, :cond_0

    .line 191
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 195
    .local v0, e:Lorg/apache/http/HttpEntity;
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v5

    .local v5, is:Ljava/io/InputStream;
    if-eqz v5, :cond_4

    .line 199
    :try_start_0
    iget-object v8, p0, Lcom/android/exchange/EasLoadMoreSvc;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    const-wide/high16 v10, 0x4028

    cmpl-double v8, v8, v10

    if-ltz v8, :cond_3

    .line 201
    new-instance v4, Lcom/android/exchange/adapter/ItemOperationsAdapter;

    iget-object v8, p0, Lcom/android/exchange/EasLoadMoreSvc;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    invoke-direct {v4, v8, p0}, Lcom/android/exchange/adapter/ItemOperationsAdapter;-><init>(Lcom/android/email/provider/EmailContent$Mailbox;Lcom/android/exchange/EasSyncService;)V

    .line 202
    .local v4, iot:Lcom/android/exchange/adapter/ItemOperationsAdapter;
    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Lcom/android/exchange/adapter/ItemOperationsAdapter;->setMIMERequested(Z)V

    .line 203
    new-instance v3, Lcom/android/exchange/adapter/ItemOperationsParser;

    invoke-direct {v3, v5, v4}, Lcom/android/exchange/adapter/ItemOperationsParser;-><init>(Ljava/io/InputStream;Lcom/android/exchange/adapter/AbstractSyncAdapter;)V

    .line 207
    .local v3, iop:Lcom/android/exchange/adapter/ItemOperationsParser;
    invoke-virtual {v3}, Lcom/android/exchange/adapter/ItemOperationsParser;->parse()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 208
    invoke-virtual {v3}, Lcom/android/exchange/adapter/ItemOperationsParser;->getStatus()I

    move-result v8

    const/16 v9, 0x12

    if-ne v8, v9, :cond_1

    iget-object v8, p0, Lcom/android/exchange/EasLoadMoreSvc;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    const-wide/high16 v10, 0x402c

    cmpl-double v8, v8, v10

    if-ltz v8, :cond_1

    .line 210
    const/16 v7, 0x19

    .line 240
    .end local v0           #e:Lorg/apache/http/HttpEntity;
    .end local v3           #iop:Lcom/android/exchange/adapter/ItemOperationsParser;
    .end local v4           #iot:Lcom/android/exchange/adapter/ItemOperationsAdapter;
    .end local v5           #is:Ljava/io/InputStream;
    :cond_0
    :goto_0
    return v7

    .line 212
    .restart local v0       #e:Lorg/apache/http/HttpEntity;
    .restart local v3       #iop:Lcom/android/exchange/adapter/ItemOperationsParser;
    .restart local v4       #iot:Lcom/android/exchange/adapter/ItemOperationsAdapter;
    .restart local v5       #is:Ljava/io/InputStream;
    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    .line 215
    :cond_2
    const/high16 v7, 0x3

    goto :goto_0

    .line 218
    .end local v3           #iop:Lcom/android/exchange/adapter/ItemOperationsParser;
    .end local v4           #iot:Lcom/android/exchange/adapter/ItemOperationsAdapter;
    :cond_3
    new-instance v1, Lcom/android/exchange/adapter/EmailSyncAdapter;

    iget-object v8, p0, Lcom/android/exchange/EasLoadMoreSvc;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    invoke-direct {v1, v8, p0}, Lcom/android/exchange/adapter/EmailSyncAdapter;-><init>(Lcom/android/email/provider/EmailContent$Mailbox;Lcom/android/exchange/EasSyncService;)V

    .line 225
    .local v1, esa:Lcom/android/exchange/adapter/EmailSyncAdapter;
    invoke-virtual {v1, v5}, Lcom/android/exchange/adapter/EmailSyncAdapter;->parse(Ljava/io/InputStream;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    .line 226
    const/4 v7, 0x0

    goto :goto_0

    .line 228
    .end local v1           #esa:Lcom/android/exchange/adapter/EmailSyncAdapter;
    :catch_0
    move-exception v8

    move-object v2, v8

    .line 229
    .local v2, ioe:Ljava/io/IOException;
    const/high16 v7, 0x3

    .line 232
    goto :goto_0

    .line 230
    .end local v2           #ioe:Ljava/io/IOException;
    :catch_1
    move-exception v8

    move-object v6, v8

    .line 231
    .local v6, ome:Ljava/lang/OutOfMemoryError;
    const/high16 v7, 0x5

    .line 232
    goto :goto_0

    .line 235
    .end local v6           #ome:Ljava/lang/OutOfMemoryError;
    :cond_4
    const/16 v7, 0x15

    goto :goto_0
.end method

.method private prepareCommand(Lcom/android/exchange/adapter/Serializer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "s"
    .parameter "login"
    .parameter "pass"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x22

    const/16 v5, 0x12

    const/16 v4, 0xd

    const-string v7, "2"

    .line 74
    iget-object v0, p0, Lcom/android/exchange/EasLoadMoreSvc;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v2, 0x4028

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_3

    .line 76
    const/16 v0, 0x505

    invoke-virtual {p1, v0}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v0

    const/16 v1, 0x506

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v0

    const/16 v1, 0x507

    const-string v2, "Mailbox"

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 80
    iget-object v0, p0, Lcom/android/exchange/EasLoadMoreSvc;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mServerId:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/exchange/EasLoadMoreSvc;->mMsg:Lcom/android/email/provider/EmailContent$Message;

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 82
    iget-object v0, p0, Lcom/android/exchange/EasLoadMoreSvc;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mServerId:Ljava/lang/String;

    invoke-virtual {p1, v5, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 83
    iget-object v0, p0, Lcom/android/exchange/EasLoadMoreSvc;->mMsg:Lcom/android/email/provider/EmailContent$Message;

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {p1, v4, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 88
    :cond_0
    :goto_0
    const/16 v0, 0x508

    invoke-virtual {p1, v0}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v0, v6, v7}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v0

    const/16 v1, 0x445

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v0

    const/16 v1, 0x446

    const-string v2, "4"

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 93
    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/android/exchange/EasLoadMoreSvc;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v2, 0x402c

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_1

    .line 96
    const/16 v0, 0x514

    invoke-virtual {p1, v0, p2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 97
    const/16 v0, 0x515

    invoke-virtual {p1, v0, p3}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 99
    :cond_1
    invoke-virtual {p1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/exchange/adapter/Serializer;->done()V

    .line 128
    :goto_1
    return-void

    .line 84
    :cond_2
    iget-object v0, p0, Lcom/android/exchange/EasLoadMoreSvc;->mMsg:Lcom/android/email/provider/EmailContent$Message;

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 85
    const/16 v0, 0x3d8

    iget-object v1, p0, Lcom/android/exchange/EasLoadMoreSvc;->mMsg:Lcom/android/email/provider/EmailContent$Message;

    iget-object v1, v1, Lcom/android/email/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto :goto_0

    .line 105
    :cond_3
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v0

    const/16 v1, 0x1c

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v0

    const/16 v1, 0x10

    const-string v2, "Email"

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v0

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/android/exchange/EasLoadMoreSvc;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-object v2, v2, Lcom/android/email/provider/EmailContent$Mailbox;->mSyncKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exchange/EasLoadMoreSvc;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-object v1, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mServerId:Ljava/lang/String;

    invoke-virtual {v0, v5, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v0

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v0

    const/16 v1, 0x23

    const-string v2, "8"

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v0, v6, v7}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v0

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exchange/EasLoadMoreSvc;->mMsg:Lcom/android/email/provider/EmailContent$Message;

    iget-object v1, v1, Lcom/android/email/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v0, v4, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/exchange/adapter/Serializer;->done()V

    goto :goto_1
.end method

.method private sendCommand(Lcom/android/exchange/adapter/Serializer;)Lorg/apache/http/HttpResponse;
    .locals 10
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/DeviceAccessException;
        }
    .end annotation

    .prologue
    .line 132
    const/4 v5, 0x0

    .line 133
    .local v5, ret_value:Lorg/apache/http/HttpResponse;
    const/4 v2, 0x0

    .line 135
    .local v2, commandType:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/exchange/EasLoadMoreSvc;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    const-wide/high16 v8, 0x4028

    cmpl-double v6, v6, v8

    if-ltz v6, :cond_2

    .line 136
    const-string v2, "ItemOperations"

    .line 143
    :goto_0
    :try_start_0
    sget-boolean v6, Lcom/android/exchange/Eas;->PARSER_LOG:Z

    if-eqz v6, :cond_0

    .line 144
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "loadMore(): Wbxml:"

    aput-object v8, v6, v7

    invoke-virtual {p0, v6}, Lcom/android/exchange/EasLoadMoreSvc;->userLog([Ljava/lang/String;)V

    .line 145
    invoke-virtual {p1}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v0

    .line 146
    .local v0, b:[B
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 147
    .local v1, byTe:Ljava/io/ByteArrayInputStream;
    new-instance v4, Lcom/android/exchange/adapter/LogAdapter;

    iget-object v6, p0, Lcom/android/exchange/EasLoadMoreSvc;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    invoke-direct {v4, v6, p0}, Lcom/android/exchange/adapter/LogAdapter;-><init>(Lcom/android/email/provider/EmailContent$Mailbox;Lcom/android/exchange/EasSyncService;)V

    .line 148
    .local v4, logA:Lcom/android/exchange/adapter/LogAdapter;
    invoke-virtual {v4, v1}, Lcom/android/exchange/adapter/LogAdapter;->parse(Ljava/io/InputStream;)Z

    .line 152
    .end local v0           #b:[B
    .end local v1           #byTe:Ljava/io/ByteArrayInputStream;
    .end local v4           #logA:Lcom/android/exchange/adapter/LogAdapter;
    :cond_0
    invoke-virtual {p1}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v6

    invoke-virtual {p0, v2, v6}, Lcom/android/exchange/EasLoadMoreSvc;->sendHttpClientPost(Ljava/lang/String;[B)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 166
    :cond_1
    :goto_1
    return-object v5

    .line 138
    :cond_2
    const-string v2, "Sync"

    goto :goto_0

    .line 154
    :catch_0
    move-exception v6

    move-object v3, v6

    .line 156
    .local v3, e:Ljava/io/IOException;
    iget-boolean v6, p0, Lcom/android/exchange/EasLoadMoreSvc;->userCancelledFlag:Z

    if-nez v6, :cond_1

    .line 161
    const/4 v5, 0x0

    .line 162
    iget-object v6, p0, Lcom/android/exchange/EasLoadMoreSvc;->mMsg:Lcom/android/email/provider/EmailContent$Message;

    iget-wide v6, v6, Lcom/android/email/provider/EmailContent$Message;->mId:J

    const/4 v8, -0x3

    const/16 v9, 0x64

    invoke-direct {p0, v6, v7, v8, v9}, Lcom/android/exchange/EasLoadMoreSvc;->loadMoreCb(JII)V

    goto :goto_1
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const/16 v13, 0x64

    const/4 v12, 0x3

    const/4 v10, 0x0

    const/4 v11, 0x1

    const-string v14, "LoadMore finished"

    .line 360
    invoke-virtual {p0}, Lcom/android/exchange/EasLoadMoreSvc;->setupService()Z

    .line 363
    :try_start_0
    invoke-static {}, Lcom/android/exchange/SyncManager;->getDeviceId()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/exchange/EasLoadMoreSvc;->mDeviceId:Ljava/lang/String;

    .line 365
    invoke-direct {p0}, Lcom/android/exchange/EasLoadMoreSvc;->loadMore()I

    move-result v5

    .line 366
    .local v5, result:I
    sparse-switch v5, :sswitch_data_0

    .line 382
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/exchange/EasLoadMoreSvc;->mExitStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/android/email/mail/DeviceAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 404
    :goto_0
    :sswitch_0
    new-array v7, v11, [Ljava/lang/String;

    const-string v8, "LoadMore finished"

    aput-object v14, v7, v10

    invoke-virtual {p0, v7}, Lcom/android/exchange/EasLoadMoreSvc;->userLog([Ljava/lang/String;)V

    .line 405
    invoke-static {p0}, Lcom/android/exchange/SyncManager;->doneOutOfBand(Lcom/android/exchange/AbstractSyncService;)V

    .line 406
    iget v7, p0, Lcom/android/exchange/EasLoadMoreSvc;->mExitStatus:I

    packed-switch v7, :pswitch_data_0

    .line 439
    const-string v7, "Sync ended due to an exception."

    .end local v5           #result:I
    :goto_1
    invoke-virtual {p0, v7}, Lcom/android/exchange/EasLoadMoreSvc;->errorLog(Ljava/lang/String;)V

    .line 444
    :goto_2
    return-void

    .line 369
    .restart local v5       #result:I
    :sswitch_1
    const/4 v7, 0x4

    :try_start_1
    iput v7, p0, Lcom/android/exchange/EasLoadMoreSvc;->mExitStatus:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/android/email/mail/DeviceAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 386
    .end local v5           #result:I
    :catch_0
    move-exception v7

    move-object v1, v7

    .line 387
    .local v1, e:Lcom/android/email/mail/DeviceAccessException;
    const/4 v7, 0x5

    :try_start_2
    iput v7, p0, Lcom/android/exchange/EasLoadMoreSvc;->mExitStatus:I

    .line 388
    iget-object v7, p0, Lcom/android/exchange/EasLoadMoreSvc;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v7, v7, Lcom/android/email/provider/EmailContent$Account;->mId:J

    sget v9, Lcom/android/email/provider/EmailContent$Account;->DEVICE_IS_BLOCKED:I

    invoke-static {v7, v8, v9}, Lcom/android/exchange/SyncManager;->blockDevice(JI)V

    .line 389
    iget-object v7, p0, Lcom/android/exchange/EasLoadMoreSvc;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v7, v7, Lcom/android/email/provider/EmailContent$Account;->mId:J

    invoke-static {v7, v8}, Lcom/android/exchange/SyncManager;->stopAccountSyncs(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 404
    new-array v7, v11, [Ljava/lang/String;

    const-string v8, "LoadMore finished"

    aput-object v14, v7, v10

    invoke-virtual {p0, v7}, Lcom/android/exchange/EasLoadMoreSvc;->userLog([Ljava/lang/String;)V

    .line 405
    invoke-static {p0}, Lcom/android/exchange/SyncManager;->doneOutOfBand(Lcom/android/exchange/AbstractSyncService;)V

    .line 406
    iget v7, p0, Lcom/android/exchange/EasLoadMoreSvc;->mExitStatus:I

    packed-switch v7, :pswitch_data_1

    .line 439
    const-string v7, "Sync ended due to an exception."

    goto :goto_1

    .line 373
    .end local v1           #e:Lcom/android/email/mail/DeviceAccessException;
    .restart local v5       #result:I
    :sswitch_2
    const/4 v7, 0x2

    :try_start_3
    iput v7, p0, Lcom/android/exchange/EasLoadMoreSvc;->mExitStatus:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lcom/android/email/mail/DeviceAccessException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 391
    .end local v5           #result:I
    :catch_1
    move-exception v7

    move-object v1, v7

    .line 392
    .local v1, e:Ljava/io/IOException;
    const/4 v7, 0x1

    :try_start_4
    iput v7, p0, Lcom/android/exchange/EasLoadMoreSvc;->mExitStatus:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 404
    new-array v7, v11, [Ljava/lang/String;

    const-string v8, "LoadMore finished"

    aput-object v14, v7, v10

    invoke-virtual {p0, v7}, Lcom/android/exchange/EasLoadMoreSvc;->userLog([Ljava/lang/String;)V

    .line 405
    invoke-static {p0}, Lcom/android/exchange/SyncManager;->doneOutOfBand(Lcom/android/exchange/AbstractSyncService;)V

    .line 406
    iget v7, p0, Lcom/android/exchange/EasLoadMoreSvc;->mExitStatus:I

    packed-switch v7, :pswitch_data_2

    .line 439
    const-string v7, "Sync ended due to an exception."

    goto :goto_1

    .line 376
    .end local v1           #e:Ljava/io/IOException;
    .restart local v5       #result:I
    :sswitch_3
    const/4 v7, 0x3

    :try_start_5
    iput v7, p0, Lcom/android/exchange/EasLoadMoreSvc;->mExitStatus:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Lcom/android/email/mail/DeviceAccessException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 393
    .end local v5           #result:I
    :catch_2
    move-exception v7

    move-object v1, v7

    .line 394
    .local v1, e:Ljava/lang/Exception;
    :try_start_6
    const-string v7, "Exception caught in EasLoadMoreSvc"

    invoke-virtual {p0, v7, v1}, Lcom/android/exchange/EasLoadMoreSvc;->userLog(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 396
    const-string v7, "EasLoadMoreSvc"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ERROR!!!: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " cause="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/exchange/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    invoke-virtual {v1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/StackTraceElement;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_3
    if-ge v3, v4, :cond_0

    aget-object v2, v0, v3

    .line 398
    .local v2, elmnt:Ljava/lang/StackTraceElement;
    const-string v7, "EasLoadMoreSvc"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " line="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/exchange/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 401
    .end local v2           #elmnt:Ljava/lang/StackTraceElement;
    :cond_0
    const/4 v7, 0x3

    iput v7, p0, Lcom/android/exchange/EasLoadMoreSvc;->mExitStatus:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 404
    new-array v7, v11, [Ljava/lang/String;

    const-string v8, "LoadMore finished"

    aput-object v14, v7, v10

    invoke-virtual {p0, v7}, Lcom/android/exchange/EasLoadMoreSvc;->userLog([Ljava/lang/String;)V

    .line 405
    invoke-static {p0}, Lcom/android/exchange/SyncManager;->doneOutOfBand(Lcom/android/exchange/AbstractSyncService;)V

    .line 406
    iget v7, p0, Lcom/android/exchange/EasLoadMoreSvc;->mExitStatus:I

    packed-switch v7, :pswitch_data_3

    .line 439
    const-string v7, "Sync ended due to an exception."

    goto/16 :goto_1

    .line 409
    .end local v0           #arr$:[Ljava/lang/StackTraceElement;
    .end local v1           #e:Ljava/lang/Exception;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :pswitch_0
    const/16 v6, 0x17

    .line 416
    .local v6, status:I
    sget-boolean v8, Lcom/android/exchange/EasLoadMoreSvc;->CHECK_PROVISIONING_IN_PROGRESS:Z

    if-eqz v8, :cond_1

    .line 417
    new-array v8, v11, [Ljava/lang/String;

    const-string v9, "Sync ended due to CHECK_PROVISIONING_IN_PROGRESS true case!!!"

    aput-object v9, v8, v10

    invoke-virtual {p0, v8}, Lcom/android/exchange/EasLoadMoreSvc;->userLog([Ljava/lang/String;)V

    .line 403
    .end local v6           #status:I
    :goto_4
    throw v7

    :catchall_0
    move-exception v7

    .line 404
    new-array v8, v11, [Ljava/lang/String;

    const-string v9, "LoadMore finished"

    aput-object v14, v8, v10

    invoke-virtual {p0, v8}, Lcom/android/exchange/EasLoadMoreSvc;->userLog([Ljava/lang/String;)V

    .line 405
    invoke-static {p0}, Lcom/android/exchange/SyncManager;->doneOutOfBand(Lcom/android/exchange/AbstractSyncService;)V

    .line 406
    iget v8, p0, Lcom/android/exchange/EasLoadMoreSvc;->mExitStatus:I

    packed-switch v8, :pswitch_data_4

    .line 439
    const-string v8, "Sync ended due to an exception."

    invoke-virtual {p0, v8}, Lcom/android/exchange/EasLoadMoreSvc;->errorLog(Ljava/lang/String;)V

    goto :goto_4

    .line 427
    :pswitch_1
    const/4 v6, 0x3

    .line 428
    .restart local v6       #status:I
    iget-object v8, p0, Lcom/android/exchange/EasLoadMoreSvc;->mMsg:Lcom/android/email/provider/EmailContent$Message;

    iget-wide v8, v8, Lcom/android/email/provider/EmailContent$Message;->mId:J

    invoke-direct {p0, v8, v9, v12, v13}, Lcom/android/exchange/EasLoadMoreSvc;->loadMoreCb(JII)V

    goto :goto_4

    .line 432
    .end local v6           #status:I
    :pswitch_2
    const/4 v6, 0x4

    .line 433
    .restart local v6       #status:I
    iget-object v8, p0, Lcom/android/exchange/EasLoadMoreSvc;->mMsg:Lcom/android/email/provider/EmailContent$Message;

    iget-wide v8, v8, Lcom/android/email/provider/EmailContent$Message;->mId:J

    invoke-direct {p0, v8, v9, v12, v13}, Lcom/android/exchange/EasLoadMoreSvc;->loadMoreCb(JII)V

    goto :goto_4

    .line 419
    :cond_1
    new-array v8, v11, [Ljava/lang/String;

    const-string v9, "Sync ended due to CHECK_PROVISIONING_IN_PROGRESS false case!!!"

    aput-object v9, v8, v10

    invoke-virtual {p0, v8}, Lcom/android/exchange/EasLoadMoreSvc;->userLog([Ljava/lang/String;)V

    .line 420
    iget-object v8, p0, Lcom/android/exchange/EasLoadMoreSvc;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/exchange/EasLoadMoreSvc;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v9, v9, Lcom/android/email/provider/EmailContent$Account;->mId:J

    invoke-static {v8, v9, v10, v11}, Lcom/android/exchange/SyncManager;->reloadFolderList(Landroid/content/Context;JZ)V

    .line 421
    sput-boolean v11, Lcom/android/exchange/EasLoadMoreSvc;->CHECK_PROVISIONING_IN_PROGRESS:Z

    goto :goto_4

    .line 409
    .end local v6           #status:I
    .local v1, e:Lcom/android/email/mail/DeviceAccessException;
    :pswitch_3
    const/16 v6, 0x17

    .line 416
    .restart local v6       #status:I
    sget-boolean v7, Lcom/android/exchange/EasLoadMoreSvc;->CHECK_PROVISIONING_IN_PROGRESS:Z

    if-eqz v7, :cond_2

    .line 417
    new-array v7, v11, [Ljava/lang/String;

    const-string v8, "Sync ended due to CHECK_PROVISIONING_IN_PROGRESS true case!!!"

    aput-object v8, v7, v10

    .end local v1           #e:Lcom/android/email/mail/DeviceAccessException;
    :goto_5
    invoke-virtual {p0, v7}, Lcom/android/exchange/EasLoadMoreSvc;->userLog([Ljava/lang/String;)V

    goto/16 :goto_2

    .line 427
    .end local v6           #status:I
    .restart local v1       #e:Lcom/android/email/mail/DeviceAccessException;
    :pswitch_4
    const/4 v6, 0x3

    .line 428
    .restart local v6       #status:I
    iget-object v7, p0, Lcom/android/exchange/EasLoadMoreSvc;->mMsg:Lcom/android/email/provider/EmailContent$Message;

    iget-wide v7, v7, Lcom/android/email/provider/EmailContent$Message;->mId:J

    .end local v1           #e:Lcom/android/email/mail/DeviceAccessException;
    :goto_6
    invoke-direct {p0, v7, v8, v12, v13}, Lcom/android/exchange/EasLoadMoreSvc;->loadMoreCb(JII)V

    goto/16 :goto_2

    .line 432
    .end local v6           #status:I
    .restart local v1       #e:Lcom/android/email/mail/DeviceAccessException;
    :pswitch_5
    const/4 v6, 0x4

    .line 433
    .restart local v6       #status:I
    iget-object v7, p0, Lcom/android/exchange/EasLoadMoreSvc;->mMsg:Lcom/android/email/provider/EmailContent$Message;

    iget-wide v7, v7, Lcom/android/email/provider/EmailContent$Message;->mId:J

    .end local v1           #e:Lcom/android/email/mail/DeviceAccessException;
    :goto_7
    invoke-direct {p0, v7, v8, v12, v13}, Lcom/android/exchange/EasLoadMoreSvc;->loadMoreCb(JII)V

    goto/16 :goto_2

    .line 419
    .restart local v1       #e:Lcom/android/email/mail/DeviceAccessException;
    :cond_2
    new-array v7, v11, [Ljava/lang/String;

    const-string v8, "Sync ended due to CHECK_PROVISIONING_IN_PROGRESS false case!!!"

    aput-object v8, v7, v10

    invoke-virtual {p0, v7}, Lcom/android/exchange/EasLoadMoreSvc;->userLog([Ljava/lang/String;)V

    .line 420
    iget-object v7, p0, Lcom/android/exchange/EasLoadMoreSvc;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/exchange/EasLoadMoreSvc;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v8, v8, Lcom/android/email/provider/EmailContent$Account;->mId:J

    invoke-static {v7, v8, v9, v11}, Lcom/android/exchange/SyncManager;->reloadFolderList(Landroid/content/Context;JZ)V

    .line 421
    .end local v1           #e:Lcom/android/email/mail/DeviceAccessException;
    :goto_8
    sput-boolean v11, Lcom/android/exchange/EasLoadMoreSvc;->CHECK_PROVISIONING_IN_PROGRESS:Z

    goto/16 :goto_2

    .line 409
    .end local v6           #status:I
    .local v1, e:Ljava/io/IOException;
    :pswitch_6
    const/16 v6, 0x17

    .line 416
    .restart local v6       #status:I
    sget-boolean v7, Lcom/android/exchange/EasLoadMoreSvc;->CHECK_PROVISIONING_IN_PROGRESS:Z

    if-eqz v7, :cond_3

    .line 417
    new-array v7, v11, [Ljava/lang/String;

    const-string v8, "Sync ended due to CHECK_PROVISIONING_IN_PROGRESS true case!!!"

    aput-object v8, v7, v10

    goto :goto_5

    .line 427
    .end local v6           #status:I
    :pswitch_7
    const/4 v6, 0x3

    .line 428
    .restart local v6       #status:I
    iget-object v7, p0, Lcom/android/exchange/EasLoadMoreSvc;->mMsg:Lcom/android/email/provider/EmailContent$Message;

    iget-wide v7, v7, Lcom/android/email/provider/EmailContent$Message;->mId:J

    goto :goto_6

    .line 432
    .end local v6           #status:I
    :pswitch_8
    const/4 v6, 0x4

    .line 433
    .restart local v6       #status:I
    iget-object v7, p0, Lcom/android/exchange/EasLoadMoreSvc;->mMsg:Lcom/android/email/provider/EmailContent$Message;

    iget-wide v7, v7, Lcom/android/email/provider/EmailContent$Message;->mId:J

    goto :goto_7

    .line 419
    :cond_3
    new-array v7, v11, [Ljava/lang/String;

    const-string v8, "Sync ended due to CHECK_PROVISIONING_IN_PROGRESS false case!!!"

    aput-object v8, v7, v10

    invoke-virtual {p0, v7}, Lcom/android/exchange/EasLoadMoreSvc;->userLog([Ljava/lang/String;)V

    .line 420
    iget-object v7, p0, Lcom/android/exchange/EasLoadMoreSvc;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/exchange/EasLoadMoreSvc;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v8, v8, Lcom/android/email/provider/EmailContent$Account;->mId:J

    invoke-static {v7, v8, v9, v11}, Lcom/android/exchange/SyncManager;->reloadFolderList(Landroid/content/Context;JZ)V

    goto :goto_8

    .line 409
    .end local v6           #status:I
    .restart local v0       #arr$:[Ljava/lang/StackTraceElement;
    .local v1, e:Ljava/lang/Exception;
    .restart local v3       #i$:I
    .restart local v4       #len$:I
    :pswitch_9
    const/16 v6, 0x17

    .line 416
    .restart local v6       #status:I
    sget-boolean v7, Lcom/android/exchange/EasLoadMoreSvc;->CHECK_PROVISIONING_IN_PROGRESS:Z

    if-eqz v7, :cond_4

    .line 417
    new-array v7, v11, [Ljava/lang/String;

    const-string v8, "Sync ended due to CHECK_PROVISIONING_IN_PROGRESS true case!!!"

    aput-object v8, v7, v10

    goto :goto_5

    .line 427
    .end local v6           #status:I
    :pswitch_a
    const/4 v6, 0x3

    .line 428
    .restart local v6       #status:I
    iget-object v7, p0, Lcom/android/exchange/EasLoadMoreSvc;->mMsg:Lcom/android/email/provider/EmailContent$Message;

    iget-wide v7, v7, Lcom/android/email/provider/EmailContent$Message;->mId:J

    goto :goto_6

    .line 432
    .end local v6           #status:I
    :pswitch_b
    const/4 v6, 0x4

    .line 433
    .restart local v6       #status:I
    iget-object v7, p0, Lcom/android/exchange/EasLoadMoreSvc;->mMsg:Lcom/android/email/provider/EmailContent$Message;

    iget-wide v7, v7, Lcom/android/email/provider/EmailContent$Message;->mId:J

    goto :goto_7

    .line 419
    :cond_4
    new-array v7, v11, [Ljava/lang/String;

    const-string v8, "Sync ended due to CHECK_PROVISIONING_IN_PROGRESS false case!!!"

    aput-object v8, v7, v10

    invoke-virtual {p0, v7}, Lcom/android/exchange/EasLoadMoreSvc;->userLog([Ljava/lang/String;)V

    .line 420
    iget-object v7, p0, Lcom/android/exchange/EasLoadMoreSvc;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/exchange/EasLoadMoreSvc;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v8, v8, Lcom/android/email/provider/EmailContent$Account;->mId:J

    invoke-static {v7, v8, v9, v11}, Lcom/android/exchange/SyncManager;->reloadFolderList(Landroid/content/Context;JZ)V

    goto :goto_8

    .line 409
    .end local v0           #arr$:[Ljava/lang/StackTraceElement;
    .end local v1           #e:Ljava/lang/Exception;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v6           #status:I
    .restart local v5       #result:I
    :pswitch_c
    const/16 v6, 0x17

    .line 416
    .restart local v6       #status:I
    sget-boolean v7, Lcom/android/exchange/EasLoadMoreSvc;->CHECK_PROVISIONING_IN_PROGRESS:Z

    if-eqz v7, :cond_5

    .line 417
    new-array v7, v11, [Ljava/lang/String;

    const-string v8, "Sync ended due to CHECK_PROVISIONING_IN_PROGRESS true case!!!"

    aput-object v8, v7, v10

    goto/16 :goto_5

    .line 427
    .end local v6           #status:I
    :pswitch_d
    const/4 v6, 0x3

    .line 428
    .restart local v6       #status:I
    iget-object v7, p0, Lcom/android/exchange/EasLoadMoreSvc;->mMsg:Lcom/android/email/provider/EmailContent$Message;

    iget-wide v7, v7, Lcom/android/email/provider/EmailContent$Message;->mId:J

    goto/16 :goto_6

    .line 432
    .end local v6           #status:I
    :pswitch_e
    const/4 v6, 0x4

    .line 433
    .restart local v6       #status:I
    iget-object v7, p0, Lcom/android/exchange/EasLoadMoreSvc;->mMsg:Lcom/android/email/provider/EmailContent$Message;

    iget-wide v7, v7, Lcom/android/email/provider/EmailContent$Message;->mId:J

    goto/16 :goto_7

    .line 419
    :cond_5
    new-array v7, v11, [Ljava/lang/String;

    const-string v8, "Sync ended due to CHECK_PROVISIONING_IN_PROGRESS false case!!!"

    aput-object v8, v7, v10

    invoke-virtual {p0, v7}, Lcom/android/exchange/EasLoadMoreSvc;->userLog([Ljava/lang/String;)V

    .line 420
    iget-object v7, p0, Lcom/android/exchange/EasLoadMoreSvc;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/exchange/EasLoadMoreSvc;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v8, v8, Lcom/android/email/provider/EmailContent$Account;->mId:J

    invoke-static {v7, v8, v9, v11}, Lcom/android/exchange/SyncManager;->reloadFolderList(Landroid/content/Context;JZ)V

    goto/16 :goto_8

    .line 366
    nop

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_3
        0x16 -> :sswitch_2
        0x17 -> :sswitch_1
        0x100000 -> :sswitch_0
    .end sparse-switch

    .line 406
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x4
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x4
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public userCancelled()V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/exchange/EasLoadMoreSvc;->userCancelledFlag:Z

    .line 70
    return-void
.end method
