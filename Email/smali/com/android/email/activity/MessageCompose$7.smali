.class Lcom/android/email/activity/MessageCompose$7;
.super Ljava/lang/Object;
.source "MessageCompose.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageCompose;->initViews()V
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
    .line 1065
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$7;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 1065
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "after"

    .prologue
    .line 1057
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    const/4 v1, 0x1

    .line 1061
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$7;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v0, v1}, Lcom/android/email/activity/MessageCompose;->access$902(Lcom/android/email/activity/MessageCompose;Z)Z

    .line 1062
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$7;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v0, v1}, Lcom/android/email/activity/MessageCompose;->access$1502(Lcom/android/email/activity/MessageCompose;Z)Z

    .line 1063
    return-void
.end method
