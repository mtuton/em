.class Lcom/android/email/activity/MessageCompose$1;
.super Landroid/os/Handler;
.source "MessageCompose.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageCompose;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageCompose;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageCompose;)V
    .locals 0
    .parameter

    .prologue
    .line 366
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$1;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    .line 367
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 384
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 387
    :goto_0
    return-void

    .line 369
    :pswitch_0
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$1;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-virtual {v0, v3}, Lcom/android/email/activity/MessageCompose;->setProgressBarIndeterminateVisibility(Z)V

    goto :goto_0

    .line 372
    :pswitch_1
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$1;->this$0:Lcom/android/email/activity/MessageCompose;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageCompose;->setProgressBarIndeterminateVisibility(Z)V

    goto :goto_0

    .line 375
    :pswitch_2
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$1;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$000(Lcom/android/email/activity/MessageCompose;)V

    goto :goto_0

    .line 378
    :pswitch_3
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$1;->this$0:Lcom/android/email/activity/MessageCompose;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$1;->this$0:Lcom/android/email/activity/MessageCompose;

    const v2, 0x7f08005e

    invoke-virtual {v1, v2}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 367
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
