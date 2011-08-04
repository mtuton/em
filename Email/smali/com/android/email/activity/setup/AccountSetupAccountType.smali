.class public Lcom/android/email/activity/setup/AccountSetupAccountType;
.super Landroid/app/Activity;
.source "AccountSetupAccountType.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mAccount:Lcom/android/email/provider/EmailContent$Account;

.field private mAllowAutoDiscover:Z

.field private mMakeDefault:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static actionSelectAccountType(Landroid/app/Activity;Lcom/android/email/provider/EmailContent$Account;ZZZZ)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 69
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/setup/AccountSetupAccountType;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 70
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 71
    const-string v1, "makeDefault"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 72
    const-string v1, "easFlow"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 73
    const-string v1, "allowAutoDiscover"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 74
    const-string v1, "com.android.email.extra.setwiz_flow"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 75
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 76
    return-void
.end method

.method private isExchangeAvailable()Z
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 220
    :try_start_0
    new-instance v9, Ljava/net/URI;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupAccountType;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v1, p0}, Lcom/android/email/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v9, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 221
    .local v9, uri:Ljava/net/URI;
    new-instance v0, Ljava/net/URI;

    const-string v1, "eas"

    invoke-virtual {v9}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9}, Ljava/net/URI;->getPort()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    .end local v9           #uri:Ljava/net/URI;
    .local v0, uri:Ljava/net/URI;
    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/android/email/mail/Store$StoreInfo;->getStoreInfo(Ljava/lang/String;Landroid/content/Context;)Lcom/android/email/mail/Store$StoreInfo;

    move-result-object v8

    .line 223
    .local v8, storeInfo:Lcom/android/email/mail/Store$StoreInfo;
    if-eqz v8, :cond_0

    invoke-virtual {p0, v8}, Lcom/android/email/activity/setup/AccountSetupAccountType;->checkAccountInstanceLimit(Lcom/android/email/mail/Store$StoreInfo;)Z
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 227
    .end local v0           #uri:Ljava/net/URI;
    .end local v8           #storeInfo:Lcom/android/email/mail/Store$StoreInfo;
    :goto_0
    return v1

    .restart local v0       #uri:Ljava/net/URI;
    .restart local v8       #storeInfo:Lcom/android/email/mail/Store$StoreInfo;
    :cond_0
    move v1, v10

    .line 223
    goto :goto_0

    .line 224
    .end local v0           #uri:Ljava/net/URI;
    .end local v8           #storeInfo:Lcom/android/email/mail/Store$StoreInfo;
    :catch_0
    move-exception v1

    move v1, v10

    .line 227
    goto :goto_0
.end method

