.class public Lcom/android/email/service/DefaultAccountService;
.super Landroid/app/Service;
.source "DefaultAccountService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = ">>> DefAccount"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method public static actionGetDefaultAccount(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 30
    const-string v1, ">>> DefAccount"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "action intent : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 32
    .local v0, i:Landroid/content/Intent;
    const-class v1, Lcom/android/email/service/DefaultAccountService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 33
    const-string v1, "Get"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 34
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 35
    return-void
.end method

.method public static actionSetDefaultAccount(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 21
    const-string v1, ">>> DefAccount"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "action intent : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 23
    .local v0, i:Landroid/content/Intent;
    const-class v1, Lcom/android/email/service/DefaultAccountService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 24
    const-string v1, "Set"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 25
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 26
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 27
    return-void
.end method

.method private getCarrierAccount()Lcom/android/email/Account;
    .locals 1

    .prologue
    .line 115
    invoke-static {p0}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/Preferences;->getCarrierAccount()Lcom/android/email/Account;

    move-result-object v0

    return-object v0
.end method

.method private onGetDefaultAccount()V
    .locals 15

    .prologue
    const-string v12, "receive_host"

    const-string v12, "passwd"

    const-string v12, "id"

    const-string v12, ">>> DefAccount"

    const-string v12, ""

    .line 38
    invoke-direct {p0}, Lcom/android/email/service/DefaultAccountService;->getCarrierAccount()Lcom/android/email/Account;

    move-result-object v0

    .line 47
    .local v0, ac:Lcom/android/email/Account;
    new-instance v9, Landroid/content/Intent;

    const-string v12, "android.intent.action.RECV_HOST"

    invoke-direct {v9, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 50
    .local v9, sintent:Landroid/content/Intent;
    if-nez v0, :cond_0

    .line 51
    :try_start_0
    const-string v12, "id"

    const-string v13, ""

    invoke-virtual {v9, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    const-string v12, "passwd"

    const-string v13, ""

    invoke-virtual {v9, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    const-string v12, "service"

    const-string v13, ""

    invoke-virtual {v9, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    const-string v12, "receive_host"

    const-string v13, ""

    invoke-virtual {v9, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    const-string v12, "receive_port"

    const-string v13, ""

    invoke-virtual {v9, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    const-string v12, "send_host"

    const-string v13, ""

    invoke-virtual {v9, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    const-string v12, "send_port"

    const-string v13, ""

    invoke-virtual {v9, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    const-string v12, "user_id"

    const-string v13, ""

    invoke-virtual {v9, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    const-string v12, "user_passwd"

    const-string v13, ""

    invoke-virtual {v9, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    :goto_0
    invoke-virtual {p0, v9}, Lcom/android/email/service/DefaultAccountService;->sendBroadcast(Landroid/content/Intent;)V

    .line 97
    :goto_1
    return-void

    .line 62
    :cond_0
    new-instance v4, Ljava/net/URI;

    invoke-virtual {v0}, Lcom/android/email/Account;->getStoreUri()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v4, v12}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 63
    .local v4, recv_uri:Ljava/net/URI;
    new-instance v8, Ljava/net/URI;

    invoke-virtual {v0}, Lcom/android/email/Account;->getSenderUri()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v8, v12}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 64
    .local v8, send_uri:Ljava/net/URI;
    const-string v12, ">>> DefAccount"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "recv_uri : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string v12, ">>> DefAccount"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "send_uri : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-virtual {v0}, Lcom/android/email/Account;->getEmail()Ljava/lang/String;

    move-result-object v10

    .line 67
    .local v10, user_id:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v12

    const-string v13, ":"

    const/4 v14, 0x2

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    aget-object v11, v12, v13

    .line 68
    .local v11, user_passwd:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v5

    .line 69
    .local v5, scheme:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 70
    .local v2, recv_host:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/net/URI;->getPort()I

    move-result v12

    const/16 v13, 0x6e

    if-ne v12, v13, :cond_1

    const-string v12, "pop"

    move-object v3, v12

    .line 71
    .local v3, recv_port:Ljava/lang/String;
    :goto_2
    invoke-virtual {v8}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v6

    .line 72
    .local v6, send_host:Ljava/lang/String;
    invoke-virtual {v8}, Ljava/net/URI;->getPort()I

    move-result v12

    const/16 v13, 0x19

    if-ne v12, v13, :cond_2

    const-string v12, "smtp"

    move-object v7, v12

    .line 73
    .local v7, send_port:Ljava/lang/String;
    :goto_3
    const-string v12, ">>> DefAccount"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "id : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string v12, ">>> DefAccount"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "passwd : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string v12, ">>> DefAccount"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "service : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string v12, ">>> DefAccount"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "receive_host : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string v12, ">>> DefAccount"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "receive_port : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string v12, ">>> DefAccount"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "send_host : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string v12, ">>> DefAccount"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "send_port : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string v12, ">>> DefAccount"

    const-string v13, "user_id : "

    invoke-static {v12, v13}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string v12, ">>> DefAccount"

    const-string v13, "user_passwd : "

    invoke-static {v12, v13}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v12, "id"

    const-string v13, ""

    invoke-virtual {v9, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    const-string v12, "passwd"

    const-string v13, ""

    invoke-virtual {v9, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    const-string v12, "service"

    invoke-virtual {v9, v12, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    const-string v12, "receive_host"

    invoke-virtual {v9, v12, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    const-string v12, "receive_port"

    invoke-virtual {v9, v12, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    const-string v12, "send_host"

    invoke-virtual {v9, v12, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    const-string v12, "send_port"

    invoke-virtual {v9, v12, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    const-string v12, "user_id"

    invoke-virtual {v9, v12, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    const-string v12, "user_passwd"

    invoke-virtual {v9, v12, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 94
    .end local v2           #recv_host:Ljava/lang/String;
    .end local v3           #recv_port:Ljava/lang/String;
    .end local v4           #recv_uri:Ljava/net/URI;
    .end local v5           #scheme:Ljava/lang/String;
    .end local v6           #send_host:Ljava/lang/String;
    .end local v7           #send_port:Ljava/lang/String;
    .end local v8           #send_uri:Ljava/net/URI;
    .end local v10           #user_id:Ljava/lang/String;
    .end local v11           #user_passwd:Ljava/lang/String;
    :catch_0
    move-exception v12

    move-object v1, v12

    .line 95
    .local v1, e:Ljava/net/URISyntaxException;
    invoke-virtual {v1}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto/16 :goto_1

    .line 70
    .end local v1           #e:Ljava/net/URISyntaxException;
    .restart local v2       #recv_host:Ljava/lang/String;
    .restart local v4       #recv_uri:Ljava/net/URI;
    .restart local v5       #scheme:Ljava/lang/String;
    .restart local v8       #send_uri:Ljava/net/URI;
    .restart local v10       #user_id:Ljava/lang/String;
    .restart local v11       #user_passwd:Ljava/lang/String;
    :cond_1
    :try_start_1
    const-string v12, "pop+ssl"

    move-object v3, v12

    goto/16 :goto_2

    .line 72
    .restart local v3       #recv_port:Ljava/lang/String;
    .restart local v6       #send_host:Ljava/lang/String;
    :cond_2
    const-string v12, "smtp+ssl"
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v7, v12

    goto/16 :goto_3
.end method

.method private onSetDefaultAccount(Landroid/content/Intent;)V
    .locals 32
    .parameter "intent"

    .prologue
    .line 119
    invoke-direct/range {p0 .. p0}, Lcom/android/email/service/DefaultAccountService;->getCarrierAccount()Lcom/android/email/Account;

    move-result-object v20

    .line 122
    .local v20, mAccount:Lcom/android/email/Account;
    const-string v5, "provider_id"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 123
    .local v22, provider_id:Ljava/lang/String;
    const-string v5, "user_id"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 124
    .local v18, email:Ljava/lang/String;
    const-string v5, "user_passwd"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 126
    .local v21, passwd:Ljava/lang/String;
    const-string v5, "service"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 127
    .local v4, type:Ljava/lang/String;
    const-string v5, "receive_host"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 128
    .local v23, recv_addr:Ljava/lang/String;
    const-string v5, "receive_port"

    const/4 v6, -0x1

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 129
    .local v7, recv_port:I
    const-string v5, "receive_security"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 131
    .local v24, recv_security:Ljava/lang/String;
    const-string v5, "user_id"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 132
    .local v30, user_name:Ljava/lang/String;
    const-string v5, "user_passwd"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 134
    .local v31, user_passwd:Ljava/lang/String;
    const-string v5, "send_host"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 135
    .local v25, send_addr:Ljava/lang/String;
    const-string v5, "send_port"

    const/4 v6, -0x1

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 136
    .local v12, send_port:I
    const-string v5, "send_from"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 137
    .local v27, send_from:Ljava/lang/String;
    const-string v5, "send_security"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 138
    .local v28, send_security:Ljava/lang/String;
    const-string v5, "send_auth"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 140
    .local v26, send_auth:Ljava/lang/String;
    const-string v5, ">>> DefAccount"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "provider_id : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const-string v5, ">>> DefAccount"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "user_id : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const-string v5, ">>> DefAccount"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "user_passwd : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const-string v5, ">>> DefAccount"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "service : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const-string v5, ">>> DefAccount"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "receive_host : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string v5, ">>> DefAccount"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "receive_port : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const-string v5, ">>> DefAccount"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "recv_security : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string v5, ">>> DefAccount"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "send_host : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const-string v5, ">>> DefAccount"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "send_port : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const-string v5, ">>> DefAccount"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "send_from : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-string v5, ">>> DefAccount"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "send_security : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const-string v5, ">>> DefAccount"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "send_auth : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    if-nez v20, :cond_0

    .line 154
    new-instance v20, Lcom/android/email/Account;

    .end local v20           #mAccount:Lcom/android/email/Account;
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/email/Account;-><init>(Landroid/content/Context;)V

    .line 155
    .restart local v20       #mAccount:Lcom/android/email/Account;
    invoke-static/range {p0 .. p0}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v5

    invoke-virtual/range {v20 .. v20}, Lcom/android/email/Account;->getUuid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/email/Preferences;->setCarrierAccountId(Ljava/lang/String;)V

    .line 158
    :cond_0
    if-eqz v23, :cond_b

    const-string v5, ""

    move-object/from16 v0, v23

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 160
    const-string v5, ""

    move-object/from16 v0, v18

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 162
    const-string v5, ">>> DefAccount"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "email : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string v29, ""

    .line 164
    .local v29, user:Ljava/lang/String;
    const-string v16, ""

    .line 165
    .local v16, domain:Ljava/lang/String;
    const-string v5, "@"

    move-object/from16 v0, v18

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 167
    .local v19, emailParts:[Ljava/lang/String;
    const/4 v5, 0x0

    aget-object v5, v19, v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v29

    .line 168
    const-string v5, ""

    move-object/from16 v0, v30

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object/from16 v30, v29

    .line 169
    :cond_1
    const-string v5, ""

    move-object/from16 v0, v31

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object/from16 v31, v21

    .line 171
    :cond_2
    move-object/from16 v0, v19

    array-length v0, v0

    move v5, v0

    const/4 v6, 0x1

    if-le v5, v6, :cond_3

    const-string v5, ""

    move-object/from16 v0, v29

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 172
    const/4 v5, 0x1

    aget-object v5, v19, v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v16

    .line 173
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setEmail(Ljava/lang/String;)V

    .line 175
    :cond_3
    const-string v5, ">>> DefAccount"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "usr : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-string v5, ">>> DefAccount"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "domain : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const v5, 0x7f08003a

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/email/service/DefaultAccountService;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setDraftsFolderName(Ljava/lang/String;)V

    .line 179
    const v5, 0x7f08003b

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/email/service/DefaultAccountService;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setTrashFolderName(Ljava/lang/String;)V

    .line 180
    const v5, 0x7f080039

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/email/service/DefaultAccountService;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setOutboxFolderName(Ljava/lang/String;)V

    .line 181
    const v5, 0x7f08003c

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/email/service/DefaultAccountService;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setSentFolderName(Ljava/lang/String;)V

    .line 183
    const/16 v5, 0xf

    move-object/from16 v0, v20

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setAutomaticCheckIntervalMinutes(I)V

    .line 185
    const/4 v5, -0x1

    if-ne v7, v5, :cond_4

    .line 187
    const-string v5, "pop3"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 189
    const-string v5, "ssl"

    move-object/from16 v0, v24

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    const/16 v5, 0x3e3

    move v7, v5

    .line 198
    :cond_4
    :goto_0
    :try_start_0
    new-instance v3, Ljava/net/URI;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v5

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v3 .. v10}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    .local v3, uri:Ljava/net/URI;
    const-string v5, ">>> DefAccount"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "1. uri recv : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    invoke-virtual {v3}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setStoreUri(Ljava/lang/String;)V

    .line 211
    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setDescription(Ljava/lang/String;)V

    .line 212
    move-object/from16 v0, v20

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setName(Ljava/lang/String;)V

    .line 213
    move-object/from16 v0, v20

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setPasswd(Ljava/lang/String;)V

    .line 214
    const/4 v5, 0x1

    move-object/from16 v0, v20

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setNotifyNewMail(Z)V

    .line 215
    const-string v5, "ssl"

    move-object/from16 v0, v24

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_a

    const/4 v5, 0x1

    :goto_1
    move-object/from16 v0, v20

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setSecurityFlags(I)V

    .line 217
    invoke-virtual/range {v20 .. v20}, Lcom/android/email/Account;->getSendAddr()Ljava/lang/String;

    move-result-object v25

    .line 218
    invoke-virtual/range {v20 .. v20}, Lcom/android/email/Account;->getSendPort()I

    move-result v12

    .line 219
    invoke-virtual/range {v20 .. v20}, Lcom/android/email/Account;->getSecurityAuth()Ljava/lang/String;

    move-result-object v26

    .line 242
    .end local v3           #uri:Ljava/net/URI;
    .end local v16           #domain:Ljava/lang/String;
    .end local v19           #emailParts:[Ljava/lang/String;
    .end local v29           #user:Ljava/lang/String;
    :cond_5
    :goto_2
    if-eqz v25, :cond_6

    const-string v5, ""

    move-object/from16 v0, v25

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 245
    :try_start_1
    new-instance v3, Ljava/net/URI;

    const-string v9, "smtp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v5

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v8, v3

    invoke-direct/range {v8 .. v15}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    .line 255
    .restart local v3       #uri:Ljava/net/URI;
    const-string v5, ">>> DefAccount"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "2. uri send : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    invoke-virtual {v3}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setSenderUri(Ljava/lang/String;)V

    .line 258
    .end local v3           #uri:Ljava/net/URI;
    :cond_6
    invoke-static/range {p0 .. p0}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v5

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->save(Lcom/android/email/Preferences;)V

    .line 259
    const/4 v5, 0x1

    invoke-static {v5}, Lcom/android/email/Email;->setNotifyUiAccountsChanged(Z)V

    .line 260
    :goto_3
    return-void

    .line 189
    .restart local v16       #domain:Ljava/lang/String;
    .restart local v19       #emailParts:[Ljava/lang/String;
    .restart local v29       #user:Ljava/lang/String;
    :cond_7
    const/16 v5, 0x6e

    move v7, v5

    goto/16 :goto_0

    .line 193
    :cond_8
    const-string v5, "ssl"

    move-object/from16 v0, v24

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_9

    const/16 v5, 0x3e1

    move v7, v5

    :goto_4
    goto/16 :goto_0

    :cond_9
    const/16 v5, 0x8f

    move v7, v5

    goto :goto_4

    .line 204
    :catch_0
    move-exception v5

    move-object/from16 v17, v5

    .line 205
    .local v17, e:Ljava/net/URISyntaxException;
    invoke-virtual/range {v17 .. v17}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_3

    .line 215
    .end local v17           #e:Ljava/net/URISyntaxException;
    .restart local v3       #uri:Ljava/net/URI;
    :cond_a
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 224
    .end local v3           #uri:Ljava/net/URI;
    .end local v16           #domain:Ljava/lang/String;
    .end local v19           #emailParts:[Ljava/lang/String;
    .end local v29           #user:Ljava/lang/String;
    :cond_b
    invoke-virtual/range {v20 .. v20}, Lcom/android/email/Account;->getName()Ljava/lang/String;

    move-result-object v30

    .line 225
    const-string v5, ">>> DefAccount"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "send : user_name "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    invoke-virtual/range {v20 .. v20}, Lcom/android/email/Account;->getPasswd()Ljava/lang/String;

    move-result-object v31

    .line 227
    const-string v5, ">>> DefAccount"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "send : user_passwd "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    const/4 v5, 0x1

    move-object/from16 v0, v20

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setNotifyNewMail(Z)V

    .line 229
    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setSendAddr(Ljava/lang/String;)V

    .line 230
    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setSecurityAuth(Ljava/lang/String;)V

    .line 231
    invoke-virtual/range {v20 .. v20}, Lcom/android/email/Account;->getEmail()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_c

    if-eqz v27, :cond_c

    const-string v5, ""

    move-object/from16 v0, v27

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    .line 233
    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setEmail(Ljava/lang/String;)V

    .line 235
    :cond_c
    const/4 v5, -0x1

    if-ne v12, v5, :cond_5

    .line 237
    const-string v5, "ssl"

    move-object/from16 v0, v28

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_d

    const/16 v5, 0x1d1

    move v12, v5

    .line 238
    :goto_5
    move-object/from16 v0, v20

    move v1, v12

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setSendPort(I)V

    goto/16 :goto_2

    .line 237
    :cond_d
    const/16 v5, 0x19

    move v12, v5

    goto :goto_5

    .line 251
    :catch_1
    move-exception v5

    move-object/from16 v17, v5

    .line 252
    .restart local v17       #e:Ljava/net/URISyntaxException;
    invoke-virtual/range {v17 .. v17}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto/16 :goto_3
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 264
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 3
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 102
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 103
    if-eqz p1, :cond_0

    .line 105
    const-string v0, ">>> DefAccount"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "intent : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Get"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    invoke-direct {p0}, Lcom/android/email/service/DefaultAccountService;->onGetDefaultAccount()V

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Set"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    invoke-direct {p0, p1}, Lcom/android/email/service/DefaultAccountService;->onSetDefaultAccount(Landroid/content/Intent;)V

    goto :goto_0
.end method
