.class public Lcom/android/exchange/EasEmptyTrashSvc;
.super Lcom/android/exchange/EasSyncService;
.source "EasEmptyTrashSvc.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/email/provider/EmailContent$Mailbox;)V
    .locals 2
    .parameter "_context"
    .parameter "_mailbox"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/android/exchange/EasSyncService;-><init>(Landroid/content/Context;Lcom/android/email/provider/EmailContent$Mailbox;)V

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

.method private emptyTrash()I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/email/mail/DeviceAccessException;
        }
    .end annotation

    .prologue
    .line 207
    iget-object v8, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v8, v8, Lcom/android/email/provider/EmailContent;->mId:J

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-direct {p0, v8, v9, v10, v11}, Lcom/android/exchange/EasEmptyTrashSvc;->emptyTrashCb(JII)V

    .line 209
    const/4 v4, 0x0

    .line 211
    .local v4, result:I
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {p0, v8, v9}, Lcom/android/exchange/EasEmptyTrashSvc;->makeEmptyTrashRequest(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 212
    .local v2, res:Lorg/apache/http/HttpResponse;
    if-nez v2, :cond_0

    .line 213
    const/4 v4, 0x0

    move v5, v4

    .line 313
    .end local v4           #result:I
    .local v5, result:I
    :goto_0
    return v5

    .line 218
    .end local v5           #result:I
    .restart local v4       #result:I
    :cond_0
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 220
    .local v0, code:I
    const-string v8, "emptyTrash(): sendHttpClientPost HTTP response code: "

    invoke-virtual {p0, v8, v0}, Lcom/android/exchange/EasEmptyTrashSvc;->userLog(Ljava/lang/String;I)V

    .line 222
    const/16 v8, 0xc8

    if-ne v0, v8, :cond_8

    .line 224
    invoke-direct {p0, v2}, Lcom/android/exchange/EasEmptyTrashSvc;->parseEmptyTrashResponse(Lorg/apache/http/HttpResponse;)I

    move-result v6

    .line 225
    .local v6, status:I
    sparse-switch v6, :sswitch_data_0

    .line 289
    invoke-virtual {p0, v0}, Lcom/android/exchange/EasEmptyTrashSvc;->isProvisionError(I)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 290
    const/16 v4, 0x17

    .line 300
    :goto_1
    iget-object v8, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v8, v8, Lcom/android/email/provider/EmailContent;->mId:J

    const/16 v10, 0x64

    invoke-direct {p0, v8, v9, v4, v10}, Lcom/android/exchange/EasEmptyTrashSvc;->emptyTrashCb(JII)V

    .end local v6           #status:I
    :goto_2
    move v5, v4

    .line 313
    .end local v4           #result:I
    .restart local v5       #result:I
    goto :goto_0

    .line 230
    .end local v5           #result:I
    .restart local v4       #result:I
    .restart local v6       #status:I
    :sswitch_0
    iget-object v8, p0, Lcom/android/exchange/EasSyncService;->mUserName:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/exchange/EasSyncService;->mPassword:Ljava/lang/String;

    invoke-direct {p0, v8, v9}, Lcom/android/exchange/EasEmptyTrashSvc;->makeEmptyTrashRequest(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 231
    .local v3, resSecondRequest:Lorg/apache/http/HttpResponse;
    if-nez v3, :cond_1

    .line 232
    const/4 v4, 0x0

    move v5, v4

    .line 233
    .end local v4           #result:I
    .restart local v5       #result:I
    goto :goto_0

    .line 236
    .end local v5           #result:I
    .restart local v4       #result:I
    :cond_1
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    .line 237
    .local v1, codeSecondRequest:I
    const-string v8, "emptyTrash(): sendHttpClientPost HTTP response code: "

    invoke-virtual {p0, v8, v1}, Lcom/android/exchange/EasEmptyTrashSvc;->userLog(Ljava/lang/String;I)V

    .line 239
    const/16 v8, 0xc8

    if-ne v0, v8, :cond_4

    .line 240
    invoke-direct {p0, v3}, Lcom/android/exchange/EasEmptyTrashSvc;->parseEmptyTrashResponse(Lorg/apache/http/HttpResponse;)I

    move-result v7

    .line 241
    .local v7, statusSecondRequest:I
    packed-switch v7, :pswitch_data_0

    .line 255
    invoke-virtual {p0, v0}, Lcom/android/exchange/EasEmptyTrashSvc;->isProvisionError(I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 256
    const/16 v4, 0x17

    .line 264
    :goto_3
    iget-object v8, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v8, v8, Lcom/android/email/provider/EmailContent;->mId:J

    const/16 v10, 0x64

    invoke-direct {p0, v8, v9, v4, v10}, Lcom/android/exchange/EasEmptyTrashSvc;->emptyTrashCb(JII)V

    goto :goto_1

    .line 245
    :pswitch_0
    const/4 v4, 0x0

    .line 246
    goto :goto_1

    .line 257
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/exchange/EasEmptyTrashSvc;->isAuthError(I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 258
    const/16 v4, 0x16

    goto :goto_3

    .line 260
    :cond_3
    const/16 v4, 0x15

    goto :goto_3

    .line 268
    .end local v7           #statusSecondRequest:I
    :cond_4
    const/16 v4, 0x15

    .line 270
    invoke-virtual {p0, v0}, Lcom/android/exchange/EasEmptyTrashSvc;->isAuthError(I)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 271
    const/16 v4, 0x16

    .line 273
    :cond_5
    iget-object v8, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v8, v8, Lcom/android/email/provider/EmailContent;->mId:J

    const/16 v10, 0x64

    invoke-direct {p0, v8, v9, v4, v10}, Lcom/android/exchange/EasEmptyTrashSvc;->emptyTrashCb(JII)V

    goto :goto_1

    .line 280
    .end local v1           #codeSecondRequest:I
    .end local v3           #resSecondRequest:Lorg/apache/http/HttpResponse;
    :sswitch_1
    const/4 v4, 0x0

    .line 281
    goto :goto_1

    .line 291
    :cond_6
    invoke-virtual {p0, v0}, Lcom/android/exchange/EasEmptyTrashSvc;->isAuthError(I)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 292
    const/16 v4, 0x16

    goto :goto_1

    .line 294
    :cond_7
    const/16 v4, 0x15

    goto :goto_1

    .line 303
    .end local v6           #status:I
    :cond_8
    const/16 v4, 0x15

    .line 305
    invoke-virtual {p0, v0}, Lcom/android/exchange/EasEmptyTrashSvc;->isProvisionError(I)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 306
    const/16 v4, 0x17

    .line 311
    :cond_9
    :goto_4
    iget-object v8, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v8, v8, Lcom/android/email/provider/EmailContent;->mId:J

    const/16 v10, 0x64

    invoke-direct {p0, v8, v9, v4, v10}, Lcom/android/exchange/EasEmptyTrashSvc;->emptyTrashCb(JII)V

    goto :goto_2

    .line 307
    :cond_a
    invoke-virtual {p0, v0}, Lcom/android/exchange/EasEmptyTrashSvc;->isAuthError(I)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 308
    const/16 v4, 0x16

    goto :goto_4

    .line 225
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x19 -> :sswitch_0
    .end sparse-switch

    .line 241
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private emptyTrashCb(JII)V
    .locals 1
    .parameter "accId"
    .parameter "status"
    .parameter "progress"

    .prologue
    .line 51
    :try_start_0
    invoke-static {}, Lcom/android/exchange/SyncManager;->callback()Lcom/android/email/service/IEmailServiceCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/email/service/IEmailServiceCallback;->emptyTrashStatus(JII)V
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

.method private makeEmptyTrashRequest(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpResponse;
    .locals 2
    .parameter "login"
    .parameter "pass"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 196
    new-instance v0, Lcom/android/exchange/adapter/Serializer;

    invoke-direct {v0}, Lcom/android/exchange/adapter/Serializer;-><init>()V

    .line 199
    .local v0, s:Lcom/android/exchange/adapter/Serializer;
    invoke-direct {p0, v0, p1, p2}, Lcom/android/exchange/EasEmptyTrashSvc;->prepareCommand(Lcom/android/exchange/adapter/Serializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    invoke-direct {p0, v0}, Lcom/android/exchange/EasEmptyTrashSvc;->sendCommand(Lcom/android/exchange/adapter/Serializer;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    return-object v1
.end method

.method private parseEmptyTrashResponse(Lorg/apache/http/HttpResponse;)I
    .locals 10
    .parameter "res"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/email/mail/DeviceAccessException;
        }
    .end annotation

    .prologue
    .line 150
    const/16 v5, 0x15

    .line 152
    .local v5, ret_value:I
    if-eqz p1, :cond_0

    .line 153
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 161
    .local v0, e:Lorg/apache/http/HttpEntity;
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v6

    long-to-int v4, v6

    .line 162
    .local v4, len:I
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    .line 163
    .local v3, is:Ljava/io/InputStream;
    iget-object v6, p0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "contentLength = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-ltz v4, :cond_1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    :goto_0
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/exchange/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    if-eqz v3, :cond_5

    .line 168
    :try_start_0
    new-instance v2, Lcom/android/exchange/adapter/ItemOperationsParser;

    new-instance v6, Lcom/android/exchange/adapter/ItemOperationsAdapter;

    iget-object v7, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    invoke-direct {v6, v7, p0}, Lcom/android/exchange/adapter/ItemOperationsAdapter;-><init>(Lcom/android/email/provider/EmailContent$Mailbox;Lcom/android/exchange/EasSyncService;)V

    invoke-direct {v2, v3, v6}, Lcom/android/exchange/adapter/ItemOperationsParser;-><init>(Ljava/io/InputStream;Lcom/android/exchange/adapter/AbstractSyncAdapter;)V

    .line 169
    .local v2, iop:Lcom/android/exchange/adapter/ItemOperationsParser;
    invoke-virtual {v2}, Lcom/android/exchange/adapter/ItemOperationsParser;->parse()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 170
    invoke-virtual {v2}, Lcom/android/exchange/adapter/ItemOperationsParser;->getStatus()I

    move-result v6

    const/16 v7, 0x12

    if-ne v6, v7, :cond_2

    iget-object v6, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    const-wide/high16 v8, 0x402c

    cmpl-double v6, v6, v8

    if-ltz v6, :cond_2

    .line 172
    const/16 v5, 0x19

    .line 192
    .end local v0           #e:Lorg/apache/http/HttpEntity;
    .end local v2           #iop:Lcom/android/exchange/adapter/ItemOperationsParser;
    .end local v3           #is:Ljava/io/InputStream;
    .end local v4           #len:I
    :cond_0
    :goto_1
    return v5

    .line 163
    .restart local v0       #e:Lorg/apache/http/HttpEntity;
    .restart local v3       #is:Ljava/io/InputStream;
    .restart local v4       #len:I
    :cond_1
    const-string v8, "Unknown"

    goto :goto_0

    .line 173
    .restart local v2       #iop:Lcom/android/exchange/adapter/ItemOperationsParser;
    :cond_2
    :try_start_1
    invoke-virtual {v2}, Lcom/android/exchange/adapter/ItemOperationsParser;->getStatus()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    .line 174
    const/4 v5, 0x0

    goto :goto_1

    .line 176
    :cond_3
    const/high16 v5, 0x1

    goto :goto_1

    .line 181
    :cond_4
    const/high16 v5, 0x1

    goto :goto_1

    .line 183
    .end local v2           #iop:Lcom/android/exchange/adapter/ItemOperationsParser;
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 184
    .local v1, ioe:Ljava/io/IOException;
    const/high16 v5, 0x1

    .line 185
    goto :goto_1

    .line 187
    .end local v1           #ioe:Ljava/io/IOException;
    :cond_5
    const/16 v5, 0x15

    goto :goto_1
.end method

.method private prepareCommand(Lcom/android/exchange/adapter/Serializer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "s"
    .parameter "login"
    .parameter "pass"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v1, "EasEmptyTrashSvc"

    .line 60
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mServerId:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 61
    const-string v0, "EasEmptyTrashSvc"

    const-string v0, "mServerId is null"

    invoke-static {v1, v0}, Lcom/android/exchange/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :goto_0
    if-eqz p1, :cond_1

    .line 65
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v2, 0x4028

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_1

    .line 67
    const/16 v0, 0x505

    invoke-virtual {p1, v0}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v0

    const/16 v1, 0x512

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v0

    const/16 v1, 0x12

    iget-object v2, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-object v2, v2, Lcom/android/email/provider/EmailContent$Mailbox;->mServerId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v0

    const/16 v1, 0x508

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v0

    const/16 v1, 0x513

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->tag(I)Lcom/android/exchange/adapter/Serializer;

    .line 72
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v2, 0x402c

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    .line 75
    const/16 v0, 0x514

    invoke-virtual {p1, v0, p2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 76
    const/16 v0, 0x515

    invoke-virtual {p1, v0, p3}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 78
    :cond_0
    invoke-virtual {p1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/exchange/adapter/Serializer;->done()V

    .line 85
    :cond_1
    return-void

    .line 63
    :cond_2
    const-string v0, "EasEmptyTrashSvc"

    const-string v0, "mServerId is NOT null"

    invoke-static {v1, v0}, Lcom/android/exchange/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private sendCommand(Lcom/android/exchange/adapter/Serializer;)Lorg/apache/http/HttpResponse;
    .locals 11
    .parameter "s"

    .prologue
    .line 88
    const/4 v5, 0x0

    .line 89
    .local v5, ret_value:Lorg/apache/http/HttpResponse;
    const/4 v2, 0x0

    .line 91
    .local v2, commandType:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    const-wide/high16 v9, 0x4028

    cmpl-double v7, v7, v9

    if-ltz v7, :cond_0

    .line 92
    const-string v2, "ItemOperations"

    .line 95
    :cond_0
    if-eqz p1, :cond_2

    .line 98
    :try_start_0
    sget-boolean v7, Lcom/android/exchange/Eas;->PARSER_LOG:Z

    if-eqz v7, :cond_1

    .line 99
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "emptyTrash(): Wbxml:"

    aput-object v9, v7, v8

    invoke-virtual {p0, v7}, Lcom/android/exchange/EasEmptyTrashSvc;->userLog([Ljava/lang/String;)V

    .line 100
    invoke-virtual {p1}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v0

    .line 101
    .local v0, b:[B
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 102
    .local v1, byTe:Ljava/io/ByteArrayInputStream;
    new-instance v4, Lcom/android/exchange/adapter/LogAdapter;

    iget-object v7, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    invoke-direct {v4, v7, p0}, Lcom/android/exchange/adapter/LogAdapter;-><init>(Lcom/android/email/provider/EmailContent$Mailbox;Lcom/android/exchange/EasSyncService;)V

    .line 103
    .local v4, logA:Lcom/android/exchange/adapter/LogAdapter;
    invoke-virtual {v4, v1}, Lcom/android/exchange/adapter/LogAdapter;->parse(Ljava/io/InputStream;)Z

    .line 107
    .end local v0           #b:[B
    .end local v1           #byTe:Ljava/io/ByteArrayInputStream;
    .end local v4           #logA:Lcom/android/exchange/adapter/LogAdapter;
    :cond_1
    invoke-virtual {p1}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v7

    invoke-virtual {p0, v2, v7}, Lcom/android/exchange/EasEmptyTrashSvc;->sendHttpClientPost(Ljava/lang/String;[B)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .line 137
    :cond_2
    :goto_0
    return-object v5

    .line 109
    :catch_0
    move-exception v7

    move-object v6, v7

    .line 114
    .local v6, ste:Ljava/net/SocketTimeoutException;
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "emptyTrash(): Exception obtained: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Ljava/net/SocketTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {p0, v7}, Lcom/android/exchange/EasEmptyTrashSvc;->userLog([Ljava/lang/String;)V

    .line 115
    iget-object v7, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v7, v7, Lcom/android/email/provider/EmailContent;->mId:J

    const/high16 v9, 0x6

    const/16 v10, 0x64

    invoke-direct {p0, v7, v8, v9, v10}, Lcom/android/exchange/EasEmptyTrashSvc;->emptyTrashCb(JII)V

    .line 119
    const/4 v5, 0x0

    .line 133
    goto :goto_0

    .line 122
    .end local v6           #ste:Ljava/net/SocketTimeoutException;
    :catch_1
    move-exception v7

    move-object v3, v7

    .line 126
    .local v3, e:Ljava/lang/Exception;
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "emptyTrash(): Exception obtained: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {p0, v7}, Lcom/android/exchange/EasEmptyTrashSvc;->userLog([Ljava/lang/String;)V

    .line 127
    iget-object v7, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v7, v7, Lcom/android/email/provider/EmailContent;->mId:J

    const/4 v9, -0x3

    const/16 v10, 0x64

    invoke-direct {p0, v7, v8, v9, v10}, Lcom/android/exchange/EasEmptyTrashSvc;->emptyTrashCb(JII)V

    .line 131
    const/4 v5, 0x0

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/16 v10, 0x64

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    const-string v11, ": sync finished"

    .line 320
    invoke-virtual {p0}, Lcom/android/exchange/EasEmptyTrashSvc;->setupService()Z

    .line 323
    :try_start_0
    invoke-static {}, Lcom/android/exchange/SyncManager;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exchange/EasSyncService;->mDeviceId:Ljava/lang/String;

    .line 326
    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    const-wide/high16 v5, 0x4028

    cmpg-double v3, v3, v5

    if-gez v3, :cond_0

    .line 329
    const/4 v1, 0x0

    .line 330
    .local v1, result:I
    iget-object v3, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v3, v3, Lcom/android/email/provider/EmailContent;->mId:J

    const/4 v5, -0x2

    const/16 v6, 0x64

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/android/exchange/EasEmptyTrashSvc;->emptyTrashCb(JII)V

    .line 335
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 348
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/android/email/mail/DeviceAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 363
    :goto_1
    new-array v3, v9, [Ljava/lang/String;

    iget-object v4, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-object v4, v4, Lcom/android/email/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    aput-object v4, v3, v8

    const-string v4, ": sync finished"

    aput-object v11, v3, v7

    invoke-virtual {p0, v3}, Lcom/android/exchange/EasEmptyTrashSvc;->userLog([Ljava/lang/String;)V

    .line 364
    const-string v3, "OoB exited with status "

    iget v4, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    invoke-virtual {p0, v3, v4}, Lcom/android/exchange/EasEmptyTrashSvc;->userLog(Ljava/lang/String;I)V

    .line 366
    invoke-static {p0}, Lcom/android/exchange/SyncManager;->doneOutOfBand(Lcom/android/exchange/AbstractSyncService;)V

    .line 367
    iget v3, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    packed-switch v3, :pswitch_data_1

    .line 396
    .end local v1           #result:I
    :goto_2
    return-void

    .line 332
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/android/exchange/EasEmptyTrashSvc;->emptyTrash()I

    move-result v1

    .restart local v1       #result:I
    goto :goto_0

    .line 338
    :pswitch_0
    const/4 v3, 0x4

    iput v3, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/android/email/mail/DeviceAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 351
    .end local v1           #result:I
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 352
    .local v0, e:Lcom/android/email/mail/DeviceAccessException;
    :try_start_2
    const-string v3, "DeviceAccessPermission"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Caught Exceptoin, Device is blocked or quarantined "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/email/mail/DeviceAccessException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/exchange/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    const/4 v3, 0x5

    iput v3, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    .line 354
    iget-object v3, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v3, v3, Lcom/android/email/provider/EmailContent;->mId:J

    sget v5, Lcom/android/email/provider/EmailContent$Account;->DEVICE_IS_BLOCKED:I

    invoke-static {v3, v4, v5}, Lcom/android/exchange/SyncManager;->blockDevice(JI)V

    .line 355
    iget-object v3, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v3, v3, Lcom/android/email/provider/EmailContent;->mId:J

    invoke-static {v3, v4}, Lcom/android/exchange/SyncManager;->stopAccountSyncs(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 363
    new-array v3, v9, [Ljava/lang/String;

    iget-object v4, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-object v4, v4, Lcom/android/email/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    aput-object v4, v3, v8

    const-string v4, ": sync finished"

    aput-object v11, v3, v7

    invoke-virtual {p0, v3}, Lcom/android/exchange/EasEmptyTrashSvc;->userLog([Ljava/lang/String;)V

    .line 364
    const-string v3, "OoB exited with status "

    iget v4, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    invoke-virtual {p0, v3, v4}, Lcom/android/exchange/EasEmptyTrashSvc;->userLog(Ljava/lang/String;I)V

    .line 366
    invoke-static {p0}, Lcom/android/exchange/SyncManager;->doneOutOfBand(Lcom/android/exchange/AbstractSyncService;)V

    .line 367
    iget v3, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    packed-switch v3, :pswitch_data_2

    goto :goto_2

    .line 369
    :pswitch_1
    const/16 v2, 0x17

    .line 377
    .local v2, status:I
    sget-boolean v3, Lcom/android/exchange/EasEmptyTrashSvc;->CHECK_PROVISIONING_IN_PROGRESS:Z

    if-eqz v3, :cond_2

    .line 378
    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "Sync ended due to CHECK_PROVISIONING_IN_PROGRESS true case!!!"

    aput-object v4, v3, v8

    .end local v0           #e:Lcom/android/email/mail/DeviceAccessException;
    :goto_3
    invoke-virtual {p0, v3}, Lcom/android/exchange/EasEmptyTrashSvc;->userLog([Ljava/lang/String;)V

    goto :goto_2

    .line 342
    .end local v2           #status:I
    .restart local v1       #result:I
    :pswitch_2
    const/4 v3, 0x2

    :try_start_3
    iput v3, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lcom/android/email/mail/DeviceAccessException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_1

    .line 356
    .end local v1           #result:I
    :catch_1
    move-exception v3

    move-object v0, v3

    .line 357
    .local v0, e:Ljava/io/IOException;
    const/4 v3, 0x1

    :try_start_4
    iput v3, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 363
    new-array v3, v9, [Ljava/lang/String;

    iget-object v4, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-object v4, v4, Lcom/android/email/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    aput-object v4, v3, v8

    const-string v4, ": sync finished"

    aput-object v11, v3, v7

    invoke-virtual {p0, v3}, Lcom/android/exchange/EasEmptyTrashSvc;->userLog([Ljava/lang/String;)V

    .line 364
    const-string v3, "OoB exited with status "

    iget v4, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    invoke-virtual {p0, v3, v4}, Lcom/android/exchange/EasEmptyTrashSvc;->userLog(Ljava/lang/String;I)V

    .line 366
    invoke-static {p0}, Lcom/android/exchange/SyncManager;->doneOutOfBand(Lcom/android/exchange/AbstractSyncService;)V

    .line 367
    iget v3, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    packed-switch v3, :pswitch_data_3

    goto/16 :goto_2

    .line 369
    :pswitch_3
    const/16 v2, 0x17

    .line 377
    .restart local v2       #status:I
    sget-boolean v3, Lcom/android/exchange/EasEmptyTrashSvc;->CHECK_PROVISIONING_IN_PROGRESS:Z

    if-eqz v3, :cond_3

    .line 378
    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "Sync ended due to CHECK_PROVISIONING_IN_PROGRESS true case!!!"

    aput-object v4, v3, v8

    goto :goto_3

    .line 345
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #status:I
    .restart local v1       #result:I
    :pswitch_4
    const/4 v3, 0x3

    :try_start_5
    iput v3, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Lcom/android/email/mail/DeviceAccessException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_1

    .line 358
    .end local v1           #result:I
    :catch_2
    move-exception v3

    move-object v0, v3

    .line 359
    .local v0, e:Ljava/lang/Exception;
    :try_start_6
    const-string v3, "Exception caught in EasEmptyTrashSvc"

    invoke-virtual {p0, v3, v0}, Lcom/android/exchange/EasEmptyTrashSvc;->userLog(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 360
    const/4 v3, 0x3

    iput v3, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 363
    new-array v3, v9, [Ljava/lang/String;

    iget-object v4, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-object v4, v4, Lcom/android/email/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    aput-object v4, v3, v8

    const-string v4, ": sync finished"

    aput-object v11, v3, v7

    invoke-virtual {p0, v3}, Lcom/android/exchange/EasEmptyTrashSvc;->userLog([Ljava/lang/String;)V

    .line 364
    const-string v3, "OoB exited with status "

    iget v4, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    invoke-virtual {p0, v3, v4}, Lcom/android/exchange/EasEmptyTrashSvc;->userLog(Ljava/lang/String;I)V

    .line 366
    invoke-static {p0}, Lcom/android/exchange/SyncManager;->doneOutOfBand(Lcom/android/exchange/AbstractSyncService;)V

    .line 367
    iget v3, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    packed-switch v3, :pswitch_data_4

    goto/16 :goto_2

    .line 369
    :pswitch_5
    const/16 v2, 0x17

    .line 377
    .restart local v2       #status:I
    sget-boolean v3, Lcom/android/exchange/EasEmptyTrashSvc;->CHECK_PROVISIONING_IN_PROGRESS:Z

    if-eqz v3, :cond_4

    .line 378
    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "Sync ended due to CHECK_PROVISIONING_IN_PROGRESS true case!!!"

    aput-object v4, v3, v8

    goto :goto_3

    .line 362
    .end local v0           #e:Ljava/lang/Exception;
    .end local v2           #status:I
    :catchall_0
    move-exception v3

    .line 363
    new-array v4, v9, [Ljava/lang/String;

    iget-object v5, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-object v5, v5, Lcom/android/email/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    aput-object v5, v4, v8

    const-string v5, ": sync finished"

    aput-object v11, v4, v7

    invoke-virtual {p0, v4}, Lcom/android/exchange/EasEmptyTrashSvc;->userLog([Ljava/lang/String;)V

    .line 364
    const-string v4, "OoB exited with status "

    iget v5, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    invoke-virtual {p0, v4, v5}, Lcom/android/exchange/EasEmptyTrashSvc;->userLog(Ljava/lang/String;I)V

    .line 366
    invoke-static {p0}, Lcom/android/exchange/SyncManager;->doneOutOfBand(Lcom/android/exchange/AbstractSyncService;)V

    .line 367
    iget v4, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    packed-switch v4, :pswitch_data_5

    .line 362
    :goto_4
    throw v3

    .line 369
    :pswitch_6
    const/16 v2, 0x17

    .line 377
    .restart local v2       #status:I
    sget-boolean v4, Lcom/android/exchange/EasEmptyTrashSvc;->CHECK_PROVISIONING_IN_PROGRESS:Z

    if-eqz v4, :cond_1

    .line 378
    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "Sync ended due to CHECK_PROVISIONING_IN_PROGRESS true case!!!"

    aput-object v5, v4, v8

    invoke-virtual {p0, v4}, Lcom/android/exchange/EasEmptyTrashSvc;->userLog([Ljava/lang/String;)V

    goto :goto_4

    .line 390
    .end local v2           #status:I
    :pswitch_7
    const/4 v2, 0x3

    .line 391
    .restart local v2       #status:I
    iget-object v4, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v4, v4, Lcom/android/email/provider/EmailContent;->mId:J

    invoke-direct {p0, v4, v5, v2, v10}, Lcom/android/exchange/EasEmptyTrashSvc;->emptyTrashCb(JII)V

    goto :goto_4

    .line 380
    :cond_1
    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "Sync ended due to CHECK_PROVISIONING_IN_PROGRESS false case!!!"

    aput-object v5, v4, v8

    invoke-virtual {p0, v4}, Lcom/android/exchange/EasEmptyTrashSvc;->userLog([Ljava/lang/String;)V

    .line 381
    iget-object v4, p0, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v5, v5, Lcom/android/email/provider/EmailContent;->mId:J

    invoke-static {v4, v5, v6, v7}, Lcom/android/exchange/SyncManager;->reloadFolderList(Landroid/content/Context;JZ)V

    .line 382
    sput-boolean v7, Lcom/android/exchange/EasEmptyTrashSvc;->CHECK_PROVISIONING_IN_PROGRESS:Z

    goto :goto_4

    .line 390
    .end local v2           #status:I
    .local v0, e:Lcom/android/email/mail/DeviceAccessException;
    :pswitch_8
    const/4 v2, 0x3

    .line 391
    .restart local v2       #status:I
    iget-object v3, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v3, v3, Lcom/android/email/provider/EmailContent;->mId:J

    .end local v0           #e:Lcom/android/email/mail/DeviceAccessException;
    :goto_5
    invoke-direct {p0, v3, v4, v2, v10}, Lcom/android/exchange/EasEmptyTrashSvc;->emptyTrashCb(JII)V

    goto/16 :goto_2

    .line 380
    .restart local v0       #e:Lcom/android/email/mail/DeviceAccessException;
    :cond_2
    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "Sync ended due to CHECK_PROVISIONING_IN_PROGRESS false case!!!"

    aput-object v4, v3, v8

    invoke-virtual {p0, v3}, Lcom/android/exchange/EasEmptyTrashSvc;->userLog([Ljava/lang/String;)V

    .line 381
    iget-object v3, p0, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v4, v4, Lcom/android/email/provider/EmailContent;->mId:J

    invoke-static {v3, v4, v5, v7}, Lcom/android/exchange/SyncManager;->reloadFolderList(Landroid/content/Context;JZ)V

    .line 382
    .end local v0           #e:Lcom/android/email/mail/DeviceAccessException;
    :goto_6
    sput-boolean v7, Lcom/android/exchange/EasEmptyTrashSvc;->CHECK_PROVISIONING_IN_PROGRESS:Z

    goto/16 :goto_2

    .line 390
    .end local v2           #status:I
    .local v0, e:Ljava/io/IOException;
    :pswitch_9
    const/4 v2, 0x3

    .line 391
    .restart local v2       #status:I
    iget-object v3, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v3, v3, Lcom/android/email/provider/EmailContent;->mId:J

    goto :goto_5

    .line 380
    :cond_3
    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "Sync ended due to CHECK_PROVISIONING_IN_PROGRESS false case!!!"

    aput-object v4, v3, v8

    invoke-virtual {p0, v3}, Lcom/android/exchange/EasEmptyTrashSvc;->userLog([Ljava/lang/String;)V

    .line 381
    iget-object v3, p0, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v4, v4, Lcom/android/email/provider/EmailContent;->mId:J

    invoke-static {v3, v4, v5, v7}, Lcom/android/exchange/SyncManager;->reloadFolderList(Landroid/content/Context;JZ)V

    goto :goto_6

    .line 390
    .end local v2           #status:I
    .local v0, e:Ljava/lang/Exception;
    :pswitch_a
    const/4 v2, 0x3

    .line 391
    .restart local v2       #status:I
    iget-object v3, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v3, v3, Lcom/android/email/provider/EmailContent;->mId:J

    goto :goto_5

    .line 380
    :cond_4
    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "Sync ended due to CHECK_PROVISIONING_IN_PROGRESS false case!!!"

    aput-object v4, v3, v8

    invoke-virtual {p0, v3}, Lcom/android/exchange/EasEmptyTrashSvc;->userLog([Ljava/lang/String;)V

    .line 381
    iget-object v3, p0, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v4, v4, Lcom/android/email/provider/EmailContent;->mId:J

    invoke-static {v3, v4, v5, v7}, Lcom/android/exchange/SyncManager;->reloadFolderList(Landroid/content/Context;JZ)V

    goto :goto_6

    .line 369
    .end local v0           #e:Ljava/lang/Exception;
    .end local v2           #status:I
    .restart local v1       #result:I
    :pswitch_b
    const/16 v2, 0x17

    .line 377
    .restart local v2       #status:I
    sget-boolean v3, Lcom/android/exchange/EasEmptyTrashSvc;->CHECK_PROVISIONING_IN_PROGRESS:Z

    if-eqz v3, :cond_5

    .line 378
    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "Sync ended due to CHECK_PROVISIONING_IN_PROGRESS true case!!!"

    aput-object v4, v3, v8

    goto/16 :goto_3

    .line 390
    .end local v2           #status:I
    :pswitch_c
    const/4 v2, 0x3

    .line 391
    .restart local v2       #status:I
    iget-object v3, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v3, v3, Lcom/android/email/provider/EmailContent;->mId:J

    goto :goto_5

    .line 380
    :cond_5
    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "Sync ended due to CHECK_PROVISIONING_IN_PROGRESS false case!!!"

    aput-object v4, v3, v8

    invoke-virtual {p0, v3}, Lcom/android/exchange/EasEmptyTrashSvc;->userLog([Ljava/lang/String;)V

    .line 381
    iget-object v3, p0, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v4, v4, Lcom/android/email/provider/EmailContent;->mId:J

    invoke-static {v3, v4, v5, v7}, Lcom/android/exchange/SyncManager;->reloadFolderList(Landroid/content/Context;JZ)V

    goto :goto_6

    .line 335
    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_4
        :pswitch_2
        :pswitch_0
    .end packed-switch

    .line 367
    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_b
        :pswitch_c
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x4
        :pswitch_1
        :pswitch_8
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x4
        :pswitch_3
        :pswitch_9
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x4
        :pswitch_5
        :pswitch_a
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x4
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
