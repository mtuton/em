.class Lcom/android/email/activity/setup/AccountSettings$17;
.super Ljava/lang/Object;
.source "AccountSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountSettings;->onCreate(Landroid/os/Bundle;)V
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
    .line 972
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettings$17;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preference"

    .prologue
    .line 973
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettings$17;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    iget-object v2, v2, Lcom/android/email/activity/setup/AccountSettings;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/admin/DevicePolicyManager;->getMaxCalendarAge(Landroid/content/ComponentName;)I

    move-result v0

    .line 974
    .local v0, calenderAge:I
    const/4 v2, 0x3

    if-le v0, v2, :cond_0

    const/16 v2, 0x8

    if-ge v0, v2, :cond_0

    .line 975
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 976
    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettings$17;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-static {v2, v0}, Lcom/android/email/activity/setup/AccountSettings;->access$2100(Lcom/android/email/activity/setup/AccountSettings;I)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    sub-int v3, v0, v3

    aget-object v2, v2, v3

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 977
    const/16 v2, 0x66

    iput v2, v1, Landroid/os/Message;->what:I

    .line 978
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettings$17;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-static {v2}, Lcom/android/email/activity/setup/AccountSettings;->access$200(Lcom/android/email/activity/setup/AccountSettings;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 980
    .end local v1           #msg:Landroid/os/Message;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method
