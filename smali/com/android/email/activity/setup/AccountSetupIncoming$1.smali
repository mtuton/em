.class Lcom/android/email/activity/setup/AccountSetupIncoming$1;
.super Ljava/lang/Object;
.source "AccountSetupIncoming.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountSetupIncoming;->onCreate(Landroid/os/Bundle;)V
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
    .line 188
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupIncoming$1;->this$0:Lcom/android/email/activity/setup/AccountSetupIncoming;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupIncoming$1;->this$0:Lcom/android/email/activity/setup/AccountSetupIncoming;

    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSetupIncoming;->access$000(Lcom/android/email/activity/setup/AccountSetupIncoming;)V

    .line 186
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 189
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method
