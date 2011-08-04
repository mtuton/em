.class Lcom/android/email/activity/setup/AccountSetupCheckSettings$4$1;
.super Ljava/lang/Object;
.source "AccountSetupCheckSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountSetupCheckSettings$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/email/activity/setup/AccountSetupCheckSettings$4;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSetupCheckSettings$4;)V
    .locals 0
    .parameter

    .prologue
    .line 498
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupCheckSettings$4$1;->this$1:Lcom/android/email/activity/setup/AccountSetupCheckSettings$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 500
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupCheckSettings$4$1;->this$1:Lcom/android/email/activity/setup/AccountSetupCheckSettings$4;

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupCheckSettings$4;->this$0:Lcom/android/email/activity/setup/AccountSetupCheckSettings;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupCheckSettings;->setResult(I)V

    .line 501
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupCheckSettings$4$1;->this$1:Lcom/android/email/activity/setup/AccountSetupCheckSettings$4;

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupCheckSettings$4;->this$0:Lcom/android/email/activity/setup/AccountSetupCheckSettings;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/AccountSetupCheckSettings;->finish()V

    .line 502
    return-void
.end method
