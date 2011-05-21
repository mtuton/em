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
    .line 182
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupCheckSettings$1;->this$0:Lcom/android/email/activity/setup/AccountSetupCheckSettings;

    iput-object p2, p0, Lcom/android/email/activity/setup/AccountSetupCheckSettings$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 20

    .prologue
    .line 183
    const/16 v4, 0xa

    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    .line 185
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupCheckSettings$1;->this$0:Lcom/android/email/activity/setup/AccountSetupCheckSettings;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/email/activity/setup/AccountSetupCheckSettings;->access$000(Lcom/android/email/activity/setup/AccountSetupCheckSettings;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 369
    :cond_0
    :goto_0
    return-void

    .line 188
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupCheckSettings$1;->this$0:Lcom/android/email/activity/setup/AccountSetupCheckSettings;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/email/activity/setup/AccountSetupCheckSettings;->access$100(Lcom/android/email/activity/setup/AccountSetupCheckSettings;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupCheckSettings$1;->this$0:Lcom/android/email/activity/setup/AccountSetupCheckSettings;

    move-object v4, v0

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/android/email/activity/setup/AccountSetupCheckSettings;->setResult(I)V

    .line 194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupCheckSettings$1;->this$0:Lcom/android/email/activity/setup/AccountSetupCheckSettings;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/email/activity/setup/AccountSetupCheckSettings;->finish()V
    :try_end_0
    .catch Lcom/android/email/activity/setup/AccountSetupCheckSettings$AutoDiscoverAuthenticationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/email/mail/AuthenticationFailedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/email/mail/CertificateValidationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/android/email/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 313
    :catch_0
    move-exception v4

    move-object v9, v4

    .line 314
    .local v9, afe:Lcom/android/email/activity/setup/AccountSetupCheckSettings$AutoDiscoverAuthenticationException;
    invoke-virtual {v9}, Lcom/android/email/activity/setup/AccountSetupCheckSettings$AutoDiscoverAuthenticationException;->getMessage()Ljava/lang/String;

    move-result-object v16

    .line 315
    .local v16, message:Ljava/lang/String;
    const v13, 0x7f08023a

    .line 316
    .local v13, id:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupCheckSettings$1;->this$0:Lcom/android/email/activity/setup/AccountSetupCheckSettings;

    move-object v4, v0

    const/4 v5, 0x1

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v16, v6, v7

    invoke-static {v4, v5, v13, v6}, Lcom/android/email/activity/setup/AccountSetupCheckSettings;->access$800(Lcom/android/email/activity/setup/AccountSetupCheckSettings;ZI[Ljava/lang/Object;)V

    goto :goto_0

    .line 197
    .end local v9           #afe:Lcom/android/email/activity/setup/AccountSetupCheckSettings$AutoDiscoverAuthenticationException;
    .end local v13           #id:I
    .end local v16           #message:Ljava/lang/String;
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupCheckSettings$1;->this$0:Lcom/android/email/activity/setup/AccountSetupCheckSettings;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/email/activity/setup/AccountSetupCheckSettings;->access$200(Lcom/android/email/activity/setup/AccountSetupCheckSettings;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupCheckSettings$1;->val$intent:Landroid/content/Intent;

    move-object v4, v0

    const-string v5, "userName"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 199
    .local v5, userName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupCheckSettings$1;->val$intent:Landroid/content/Intent;

    move-object v4, v0

    const-string v6, "password"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 202
    .local v6, password:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupCheckSettings$1;->val$intent:Landroid/content/Intent;

    move-object v4, v0

    const-string v7, "domain"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 203
    .local v7, domain:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupCheckSettings$1;->val$intent:Landroid/content/Intent;

    move-object v4, v0

    const-string v8, "trustCert"

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    .line 206
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

    .line 207
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

    .line 212
    .local v3, store:Lcom/android/email/mail/Store;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupCheckSettings$1;->this$0:Lcom/android/email/activity/setup/AccountSetupCheckSettings;

    move-object v4, v0

    invoke-virtual/range {v3 .. v8}, Lcom/android/email/mail/Store;->autoDiscover(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v17

    .line 222
    .local v17, result:Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupCheckSettings$1;->this$0:Lcom/android/email/activity/setup/AccountSetupCheckSettings;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/email/activity/setup/AccountSetupCheckSettings;->access$100(Lcom/android/email/activity/setup/AccountSetupCheckSettings;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupCheckSettings$1;->this$0:Lcom/android/email/activity/setup/AccountSetupCheckSettings;

    move-object v4, v0

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/android/email/activity/setup/AccountSetupCheckSettings;->setResult(I)V

    .line 224
    .end local v5           #userName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupCheckSettings$1;->this$0:Lcom/android/email/activity/setup/AccountSetupCheckSettings;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/email/activity/setup/AccountSetupCheckSettings;->finish()V
    :try_end_1
    .catch Lcom/android/email/activity/setup/AccountSetupCheckSettings$AutoDiscoverAuthenticationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/email/mail/AuthenticationFailedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/android/email/mail/CertificateValidationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/android/email/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_3

    goto/16 :goto_0

    .line 319
    .end local v3           #store:Lcom/android/email/mail/Store;
    .end local v6           #password:Ljava/lang/String;
    .end local v7           #domain:Ljava/lang/String;
    .end local v8           #bTrustCert:Z
    .end local v17           #result:Landroid/os/Bundle;
    :catch_1
    move-exception v4

    move-object v9, v4

    .line 322
    .local v9, afe:Lcom/android/email/mail/AuthenticationFailedException;
    invoke-virtual {v9}, Lcom/android/email/mail/AuthenticationFailedException;->getMessage()Ljava/lang/String;

    move-result-object v16

    .line 323
    .restart local v16       #message:Ljava/lang/String;
    if-nez v16, :cond_b

    const v4, 0x7f0800c7

    move v13, v4

    .line 326
    .restart local v13       #id:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupCheckSettings$1;->this$0:Lcom/android/email/activity/setup/AccountSetupCheckSettings;

    move-object v4, v0

    instance-of v5, v9, Lcom/android/email/activity/setup/AccountSetupCheckSettings$AutoDiscoverAuthenticationException;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v16, v6, v7

    invoke-static {v4, v5, v13, v6}, Lcom/android/email/activity/setup/AccountSetupCheckSettings;->access$800(Lcom/android/email/activity/setup/AccountSetupCheckSettings;ZI[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 229
    .end local v9           #afe:Lcom/android/email/mail/AuthenticationFailedException;
    .end local v13           #id:I
    .end local v16           #message:Ljava/lang/String;
    .restart local v3       #store:Lcom/android/email/mail/Store;
    .restart local v5       #userName:Ljava/lang/String;
    .restart local v6       #password:Ljava/lang/String;
    .restart local v7       #domain:Ljava/lang/String;
    .restart local v8       #bTrustCert:Z
    .restart local v17       #result:Landroid/os/Bundle;
    :cond_3
    if-eqz v17, :cond_6

    .line 230
    :try_start_2
    const-string v4, "autodiscover_error_code"

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    .line 234
    .local v11, errorCode:I
    const/4 v4, -0x1

    if-eq v11, v4, :cond_5

    .line 236
    const/4 v4, 0x1

    sget v5, Lcom/android/email/activity/setup/AccountSetupCheckSettings;->mAutoDiscoverRetryCount:I

    .end local v5           #userName:Ljava/lang/String;
    if-ne v4, v5, :cond_4

    .line 239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupCheckSettings$1;->this$0:Lcom/android/email/activity/setup/AccountSetupCheckSettings;

    move-object v4, v0

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/android/email/activity/setup/AccountSetupCheckSettings;->setResult(I)V

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupCheckSettings$1;->this$0:Lcom/android/email/activity/setup/AccountSetupCheckSettings;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/email/activity/setup/AccountSetupCheckSettings;->finish()V
    :try_end_2
    .catch Lcom/android/email/activity/setup/AccountSetupCheckSettings$AutoDiscoverAuthenticationException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/android/email/mail/AuthenticationFailedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/android/email/mail/CertificateValidationException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/android/email/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_3

    goto/16 :goto_0

    .line 328
    .end local v3           #store:Lcom/android/email/mail/Store;
    .end local v6           #password:Ljava/lang/String;
    .end local v7           #domain:Ljava/lang/String;
    .end local v8           #bTrustCert:Z
    .end local v11           #errorCode:I
    .end local v17           #result:Landroid/os/Bundle;
    :catch_2
    move-exception v4

    move-object v10, v4

    .line 329
    .local v10, cve:Lcom/android/email/mail/CertificateValidationException;
    invoke-virtual {v10}, Lcom/android/email/mail/CertificateValidationException;->getMessage()Ljava/lang/String;

    move-result-object v16

    .line 330
    .restart local v16       #message:Ljava/lang/String;
    if-nez v16, :cond_c

    const v4, 0x7f0800c9

    move v13, v4

    .line 333
    .restart local v13       #id:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupCheckSettings$1;->this$0:Lcom/android/email/activity/setup/AccountSetupCheckSettings;

    move-object v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v16, v6, v7

    invoke-static {v4, v5, v13, v6}, Lcom/android/email/activity/setup/AccountSetupCheckSettings;->access$800(Lcom/android/email/activity/setup/AccountSetupCheckSettings;ZI[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 242
    .end local v10           #cve:Lcom/android/email/mail/CertificateValidationException;
    .end local v13           #id:I
    .end local v16           #message:Ljava/lang/String;
    .restart local v3       #store:Lcom/android/email/mail/Store;
    .restart local v6       #password:Ljava/lang/String;
    .restart local v7       #domain:Ljava/lang/String;
    .restart local v8       #bTrustCert:Z
    .restart local v11       #errorCode:I
    .restart local v17       #result:Landroid/os/Bundle;
    :cond_4
    const/4 v4, 0x2

    :try_start_3
    sget v5, Lcom/android/email/activity/setup/AccountSetupCheckSettings;->mAutoDiscoverRetryCount:I

    if-ne v4, v5, :cond_5

    .line 247
    new-instance v4, Lcom/android/email/activity/setup/AccountSetupCheckSettings$AutoDiscoverAuthenticationException;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupCheckSettings$1;->this$0:Lcom/android/email/activity/setup/AccountSetupCheckSettings;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/android/email/activity/setup/AccountSetupCheckSettings$AutoDiscoverAuthenticationException;-><init>(Lcom/android/email/activity/setup/AccountSetupCheckSettings;Ljava/lang/String;)V

    .end local v6           #password:Ljava/lang/String;
    throw v4
    :try_end_3
    .catch Lcom/android/email/activity/setup/AccountSetupCheckSettings$AutoDiscoverAuthenticationException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/android/email/mail/AuthenticationFailedException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/android/email/mail/CertificateValidationException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/android/email/mail/MessagingException; {:try_start_3 .. :try_end_3} :catch_3

    .line 334
    .end local v3           #store:Lcom/android/email/mail/Store;
    .end local v7           #domain:Ljava/lang/String;
    .end local v8           #bTrustCert:Z
    .end local v11           #errorCode:I
    .end local v17           #result:Landroid/os/Bundle;
    :catch_3
    move-exception v4

    move-object v15, v4

    .line 335
    .local v15, me:Lcom/android/email/mail/MessagingException;
    invoke-virtual {v15}, Lcom/android/email/mail/MessagingException;->getExceptionType()I

    move-result v12

    .line 337
    .local v12, exceptionType:I
    const/4 v4, 0x7

    if-ne v12, v4, :cond_d

    .line 338
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupCheckSettings$1;->this$0:Lcom/android/email/activity/setup/AccountSetupCheckSettings;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/email/activity/setup/AccountSetupCheckSettings;->access$900(Lcom/android/email/activity/setup/AccountSetupCheckSettings;)V

    goto/16 :goto_0

    .line 254
    .end local v12           #exceptionType:I
    .end local v15           #me:Lcom/android/email/mail/MessagingException;
    .restart local v3       #store:Lcom/android/email/mail/Store;
    .restart local v6       #password:Ljava/lang/String;
    .restart local v7       #domain:Ljava/lang/String;
    .restart local v8       #bTrustCert:Z
    .restart local v11       #errorCode:I
    .restart local v17       #result:Landroid/os/Bundle;
    :cond_5
    :try_start_4
    new-instance v18, Landroid/content/Intent;

    invoke-direct/range {v18 .. v18}, Landroid/content/Intent;-><init>()V

    .line 255
    .local v18, resultIntent:Landroid/content/Intent;
    const-string v4, "HostAuth"

    const-string v5, "autodiscover_host_auth"

    move-object/from16 v0, v17

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    move-object/from16 v0, v18

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupCheckSettings$1;->this$0:Lcom/android/email/activity/setup/AccountSetupCheckSettings;

    move-object v4, v0

    const/4 v5, -0x1

    move-object v0, v4

    move v1, v5

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/setup/AccountSetupCheckSettings;->setResult(ILandroid/content/Intent;)V

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupCheckSettings$1;->this$0:Lcom/android/email/activity/setup/AccountSetupCheckSettings;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/email/activity/setup/AccountSetupCheckSettings;->finish()V

    goto/16 :goto_0

    .line 263
    .end local v3           #store:Lcom/android/email/mail/Store;
    .end local v6           #password:Ljava/lang/String;
    .end local v7           #domain:Ljava/lang/String;
    .end local v8           #bTrustCert:Z
    .end local v11           #errorCode:I
    .end local v17           #result:Landroid/os/Bundle;
    .end local v18           #resultIntent:Landroid/content/Intent;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupCheckSettings$1;->this$0:Lcom/android/email/activity/setup/AccountSetupCheckSettings;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/email/activity/setup/AccountSetupCheckSettings;->access$000(Lcom/android/email/activity/setup/AccountSetupCheckSettings;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupCheckSettings$1;->this$0:Lcom/android/email/activity/setup/AccountSetupCheckSettings;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/email/activity/setup/AccountSetupCheckSettings;->access$100(Lcom/android/email/activity/setup/AccountSetupCheckSettings;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupCheckSettings$1;->this$0:Lcom/android/email/activity/setup/AccountSetupCheckSettings;

    move-object v4, v0

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/android/email/activity/setup/AccountSetupCheckSettings;->setResult(I)V

    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupCheckSettings$1;->this$0:Lcom/android/email/activity/setup/AccountSetupCheckSettings;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/email/activity/setup/AccountSetupCheckSettings;->finish()V

    goto/16 :goto_0

    .line 273
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupCheckSettings$1;->this$0:Lcom/android/email/activity/setup/AccountSetupCheckSettings;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/email/activity/setup/AccountSetupCheckSettings;->access$400(Lcom/android/email/activity/setup/AccountSetupCheckSettings;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 274
    const-string v4, "Email"

    const-string v5, "Begin check of incoming email settings"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupCheckSettings$1;->this$0:Lcom/android/email/activity/setup/AccountSetupCheckSettings;

    move-object v4, v0

    const v5, 0x7f080087

    invoke-static {v4, v5}, Lcom/android/email/activity/setup/AccountSetupCheckSettings;->access$500(Lcom/android/email/activity/setup/AccountSetupCheckSettings;I)V

    .line 277
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

    .line 279
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

    .line 282
    .restart local v3       #store:Lcom/android/email/mail/Store;
    invoke-virtual {v3}, Lcom/android/email/mail/Store;->checkSettings()V

    .line 284
    .end local v3           #store:Lcom/android/email/mail/Store;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupCheckSettings$1;->this$0:Lcom/android/email/activity/setup/AccountSetupCheckSettings;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/email/activity/setup/AccountSetupCheckSettings;->access$000(Lcom/android/email/activity/setup/AccountSetupCheckSettings;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupCheckSettings$1;->this$0:Lcom/android/email/activity/setup/AccountSetupCheckSettings;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/email/activity/setup/AccountSetupCheckSettings;->access$100(Lcom/android/email/activity/setup/AccountSetupCheckSettings;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupCheckSettings$1;->this$0:Lcom/android/email/activity/setup/AccountSetupCheckSettings;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/email/activity/setup/AccountSetupCheckSettings;->finish()V

    goto/16 :goto_0

    .line 291
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupCheckSettings$1;->this$0:Lcom/android/email/activity/setup/AccountSetupCheckSettings;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/email/activity/setup/AccountSetupCheckSettings;->access$700(Lcom/android/email/activity/setup/AccountSetupCheckSettings;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 292
    const-string v4, "Email"

    const-string v5, "Begin check of outgoing email settings"

    invoke-static {v4, v5}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupCheckSettings$1;->this$0:Lcom/android/email/activity/setup/AccountSetupCheckSettings;

    move-object v4, v0

    const v5, 0x7f080088

    invoke-static {v4, v5}, Lcom/android/email/activity/setup/AccountSetupCheckSettings;->access$500(Lcom/android/email/activity/setup/AccountSetupCheckSettings;I)V

    .line 294
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

    move-result-object v19

    .line 296
    .local v19, sender:Lcom/android/email/mail/Sender;
    invoke-virtual/range {v19 .. v19}, Lcom/android/email/mail/Sender;->close()V

    .line 297
    invoke-virtual/range {v19 .. v19}, Lcom/android/email/mail/Sender;->open()V

    .line 298
    invoke-virtual/range {v19 .. v19}, Lcom/android/email/mail/Sender;->close()V

    .line 300
    .end local v19           #sender:Lcom/android/email/mail/Sender;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupCheckSettings$1;->this$0:Lcom/android/email/activity/setup/AccountSetupCheckSettings;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/email/activity/setup/AccountSetupCheckSettings;->access$000(Lcom/android/email/activity/setup/AccountSetupCheckSettings;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 306
    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    .line 307
    .local v14, intent:Landroid/content/Intent;
    const-string v4, "com.android.email.AccountSetupBasics.account"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupCheckSettings$1;->this$0:Lcom/android/email/activity/setup/AccountSetupCheckSettings;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/email/activity/setup/AccountSetupCheckSettings;->access$300(Lcom/android/email/activity/setup/AccountSetupCheckSettings;)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v5

    invoke-virtual {v14, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 308
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupCheckSettings$1;->this$0:Lcom/android/email/activity/setup/AccountSetupCheckSettings;

    move-object v4, v0

    const/4 v5, -0x1

    invoke-virtual {v4, v5, v14}, Lcom/android/email/activity/setup/AccountSetupCheckSettings;->setResult(ILandroid/content/Intent;)V

    .line 310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupCheckSettings$1;->this$0:Lcom/android/email/activity/setup/AccountSetupCheckSettings;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/email/activity/setup/AccountSetupCheckSettings;->finish()V
    :try_end_4
    .catch Lcom/android/email/activity/setup/AccountSetupCheckSettings$AutoDiscoverAuthenticationException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/android/email/mail/AuthenticationFailedException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/android/email/mail/CertificateValidationException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lcom/android/email/mail/MessagingException; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_0

    .line 323
    .end local v14           #intent:Landroid/content/Intent;
    .restart local v9       #afe:Lcom/android/email/mail/AuthenticationFailedException;
    .restart local v16       #message:Ljava/lang/String;
    :cond_b
    const v4, 0x7f0800c8

    move v13, v4

    goto/16 :goto_1

    .line 330
    .end local v9           #afe:Lcom/android/email/mail/AuthenticationFailedException;
    .restart local v10       #cve:Lcom/android/email/mail/CertificateValidationException;
    :cond_c
    const v4, 0x7f0800ca

    move v13, v4

    goto/16 :goto_2

    .line 343
    .end local v10           #cve:Lcom/android/email/mail/CertificateValidationException;
    .end local v16           #message:Ljava/lang/String;
    .restart local v12       #exceptionType:I
    .restart local v15       #me:Lcom/android/email/mail/MessagingException;
    :cond_d
    invoke-virtual {v15}, Lcom/android/email/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v16

    .line 344
    .restart local v16       #message:Ljava/lang/String;
    sparse-switch v12, :sswitch_data_0

    .line 362
    if-nez v16, :cond_e

    const v4, 0x7f0800cb

    move v13, v4

    .line 367
    .restart local v13       #id:I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupCheckSettings$1;->this$0:Lcom/android/email/activity/setup/AccountSetupCheckSettings;

    move-object v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v16, v6, v7

    invoke-static {v4, v5, v13, v6}, Lcom/android/email/activity/setup/AccountSetupCheckSettings;->access$800(Lcom/android/email/activity/setup/AccountSetupCheckSettings;ZI[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 347
    .end local v13           #id:I
    :sswitch_0
    const v13, 0x7f0800d0

    .line 348
    .restart local v13       #id:I
    goto :goto_3

    .line 350
    .end local v13           #id:I
    :sswitch_1
    const v13, 0x7f0800cd

    .line 351
    .restart local v13       #id:I
    goto :goto_3

    .line 353
    .end local v13           #id:I
    :sswitch_2
    const v13, 0x7f0800ce

    .line 354
    .restart local v13       #id:I
    goto :goto_3

    .line 356
    .end local v13           #id:I
    :sswitch_3
    const v13, 0x7f08018a

    .line 357
    .restart local v13       #id:I
    goto :goto_3

    .line 359
    .end local v13           #id:I
    :sswitch_4
    const v13, 0x7f0800cf

    .line 360
    .restart local v13       #id:I
    goto :goto_3

    .line 362
    .end local v13           #id:I
    :cond_e
    const v4, 0x7f0800cc

    move v13, v4

    goto :goto_3

    .line 344
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_4
        0x8 -> :sswitch_3
        0x14 -> :sswitch_0
    .end sparse-switch
.end method
