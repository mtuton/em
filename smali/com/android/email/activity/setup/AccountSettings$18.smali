.class Lcom/android/email/activity/setup/AccountSettings$18;
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
    .line 984
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettings$18;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 985
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 986
    .local v1, summary:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettings$18;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-static {v2}, Lcom/android/email/activity/setup/AccountSettings;->access$2200(Lcom/android/email/activity/setup/AccountSettings;)Landroid/preference/ListPreference;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 987
    .local v0, index:I
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettings$18;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-static {v2}, Lcom/android/email/activity/setup/AccountSettings;->access$2200(Lcom/android/email/activity/setup/AccountSettings;)Landroid/preference/ListPreference;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettings$18;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-static {v3}, Lcom/android/email/activity/setup/AccountSettings;->access$2200(Lcom/android/email/activity/setup/AccountSettings;)Landroid/preference/ListPreference;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 988
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettings$18;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-static {v2}, Lcom/android/email/activity/setup/AccountSettings;->access$2200(Lcom/android/email/activity/setup/AccountSettings;)Landroid/preference/ListPreference;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 989
    const/4 v2, 0x0

    return v2
.end method