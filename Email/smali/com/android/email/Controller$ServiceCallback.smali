.class Lcom/android/email/Controller$ServiceCallback;
.super Lcom/android/email/service/IEmailServiceCallback$Stub;
.source "Controller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/Controller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/Controller;


# direct methods
.method private constructor <init>(Lcom/android/email/Controller;)V
    .locals 0
    .parameter

    .prologue
    .line 3168
    iput-object p1, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    invoke-direct {p0}, Lcom/android/email/service/IEmailServiceCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/Controller;Lcom/android/email/Controller$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3168
    invoke-direct {p0, p1}, Lcom/android/email/Controller$ServiceCallback;-><init>(Lcom/android/email/Controller;)V

    return-void
.end method

.method private mapStatusToException(I)Lcom/android/email/mail/MessagingException;
    .locals 5
    .parameter "statusCode"

    .prologue
    const/high16 v4, 0x3

    const/16 v3, 0xa

    const/4 v2, 0x1

    .line 3456
    sparse-switch p1, :sswitch_data_0

    .line 3518
    new-instance v0, Lcom/android/email/mail/MessagingException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/email/mail/MessagingException;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v0

    .line 3459
    :sswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 3462
    :sswitch_1
    new-instance v0, Lcom/android/email/mail/AuthenticationFailedException;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/android/email/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 3465
    :sswitch_2
    new-instance v0, Lcom/android/email/mail/MessagingException;

    invoke-direct {v0, v2}, Lcom/android/email/mail/MessagingException;-><init>(I)V

    goto :goto_0

    .line 3471
    :sswitch_3
    new-instance v0, Lcom/android/email/mail/MessagingException;

    const/4 v1, -0x2

    invoke-direct {v0, v2, v1}, Lcom/android/email/mail/MessagingException;-><init>(II)V

    goto :goto_0

    .line 3477
    :sswitch_4
    new-instance v0, Lcom/android/email/mail/MessagingException;

    const/4 v1, -0x3

    invoke-direct {v0, v2, v1}, Lcom/android/email/mail/MessagingException;-><init>(II)V

    goto :goto_0

    .line 3480
    :sswitch_5
    new-instance v0, Lcom/android/email/mail/MessagingException;

    const/4 v1, -0x4

    invoke-direct {v0, v3, v1}, Lcom/android/email/mail/MessagingException;-><init>(II)V

    goto :goto_0

    .line 3483
    :sswitch_6
    new-instance v0, Lcom/android/email/mail/MessagingException;

    const/4 v1, -0x5

    invoke-direct {v0, v3, v1}, Lcom/android/email/mail/MessagingException;-><init>(II)V

    goto :goto_0

    .line 3486
    :sswitch_7
    new-instance v0, Lcom/android/email/mail/MessagingException;

    const/4 v1, -0x6

    invoke-direct {v0, v3, v1}, Lcom/android/email/mail/MessagingException;-><init>(II)V

    goto :goto_0

    .line 3491
    :sswitch_8
    new-instance v0, Lcom/android/email/mail/MessagingException;

    const/high16 v1, 0x7

    invoke-direct {v0, v4, v1}, Lcom/android/email/mail/MessagingException;-><init>(II)V

    goto :goto_0

    .line 3496
    :sswitch_9
    new-instance v0, Lcom/android/email/mail/MessagingException;

    const/high16 v1, 0x10

    invoke-direct {v0, v4, v1}, Lcom/android/email/mail/MessagingException;-><init>(II)V

    goto :goto_0

    .line 3500
    :sswitch_a
    new-instance v0, Lcom/android/email/mail/MessagingException;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lcom/android/email/mail/MessagingException;-><init>(I)V

    goto :goto_0

    .line 3504
    :sswitch_b
    new-instance v0, Lcom/android/email/mail/DeviceAccessException;

    const v1, 0x40001

    const v2, 0x7f0802cb

    invoke-direct {v0, v1, v2}, Lcom/android/email/mail/DeviceAccessException;-><init>(II)V

    goto :goto_0

    .line 3507
    :sswitch_c
    new-instance v0, Lcom/android/email/mail/DeviceAccessException;

    const v1, 0x40002

    const v2, 0x7f0802cd

    invoke-direct {v0, v1, v2}, Lcom/android/email/mail/DeviceAccessException;-><init>(II)V

    goto :goto_0

    .line 3456
    :sswitch_data_0
    .sparse-switch
        -0x6 -> :sswitch_7
        -0x5 -> :sswitch_6
        -0x4 -> :sswitch_5
        -0x3 -> :sswitch_4
        -0x2 -> :sswitch_3
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x3 -> :sswitch_b
        0x4 -> :sswitch_c
        0x16 -> :sswitch_1
        0x17 -> :sswitch_a
        0x20 -> :sswitch_2
        0x70000 -> :sswitch_8
        0x100000 -> :sswitch_9
    .end sparse-switch
