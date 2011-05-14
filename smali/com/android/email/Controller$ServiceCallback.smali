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


# static fields
.field private static final DEBUG_FAIL_DOWNLOADS:Z


# instance fields
.field final synthetic this$0:Lcom/android/email/Controller;


# direct methods
.method private constructor <init>(Lcom/android/email/Controller;)V
    .locals 0
    .parameter

    .prologue
    .line 2822
    iput-object p1, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    invoke-direct {p0}, Lcom/android/email/service/IEmailServiceCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/Controller;Lcom/android/email/Controller$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2822
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

    .line 3078
    sparse-switch p1, :sswitch_data_0

    .line 3132
    new-instance v0, Lcom/android/email/mail/MessagingException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/email/mail/MessagingException;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v0

    .line 3081
    :sswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 3084
    :sswitch_1
    new-instance v0, Lcom/android/email/mail/AuthenticationFailedException;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/android/email/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 3087
    :sswitch_2
    new-instance v0, Lcom/android/email/mail/MessagingException;

    invoke-direct {v0, v2}, Lcom/android/email/mail/MessagingException;-><init>(I)V

    goto :goto_0

    .line 3093
    :sswitch_3
    new-instance v0, Lcom/android/email/mail/MessagingException;

    const/4 v1, -0x2

    invoke-direct {v0, v2, v1}, Lcom/android/email/mail/MessagingException;-><init>(II)V

    goto :goto_0

    .line 3099
    :sswitch_4
    new-instance v0, Lcom/android/email/mail/MessagingException;

    const/4 v1, -0x3

    invoke-direct {v0, v2, v1}, Lcom/android/email/mail/MessagingException;-><init>(II)V

    goto :goto_0

    .line 3102
    :sswitch_5
    new-instance v0, Lcom/android/email/mail/MessagingException;

    const/4 v1, -0x4

    invoke-direct {v0, v3, v1}, Lcom/android/email/mail/MessagingException;-><init>(II)V

    goto :goto_0

    .line 3105
    :sswitch_6
    new-instance v0, Lcom/android/email/mail/MessagingException;

    const/4 v1, -0x5

    invoke-direct {v0, v3, v1}, Lcom/android/email/mail/MessagingException;-><init>(II)V

    goto :goto_0

    .line 3108
    :sswitch_7
    new-instance v0, Lcom/android/email/mail/MessagingException;

    const/4 v1, -0x6

    invoke-direct {v0, v3, v1}, Lcom/android/email/mail/MessagingException;-><init>(II)V

    goto :goto_0

    .line 3113
    :sswitch_8
    new-instance v0, Lcom/android/email/mail/MessagingException;

    const/high16 v1, 0x7

    invoke-direct {v0, v4, v1}, Lcom/android/email/mail/MessagingException;-><init>(II)V

    goto :goto_0

    .line 3118
    :sswitch_9
    new-instance v0, Lcom/android/email/mail/MessagingException;

    const/high16 v1, 0x10

    invoke-direct {v0, v4, v1}, Lcom/android/email/mail/MessagingException;-><init>(II)V

    goto :goto_0

    .line 3122
    :sswitch_a
    new-instance v0, Lcom/android/email/mail/MessagingException;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lcom/android/email/mail/MessagingException;-><init>(I)V

    goto :goto_0

    .line 3078
    :sswitch_data_0
    .sparse-switch
        -0x6 -> :sswitch_7
        -0x5 -> :sswitch_6
        -0x4 -> :sswitch_5
        -0x3 -> :sswitch_4
        -0x2 -> :sswitch_3
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
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
    .line 3006
    invoke-direct {p0, p3}, Lcom/android/email/Controller$ServiceCallback;->mapStatusToException(I)Lcom/android/email/mail/MessagingException;

    move-result-object v2

    .line 3007
    .local v2, result:Lcom/android/email/mail/MessagingException;
    packed-switch p3, :pswitch_data_0

    .line 3018
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    invoke-static {v3}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v3

    monitor-enter v3

    .line 3019
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

    .line 3020
    .local v1, listener:Lcom/android/email/Controller$Result;
    invoke-interface {v1, v2, p1, p2, p4}, Lcom/android/email/Controller$Result;->emptyTrashCallback(Lcom/android/email/mail/MessagingException;JI)V

    goto :goto_1

    .line 3022
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/android/email/Controller$Result;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 3009
    :pswitch_0
    const/16 p4, 0x64

    .line 3010
    goto :goto_0

    .line 3013
    :pswitch_1
    if-ltz p4, :cond_1

    const/16 v3, 0x64

    if-lt p4, v3, :cond_0

    .line 3023
    :cond_1
    :goto_2
    return-void

    .line 3022
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 3007
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
    .line 2920
    invoke-direct {p0, p4}, Lcom/android/email/Controller$ServiceCallback;->mapStatusToException(I)Lcom/android/email/mail/MessagingException;

    move-result-object v2

    .line 2921
    .local v2, result:Lcom/android/email/mail/MessagingException;
    iget-object v3, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    invoke-static {v3}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v3

    monitor-enter v3

    .line 2922
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

    .line 2923
    .local v1, listener:Lcom/android/email/Controller$Result;
    invoke-interface {v1, p1, v2, p2, p3}, Lcom/android/email/Controller$Result;->folderCommandCallback(ILcom/android/email/mail/MessagingException;J)V

    goto :goto_0

    .line 2925
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

    .line 2926
    return-void
