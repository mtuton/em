.class Lcom/android/exchange/SyncManager$1;
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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 424
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
    .line 415
    sget-object v1, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    move-object v0, v1

    .line 416
    .local v0, cb:Lcom/android/email/service/IEmailServiceCallback;
    :goto_0
    if-eqz v0, :cond_0

    .line 417
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/email/service/IEmailServiceCallback;->emptyTrashStatus(JII)V

    .line 419
    :cond_0
    return-void

    .line 415
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
    .line 402
    sget-object v1, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    move-object v0, v1

    .line 403
    .local v0, cb:Lcom/android/email/service/IEmailServiceCallback;
    :goto_0
    if-eqz v0, :cond_0

    .line 404
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/email/service/IEmailServiceCallback;->folderCommandStatus(IJI)V

    .line 406
    :cond_0
    return-void

    .line 402
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
    .line 354
    sget-object v1, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    move-object v0, v1

    .line 355
    .local v0, cb:Lcom/android/email/service/IEmailServiceCallback;
    :goto_0
    if-eqz v0, :cond_0

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    move v6, p6

    .line 356
    invoke-interface/range {v0 .. v6}, Lcom/android/email/service/IEmailServiceCallback;->loadAttachmentStatus(JJII)V

    .line 358
    :cond_0
    return-void

    .line 354
    .end local v0           #cb:Lcom/android/email/service/IEmailServiceCallback;
    :cond_1
    sget-object v1, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    invoke-static {v1}, Lcom/android/exchange/SyncManager;->access$000(Lcom/android/exchange/SyncManager;)Lcom/android/email/service/IEmailServiceCallback;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method public loadMoreStatus(JII)V
    .locals 2
    .parameter "messageId"
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
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/email/service/IEmailServiceCallback;->loadMoreStatus(JII)V

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
    .line 393
    sget-object v1, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    move-object v0, v1

    .line 394
    .local v0, cb:Lcom/android/email/service/IEmailServiceCallback;
    :goto_0
    if-eqz v0, :cond_0

    .line 395
    invoke-interface {v0, p1, p2, p3}, Lcom/android/email/service/IEmailServiceCallback;->moveItemStatus(JI)V

    .line 397
    :cond_0
    return-void

    .line 393
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
    .line 370
    sget-object v1, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    move-object v0, v1

    .line 371
    .local v0, cb:Lcom/android/email/service/IEmailServiceCallback;
    :goto_0
    if-eqz v0, :cond_0

    move-wide v1, p1

    move v3, p3

    move v4, p4

    move-object v5, p5

    .line 372
    invoke-interface/range {v0 .. v5}, Lcom/android/email/service/IEmailServiceCallback;->oOOfStatus(JIILandroid/os/Bundle;)V

    .line 374
    :cond_0
    return-void

    .line 370
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
    .line 362
    sget-object v1, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    move-object v0, v1

    .line 363
    .local v0, cb:Lcom/android/email/service/IEmailServiceCallback;
    :goto_0
    if-eqz v0, :cond_0

    move-wide v1, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    .line 364
    invoke-interface/range {v0 .. v5}, Lcom/android/email/service/IEmailServiceCallback;->sendMessageStatus(JLjava/lang/String;II)V

    .line 366
    :cond_0
    return-void

    .line 362
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
    .line 377
    sget-object v1, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    move-object v0, v1

    .line 378
    .local v0, cb:Lcom/android/email/service/IEmailServiceCallback;
    :goto_0
    if-eqz v0, :cond_0

    .line 379
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/email/service/IEmailServiceCallback;->syncMailboxListStatus(JII)V

    .line 381
    :cond_0
    return-void

    .line 377
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
    .line 385
    sget-object v1, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    move-object v0, v1

    .line 386
    .local v0, cb:Lcom/android/email/service/IEmailServiceCallback;
    :goto_0
    if-eqz v0, :cond_0

    .line 387
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/email/service/IEmailServiceCallback;->syncMailboxStatus(JII)V

    .line 389
    :cond_0
    return-void

    .line 385
    .end local v0           #cb:Lcom/android/email/service/IEmailServiceCallback;
    :cond_1
    sget-object v1, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    invoke-static {v1}, Lcom/android/exchange/SyncManager;->access$000(Lcom/android/exchange/SyncManager;)Lcom/android/email/service/IEmailServiceCallback;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method
