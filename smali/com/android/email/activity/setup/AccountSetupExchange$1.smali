.class Lcom/android/email/activity/setup/AccountSetupExchange$1;
.super Landroid/os/Handler;
.source "AccountSetupExchange.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/AccountSetupExchange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final ACCOUNT_HANDLER_TAG:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSetupExchange;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSetupExchange;)V
    .locals 1
    .parameter

    .prologue
    .line 142
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupExchange$1;->this$0:Lcom/android/email/activity/setup/AccountSetupExchange;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 139
    const-string v0, "AccountSetupExchange"

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupExchange$1;->ACCOUNT_HANDLER_TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v1, 0x1

    const-string v2, "AccountSetupExchange"

    .line 144
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 152
    const-string v0, "AccountSetupExchange"

    const-string v0, "AccountSetupExchange:handleMessage() default"

    invoke-static {v2, v0}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    :goto_0
    return-void

    .line 146
    :pswitch_0
    const-string v0, "AccountSetupExchange"

    const-string v0, "AccountSetupExchange:handleMessage() DISPLAY_DIALOG"

    invoke-static {v2, v0}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupExchange$1;->this$0:Lcom/android/email/activity/setup/AccountSetupExchange;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupExchange;->showDialog(I)V

    .line 148
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupExchange$1;->this$0:Lcom/android/email/activity/setup/AccountSetupExchange;

    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSetupExchange;->access$000(Lcom/android/email/activity/setup/AccountSetupExchange;)Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setClickable(Z)V

    goto :goto_0

    .line 144
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
