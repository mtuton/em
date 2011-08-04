.class Lcom/android/email/activity/setup/AccountSettings$7;
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
    .line 763
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettings$7;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const v2, 0x7f0801ee

    .line 765
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 766
    .local v0, summary:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 767
    :cond_0
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings$7;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSettings;->access$1300(Lcom/android/email/activity/setup/AccountSettings;)Landroid/preference/EditTextPreference;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setSummary(I)V

    .line 768
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings$7;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-virtual {v1, v2}, Lcom/android/email/activity/setup/AccountSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 777
    :goto_0
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings$7;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSettings;->access$1300(Lcom/android/email/activity/setup/AccountSettings;)Landroid/preference/EditTextPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 778
    const/4 v1, 0x0

    return v1

    .line 770
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xff

    if-le v1, v2, :cond_2

    .line 771
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings$7;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-virtual {v1}, Lcom/android/email/activity/setup/AccountSettings;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0801ef

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 773
    const-string v0, "255"

    .line 775
    :cond_2
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings$7;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSettings;->access$1300(Lcom/android/email/activity/setup/AccountSettings;)Landroid/preference/EditTextPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
