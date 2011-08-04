.class Lcom/android/email/service/EnterpriseDMReceiver$1;
.super Ljava/lang/Object;
.source "EnterpriseDMReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/service/EnterpriseDMReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/service/EnterpriseDMReceiver;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/email/service/EnterpriseDMReceiver;Landroid/content/Intent;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/email/service/EnterpriseDMReceiver$1;->this$0:Lcom/android/email/service/EnterpriseDMReceiver;

    iput-object p2, p0, Lcom/android/email/service/EnterpriseDMReceiver$1;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/android/email/service/EnterpriseDMReceiver$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 57
    iget-object v5, p0, Lcom/android/email/service/EnterpriseDMReceiver$1;->val$intent:Landroid/content/Intent;

    const-string v6, "password"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 58
    .local v4, password:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/email/service/EnterpriseDMReceiver$1;->val$intent:Landroid/content/Intent;

    const-string v6, "data"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    .line 59
    .local v2, data:[B
    iget-object v5, p0, Lcom/android/email/service/EnterpriseDMReceiver$1;->val$intent:Landroid/content/Intent;

    const-string v6, "accountid"

    const-wide/16 v7, -0x1

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 62
    .local v0, accid:J
    :try_start_0
    iget-object v5, p0, Lcom/android/email/service/EnterpriseDMReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v5, v2, v4, v0, v1}, Lcom/android/exchange/EmailKeyManager$EmailKeyStore;->installCertificate(Landroid/content/Context;[BLjava/lang/String;J)V

    .line 63
    invoke-static {}, Lcom/android/email/service/EnterpriseDMReceiver;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Installed certificate for account  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :goto_0
    return-void

    .line 64
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 65
    .local v3, e:Ljava/lang/Exception;
    invoke-static {}, Lcom/android/email/service/EnterpriseDMReceiver;->access$000()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Failed to install certificate"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
