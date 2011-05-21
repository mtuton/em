.class Lcom/android/email/activity/setup/AccountSetupBasics$1;
.super Landroid/app/ProgressDialog;
.source "AccountSetupBasics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountSetupBasics;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSetupBasics;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSetupBasics;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 240
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupBasics$1;->this$0:Lcom/android/email/activity/setup/AccountSetupBasics;

    invoke-direct {p0, p2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 241
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupBasics$1;->hide()V

    .line 242
    return-void
.end method
