.class Lcom/android/email/activity/setup/AccountSetupCheckSettings$3$1;
.super Ljava/lang/Object;
.source "AccountSetupCheckSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


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
    .line 452
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupCheckSettings$3$1;->this$1:Lcom/android/email/activity/setup/AccountSetupCheckSettings$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "info"
    .parameter "keycode"
    .parameter "keyevent"

    .prologue
    .line 454
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 455
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupCheckSettings$3$1;->this$1:Lcom/android/email/activity/setup/AccountSetupCheckSettings$3;

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupCheckSettings$3;->this$0:Lcom/android/email/activity/setup/AccountSetupCheckSettings;

    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSetupCheckSettings;->access$1200(Lcom/android/email/activity/setup/AccountSetupCheckSettings;)V

    .line 457
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
