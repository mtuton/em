.class Lcom/android/email/activity/MessageCompose$12;
.super Ljava/lang/Object;
.source "MessageCompose.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageCompose;->onAddText()V
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
    .line 2220
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$12;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 2221
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$12;->this$0:Lcom/android/email/activity/MessageCompose;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$12;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v1}, Lcom/android/email/activity/MessageCompose;->access$2900(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/AddTextSelectorAdapter;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/email/activity/AddTextSelectorAdapter;->buttonToCommand(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/email/activity/MessageCompose;->access$3000(Lcom/android/email/activity/MessageCompose;I)V

    .line 2222
    return-void
.end method
