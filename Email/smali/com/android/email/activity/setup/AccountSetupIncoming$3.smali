.class Lcom/android/email/activity/setup/AccountSetupIncoming$3;
.super Ljava/lang/Object;
.source "AccountSetupIncoming.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountSetupIncoming;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSetupIncoming;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSetupIncoming;)V
    .locals 0
    .parameter

    .prologue
    .line 349
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupIncoming$3;->this$0:Lcom/android/email/activity/setup/AccountSetupIncoming;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 350
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupIncoming$3;->this$0:Lcom/android/email/activity/setup/AccountSetupIncoming;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupIncoming;->dismissDialog(I)V

    .line 351
    return-void
.end method
