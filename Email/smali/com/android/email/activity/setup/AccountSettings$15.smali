.class Lcom/android/email/activity/setup/AccountSettings$15;
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
    .line 897
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettings$15;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 9
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v8, 0x0

    .line 900
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 901
    .local v2, strBuff:Ljava/lang/StringBuffer;
    new-instance v5, Landroid/text/TextPaint;

    invoke-direct {v5}, Landroid/text/TextPaint;-><init>()V

    .line 902
    .local v5, textPaint:Landroid/text/TextPaint;
    const/4 v1, 0x0

    .line 903
    .local v1, measuredTextWidth:I
    const/4 v3, 0x0

    .line 905
    .local v3, strBuffLen:I
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 907
    .local v4, summary:Ljava/lang/String;
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 909
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v6

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v1, v6

    .line 911
    const/16 v6, 0x2e4

    if-le v1, v6, :cond_1

    .line 912
    const/4 v0, 0x0

    .line 914
    .local v0, measureStrBuf:Ljava/lang/StringBuffer;
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    .line 916
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    .end local v0           #measureStrBuf:Ljava/lang/StringBuffer;
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 918
    .restart local v0       #measureStrBuf:Ljava/lang/StringBuffer;
    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v8, v3}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 919
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v6

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v1, v6

    .line 921
    const/16 v6, 0x2da

    if-gt v1, v6, :cond_0

    .line 922
    const-string v6, "..."

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 923
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSettings$15;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-static {v6}, Lcom/android/email/activity/setup/AccountSettings;->access$2000(Lcom/android/email/activity/setup/AccountSettings;)Landroid/preference/EditTextPreference;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 933
    .end local v0           #measureStrBuf:Ljava/lang/StringBuffer;
    :goto_0
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSettings$15;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-static {v6}, Lcom/android/email/activity/setup/AccountSettings;->access$2000(Lcom/android/email/activity/setup/AccountSettings;)Landroid/preference/EditTextPreference;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 935
    return v8

    .line 926
    :cond_1
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSettings$15;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-static {v6}, Lcom/android/email/activity/setup/AccountSettings;->access$2000(Lcom/android/email/activity/setup/AccountSettings;)Landroid/preference/EditTextPreference;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
