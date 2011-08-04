.class Lcom/android/email/activity/setup/AccountSetupBasics$6;
.super Ljava/lang/Object;
.source "AccountSetupBasics.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountSetupBasics;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSetupBasics;

.field final synthetic val$checkboxImei:Landroid/widget/CheckBox;

.field final synthetic val$mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSetupBasics;Landroid/content/SharedPreferences;Landroid/widget/CheckBox;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 487
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupBasics$6;->this$0:Lcom/android/email/activity/setup/AccountSetupBasics;

    iput-object p2, p0, Lcom/android/email/activity/setup/AccountSetupBasics$6;->val$mSharedPreferences:Landroid/content/SharedPreferences;

    iput-object p3, p0, Lcom/android/email/activity/setup/AccountSetupBasics$6;->val$checkboxImei:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 489
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupBasics$6;->this$0:Lcom/android/email/activity/setup/AccountSetupBasics;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/email/activity/setup/AccountSetupBasics;->dismissDialog(I)V

    .line 490
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupBasics$6;->val$mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 491
    .local v0, editPref:Landroid/content/SharedPreferences$Editor;
    const-string v1, "isCheckIMEI"

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupBasics$6;->val$checkboxImei:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 492
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 493
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupBasics$6;->this$0:Lcom/android/email/activity/setup/AccountSetupBasics;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/email/activity/setup/AccountSetupBasics;->access$100(Lcom/android/email/activity/setup/AccountSetupBasics;Z)V

    .line 494
    return-void
.end method
