.class Lcom/android/email/activity/setup/AccountSettings$1;
.super Landroid/os/Handler;
.source "AccountSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/AccountSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSettings;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 404
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettings$1;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x0

    const/16 v2, 0x64

    .line 405
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettings$1;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSettings;->access$400(Lcom/android/email/activity/setup/AccountSettings;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 406
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettings$1;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSettings;->access$400(Lcom/android/email/activity/setup/AccountSettings;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 407
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 448
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettings$1;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/AccountSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080209

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 451
    :goto_0
    return-void

    .line 409
    :sswitch_0
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettings$1;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/activity/setup/AccountSettings;->access$500(Lcom/android/email/activity/setup/AccountSettings;Landroid/os/Bundle;)V

    goto :goto_0

    .line 412
    :sswitch_1
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettings$1;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/AccountSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080204

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 415
    :sswitch_2
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettings$1;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/AccountSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080208

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 419
    :sswitch_3
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettings$1;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings$1;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettings$1;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    const v4, 0x7f0801f3

    invoke-virtual {v3, v4}, Lcom/android/email/activity/setup/AccountSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/activity/setup/AccountSettings;->access$402(Lcom/android/email/activity/setup/AccountSettings;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    goto :goto_0

    .line 426
    :sswitch_4
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettings$1;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/AccountSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080207

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 429
    :sswitch_5
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettings$1;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/AccountSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0800f7

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 433
    :sswitch_6
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettings$1;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/AccountSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0800f9

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 437
    :sswitch_7
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettings$1;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/AccountSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettings$1;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    const v3, 0x7f080250

    invoke-virtual {v2, v3}, Lcom/android/email/activity/setup/AccountSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 440
    :sswitch_8
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettings$1;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/AccountSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettings$1;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    const v3, 0x7f080251

    invoke-virtual {v2, v3}, Lcom/android/email/activity/setup/AccountSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 443
    :sswitch_9
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettings$1;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/AccountSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettings$1;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    const v3, 0x7f080252

    invoke-virtual {v2, v3}, Lcom/android/email/activity/setup/AccountSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 407
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x64 -> :sswitch_7
        0x65 -> :sswitch_8
        0x66 -> :sswitch_9
    .end sparse-switch
.end method
