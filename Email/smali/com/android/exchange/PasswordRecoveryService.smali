.class public Lcom/android/exchange/PasswordRecoveryService;
.super Lcom/android/exchange/EasSyncService;
.source "PasswordRecoveryService.java"


# instance fields
.field TAG:Ljava/lang/String;

.field mPassword:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/email/provider/EmailContent$Account;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-static {p1, p2}, Lcom/android/exchange/PasswordRecoveryService;->getMailboxForAccount(Landroid/content/Context;Lcom/android/email/provider/EmailContent$Account;)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/exchange/EasSyncService;-><init>(Landroid/content/Context;Lcom/android/email/provider/EmailContent$Mailbox;)V

    .line 32
    const-class v0, Lcom/android/exchange/PasswordRecoveryService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/PasswordRecoveryService;->TAG:Ljava/lang/String;

    .line 38
    iget-object v0, p0, Lcom/android/exchange/PasswordRecoveryService;->TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/exchange/PasswordRecoveryService;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/exchange/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    :try_start_0
    invoke-static {}, Lcom/android/exchange/SyncManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mDeviceId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :goto_0
    iput-object p3, p0, Lcom/android/exchange/PasswordRecoveryService;->mPassword:Ljava/lang/String;

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

    .line 41
    :catch_0
    move-exception v0

    .line 42
    iget-object v1, p0, Lcom/android/exchange/PasswordRecoveryService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception caught while getting device id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/exchange/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getMailboxForAccount(Landroid/content/Context;Lcom/android/email/provider/EmailContent$Account;)Lcom/android/email/provider/EmailContent$Mailbox;
    .locals 4
    .parameter "context"
    .parameter "acc"

    .prologue
    .line 51
    const/4 v0, 0x0

    .line 52
    .local v0, mailbox:Lcom/android/email/provider/EmailContent$Mailbox;
    if-eqz p1, :cond_0

    .line 53
    iget-wide v1, p1, Lcom/android/email/provider/EmailContent;->mId:J

    const/16 v3, 0x44

    invoke-static {p0, v1, v2, v3}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxOfType(Landroid/content/Context;JI)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v0

    .line 54
    :cond_0
    return-object v0
.end method

