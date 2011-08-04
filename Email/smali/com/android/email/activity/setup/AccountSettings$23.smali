.class Lcom/android/email/activity/setup/AccountSettings$23;
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
    .line 1350
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettings$23;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preference"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1353
    move-object v0, p1

    check-cast v0, Landroid/preference/CheckBoxPreference;

    move-object v1, v0

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettings$23;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-static {v2}, Lcom/android/email/activity/setup/AccountSettings;->access$800(Lcom/android/email/activity/setup/AccountSettings;)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v2

    iget v2, v2, Lcom/android/email/provider/EmailContent$Account;->mFlags:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_1

    move v2, v3

    :goto_0
    if-eq v1, v2, :cond_0

    .line 1355
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Here in Preference Change"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1356
    check-cast p1, Landroid/preference/CheckBoxPreference;

    .end local p1
    invoke-virtual {p1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1357
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings$23;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-static {v1, v3}, Lcom/android/email/activity/setup/AccountSettings;->access$2800(Lcom/android/email/activity/setup/AccountSettings;Z)V

    .line 1364
    :cond_0
    :goto_1
    return v3

    .restart local p1
    :cond_1
    move v2, v4

    .line 1353
    goto :goto_0

    .line 1360
    .end local p1
    :cond_2
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings$23;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-static {v1, v4}, Lcom/android/email/activity/setup/AccountSettings;->access$2800(Lcom/android/email/activity/setup/AccountSettings;Z)V

    goto :goto_1
.end method
