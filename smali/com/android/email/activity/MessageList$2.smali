.class Lcom/android/email/activity/MessageList$2;
.super Landroid/content/BroadcastReceiver;
.source "MessageList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageList;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageList;)V
    .locals 0
    .parameter

    .prologue
    .line 739
    iput-object p1, p0, Lcom/android/email/activity/MessageList$2;->this$0:Lcom/android/email/activity/MessageList;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 741
    if-eqz p2, :cond_0

    .line 742
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    .line 743
    .local v7, action:Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 744
    const-string v0, "android.intent.action.EMAILSEARCH_COMPLETED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 745
    iget-object v0, p0, Lcom/android/email/activity/MessageList$2;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$100(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$MessageListHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageList$MessageListHandler;->progress(Z)V

    .line 747
    const-string v0, "SearchResult"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 748
    .local v9, result:I
    const-string v0, "Total"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 749
    .local v11, total:I
    const-string v0, "StartRange"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 750
    .local v10, startRange:I
    const-string v0, "EndRange"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 751
    .local v8, endRange:I
    const-string v0, "MessageList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "result ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " total = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "startRange = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "endRange ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    if-gtz v11, :cond_1

    .line 753
    iget-object v0, p0, Lcom/android/email/activity/MessageList$2;->this$0:Lcom/android/email/activity/MessageList;

    iget-object v1, p0, Lcom/android/email/activity/MessageList$2;->this$0:Lcom/android/email/activity/MessageList;

    const v2, 0x7f080226

    invoke-virtual {v1, v2}, Lcom/android/email/activity/MessageList;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 771
    .end local v7           #action:Ljava/lang/String;
    .end local v8           #endRange:I
    .end local v9           #result:I
    .end local v10           #startRange:I
    .end local v11           #total:I
    :cond_0
    :goto_0
    return-void

    .line 755
    .restart local v7       #action:Ljava/lang/String;
    .restart local v8       #endRange:I
    .restart local v9       #result:I
    .restart local v10       #startRange:I
    .restart local v11       #total:I
    :cond_1
    add-int/lit8 v0, v8, 0x1

    if-le v11, v0, :cond_3

    .line 756
    iget-object v0, p0, Lcom/android/email/activity/MessageList$2;->this$0:Lcom/android/email/activity/MessageList;

    iget-object v1, p0, Lcom/android/email/activity/MessageList$2;->this$0:Lcom/android/email/activity/MessageList;

    const v2, 0x7f080229

    invoke-virtual {v1, v2}, Lcom/android/email/activity/MessageList;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 759
    :goto_1
    iget-object v0, p0, Lcom/android/email/activity/MessageList$2;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$200(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$LoadMessagesTask;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/email/activity/MessageList$2;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$200(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$LoadMessagesTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/MessageList$LoadMessagesTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_2

    .line 760
    iget-object v0, p0, Lcom/android/email/activity/MessageList$2;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$200(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$LoadMessagesTask;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageList$LoadMessagesTask;->cancel(Z)Z

    .line 761
    iget-object v0, p0, Lcom/android/email/activity/MessageList$2;->this$0:Lcom/android/email/activity/MessageList;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/email/activity/MessageList;->access$202(Lcom/android/email/activity/MessageList;Lcom/android/email/activity/MessageList$LoadMessagesTask;)Lcom/android/email/activity/MessageList$LoadMessagesTask;

    .line 763
    :cond_2
    iget-object v7, p0, Lcom/android/email/activity/MessageList$2;->this$0:Lcom/android/email/activity/MessageList;

    .end local v7           #action:Ljava/lang/String;
    new-instance v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;

    iget-object v1, p0, Lcom/android/email/activity/MessageList$2;->this$0:Lcom/android/email/activity/MessageList;

    iget-object v2, p0, Lcom/android/email/activity/MessageList$2;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v2}, Lcom/android/email/activity/MessageList;->access$300(Lcom/android/email/activity/MessageList;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/android/email/activity/MessageList$LoadMessagesTask;-><init>(Lcom/android/email/activity/MessageList;JJZ)V

    invoke-static {v7, v0}, Lcom/android/email/activity/MessageList;->access$202(Lcom/android/email/activity/MessageList;Lcom/android/email/activity/MessageList$LoadMessagesTask;)Lcom/android/email/activity/MessageList$LoadMessagesTask;

    .line 764
    iget-object v0, p0, Lcom/android/email/activity/MessageList$2;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$200(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$LoadMessagesTask;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageList$LoadMessagesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 758
    .restart local v7       #action:Ljava/lang/String;
    :cond_3
    iget-object v0, p0, Lcom/android/email/activity/MessageList$2;->this$0:Lcom/android/email/activity/MessageList;

    iget-object v1, p0, Lcom/android/email/activity/MessageList$2;->this$0:Lcom/android/email/activity/MessageList;

    const v2, 0x7f080225

    invoke-virtual {v1, v2}, Lcom/android/email/activity/MessageList;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method
