.class public Lcom/android/exchange/security/ode/ODESyncService;
.super Lcom/android/exchange/EasSyncService;
.source "ODESyncService.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/email/provider/EmailContent$Account;)V
    .locals 0
    .parameter "_context"
    .parameter "_acc"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/android/exchange/EasSyncService;-><init>(Landroid/content/Context;Lcom/android/email/provider/EmailContent$Account;)V

    .line 31
    return-void
.end method


# virtual methods
.method public doProvisioning()Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const-string v11, ">"

    const-string v10, "<"

    .line 35
    invoke-virtual {p0}, Lcom/android/exchange/security/ode/ODESyncService;->canProvision()Lcom/android/exchange/adapter/ProvisionParser;

    move-result-object v2

    .line 36
    .local v2, pp:Lcom/android/exchange/adapter/ProvisionParser;
    if-eqz v2, :cond_5

    .line 37
    iget-object v5, p0, Lcom/android/exchange/security/ode/ODESyncService;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v4

    .line 38
    .local v4, sp:Lcom/android/email/SecurityPolicy;
    invoke-virtual {v2}, Lcom/android/exchange/adapter/ProvisionParser;->getPolicySet()Lcom/android/email/SecurityPolicy$PolicySet;

    move-result-object v3

    .line 39
    .local v3, ps:Lcom/android/email/SecurityPolicy$PolicySet;
    if-eqz v3, :cond_0

    .line 40
    iget-object v5, p0, Lcom/android/exchange/security/ode/ODESyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/exchange/security/ode/ODESyncService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v5, v6, v8, v7}, Lcom/android/email/SecurityPolicy$PolicySet;->writeAccount(Lcom/android/email/provider/EmailContent$Account;Ljava/lang/String;ZLandroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 41
    iget-object v5, p0, Lcom/android/exchange/security/ode/ODESyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v5, v5, Lcom/android/email/provider/EmailContent$Account;->mId:J

    invoke-virtual {v4, v5, v6}, Lcom/android/email/SecurityPolicy;->updatePolicies(J)V

    .line 44
    :cond_0
    invoke-virtual {v2}, Lcom/android/exchange/adapter/ProvisionParser;->getRemoteWipe()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 45
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/exchange/security/ode/ODESyncService;->TAG:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "<"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ">"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Remote Wipe got from Provision Parser"

    invoke-static {v5, v6}, Lcom/android/exchange/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    :try_start_0
    invoke-virtual {v2}, Lcom/android/exchange/adapter/ProvisionParser;->getPolicyKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/exchange/security/ode/ODESyncService;->acknowledgeRemoteWipe(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :goto_0
    invoke-virtual {v4}, Lcom/android/email/SecurityPolicy;->isActiveAdmin()Z

    move-result v5

    if-nez v5, :cond_1

    .line 53
    iget-object v5, p0, Lcom/android/exchange/security/ode/ODESyncService;->TAG:Ljava/lang/String;

    const-string v6, "Email is not admin. Sending broadcast for MASTER_CLEAR"

    invoke-static {v5, v6}, Lcom/android/exchange/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget-object v5, p0, Lcom/android/exchange/security/ode/ODESyncService;->mContext:Landroid/content/Context;

    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :goto_1
    move v5, v9

    .line 70
    .end local v3           #ps:Lcom/android/email/SecurityPolicy$PolicySet;
    .end local v4           #sp:Lcom/android/email/SecurityPolicy;
    :goto_2
    return v5

    .line 49
    .restart local v3       #ps:Lcom/android/email/SecurityPolicy$PolicySet;
    .restart local v4       #sp:Lcom/android/email/SecurityPolicy;
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 50
    .local v0, e:Ljava/lang/Exception;
    iget-object v5, p0, Lcom/android/exchange/security/ode/ODESyncService;->TAG:Ljava/lang/String;

    const-string v6, "acknowledgeRemoteWipe exception"

    invoke-static {v5, v6}, Lcom/android/exchange/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 56
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    invoke-virtual {v4}, Lcom/android/email/SecurityPolicy;->remoteWipe()V

    goto :goto_1

    .line 58
    :cond_2
    invoke-virtual {v4, v3}, Lcom/android/email/SecurityPolicy;->isActive(Lcom/android/email/SecurityPolicy$PolicySet;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 60
    invoke-virtual {v2}, Lcom/android/exchange/adapter/ProvisionParser;->getPolicyKey()Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {p0, v5, v6}, Lcom/android/exchange/security/ode/ODESyncService;->acknowledgeProvision(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, policyKey:Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 62
    iget-object v5, p0, Lcom/android/exchange/security/ode/ODESyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v6, p0, Lcom/android/exchange/security/ode/ODESyncService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v5, v1, v8, v6}, Lcom/android/email/SecurityPolicy$PolicySet;->writeAccount(Lcom/android/email/provider/EmailContent$Account;Ljava/lang/String;ZLandroid/content/Context;)Z

    move v5, v8

    .line 63
    goto :goto_2

    .line 66
    .end local v1           #policyKey:Ljava/lang/String;
    :cond_3
    iget-object v5, p0, Lcom/android/exchange/security/ode/ODESyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v5, v5, Lcom/android/email/provider/EmailContent$Account;->mId:J

    invoke-virtual {v4, v5, v6}, Lcom/android/email/SecurityPolicy;->policiesRequired(J)V

    .end local v3           #ps:Lcom/android/email/SecurityPolicy$PolicySet;
    .end local v4           #sp:Lcom/android/email/SecurityPolicy;
    :cond_4
    :goto_3
    move v5, v9

    .line 70
    goto :goto_2

    .line 69
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/exchange/security/ode/ODESyncService;->TAG:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "<"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ">"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "pp is null. CANNOT PROVISION"

    invoke-static {v5, v6}, Lcom/android/exchange/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public sendRecoveryPassword(Ljava/lang/String;)Z
    .locals 10
    .parameter "password"

    .prologue
    .line 113
    const/4 v5, 0x0

    .line 114
    .local v5, result:Z
    new-instance v6, Lcom/android/exchange/adapter/Serializer;

    invoke-direct {v6}, Lcom/android/exchange/adapter/Serializer;-><init>()V

    .line 116
    .local v6, s:Lcom/android/exchange/adapter/Serializer;
    const/16 v7, 0x485

    :try_start_0
    invoke-virtual {v6, v7}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v7

    const/16 v8, 0x494

    invoke-virtual {v7, v8}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v7

    const/16 v8, 0x488

    invoke-virtual {v7, v8}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v7

    const/16 v8, 0x495

    invoke-virtual {v7, v8, p1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/exchange/adapter/Serializer;->done()V

    .line 124
    const-string v7, "Settings"

    invoke-virtual {v6}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/android/exchange/security/ode/ODESyncService;->sendHttpClientPost(Ljava/lang/String;[B)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 125
    .local v4, resp:Lorg/apache/http/HttpResponse;
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 127
    .local v0, code:I
    const/16 v7, 0xc8

    if-ne v0, v7, :cond_2

    .line 129
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    .line 130
    .local v2, is:Ljava/io/InputStream;
    if-eqz v2, :cond_0

    .line 131
    new-instance v3, Lcom/android/exchange/adapter/SettingsParser;

    invoke-direct {v3, v2}, Lcom/android/exchange/adapter/SettingsParser;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 134
    .local v3, p:Lcom/android/exchange/adapter/SettingsParser;
    :try_start_1
    invoke-virtual {v3}, Lcom/android/exchange/adapter/SettingsParser;->parse()Z

    move-result v7

    if-nez v7, :cond_1

    .line 135
    iget-object v7, p0, Lcom/android/exchange/security/ode/ODESyncService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Server responded with error: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Lcom/android/exchange/adapter/SettingsParser;->getStatus()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " for settings command"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/android/exchange/EasException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 150
    .end local v0           #code:I
    .end local v2           #is:Ljava/io/InputStream;
    .end local v3           #p:Lcom/android/exchange/adapter/SettingsParser;
    .end local v4           #resp:Lorg/apache/http/HttpResponse;
    :cond_0
    :goto_0
    return v5

    .line 137
    .restart local v0       #code:I
    .restart local v2       #is:Ljava/io/InputStream;
    .restart local v3       #p:Lcom/android/exchange/adapter/SettingsParser;
    .restart local v4       #resp:Lorg/apache/http/HttpResponse;
    :cond_1
    const/4 v5, 0x1

    goto :goto_0

    .line 139
    :catch_0
    move-exception v7

    move-object v1, v7

    .line 140
    .local v1, e:Lcom/android/exchange/EasException;
    :try_start_2
    invoke-virtual {v1}, Lcom/android/exchange/EasException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 146
    .end local v0           #code:I
    .end local v1           #e:Lcom/android/exchange/EasException;
    .end local v2           #is:Ljava/io/InputStream;
    .end local v3           #p:Lcom/android/exchange/adapter/SettingsParser;
    .end local v4           #resp:Lorg/apache/http/HttpResponse;
    :catch_1
    move-exception v7

    move-object v1, v7

    .line 147
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 144
    .end local v1           #e:Ljava/io/IOException;
    .restart local v0       #code:I
    .restart local v4       #resp:Lorg/apache/http/HttpResponse;
    :cond_2
    :try_start_3
    iget-object v7, p0, Lcom/android/exchange/security/ode/ODESyncService;->TAG:Ljava/lang/String;

    const-string v8, "unable to send device information to the server"

    invoke-static {v7, v8}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method public setupAdhocServiceBasedonAccount()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 75
    iget-object v2, p0, Lcom/android/exchange/security/ode/ODESyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    if-nez v2, :cond_0

    move v2, v5

    .line 109
    :goto_0
    return v2

    .line 76
    :cond_0
    iget-object v2, p0, Lcom/android/exchange/security/ode/ODESyncService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/exchange/security/ode/ODESyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v3, v3, Lcom/android/email/provider/EmailContent$Account;->mId:J

    invoke-static {v2, v3, v4}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exchange/security/ode/ODESyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    .line 77
    iget-object v2, p0, Lcom/android/exchange/security/ode/ODESyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    if-nez v2, :cond_1

    move v2, v5

    goto :goto_0

    .line 80
    :cond_1
    iget-object v2, p0, Lcom/android/exchange/security/ode/ODESyncService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/exchange/security/ode/ODESyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v3, v3, Lcom/android/email/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    invoke-static {v2, v3, v4}, Lcom/android/email/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$HostAuth;

    move-result-object v1

    .line 81
    .local v1, ha:Lcom/android/email/provider/EmailContent$HostAuth;
    if-nez v1, :cond_2

    .line 83
    iget-object v2, p0, Lcom/android/exchange/security/ode/ODESyncService;->TAG:Ljava/lang/String;

    const-string v3, "ha is null for account"

    invoke-static {v2, v3}, Lcom/android/exchange/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v5

    .line 84
    goto :goto_0

    .line 86
    :cond_2
    iget-object v2, v1, Lcom/android/email/provider/EmailContent$HostAuth;->mAddress:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/exchange/security/ode/ODESyncService;->mHostAddress:Ljava/lang/String;

    .line 87
    iget-object v2, v1, Lcom/android/email/provider/EmailContent$HostAuth;->mLogin:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/exchange/security/ode/ODESyncService;->mUserName:Ljava/lang/String;

    .line 88
    iget-object v2, v1, Lcom/android/email/provider/EmailContent$HostAuth;->mPassword:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/exchange/security/ode/ODESyncService;->mPassword:Ljava/lang/String;

    .line 91
    iget-object v2, p0, Lcom/android/exchange/security/ode/ODESyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v2, v2, Lcom/android/email/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/exchange/security/ode/ODESyncService;->mProtocolVersion:Ljava/lang/String;

    .line 93
    iget-object v2, p0, Lcom/android/exchange/security/ode/ODESyncService;->mProtocolVersion:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 94
    const-string v2, "2.5"

    iput-object v2, p0, Lcom/android/exchange/security/ode/ODESyncService;->mProtocolVersion:Ljava/lang/String;

    .line 96
    :cond_3
    iget-object v2, p0, Lcom/android/exchange/security/ode/ODESyncService;->mProtocolVersion:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exchange/security/ode/ODESyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    .line 98
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exchange/security/ode/ODESyncService;->mThread:Ljava/lang/Thread;

    .line 99
    const/16 v2, 0xa

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 100
    iget-object v2, p0, Lcom/android/exchange/security/ode/ODESyncService;->mThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exchange/security/ode/ODESyncService;->TAG:Ljava/lang/String;

    .line 104
    :try_start_0
    invoke-static {}, Lcom/android/exchange/SyncManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exchange/security/ode/ODESyncService;->mDeviceId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 105
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 106
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method
