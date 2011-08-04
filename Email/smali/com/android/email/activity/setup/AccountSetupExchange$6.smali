.class Lcom/android/email/activity/setup/AccountSetupExchange$6;
.super Ljava/lang/Object;
.source "AccountSetupExchange.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountSetupExchange;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSetupExchange;

.field final synthetic val$checkboxImei:Landroid/widget/CheckBox;

.field final synthetic val$mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSetupExchange;Landroid/content/SharedPreferences;Landroid/widget/CheckBox;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 507
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupExchange$6;->this$0:Lcom/android/email/activity/setup/AccountSetupExchange;

    iput-object p2, p0, Lcom/android/email/activity/setup/AccountSetupExchange$6;->val$mSharedPreferences:Landroid/content/SharedPreferences;

    iput-object p3, p0, Lcom/android/email/activity/setup/AccountSetupExchange$6;->val$checkboxImei:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 509
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupExchange$6;->this$0:Lcom/android/email/activity/setup/AccountSetupExchange;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/email/activity/setup/AccountSetupExchange;->dismissDialog(I)V

    .line 510
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupExchange$6;->val$mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 511
    .local v0, editPref:Landroid/content/SharedPreferences$Editor;
    const-string v1, "isCheckIMEI"

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupExchange$6;->val$checkboxImei:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 512
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 513
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupExchange$6;->this$0:Lcom/android/email/activity/setup/AccountSetupExchange;

    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSetupExchange;->access$200(Lcom/android/email/activity/setup/AccountSetupExchange;)V

    .line 514
    return-void
.end method
