.class Lcom/android/email/activity/UpgradeAccounts$ConversionTask;
.super Landroid/os/AsyncTask;
.source "UpgradeAccounts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/UpgradeAccounts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConversionTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field mAccountInfo:[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

.field final mContext:Landroid/content/Context;

.field final mPreferences:Lcom/android/email/Preferences;

.field final synthetic this$0:Lcom/android/email/activity/UpgradeAccounts;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/UpgradeAccounts;[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;)V
    .locals 1
    .parameter
    .parameter "accountInfo"

    .prologue
    .line 353
    iput-object p1, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 355
    iput-object p2, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountInfo:[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    .line 356
    iput-object p1, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mContext:Landroid/content/Context;

    .line 357
    iget-object v0, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mPreferences:Lcom/android/email/Preferences;

    .line 358
    return-void
.end method

.method private copyAndDeleteAccount(Lcom/android/email/activity/UpgradeAccounts$AccountInfo;ILcom/android/email/activity/UpgradeAccounts$UIHandler;Ljava/lang/String;)V
    .locals 7
    .parameter "info"
    .parameter "i"
    .parameter "handler"
    .parameter "type"

    .prologue
    const-string v6, "Email"

    .line 419
    if-eqz p4, :cond_0

    .line 420
    :try_start_0
    iget-object v3, p1, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    invoke-virtual {v3}, Lcom/android/email/Account;->getStoreUri()Ljava/lang/String;

    move-result-object v2

    .line 421
    .local v2, storeUri:Ljava/lang/String;
    invoke-virtual {v2, p4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    .line 422
    .local v1, isType:Z
    if-nez v1, :cond_0

    .line 445
    .end local v1           #isType:Z
    .end local v2           #storeUri:Ljava/lang/String;
    :goto_0
    return-void

    .line 427
    :cond_0
    iget-boolean v3, p1, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->isError:Z

    if-nez v3, :cond_1

    .line 428
    iget-object v3, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mContext:Landroid/content/Context;

    iget-object v4, p1, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    invoke-static {v3, v4, p2, p3}, Lcom/android/email/activity/UpgradeAccounts;->copyAccount(Landroid/content/Context;Lcom/android/email/Account;ILcom/android/email/activity/UpgradeAccounts$UIHandler;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 437
    :cond_1
    :goto_1
    :try_start_1
    iget-object v3, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mContext:Landroid/content/Context;

    iget-object v4, p1, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    invoke-static {v3, v4, p2, p3}, Lcom/android/email/activity/UpgradeAccounts;->deleteAccountStore(Landroid/content/Context;Lcom/android/email/Account;ILcom/android/email/activity/UpgradeAccounts$UIHandler;)V

    .line 438
    iget-object v3, p1, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    iget-object v4, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mPreferences:Lcom/android/email/Preferences;

    invoke-virtual {v3, v4}, Lcom/android/email/Account;->delete(Lcom/android/email/Preferences;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 444
    :goto_2
    const v3, 0x7fffffff

    invoke-virtual {p3, p2, v3}, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->setProgress(II)V

    goto :goto_0

    .line 430
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 431
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v3, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception while copying account "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    iget-object v3, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    invoke-static {v3}, Lcom/android/email/activity/UpgradeAccounts;->access$600(Lcom/android/email/activity/UpgradeAccounts;)Lcom/android/email/activity/UpgradeAccounts$UIHandler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mContext:Landroid/content/Context;

    const v5, 0x7f080174

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p2, v4}, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->error(ILjava/lang/String;)V

    .line 433
    const/4 v3, 0x1

    iput-boolean v3, p1, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->isError:Z

    goto :goto_1

    .line 439
    .end local v0           #e:Ljava/lang/RuntimeException;
    :catch_1
    move-exception v3

    move-object v0, v3

    .line 440
    .restart local v0       #e:Ljava/lang/RuntimeException;
    const-string v3, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception while deleting account "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 348
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 10
    .parameter "params"

    .prologue
    const/4 v9, 0x0

    .line 366
    invoke-static {}, Lcom/android/email/activity/UpgradeAccounts;->access$400()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 367
    :try_start_0
    invoke-static {}, Lcom/android/email/activity/UpgradeAccounts;->access$500()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 368
    monitor-exit v5

    move-object v5, v9

    .line 410
    :goto_0
    return-object v5

    .line 370
    :cond_0
    const/4 v6, 0x1

    invoke-static {v6}, Lcom/android/email/activity/UpgradeAccounts;->access$502(Z)Z

    .line 372
    iget-object v6, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    invoke-static {v6}, Lcom/android/email/activity/UpgradeAccounts;->access$600(Lcom/android/email/activity/UpgradeAccounts;)Lcom/android/email/activity/UpgradeAccounts$UIHandler;

    move-result-object v1

    .line 374
    .local v1, handler:Lcom/android/email/activity/UpgradeAccounts$UIHandler;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget-object v6, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountInfo:[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    array-length v6, v6

    if-ge v2, v6, :cond_2

    .line 375
    iget-object v6, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountInfo:[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    aget-object v7, v7, v2

    iget-object v7, v7, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    invoke-static {v6, v7}, Lcom/android/email/activity/UpgradeAccounts;->estimateWork(Landroid/content/Context;Lcom/android/email/Account;)I

    move-result v0

    .line 376
    .local v0, estimate:I
    const/4 v6, -0x1

    if-ne v0, v6, :cond_1

    .line 377
    iget-object v6, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountInfo:[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    aget-object v6, v6, v2

    const/4 v7, 0x1

    iput-boolean v7, v6, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->isError:Z

    .line 378
    iget-object v6, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    invoke-static {v6}, Lcom/android/email/activity/UpgradeAccounts;->access$600(Lcom/android/email/activity/UpgradeAccounts;)Lcom/android/email/activity/UpgradeAccounts$UIHandler;

    move-result-object v6

    iget-object v7, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mContext:Landroid/content/Context;

    const v8, 0x7f080174

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v2, v7}, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->error(ILjava/lang/String;)V

    .line 380
    :cond_1
    iget-object v6, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    invoke-static {v6}, Lcom/android/email/activity/UpgradeAccounts;->access$600(Lcom/android/email/activity/UpgradeAccounts;)Lcom/android/email/activity/UpgradeAccounts$UIHandler;

    move-result-object v6

    invoke-virtual {v6, v2, v0}, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->setMaxProgress(II)V

    .line 374
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 384
    .end local v0           #estimate:I
    :cond_2
    const/4 v2, 0x0

    :goto_2
    iget-object v6, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountInfo:[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    array-length v6, v6

    if-ge v2, v6, :cond_4

    .line 385
    iget-object v6, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountInfo:[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    aget-object v6, v6, v2

    iget-boolean v6, v6, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->isError:Z

    if-nez v6, :cond_3

    .line 386
    iget-object v6, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountInfo:[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    aget-object v7, v7, v2

    iget-object v7, v7, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    invoke-static {v6, v7, v2, v1}, Lcom/android/email/activity/UpgradeAccounts;->scrubAccount(Landroid/content/Context;Lcom/android/email/Account;ILcom/android/email/activity/UpgradeAccounts$UIHandler;)Z

    move-result v4

    .line 387
    .local v4, ok:Z
    if-nez v4, :cond_3

    .line 388
    iget-object v6, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountInfo:[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    aget-object v6, v6, v2

    const/4 v7, 0x1

    iput-boolean v7, v6, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->isError:Z

    .line 389
    iget-object v6, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    invoke-static {v6}, Lcom/android/email/activity/UpgradeAccounts;->access$600(Lcom/android/email/activity/UpgradeAccounts;)Lcom/android/email/activity/UpgradeAccounts$UIHandler;

    move-result-object v6

    iget-object v7, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mContext:Landroid/content/Context;

    const v8, 0x7f080174

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v2, v7}, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->error(ILjava/lang/String;)V

    .line 384
    .end local v4           #ok:Z
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 397
    :cond_4
    const/4 v2, 0x0

    :goto_3
    iget-object v6, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountInfo:[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    array-length v6, v6

    if-ge v2, v6, :cond_5

    .line 398
    iget-object v6, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountInfo:[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    aget-object v3, v6, v2

    .line 399
    .local v3, info:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;
    const-string v6, "pop3"

    invoke-direct {p0, v3, v2, v1, v6}, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->copyAndDeleteAccount(Lcom/android/email/activity/UpgradeAccounts$AccountInfo;ILcom/android/email/activity/UpgradeAccounts$UIHandler;Ljava/lang/String;)V

    .line 397
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 402
    .end local v3           #info:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;
    :cond_5
    const/4 v2, 0x0

    :goto_4
    iget-object v6, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountInfo:[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    array-length v6, v6

    if-ge v2, v6, :cond_6

    .line 403
    iget-object v6, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountInfo:[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    aget-object v3, v6, v2

    .line 404
    .restart local v3       #info:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;
    const-string v6, "imap"

    invoke-direct {p0, v3, v2, v1, v6}, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->copyAndDeleteAccount(Lcom/android/email/activity/UpgradeAccounts$AccountInfo;ILcom/android/email/activity/UpgradeAccounts$UIHandler;Ljava/lang/String;)V

    .line 402
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 408
    .end local v3           #info:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;
    :cond_6
    iget-object v6, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/email/Email;->setServicesEnabled(Landroid/content/Context;)Z

    .line 409
    monitor-exit v5

    move-object v5, v9

    .line 410
    goto/16 :goto_0

    .line 409
    .end local v1           #handler:Lcom/android/email/activity/UpgradeAccounts$UIHandler;
    .end local v2           #i:I
    :catchall_0
    move-exception v6

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 348
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 449
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/email/activity/UpgradeAccounts;->access$502(Z)Z

    .line 450
    invoke-virtual {p0}, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 453
    iget-object v0, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    invoke-static {v0}, Lcom/android/email/activity/UpgradeAccounts;->access$300(Lcom/android/email/activity/UpgradeAccounts;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 454
    iget-object v0, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    invoke-static {v0}, Lcom/android/email/activity/UpgradeAccounts;->access$700(Lcom/android/email/activity/UpgradeAccounts;)V

    .line 457
    :cond_0
    return-void
.end method