.method private onExchange(Z)V
    .locals 12
    .parameter "easFlowMode"

    .prologue
    const/4 v11, 0x0

    const/4 v10, -0x2

    .line 169
    :try_start_0
    new-instance v8, Ljava/net/URI;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupAccountType;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v2, p0}, Lcom/android/email/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v8, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 170
    .local v8, uri:Ljava/net/URI;
    new-instance v0, Ljava/net/URI;

    const-string v1, "eas+ssl+"

    invoke-virtual {v8}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Ljava/net/URI;->getPort()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    .end local v8           #uri:Ljava/net/URI;
    .local v0, uri:Ljava/net/URI;
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupAccountType;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Lcom/android/email/provider/EmailContent$Account;->setStoreUri(Landroid/content/Context;Ljava/lang/String;)V

    .line 173
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupAccountType;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Lcom/android/email/provider/EmailContent$Account;->setSenderUri(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupAccountType;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/email/provider/EmailContent$Account;->setDeletePolicy(I)V

    .line 182
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupAccountType;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v2, v10}, Lcom/android/email/provider/EmailContent$Account;->setSyncInterval(I)V

    .line 183
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupAccountType;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/email/provider/EmailContent$Account;->setSyncLookback(I)V

    .line 185
    new-instance v1, Lcom/android/exchange/SyncScheduleData;

    const/16 v2, 0x1e0

    const/16 v3, 0x3fc

    const/16 v4, 0x3e

    move v5, v10

    move v6, v10

    move v7, v11

    invoke-direct/range {v1 .. v7}, Lcom/android/exchange/SyncScheduleData;-><init>(IIIIII)V

    .line 192
    .local v1, syncData:Lcom/android/exchange/SyncScheduleData;
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupAccountType;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v2, v1}, Lcom/android/email/provider/EmailContent$Account;->setSyncScheduleData(Lcom/android/exchange/SyncScheduleData;)V

    .line 196
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupAccountType;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/android/email/provider/EmailContent$Account;->setCalendarSyncLookback(I)Z

    .line 204
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupAccountType;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.android.email.extra.setwiz_flow"

    invoke-virtual {v2, v3, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    .line 205
    .local v7, mSetWizMode:Z
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupAccountType;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-boolean v4, p0, Lcom/android/email/activity/setup/AccountSetupAccountType;->mMakeDefault:Z

    iget-boolean v6, p0, Lcom/android/email/activity/setup/AccountSetupAccountType;->mAllowAutoDiscover:Z

    move-object v2, p0

    move v5, p1

    invoke-static/range {v2 .. v7}, Lcom/android/email/activity/setup/AccountSetupExchange;->actionIncomingSettings(Landroid/app/Activity;Lcom/android/email/provider/EmailContent$Account;ZZZZ)V

    .line 208
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupAccountType;->finish()V

    .line 209
    return-void

    .line 174
    .end local v0           #uri:Ljava/net/URI;
    .end local v1           #syncData:Lcom/android/exchange/SyncScheduleData;
    .end local v7           #mSetWizMode:Z
    :catch_0
    move-exception v2

    move-object v9, v2

    .line 178
    .local v9, use:Ljava/net/URISyntaxException;
    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2, v9}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private onImap()V
    .locals 11

    .prologue
    .line 139
    :try_start_0
    new-instance v9, Ljava/net/URI;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupAccountType;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v1, p0}, Lcom/android/email/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v9, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 140
    .local v9, uri:Ljava/net/URI;
    new-instance v0, Ljava/net/URI;

    const-string v1, "imap"

    invoke-virtual {v9}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9}, Ljava/net/URI;->getPort()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    .end local v9           #uri:Ljava/net/URI;
    .local v0, uri:Ljava/net/URI;
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupAccountType;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcom/android/email/provider/EmailContent$Account;->setStoreUri(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupAccountType;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/email/provider/EmailContent$Account;->setDeletePolicy(I)V

    .line 155
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupAccountType;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.android.email.extra.setwiz_flow"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    .line 156
    .local v8, mSetWizMode:Z
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupAccountType;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-boolean v2, p0, Lcom/android/email/activity/setup/AccountSetupAccountType;->mMakeDefault:Z

    invoke-static {p0, v1, v2, v8}, Lcom/android/email/activity/setup/AccountSetupIncoming;->actionIncomingSettings(Landroid/app/Activity;Lcom/android/email/provider/EmailContent$Account;ZZ)V

    .line 159
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupAccountType;->finish()V

    .line 160
    return-void

    .line 142
    .end local v0           #uri:Ljava/net/URI;
    .end local v8           #mSetWizMode:Z
    :catch_0
    move-exception v1

    move-object v10, v1

    .line 146
    .local v10, use:Ljava/net/URISyntaxException;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v10}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private onPop()V
    .locals 11

    .prologue
    .line 114
    :try_start_0
    new-instance v9, Ljava/net/URI;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupAccountType;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v1, p0}, Lcom/android/email/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v9, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 115
    .local v9, uri:Ljava/net/URI;
    new-instance v0, Ljava/net/URI;

    const-string v1, "pop3"

    invoke-virtual {v9}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9}, Ljava/net/URI;->getPort()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .end local v9           #uri:Ljava/net/URI;
    .local v0, uri:Ljava/net/URI;
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupAccountType;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcom/android/email/provider/EmailContent$Account;->setStoreUri(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupAccountType;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.android.email.extra.setwiz_flow"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    .line 128
    .local v8, mSetWizMode:Z
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupAccountType;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-boolean v2, p0, Lcom/android/email/activity/setup/AccountSetupAccountType;->mMakeDefault:Z

    invoke-static {p0, v1, v2, v8}, Lcom/android/email/activity/setup/AccountSetupIncoming;->actionIncomingSettings(Landroid/app/Activity;Lcom/android/email/provider/EmailContent$Account;ZZ)V

    .line 130
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupAccountType;->finish()V

    .line 131
    return-void

    .line 117
    .end local v0           #uri:Ljava/net/URI;
    .end local v8           #mSetWizMode:Z
    :catch_0
    move-exception v1

    move-object v10, v1

    .line 121
    .local v10, use:Ljava/net/URISyntaxException;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v10}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method checkAccountInstanceLimit(Lcom/android/email/mail/Store$StoreInfo;)Z
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 237
    iget v0, p1, Lcom/android/email/mail/Store$StoreInfo;->mAccountInstanceLimit:I

    if-gez v0, :cond_0

    move v0, v8

    .line 263
    :goto_0
    return v0

    .line 245
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupAccountType;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/email/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/email/provider/EmailContent$Account;->CONTENT_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    move v2, v7

    .line 249
    :goto_1
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 250
    const-class v0, Lcom/android/email/provider/EmailContent$Account;

    invoke-static {v1, v0}, Lcom/android/email/provider/EmailContent;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/email/provider/EmailContent;

    move-result-object v0

    check-cast v0, Lcom/android/email/provider/EmailContent$Account;

    .line 251
    invoke-virtual {v0, p0}, Lcom/android/email/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 252
    if-eqz v0, :cond_5

    iget-object v3, p1, Lcom/android/email/mail/Store$StoreInfo;->mScheme:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-eqz v0, :cond_5

    .line 253
    add-int/lit8 v0, v2, 0x1

    :goto_2
    move v2, v0

    .line 255
    goto :goto_1

    .line 257
    :cond_1
    if-eqz v1, :cond_2

    .line 258
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 263
    :cond_2
    iget v0, p1, Lcom/android/email/mail/Store$StoreInfo;->mAccountInstanceLimit:I

    if-ge v2, v0, :cond_4

    move v0, v8

    goto :goto_0

    .line 257
    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_3
    if-eqz v1, :cond_3

    .line 258
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    :cond_4
    move v0, v7

    .line 263
    goto :goto_0

    .line 257
    :catchall_1
    move-exception v0

    goto :goto_3

    :cond_5
    move v0, v2

    goto :goto_2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 267
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 278
    :goto_0
    return-void

    .line 269
    :pswitch_0
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupAccountType;->onPop()V

    goto :goto_0

    .line 272
    :pswitch_1
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupAccountType;->onImap()V

    goto :goto_0

    .line 275
    :pswitch_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/email/activity/setup/AccountSetupAccountType;->onExchange(Z)V

    goto :goto_0

    .line 267
    nop

    :pswitch_data_0
    .packed-switch 0x7f070016
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 80
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 82
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupAccountType;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 83
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "account"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/android/email/provider/EmailContent$Account;

    iput-object v3, p0, Lcom/android/email/activity/setup/AccountSetupAccountType;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    .line 84
    const-string v3, "makeDefault"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/email/activity/setup/AccountSetupAccountType;->mMakeDefault:Z

    .line 85
    const-string v3, "easFlow"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 86
    .local v0, easFlowMode:Z
    const-string v3, "allowAutoDiscover"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/email/activity/setup/AccountSetupAccountType;->mAllowAutoDiscover:Z

    .line 89
    if-eqz v0, :cond_1

    .line 90
    invoke-direct {p0, v5}, Lcom/android/email/activity/setup/AccountSetupAccountType;->onExchange(Z)V

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    const v3, 0x7f030003

    invoke-virtual {p0, v3}, Lcom/android/email/activity/setup/AccountSetupAccountType;->setContentView(I)V

    .line 96
    const v3, 0x7f070016

    invoke-virtual {p0, v3}, Lcom/android/email/activity/setup/AccountSetupAccountType;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    const v3, 0x7f070018

    invoke-virtual {p0, v3}, Lcom/android/email/activity/setup/AccountSetupAccountType;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    const v3, 0x7f070017

    invoke-virtual {p0, v3}, Lcom/android/email/activity/setup/AccountSetupAccountType;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 99
    .local v1, exchangeButton:Landroid/widget/Button;
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    invoke-virtual {v1, v5}, Landroid/widget/Button;->setSelected(Z)V

    .line 102
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupAccountType;->isExchangeAvailable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 103
    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 104
    invoke-static {p0}, Lcom/android/email/VendorPolicyLoader;->getInstance(Landroid/content/Context;)Lcom/android/email/VendorPolicyLoader;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/email/VendorPolicyLoader;->useAlternateExchangeStrings()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 105
    const v3, 0x7f08009d

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method
