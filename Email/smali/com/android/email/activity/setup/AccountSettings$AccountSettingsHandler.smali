.class Lcom/android/email/activity/setup/AccountSettings$AccountSettingsHandler;
.super Landroid/os/Handler;
.source "AccountSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/AccountSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AccountSettingsHandler"
.end annotation


# static fields
.field private static final MSG_EMPTYTRASH_STATUS:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSettings;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 190
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettings$AccountSettingsHandler;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public emptyTrashStatus(I)V
    .locals 3
    .parameter "status"

    .prologue
    .line 215
    const/4 v1, 0x1

    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 216
    .local v0, msg:Landroid/os/Message;
    packed-switch p1, :pswitch_data_0

    .line 230
    :pswitch_0
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings$AccountSettingsHandler;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    const v2, 0x7f0801c3

    invoke-virtual {v1, v2}, Lcom/android/email/activity/setup/AccountSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 233
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSettings$AccountSettingsHandler;->sendMessage(Landroid/os/Message;)Z

    .line 234
    return-void

    .line 218
    :pswitch_1
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings$AccountSettingsHandler;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    const v2, 0x7f0801c2

    invoke-virtual {v1, v2}, Lcom/android/email/activity/setup/AccountSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_0

    .line 221
    :pswitch_2
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings$AccountSettingsHandler;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    const v2, 0x7f0801c4

    invoke-virtual {v1, v2}, Lcom/android/email/activity/setup/AccountSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_0

    .line 225
    :pswitch_3
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings$AccountSettingsHandler;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    const v2, 0x7f0801c5

    invoke-virtual {v1, v2}, Lcom/android/email/activity/setup/AccountSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_0

    .line 216
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 195
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 209
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 198
    :pswitch_0
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettings$AccountSettingsHandler;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSettings;->access$000(Lcom/android/email/activity/setup/AccountSettings;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettings$AccountSettingsHandler;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSettings;->access$000(Lcom/android/email/activity/setup/AccountSettings;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 204
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettings$AccountSettingsHandler;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSettings;->access$100(Lcom/android/email/activity/setup/AccountSettings;)Landroid/app/AlertDialog;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 205
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettings$AccountSettingsHandler;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSettings;->access$100(Lcom/android/email/activity/setup/AccountSettings;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 195
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
