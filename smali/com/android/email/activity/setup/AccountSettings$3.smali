.class Lcom/android/email/activity/setup/AccountSettings$3;
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
    .line 524
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettings$3;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 525
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 527
    .local v1, summary:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettings$3;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-static {v2, v1}, Lcom/android/email/activity/setup/AccountSettings;->access$600(Lcom/android/email/activity/setup/AccountSettings;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 529
    .local v0, checkedSummary2:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettings$3;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-static {v2}, Lcom/android/email/activity/setup/AccountSettings;->access$800(Lcom/android/email/activity/setup/AccountSettings;)Landroid/preference/EditTextPreference;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 530
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettings$3;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-static {v2}, Lcom/android/email/activity/setup/AccountSettings;->access$800(Lcom/android/email/activity/setup/AccountSettings;)Landroid/preference/EditTextPreference;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 531
    const/4 v2, 0x0

    return v2
.end method
