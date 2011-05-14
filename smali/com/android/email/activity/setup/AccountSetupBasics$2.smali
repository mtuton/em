.class Lcom/android/email/activity/setup/AccountSetupBasics$2;
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


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSetupBasics;)V
    .locals 0
    .parameter

    .prologue
    .line 406
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupBasics$2;->this$0:Lcom/android/email/activity/setup/AccountSetupBasics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 407
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics$2;->this$0:Lcom/android/email/activity/setup/AccountSetupBasics;

    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSetupBasics;->access$000(Lcom/android/email/activity/setup/AccountSetupBasics;)V

    .line 408
    return-void
.end method
