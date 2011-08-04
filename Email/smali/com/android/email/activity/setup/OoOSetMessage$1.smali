.class Lcom/android/email/activity/setup/OoOSetMessage$1;
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
    .line 28
    iput-object p1, p0, Lcom/android/email/activity/setup/OoOSetMessage$1;->this$0:Lcom/android/email/activity/setup/OoOSetMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/4 v6, -0x1

    .line 31
    iget-object v4, p0, Lcom/android/email/activity/setup/OoOSetMessage$1;->this$0:Lcom/android/email/activity/setup/OoOSetMessage;

    const v5, 0x7f070149

    invoke-virtual {v4, v5}, Lcom/android/email/activity/setup/OoOSetMessage;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 32
    .local v1, edit:Landroid/widget/EditText;
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 34
    .local v2, message:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    .line 35
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 36
    .local v0, data:Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/email/activity/setup/OoOSetMessage$1;->this$0:Lcom/android/email/activity/setup/OoOSetMessage;

    iget-boolean v4, v4, Lcom/android/email/activity/setup/OoOSetMessage;->mMsqReqType:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 37
    const-string v4, "oooMsgReqDataInternal"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/email/activity/setup/OoOSetMessage$1;->this$0:Lcom/android/email/activity/setup/OoOSetMessage;

    invoke-virtual {v4, v6, v0}, Lcom/android/email/activity/setup/OoOSetMessage;->setResult(ILandroid/content/Intent;)V

    .line 52
    iget-object v4, p0, Lcom/android/email/activity/setup/OoOSetMessage$1;->this$0:Lcom/android/email/activity/setup/OoOSetMessage;

    invoke-virtual {v4}, Lcom/android/email/activity/setup/OoOSetMessage;->finish()V

    .line 58
    .end local v0           #data:Landroid/content/Intent;
    :goto_1
    return-void

    .line 39
    .restart local v0       #data:Landroid/content/Intent;
    :cond_1
    iget-object v4, p0, Lcom/android/email/activity/setup/OoOSetMessage$1;->this$0:Lcom/android/email/activity/setup/OoOSetMessage;

    const v5, 0x7f070147

    invoke-virtual {v4, v5}, Lcom/android/email/activity/setup/OoOSetMessage;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    .line 40
    .local v3, rb:Landroid/widget/RadioButton;
    if-eqz v3, :cond_2

    .line 41
    invoke-virtual {v3}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 42
    const-string v4, "oooMsgReqDataExternalKnown"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 45
    :cond_2
    iget-object v4, p0, Lcom/android/email/activity/setup/OoOSetMessage$1;->this$0:Lcom/android/email/activity/setup/OoOSetMessage;

    const v5, 0x7f070148

    invoke-virtual {v4, v5}, Lcom/android/email/activity/setup/OoOSetMessage;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3           #rb:Landroid/widget/RadioButton;
    check-cast v3, Landroid/widget/RadioButton;

    .line 46
    .restart local v3       #rb:Landroid/widget/RadioButton;
    if-eqz v3, :cond_0

    .line 47
    invoke-virtual {v3}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 48
    const-string v4, "oooMsgReqDataInternalUnknown"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 55
    .end local v0           #data:Landroid/content/Intent;
    .end local v3           #rb:Landroid/widget/RadioButton;
    :cond_3
    iget-object v4, p0, Lcom/android/email/activity/setup/OoOSetMessage$1;->this$0:Lcom/android/email/activity/setup/OoOSetMessage;

    invoke-virtual {v4, v6}, Lcom/android/email/activity/setup/OoOSetMessage;->setResult(I)V

    .line 56
    iget-object v4, p0, Lcom/android/email/activity/setup/OoOSetMessage$1;->this$0:Lcom/android/email/activity/setup/OoOSetMessage;

    invoke-virtual {v4}, Lcom/android/email/activity/setup/OoOSetMessage;->finish()V

    goto :goto_1
.end method
