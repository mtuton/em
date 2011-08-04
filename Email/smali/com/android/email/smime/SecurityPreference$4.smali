.class Lcom/android/email/smime/SecurityPreference$4;
.super Ljava/lang/Object;
.source "SecurityPreference.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/smime/SecurityPreference;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/smime/SecurityPreference;


# direct methods
.method constructor <init>(Lcom/android/email/smime/SecurityPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 187
    iput-object p1, p0, Lcom/android/email/smime/SecurityPreference$4;->this$0:Lcom/android/email/smime/SecurityPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .parameter "arg0"

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/email/smime/SecurityPreference$4;->this$0:Lcom/android/email/smime/SecurityPreference;

    iget-object v1, p0, Lcom/android/email/smime/SecurityPreference$4;->this$0:Lcom/android/email/smime/SecurityPreference;

    invoke-static {v1}, Lcom/android/email/smime/SecurityPreference;->access$200(Lcom/android/email/smime/SecurityPreference;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/email/activity/PoliciesList;->actionShowPolicyList(Landroid/content/Context;J)V

    .line 190
    const/4 v0, 0x0

    return v0
.end method
