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
    .line 3906
    iput-object p1, p0, Lcom/android/email/MessagingController$17;->this$0:Lcom/android/email/MessagingController;

    iput-wide p2, p0, Lcom/android/email/MessagingController$17;->val$accountId:J

    iput-wide p4, p0, Lcom/android/email/MessagingController$17;->val$tag:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const-wide/16 v13, -0x1

    const/4 v6, 0x0

    .line 3911
    const-wide/16 v4, -0x1

    .line 3912
    .local v4, inboxId:J
    iget-object v0, p0, Lcom/android/email/MessagingController$17;->this$0:Lcom/android/email/MessagingController;

    invoke-static {v0}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/email/MessagingController$17;->val$accountId:J

    invoke-static {v0, v1, v2}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v8

    .line 3914
    .local v8, account:Lcom/android/email/provider/EmailContent$Account;
    if-eqz v8, :cond_1

    .line 3915
    iget-object v0, p0, Lcom/android/email/MessagingController$17;->this$0:Lcom/android/email/MessagingController;

    invoke-static {v0}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/email/MessagingController$17;->val$accountId:J

    const/4 v3, 0x5

    invoke-static {v0, v1, v2, v3}, Lcom/android/email/provider/EmailContent$Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v11

    .line 3917
    .local v11, sentboxId:J
    cmp-long v0, v11, v13

    if-eqz v0, :cond_0

    .line 3918
    iget-object v0, p0, Lcom/android/email/MessagingController$17;->this$0:Lcom/android/email/MessagingController;

    invoke-virtual {v0, v8, v11, v12}, Lcom/android/email/MessagingController;->sendPendingMessagesSynchronous(Lcom/android/email/provider/EmailContent$Account;J)V

    .line 3922
    :cond_0
    iget-object v0, p0, Lcom/android/email/MessagingController$17;->this$0:Lcom/android/email/MessagingController;

    invoke-static {v0}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/email/MessagingController$17;->val$accountId:J

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/android/email/provider/EmailContent$Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v4

    .line 3923
    cmp-long v0, v4, v13

    if-eqz v0, :cond_1

    .line 3924
    iget-object v0, p0, Lcom/android/email/MessagingController$17;->this$0:Lcom/android/email/MessagingController;

    invoke-static {v0}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4, v5}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v10

    .line 3926
    .local v10, mailbox:Lcom/android/email/provider/EmailContent$Mailbox;
    if-eqz v10, :cond_1

    .line 3927
    iget-object v0, p0, Lcom/android/email/MessagingController$17;->this$0:Lcom/android/email/MessagingController;

    invoke-virtual {v0}, Lcom/android/email/MessagingController;->getLimitMessageCount()I

    move-result v0

    iput v0, v10, Lcom/android/email/provider/EmailContent$Mailbox;->mVisibleLimit:I

    .line 3928
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 3929
    .local v9, cv:Landroid/content/ContentValues;
    const-string v0, "visibleLimit"

    iget v1, v10, Lcom/android/email/provider/EmailContent$Mailbox;->mVisibleLimit:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3930
    iget-object v0, p0, Lcom/android/email/MessagingController$17;->this$0:Lcom/android/email/MessagingController;

    invoke-static {v0}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/email/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v9, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3931
    iget-object v0, p0, Lcom/android/email/MessagingController$17;->this$0:Lcom/android/email/MessagingController;

    invoke-static {v0, v8, v10}, Lcom/android/email/MessagingController;->access$900(Lcom/android/email/MessagingController;Lcom/android/email/provider/EmailContent$Account;Lcom/android/email/provider/EmailContent$Mailbox;)V

    .line 3935
    .end local v9           #cv:Landroid/content/ContentValues;
    .end local v10           #mailbox:Lcom/android/email/provider/EmailContent$Mailbox;
    .end local v11           #sentboxId:J
    :cond_1
    iget-object v0, p0, Lcom/android/email/MessagingController$17;->this$0:Lcom/android/email/MessagingController;

    invoke-static {v0}, Lcom/android/email/MessagingController;->access$300(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/MessagingController$17;->this$0:Lcom/android/email/MessagingController;

    invoke-static {v1}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/email/MessagingController$17;->val$accountId:J

    iget-wide v6, p0, Lcom/android/email/MessagingController$17;->val$tag:J

    invoke-virtual/range {v0 .. v7}, Lcom/android/email/GroupMessagingListener;->checkMailFinished(Landroid/content/Context;JJJ)V

    .line 3936
    return-void
.end method
