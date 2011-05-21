.class Lcom/android/email/service/EmailServiceProxy$5;
.super Ljava/lang/Object;
.source "EmailServiceProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/service/EmailServiceProxy;->autoDiscover(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/os/Bundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/service/EmailServiceProxy;

.field final synthetic val$bTrustCert:Z

.field final synthetic val$domain:Ljava/lang/String;

.field final synthetic val$password:Ljava/lang/String;

.field final synthetic val$userName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/email/service/EmailServiceProxy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 226
    iput-object p1, p0, Lcom/android/email/service/EmailServiceProxy$5;->this$0:Lcom/android/email/service/EmailServiceProxy;

    iput-object p2, p0, Lcom/android/email/service/EmailServiceProxy$5;->val$userName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/email/service/EmailServiceProxy$5;->val$password:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/email/service/EmailServiceProxy$5;->val$domain:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/android/email/service/EmailServiceProxy$5;->val$bTrustCert:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 228
    :try_start_0
    iget-object v0, p0, Lcom/android/email/service/EmailServiceProxy$5;->this$0:Lcom/android/email/service/EmailServiceProxy;

    invoke-static {v0}, Lcom/android/email/service/EmailServiceProxy;->access$200(Lcom/android/email/service/EmailServiceProxy;)Lcom/android/email/service/IEmailServiceCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/service/EmailServiceProxy$5;->this$0:Lcom/android/email/service/EmailServiceProxy;

    invoke-static {v0}, Lcom/android/email/service/EmailServiceProxy;->access$000(Lcom/android/email/service/EmailServiceProxy;)Lcom/android/email/service/IEmailService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/service/EmailServiceProxy$5;->this$0:Lcom/android/email/service/EmailServiceProxy;

    invoke-static {v1}, Lcom/android/email/service/EmailServiceProxy;->access$200(Lcom/android/email/service/EmailServiceProxy;)Lcom/android/email/service/IEmailServiceCallback;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/email/service/IEmailService;->setCallback(Lcom/android/email/service/IEmailServiceCallback;)V

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/android/email/service/EmailServiceProxy$5;->this$0:Lcom/android/email/service/EmailServiceProxy;

    iget-object v1, p0, Lcom/android/email/service/EmailServiceProxy$5;->this$0:Lcom/android/email/service/EmailServiceProxy;

    invoke-static {v1}, Lcom/android/email/service/EmailServiceProxy;->access$000(Lcom/android/email/service/EmailServiceProxy;)Lcom/android/email/service/IEmailService;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/service/EmailServiceProxy$5;->val$userName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/email/service/EmailServiceProxy$5;->val$password:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/email/service/EmailServiceProxy$5;->val$domain:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/android/email/service/EmailServiceProxy$5;->val$bTrustCert:Z

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/android/email/service/IEmailService;->autoDiscover(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/service/EmailServiceProxy;->access$302(Lcom/android/email/service/EmailServiceProxy;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    :goto_0
    return-void

    .line 230
    :catch_0
    move-exception v0

    goto :goto_0
.end method
