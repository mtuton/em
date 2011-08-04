.class Lcom/android/email/activity/setup/AccountSettings$DeviceInfoCallBack;
.super Ljava/lang/Object;
.source "AccountSettings.java"

# interfaces
.implements Lcom/android/email/activity/setup/DeviceInformationTask$statusCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/AccountSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeviceInfoCallBack"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSettings;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/setup/AccountSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 1955
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettings$DeviceInfoCallBack;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/setup/AccountSettings;Lcom/android/email/activity/setup/AccountSettings$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1955
    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/AccountSettings$DeviceInfoCallBack;-><init>(Lcom/android/email/activity/setup/AccountSettings;)V

    return-void
.end method


# virtual methods
.method public status(I)V
    .locals 3
    .parameter "code"

    .prologue
    .line 1959
    sparse-switch p1, :sswitch_data_0

    .line 1969
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings$DeviceInfoCallBack;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSettings;->access$300(Lcom/android/email/activity/setup/AccountSettings;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1971
    .local v0, msg:Landroid/os/Message;
    :goto_0
    if-eqz v0, :cond_0

    .line 1972
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1973
    :cond_0
    return-void

    .line 1961
    .end local v0           #msg:Landroid/os/Message;
    :sswitch_0
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings$DeviceInfoCallBack;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSettings;->access$300(Lcom/android/email/activity/setup/AccountSettings;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1962
    .restart local v0       #msg:Landroid/os/Message;
    goto :goto_0

    .line 1965
    .end local v0           #msg:Landroid/os/Message;
    :sswitch_1
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings$DeviceInfoCallBack;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSettings;->access$300(Lcom/android/email/activity/setup/AccountSettings;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1966
    .restart local v0       #msg:Landroid/os/Message;
    goto :goto_0

    .line 1959
    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_1
        0x1388 -> :sswitch_0
    .end sparse-switch
.end method
