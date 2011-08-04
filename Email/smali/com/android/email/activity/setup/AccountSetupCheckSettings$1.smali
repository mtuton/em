.class Lcom/android/email/activity/setup/AccountSetupCheckSettings$1;
.super Ljava/lang/Thread;
.source "AccountSetupCheckSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountSetupCheckSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSetupCheckSettings;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSetupCheckSettings;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 181
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupCheckSettings$1;->this$0:Lcom/android/email/activity/setup/AccountSetupCheckSettings;

    iput-object p2, p0, Lcom/android/email/activity/setup/AccountSetupCheckSettings$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 21

    .prologue
    .line 184
    const/16 v4, 0xa

    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    .line 186
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupCheckSettings$1;->this$0:Lcom/android/email/activity/setup/AccountSetupCheckSettings;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/email/activity/setup/AccountSetupCheckSettings;->access$000(Lcom/android/email/activity/setup/AccountSetupCheckSettings;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 382
    :cond_0
    :goto_0
    return-void

    .line 189
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupCheckSettings$1;->this$0:Lcom/android/email/activity/setup/AccountSetupCheckSettings;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/email/activity/setup/AccountSetupCheckSettings;->access$100(Lcom/android/email/activity/setup/AccountSetupCheckSettings;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupCheckSettings$1;->this$0:Lcom/android/email/activity/setup/AccountSetupCheckSettings;

    move-object v4, v0

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/android/email/activity/setup/AccountSetupCheckSettings;->setResult(I)V

    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupCheckSettings$1;->this$0:Lcom/android/email/activity/setup/AccountSetupCheckSettings;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/email/activity/setup/AccountSetupCheckSettings;->finish()V
    :try_end_0
    .catch Lcom/android/email/mail/DeviceAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/email/mail/AuthenticationFailedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/email/mail/CertificateValidationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/android/email/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 313
    :catch_0
    move-exception v4

    move-object v11, v4

    .line 314
    .local v11, e:Lcom/android/email/mail/DeviceAccessException;
    invoke-virtual {v11}, Lcom/android/email/mail/DeviceAccessException;->getMessage()Ljava/lang/String;

    move-result-object v17

    .line 315
    .local v17, message:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupCheckSettings$1;->this$0:Lcom/android/email/activity/setup/AccountSetupCheckSettings;

    move-object v4, v0

    const/4 v5, 0x0

    const v6, 0x7f0802cb

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v11}, Lcom/android/email/mail/DeviceAccessException;->getMessage()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v4, v5, v6, v7}, Lcom/android/email/activity/setup/AccountSetupCheckSettings;->access$800(Lcom/android/email/activity/setup/AccountSetupCheckSettings;ZI[Ljava/lang/Object;)V

    goto :goto_0

    .line 198
    .end local v11           #e:Lcom/android/email/mail/DeviceAccessException;
    .end local v17           #message:Ljava/lang/String;
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupCheckSettings$1;->this$0:Lcom/android/email/activity/setup/AccountSetupCheckSettings;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/email/activity/setup/AccountSetupCheckSettings;->access$200(Lcom/android/email/activity/setup/AccountSetupCheckSettings;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupCheckSettings$1;->val$intent:Landroid/content/Intent;

    move-object v4, v0

    const-string v5, "userName"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 200
    .local v5, userName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupCheckSettings$1;->val$intent:Landroid/content/Intent;

    move-object v4, v0

    const-string v6, "password"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 203
    .local v6, password:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupCheckSettings$1;->val$intent:Landroid/content/Intent;

    move-object v4, v0

    const-string v7, "domain"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 204
    .local v7, domain:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupCheckSettings$1;->val$intent:Landroid/content/Intent;

    move-object v4, v0

    const-string v8, "trustCert"

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    .line 207
    .local v8, bTrustCert:Z
    const-string v4, "Email"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Begin auto-discover for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupCheckSettings$1;->this$0:Lcom/android/email/activity/setup/AccountSetupCheckSettings;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/email/activity/setup/AccountSetupCheckSettings;->access$300(Lcom/android/email/activity/setup/AccountSetupCheckSettings;)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupCheckSettings$1;->this$0:Lcom/android/email/activity/setup/AccountSetupCheckSettings;

    move-object v9, v0

    invoke-virtual {v4, v9}, Lcom/android/email/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupCheckSettings$1;->this$0:Lcom/android/email/activity/setup/AccountSetupCheckSettings;

    move-object v9, v0

    invoke-virtual {v9}, Lcom/android/email/activity/setup/AccountSetupCheckSettings;->getApplication()Landroid/app/Application;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v4, v9, v10}, Lcom/android/email/mail/Store;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/Store;

    move-result-object v3

    .line 213
    .local v3, store:Lcom/android/email/mail/Store;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupCheckSettings$1;->this$0:Lcom/android/email/activity/setup/AccountSetupCheckSettings;

    move-object v4, v0

    invoke-virtual/range {v3 .. v8}, Lcom/android/email/mail/Store;->autoDiscover(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v18

    .line 223
    .local v18, result:Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupCheckSettings$1;->this$0:Lcom/android/email/activity/setup/AccountSetupCheckSettings;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/email/activity/setup/AccountSetupCheckSettings;->access$100(Lcom/android/email/activity/setup/AccountSetupCheckSettings;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupCheckSettings$1;->this$0:Lcom/android/email/activity/setup/AccountSetupCheckSettings;

    move-object v4, v0

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/android/email/activity/setup/AccountSetupCheckSettings;->setResult(I)V

    .line 225
    .end local v5           #userName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupCheckSettings$1;->this$0:Lcom/android/email/activity/setup/AccountSetupCheckSettings;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/email/activity/setup/AccountSetupCheckSettings;->finish()V
    :try_end_1
    .catch Lcom/android/email/mail/DeviceAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/email/mail/AuthenticationFailedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/android/email/mail/CertificateValidationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/android/email/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_3

    goto/16 :goto_0

    .line 318
    .end local v3           #store:Lcom/android/email/mail/Store;
    .end local v6           #password:Ljava/lang/String;
    .end local v7           #domain:Ljava/lang/String;
    .end local v8           #bTrustCert:Z
    .end local v18           #result:Landroid/os/Bundle;
    :catch_1
    move-exception v4

    move-object v9, v4

    .line 321
    .local v9, afe:Lcom/android/email/mail/AuthenticationFailedException;
    invoke-virtual {v9}, Lcom/android/email/mail/AuthenticationFailedException;->getMessage()Ljava/lang/String;

    move-result-object v17

    .line 323
    .restart local v17       #message:Ljava/lang/String;
    instance-of v4, v9, Lcom/android/email/activity/setup/AccountSetupCheckSettings$AutoDiscoverAuthenticationException;

    if-eqz v4, :cond_b

    .line 325
    const v14, 0x7f0800d2

    .line 334
    .local v14, id:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupCheckSettings$1;->this$0:Lcom/android/email/activity/setup/AccountSetupCheckSettings;

    move-object v4, v0

    instance-of v5, v9, Lcom/android/email/activity/setup/AccountSetupCheckSettings$AutoDiscoverAuthenticationException;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v17, v6, v7

    invoke-static {v4, v5, v14, v6}, Lcom/android/email/activity/setup/AccountSetupCheckSettings;->access$800(Lcom/android/email/activity/setup/AccountSetupCheckSettings;ZI[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 230
    .end local v9           #afe:Lcom/android/email/mail/AuthenticationFailedException;
    .end local v14           #id:I
    .end local v17           #message:Ljava/lang/String;
    .restart local v3       #store:Lcom/android/email/mail/Store;
    .restart local v5       #userName:Ljava/lang/String;
    .restart local v6       #password:Ljava/lang/String;
    .restart local v7       #domain:Ljava/lang/String;
    .restart local v8       #bTrustCert:Z
    .restart local v18       #result:Landroid/os/Bundle;
    :cond_3
    if-eqz v18, :cond_6

    .line 231
    :try_start_2
    const-string v4, "autodiscover_error_code"

    move-object/from16 v0, v18

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    .line 235
    .local v12, errorCode:I
    const/4 v4, -0x1

    if-eq v12, v4, :cond_5

    .line 237
    const/4 v4, 0x1

    sget v5, Lcom/android/email/activity/setup/AccountSetupCheckSettings;->mAutoDiscoverRetryCount:I

    .end local v5           #userName:Ljava/lang/String;
    if-ne v4, v5, :cond_4

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupCheckSettings$1;->this$0:Lcom/android/email/activity/setup/AccountSetupCheckSettings;

    move-object v4, v0

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/android/email/activity/setup/AccountSetupCheckSettings;->setResult(I)V

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupCheckSettings$1;->this$0:Lcom/android/email/activity/setup/AccountSetupCheckSettings;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/email/activity/setup/AccountSetupCheckSettings;->finish()V
    :try_end_2
    .catch Lcom/android/email/mail/DeviceAccessException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/android/email/mail/AuthenticationFailedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/android/email/mail/CertificateValidationException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/android/email/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_3

    goto/16 :goto_0

    .line 336
    .end local v3           #store:Lcom/android/email/mail/Store;
    .end local v6           #password:Ljava/lang/String;
    .end local v7           #domain:Ljava/lang/String;
    .end local v8           #bTrustCert:Z
    .end local v12           #errorCode:I
    .end local v18           #result:Landroid/os/Bundle;
    :catch_2
    move-exception v4

    move-object v10, v4

    .line 337
    .local v10, cve:Lcom/android/email/mail/CertificateValidationException;
    invoke-virtual {v10}, Lcom/android/email/mail/CertificateValidationException;->getMessage()Ljava/lang/String;

    move-result-object v17

    .line 338
    .restart local v17       #message:Ljava/lang/String;
    if-nez v17, :cond_e

    const v4, 0x7f0800d4

    move v14, v4

    .line 341
    .restart local v14       #id:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupCheckSettings$1;->this$0:Lcom/android/email/activity/setup/AccountSetupCheckSettings;

    move-object v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v17, v6, v7

    invoke-static {v4, v5, v14, v6}, Lcom/android/email/activity/setup/AccountSetupCheckSettings;->access$800(Lcom/android/email/activity/setup/AccountSetupCheckSettings;ZI[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 243
    .end local v10           #cve:Lcom/android/email/mail/CertificateValidationException;
    .end local v14           #id:I
    .end local v17           #message:Ljava/lang/String;
    .restart local v3       #store:Lcom/android/email/mail/Store;
    .restart local v6       #password:Ljava/lang/String;
    .restart local v7       #domain:Ljava/lang/String;
    .restart local v8       #bTrustCert:Z
    .restart local v12       #errorCode:I
    .restart local v18       #result:Landroid/os/Bundle;
    :cond_4
    const/4 v4, 0x2

    :try_start_3
    sget v5, Lcom/android/email/activity/setup/AccountSetupCheckSettings;->mAutoDiscoverRetryCount:I

    if-ne v4, v5, :cond_5

    .line 248
    new-instance v4, Lcom/android/email/activity/setup/AccountSetupCheckSettings$AutoDiscoverAuthenticationException;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupCheckSettings$1;->this$0:Lcom/android/email/activity/setup/AccountSetupCheckSettings;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/android/email/activity/setup/AccountSetupCheckSettings$AutoDiscoverAuthenticationException;-><init>(Lcom/android/email/activity/setup/AccountSetupCheckSettings;Ljava/lang/String;)V

    .end local v6           #password:Ljava/lang/String;
    throw v4
    :try_end_3
    .catch Lcom/android/email/mail/DeviceAccessException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/android/email/mail/AuthenticationFailedException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/android/email/mail/CertificateValidationException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/android/email/mail/MessagingException; {:try_start_3 .. :try_end_3} :catch_3

    .line 342
    .end local v3           #store:Lcom/android/email/mail/Store;
    .end local v7           #domain:Ljava/lang/String;
    .end local v8           #bTrustCert:Z
    .end local v12           #errorCode:I
    .end local v18           #result:Landroid/os/Bundle;
    :catch_3
    move-exception v4

    move-object/from16 v16, v4

    .line 343
    .local v16, me:Lcom/android/email/mail/MessagingException;
    invoke-virtual/range {v16 .. v16}, Lcom/android/email/mail/MessagingException;->getExceptionType()I

    move-result v13

    .line 345
    .local v13, exceptionType:I
    const/4 v4, 0x7

    if-ne v13, v4, :cond_f

    .line 346
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupCheckSettings$1;->this$0:Lcom/android/email/activity/setup/AccountSetupCheckSettings;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/email/activity/setup/AccountSetupCheckSettings;->access$900(Lcom/android/email/activity/setup/AccountSetupCheckSettings;)V

    goto/16 :goto_0

    .line 255
    .end local v13           #exceptionType:I
    .end local v16           #me:Lcom/android/email/mail/MessagingException;
    .restart local v3       #store:Lcom/android/email/mail/Store;
    .restart local v6       #password:Ljava/lang/String;
    .restart local v7       #domain:Ljava/lang/String;
    .restart local v8       #bTrustCert:Z
    .restart local v12       #errorCode:I
    .restart local v18       #result:Landroid/os/Bundle;
    :cond_5
    :try_start_4
    new-instance v19, Landroid/content/Intent;

    invoke-direct/range {v19 .. v19}, Landroid/content/Intent;-><init>()V

    .line 256
    .local v19, resultIntent:Landroid/content/Intent;
    const-string v4, "HostAuth"

    const-string v5, "autodiscover_host_auth"

    move-object/from16 v0, v18

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    move-object/from16 v0, v19

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupCheckSettings$1;->this$0:Lcom/android/email/activity/setup/AccountSetupCheckSettings;

    move-object v4, v0

    const/4 v5, -0x1

    move-object v0, v4

    move v1, v5

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/setup/AccountSetupCheckSettings;->setResult(ILandroid/content/Intent;)V

    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupCheckSettings$1;->this$0:Lcom/android/email/activity/setup/AccountSetupCheckSettings;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/email/activity/setup/AccountSetupCheckSettings;->finish()V

    goto/16 :goto_0

    .line 264
    .end local v3           #store:Lcom/android/email/mail/Store;
    .end local v6           #password:Ljava/lang/String;
    .end local v7           #domain:Ljava/lang/String;
    .end local v8           #bTrustCert:Z
    .end local v12           #errorCode:I
    .end local v18           #result:Landroid/os/Bundle;
    .end local v19           #resultIntent:Landroid/content/Intent;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupCheckSettings$1;->this$0:Lcom/android/email/activity/setup/AccountSetupCheckSettings;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/email/activity/setup/AccountSetupCheckSettings;->access$000(Lcom/android/email/activity/setup/AccountSetupCheckSettings;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupCheckSettings$1;->this$0:Lcom/android/email/activity/setup/AccountSetupCheckSettings;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/email/activity/setup/AccountSetupCheckSettings;->access$100(Lcom/android/email/activity/setup/AccountSetupCheckSettings;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupCheckSettings$1;->this$0:Lcom/android/email/activity/setup/AccountSetupCheckSettings;

    move-object v4, v0

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/android/email/activity/setup/AccountSetupCheckSettings;->setResult(I)V

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupCheckSettings$1;->this$0:Lcom/android/email/activity/setup/AccountSetupCheckSettings;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/email/activity/setup/AccountSetupCheckSettings;->finish()V

    goto/16 :goto_0

    .line 274
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupCheckSettings$1;->this$0:Lcom/android/email/activity/setup/AccountSetupCheckSettings;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/email/activity/setup/AccountSetupCheckSettings;->access$400(Lcom/android/email/activity/setup/AccountSetupCheckSettings;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 275
    const-string v4, "Email"

    const-string v5, "Begin check of incoming email settings"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupCheckSettings$1;->this$0:Lcom/android/email/activity/setup/AccountSetupCheckSettings;

    move-object v4, v0

    const v5, 0x7f080091

    invoke-static {v4, v5}, Lcom/android/email/activity/setup/AccountSetupCheckSettings;->access$500(Lcom/android/email/activity/setup/AccountSetupCheckSettings;I)V

    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupCheckSettings$1;->this$0:Lcom/android/email/activity/setup/AccountSetupCheckSettings;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupCheckSettings$1;->this$0:Lcom/android/email/activity/setup/AccountSetupCheckSettings;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupCheckSettings$1;->this$0:Lcom/android/email/activity/setup/AccountSetupCheckSettings;

    move-object v6, v0

    invoke-static {v6}, Lcom/android/email/activity/setup/AccountSetupCheckSettings;->access$300(Lcom/android/email/activity/setup/AccountSetupCheckSettings;)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/android/email/activity/setup/AccountSetupCheckSettings;->access$600(Lcom/android/email/activity/setup/AccountSetupCheckSettings;Landroid/content/Context;Lcom/android/email/provider/EmailContent$Account;)V

    .line 280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupCheckSettings$1;->this$0:Lcom/android/email/activity/setup/AccountSetupCheckSettings;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/email/activity/setup/AccountSetupCheckSettings;->access$300(Lcom/android/email/activity/setup/AccountSetupCheckSettings;)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupCheckSettings$1;->this$0:Lcom/android/email/activity/setup/AccountSetupCheckSettings;

    move-object v5, v0

    invoke-virtual {v4, v5}, Lcom/android/email/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupCheckSettings$1;->this$0:Lcom/android/email/activity/setup/AccountSetupCheckSettings;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/email/activity/setup/AccountSetupCheckSettings;->getApplication()Landroid/app/Application;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/android/email/mail/Store;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/Store;

    move-result-object v3

    .line 283
    .restart local v3       #store:Lcom/android/email/mail/Store;
    invoke-virtual {v3}, Lcom/android/email/mail/Store;->checkSettings()V

    .line 285
    .end local v3           #store:Lcom/android/email/mail/Store;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupCheckSettings$1;->this$0:Lcom/android/email/activity/setup/AccountSetupCheckSettings;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/email/activity/setup/AccountSetupCheckSettings;->access$000(Lcom/android/email/activity/setup/AccountSetupCheckSettings;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupCheckSettings$1;->this$0:Lcom/android/email/activity/setup/AccountSetupCheckSettings;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/email/activity/setup/AccountSetupCheckSettings;->access$100(Lcom/android/email/activity/setup/AccountSetupCheckSettings;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupCheckSettings$1;->this$0:Lcom/android/email/activity/setup/AccountSetupCheckSettings;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/email/activity/setup/AccountSetupCheckSettings;->finish()V

    goto/16 :goto_0

    .line 292
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupCheckSettings$1;->this$0:Lcom/android/email/activity/setup/AccountSetupCheckSettings;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/email/activity/setup/AccountSetupCheckSettings;->access$700(Lcom/android/email/activity/setup/AccountSetupCheckSettings;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 293
    const-string v4, "Email"

    const-string v5, "Begin check of outgoing email settings"

    invoke-static {v4, v5}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupCheckSettings$1;->this$0:Lcom/android/email/activity/setup/AccountSetupCheckSettings;

    move-object v4, v0

    const v5, 0x7f080092

    invoke-static {v4, v5}, Lcom/android/email/activity/setup/AccountSetupCheckSettings;->access$500(Lcom/android/email/activity/setup/AccountSetupCheckSettings;I)V

    .line 295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupCheckSettings$1;->this$0:Lcom/android/email/activity/setup/AccountSetupCheckSettings;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/email/activity/setup/AccountSetupCheckSettings;->getApplication()Landroid/app/Application;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupCheckSettings$1;->this$0:Lcom/android/email/activity/setup/AccountSetupCheckSettings;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/email/activity/setup/AccountSetupCheckSettings;->access$300(Lcom/android/email/activity/setup/AccountSetupCheckSettings;)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupCheckSettings$1;->this$0:Lcom/android/email/activity/setup/AccountSetupCheckSettings;

    move-object v6, v0

    invoke-virtual {v5, v6}, Lcom/android/email/provider/EmailContent$Account;->getSenderUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/mail/Sender;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/android/email/mail/Sender;

    move-result-object v20

    .line 297
    .local v20, sender:Lcom/android/email/mail/Sender;
    invoke-virtual/range {v20 .. v20}, Lcom/android/email/mail/Sender;->close()V

    .line 298
    invoke-virtual/range {v20 .. v20}, Lcom/android/email/mail/Sender;->open()V

    .line 299
    invoke-virtual/range {v20 .. v20}, Lcom/android/email/mail/Sender;->close()V

    .line 301
    .end local v20           #sender:Lcom/android/email/mail/Sender;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupCheckSettings$1;->this$0:Lcom/android/email/activity/setup/AccountSetupCheckSettings;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/email/activity/setup/AccountSetupCheckSettings;->access$000(Lcom/android/email/activity/setup/AccountSetupCheckSettings;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 307
    new-instance v15, Landroid/content/Intent;

    invoke-direct {v15}, Landroid/content/Intent;-><init>()V

    .line 308
    .local v15, intent:Landroid/content/Intent;
    const-string v4, "com.android.email.AccountSetupBasics.account"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupCheckSettings$1;->this$0:Lcom/android/email/activity/setup/AccountSetupCheckSettings;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/email/activity/setup/AccountSetupCheckSettings;->access$300(Lcom/android/email/activity/setup/AccountSetupCheckSettings;)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v5

    invoke-virtual {v15, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupCheckSettings$1;->this$0:Lcom/android/email/activity/setup/AccountSetupCheckSettings;

    move-object v4, v0

    const/4 v5, -0x1

    invoke-virtual {v4, v5, v15}, Lcom/android/email/activity/setup/AccountSetupCheckSettings;->setResult(ILandroid/content/Intent;)V

    .line 311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupCheckSettings$1;->this$0:Lcom/android/email/activity/setup/AccountSetupCheckSettings;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/email/activity/setup/AccountSetupCheckSettings;->finish()V
    :try_end_4
    .catch Lcom/android/email/mail/DeviceAccessException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/android/email/mail/AuthenticationFailedException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/android/email/mail/CertificateValidationException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lcom/android/email/mail/MessagingException; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_0

    .line 329
    .end local v15           #intent:Landroid/content/Intent;
    .restart local v9       #afe:Lcom/android/email/mail/AuthenticationFailedException;
    .restart local v17       #message:Ljava/lang/String;
    :cond_b
    if-eqz v17, :cond_c

    const-string v4, ""

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    :cond_c
    const v4, 0x7f0800d1

    move v14, v4

    .restart local v14       #id:I
    :goto_3
    goto/16 :goto_1

    .end local v14           #id:I
    :cond_d
    const v4, 0x7f0800d3

    move v14, v4

    goto :goto_3

    .line 338
    .end local v9           #afe:Lcom/android/email/mail/AuthenticationFailedException;
    .restart local v10       #cve:Lcom/android/email/mail/CertificateValidationException;
    :cond_e
    const v4, 0x7f0800d5

    move v14, v4

    goto/16 :goto_2

    .line 351
    .end local v10           #cve:Lcom/android/email/mail/CertificateValidationException;
    .end local v17           #message:Ljava/lang/String;
    .restart local v13       #exceptionType:I
    .restart local v16       #me:Lcom/android/email/mail/MessagingException;
    :cond_f
    invoke-virtual/range {v16 .. v16}, Lcom/android/email/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v17

    .line 352
    .restart local v17       #message:Ljava/lang/String;
    packed-switch v13, :pswitch_data_0

    .line 375
    :pswitch_0
    if-nez v17, :cond_10

    const v4, 0x7f0800d6

    move v14, v4

    .line 380
    .restart local v14       #id:I
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupCheckSettings$1;->this$0:Lcom/android/email/activity/setup/AccountSetupCheckSettings;

    move-object v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v17, v6, v7

    invoke-static {v4, v5, v14, v6}, Lcom/android/email/activity/setup/AccountSetupCheckSettings;->access$800(Lcom/android/email/activity/setup/AccountSetupCheckSettings;ZI[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 354
    .end local v14           #id:I
    :pswitch_1
    const v14, 0x7f0800db

    .line 355
    .restart local v14       #id:I
    goto :goto_4

    .line 357
    .end local v14           #id:I
    :pswitch_2
    const v14, 0x7f0800d8

    .line 358
    .restart local v14       #id:I
    goto :goto_4

    .line 360
    .end local v14           #id:I
    :pswitch_3
    const v14, 0x7f0800d9

    .line 361
    .restart local v14       #id:I
    goto :goto_4

    .line 363
    .end local v14           #id:I
    :pswitch_4
    const v14, 0x7f080187

    .line 364
    .restart local v14       #id:I
    goto :goto_4

    .line 366
    .end local v14           #id:I
    :pswitch_5
    const v14, 0x7f0801a5

    .line 367
    .restart local v14       #id:I
    goto :goto_4

    .line 369
    .end local v14           #id:I
    :pswitch_6
    const v14, 0x7f0800da

    .line 370
    .restart local v14       #id:I
    goto :goto_4

    .line 372
    .end local v14           #id:I
    :pswitch_7
    const v14, 0x7f0802f8

    .line 373
    .restart local v14       #id:I
    goto :goto_4

    .line 375
    .end local v14           #id:I
    :cond_10
    const v4, 0x7f0800d7

    move v14, v4

    goto :goto_4

    .line 352
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_7
    .end packed-switch
.end method
