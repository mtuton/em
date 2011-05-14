.class Lcom/android/email/activity/setup/AutoDiscoverSetupExchange$3;
.super Ljava/lang/Object;
.source "AutoDiscoverSetupExchange.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AutoDiscoverSetupExchange;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AutoDiscoverSetupExchange;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AutoDiscoverSetupExchange;)V
    .locals 0
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchange$3;->this$0:Lcom/android/email/activity/setup/AutoDiscoverSetupExchange;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    .line 110
    iget-object v6, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchange$3;->this$0:Lcom/android/email/activity/setup/AutoDiscoverSetupExchange;

    iget-object v6, v6, Lcom/android/email/activity/setup/AutoDiscoverSetupExchange;->mEmailText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 111
    .local v1, email:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchange$3;->this$0:Lcom/android/email/activity/setup/AutoDiscoverSetupExchange;

    iget-object v6, v6, Lcom/android/email/activity/setup/AutoDiscoverSetupExchange;->mPasswordText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 112
    .local v3, password:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchange$3;->this$0:Lcom/android/email/activity/setup/AutoDiscoverSetupExchange;

    iget-object v6, v6, Lcom/android/email/activity/setup/AutoDiscoverSetupExchange;->mDomainText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, domain:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchange$3;->this$0:Lcom/android/email/activity/setup/AutoDiscoverSetupExchange;

    iget-object v6, v6, Lcom/android/email/activity/setup/AutoDiscoverSetupExchange;->mUserNameText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 114
    .local v5, userName:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchange$3;->this$0:Lcom/android/email/activity/setup/AutoDiscoverSetupExchange;

    const v7, 0x7f070026

    invoke-virtual {v6, v7}, Lcom/android/email/activity/setup/AutoDiscoverSetupExchange;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    invoke-virtual {v6}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    .line 116
    .local v4, trustAllCert:Z
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 118
    .local v2, intentSendUIUpdates:Landroid/content/Intent;
    const-string v6, "com.android.email.EMAIL"

    invoke-virtual {v2, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    const-string v6, "com.android.email.DOMAIN"

    invoke-virtual {v2, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    const-string v6, "com.android.email.PASSWORD"

    invoke-virtual {v2, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    const-string v6, "com.android.email.USER"

    invoke-virtual {v2, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    const-string v6, "com.android.email.TRUSTCERT"

    invoke-virtual {v2, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 124
    iget-object v6, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchange$3;->this$0:Lcom/android/email/activity/setup/AutoDiscoverSetupExchange;

    const/4 v7, -0x1

    invoke-virtual {v6, v7, v2}, Lcom/android/email/activity/setup/AutoDiscoverSetupExchange;->setResult(ILandroid/content/Intent;)V

    .line 126
    iget-object v6, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchange$3;->this$0:Lcom/android/email/activity/setup/AutoDiscoverSetupExchange;

    invoke-virtual {v6}, Lcom/android/email/activity/setup/AutoDiscoverSetupExchange;->finish()V

    .line 127
    return-void
.end method
