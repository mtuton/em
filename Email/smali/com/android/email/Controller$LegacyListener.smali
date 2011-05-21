.class Lcom/android/email/Controller$LegacyListener;
.super Lcom/android/email/MessagingListener;
.source "Controller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/Controller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LegacyListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/Controller;


# direct methods
.method private constructor <init>(Lcom/android/email/Controller;)V
    .locals 0
    .parameter

    .prologue
    .line 2516
    iput-object p1, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    invoke-direct {p0}, Lcom/android/email/MessagingListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/Controller;Lcom/android/email/Controller$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2516
    invoke-direct {p0, p1}, Lcom/android/email/Controller$LegacyListener;-><init>(Lcom/android/email/Controller;)V

    return-void
.end method


# virtual methods
.method public checkMailFinished(Landroid/content/Context;JJJ)V
    .locals 11
    .parameter "context"
    .parameter "accountId"
    .parameter "folderId"
    .parameter "tag"

    .prologue
    .line 2592
    iget-object v1, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    invoke-static {v1}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v10

    monitor-enter v10

    .line 2593
    :try_start_0
    iget-object v1, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    invoke-static {v1}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/Controller$Result;

    .line 2594
    .local v0, l:Lcom/android/email/Controller$Result;
    const/4 v1, 0x0

    const/16 v6, 0x64

    move-wide v2, p2

    move-wide v4, p4

    move-wide/from16 v7, p6

    invoke-interface/range {v0 .. v8}, Lcom/android/email/Controller$Result;->serviceCheckMailCallback(Lcom/android/email/mail/MessagingException;JJIJ)V

    goto :goto_0

    .line 2596
    .end local v0           #l:Lcom/android/email/Controller$Result;
    .end local v9           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v1

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v9       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2597
    return-void
.end method

.method public checkMailStarted(Landroid/content/Context;JJ)V
    .locals 11
    .parameter "context"
    .parameter "accountId"
    .parameter "tag"

    .prologue
    .line 2583
    iget-object v1, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    invoke-static {v1}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v10

    monitor-enter v10

    .line 2584
    :try_start_0
    iget-object v1, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    invoke-static {v1}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/Controller$Result;

    .line 2585
    .local v0, l:Lcom/android/email/Controller$Result;
    const/4 v1, 0x0

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    move-wide v2, p2

    move-wide v7, p4

    invoke-interface/range {v0 .. v8}, Lcom/android/email/Controller$Result;->serviceCheckMailCallback(Lcom/android/email/mail/MessagingException;JJIJ)V

    goto :goto_0

    .line 2587
    .end local v0           #l:Lcom/android/email/Controller$Result;
    .end local v9           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v1

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v9       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2588
    return-void
.end method

.method public listFoldersFailed(JLjava/lang/String;)V
    .locals 5
    .parameter "accountId"
    .parameter "message"

    .prologue
    .line 2529
    iget-object v2, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    invoke-static {v2}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v2

    monitor-enter v2

    .line 2530
    :try_start_0
    iget-object v3, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    invoke-static {v3}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/Controller$Result;

    .line 2531
    .local v1, l:Lcom/android/email/Controller$Result;
    new-instance v3, Lcom/android/email/mail/MessagingException;

    invoke-direct {v3, p3}, Lcom/android/email/mail/MessagingException;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-interface {v1, v3, p1, p2, v4}, Lcom/android/email/Controller$Result;->updateMailboxListCallback(Lcom/android/email/mail/MessagingException;JI)V

    goto :goto_0

    .line 2533
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #l:Lcom/android/email/Controller$Result;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2534
    return-void
.end method

.method public listFoldersFinished(J)V
    .locals 5
    .parameter "accountId"

    .prologue
    .line 2538
    iget-object v2, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    invoke-static {v2}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v2

    monitor-enter v2

    .line 2539
    :try_start_0
    iget-object v3, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    invoke-static {v3}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/Controller$Result;

    .line 2540
    .local v1, l:Lcom/android/email/Controller$Result;
    const/4 v3, 0x0

    const/16 v4, 0x64

    invoke-interface {v1, v3, p1, p2, v4}, Lcom/android/email/Controller$Result;->updateMailboxListCallback(Lcom/android/email/mail/MessagingException;JI)V

    goto :goto_0

    .line 2542
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #l:Lcom/android/email/Controller$Result;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2543
    return-void
