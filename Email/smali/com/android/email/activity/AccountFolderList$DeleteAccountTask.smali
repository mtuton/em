.class Lcom/android/email/activity/AccountFolderList$DeleteAccountTask;
.super Landroid/os/AsyncTask;
.source "AccountFolderList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/AccountFolderList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteAccountTask"
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
.field private final mAccountId:J

.field private final mAccountUri:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/email/activity/AccountFolderList;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/AccountFolderList;JLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter "accountId"
    .parameter "accountUri"

    .prologue
    .line 663
    iput-object p1, p0, Lcom/android/email/activity/AccountFolderList$DeleteAccountTask;->this$0:Lcom/android/email/activity/AccountFolderList;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 664
    iput-wide p2, p0, Lcom/android/email/activity/AccountFolderList$DeleteAccountTask;->mAccountId:J

    .line 665
    iput-object p4, p0, Lcom/android/email/activity/AccountFolderList$DeleteAccountTask;->mAccountUri:Ljava/lang/String;

    .line 666
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 659
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/AccountFolderList$DeleteAccountTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6
    .parameter "params"

    .prologue
    const/4 v5, 0x0

    .line 674
    :try_start_0
    iget-object v2, p0, Lcom/android/email/activity/AccountFolderList$DeleteAccountTask;->this$0:Lcom/android/email/activity/AccountFolderList;

    iget-wide v3, p0, Lcom/android/email/activity/AccountFolderList$DeleteAccountTask;->mAccountId:J

    invoke-static {v2, v3, v4}, Lcom/android/email/provider/AttachmentProvider;->deleteAllAccountAttachmentFiles(Landroid/content/Context;J)V

    .line 675
    iget-object v2, p0, Lcom/android/email/activity/AccountFolderList$DeleteAccountTask;->mAccountUri:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/email/mail/Store;->removeInstance(Ljava/lang/String;)V

    .line 676
    sget-object v2, Lcom/android/email/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, p0, Lcom/android/email/activity/AccountFolderList$DeleteAccountTask;->mAccountId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 678
    .local v1, uri:Landroid/net/Uri;
    iget-object v2, p0, Lcom/android/email/activity/AccountFolderList$DeleteAccountTask;->this$0:Lcom/android/email/activity/AccountFolderList;

    invoke-virtual {v2}, Lcom/android/email/activity/AccountFolderList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 682
    iget-object v2, p0, Lcom/android/email/activity/AccountFolderList$DeleteAccountTask;->this$0:Lcom/android/email/activity/AccountFolderList;

    invoke-static {v2}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/email/SecurityPolicy;->reducePolicies(Z)V

    .line 684
    iget-object v2, p0, Lcom/android/email/activity/AccountFolderList$DeleteAccountTask;->this$0:Lcom/android/email/activity/AccountFolderList;

    iget-wide v3, p0, Lcom/android/email/activity/AccountFolderList$DeleteAccountTask;->mAccountId:J

    invoke-static {v2, v3, v4}, Lcom/android/email/activity/AccountFolderList;->access$700(Landroid/content/Context;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 690
    .end local v1           #uri:Landroid/net/Uri;
    :goto_0
    iget-object v2, p0, Lcom/android/email/activity/AccountFolderList$DeleteAccountTask;->this$0:Lcom/android/email/activity/AccountFolderList;

    invoke-static {v2}, Lcom/android/email/Email;->setServicesEnabled(Landroid/content/Context;)Z

    .line 691
    return-object v5

    .line 686
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 687
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "AccountFolderList >>"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DeleteAccountTask exception :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 659
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/AccountFolderList$DeleteAccountTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v5, 0x0

    .line 696
    invoke-virtual {p0}, Lcom/android/email/activity/AccountFolderList$DeleteAccountTask;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 698
    iget-object v3, p0, Lcom/android/email/activity/AccountFolderList$DeleteAccountTask;->this$0:Lcom/android/email/activity/AccountFolderList;

    sget-object v4, Lcom/android/email/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v4, v5, v5}, Lcom/android/email/provider/EmailContent;->count(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 700
    .local v2, numAccounts:I
    if-nez v2, :cond_0

    .line 701
    iget-object v3, p0, Lcom/android/email/activity/AccountFolderList$DeleteAccountTask;->this$0:Lcom/android/email/activity/AccountFolderList;

    invoke-static {v3}, Lcom/android/email/activity/setup/AccountSetupBasics;->actionNewAccount(Landroid/app/Activity;)V

    .line 702
    iget-object v3, p0, Lcom/android/email/activity/AccountFolderList$DeleteAccountTask;->this$0:Lcom/android/email/activity/AccountFolderList;

    invoke-virtual {v3}, Lcom/android/email/activity/AccountFolderList;->finish()V

    .line 705
    :cond_0
    iget-object v3, p0, Lcom/android/email/activity/AccountFolderList$DeleteAccountTask;->this$0:Lcom/android/email/activity/AccountFolderList;

    invoke-static {v3}, Lcom/android/email/activity/AccountFolderList;->access$800(Lcom/android/email/activity/AccountFolderList;)V

    .line 707
    iget-object v3, p0, Lcom/android/email/activity/AccountFolderList$DeleteAccountTask;->this$0:Lcom/android/email/activity/AccountFolderList;

    iget-wide v4, p0, Lcom/android/email/activity/AccountFolderList$DeleteAccountTask;->mAccountId:J

    invoke-static {v3, v4, v5}, Lcom/android/email/activity/AccountFolderList;->access$900(Lcom/android/email/activity/AccountFolderList;J)Z

    move-result v3

    if-nez v3, :cond_1

    .line 708
    const-string v0, "com.android.email.action.ACCOUNT_UPDATED"

    .line 709
    .local v0, ACTION:Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 710
    .local v1, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/email/activity/AccountFolderList$DeleteAccountTask;->this$0:Lcom/android/email/activity/AccountFolderList;

    invoke-virtual {v3, v1}, Lcom/android/email/activity/AccountFolderList;->sendBroadcast(Landroid/content/Intent;)V

    .line 715
    .end local v0           #ACTION:Ljava/lang/String;
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #numAccounts:I
    :cond_1
    iget-object v3, p0, Lcom/android/email/activity/AccountFolderList$DeleteAccountTask;->this$0:Lcom/android/email/activity/AccountFolderList;

    invoke-static {v3}, Lcom/android/email/activity/AccountFolderList;->access$1000(Lcom/android/email/activity/AccountFolderList;)Lcom/android/email/activity/AccountFolderList$ProgressDialogDelete;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/email/activity/AccountFolderList$ProgressDialogDelete;->hide()V

    .line 716
    return-void
.end method
