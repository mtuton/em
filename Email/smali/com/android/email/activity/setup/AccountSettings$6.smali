.class Lcom/android/email/activity/setup/AccountSettings$6;
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
    .line 746
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettings$6;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .parameter "arg0"

    .prologue
    .line 748
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettings$6;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings$6;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSettings;->access$1200(Lcom/android/email/activity/setup/AccountSettings;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/email/activity/PoliciesList;->actionShowPolicyList(Landroid/content/Context;J)V

    .line 749
    const/4 v0, 0x0

    return v0
.end method
