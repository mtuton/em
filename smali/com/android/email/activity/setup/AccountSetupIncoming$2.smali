.class Lcom/android/email/activity/setup/AccountSetupIncoming$2;
.super Ljava/lang/Object;
.source "AccountSetupIncoming.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
    .line 213
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupIncoming$2;->this$0:Lcom/android/email/activity/setup/AccountSetupIncoming;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .parameter "s"

    .prologue
    const v3, 0xffff

    .line 199
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupIncoming$2;->this$0:Lcom/android/email/activity/setup/AccountSetupIncoming;

    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSetupIncoming;->access$100(Lcom/android/email/activity/setup/AccountSetupIncoming;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 200
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupIncoming$2;->this$0:Lcom/android/email/activity/setup/AccountSetupIncoming;

    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSetupIncoming;->access$100(Lcom/android/email/activity/setup/AccountSetupIncoming;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 201
    .local v0, port:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-le v1, v3, :cond_0

    .line 202
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupIncoming$2;->this$0:Lcom/android/email/activity/setup/AccountSetupIncoming;

    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSetupIncoming;->access$100(Lcom/android/email/activity/setup/AccountSetupIncoming;)Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 203
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupIncoming$2;->this$0:Lcom/android/email/activity/setup/AccountSetupIncoming;

    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSetupIncoming;->access$100(Lcom/android/email/activity/setup/AccountSetupIncoming;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncoming$2;->this$0:Lcom/android/email/activity/setup/AccountSetupIncoming;

    invoke-static {v2}, Lcom/android/email/activity/setup/AccountSetupIncoming;->access$100(Lcom/android/email/activity/setup/AccountSetupIncoming;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 207
    .end local v0           #port:Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupIncoming$2;->this$0:Lcom/android/email/activity/setup/AccountSetupIncoming;

    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSetupIncoming;->access$200(Lcom/android/email/activity/setup/AccountSetupIncoming;)V

    .line 208
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 211
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 214
    return-void
.end method