.end method

.method public listFoldersStarted(J)V
    .locals 5
    .parameter "accountId"

    .prologue
    .line 2520
    iget-object v2, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    invoke-static {v2}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v2

    monitor-enter v2

    .line 2521
    :try_start_0
    iget-object v3, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    invoke-static {v3}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/Controller$Result;

    .line 2522
    .local v1, l:Lcom/android/email/Controller$Result;
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v1, v3, p1, p2, v4}, Lcom/android/email/Controller$Result;->updateMailboxListCallback(Lcom/android/email/mail/MessagingException;JI)V

    goto :goto_0

    .line 2524
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #l:Lcom/android/email/Controller$Result;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2525
    return-void
.end method

.method public loadAttachmentFailed(JJJLjava/lang/String;)V
    .locals 11
    .parameter "accountId"
    .parameter "messageId"
    .parameter "attachmentId"
    .parameter "reason"

    .prologue
    .line 2664
    iget-object v3, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    invoke-static {v3}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v10

    monitor-enter v10

    .line 2665
    :try_start_0
    iget-object v3, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    invoke-static {v3}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/Controller$Result;

    .line 2669
    .local v2, listener:Lcom/android/email/Controller$Result;
    if-eqz p7, :cond_0

    const-string v3, "MessagingException.SECURITY_POLICIES_REQUIRED"

    move-object/from16 v0, p7

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2671
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "11111 Controller.java >>>>> loadAttachmentFailed()  >>>>> 2182"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2672
    new-instance v3, Lcom/android/email/mail/MessagingException;

    const/4 v4, 0x7

    invoke-direct {v3, v4}, Lcom/android/email/mail/MessagingException;-><init>(I)V

    const/4 v8, 0x0

    move-wide v4, p3

    move-wide/from16 v6, p5

    invoke-interface/range {v2 .. v8}, Lcom/android/email/Controller$Result;->loadAttachmentCallback(Lcom/android/email/mail/MessagingException;JJI)V

    goto :goto_0

    .line 2682
    .end local v2           #listener:Lcom/android/email/Controller$Result;
    .end local v9           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 2679
    .restart local v2       #listener:Lcom/android/email/Controller$Result;
    .restart local v9       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    new-instance v3, Lcom/android/email/mail/MessagingException;

    move-object v0, v3

    move-object/from16 v1, p7

    invoke-direct {v0, v1}, Lcom/android/email/mail/MessagingException;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x0

    move-wide v4, p3

    move-wide/from16 v6, p5

    invoke-interface/range {v2 .. v8}, Lcom/android/email/Controller$Result;->loadAttachmentCallback(Lcom/android/email/mail/MessagingException;JJI)V

    goto :goto_0

    .line 2682
    .end local v2           #listener:Lcom/android/email/Controller$Result;
    :cond_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2683
    return-void
.end method

.method public loadAttachmentFinished(JJJZ)V
    .locals 9
    .parameter "accountId"
    .parameter "messageId"
    .parameter "attachmentId"
    .parameter "requiresDownload"

    .prologue
    .line 2654
    iget-object v1, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    invoke-static {v1}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v8

    monitor-enter v8

    .line 2655
    :try_start_0
    iget-object v1, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    invoke-static {v1}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/Controller$Result;

    .line 2656
    .local v0, listener:Lcom/android/email/Controller$Result;
    const/4 v1, 0x0

    if-eqz p7, :cond_0

    const/16 v2, 0xc8

    move v6, v2

    :goto_1
    move-wide v2, p3

    move-wide v4, p5

    invoke-interface/range {v0 .. v6}, Lcom/android/email/Controller$Result;->loadAttachmentCallback(Lcom/android/email/mail/MessagingException;JJI)V

    goto :goto_0

    .line 2658
    .end local v0           #listener:Lcom/android/email/Controller$Result;
    .end local v7           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v1

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2656
    .restart local v0       #listener:Lcom/android/email/Controller$Result;
    .restart local v7       #i$:Ljava/util/Iterator;
    :cond_0
    const/16 v2, 0x64

    move v6, v2

    goto :goto_1

    .line 2658
    .end local v0           #listener:Lcom/android/email/Controller$Result;
    :cond_1
    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2659
    return-void
