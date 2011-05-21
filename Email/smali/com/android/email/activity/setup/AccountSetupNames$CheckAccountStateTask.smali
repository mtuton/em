.class Lcom/android/email/activity/setup/AccountSetupNames$CheckAccountStateTask;
.super Landroid/os/AsyncTask;
.source "AccountSetupNames.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/AccountSetupNames;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckAccountStateTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private mAccountId:J

.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSetupNames;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/setup/AccountSetupNames;J)V
    .locals 0
    .parameter
    .parameter "accountId"

    .prologue
    .line 251
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupNames$CheckAccountStateTask;->this$0:Lcom/android/email/activity/setup/AccountSetupNames;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 252
    iput-wide p2, p0, Lcom/android/email/activity/setup/AccountSetupNames$CheckAccountStateTask;->mAccountId:J

    .line 253
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 9
    .parameter "params"

    .prologue
    const/4 v3, 0x0

    .line 257
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupNames$CheckAccountStateTask;->this$0:Lcom/android/email/activity/setup/AccountSetupNames;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/AccountSetupNames;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/email/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v4, p0, Lcom/android/email/activity/setup/AccountSetupNames$CheckAccountStateTask;->mAccountId:J

    invoke-static {v1, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-static {}, Lcom/android/email/activity/setup/AccountSetupNames;->access$100()[Ljava/lang/String;

    move-result-object v2

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 261
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 263
    .local v7, flags:I
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 264
    .local v8, securityFlags:I
    and-int/lit8 v0, v7, 0x20

    if-eqz v0, :cond_0

    .line 265
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 269
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 272
    .end local v7           #flags:I
    .end local v8           #securityFlags:I
    :goto_0
    return-object v0

    .line 269
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 272
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 269
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 247
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/setup/AccountSetupNames$CheckAccountStateTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 4
    .parameter "isSecurityHold"

    .prologue
    .line 277
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupNames$CheckAccountStateTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 278
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 279
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupNames$CheckAccountStateTask;->this$0:Lcom/android/email/activity/setup/AccountSetupNames;

    iget-wide v2, p0, Lcom/android/email/activity/setup/AccountSetupNames$CheckAccountStateTask;->mAccountId:J

    invoke-static {v1, v2, v3}, Lcom/android/email/activity/setup/AccountSecurity;->actionUpdateSecurityIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    .line 281
    .local v0, i:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupNames$CheckAccountStateTask;->this$0:Lcom/android/email/activity/setup/AccountSetupNames;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/email/activity/setup/AccountSetupNames;->startActivityForResult(Landroid/content/Intent;I)V

    .line 286
    .end local v0           #i:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 283
    :cond_1
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupNames$CheckAccountStateTask;->this$0:Lcom/android/email/activity/setup/AccountSetupNames;

    invoke-virtual {v1}, Lcom/android/email/activity/setup/AccountSetupNames;->onBackPressed()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 247
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/setup/AccountSetupNames$CheckAccountStateTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