.method private logResponse(Lorg/apache/http/HttpResponse;)V
    .locals 9
    .parameter "httpResponse"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/DeviceAccessException;
        }
    .end annotation

    .prologue
    .line 106
    iget-object v6, p0, Lcom/android/exchange/PasswordRecoveryService;->TAG:Ljava/lang/String;

    const-string v7, "logResponse"

    invoke-static {v6, v7}, Lcom/android/exchange/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    if-nez p1, :cond_1

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 110
    :cond_1
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    .line 111
    .local v5, resp:I
    iget-object v6, p0, Lcom/android/exchange/PasswordRecoveryService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "statusCode="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/exchange/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const/16 v6, 0xc8

    if-ne v5, v6, :cond_0

    .line 116
    iget-object v6, p0, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/email/SecurityPolicy;->setRecoverPasswordState(Z)V

    .line 118
    const-string v6, "NPG"

    const-string v7, "Recovery Password State saved"

    invoke-static {v6, v7}, Lcom/android/exchange/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 121
    .local v1, httpEntity:Lorg/apache/http/HttpEntity;
    if-eqz v1, :cond_0

    .line 123
    const/4 v2, 0x0

    .line 125
    .local v2, inputStream:Ljava/io/InputStream;
    :try_start_0
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    .line 132
    :goto_1
    iget-object v6, p0, Lcom/android/exchange/PasswordRecoveryService;->TAG:Ljava/lang/String;

    const-string v7, "creating parser"

    invoke-static {v6, v7}, Lcom/android/exchange/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    const/4 v3, 0x0

    .line 135
    .local v3, parser:Lcom/android/exchange/adapter/Parser;
    :try_start_1
    new-instance v4, Lcom/android/exchange/adapter/SettingsParser;

    invoke-direct {v4, v2}, Lcom/android/exchange/adapter/SettingsParser;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .end local v3           #parser:Lcom/android/exchange/adapter/Parser;
    .local v4, parser:Lcom/android/exchange/adapter/Parser;
    move-object v3, v4

    .line 140
    .end local v4           #parser:Lcom/android/exchange/adapter/Parser;
    .restart local v3       #parser:Lcom/android/exchange/adapter/Parser;
    :goto_2
    if-eqz v3, :cond_0

    .line 142
    :try_start_2
    invoke-virtual {v3}, Lcom/android/exchange/adapter/SettingsParser;->parse()Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/android/exchange/EasException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_0

    .line 143
    :catch_0
    move-exception v0

    .line 144
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 126
    .end local v0           #e:Ljava/io/IOException;
    .end local v3           #parser:Lcom/android/exchange/adapter/Parser;
    :catch_1
    move-exception v0

    .line 127
    .local v0, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_1

    .line 128
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v0

    .line 129
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 136
    .end local v0           #e:Ljava/io/IOException;
    .restart local v3       #parser:Lcom/android/exchange/adapter/Parser;
    :catch_3
    move-exception v6

    move-object v0, v6

    .line 137
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 145
    .end local v0           #e:Ljava/io/IOException;
    :catch_4
    move-exception v0

    .line 146
    .local v0, e:Lcom/android/exchange/EasException;
    invoke-virtual {v0}, Lcom/android/exchange/EasException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 60
    iget-object v6, p0, Lcom/android/exchange/PasswordRecoveryService;->TAG:Ljava/lang/String;

    const-string v7, "run"

    invoke-static {v6, v7}, Lcom/android/exchange/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-virtual {p0}, Lcom/android/exchange/PasswordRecoveryService;->setupService()Z

    .line 64
    new-instance v5, Lcom/android/exchange/adapter/Serializer;

    invoke-direct {v5}, Lcom/android/exchange/adapter/Serializer;-><init>()V

    .line 66
    .local v5, s:Lcom/android/exchange/adapter/Serializer;
    const/16 v6, 0x485

    :try_start_0
    invoke-virtual {v5, v6}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 67
    const/16 v6, 0x494

    invoke-virtual {v5, v6}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 68
    const/16 v6, 0x488

    invoke-virtual {v5, v6}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 69
    const/16 v6, 0x495

    invoke-virtual {v5, v6}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v6

    iget-object v7, p0, Lcom/android/exchange/PasswordRecoveryService;->mPassword:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/android/exchange/adapter/Serializer;->text(Ljava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 70
    invoke-virtual {v5}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 71
    invoke-virtual {v5}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 72
    invoke-virtual {v5}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/exchange/adapter/Serializer;->done()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :goto_0
    iget-object v6, p0, Lcom/android/exchange/PasswordRecoveryService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sending http post with recovery password, mUsername:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/exchange/EasSyncService;->mUserName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/exchange/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :try_start_1
    sget-boolean v6, Lcom/android/exchange/Eas;->PARSER_LOG:Z

    if-eqz v6, :cond_0

    .line 82
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "PasswordRecoverySerice:run(): Wbxml:"

    aput-object v8, v6, v7

    invoke-virtual {p0, v6}, Lcom/android/exchange/PasswordRecoveryService;->userLog([Ljava/lang/String;)V

    .line 83
    invoke-virtual {v5}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v0

    .line 84
    .local v0, b:[B
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 85
    .local v1, byTe:Ljava/io/ByteArrayInputStream;
    new-instance v4, Lcom/android/exchange/adapter/LogAdapter;

    iget-object v6, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    invoke-direct {v4, v6, p0}, Lcom/android/exchange/adapter/LogAdapter;-><init>(Lcom/android/email/provider/EmailContent$Mailbox;Lcom/android/exchange/EasSyncService;)V

    .line 86
    .local v4, logA:Lcom/android/exchange/adapter/LogAdapter;
    invoke-virtual {v4, v1}, Lcom/android/exchange/adapter/LogAdapter;->parse(Ljava/io/InputStream;)Z

    .line 90
    .end local v0           #b:[B
    .end local v1           #byTe:Ljava/io/ByteArrayInputStream;
    .end local v4           #logA:Lcom/android/exchange/adapter/LogAdapter;
    :cond_0
    const-string v6, "Settings"

    invoke-virtual {v5}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/android/exchange/PasswordRecoveryService;->sendHttpClientPost(Ljava/lang/String;[B)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 91
    .local v3, httpResponse:Lorg/apache/http/HttpResponse;
    invoke-direct {p0, v3}, Lcom/android/exchange/PasswordRecoveryService;->logResponse(Lorg/apache/http/HttpResponse;)V
    :try_end_1
    .catch Lcom/android/email/mail/DeviceAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 103
    .end local v3           #httpResponse:Lorg/apache/http/HttpResponse;
    :goto_1
    return-void

    .line 73
    :catch_0
    move-exception v6

    move-object v2, v6

    .line 74
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 93
    .end local v2           #e:Ljava/io/IOException;
    :catch_1
    move-exception v6

    move-object v2, v6

    .line 94
    .local v2, e:Lcom/android/email/mail/DeviceAccessException;
    const-string v6, "DeviceAccessPermission"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Caught Exceptoin, Device is blocked or quarantined "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lcom/android/email/mail/DeviceAccessException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/exchange/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const/4 v6, 0x5

    iput v6, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    .line 96
    iget-object v6, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v6, v6, Lcom/android/email/provider/EmailContent;->mId:J

    sget v8, Lcom/android/email/provider/EmailContent$Account;->DEVICE_IS_BLOCKED:I

    invoke-static {v6, v7, v8}, Lcom/android/exchange/SyncManager;->blockDevice(JI)V

    .line 97
    iget-object v6, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v6, v6, Lcom/android/email/provider/EmailContent;->mId:J

    invoke-static {v6, v7}, Lcom/android/exchange/SyncManager;->stopAccountSyncs(J)V

    goto :goto_1

    .line 99
    .end local v2           #e:Lcom/android/email/mail/DeviceAccessException;
    :catch_2
    move-exception v6

    move-object v2, v6

    .line 100
    .local v2, e:Ljava/io/IOException;
    iget-object v6, p0, Lcom/android/exchange/PasswordRecoveryService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Caught IO Exception: message :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/exchange/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method