.end method


# virtual methods
.method public emptyTrashStatus(JII)V
    .locals 5
    .parameter "accountId"
    .parameter "statusCode"
    .parameter "progress"

    .prologue
    .line 3384
    invoke-direct {p0, p3}, Lcom/android/email/Controller$ServiceCallback;->mapStatusToException(I)Lcom/android/email/mail/MessagingException;

    move-result-object v2

    .line 3385
    .local v2, result:Lcom/android/email/mail/MessagingException;
    packed-switch p3, :pswitch_data_0

    .line 3396
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    invoke-static {v3}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v3

    monitor-enter v3

    .line 3397
    :try_start_0
    iget-object v4, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    invoke-static {v4}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/Controller$Result;

    .line 3398
    .local v1, listener:Lcom/android/email/Controller$Result;
    invoke-interface {v1, v2, p1, p2, p4}, Lcom/android/email/Controller$Result;->emptyTrashCallback(Lcom/android/email/mail/MessagingException;JI)V

    goto :goto_1

    .line 3400
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/android/email/Controller$Result;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 3387
    :pswitch_0
    const/16 p4, 0x64

    .line 3388
    goto :goto_0

    .line 3391
    :pswitch_1
    if-ltz p4, :cond_1

    const/16 v3, 0x64

    if-lt p4, v3, :cond_0

    .line 3401
    :cond_1
    :goto_2
    return-void

    .line 3400
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 3385
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public folderCommandStatus(IJI)V
    .locals 5
    .parameter "command"
    .parameter "mailboxId"
    .parameter "statusCode"

    .prologue
    .line 3266
    invoke-direct {p0, p4}, Lcom/android/email/Controller$ServiceCallback;->mapStatusToException(I)Lcom/android/email/mail/MessagingException;

    move-result-object v2

    .line 3267
    .local v2, result:Lcom/android/email/mail/MessagingException;
    iget-object v3, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    invoke-static {v3}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v3

    monitor-enter v3

    .line 3268
    :try_start_0
    iget-object v4, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    invoke-static {v4}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/Controller$Result;

    .line 3269
    .local v1, listener:Lcom/android/email/Controller$Result;
    invoke-interface {v1, p1, v2, p2, p3}, Lcom/android/email/Controller$Result;->folderCommandCallback(ILcom/android/email/mail/MessagingException;J)V

    goto :goto_0

    .line 3271
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/android/email/Controller$Result;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3272
    return-void
.end method

