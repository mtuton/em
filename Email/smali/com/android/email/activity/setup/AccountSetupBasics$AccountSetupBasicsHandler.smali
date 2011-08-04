.class Lcom/android/email/activity/setup/AccountSetupBasics$AccountSetupBasicsHandler;
.super Landroid/os/Handler;
.source "AccountSetupBasics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/AccountSetupBasics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AccountSetupBasicsHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSetupBasics;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSetupBasics;)V
    .locals 0
    .parameter

    .prologue
    .line 982
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupBasics$AccountSetupBasicsHandler;->this$0:Lcom/android/email/activity/setup/AccountSetupBasics;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 987
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 1001
    :cond_0
    :goto_0
    return-void

    .line 989
    :pswitch_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-nez v1, :cond_1

    const/4 v1, 0x0

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 990
    .local v0, state:Ljava/lang/Boolean;
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupBasics$AccountSetupBasicsHandler;->this$0:Lcom/android/email/activity/setup/AccountSetupBasics;

    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSetupBasics;->access$200(Lcom/android/email/activity/setup/AccountSetupBasics;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 992
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 993
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupBasics$AccountSetupBasicsHandler;->this$0:Lcom/android/email/activity/setup/AccountSetupBasics;

    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSetupBasics;->access$200(Lcom/android/email/activity/setup/AccountSetupBasics;)Landroid/app/ProgressDialog;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupBasics$AccountSetupBasicsHandler;->this$0:Lcom/android/email/activity/setup/AccountSetupBasics;

    const v3, 0x7f08011a

    invoke-virtual {v2, v3}, Lcom/android/email/activity/setup/AccountSetupBasics;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 994
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupBasics$AccountSetupBasicsHandler;->this$0:Lcom/android/email/activity/setup/AccountSetupBasics;

    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSetupBasics;->access$200(Lcom/android/email/activity/setup/AccountSetupBasics;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    goto :goto_0

    .line 989
    .end local v0           #state:Ljava/lang/Boolean;
    :cond_1
    const/4 v1, 0x1

    goto :goto_1

    .line 996
    .restart local v0       #state:Ljava/lang/Boolean;
    :cond_2
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupBasics$AccountSetupBasicsHandler;->this$0:Lcom/android/email/activity/setup/AccountSetupBasics;

    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSetupBasics;->access$200(Lcom/android/email/activity/setup/AccountSetupBasics;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->hide()V

    goto :goto_0

    .line 987
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public progress(Z)V
    .locals 2
    .parameter "progress"

    .prologue
    const/4 v1, 0x1

    .line 1004
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1005
    .local v0, msg:Landroid/os/Message;
    iput v1, v0, Landroid/os/Message;->what:I

    .line 1006
    if-eqz p1, :cond_0

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1007
    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSetupBasics$AccountSetupBasicsHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1008
    return-void

    .line 1006
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
