.class Lcom/android/email/activity/setup/AccountSetupCheckSettings$3;
.super Ljava/lang/Object;
.source "AccountSetupCheckSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountSetupCheckSettings;->showErrorDialog(ZI[Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSetupCheckSettings;

.field final synthetic val$args:[Ljava/lang/Object;

.field final synthetic val$autoDiscoverAuthException:Z

.field final synthetic val$msgResId:I


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSetupCheckSettings;I[Ljava/lang/Object;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 407
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupCheckSettings$3;->this$0:Lcom/android/email/activity/setup/AccountSetupCheckSettings;

    iput p2, p0, Lcom/android/email/activity/setup/AccountSetupCheckSettings$3;->val$msgResId:I

    iput-object p3, p0, Lcom/android/email/activity/setup/AccountSetupCheckSettings$3;->val$args:[Ljava/lang/Object;

    iput-boolean p4, p0, Lcom/android/email/activity/setup/AccountSetupCheckSettings$3;->val$autoDiscoverAuthException:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 408
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupCheckSettings$3;->this$0:Lcom/android/email/activity/setup/AccountSetupCheckSettings;

    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSetupCheckSettings;->access$000(Lcom/android/email/activity/setup/AccountSetupCheckSettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 441
    :goto_0
    return-void

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupCheckSettings$3;->this$0:Lcom/android/email/activity/setup/AccountSetupCheckSettings;

    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSetupCheckSettings;->access$1100(Lcom/android/email/activity/setup/AccountSetupCheckSettings;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 412
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupCheckSettings$3;->this$0:Lcom/android/email/activity/setup/AccountSetupCheckSettings;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupCheckSettings$3;->this$0:Lcom/android/email/activity/setup/AccountSetupCheckSettings;

    const v2, 0x7f0800bf

    invoke-virtual {v1, v2}, Lcom/android/email/activity/setup/AccountSetupCheckSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupCheckSettings$3;->this$0:Lcom/android/email/activity/setup/AccountSetupCheckSettings;

    iget v2, p0, Lcom/android/email/activity/setup/AccountSetupCheckSettings$3;->val$msgResId:I

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupCheckSettings$3;->val$args:[Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/android/email/activity/setup/AccountSetupCheckSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupCheckSettings$3;->this$0:Lcom/android/email/activity/setup/AccountSetupCheckSettings;

    const v2, 0x7f080011

    invoke-virtual {v1, v2}, Lcom/android/email/activity/setup/AccountSetupCheckSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/email/activity/setup/AccountSetupCheckSettings$3$2;

    invoke-direct {v2, p0}, Lcom/android/email/activity/setup/AccountSetupCheckSettings$3$2;-><init>(Lcom/android/email/activity/setup/AccountSetupCheckSettings$3;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/email/activity/setup/AccountSetupCheckSettings$3$1;

    invoke-direct {v1, p0}, Lcom/android/email/activity/setup/AccountSetupCheckSettings$3$1;-><init>(Lcom/android/email/activity/setup/AccountSetupCheckSettings$3;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method
