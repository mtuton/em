.class Lcom/android/email/activity/setup/AccountSettings$2;
.super Ljava/lang/Object;
.source "AccountSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


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
    .line 656
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettings$2;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 658
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 660
    .local v1, summary:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettings$2;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-static {v2, v1}, Lcom/android/email/activity/setup/AccountSettings;->access$900(Lcom/android/email/activity/setup/AccountSettings;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 662
    .local v0, checkedSummary2:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 664
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettings$2;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-static {v2}, Lcom/android/email/activity/setup/AccountSettings;->access$1000(Lcom/android/email/activity/setup/AccountSettings;)Landroid/preference/EditTextPreference;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 665
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettings$2;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-static {v2}, Lcom/android/email/activity/setup/AccountSettings;->access$1000(Lcom/android/email/activity/setup/AccountSettings;)Landroid/preference/EditTextPreference;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 673
    :goto_0
    const/4 v2, 0x0

    return v2

    .line 670
    :cond_0
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettings$2;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-virtual {v2}, Lcom/android/email/activity/setup/AccountSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0801b8

    const/16 v4, 0x64

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
