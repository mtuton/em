.class Lcom/android/email/activity/setup/OoOSetMessage$2;
.super Ljava/lang/Object;
.source "OoOSetMessage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/OoOSetMessage;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/OoOSetMessage;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/OoOSetMessage;)V
    .locals 0
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/email/activity/setup/OoOSetMessage$2;->this$0:Lcom/android/email/activity/setup/OoOSetMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/email/activity/setup/OoOSetMessage$2;->this$0:Lcom/android/email/activity/setup/OoOSetMessage;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/OoOSetMessage;->setResult(I)V

    .line 65
    iget-object v0, p0, Lcom/android/email/activity/setup/OoOSetMessage$2;->this$0:Lcom/android/email/activity/setup/OoOSetMessage;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/OoOSetMessage;->finish()V

    .line 66
    return-void
.end method