.method public loadAttachmentStatus(JJII)V
    .locals 9
    .parameter "messageId"
    .parameter "attachmentId"
    .parameter "statusCode"
    .parameter "progress"

    .prologue
    .line 3175
    iget-object v2, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    invoke-static {v2}, Lcom/android/email/Controller;->access$900(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v2

    monitor-enter v2

    .line 3177
    :try_start_0
    iget-object v3, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    invoke-static {v3}, Lcom/android/email/Controller;->access$900(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/email/Controller$AccountMoveMessageInfo;

    .line 3179
    .local v7, AMInfo:Lcom/android/email/Controller$AccountMoveMessageInfo;
    iget-wide v3, v7, Lcom/android/email/Controller$AccountMoveMessageInfo;->messageId:J

    cmp-long v3, v3, p1

    if-nez v3, :cond_0

    .line 3182
    const/16 v3, 0x11

    if-eq p5, v3, :cond_1

    if-eqz p5, :cond_2

    const/4 v3, 0x1

    if-eq p5, v3, :cond_2

    .line 3184
    :cond_1
    iget-object v3, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    invoke-static {v3}, Lcom/android/email/Controller;->access$900(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 3187
    :cond_2
    monitor-exit v2

    .line 3228
    .end local v7           #AMInfo:Lcom/android/email/Controller$AccountMoveMessageInfo;
    :cond_3
    :goto_0
    return-void

    .line 3190
    :cond_4
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3193
    invoke-direct {p0, p5}, Lcom/android/email/Controller$ServiceCallback;->mapStatusToException(I)Lcom/android/email/mail/MessagingException;

    move-result-object v1

    .line 3194
    .local v1, result:Lcom/android/email/mail/MessagingException;
    packed-switch p5, :pswitch_data_0

    .line 3209
    :cond_5
    :goto_1
    iget-object v2, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    invoke-static {v2}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v7

    monitor-enter v7

    .line 3210
    :try_start_1
    iget-object v2, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    invoke-static {v2}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/Controller$Result;

    .line 3212
    .local v0, listener:Lcom/android/email/Controller$Result;
    iget-object v2, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    invoke-static {v2}, Lcom/android/email/Controller;->access$500(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p3, p4}, Lcom/android/email/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Attachment;

    move-result-object v2

    iget-object v2, v2, Lcom/android/email/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 3213
    sparse-switch p6, :sswitch_data_0

    :cond_6
    :goto_3
    move-wide v2, p1

    move-wide v4, p3

    move v6, p6

    .line 3225
    invoke-interface/range {v0 .. v6}, Lcom/android/email/Controller$Result;->loadAttachmentCallback(Lcom/android/email/mail/MessagingException;JJI)V

    goto :goto_2

    .line 3227
    .end local v0           #listener:Lcom/android/email/Controller$Result;
    :catchall_0
    move-exception v2

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 3190
    .end local v1           #result:Lcom/android/email/mail/MessagingException;
    .end local v8           #i$:Ljava/util/Iterator;
    :catchall_1
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    .line 3196
    .restart local v1       #result:Lcom/android/email/mail/MessagingException;
    .restart local v8       #i$:Ljava/util/Iterator;
    :pswitch_0
    const/16 p6, 0x64

    .line 3197
    goto :goto_1

    .line 3204
    :pswitch_1
    if-ltz p6, :cond_3

    const/16 v2, 0x64

    if-lt p6, v2, :cond_5

    goto :goto_0

    .line 3215
    .restart local v0       #listener:Lcom/android/email/Controller$Result;
    :sswitch_0
    const/4 p6, -0x1

    .line 3216
    goto :goto_3

    .line 3218
    :sswitch_1
    const/16 p6, 0xc8

    goto :goto_3

    .line 3227
    .end local v0           #listener:Lcom/android/email/Controller$Result;
    :cond_7
    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 3194
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 3213
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x64 -> :sswitch_1
    .end sparse-switch
.end method

.method public loadMoreStatus(JII)V
    .locals 5
    .parameter "messageId"
    .parameter "statusCode"
    .parameter "progress"

    .prologue
    .line 3341
    invoke-direct {p0, p3}, Lcom/android/email/Controller$ServiceCallback;->mapStatusToException(I)Lcom/android/email/mail/MessagingException;

    move-result-object v2

    .line 3342
    .local v2, result:Lcom/android/email/mail/MessagingException;
    packed-switch p3, :pswitch_data_0

    .line 3353
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    invoke-static {v3}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v3

    monitor-enter v3

    .line 3354
    :try_start_0
    iget-object v4, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    invoke-static {v4}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/Controller$Result;

    .line 3355
    .local v1, listener:Lcom/android/email/Controller$Result;
    invoke-interface {v1, v2, p1, p2, p4}, Lcom/android/email/Controller$Result;->loadMoreCallback(Lcom/android/email/mail/MessagingException;JI)V

    goto :goto_1

    .line 3357
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/android/email/Controller$Result;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 3344
    :pswitch_0
    const/16 p4, 0x64

    .line 3345
    goto :goto_0

    .line 3348
    :pswitch_1
    if-ltz p4, :cond_1

    const/16 v3, 0x64

    if-lt p4, v3, :cond_0

    .line 3358
    :cond_1
    :goto_2
    return-void

    .line 3357
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 3342
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public moveConvAlwaysStatus([BIII)V
    .locals 5
    .parameter "convId"
    .parameter "statusCode"
    .parameter "progress"
    .parameter "ignore"

    .prologue
    .line 3307
    invoke-direct {p0, p2}, Lcom/android/email/Controller$ServiceCallback;->mapStatusToException(I)Lcom/android/email/mail/MessagingException;

    move-result-object v2

    .line 3308
    .local v2, result:Lcom/android/email/mail/MessagingException;
    packed-switch p2, :pswitch_data_0

    .line 3319
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    invoke-static {v3}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v3

    monitor-enter v3

    .line 3320
    :try_start_0
    iget-object v4, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    invoke-static {v4}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/Controller$Result;

    .line 3321
    .local v1, listener:Lcom/android/email/Controller$Result;
    invoke-interface {v1, v2, p1, p3, p4}, Lcom/android/email/Controller$Result;->moveConvAlwaysCallback(Lcom/android/email/mail/MessagingException;[BII)V

    goto :goto_1

    .line 3323
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/android/email/Controller$Result;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 3310
    :pswitch_0
    const/16 p3, 0x64

    .line 3311
    goto :goto_0

    .line 3314
    :pswitch_1
    if-ltz p3, :cond_1

    const/16 v3, 0x64

    if-lt p3, v3, :cond_0

    .line 3324
    :cond_1
    :goto_2
    return-void

    .line 3323
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 3308
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public moveItemStatus(JI)V
    .locals 5
    .parameter "mailboxId"
    .parameter "statusCode"

    .prologue
    .line 3298
    invoke-direct {p0, p3}, Lcom/android/email/Controller$ServiceCallback;->mapStatusToException(I)Lcom/android/email/mail/MessagingException;

    move-result-object v2

    .line 3299
    .local v2, result:Lcom/android/email/mail/MessagingException;
    iget-object v3, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    invoke-static {v3}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v3

    monitor-enter v3

    .line 3300
    :try_start_0
    iget-object v4, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    invoke-static {v4}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/Controller$Result;

    .line 3301
    .local v1, listener:Lcom/android/email/Controller$Result;
    invoke-interface {v1, v2, p1, p2}, Lcom/android/email/Controller$Result;->moveMessageCallback(Lcom/android/email/mail/MessagingException;J)V

    goto :goto_0

    .line 3303
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/android/email/Controller$Result;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3304
    return-void
.end method

.method public oOOfStatus(JIILandroid/os/Bundle;)V
    .locals 8
    .parameter "acc"
    .parameter "statusCode"
    .parameter "progress"
    .parameter "oooResults"

    .prologue
    .line 3363
    invoke-direct {p0, p3}, Lcom/android/email/Controller$ServiceCallback;->mapStatusToException(I)Lcom/android/email/mail/MessagingException;

    move-result-object v1

    .line 3364
    .local v1, result:Lcom/android/email/mail/MessagingException;
    packed-switch p3, :pswitch_data_0

    .line 3375
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    invoke-static {v2}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v7

    monitor-enter v7

    .line 3376
    :try_start_0
    iget-object v2, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    invoke-static {v2}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/Controller$Result;

    .local v0, listener:Lcom/android/email/Controller$Result;
    move-wide v2, p1

    move v4, p4

    move-object v5, p5

    .line 3377
    invoke-interface/range {v0 .. v5}, Lcom/android/email/Controller$Result;->OoOCallback(Lcom/android/email/mail/MessagingException;JILandroid/os/Bundle;)V

    goto :goto_1

    .line 3379
    .end local v0           #listener:Lcom/android/email/Controller$Result;
    .end local v6           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 3366
    :pswitch_0
    const/16 p4, 0x64

    .line 3367
    goto :goto_0

    .line 3370
    :pswitch_1
    if-ltz p4, :cond_1

    const/16 v2, 0x64

    if-lt p4, v2, :cond_0

    .line 3380
    :cond_1
    :goto_2
    return-void

    .line 3379
    .restart local v6       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 3364
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public sendMessageStatus(JLjava/lang/String;II)V
    .locals 9
    .parameter "messageId"
    .parameter "subject"
    .parameter "statusCode"
    .parameter "progress"

    .prologue
    .line 3241
    const-wide/16 v2, -0x1

    .line 3242
    .local v2, accountId:J
    invoke-direct {p0, p4}, Lcom/android/email/Controller$ServiceCallback;->mapStatusToException(I)Lcom/android/email/mail/MessagingException;

    move-result-object v1

    .line 3243
    .local v1, result:Lcom/android/email/mail/MessagingException;
    packed-switch p4, :pswitch_data_0

    .line 3256
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    invoke-static {v4}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v8

    monitor-enter v8

    .line 3257
    :try_start_0
    iget-object v4, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    invoke-static {v4}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/Controller$Result;

    .local v0, listener:Lcom/android/email/Controller$Result;
    move-wide v4, p1

    move v6, p5

    .line 3258
    invoke-interface/range {v0 .. v6}, Lcom/android/email/Controller$Result;->sendMailCallback(Lcom/android/email/mail/MessagingException;JJI)V

    goto :goto_1

    .line 3260
    .end local v0           #listener:Lcom/android/email/Controller$Result;
    .end local v7           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 3245
    :pswitch_0
    const/16 p5, 0x64

    .line 3246
    goto :goto_0

    .line 3249
    :pswitch_1
    if-ltz p5, :cond_1

    const/16 v4, 0x64

    if-lt p5, v4, :cond_0

    .line 3261
    :cond_1
    :goto_2
    return-void

    .line 3260
    .restart local v7       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 3243
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setDeviceInfoStatus(JII)V
    .locals 5
    .parameter "accountId"
    .parameter "statusCode"
    .parameter "progress"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3525
    invoke-direct {p0, p3}, Lcom/android/email/Controller$ServiceCallback;->mapStatusToException(I)Lcom/android/email/mail/MessagingException;

    move-result-object v2

    .line 3526
    .local v2, result:Lcom/android/email/mail/MessagingException;
    packed-switch p3, :pswitch_data_0

    .line 3537
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    invoke-static {v3}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v3

    monitor-enter v3

    .line 3538
    :try_start_0
    iget-object v4, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    invoke-static {v4}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/Controller$Result;

    .line 3539
    .local v1, listener:Lcom/android/email/Controller$Result;
    invoke-interface {v1, v2, p1, p2, p4}, Lcom/android/email/Controller$Result;->deviceInformationCallback(Lcom/android/email/mail/MessagingException;JI)V

    goto :goto_1

    .line 3541
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/android/email/Controller$Result;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 3528
    :pswitch_0
    const/16 p4, 0x64

    .line 3529
    goto :goto_0

    .line 3532
    :pswitch_1
    if-ltz p4, :cond_1

    const/16 v3, 0x64

    if-lt p4, v3, :cond_0

    .line 3543
    :cond_1
    :goto_2
    return-void

    .line 3541
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 3526
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public syncMailboxListStatus(JII)V
    .locals 5
    .parameter "accountId"
    .parameter "statusCode"
    .parameter "progress"

    .prologue
    .line 3406
    invoke-direct {p0, p3}, Lcom/android/email/Controller$ServiceCallback;->mapStatusToException(I)Lcom/android/email/mail/MessagingException;

    move-result-object v2

    .line 3407
    .local v2, result:Lcom/android/email/mail/MessagingException;
    packed-switch p3, :pswitch_data_0

    .line 3418
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    invoke-static {v3}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v3

    monitor-enter v3

    .line 3419
    :try_start_0
    iget-object v4, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    invoke-static {v4}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/Controller$Result;

    .line 3420
    .local v1, listener:Lcom/android/email/Controller$Result;
    invoke-interface {v1, v2, p1, p2, p4}, Lcom/android/email/Controller$Result;->updateMailboxListCallback(Lcom/android/email/mail/MessagingException;JI)V

    goto :goto_1

    .line 3422
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/android/email/Controller$Result;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 3409
    :pswitch_0
    const/16 p4, 0x64

    .line 3410
    goto :goto_0

    .line 3413
    :pswitch_1
    if-ltz p4, :cond_1

    const/16 v3, 0x64

    if-lt p4, v3, :cond_0

    .line 3423
    :cond_1
    :goto_2
    return-void

    .line 3422
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 3407
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public syncMailboxStatus(JII)V
    .locals 11
    .parameter "mailboxId"
    .parameter "statusCode"
    .parameter "progress"

    .prologue
    .line 3426
    invoke-direct {p0, p3}, Lcom/android/email/Controller$ServiceCallback;->mapStatusToException(I)Lcom/android/email/mail/MessagingException;

    move-result-object v1

    .line 3427
    .local v1, result:Lcom/android/email/mail/MessagingException;
    packed-switch p3, :pswitch_data_0

    .line 3444
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    invoke-static {v4}, Lcom/android/email/Controller;->access$400(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, p1, p2}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v9

    .line 3446
    .local v9, mbx:Lcom/android/email/provider/EmailContent$Mailbox;
    if-nez v9, :cond_2

    .line 3453
    .end local v9           #mbx:Lcom/android/email/provider/EmailContent$Mailbox;
    :cond_1
    :goto_1
    return-void

    .line 3429
    :pswitch_0
    const/16 p4, 0x64

    .line 3430
    goto :goto_0

    .line 3433
    :pswitch_1
    if-ltz p4, :cond_1

    const/16 v4, 0x64

    if-lt p4, v4, :cond_0

    goto :goto_1

    .line 3438
    :pswitch_2
    iget-object v4, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/email/Controller;->bEAS2POP_EASTrashMove_Complete:Z

    goto :goto_1

    .line 3447
    .restart local v9       #mbx:Lcom/android/email/provider/EmailContent$Mailbox;
    :cond_2
    iget-wide v2, v9, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    .line 3448
    .local v2, accountId:J
    iget-object v4, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    invoke-static {v4}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v10

    monitor-enter v10

    .line 3449
    :try_start_0
    iget-object v4, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    invoke-static {v4}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/Controller$Result;

    .line 3450
    .local v0, listener:Lcom/android/email/Controller$Result;
    const/4 v7, -0x1

    move-wide v4, p1

    move v6, p4

    invoke-interface/range {v0 .. v7}, Lcom/android/email/Controller$Result;->updateMailboxCallback(Lcom/android/email/mail/MessagingException;JJII)V

    goto :goto_2

    .line 3452
    .end local v0           #listener:Lcom/android/email/Controller$Result;
    .end local v8           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v8       #i$:Ljava/util/Iterator;
    :cond_3
    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 3427
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
