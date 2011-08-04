.class final Lcom/android/exchange/SyncManager$1;
.super Lcom/android/email/service/IEmailServiceCallback$Stub;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/SyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 391
    invoke-direct {p0}, Lcom/android/email/service/IEmailServiceCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public emptyTrashStatus(JII)V
    .locals 2
    .parameter "accountId"
    .parameter "statusCode"
    .parameter "progress"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 463
    sget-object v1, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    move-object v0, v1

    .line 464
    .local v0, cb:Lcom/android/email/service/IEmailServiceCallback;
    :goto_0
    if-eqz v0, :cond_0

    .line 465
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/email/service/IEmailServiceCallback;->emptyTrashStatus(JII)V

    .line 467
    :cond_0
    return-void

    .line 463
    .end local v0           #cb:Lcom/android/email/service/IEmailServiceCallback;
    :cond_1
    sget-object v1, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    invoke-static {v1}, Lcom/android/exchange/SyncManager;->access$000(Lcom/android/exchange/SyncManager;)Lcom/android/email/service/IEmailServiceCallback;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method public folderCommandStatus(IJI)V
    .locals 2
    .parameter "command"
    .parameter "mailboxId"
    .parameter "statusCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 443
    sget-object v1, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    move-object v0, v1

    .line 444
    .local v0, cb:Lcom/android/email/service/IEmailServiceCallback;
    :goto_0
    if-eqz v0, :cond_0

    .line 445
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/email/service/IEmailServiceCallback;->folderCommandStatus(IJI)V

    .line 447
    :cond_0
    return-void

    .line 443
    .end local v0           #cb:Lcom/android/email/service/IEmailServiceCallback;
    :cond_1
    sget-object v1, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    invoke-static {v1}, Lcom/android/exchange/SyncManager;->access$000(Lcom/android/exchange/SyncManager;)Lcom/android/email/service/IEmailServiceCallback;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method public loadAttachmentStatus(JJII)V
    .locals 7
    .parameter "messageId"
    .parameter "attachmentId"
    .parameter "statusCode"
    .parameter "progress"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 395
    sget-object v1, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    move-object v0, v1

    .line 396
    .local v0, cb:Lcom/android/email/service/IEmailServiceCallback;
    :goto_0
    if-eqz v0, :cond_0

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    move v6, p6

    .line 397
    invoke-interface/range {v0 .. v6}, Lcom/android/email/service/IEmailServiceCallback;->loadAttachmentStatus(JJII)V

    .line 399
    :cond_0
    return-void

    .line 395
    .end local v0           #cb:Lcom/android/email/service/IEmailServiceCallback;
    :cond_1
    sget-object v1, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    invoke-static {v1}, Lcom/android/exchange/SyncManager;->access$000(Lcom/android/exchange/SyncManager;)Lcom/android/email/service/IEmailServiceCallback;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method public loadMoreStatus(JII)V
    .locals 4
    .parameter "messageId"
    .parameter "statusCode"
    .parameter "progress"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 474
    sget-object v1, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    move-object v0, v1

    .line 475
    .local v0, cb:Lcom/android/email/service/IEmailServiceCallback;
    :goto_0
    if-eqz v0, :cond_0

    .line 476
    const-string v1, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SyncManager.sCallbackProxy.loadMoreStatus"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/exchange/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/email/service/IEmailServiceCallback;->loadMoreStatus(JII)V

    .line 479
    :cond_0
    return-void

    .line 474
    .end local v0           #cb:Lcom/android/email/service/IEmailServiceCallback;
    :cond_1
    sget-object v1, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    invoke-static {v1}, Lcom/android/exchange/SyncManager;->access$000(Lcom/android/exchange/SyncManager;)Lcom/android/email/service/IEmailServiceCallback;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method public moveConvAlwaysStatus([BIII)V
    .locals 2
    .parameter "convId"
    .parameter "statusCode"
    .parameter "progress"
    .parameter "ignore"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 452
    sget-object v1, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    move-object v0, v1

    .line 453
    .local v0, cb:Lcom/android/email/service/IEmailServiceCallback;
    :goto_0
    if-eqz v0, :cond_0

    .line 454
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/email/service/IEmailServiceCallback;->moveConvAlwaysStatus([BIII)V

    .line 456
    :cond_0
    return-void

    .line 452
    .end local v0           #cb:Lcom/android/email/service/IEmailServiceCallback;
    :cond_1
    sget-object v1, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    invoke-static {v1}, Lcom/android/exchange/SyncManager;->access$000(Lcom/android/exchange/SyncManager;)Lcom/android/email/service/IEmailServiceCallback;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method public moveItemStatus(JI)V
    .locals 2
    .parameter "mailboxId"
    .parameter "statusCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 434
    sget-object v1, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    move-object v0, v1

    .line 435
    .local v0, cb:Lcom/android/email/service/IEmailServiceCallback;
    :goto_0
    if-eqz v0, :cond_0

    .line 436
    invoke-interface {v0, p1, p2, p3}, Lcom/android/email/service/IEmailServiceCallback;->moveItemStatus(JI)V

    .line 438
    :cond_0
    return-void

    .line 434
    .end local v0           #cb:Lcom/android/email/service/IEmailServiceCallback;
    :cond_1
    sget-object v1, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    invoke-static {v1}, Lcom/android/exchange/SyncManager;->access$000(Lcom/android/exchange/SyncManager;)Lcom/android/email/service/IEmailServiceCallback;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method public oOOfStatus(JIILandroid/os/Bundle;)V
    .locals 6
    .parameter "accountId"
    .parameter "statusCode"
    .parameter "progress"
    .parameter "oooResults"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 411
    sget-object v1, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    move-object v0, v1

    .line 412
    .local v0, cb:Lcom/android/email/service/IEmailServiceCallback;
    :goto_0
    if-eqz v0, :cond_0

    move-wide v1, p1

    move v3, p3

    move v4, p4

    move-object v5, p5

    .line 413
    invoke-interface/range {v0 .. v5}, Lcom/android/email/service/IEmailServiceCallback;->oOOfStatus(JIILandroid/os/Bundle;)V

    .line 415
    :cond_0
    return-void

    .line 411
    .end local v0           #cb:Lcom/android/email/service/IEmailServiceCallback;
    :cond_1
    sget-object v1, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    invoke-static {v1}, Lcom/android/exchange/SyncManager;->access$000(Lcom/android/exchange/SyncManager;)Lcom/android/email/service/IEmailServiceCallback;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method public sendMessageStatus(JLjava/lang/String;II)V
    .locals 6
    .parameter "messageId"
    .parameter "subject"
    .parameter "statusCode"
    .parameter "progress"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 403
    sget-object v1, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    move-object v0, v1

    .line 404
    .local v0, cb:Lcom/android/email/service/IEmailServiceCallback;
    :goto_0
    if-eqz v0, :cond_0

    move-wide v1, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    .line 405
    invoke-interface/range {v0 .. v5}, Lcom/android/email/service/IEmailServiceCallback;->sendMessageStatus(JLjava/lang/String;II)V

    .line 407
    :cond_0
    return-void

    .line 403
    .end local v0           #cb:Lcom/android/email/service/IEmailServiceCallback;
    :cond_1
    sget-object v1, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    invoke-static {v1}, Lcom/android/exchange/SyncManager;->access$000(Lcom/android/exchange/SyncManager;)Lcom/android/email/service/IEmailServiceCallback;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method public setDeviceInfoStatus(JII)V
    .locals 2
    .parameter "accountId"
    .parameter "statusCode"
    .parameter "progress"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 484
    sget-object v1, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    move-object v0, v1

    .line 485
    .local v0, cb:Lcom/android/email/service/IEmailServiceCallback;
    :goto_0
    if-eqz v0, :cond_0

    .line 486
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/email/service/IEmailServiceCallback;->setDeviceInfoStatus(JII)V

    .line 488
    :cond_0
    return-void

    .line 484
    .end local v0           #cb:Lcom/android/email/service/IEmailServiceCallback;
    :cond_1
    sget-object v1, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    invoke-static {v1}, Lcom/android/exchange/SyncManager;->access$000(Lcom/android/exchange/SyncManager;)Lcom/android/email/service/IEmailServiceCallback;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method public syncMailboxListStatus(JII)V
    .locals 2
    .parameter "accountId"
    .parameter "statusCode"
    .parameter "progress"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 418
    sget-object v1, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    move-object v0, v1

    .line 419
    .local v0, cb:Lcom/android/email/service/IEmailServiceCallback;
    :goto_0
    if-eqz v0, :cond_0

    .line 420
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/email/service/IEmailServiceCallback;->syncMailboxListStatus(JII)V

    .line 422
    :cond_0
    return-void

    .line 418
    .end local v0           #cb:Lcom/android/email/service/IEmailServiceCallback;
    :cond_1
    sget-object v1, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    invoke-static {v1}, Lcom/android/exchange/SyncManager;->access$000(Lcom/android/exchange/SyncManager;)Lcom/android/email/service/IEmailServiceCallback;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method public syncMailboxStatus(JII)V
    .locals 2
    .parameter "mailboxId"
    .parameter "statusCode"
    .parameter "progress"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 426
    sget-object v1, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    move-object v0, v1

    .line 427
    .local v0, cb:Lcom/android/email/service/IEmailServiceCallback;
    :goto_0
    if-eqz v0, :cond_0

    .line 428
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/email/service/IEmailServiceCallback;->syncMailboxStatus(JII)V

    .line 430
    :cond_0
    return-void

    .line 426
    .end local v0           #cb:Lcom/android/email/service/IEmailServiceCallback;
    :cond_1
    sget-object v1, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    invoke-static {v1}, Lcom/android/exchange/SyncManager;->access$000(Lcom/android/exchange/SyncManager;)Lcom/android/email/service/IEmailServiceCallback;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method