.end method

.method public loadAttachmentStarted(JJJZ)V
    .locals 9
    .parameter "accountId"
    .parameter "messageId"
    .parameter "attachmentId"
    .parameter "requiresDownload"

    .prologue
    .line 2641
    iget-object v1, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    invoke-static {v1}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v8

    monitor-enter v8

    .line 2642
    :try_start_0
    iget-object v1, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    invoke-static {v1}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/Controller$Result;

    .line 2644
    .local v0, listener:Lcom/android/email/Controller$Result;
    if-nez p7, :cond_0

    .line 2645
    const/4 v1, 0x0

    const/4 v6, 0x0

    move-wide v2, p3

    move-wide v4, p5

    invoke-interface/range {v0 .. v6}, Lcom/android/email/Controller$Result;->loadAttachmentCallback(Lcom/android/email/mail/MessagingException;JJI)V

    goto :goto_0

    .line 2647
    .end local v0           #listener:Lcom/android/email/Controller$Result;
    .end local v7           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v1

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v7       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2648
    return-void
.end method

.method public loadMessageForViewFailed(JLjava/lang/String;)V
    .locals 5
    .parameter "messageId"
    .parameter "message"

    .prologue
    .line 2619
    iget-object v2, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    invoke-static {v2}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v2

    monitor-enter v2

    .line 2620
    :try_start_0
    iget-object v3, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    invoke-static {v3}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/Controller$Result;

    .line 2623
    .local v1, listener:Lcom/android/email/Controller$Result;
    if-eqz p3, :cond_0

    const-string v3, "MessagingException.SECURITY_POLICIES_REQUIRED"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2625
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "11111 Controller.java >>>>> loadMessageForViewFailed()  >>>>> 2136"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2626
    new-instance v3, Lcom/android/email/mail/MessagingException;

    const/4 v4, 0x7

    invoke-direct {v3, v4}, Lcom/android/email/mail/MessagingException;-><init>(I)V

    const/4 v4, 0x0

    invoke-interface {v1, v3, p1, p2, v4}, Lcom/android/email/Controller$Result;->loadMessageForViewCallback(Lcom/android/email/mail/MessagingException;JI)V

    goto :goto_0

    .line 2635
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/android/email/Controller$Result;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 2632
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v1       #listener:Lcom/android/email/Controller$Result;
    :cond_0
    :try_start_1
    new-instance v3, Lcom/android/email/mail/MessagingException;

    invoke-direct {v3, p3}, Lcom/android/email/mail/MessagingException;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-interface {v1, v3, p1, p2, v4}, Lcom/android/email/Controller$Result;->loadMessageForViewCallback(Lcom/android/email/mail/MessagingException;JI)V

    goto :goto_0

    .line 2635
    .end local v1           #listener:Lcom/android/email/Controller$Result;
    :cond_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2636
    return-void
.end method

.method public loadMessageForViewFinished(J)V
    .locals 5
    .parameter "messageId"

    .prologue
    .line 2610
    iget-object v2, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    invoke-static {v2}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v2

    monitor-enter v2

    .line 2611
    :try_start_0
    iget-object v3, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    invoke-static {v3}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/Controller$Result;

    .line 2612
    .local v1, listener:Lcom/android/email/Controller$Result;
    const/4 v3, 0x0

    const/16 v4, 0x64

    invoke-interface {v1, v3, p1, p2, v4}, Lcom/android/email/Controller$Result;->loadMessageForViewCallback(Lcom/android/email/mail/MessagingException;JI)V

    goto :goto_0

    .line 2614
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/android/email/Controller$Result;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2615
    return-void
.end method

