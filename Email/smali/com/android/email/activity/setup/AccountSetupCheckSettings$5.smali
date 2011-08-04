.class Lcom/android/email/activity/setup/AccountSetupCheckSettings$5;
.super Ljava/lang/Object;
.source "AccountSetupCheckSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountSetupCheckSettings;->onCloseActivity()V
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
    .line 511
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupCheckSettings$5;->this$0:Lcom/android/email/activity/setup/AccountSetupCheckSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 513
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupCheckSettings$5;->this$0:Lcom/android/email/activity/setup/AccountSetupCheckSettings;

    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSetupCheckSettings;->access$000(Lcom/android/email/activity/setup/AccountSetupCheckSettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 521
    :goto_0
    return-void

    .line 516
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupCheckSettings$5;->this$0:Lcom/android/email/activity/setup/AccountSetupCheckSettings;

    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSetupCheckSettings;->access$200(Lcom/android/email/activity/setup/AccountSetupCheckSettings;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 518
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupCheckSettings$5;->this$0:Lcom/android/email/activity/setup/AccountSetupCheckSettings;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupCheckSettings;->setResult(I)V

    .line 520
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupCheckSettings$5;->this$0:Lcom/android/email/activity/setup/AccountSetupCheckSettings;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/AccountSetupCheckSettings;->finish()V

    goto :goto_0
.end method
