.class Lcom/android/email/activity/setup/AccountSetupCheckSettings$3$2;
.super Ljava/lang/Object;
.source "AccountSetupCheckSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountSetupCheckSettings$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/email/activity/setup/AccountSetupCheckSettings$3;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSetupCheckSettings$3;)V
    .locals 0
    .parameter

    .prologue
    .line 421
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupCheckSettings$3$2;->this$1:Lcom/android/email/activity/setup/AccountSetupCheckSettings$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 422
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupCheckSettings$3$2;->this$1:Lcom/android/email/activity/setup/AccountSetupCheckSettings$3;

    iget-boolean v0, v0, Lcom/android/email/activity/setup/AccountSetupCheckSettings$3;->val$autoDiscoverAuthException:Z

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupCheckSettings$3$2;->this$1:Lcom/android/email/activity/setup/AccountSetupCheckSettings$3;

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupCheckSettings$3;->this$0:Lcom/android/email/activity/setup/AccountSetupCheckSettings;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupCheckSettings;->setResult(I)V

    .line 427
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupCheckSettings$3$2;->this$1:Lcom/android/email/activity/setup/AccountSetupCheckSettings$3;

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupCheckSettings$3;->this$0:Lcom/android/email/activity/setup/AccountSetupCheckSettings;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/AccountSetupCheckSettings;->finish()V

    .line 428
    return-void
.end method
