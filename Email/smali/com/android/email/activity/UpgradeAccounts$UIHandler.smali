.class Lcom/android/email/activity/UpgradeAccounts$UIHandler;
.super Landroid/os/Handler;
.source "UpgradeAccounts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/UpgradeAccounts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UIHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/UpgradeAccounts;


# direct methods
.method constructor <init>(Lcom/android/email/activity/UpgradeAccounts;)V
    .locals 0
    .parameter

    .prologue
    .line 274
    iput-object p1, p0, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public error(ILjava/lang/String;)V
    .locals 2
    .parameter "accountNum"
    .parameter "error"

    .prologue
    .line 336
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 337
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 338
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 339
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 340
    invoke-virtual {p0, v0}, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->sendMessage(Landroid/os/Message;)Z

    .line 341
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 282
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 301
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 303
    :goto_0
    return-void

    .line 284
    :pswitch_0
    iget-object v0, p0, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    invoke-static {v0}, Lcom/android/email/activity/UpgradeAccounts;->access$000(Lcom/android/email/activity/UpgradeAccounts;)[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    aget-object v0, v0, v1

    iget v1, p1, Landroid/os/Message;->arg2:I

    iput v1, v0, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->maxProgress:I

    .line 285
    iget-object v0, p0, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    invoke-static {v0}, Lcom/android/email/activity/UpgradeAccounts;->access$200(Lcom/android/email/activity/UpgradeAccounts;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    goto :goto_0

    .line 288
    :pswitch_1
    iget-object v0, p0, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    invoke-static {v0}, Lcom/android/email/activity/UpgradeAccounts;->access$000(Lcom/android/email/activity/UpgradeAccounts;)[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    aget-object v0, v0, v1

    iget v1, p1, Landroid/os/Message;->arg2:I

    iput v1, v0, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->progress:I

    .line 289
    iget-object v0, p0, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    invoke-static {v0}, Lcom/android/email/activity/UpgradeAccounts;->access$200(Lcom/android/email/activity/UpgradeAccounts;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    goto :goto_0

    .line 292
    :pswitch_2
    iget-object v0, p0, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    invoke-static {v0}, Lcom/android/email/activity/UpgradeAccounts;->access$000(Lcom/android/email/activity/UpgradeAccounts;)[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    aget-object v0, v0, v1

    iget v1, v0, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->progress:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->progress:I

    .line 293
    iget-object v0, p0, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    invoke-static {v0}, Lcom/android/email/activity/UpgradeAccounts;->access$200(Lcom/android/email/activity/UpgradeAccounts;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    goto :goto_0

    .line 296
    :pswitch_3
    iget-object v0, p0, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    invoke-static {v0}, Lcom/android/email/activity/UpgradeAccounts;->access$000(Lcom/android/email/activity/UpgradeAccounts;)[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    aget-object v1, v0, v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->errorMessage:Ljava/lang/String;

    .line 297
    iget-object v0, p0, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    invoke-static {v0}, Lcom/android/email/activity/UpgradeAccounts;->access$200(Lcom/android/email/activity/UpgradeAccounts;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 298
    iget-object v0, p0, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    invoke-static {v0}, Lcom/android/email/activity/UpgradeAccounts;->access$300(Lcom/android/email/activity/UpgradeAccounts;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 282
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public incProgress(I)V
    .locals 1
    .parameter "accountNum"

    .prologue
    .line 322
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->incProgress(II)V

    .line 323
    return-void
.end method

.method public incProgress(II)V
    .locals 2
    .parameter "accountNum"
    .parameter "incrementBy"

    .prologue
    .line 326
    if-nez p2, :cond_0

    .line 332
    :goto_0
    return-void

    .line 327
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 328
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 329
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 330
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 331
    invoke-virtual {p0, v0}, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public setMaxProgress(II)V
    .locals 2
    .parameter "accountNum"
    .parameter "max"

    .prologue
    .line 306
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 307
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 308
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 309
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 310
    invoke-virtual {p0, v0}, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->sendMessage(Landroid/os/Message;)Z

    .line 311
    return-void
.end method

.method public setProgress(II)V
    .locals 2
    .parameter "accountNum"
    .parameter "progress"

    .prologue
    .line 314
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 315
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 316
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 317
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 318
    invoke-virtual {p0, v0}, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->sendMessage(Landroid/os/Message;)Z

    .line 319
    return-void
.end method
