.class Lcom/android/email/activity/MessageCompose$14;
.super Ljava/lang/Object;
.source "MessageCompose.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageCompose;->showAddAttachmentDialog(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageCompose;

.field final synthetic val$toReplaceMedia:Z


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageCompose;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2677
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$14;->this$0:Lcom/android/email/activity/MessageCompose;

    iput-boolean p2, p0, Lcom/android/email/activity/MessageCompose$14;->val$toReplaceMedia:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 2678
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$14;->this$0:Lcom/android/email/activity/MessageCompose;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$14;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v1}, Lcom/android/email/activity/MessageCompose;->access$3300(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/AttachmentTypeSelectorAdapter;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/email/activity/AttachmentTypeSelectorAdapter;->buttonToCommand(I)I

    move-result v1

    iget-boolean v2, p0, Lcom/android/email/activity/MessageCompose$14;->val$toReplaceMedia:Z

    invoke-static {v0, v1, v2}, Lcom/android/email/activity/MessageCompose;->access$3400(Lcom/android/email/activity/MessageCompose;IZ)V

    .line 2679
    return-void
.end method
