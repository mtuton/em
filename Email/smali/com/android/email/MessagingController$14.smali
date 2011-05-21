.class Lcom/android/email/MessagingController$14;
.super Ljava/lang/Object;
.source "MessagingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/MessagingController;->loadMessageForView(JLcom/android/email/MessagingListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/MessagingController;

.field final synthetic val$messageId:J


# direct methods
.method constructor <init>(Lcom/android/email/MessagingController;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3274
    iput-object p1, p0, Lcom/android/email/MessagingController$14;->this$0:Lcom/android/email/MessagingController;

    iput-wide p2, p0, Lcom/android/email/MessagingController$14;->val$messageId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    .line 3275
    const/4 v10, 0x0

    .line 3276
    .local v10, remoteStore:Lcom/android/email/mail/Store;
    const/4 v9, 0x0

    .line 3277
    .local v9, remoteFolder:Lcom/android/email/mail/Folder;
    const/4 v12, 0x0

    .line 3281
    .local v12, storeUri:Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/android/email/MessagingController$14;->this$0:Lcom/android/email/MessagingController;

    invoke-static {v0}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v0

    iget-wide v4, p0, Lcom/android/email/MessagingController$14;->val$messageId:J

    invoke-static {v0, v4, v5}, Lcom/android/email/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Message;

    move-result-object v8

    .line 3283
    .local v8, message:Lcom/android/email/provider/EmailContent$Message;
    if-nez v8, :cond_1

    .line 3284
    iget-object v0, p0, Lcom/android/email/MessagingController$14;->this$0:Lcom/android/email/MessagingController;

    invoke-static {v0}, Lcom/android/email/MessagingController;->access$300(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;

    move-result-object v0

    iget-wide v4, p0, Lcom/android/email/MessagingController$14;->val$messageId:J

    const-string v13, "Unknown message"

    invoke-virtual {v0, v4, v5, v13}, Lcom/android/email/GroupMessagingListener;->loadMessageForViewFailed(JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/android/email/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3405
    if-eqz v10, :cond_0

    .line 3406
    invoke-static {v12}, Lcom/android/email/mail/Store;->removeInstance(Ljava/lang/String;)V

    .line 3409
    .end local v8           #message:Lcom/android/email/provider/EmailContent$Message;
    :cond_0
    :goto_0
    return-void

    .line 3287
    .restart local v8       #message:Lcom/android/email/provider/EmailContent$Message;
    :cond_1
    :try_start_1
    iget v0, v8, Lcom/android/email/provider/EmailContent$Message;->mFlagLoaded:I

    if-ne v0, v13, :cond_2

    .line 3288
    iget-object v0, p0, Lcom/android/email/MessagingController$14;->this$0:Lcom/android/email/MessagingController;

    invoke-static {v0}, Lcom/android/email/MessagingController;->access$300(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;

    move-result-object v0

    iget-wide v4, p0, Lcom/android/email/MessagingController$14;->val$messageId:J

    invoke-virtual {v0, v4, v5}, Lcom/android/email/GroupMessagingListener;->loadMessageForViewFinished(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/android/email/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3405
    if-eqz v10, :cond_0

    .line 3406
    invoke-static {v12}, Lcom/android/email/mail/Store;->removeInstance(Ljava/lang/String;)V

    goto :goto_0

    .line 3295
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/android/email/MessagingController$14;->this$0:Lcom/android/email/MessagingController;

    invoke-static {v0}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v0

    iget-wide v4, v8, Lcom/android/email/provider/EmailContent$Message;->mAccountKey:J

    invoke-static {v0, v4, v5}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v2

    .line 3297
    .local v2, account:Lcom/android/email/provider/EmailContent$Account;
    iget-object v0, p0, Lcom/android/email/MessagingController$14;->this$0:Lcom/android/email/MessagingController;

    invoke-static {v0}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v0

    iget-wide v4, v8, Lcom/android/email/provider/EmailContent$Message;->mMailboxKey:J

    invoke-static {v0, v4, v5}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v3

    .line 3299
    .local v3, mailbox:Lcom/android/email/provider/EmailContent$Mailbox;
    if-eqz v2, :cond_3

    if-nez v3, :cond_4

    .line 3300
    :cond_3
    iget-object v0, p0, Lcom/android/email/MessagingController$14;->this$0:Lcom/android/email/MessagingController;

    invoke-static {v0}, Lcom/android/email/MessagingController;->access$300(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;

    move-result-object v0

    iget-wide v4, p0, Lcom/android/email/MessagingController$14;->val$messageId:J

    const-string v13, "null account or mailbox"

    invoke-virtual {v0, v4, v5, v13}, Lcom/android/email/GroupMessagingListener;->loadMessageForViewFailed(JLjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/android/email/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 3405
    if-eqz v10, :cond_0

    .line 3406
    invoke-static {v12}, Lcom/android/email/mail/Store;->removeInstance(Ljava/lang/String;)V

    goto :goto_0

    .line 3316
    :cond_4
    :try_start_3
    iget-object v0, p0, Lcom/android/email/MessagingController$14;->this$0:Lcom/android/email/MessagingController;

    invoke-static {v0}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/email/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    .line 3317
    iget-object v0, p0, Lcom/android/email/MessagingController$14;->this$0:Lcom/android/email/MessagingController;

    invoke-static {v0}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v0

    const/4 v4, 0x0

    invoke-static {v12, v0, v4}, Lcom/android/email/mail/Store;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/Store;

    move-result-object v10

    .line 3319
    iget-object v0, v3, Lcom/android/email/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v10, v0}, Lcom/android/email/mail/Store;->getFolder(Ljava/lang/String;)Lcom/android/email/mail/Folder;

    move-result-object v9

    .line 3320
    sget-object v0, Lcom/android/email/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/email/mail/Folder$OpenMode;

    const/4 v4, 0x0

    invoke-virtual {v9, v0, v4}, Lcom/android/email/mail/Folder;->open(Lcom/android/email/mail/Folder$OpenMode;Lcom/android/email/mail/Folder$PersistentDataCallbacks;)V

    .line 3343
    iget-object v0, v8, Lcom/android/email/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v9, v0}, Lcom/android/email/mail/Folder;->getMessage(Ljava/lang/String;)Lcom/android/email/mail/Message;

    move-result-object v1

    .line 3345
    .local v1, remoteMessage:Lcom/android/email/mail/Message;
    if-nez v1, :cond_5

    .line 3346
    iget-object v0, p0, Lcom/android/email/MessagingController$14;->this$0:Lcom/android/email/MessagingController;

    invoke-static {v0}, Lcom/android/email/MessagingController;->access$300(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;

    move-result-object v0

    iget-wide v4, p0, Lcom/android/email/MessagingController$14;->val$messageId:J

    const-string v13, "no message exist"

    invoke-virtual {v0, v4, v5, v13}, Lcom/android/email/GroupMessagingListener;->loadMessageForViewFailed(JLjava/lang/String;)V

    .line 3347
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Lcom/android/email/mail/Folder;->close(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lcom/android/email/mail/MessagingException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    .line 3405
    if-eqz v10, :cond_0

    .line 3406
    invoke-static {v12}, Lcom/android/email/mail/Store;->removeInstance(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3351
    :cond_5
    :try_start_4
    new-instance v6, Lcom/android/email/mail/FetchProfile;

    invoke-direct {v6}, Lcom/android/email/mail/FetchProfile;-><init>()V

    .line 3352
    .local v6, fp:Lcom/android/email/mail/FetchProfile;
    sget-object v0, Lcom/android/email/mail/FetchProfile$Item;->BODY:Lcom/android/email/mail/FetchProfile$Item;

    invoke-virtual {v6, v0}, Lcom/android/email/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 3353
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/email/mail/Message;

    const/4 v4, 0x0

    aput-object v1, v0, v4

    const/4 v4, 0x0

    invoke-virtual {v9, v0, v6, v4}, Lcom/android/email/mail/Folder;->fetch([Lcom/android/email/mail/Message;Lcom/android/email/mail/FetchProfile;Lcom/android/email/mail/MessageRetrievalListener;)V

    .line 3373
    iget-object v0, p0, Lcom/android/email/MessagingController$14;->this$0:Lcom/android/email/MessagingController;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/android/email/MessagingController;->access$800(Lcom/android/email/MessagingController;Lcom/android/email/mail/Message;Lcom/android/email/provider/EmailContent$Account;Lcom/android/email/provider/EmailContent$Mailbox;IZ)V

    .line 3394
    iget-object v0, p0, Lcom/android/email/MessagingController$14;->this$0:Lcom/android/email/MessagingController;

    invoke-static {v0}, Lcom/android/email/MessagingController;->access$300(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;

    move-result-object v0

    iget-wide v4, p0, Lcom/android/email/MessagingController$14;->val$messageId:J

    invoke-virtual {v0, v4, v5}, Lcom/android/email/GroupMessagingListener;->loadMessageForViewFinished(J)V

    .line 3397
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Lcom/android/email/mail/Folder;->close(Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/android/email/mail/MessagingException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1

    .line 3405
    if-eqz v10, :cond_0

    .line 3406
    invoke-static {v12}, Lcom/android/email/mail/Store;->removeInstance(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3398
    .end local v1           #remoteMessage:Lcom/android/email/mail/Message;
    .end local v2           #account:Lcom/android/email/provider/EmailContent$Account;
    .end local v3           #mailbox:Lcom/android/email/provider/EmailContent$Mailbox;
    .end local v6           #fp:Lcom/android/email/mail/FetchProfile;
    .end local v8           #message:Lcom/android/email/provider/EmailContent$Message;
    :catch_0
    move-exception v0

    move-object v7, v0

    .line 3400
    .local v7, me:Lcom/android/email/mail/MessagingException;
    :try_start_5
    iget-object v0, p0, Lcom/android/email/MessagingController$14;->this$0:Lcom/android/email/MessagingController;

    invoke-static {v0}, Lcom/android/email/MessagingController;->access$300(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;

    move-result-object v0

    iget-wide v4, p0, Lcom/android/email/MessagingController$14;->val$messageId:J

    invoke-virtual {v7}, Lcom/android/email/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v4, v5, v13}, Lcom/android/email/GroupMessagingListener;->loadMessageForViewFailed(JLjava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 3405
    if-eqz v10, :cond_0

    .line 3406
    invoke-static {v12}, Lcom/android/email/mail/Store;->removeInstance(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3401
    .end local v7           #me:Lcom/android/email/mail/MessagingException;
    :catch_1
    move-exception v0

    move-object v11, v0

    .line 3402
    .local v11, rte:Ljava/lang/RuntimeException;
    :try_start_6
    iget-object v0, p0, Lcom/android/email/MessagingController$14;->this$0:Lcom/android/email/MessagingController;

    invoke-static {v0}, Lcom/android/email/MessagingController;->access$300(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;

    move-result-object v0

    iget-wide v4, p0, Lcom/android/email/MessagingController$14;->val$messageId:J

    invoke-virtual {v11}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v4, v5, v13}, Lcom/android/email/GroupMessagingListener;->loadMessageForViewFailed(JLjava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 3405
    if-eqz v10, :cond_0

    .line 3406
    invoke-static {v12}, Lcom/android/email/mail/Store;->removeInstance(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3405
    .end local v11           #rte:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v0

    if-eqz v10, :cond_6

    .line 3406
    invoke-static {v12}, Lcom/android/email/mail/Store;->removeInstance(Ljava/lang/String;)V

    :cond_6
    throw v0
.end method
