.class Lcom/android/email/activity/MessageList$FindMailboxTask;
.super Landroid/os/AsyncTask;
.source "MessageList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FindMailboxTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field private mAccountId:J

.field private mMailboxType:I

.field private mOkToRecurse:Z

.field final synthetic this$0:Lcom/android/email/activity/MessageList;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/MessageList;JIZ)V
    .locals 0
    .parameter
    .parameter "accountId"
    .parameter "mailboxType"
    .parameter "okToRecurse"

    .prologue
    .line 4519
    iput-object p1, p0, Lcom/android/email/activity/MessageList$FindMailboxTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 4520
    iput-wide p2, p0, Lcom/android/email/activity/MessageList$FindMailboxTask;->mAccountId:J

    .line 4521
    iput p4, p0, Lcom/android/email/activity/MessageList$FindMailboxTask;->mMailboxType:I

    .line 4522
    iput-boolean p5, p0, Lcom/android/email/activity/MessageList$FindMailboxTask;->mOkToRecurse:Z

    .line 4523
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Long;
    .locals 6
    .parameter "params"

    .prologue
    .line 4528
    iget-object v2, p0, Lcom/android/email/activity/MessageList$FindMailboxTask;->this$0:Lcom/android/email/activity/MessageList;

    iget-wide v3, p0, Lcom/android/email/activity/MessageList$FindMailboxTask;->mAccountId:J

    iget v5, p0, Lcom/android/email/activity/MessageList$FindMailboxTask;->mMailboxType:I

    invoke-static {v2, v3, v4, v5}, Lcom/android/email/provider/EmailContent$Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v0

    .line 4529
    .local v0, mailboxId:J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/email/activity/MessageList$FindMailboxTask;->mOkToRecurse:Z

    if-eqz v2, :cond_0

    .line 4531
    iget-object v2, p0, Lcom/android/email/activity/MessageList$FindMailboxTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v2}, Lcom/android/email/activity/MessageList;->access$5000(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$ControllerResults;

    move-result-object v2

    iget v3, p0, Lcom/android/email/activity/MessageList$FindMailboxTask;->mMailboxType:I

    iput v3, v2, Lcom/android/email/activity/MessageList$ControllerResults;->mWaitForMailboxType:I

    .line 4532
    iget-object v2, p0, Lcom/android/email/activity/MessageList$FindMailboxTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v2}, Lcom/android/email/activity/MessageList;->access$2000(Lcom/android/email/activity/MessageList;)Lcom/android/email/Controller;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/email/activity/MessageList$FindMailboxTask;->mAccountId:J

    iget-object v5, p0, Lcom/android/email/activity/MessageList$FindMailboxTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v5}, Lcom/android/email/activity/MessageList;->access$5000(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$ControllerResults;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/email/Controller;->updateMailboxList(JLcom/android/email/Controller$Result;)V

    .line 4534
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    return-object v2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4510
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageList$FindMailboxTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Long;)V
    .locals 9
    .parameter "mailboxId"

    .prologue
    const/4 v8, 0x0

    .line 4539
    if-nez p1, :cond_1

    .line 4554
    :cond_0
    :goto_0
    return-void

    .line 4542
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 4543
    iget-object v0, p0, Lcom/android/email/activity/MessageList$FindMailboxTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/email/activity/MessageList;->access$302(Lcom/android/email/activity/MessageList;J)J

    .line 4544
    iget-object v0, p0, Lcom/android/email/activity/MessageList$FindMailboxTask;->this$0:Lcom/android/email/activity/MessageList;

    new-instance v1, Lcom/android/email/activity/MessageList$RefreshFolderListTask;

    iget-object v2, p0, Lcom/android/email/activity/MessageList$FindMailboxTask;->this$0:Lcom/android/email/activity/MessageList;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/email/activity/MessageList$RefreshFolderListTask;-><init>(Lcom/android/email/activity/MessageList;Lcom/android/email/activity/MessageList$1;)V

    invoke-static {v0, v1}, Lcom/android/email/activity/MessageList;->access$5102(Lcom/android/email/activity/MessageList;Lcom/android/email/activity/MessageList$RefreshFolderListTask;)Lcom/android/email/activity/MessageList$RefreshFolderListTask;

    .line 4545
    iget-object v0, p0, Lcom/android/email/activity/MessageList$FindMailboxTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$5100(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$RefreshFolderListTask;

    move-result-object v0

    new-array v1, v8, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageList$RefreshFolderListTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 4546
    iget-object v0, p0, Lcom/android/email/activity/MessageList$FindMailboxTask;->this$0:Lcom/android/email/activity/MessageList;

    new-instance v1, Lcom/android/email/activity/MessageList$SetTitleTask;

    iget-object v2, p0, Lcom/android/email/activity/MessageList$FindMailboxTask;->this$0:Lcom/android/email/activity/MessageList;

    iget-object v3, p0, Lcom/android/email/activity/MessageList$FindMailboxTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v3}, Lcom/android/email/activity/MessageList;->access$300(Lcom/android/email/activity/MessageList;)J

    move-result-wide v3

    invoke-direct {v1, v2, v3, v4}, Lcom/android/email/activity/MessageList$SetTitleTask;-><init>(Lcom/android/email/activity/MessageList;J)V

    invoke-static {v0, v1}, Lcom/android/email/activity/MessageList;->access$5202(Lcom/android/email/activity/MessageList;Lcom/android/email/activity/MessageList$SetTitleTask;)Lcom/android/email/activity/MessageList$SetTitleTask;

    .line 4547
    iget-object v0, p0, Lcom/android/email/activity/MessageList$FindMailboxTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$5200(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$SetTitleTask;

    move-result-object v0

    new-array v1, v8, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageList$SetTitleTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 4549
    iget-object v0, p0, Lcom/android/email/activity/MessageList$FindMailboxTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$5300(Lcom/android/email/activity/MessageList;)V

    .line 4551
    iget-object v7, p0, Lcom/android/email/activity/MessageList$FindMailboxTask;->this$0:Lcom/android/email/activity/MessageList;

    new-instance v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;

    iget-object v1, p0, Lcom/android/email/activity/MessageList$FindMailboxTask;->this$0:Lcom/android/email/activity/MessageList;

    iget-object v2, p0, Lcom/android/email/activity/MessageList$FindMailboxTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v2}, Lcom/android/email/activity/MessageList;->access$300(Lcom/android/email/activity/MessageList;)J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/email/activity/MessageList$FindMailboxTask;->mAccountId:J

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/android/email/activity/MessageList$LoadMessagesTask;-><init>(Lcom/android/email/activity/MessageList;JJZ)V

    invoke-static {v7, v0}, Lcom/android/email/activity/MessageList;->access$202(Lcom/android/email/activity/MessageList;Lcom/android/email/activity/MessageList$LoadMessagesTask;)Lcom/android/email/activity/MessageList$LoadMessagesTask;

    .line 4552
    iget-object v0, p0, Lcom/android/email/activity/MessageList$FindMailboxTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$200(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$LoadMessagesTask;

    move-result-object v0

    new-array v1, v8, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageList$LoadMessagesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 4510
    check-cast p1, Ljava/lang/Long;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageList$FindMailboxTask;->onPostExecute(Ljava/lang/Long;)V

    return-void
.end method
