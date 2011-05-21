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


# static fields
.field private static final MSG_ERROR:I = 0x4

.field private static final MSG_INC_PROGRESS:I = 0x3

.field private static final MSG_SET_MAX:I = 0x1

.field private static final MSG_SET_PROGRESS:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/UpgradeAccounts;


# direct methods
.method constructor <init>(Lcom/android/email/activity/UpgradeAccounts;)V
    .locals 0
    .parameter

    .prologue
    .line 273
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
    .line 335
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 336
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 337
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 338
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 339
    invoke-virtual {p0, v0}, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->sendMessage(Landroid/os/Message;)Z

    .line 340
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 281
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 300
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 302
    :goto_0
    return-void

    .line 283
    :pswitch_0
    iget-object v0, p0, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    invoke-static {v0}, Lcom/android/email/activity/UpgradeAccounts;->access$000(Lcom/android/email/activity/UpgradeAccounts;)[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    aget-object v0, v0, v1

    iget v1, p1, Landroid/os/Message;->arg2:I

    iput v1, v0, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->maxProgress:I

    .line 284
    iget-object v0, p0, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    invoke-static {v0}, Lcom/android/email/activity/UpgradeAccounts;->access$200(Lcom/android/email/activity/UpgradeAccounts;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    goto :goto_0

    .line 287
    :pswitch_1
    iget-object v0, p0, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    invoke-static {v0}, Lcom/android/email/activity/UpgradeAccounts;->access$000(Lcom/android/email/activity/UpgradeAccounts;)[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    aget-object v0, v0, v1

    iget v1, p1, Landroid/os/Message;->arg2:I

    iput v1, v0, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->progress:I

    .line 288
    iget-object v0, p0, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    invoke-static {v0}, Lcom/android/email/activity/UpgradeAccounts;->access$200(Lcom/android/email/activity/UpgradeAccounts;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    goto :goto_0

    .line 291
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

    .line 292
    iget-object v0, p0, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    invoke-static {v0}, Lcom/android/email/activity/UpgradeAccounts;->access$200(Lcom/android/email/activity/UpgradeAccounts;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    goto :goto_0

    .line 295
    :pswitch_3
    iget-object v0, p0, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    invoke-static {v0}, Lcom/android/email/activity/UpgradeAccounts;->access$000(Lcom/android/email/activity/UpgradeAccounts;)[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    aget-object v1, v0, v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->errorMessage:Ljava/lang/String;

    .line 296
    iget-object v0, p0, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    invoke-static {v0}, Lcom/android/email/activity/UpgradeAccounts;->access$200(Lcom/android/email/activity/UpgradeAccounts;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 297
    iget-object v0, p0, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    invoke-static {v0}, Lcom/android/email/activity/UpgradeAccounts;->access$300(Lcom/android/email/activity/UpgradeAccounts;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 281
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
    .line 321
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->incProgress(II)V

    .line 322
    return-void
.end method

.method public incProgress(II)V
    .locals 2
    .parameter "accountNum"
    .parameter "incrementBy"

    .prologue
    .line 325
    if-nez p2, :cond_0

    .line 331
    :goto_0
    return-void

    .line 326
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 327
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 328
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 329
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 330
    invoke-virtual {p0, v0}, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public setMaxProgress(II)V
    .locals 2
    .parameter "accountNum"
    .parameter "max"

    .prologue
    .line 305
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 306
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 307
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 308
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 309
    invoke-virtual {p0, v0}, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->sendMessage(Landroid/os/Message;)Z

    .line 310
    return-void
.end method

.method public setProgress(II)V
    .locals 2
    .parameter "accountNum"
    .parameter "progress"

    .prologue
    .line 313
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 314
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 315
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 316
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 317
    invoke-virtual {p0, v0}, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->sendMessage(Landroid/os/Message;)Z

    .line 318
    return-void
.end method
