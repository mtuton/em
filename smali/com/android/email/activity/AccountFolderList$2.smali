.class Lcom/android/email/activity/AccountFolderList$2;
.super Ljava/lang/Object;
.source "AccountFolderList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/AccountFolderList;->createRemoveAccountDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/AccountFolderList;


# direct methods
.method constructor <init>(Lcom/android/email/activity/AccountFolderList;)V
    .locals 0
    .parameter

    .prologue
    .line 781
    iput-object p1, p0, Lcom/android/email/activity/AccountFolderList$2;->this$0:Lcom/android/email/activity/AccountFolderList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v3, 0x1

    .line 782
    iget-object v1, p0, Lcom/android/email/activity/AccountFolderList$2;->this$0:Lcom/android/email/activity/AccountFolderList;

    invoke-virtual {v1, v3}, Lcom/android/email/activity/AccountFolderList;->dismissDialog(I)V

    .line 784
    iget-object v1, p0, Lcom/android/email/activity/AccountFolderList$2;->this$0:Lcom/android/email/activity/AccountFolderList;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Lcom/android/email/activity/AccountFolderList;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 786
    .local v0, notificationManager:Landroid/app/NotificationManager;
    sget v1, Lcom/android/email/service/MailService;->NOTIFICATION_ID_NEW_MESSAGES:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 788
    iget-object v1, p0, Lcom/android/email/activity/AccountFolderList$2;->this$0:Lcom/android/email/activity/AccountFolderList;

    invoke-static {v1}, Lcom/android/email/activity/AccountFolderList;->access$1000(Lcom/android/email/activity/AccountFolderList;)Lcom/android/email/activity/AccountFolderList$DeleteAccountTask;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/email/activity/AccountFolderList$2;->this$0:Lcom/android/email/activity/AccountFolderList;

    invoke-static {v1}, Lcom/android/email/activity/AccountFolderList;->access$1000(Lcom/android/email/activity/AccountFolderList;)Lcom/android/email/activity/AccountFolderList$DeleteAccountTask;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/activity/AccountFolderList$DeleteAccountTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    sget-object v2, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v1, v2, :cond_0

    .line 790
    iget-object v1, p0, Lcom/android/email/activity/AccountFolderList$2;->this$0:Lcom/android/email/activity/AccountFolderList;

    invoke-static {v1}, Lcom/android/email/activity/AccountFolderList;->access$1000(Lcom/android/email/activity/AccountFolderList;)Lcom/android/email/activity/AccountFolderList$DeleteAccountTask;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/email/activity/AccountFolderList$DeleteAccountTask;->cancel(Z)Z

    .line 791
    iget-object v1, p0, Lcom/android/email/activity/AccountFolderList$2;->this$0:Lcom/android/email/activity/AccountFolderList;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/email/activity/AccountFolderList;->access$1002(Lcom/android/email/activity/AccountFolderList;Lcom/android/email/activity/AccountFolderList$DeleteAccountTask;)Lcom/android/email/activity/AccountFolderList$DeleteAccountTask;

    .line 794
    :cond_0
    iget-object v1, p0, Lcom/android/email/activity/AccountFolderList$2;->this$0:Lcom/android/email/activity/AccountFolderList;

    invoke-static {v1}, Lcom/android/email/activity/AccountFolderList;->access$900(Lcom/android/email/activity/AccountFolderList;)Lcom/android/email/activity/AccountFolderList$ProgressDialogDelete;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/activity/AccountFolderList$ProgressDialogDelete;->show()V

    .line 796
    iget-object v1, p0, Lcom/android/email/activity/AccountFolderList$2;->this$0:Lcom/android/email/activity/AccountFolderList;

    new-instance v2, Lcom/android/email/activity/AccountFolderList$DeleteAccountTask;

    iget-object v3, p0, Lcom/android/email/activity/AccountFolderList$2;->this$0:Lcom/android/email/activity/AccountFolderList;

    iget-object v4, p0, Lcom/android/email/activity/AccountFolderList$2;->this$0:Lcom/android/email/activity/AccountFolderList;

    invoke-static {v4}, Lcom/android/email/activity/AccountFolderList;->access$1100(Lcom/android/email/activity/AccountFolderList;)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v4

    iget-wide v4, v4, Lcom/android/email/provider/EmailContent$Account;->mId:J

    iget-object v6, p0, Lcom/android/email/activity/AccountFolderList$2;->this$0:Lcom/android/email/activity/AccountFolderList;

    invoke-static {v6}, Lcom/android/email/activity/AccountFolderList;->access$1100(Lcom/android/email/activity/AccountFolderList;)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v6

    iget-object v7, p0, Lcom/android/email/activity/AccountFolderList$2;->this$0:Lcom/android/email/activity/AccountFolderList;

    invoke-virtual {v6, v7}, Lcom/android/email/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/email/activity/AccountFolderList$DeleteAccountTask;-><init>(Lcom/android/email/activity/AccountFolderList;JLjava/lang/String;)V

    invoke-static {v1, v2}, Lcom/android/email/activity/AccountFolderList;->access$1002(Lcom/android/email/activity/AccountFolderList;Lcom/android/email/activity/AccountFolderList$DeleteAccountTask;)Lcom/android/email/activity/AccountFolderList$DeleteAccountTask;

    .line 798
    iget-object v1, p0, Lcom/android/email/activity/AccountFolderList$2;->this$0:Lcom/android/email/activity/AccountFolderList;

    invoke-static {v1}, Lcom/android/email/activity/AccountFolderList;->access$1000(Lcom/android/email/activity/AccountFolderList;)Lcom/android/email/activity/AccountFolderList$DeleteAccountTask;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/email/activity/AccountFolderList$DeleteAccountTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 834
    return-void
.end method