.method public loadMessageForViewStarted(J)V
    .locals 5
    .parameter "messageId"

    .prologue
    .line 2601
    iget-object v2, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    invoke-static {v2}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v2

    monitor-enter v2

    .line 2602
    :try_start_0
    iget-object v3, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    invoke-static {v3}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/Controller$Result;

    .line 2603
    .local v1, listener:Lcom/android/email/Controller$Result;
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v1, v3, p1, p2, v4}, Lcom/android/email/Controller$Result;->loadMessageForViewCallback(Lcom/android/email/mail/MessagingException;JI)V

    goto :goto_0

    .line 2605
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/android/email/Controller$Result;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2606
    return-void
.end method

.method public declared-synchronized movemessageToOtherAccountCallback(ZJJJJJJII)V
    .locals 31
    .parameter "result"
    .parameter "cur_messageId"
    .parameter "source_accountId"
    .parameter "orig_boxkey"
    .parameter "target_accountId"
    .parameter "target_boxkey"
    .parameter "source_trashMailboxId"
    .parameter "target_server_type"
    .parameter "source_server_type"

    .prologue
    .line 2725
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v29

    monitor-enter v29
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 2727
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/email/Controller;->access$900(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v30

    monitor-enter v30
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2729
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/email/Controller;->access$900(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashSet;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 2731
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/email/Controller;->access$900(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .local v23, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/email/Controller$AccountMoveMessageInfo;

    .line 2733
    .local v20, AMInfo:Lcom/android/email/Controller$AccountMoveMessageInfo;
    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/android/email/Controller$AccountMoveMessageInfo;->messageId:J

    move-wide v5, v0

    cmp-long v5, v5, p2

    if-nez v5, :cond_0

    .line 2735
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/email/Controller;->access$900(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 2741
    .end local v20           #AMInfo:Lcom/android/email/Controller$AccountMoveMessageInfo;
    .end local v23           #i$:Ljava/util/Iterator;
    :cond_1
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    .line 2742
    .local v12, messageIdset:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v12, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2744
    if-nez p1, :cond_3

    const/4 v5, 0x1

    move/from16 v0, p14

    move v1, v5

    if-ne v0, v1, :cond_3

    .line 2746
    const-string v5, "processPendingAccountMoveActions"

    const-string v6, "Target Server Sync Fail. Do not erase original mail from Source Server and Local DB"

    invoke-static {v5, v6}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 2814
    :cond_2
    :goto_0
    monitor-exit v30
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2815
    :try_start_3
    monitor-exit v29
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2816
    monitor-exit p0

    return-void

    .line 2748
    :cond_3
    const/4 v5, 0x2

    move/from16 v0, p15

    move v1, v5

    if-eq v0, v1, :cond_4

    .line 2750
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/email/Controller;->access$500(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v5

    move-object v0, v5

    move-wide/from16 v1, p4

    invoke-static {v0, v1, v2}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v7

    .line 2751
    .local v7, source_account:Lcom/android/email/provider/EmailContent$Account;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/email/Controller;->access$500(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    .line 2753
    .local v10, resolver:Landroid/content/ContentResolver;
    const-string v5, "processPendingAccountMoveActions"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Remove Local Message id : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 2754
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/email/Controller;->access$300(Lcom/android/email/Controller;)Lcom/android/email/MessagingController;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    move-object v6, v0

    invoke-static {v6}, Lcom/android/email/Controller;->access$500(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v6

    move-wide/from16 v8, p4

    move-wide/from16 v11, p2

    move/from16 v13, p14

    move/from16 v14, p15

    move-wide/from16 v15, p8

    move-wide/from16 v17, p10

    invoke-virtual/range {v5 .. v18}, Lcom/android/email/MessagingController;->processPendingDeletesForeverSynchronous(Landroid/content/Context;Lcom/android/email/provider/EmailContent$Account;JLandroid/content/ContentResolver;JIIJJ)V

    goto :goto_0

    .line 2814
    .end local v7           #source_account:Lcom/android/email/provider/EmailContent$Account;
    .end local v10           #resolver:Landroid/content/ContentResolver;
    .end local v12           #messageIdset:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    :catchall_0
    move-exception v5

    monitor-exit v30
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v5

    .line 2815
    :catchall_1
    move-exception v5

    monitor-exit v29
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 2725
    :catchall_2
    move-exception v5

    monitor-exit p0

    throw v5

    .line 2758
    .restart local v12       #messageIdset:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    :cond_4
    const/4 v5, 0x1

    move/from16 v0, p14

    move v1, v5

    if-ne v0, v1, :cond_5

    .line 2760
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/email/Controller;->access$500(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    .line 2761
    .restart local v10       #resolver:Landroid/content/ContentResolver;
    new-instance v21, Landroid/content/ContentValues;

    invoke-direct/range {v21 .. v21}, Landroid/content/ContentValues;-><init>()V

    .line 2762
    .local v21, cv:Landroid/content/ContentValues;
    const/16 v24, 0x0

    .line 2764
    .local v24, mServerId:Ljava/lang/String;
    const-string v5, "mailboxKey"

    invoke-static/range {p12 .. p13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v21

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2766
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/email/Controller;->access$500(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v5

    move-object v0, v5

    move-wide/from16 v1, p4

    move-wide/from16 v3, p2

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/email/provider/AttachmentProvider;->deleteAllAttachmentFiles(Landroid/content/Context;JJ)V

    .line 2768
    sget-object v5, Lcom/android/email/provider/EmailContent$Message;->SYNCED_CONTENT_URI:Landroid/net/Uri;

    move-object v0, v5

    move-wide/from16 v1, p2

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v28

    .line 2769
    .local v28, uri:Landroid/net/Uri;
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v10

    move-object/from16 v1, v28

    move-object/from16 v2, v21

    move-object v3, v5

    move-object v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2771
    .end local v10           #resolver:Landroid/content/ContentResolver;
    .end local v21           #cv:Landroid/content/ContentValues;
    .end local v24           #mServerId:Ljava/lang/String;
    .end local v28           #uri:Landroid/net/Uri;
    :cond_5
    if-nez p14, :cond_2

    .line 2773
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/email/Controller;->access$500(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v5

    move-object v0, v5

    move-wide/from16 v1, p2

    invoke-static {v0, v1, v2}, Lcom/android/email/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Message;

    move-result-object v26

    .line 2776
    .local v26, msg:Lcom/android/email/provider/EmailContent$Message;
    sget-object v5, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, v5

    move-wide/from16 v1, p2

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v28

    .line 2778
    .restart local v28       #uri:Landroid/net/Uri;
    new-instance v22, Landroid/content/ContentValues;

    invoke-direct/range {v22 .. v22}, Landroid/content/ContentValues;-><init>()V

    .line 2779
    .local v22, cv_1:Landroid/content/ContentValues;
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    move-object v5, v0

    const-string v6, "LocalAccountMoved-"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 2781
    new-instance v27, Ljava/lang/String;

    invoke-direct/range {v27 .. v27}, Ljava/lang/String;-><init>()V

    .line 2782
    .local v27, tmp_ServerId:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LocalAccountMoved-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 2783
    const-string v5, "syncServerId"

    move-object/from16 v0, v22

    move-object v1, v5

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2784
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/email/Controller;->access$500(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v5

    move-object/from16 v1, v28

    move-object/from16 v2, v22

    move-object v3, v6

    move-object v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2787
    .end local v27           #tmp_ServerId:Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/android/email/Controller;->bEAS2POP_EASTrashMove_Complete:Z

    .line 2788
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    move-object v11, v0

    move-wide/from16 v13, p4

    move-wide/from16 v15, p12

    move-wide/from16 v17, p6

    invoke-virtual/range {v11 .. v18}, Lcom/android/email/Controller;->EASMoveMessage(Ljava/util/HashSet;JJJ)V

    .line 2790
    const/16 v25, 0x0

    .line 2791
    .local v25, max_wait_cnt:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    move-object v5, v0

    iget-boolean v5, v5, Lcom/android/email/Controller;->bEAS2POP_EASTrashMove_Complete:Z

    if-nez v5, :cond_7

    const/16 v5, 0x64

    move/from16 v0, v25

    move v1, v5

    if-ge v0, v1, :cond_7

    .line 2793
    add-int/lit8 v25, v25, 0x1

    .line 2795
    const-string v5, "movemovemove"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "max_wait_cnt = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 2798
    const-wide/16 v5, 0x64

    :try_start_8
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_1

    .line 2799
    :catch_0
    move-exception v5

    goto :goto_1

    .line 2803
    :cond_7
    :try_start_9
    new-instance v21, Landroid/content/ContentValues;

    invoke-direct/range {v21 .. v21}, Landroid/content/ContentValues;-><init>()V

    .line 2804
    .restart local v21       #cv:Landroid/content/ContentValues;
    const-string v5, "accountKey"

    invoke-static/range {p8 .. p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v21

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2805
    const-string v5, "mailboxKey"

    invoke-static/range {p10 .. p11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v21

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2806
    const-string v5, "syncServerId"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LocalAccountMoved-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v21

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2807
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/email/Controller;->access$500(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v5

    move-object/from16 v1, v28

    move-object/from16 v2, v21

    move-object v3, v6

    move-object v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2810
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/email/Controller;->access$500(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v13

    move-wide/from16 v14, p4

    move-wide/from16 v16, p2

    move-wide/from16 v18, p8

    invoke-static/range {v13 .. v19}, Lcom/android/email/provider/AttachmentProvider;->moveAllAttachmentToOtherAccount(Landroid/content/Context;JJJ)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_0
.end method

.method public declared-synchronized sendPendingMessagesCompleted(J)V
    .locals 9
    .parameter "accountId"

    .prologue
    .line 2696
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    invoke-static {v1}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v8

    monitor-enter v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2697
    :try_start_1
    iget-object v1, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    invoke-static {v1}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/Controller$Result;

    .line 2698
    .local v0, listener:Lcom/android/email/Controller$Result;
    const/4 v1, 0x0

    const-wide/16 v4, -0x1

    const/16 v6, 0x64

    move-wide v2, p1

    invoke-interface/range {v0 .. v6}, Lcom/android/email/Controller$Result;->sendMailCallback(Lcom/android/email/mail/MessagingException;JJI)V

    goto :goto_0

    .line 2700
    .end local v0           #listener:Lcom/android/email/Controller$Result;
    .end local v7           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v1

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2696
    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1

    .line 2700
    .restart local v7       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2701
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized sendPendingMessagesFailed(JJLjava/lang/Exception;)V
    .locals 10
    .parameter "accountId"
    .parameter "messageId"
    .parameter "reason"

    .prologue
    .line 2707
    monitor-enter p0

    :try_start_0
    instance-of v3, p5, Lcom/android/email/mail/MessagingException;

    if-eqz v3, :cond_0

    .line 2708
    move-object v0, p5

    check-cast v0, Lcom/android/email/mail/MessagingException;

    move-object v2, v0

    .line 2712
    .local v2, me:Lcom/android/email/mail/MessagingException;
    :goto_0
    iget-object v3, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    invoke-static {v3}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v9

    monitor-enter v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2713
    :try_start_1
    iget-object v3, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    invoke-static {v3}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/Controller$Result;

    .line 2714
    .local v1, listener:Lcom/android/email/Controller$Result;
    const/4 v7, 0x0

    move-wide v3, p1

    move-wide v5, p3

    invoke-interface/range {v1 .. v7}, Lcom/android/email/Controller$Result;->sendMailCallback(Lcom/android/email/mail/MessagingException;JJI)V

    goto :goto_1

    .line 2716
    .end local v1           #listener:Lcom/android/email/Controller$Result;
    .end local v8           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2707
    .end local v2           #me:Lcom/android/email/mail/MessagingException;
    :catchall_1
    move-exception v3

    monitor-exit p0

    throw v3

    .line 2710
    :cond_0
    :try_start_3
    new-instance v2, Lcom/android/email/mail/MessagingException;

    invoke-virtual {p5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/email/mail/MessagingException;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .restart local v2       #me:Lcom/android/email/mail/MessagingException;
    goto :goto_0

    .line 2716
    .restart local v8       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_4
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2717
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized sendPendingMessagesStarted(JJ)V
    .locals 9
    .parameter "accountId"
    .parameter "messageId"

    .prologue
    .line 2687
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    invoke-static {v1}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v8

    monitor-enter v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2688
    :try_start_1
    iget-object v1, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    invoke-static {v1}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/Controller$Result;

    .line 2689
    .local v0, listener:Lcom/android/email/Controller$Result;
    const/4 v1, 0x0

    const/4 v6, 0x0

    move-wide v2, p1

    move-wide v4, p3

    invoke-interface/range {v0 .. v6}, Lcom/android/email/Controller$Result;->sendMailCallback(Lcom/android/email/mail/MessagingException;JJI)V

    goto :goto_0

    .line 2691
    .end local v0           #listener:Lcom/android/email/Controller$Result;
    .end local v7           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v1

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2687
    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1

    .line 2691
    .restart local v7       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2692
    monitor-exit p0

    return-void
.end method

.method public synchronizeMailboxFailed(JJLjava/lang/Exception;)V
    .locals 11
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "e"

    .prologue
    .line 2566
    const/4 v2, 0x0

    .line 2567
    .local v2, me:Lcom/android/email/mail/MessagingException;
    if-eqz p5, :cond_0

    .line 2568
    move-object/from16 v0, p5

    instance-of v0, v0, Lcom/android/email/mail/MessagingException;

    move v3, v0

    if-eqz v3, :cond_1

    .line 2569
    move-object/from16 v0, p5

    check-cast v0, Lcom/android/email/mail/MessagingException;

    move-object v2, v0

    .line 2574
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    invoke-static {v3}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v10

    monitor-enter v10

    .line 2575
    :try_start_0
    iget-object v3, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    invoke-static {v3}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/Controller$Result;

    .line 2576
    .local v1, l:Lcom/android/email/Controller$Result;
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-wide v3, p1

    move-wide v5, p3

    invoke-interface/range {v1 .. v8}, Lcom/android/email/Controller$Result;->updateMailboxCallback(Lcom/android/email/mail/MessagingException;JJII)V

    goto :goto_1

    .line 2578
    .end local v1           #l:Lcom/android/email/Controller$Result;
    .end local v9           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 2571
    :cond_1
    new-instance v2, Lcom/android/email/mail/MessagingException;

    .end local v2           #me:Lcom/android/email/mail/MessagingException;
    invoke-virtual/range {p5 .. p5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/email/mail/MessagingException;-><init>(Ljava/lang/String;)V

    .restart local v2       #me:Lcom/android/email/mail/MessagingException;
    goto :goto_0

    .line 2578
    .restart local v9       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2579
    return-void
.end method

.method public synchronizeMailboxFinished(JJII)V
    .locals 10
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "totalMessagesInMailbox"
    .parameter "numNewMessages"

    .prologue
    .line 2557
    iget-object v1, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    invoke-static {v1}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v9

    monitor-enter v9

    .line 2558
    :try_start_0
    iget-object v1, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    invoke-static {v1}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/Controller$Result;

    .line 2559
    .local v0, l:Lcom/android/email/Controller$Result;
    const/4 v1, 0x0

    const/16 v6, 0x64

    move-wide v2, p1

    move-wide v4, p3

    move/from16 v7, p6

    invoke-interface/range {v0 .. v7}, Lcom/android/email/Controller$Result;->updateMailboxCallback(Lcom/android/email/mail/MessagingException;JJII)V

    goto :goto_0

    .line 2561
    .end local v0           #l:Lcom/android/email/Controller$Result;
    .end local v8           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v1

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v8       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2562
    return-void
.end method

.method public synchronizeMailboxStarted(JJ)V
    .locals 10
    .parameter "accountId"
    .parameter "mailboxId"

    .prologue
    .line 2547
    iget-object v1, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    invoke-static {v1}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v9

    monitor-enter v9

    .line 2548
    :try_start_0
    iget-object v1, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    invoke-static {v1}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/Controller$Result;

    .line 2549
    .local v0, l:Lcom/android/email/Controller$Result;
    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-wide v2, p1

    move-wide v4, p3

    invoke-interface/range {v0 .. v7}, Lcom/android/email/Controller$Result;->updateMailboxCallback(Lcom/android/email/mail/MessagingException;JJII)V

    goto :goto_0

    .line 2551
    .end local v0           #l:Lcom/android/email/Controller$Result;
    .end local v8           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v1

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v8       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2552
    return-void
.end method
