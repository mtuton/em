.class Lcom/android/email/activity/setup/AccountSettings$9;
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
    .line 732
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettings$9;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1
    .parameter "preference"

    .prologue
    .line 733
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettings$9;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSettings;->access$1500(Lcom/android/email/activity/setup/AccountSettings;)V

    .line 734
    const/4 v0, 0x1

    return v0
.end method
