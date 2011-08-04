.class Lcom/android/email/activity/MessageCompose$12;
.super Ljava/lang/Object;
.source "MessageCompose.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageCompose;->showRecipientErrorDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageCompose;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageCompose;)V
    .locals 0
    .parameter

    .prologue
    .line 3237
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$12;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 3239
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 3240
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$12;->this$0:Lcom/android/email/activity/MessageCompose;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/email/activity/MessageCompose;->access$3902(Lcom/android/email/activity/MessageCompose;Z)Z

    .line 3241
    return-void
.end method