.end method

.method public loadAttachmentStatus(JJII)V
    .locals 9
    .parameter "messageId"
    .parameter "attachmentId"
    .parameter "statusCode"
    .parameter "progress"

    .prologue
    .line 2829
    iget-object v2, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    invoke-static {v2}, Lcom/android/email/Controller;->access$900(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v2

    monitor-enter v2

    .line 2831
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

    .line 2833
    .local v7, AMInfo:Lcom/android/email/Controller$AccountMoveMessageInfo;
    iget-wide v3, v7, Lcom/android/email/Controller$AccountMoveMessageInfo;->messageId:J

    cmp-long v3, v3, p1

    if-nez v3, :cond_0

    .line 2836
    const/16 v3, 0x11

    if-eq p5, v3, :cond_1

    if-eqz p5, :cond_2

    const/4 v3, 0x1

    if-eq p5, v3, :cond_2

    .line 2838
    :cond_1
    iget-object v3, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    invoke-static {v3}, Lcom/android/email/Controller;->access$900(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 2841
    :cond_2
    monitor-exit v2

    .line 2882
    .end local v7           #AMInfo:Lcom/android/email/Controller$AccountMoveMessageInfo;
    :cond_3
    :goto_0
    return-void

    .line 2844
    :cond_4
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2847
    invoke-direct {p0, p5}, Lcom/android/email/Controller$ServiceCallback;->mapStatusToException(I)Lcom/android/email/mail/MessagingException;

    move-result-object v1

    .line 2848
    .local v1, result:Lcom/android/email/mail/MessagingException;
    packed-switch p5, :pswitch_data_0

    .line 2863
    :cond_5
    :goto_1
    iget-object v2, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    invoke-static {v2}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v7

    monitor-enter v7

    .line 2864
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

    .line 2866
    .local v0, listener:Lcom/android/email/Controller$Result;
    iget-object v2, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    invoke-static {v2}, Lcom/android/email/Controller;->access$500(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p3, p4}, Lcom/android/email/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Attachment;

    move-result-object v2

    iget-object v2, v2, Lcom/android/email/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 2867
    sparse-switch p6, :sswitch_data_0

    :cond_6
    :goto_3
    move-wide v2, p1

    move-wide v4, p3

    move v6, p6

    .line 2879
    invoke-interface/range {v0 .. v6}, Lcom/android/email/Controller$Result;->loadAttachmentCallback(Lcom/android/email/mail/MessagingException;JJI)V

    goto :goto_2

    .line 2881
    .end local v0           #listener:Lcom/android/email/Controller$Result;
    :catchall_0
    move-exception v2

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 2844
    .end local v1           #result:Lcom/android/email/mail/MessagingException;
    .end local v8           #i$:Ljava/util/Iterator;
    :catchall_1
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    .line 2850
    .restart local v1       #result:Lcom/android/email/mail/MessagingException;
    .restart local v8       #i$:Ljava/util/Iterator;
    :pswitch_0
    const/16 p6, 0x64

    .line 2851
    goto :goto_1

    .line 2858
    :pswitch_1
    if-ltz p6, :cond_3

    const/16 v2, 0x64

    if-lt p6, v2, :cond_5

    goto :goto_0

    .line 2869
    .restart local v0       #listener:Lcom/android/email/Controller$Result;
    :sswitch_0
    const/4 p6, -0x1

    .line 2870
    goto :goto_3

    .line 2872
    :sswitch_1
    const/16 p6, 0xc8

    goto :goto_3

    .line 2881
    .end local v0           #listener:Lcom/android/email/Controller$Result;
    :cond_7
    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 2848
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 2867
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
    .line 2963
    invoke-direct {p0, p3}, Lcom/android/email/Controller$ServiceCallback;->mapStatusToException(I)Lcom/android/email/mail/MessagingException;

    move-result-object v2

    .line 2964
    .local v2, result:Lcom/android/email/mail/MessagingException;
    packed-switch p3, :pswitch_data_0

    .line 2975
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    invoke-static {v3}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v3

    monitor-enter v3

    .line 2976
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

    .line 2977
    .local v1, listener:Lcom/android/email/Controller$Result;
    invoke-interface {v1, v2, p1, p2, p4}, Lcom/android/email/Controller$Result;->loadMoreCallback(Lcom/android/email/mail/MessagingException;JI)V

    goto :goto_1

    .line 2979
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/android/email/Controller$Result;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 2966
    :pswitch_0
    const/16 p4, 0x64

    .line 2967
    goto :goto_0

    .line 2970
    :pswitch_1
    if-ltz p4, :cond_1

    const/16 v3, 0x64

    if-lt p4, v3, :cond_0

    .line 2980
    :cond_1
    :goto_2
    return-void

    .line 2979
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 2964
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
    .line 2952
    invoke-direct {p0, p3}, Lcom/android/email/Controller$ServiceCallback;->mapStatusToException(I)Lcom/android/email/mail/MessagingException;

    move-result-object v2

    .line 2953
    .local v2, result:Lcom/android/email/mail/MessagingException;
    iget-object v3, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    invoke-static {v3}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v3

    monitor-enter v3

    .line 2954
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

    .line 2955
    .local v1, listener:Lcom/android/email/Controller$Result;
    invoke-interface {v1, v2, p1, p2}, Lcom/android/email/Controller$Result;->moveMessageCallback(Lcom/android/email/mail/MessagingException;J)V

    goto :goto_0

    .line 2957
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

    .line 2958
    return-void
.end method

.method public oOOfStatus(JIILandroid/os/Bundle;)V
    .locals 8
    .parameter "acc"
    .parameter "statusCode"
    .parameter "progress"
    .parameter "oooResults"

    .prologue
    .line 2985
    invoke-direct {p0, p3}, Lcom/android/email/Controller$ServiceCallback;->mapStatusToException(I)Lcom/android/email/mail/MessagingException;

    move-result-object v1

    .line 2986
    .local v1, result:Lcom/android/email/mail/MessagingException;
    packed-switch p3, :pswitch_data_0

    .line 2997
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    invoke-static {v2}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v7

    monitor-enter v7

    .line 2998
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

    .line 2999
    invoke-interface/range {v0 .. v5}, Lcom/android/email/Controller$Result;->OoOCallback(Lcom/android/email/mail/MessagingException;JILandroid/os/Bundle;)V

    goto :goto_1

    .line 3001
    .end local v0           #listener:Lcom/android/email/Controller$Result;
    .end local v6           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 2988
    :pswitch_0
    const/16 p4, 0x64

    .line 2989
    goto :goto_0

    .line 2992
    :pswitch_1
    if-ltz p4, :cond_1

    const/16 v2, 0x64

    if-lt p4, v2, :cond_0

    .line 3002
    :cond_1
    :goto_2
    return-void

    .line 3001
    .restart local v6       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 2986
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public searchGALStatus(JIILandroid/os/Bundle;)V
    .locals 8
    .parameter "acc"
    .parameter "statusCode"
    .parameter "progress"
    .parameter "searchresults"

    .prologue
    .line 2931
    invoke-direct {p0, p3}, Lcom/android/email/Controller$ServiceCallback;->mapStatusToException(I)Lcom/android/email/mail/MessagingException;

    move-result-object v1

    .line 2932
    .local v1, result:Lcom/android/email/mail/MessagingException;
    packed-switch p3, :pswitch_data_0

    .line 2943
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    invoke-static {v2}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v7

    monitor-enter v7

    .line 2944
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

    .line 2945
    invoke-interface/range {v0 .. v5}, Lcom/android/email/Controller$Result;->GALSearchCallback(Lcom/android/email/mail/MessagingException;JILandroid/os/Bundle;)V

    goto :goto_1

    .line 2947
    .end local v0           #listener:Lcom/android/email/Controller$Result;
    .end local v6           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 2934
    :pswitch_0
    const/16 p4, 0x64

    .line 2935
    goto :goto_0

    .line 2938
    :pswitch_1
    if-ltz p4, :cond_1

    const/16 v2, 0x64

    if-lt p4, v2, :cond_0

    .line 2948
    :cond_1
    :goto_2
    return-void

    .line 2947
    .restart local v6       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 2932
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
    .line 2895
    const-wide/16 v2, -0x1

    .line 2896
    .local v2, accountId:J
    invoke-direct {p0, p4}, Lcom/android/email/Controller$ServiceCallback;->mapStatusToException(I)Lcom/android/email/mail/MessagingException;

    move-result-object v1

    .line 2897
    .local v1, result:Lcom/android/email/mail/MessagingException;
    packed-switch p4, :pswitch_data_0

    .line 2910
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    invoke-static {v4}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v8

    monitor-enter v8

    .line 2911
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

    .line 2912
    invoke-interface/range {v0 .. v6}, Lcom/android/email/Controller$Result;->sendMailCallback(Lcom/android/email/mail/MessagingException;JJI)V

    goto :goto_1

    .line 2914
    .end local v0           #listener:Lcom/android/email/Controller$Result;
    .end local v7           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 2899
    :pswitch_0
    const/16 p5, 0x64

    .line 2900
    goto :goto_0

    .line 2903
    :pswitch_1
    if-ltz p5, :cond_1

    const/16 v4, 0x64

    if-lt p5, v4, :cond_0

    .line 2915
    :cond_1
    :goto_2
    return-void

    .line 2914
    .restart local v7       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 2897
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
    .line 3028
    invoke-direct {p0, p3}, Lcom/android/email/Controller$ServiceCallback;->mapStatusToException(I)Lcom/android/email/mail/MessagingException;

    move-result-object v2

    .line 3029
    .local v2, result:Lcom/android/email/mail/MessagingException;
    packed-switch p3, :pswitch_data_0

    .line 3040
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    invoke-static {v3}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v3

    monitor-enter v3

    .line 3041
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

    .line 3042
    .local v1, listener:Lcom/android/email/Controller$Result;
    invoke-interface {v1, v2, p1, p2, p4}, Lcom/android/email/Controller$Result;->updateMailboxListCallback(Lcom/android/email/mail/MessagingException;JI)V

    goto :goto_1

    .line 3044
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/android/email/Controller$Result;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 3031
    :pswitch_0
    const/16 p4, 0x64

    .line 3032
    goto :goto_0

    .line 3035
    :pswitch_1
    if-ltz p4, :cond_1

    const/16 v3, 0x64

    if-lt p4, v3, :cond_0

    .line 3045
    :cond_1
    :goto_2
    return-void

    .line 3044
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 3029
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
    .line 3048
    invoke-direct {p0, p3}, Lcom/android/email/Controller$ServiceCallback;->mapStatusToException(I)Lcom/android/email/mail/MessagingException;

    move-result-object v1

    .line 3049
    .local v1, result:Lcom/android/email/mail/MessagingException;
    packed-switch p3, :pswitch_data_0

    .line 3066
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    invoke-static {v4}, Lcom/android/email/Controller;->access$400(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, p1, p2}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v9

    .line 3068
    .local v9, mbx:Lcom/android/email/provider/EmailContent$Mailbox;
    if-nez v9, :cond_2

    .line 3075
    .end local v9           #mbx:Lcom/android/email/provider/EmailContent$Mailbox;
    :cond_1
    :goto_1
    return-void

    .line 3051
    :pswitch_0
    const/16 p4, 0x64

    .line 3052
    goto :goto_0

    .line 3055
    :pswitch_1
    if-ltz p4, :cond_1

    const/16 v4, 0x64

    if-lt p4, v4, :cond_0

    goto :goto_1

    .line 3060
    :pswitch_2
    iget-object v4, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/email/Controller;->bEAS2POP_EASTrashMove_Complete:Z

    goto :goto_1

    .line 3069
    .restart local v9       #mbx:Lcom/android/email/provider/EmailContent$Mailbox;
    :cond_2
    iget-wide v2, v9, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    .line 3070
    .local v2, accountId:J
    iget-object v4, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    invoke-static {v4}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v10

    monitor-enter v10

    .line 3071
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

    .line 3072
    .local v0, listener:Lcom/android/email/Controller$Result;
    const/4 v7, 0x0

    move-wide v4, p1

    move v6, p4

    invoke-interface/range {v0 .. v7}, Lcom/android/email/Controller$Result;->updateMailboxCallback(Lcom/android/email/mail/MessagingException;JJII)V

    goto :goto_2

    .line 3074
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

    .line 3049
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
