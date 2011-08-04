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
    .line 1057
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettings$17;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 7
    .parameter "preference"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1060
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettings$17;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSettings;->access$800(Lcom/android/email/activity/setup/AccountSettings;)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettings$17;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSettings;->access$800(Lcom/android/email/activity/setup/AccountSettings;)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v0

    iget v0, v0, Lcom/android/email/provider/EmailContent$Account;->mFlags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettings$17;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSettings;->access$800(Lcom/android/email/activity/setup/AccountSettings;)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v0

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Account;->mSecuritySyncKey:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1061
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettings$17;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/AccountSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings$17;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-virtual {v1}, Lcom/android/email/activity/setup/AccountSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f08017e

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettings$17;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-static {v4}, Lcom/android/email/activity/setup/AccountSettings;->access$800(Lcom/android/email/activity/setup/AccountSettings;)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/email/provider/EmailContent$Account;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1066
    :goto_0
    return v6

    .line 1063
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettings$17;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSettings;->access$2300(Lcom/android/email/activity/setup/AccountSettings;)V

    goto :goto_0
.end method
