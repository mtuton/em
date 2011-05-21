.class Lcom/android/email/activity/setup/AccountSetupCheckSettings$2;
.super Ljava/lang/Object;
.source "AccountSetupCheckSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountSetupCheckSettings;->setMessage(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSetupCheckSettings;

.field final synthetic val$resId:I


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSetupCheckSettings;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 374
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupCheckSettings$2;->this$0:Lcom/android/email/activity/setup/AccountSetupCheckSettings;

    iput p2, p0, Lcom/android/email/activity/setup/AccountSetupCheckSettings$2;->val$resId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 375
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupCheckSettings$2;->this$0:Lcom/android/email/activity/setup/AccountSetupCheckSettings;

    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSetupCheckSettings;->access$000(Lcom/android/email/activity/setup/AccountSetupCheckSettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 379
    :goto_0
    return-void

    .line 378
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupCheckSettings$2;->this$0:Lcom/android/email/activity/setup/AccountSetupCheckSettings;

    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSetupCheckSettings;->access$1000(Lcom/android/email/activity/setup/AccountSetupCheckSettings;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupCheckSettings$2;->this$0:Lcom/android/email/activity/setup/AccountSetupCheckSettings;

    iget v2, p0, Lcom/android/email/activity/setup/AccountSetupCheckSettings$2;->val$resId:I

    invoke-virtual {v1, v2}, Lcom/android/email/activity/setup/AccountSetupCheckSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
