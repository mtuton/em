.class Lcom/android/email/activity/setup/AccountSetupExchange$2;
.super Ljava/lang/Object;
.source "AccountSetupExchange.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountSetupExchange;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSetupExchange;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSetupExchange;)V
    .locals 0
    .parameter

    .prologue
    .line 249
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupExchange$2;->this$0:Lcom/android/email/activity/setup/AccountSetupExchange;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupExchange$2;->this$0:Lcom/android/email/activity/setup/AccountSetupExchange;

    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSetupExchange;->access$100(Lcom/android/email/activity/setup/AccountSetupExchange;)Z

    .line 244
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 247
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 250
    return-void
.end method
