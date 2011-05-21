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
    .line 415
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
    .line 406
    sget-object v1, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    move-object v0, v1

    .line 407
    .local v0, cb:Lcom/android/email/service/IEmailServiceCallback;
    :goto_0
    if-eqz v0, :cond_0

    .line 408
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/email/service/IEmailServiceCallback;->emptyTrashStatus(JII)V

    .line 410
    :cond_0
    return-void

    .line 406
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
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/email/service/IEmailServiceCallback;->folderCommandStatus(IJI)V

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
    .line 345
    sget-object v1, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    move-object v0, v1

    .line 346
    .local v0, cb:Lcom/android/email/service/IEmailServiceCallback;
    :goto_0
    if-eqz v0, :cond_0

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    move v6, p6

    .line 347
    invoke-interface/range {v0 .. v6}, Lcom/android/email/service/IEmailServiceCallback;->loadAttachmentStatus(JJII)V

    .line 349
    :cond_0
    return-void

    .line 345
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
    .line 417
    sget-object v1, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    move-object v0, v1

    .line 418
    .local v0, cb:Lcom/android/email/service/IEmailServiceCallback;
    :goto_0
    if-eqz v0, :cond_0

    .line 419
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/email/service/IEmailServiceCallback;->loadMoreStatus(JII)V

    .line 421
    :cond_0
    return-void

    .line 417
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
    .line 384
    sget-object v1, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    move-object v0, v1

    .line 385
    .local v0, cb:Lcom/android/email/service/IEmailServiceCallback;
    :goto_0
    if-eqz v0, :cond_0

    .line 386
    invoke-interface {v0, p1, p2, p3}, Lcom/android/email/service/IEmailServiceCallback;->moveItemStatus(JI)V

    .line 388
    :cond_0
    return-void

    .line 384
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
    .line 361
    sget-object v1, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    move-object v0, v1

    .line 362
    .local v0, cb:Lcom/android/email/service/IEmailServiceCallback;
    :goto_0
    if-eqz v0, :cond_0

    move-wide v1, p1

    move v3, p3

    move v4, p4

    move-object v5, p5

    .line 363
    invoke-interface/range {v0 .. v5}, Lcom/android/email/service/IEmailServiceCallback;->oOOfStatus(JIILandroid/os/Bundle;)V

    .line 365
    :cond_0
    return-void

    .line 361
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
    .line 353
    sget-object v1, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    move-object v0, v1

    .line 354
    .local v0, cb:Lcom/android/email/service/IEmailServiceCallback;
    :goto_0
    if-eqz v0, :cond_0

    move-wide v1, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    .line 355
    invoke-interface/range {v0 .. v5}, Lcom/android/email/service/IEmailServiceCallback;->sendMessageStatus(JLjava/lang/String;II)V

    .line 357
    :cond_0
    return-void

    .line 353
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
    .line 368
    sget-object v1, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    move-object v0, v1

    .line 369
    .local v0, cb:Lcom/android/email/service/IEmailServiceCallback;
    :goto_0
    if-eqz v0, :cond_0

    .line 370
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/email/service/IEmailServiceCallback;->syncMailboxListStatus(JII)V

    .line 372
    :cond_0
    return-void

    .line 368
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
    .line 376
    sget-object v1, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    move-object v0, v1

    .line 377
    .local v0, cb:Lcom/android/email/service/IEmailServiceCallback;
    :goto_0
    if-eqz v0, :cond_0

    .line 378
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/email/service/IEmailServiceCallback;->syncMailboxStatus(JII)V

    .line 380
    :cond_0
    return-void

    .line 376
    .end local v0           #cb:Lcom/android/email/service/IEmailServiceCallback;
    :cond_1
    sget-object v1, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    invoke-static {v1}, Lcom/android/exchange/SyncManager;->access$000(Lcom/android/exchange/SyncManager;)Lcom/android/email/service/IEmailServiceCallback;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method
