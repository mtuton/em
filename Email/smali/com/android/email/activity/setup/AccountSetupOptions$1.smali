.class Lcom/android/email/activity/setup/AccountSetupOptions$1;
.super Ljava/lang/Object;
.source "AccountSetupOptions.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/AccountSetupOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/accounts/AccountManagerCallback",
        "<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSetupOptions;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSetupOptions;)V
    .locals 0
    .parameter

    .prologue
    .line 318
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupOptions$1;->this$0:Lcom/android/email/activity/setup/AccountSetupOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, future:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    const-string v5, "addAccount failed: "

    const-string v4, "Email"

    .line 321
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 322
    .local v0, bundle:Landroid/os/Bundle;
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    .line 323
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupOptions$1;->this$0:Lcom/android/email/activity/setup/AccountSetupOptions;

    invoke-static {v2}, Lcom/android/email/activity/setup/AccountSetupOptions;->access$100(Lcom/android/email/activity/setup/AccountSetupOptions;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/email/activity/setup/AccountSetupOptions$1$1;

    invoke-direct {v3, p0}, Lcom/android/email/activity/setup/AccountSetupOptions$1$1;-><init>(Lcom/android/email/activity/setup/AccountSetupOptions$1;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_2

    .line 338
    .end local v0           #bundle:Landroid/os/Bundle;
    :goto_0
    return-void

    .line 329
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 330
    .local v1, e:Landroid/accounts/OperationCanceledException;
    const-string v2, "Email"

    const-string v2, "addAccount was canceled"

    invoke-static {v4, v2}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    .end local v1           #e:Landroid/accounts/OperationCanceledException;
    :goto_1
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupOptions$1;->this$0:Lcom/android/email/activity/setup/AccountSetupOptions;

    const v3, 0x7f0800d1

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const v6, 0x7f080104

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/android/email/activity/setup/AccountSetupOptions;->access$200(Lcom/android/email/activity/setup/AccountSetupOptions;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 331
    :catch_1
    move-exception v2

    move-object v1, v2

    .line 332
    .local v1, e:Ljava/io/IOException;
    const-string v2, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addAccount failed: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 333
    .end local v1           #e:Ljava/io/IOException;
    :catch_2
    move-exception v2

    move-object v1, v2

    .line 334
    .local v1, e:Landroid/accounts/AuthenticatorException;
    const-string v2, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addAccount failed: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
