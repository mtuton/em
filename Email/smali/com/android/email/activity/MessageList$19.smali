.class Lcom/android/email/activity/MessageList$19;
.super Ljava/lang/Object;
.source "MessageList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageList;->onFollowUpFlagConv(JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageList;

.field final synthetic val$accountId:J

.field final synthetic val$messageId:J


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageList;JJ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3587
    iput-object p1, p0, Lcom/android/email/activity/MessageList$19;->this$0:Lcom/android/email/activity/MessageList;

    iput-wide p2, p0, Lcom/android/email/activity/MessageList$19;->val$messageId:J

    iput-wide p4, p0, Lcom/android/email/activity/MessageList$19;->val$accountId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "item"

    .prologue
    .line 3589
    const/4 v0, -0x1

    .line 3598
    .local v0, newValue:I
    if-nez p2, :cond_1

    .line 3599
    iget-object v1, p0, Lcom/android/email/activity/MessageList$19;->this$0:Lcom/android/email/activity/MessageList;

    iget-wide v2, p0, Lcom/android/email/activity/MessageList$19;->val$messageId:J

    iget-wide v4, p0, Lcom/android/email/activity/MessageList$19;->val$accountId:J

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/email/activity/MessageList;->setConversation(JJ)V

    .line 3604
    :goto_0
    iget-object v1, p0, Lcom/android/email/activity/MessageList$19;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v1}, Lcom/android/email/activity/MessageList;->access$3000(Lcom/android/email/activity/MessageList;)Landroid/app/AlertDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3606
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>>>>>FollowUpFlag followUpFlagAlert >>>>>>>>>>>>>>>>>>>>>>>>>>> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/activity/MessageList$19;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v3}, Lcom/android/email/activity/MessageList;->access$3000(Lcom/android/email/activity/MessageList;)Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">>><<<"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 3608
    :cond_0
    iget-object v1, p0, Lcom/android/email/activity/MessageList$19;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v1}, Lcom/android/email/activity/MessageList;->access$3000(Lcom/android/email/activity/MessageList;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 3609
    return-void

    .line 3600
    :cond_1
    const/4 v1, 0x1

    if-ne p2, v1, :cond_2

    .line 3601
    iget-object v1, p0, Lcom/android/email/activity/MessageList$19;->this$0:Lcom/android/email/activity/MessageList;

    iget-wide v2, p0, Lcom/android/email/activity/MessageList$19;->val$messageId:J

    iget-wide v4, p0, Lcom/android/email/activity/MessageList$19;->val$accountId:J

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/email/activity/MessageList;->completeConversation(JJ)V

    goto :goto_0

    .line 3603
    :cond_2
    iget-object v1, p0, Lcom/android/email/activity/MessageList$19;->this$0:Lcom/android/email/activity/MessageList;

    iget-wide v2, p0, Lcom/android/email/activity/MessageList$19;->val$messageId:J

    iget-wide v4, p0, Lcom/android/email/activity/MessageList$19;->val$accountId:J

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/email/activity/MessageList;->clearConversation(JJ)V

    goto :goto_0
.end method
