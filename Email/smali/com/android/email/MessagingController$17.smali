.class Lcom/android/email/MessagingController$17;
.super Ljava/lang/Object;
.source "MessagingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/MessagingController;->checkMail(JJLcom/android/email/MessagingListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/MessagingController;

.field final synthetic val$accountId:J

.field final synthetic val$tag:J


# direct methods
.method constructor <init>(Lcom/android/email/MessagingController;JJ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3904
    iput-object p1, p0, Lcom/android/email/MessagingController$17;->this$0:Lcom/android/email/MessagingController;

    iput-wide p2, p0, Lcom/android/email/MessagingController$17;->val$accountId:J

    iput-wide p4, p0, Lcom/android/email/MessagingController$17;->val$tag:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const-wide/16 v4, -0x1

    .line 3908
    const-wide/16 v8, -0x1

    .line 3909
    .local v8, inboxId:J
    iget-object v0, p0, Lcom/android/email/MessagingController$17;->this$0:Lcom/android/email/MessagingController;

    invoke-static {v0}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v0

    iget-wide v6, p0, Lcom/android/email/MessagingController$17;->val$accountId:J

    invoke-static {v0, v6, v7}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v1

    .line 3911
    .local v1, account:Lcom/android/email/provider/EmailContent$Account;
    iget-object v0, p0, Lcom/android/email/MessagingController$17;->this$0:Lcom/android/email/MessagingController;

    invoke-static {v0}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v0

    iget-wide v6, p0, Lcom/android/email/MessagingController$17;->val$accountId:J

    const/4 v10, 0x5

    invoke-static {v0, v6, v7, v10}, Lcom/android/email/provider/EmailContent$Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v2

    .line 3913
    .local v2, sentboxId:J
    if-eqz v1, :cond_0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 3914
    iget-object v0, p0, Lcom/android/email/MessagingController$17;->this$0:Lcom/android/email/MessagingController;

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/MessagingController;->sendPendingMessagesSynchronous(Lcom/android/email/provider/EmailContent$Account;JJ)V

    .line 3918
    iget-object v0, p0, Lcom/android/email/MessagingController$17;->this$0:Lcom/android/email/MessagingController;

    invoke-static {v0}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v0

    iget-wide v6, p0, Lcom/android/email/MessagingController$17;->val$accountId:J

    const/4 v10, 0x0

    invoke-static {v0, v6, v7, v10}, Lcom/android/email/provider/EmailContent$Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v8

    .line 3919
    cmp-long v0, v8, v4

    if-eqz v0, :cond_0

    .line 3920
    iget-object v0, p0, Lcom/android/email/MessagingController$17;->this$0:Lcom/android/email/MessagingController;

    invoke-static {v0}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v8, v9}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v12

    .line 3922
    .local v12, mailbox:Lcom/android/email/provider/EmailContent$Mailbox;
    if-eqz v12, :cond_0

    .line 3923
    iget-object v0, p0, Lcom/android/email/MessagingController$17;->this$0:Lcom/android/email/MessagingController;

    invoke-static {v0, v1, v12}, Lcom/android/email/MessagingController;->access$900(Lcom/android/email/MessagingController;Lcom/android/email/provider/EmailContent$Account;Lcom/android/email/provider/EmailContent$Mailbox;)V

    .line 3927
    .end local v12           #mailbox:Lcom/android/email/provider/EmailContent$Mailbox;
    :cond_0
    iget-object v0, p0, Lcom/android/email/MessagingController$17;->this$0:Lcom/android/email/MessagingController;

    invoke-static {v0}, Lcom/android/email/MessagingController;->access$300(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;

    move-result-object v4

    iget-object v0, p0, Lcom/android/email/MessagingController$17;->this$0:Lcom/android/email/MessagingController;

    invoke-static {v0}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v5

    iget-wide v6, p0, Lcom/android/email/MessagingController$17;->val$accountId:J

    iget-wide v10, p0, Lcom/android/email/MessagingController$17;->val$tag:J

    invoke-virtual/range {v4 .. v11}, Lcom/android/email/GroupMessagingListener;->checkMailFinished(Landroid/content/Context;JJJ)V

    .line 3928
    return-void
.end method
