.class Lcom/android/email/activity/setup/AccountSetupCheckSettings$4;
.super Ljava/lang/Object;
.source "AccountSetupCheckSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountSetupCheckSettings;->showSecurityRequiredDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSetupCheckSettings;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSetupCheckSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 474
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupCheckSettings$4;->this$0:Lcom/android/email/activity/setup/AccountSetupCheckSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 476
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupCheckSettings$4;->this$0:Lcom/android/email/activity/setup/AccountSetupCheckSettings;

    invoke-static {v2}, Lcom/android/email/activity/setup/AccountSetupCheckSettings;->access$000(Lcom/android/email/activity/setup/AccountSetupCheckSettings;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 505
    :goto_0
    return-void

    .line 479
    :cond_0
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupCheckSettings$4;->this$0:Lcom/android/email/activity/setup/AccountSetupCheckSettings;

    invoke-static {v2}, Lcom/android/email/activity/setup/AccountSetupCheckSettings;->access$1100(Lcom/android/email/activity/setup/AccountSetupCheckSettings;)Landroid/widget/ProgressBar;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 480
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupCheckSettings$4;->this$0:Lcom/android/email/activity/setup/AccountSetupCheckSettings;

    invoke-static {v2}, Lcom/android/email/activity/setup/AccountSetupCheckSettings;->access$300(Lcom/android/email/activity/setup/AccountSetupCheckSettings;)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v2

    iget-object v2, v2, Lcom/android/email/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/email/provider/EmailContent$HostAuth;

    iget-object v1, v2, Lcom/android/email/provider/EmailContent$HostAuth;->mAddress:Ljava/lang/String;

    .line 481
    .local v1, host:Ljava/lang/String;
    new-array v0, v5, [Ljava/lang/String;

    aput-object v1, v0, v3

    .line 482
    .local v0, args:[Ljava/lang/Object;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupCheckSettings$4;->this$0:Lcom/android/email/activity/setup/AccountSetupCheckSettings;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x1080027

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupCheckSettings$4;->this$0:Lcom/android/email/activity/setup/AccountSetupCheckSettings;

    const v4, 0x7f08019c

    invoke-virtual {v3, v4}, Lcom/android/email/activity/setup/AccountSetupCheckSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupCheckSettings$4;->this$0:Lcom/android/email/activity/setup/AccountSetupCheckSettings;

    const v4, 0x7f08017d

    invoke-virtual {v3, v4, v0}, Lcom/android/email/activity/setup/AccountSetupCheckSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupCheckSettings$4;->this$0:Lcom/android/email/activity/setup/AccountSetupCheckSettings;

    const v4, 0x7f080113

    invoke-virtual {v3, v4}, Lcom/android/email/activity/setup/AccountSetupCheckSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/email/activity/setup/AccountSetupCheckSettings$4$2;

    invoke-direct {v4, p0}, Lcom/android/email/activity/setup/AccountSetupCheckSettings$4$2;-><init>(Lcom/android/email/activity/setup/AccountSetupCheckSettings$4;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupCheckSettings$4;->this$0:Lcom/android/email/activity/setup/AccountSetupCheckSettings;

    const v4, 0x7f080114

    invoke-virtual {v3, v4}, Lcom/android/email/activity/setup/AccountSetupCheckSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/email/activity/setup/AccountSetupCheckSettings$4$1;

    invoke-direct {v4, p0}, Lcom/android/email/activity/setup/AccountSetupCheckSettings$4$1;-><init>(Lcom/android/email/activity/setup/AccountSetupCheckSettings$4;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method
