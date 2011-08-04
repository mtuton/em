.class public Lcom/android/email/GroupMessagingListener;
.super Lcom/android/email/MessagingListener;
.source "GroupMessagingListener.java"


# instance fields
.field private mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/email/MessagingListener;",
            ">;"
        }
    .end annotation
.end field

.field private mListenersMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Lcom/android/email/MessagingListener;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/email/MessagingListener;-><init>()V

    .line 36
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/email/GroupMessagingListener;->mListenersMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 39
    iget-object v0, p0, Lcom/android/email/GroupMessagingListener;->mListenersMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/GroupMessagingListener;->mListeners:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public declared-synchronized addListener(Lcom/android/email/MessagingListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 43
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/email/GroupMessagingListener;->mListenersMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    monitor-exit p0

    return-void

    .line 43
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized checkMailFinished(Landroid/content/Context;JJJ)V
    .locals 9
    .parameter "context"
    .parameter "accountId"
    .parameter "folderId"
    .parameter "tag"

    .prologue
    .line 129
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/email/GroupMessagingListener;->mListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/MessagingListener;

    .local v0, l:Lcom/android/email/MessagingListener;
    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-wide v6, p6

    .line 130
    invoke-virtual/range {v0 .. v7}, Lcom/android/email/MessagingListener;->checkMailFinished(Landroid/content/Context;JJJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 129
    .end local v0           #l:Lcom/android/email/MessagingListener;
    .end local v8           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 132
    .restart local v8       #i$:Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized checkMailStarted(Landroid/content/Context;JJ)V
    .locals 7
    .parameter "context"
    .parameter "accountId"
    .parameter "tag"

    .prologue
    .line 121
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/email/GroupMessagingListener;->mListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/MessagingListener;

    .local v0, l:Lcom/android/email/MessagingListener;
    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .line 122
    invoke-virtual/range {v0 .. v5}, Lcom/android/email/MessagingListener;->checkMailStarted(Landroid/content/Context;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 121
    .end local v0           #l:Lcom/android/email/MessagingListener;
    .end local v6           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 124
    .restart local v6       #i$:Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized controllerCommandCompleted(Z)V
    .locals 3
    .parameter "moreCommandsToRun"

    .prologue
    .line 215
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/email/GroupMessagingListener;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/MessagingListener;

    .line 216
    .local v1, l:Lcom/android/email/MessagingListener;
    invoke-virtual {v1, p1}, Lcom/android/email/MessagingListener;->controllerCommandCompleted(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 215
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #l:Lcom/android/email/MessagingListener;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 218
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized isActiveListener(Lcom/android/email/MessagingListener;)Z
    .locals 1
    .parameter "listener"

    .prologue
    .line 51
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/email/GroupMessagingListener;->mListenersMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized listFoldersFailed(JLjava/lang/String;)V
    .locals 3
    .parameter "accountId"
    .parameter "message"

    .prologue
    .line 63
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/email/GroupMessagingListener;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/MessagingListener;

    .line 64
    .local v1, l:Lcom/android/email/MessagingListener;
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/email/MessagingListener;->listFoldersFailed(JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 63
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #l:Lcom/android/email/MessagingListener;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 66
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized listFoldersFinished(J)V
    .locals 3
    .parameter "accountId"

    .prologue
    .line 70
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/email/GroupMessagingListener;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/MessagingListener;

    .line 71
    .local v1, l:Lcom/android/email/MessagingListener;
    invoke-virtual {v1, p1, p2}, Lcom/android/email/MessagingListener;->listFoldersFinished(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 70
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #l:Lcom/android/email/MessagingListener;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 73
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized listFoldersStarted(J)V
    .locals 3
    .parameter "accountId"

    .prologue
    .line 56
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/email/GroupMessagingListener;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/MessagingListener;

    .line 57
    .local v1, l:Lcom/android/email/MessagingListener;
    invoke-virtual {v1, p1, p2}, Lcom/android/email/MessagingListener;->listFoldersStarted(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 56
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #l:Lcom/android/email/MessagingListener;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 59
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized loadAttachmentFailed(JJJLjava/lang/String;)V
    .locals 9
    .parameter "accountId"
    .parameter "messageId"
    .parameter "attachmentId"
    .parameter "reason"

    .prologue
    .line 208
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/email/GroupMessagingListener;->mListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/MessagingListener;

    .local v0, l:Lcom/android/email/MessagingListener;
    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    move-object/from16 v7, p7

    .line 209
    invoke-virtual/range {v0 .. v7}, Lcom/android/email/MessagingListener;->loadAttachmentFailed(JJJLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 208
    .end local v0           #l:Lcom/android/email/MessagingListener;
    .end local v8           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 211
    .restart local v8       #i$:Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized loadAttachmentFinished(JJJZ)V
    .locals 9
    .parameter "accountId"
    .parameter "messageId"
    .parameter "attachmentId"
    .parameter "requiresDownload"

    .prologue
    .line 197
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/email/GroupMessagingListener;->mListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/MessagingListener;

    .local v0, l:Lcom/android/email/MessagingListener;
    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    move/from16 v7, p7

    .line 198
    invoke-virtual/range {v0 .. v7}, Lcom/android/email/MessagingListener;->loadAttachmentFinished(JJJZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 197
    .end local v0           #l:Lcom/android/email/MessagingListener;
    .end local v8           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 200
    .restart local v8       #i$:Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized loadAttachmentStarted(JJJZ)V
    .locals 9
    .parameter "accountId"
    .parameter "messageId"
    .parameter "attachmentId"
    .parameter "requiresDownload"

    .prologue
    .line 185
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/email/GroupMessagingListener;->mListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/MessagingListener;

    .local v0, l:Lcom/android/email/MessagingListener;
    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    move/from16 v7, p7

    .line 186
    invoke-virtual/range {v0 .. v7}, Lcom/android/email/MessagingListener;->loadAttachmentStarted(JJJZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 185
    .end local v0           #l:Lcom/android/email/MessagingListener;
    .end local v8           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 188
    .restart local v8       #i$:Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized loadMessageForViewFailed(JLjava/lang/String;)V
    .locals 3
    .parameter "messageId"
    .parameter "message"

    .prologue
    .line 114
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/email/GroupMessagingListener;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/MessagingListener;

    .line 115
    .local v1, l:Lcom/android/email/MessagingListener;
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/email/MessagingListener;->loadMessageForViewFailed(JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 114
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #l:Lcom/android/email/MessagingListener;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 117
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized loadMessageForViewFinished(J)V
    .locals 3
    .parameter "messageId"

    .prologue
    .line 107
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/email/GroupMessagingListener;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/MessagingListener;

    .line 108
    .local v1, l:Lcom/android/email/MessagingListener;
    invoke-virtual {v1, p1, p2}, Lcom/android/email/MessagingListener;->loadMessageForViewFinished(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 107
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #l:Lcom/android/email/MessagingListener;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 110
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized loadMessageForViewStarted(J)V
    .locals 3
    .parameter "messageId"

    .prologue
    .line 100
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/email/GroupMessagingListener;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/MessagingListener;

    .line 101
    .local v1, l:Lcom/android/email/MessagingListener;
    invoke-virtual {v1, p1, p2}, Lcom/android/email/MessagingListener;->loadMessageForViewStarted(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 100
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #l:Lcom/android/email/MessagingListener;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 103
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized movemessageToOtherAccountCallback(ZJJJJJJII)V
    .locals 18
    .parameter "result"
    .parameter "messageId"
    .parameter "source_accountId"
    .parameter "orig_boxkey"
    .parameter "target_accountId"
    .parameter "target_boxkey"
    .parameter "source_trashMailboxId"
    .parameter "target_server_type"
    .parameter "source_server_type"

    .prologue
    .line 171
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/GroupMessagingListener;->mListeners:Ljava/util/Set;

    move-object v2, v0

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/MessagingListener;

    .local v1, l:Lcom/android/email/MessagingListener;
    move/from16 v2, p1

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    move-wide/from16 v11, p10

    move-wide/from16 v13, p12

    move/from16 v15, p14

    move/from16 v16, p15

    .line 172
    invoke-virtual/range {v1 .. v16}, Lcom/android/email/MessagingListener;->movemessageToOtherAccountCallback(ZJJJJJJII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 171
    .end local v1           #l:Lcom/android/email/MessagingListener;
    .end local v17           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 177
    .restart local v17       #i$:Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized removeListener(Lcom/android/email/MessagingListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 47
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/email/GroupMessagingListener;->mListenersMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    monitor-exit p0

    return-void

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized sendPendingMessagesCompleted(J)V
    .locals 3
    .parameter "accountId"

    .prologue
    .line 143
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/email/GroupMessagingListener;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/MessagingListener;

    .line 144
    .local v1, l:Lcom/android/email/MessagingListener;
    invoke-virtual {v1, p1, p2}, Lcom/android/email/MessagingListener;->sendPendingMessagesCompleted(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 143
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #l:Lcom/android/email/MessagingListener;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 146
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized sendPendingMessagesFailed(JJLjava/lang/Exception;)V
    .locals 7
    .parameter "accountId"
    .parameter "messageId"
    .parameter "reason"

    .prologue
    .line 151
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/email/GroupMessagingListener;->mListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/MessagingListener;

    .local v0, l:Lcom/android/email/MessagingListener;
    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    .line 152
    invoke-virtual/range {v0 .. v5}, Lcom/android/email/MessagingListener;->sendPendingMessagesFailed(JJLjava/lang/Exception;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 151
    .end local v0           #l:Lcom/android/email/MessagingListener;
    .end local v6           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 154
    .restart local v6       #i$:Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized sendPendingMessagesStarted(JJ)V
    .locals 3
    .parameter "accountId"
    .parameter "messageId"

    .prologue
    .line 136
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/email/GroupMessagingListener;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/MessagingListener;

    .line 137
    .local v1, l:Lcom/android/email/MessagingListener;
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/email/MessagingListener;->sendPendingMessagesStarted(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 136
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #l:Lcom/android/email/MessagingListener;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 139
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized synchronizeMailboxFailed(JJLjava/lang/Exception;)V
    .locals 7
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "e"

    .prologue
    .line 93
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/email/GroupMessagingListener;->mListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/MessagingListener;

    .local v0, l:Lcom/android/email/MessagingListener;
    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    .line 94
    invoke-virtual/range {v0 .. v5}, Lcom/android/email/MessagingListener;->synchronizeMailboxFailed(JJLjava/lang/Exception;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 93
    .end local v0           #l:Lcom/android/email/MessagingListener;
    .end local v6           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 96
    .restart local v6       #i$:Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized synchronizeMailboxFinished(JJII)V
    .locals 8
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "totalMessagesInMailbox"
    .parameter "numNewMessages"

    .prologue
    .line 85
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/email/GroupMessagingListener;->mListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/MessagingListener;

    .local v0, l:Lcom/android/email/MessagingListener;
    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    move v6, p6

    .line 86
    invoke-virtual/range {v0 .. v6}, Lcom/android/email/MessagingListener;->synchronizeMailboxFinished(JJII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 85
    .end local v0           #l:Lcom/android/email/MessagingListener;
    .end local v7           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 89
    .restart local v7       #i$:Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized synchronizeMailboxStarted(JJ)V
    .locals 3
    .parameter "accountId"
    .parameter "mailboxId"

    .prologue
    .line 77
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/email/GroupMessagingListener;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/MessagingListener;

    .line 78
    .local v1, l:Lcom/android/email/MessagingListener;
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/email/MessagingListener;->synchronizeMailboxStarted(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 77
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #l:Lcom/android/email/MessagingListener;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 80
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    return-void
.end method
