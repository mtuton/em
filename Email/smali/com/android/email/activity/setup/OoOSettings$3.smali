.class Lcom/android/email/activity/setup/OoOSettings$3;
.super Landroid/os/Handler;
.source "OoOSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/OoOSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/OoOSettings;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/OoOSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/android/email/activity/setup/OoOSettings$3;->this$0:Lcom/android/email/activity/setup/OoOSettings;

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

    .line 140
    iget-object v0, p0, Lcom/android/email/activity/setup/OoOSettings$3;->this$0:Lcom/android/email/activity/setup/OoOSettings;

    invoke-static {v0}, Lcom/android/email/activity/setup/OoOSettings;->access$600(Lcom/android/email/activity/setup/OoOSettings;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/android/email/activity/setup/OoOSettings$3;->this$0:Lcom/android/email/activity/setup/OoOSettings;

    invoke-static {v0}, Lcom/android/email/activity/setup/OoOSettings;->access$600(Lcom/android/email/activity/setup/OoOSettings;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 143
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 180
    :pswitch_0
    iget-object v0, p0, Lcom/android/email/activity/setup/OoOSettings$3;->this$0:Lcom/android/email/activity/setup/OoOSettings;

    invoke-static {v0}, Lcom/android/email/activity/setup/OoOSettings;->access$800(Lcom/android/email/activity/setup/OoOSettings;)Lcom/android/email/Controller;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/setup/OoOSettings$3;->this$0:Lcom/android/email/activity/setup/OoOSettings;

    invoke-static {v1}, Lcom/android/email/activity/setup/OoOSettings;->access$700(Lcom/android/email/activity/setup/OoOSettings;)Lcom/android/email/activity/setup/OoOSettings$Listener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/email/Controller;->removeResultCallback(Lcom/android/email/Controller$Result;)V

    .line 181
    iget-object v0, p0, Lcom/android/email/activity/setup/OoOSettings$3;->this$0:Lcom/android/email/activity/setup/OoOSettings;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/OoOSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080238

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 184
    :goto_0
    return-void

    .line 145
    :pswitch_1
    iget-object v0, p0, Lcom/android/email/activity/setup/OoOSettings$3;->this$0:Lcom/android/email/activity/setup/OoOSettings;

    invoke-static {v0}, Lcom/android/email/activity/setup/OoOSettings;->access$800(Lcom/android/email/activity/setup/OoOSettings;)Lcom/android/email/Controller;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/setup/OoOSettings$3;->this$0:Lcom/android/email/activity/setup/OoOSettings;

    invoke-static {v1}, Lcom/android/email/activity/setup/OoOSettings;->access$700(Lcom/android/email/activity/setup/OoOSettings;)Lcom/android/email/activity/setup/OoOSettings$Listener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/email/Controller;->removeResultCallback(Lcom/android/email/Controller$Result;)V

    .line 146
    iget-object v0, p0, Lcom/android/email/activity/setup/OoOSettings$3;->this$0:Lcom/android/email/activity/setup/OoOSettings;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/activity/setup/OoOSettings;->access$900(Lcom/android/email/activity/setup/OoOSettings;Landroid/os/Bundle;)V

    goto :goto_0

    .line 149
    :pswitch_2
    iget-object v0, p0, Lcom/android/email/activity/setup/OoOSettings$3;->this$0:Lcom/android/email/activity/setup/OoOSettings;

    invoke-static {v0}, Lcom/android/email/activity/setup/OoOSettings;->access$800(Lcom/android/email/activity/setup/OoOSettings;)Lcom/android/email/Controller;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/setup/OoOSettings$3;->this$0:Lcom/android/email/activity/setup/OoOSettings;

    invoke-static {v1}, Lcom/android/email/activity/setup/OoOSettings;->access$700(Lcom/android/email/activity/setup/OoOSettings;)Lcom/android/email/activity/setup/OoOSettings$Listener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/email/Controller;->removeResultCallback(Lcom/android/email/Controller$Result;)V

    .line 150
    iget-object v0, p0, Lcom/android/email/activity/setup/OoOSettings$3;->this$0:Lcom/android/email/activity/setup/OoOSettings;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/OoOSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080233

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 151
    iget-object v0, p0, Lcom/android/email/activity/setup/OoOSettings$3;->this$0:Lcom/android/email/activity/setup/OoOSettings;

    invoke-static {v0, v5}, Lcom/android/email/activity/setup/OoOSettings;->access$900(Lcom/android/email/activity/setup/OoOSettings;Landroid/os/Bundle;)V

    goto :goto_0

    .line 154
    :pswitch_3
    iget-object v0, p0, Lcom/android/email/activity/setup/OoOSettings$3;->this$0:Lcom/android/email/activity/setup/OoOSettings;

    invoke-static {v0}, Lcom/android/email/activity/setup/OoOSettings;->access$800(Lcom/android/email/activity/setup/OoOSettings;)Lcom/android/email/Controller;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/setup/OoOSettings$3;->this$0:Lcom/android/email/activity/setup/OoOSettings;

    invoke-static {v1}, Lcom/android/email/activity/setup/OoOSettings;->access$700(Lcom/android/email/activity/setup/OoOSettings;)Lcom/android/email/activity/setup/OoOSettings$Listener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/email/Controller;->removeResultCallback(Lcom/android/email/Controller$Result;)V

    .line 155
    iget-object v0, p0, Lcom/android/email/activity/setup/OoOSettings$3;->this$0:Lcom/android/email/activity/setup/OoOSettings;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/OoOSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080237

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 158
    :pswitch_4
    iget-object v0, p0, Lcom/android/email/activity/setup/OoOSettings$3;->this$0:Lcom/android/email/activity/setup/OoOSettings;

    iget-object v1, p0, Lcom/android/email/activity/setup/OoOSettings$3;->this$0:Lcom/android/email/activity/setup/OoOSettings;

    iget-object v2, p0, Lcom/android/email/activity/setup/OoOSettings$3;->this$0:Lcom/android/email/activity/setup/OoOSettings;

    const v3, 0x7f080222

    invoke-virtual {v2, v3}, Lcom/android/email/activity/setup/OoOSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v5, v2, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/activity/setup/OoOSettings;->access$602(Lcom/android/email/activity/setup/OoOSettings;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    goto :goto_0

    .line 172
    :pswitch_5
    iget-object v0, p0, Lcom/android/email/activity/setup/OoOSettings$3;->this$0:Lcom/android/email/activity/setup/OoOSettings;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/OoOSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f08003a

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 175
    :pswitch_6
    iget-object v0, p0, Lcom/android/email/activity/setup/OoOSettings$3;->this$0:Lcom/android/email/activity/setup/OoOSettings;

    invoke-static {v0}, Lcom/android/email/activity/setup/OoOSettings;->access$800(Lcom/android/email/activity/setup/OoOSettings;)Lcom/android/email/Controller;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/setup/OoOSettings$3;->this$0:Lcom/android/email/activity/setup/OoOSettings;

    invoke-static {v1}, Lcom/android/email/activity/setup/OoOSettings;->access$700(Lcom/android/email/activity/setup/OoOSettings;)Lcom/android/email/activity/setup/OoOSettings$Listener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/email/Controller;->removeResultCallback(Lcom/android/email/Controller$Result;)V

    .line 176
    iget-object v0, p0, Lcom/android/email/activity/setup/OoOSettings$3;->this$0:Lcom/android/email/activity/setup/OoOSettings;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/OoOSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080235

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 143
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method
