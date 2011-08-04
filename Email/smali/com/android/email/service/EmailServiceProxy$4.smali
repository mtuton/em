.class Lcom/android/email/service/EmailServiceProxy$4;
.super Ljava/lang/Object;
.source "EmailServiceProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/service/EmailServiceProxy;->validate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/service/EmailServiceProxy;

.field final synthetic val$host:Ljava/lang/String;

.field final synthetic val$password:Ljava/lang/String;

.field final synthetic val$port:I

.field final synthetic val$protocol:Ljava/lang/String;

.field final synthetic val$ssl:Z

.field final synthetic val$trustCertificates:Z

.field final synthetic val$userName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/email/service/EmailServiceProxy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 203
    iput-object p1, p0, Lcom/android/email/service/EmailServiceProxy$4;->this$0:Lcom/android/email/service/EmailServiceProxy;

    iput-object p2, p0, Lcom/android/email/service/EmailServiceProxy$4;->val$protocol:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/email/service/EmailServiceProxy$4;->val$host:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/email/service/EmailServiceProxy$4;->val$userName:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/email/service/EmailServiceProxy$4;->val$password:Ljava/lang/String;

    iput p6, p0, Lcom/android/email/service/EmailServiceProxy$4;->val$port:I

    iput-boolean p7, p0, Lcom/android/email/service/EmailServiceProxy$4;->val$ssl:Z

    iput-boolean p8, p0, Lcom/android/email/service/EmailServiceProxy$4;->val$trustCertificates:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 206
    :try_start_0
    iget-object v0, p0, Lcom/android/email/service/EmailServiceProxy$4;->this$0:Lcom/android/email/service/EmailServiceProxy;

    invoke-static {v0}, Lcom/android/email/service/EmailServiceProxy;->access$200(Lcom/android/email/service/EmailServiceProxy;)Lcom/android/email/service/IEmailServiceCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/service/EmailServiceProxy$4;->this$0:Lcom/android/email/service/EmailServiceProxy;

    invoke-static {v0}, Lcom/android/email/service/EmailServiceProxy;->access$000(Lcom/android/email/service/EmailServiceProxy;)Lcom/android/email/service/IEmailService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/service/EmailServiceProxy$4;->this$0:Lcom/android/email/service/EmailServiceProxy;

    invoke-static {v1}, Lcom/android/email/service/EmailServiceProxy;->access$200(Lcom/android/email/service/EmailServiceProxy;)Lcom/android/email/service/IEmailServiceCallback;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/email/service/IEmailService;->setCallback(Lcom/android/email/service/IEmailServiceCallback;)V

    .line 207
    :cond_0
    iget-object v8, p0, Lcom/android/email/service/EmailServiceProxy$4;->this$0:Lcom/android/email/service/EmailServiceProxy;

    iget-object v0, p0, Lcom/android/email/service/EmailServiceProxy$4;->this$0:Lcom/android/email/service/EmailServiceProxy;

    invoke-static {v0}, Lcom/android/email/service/EmailServiceProxy;->access$000(Lcom/android/email/service/EmailServiceProxy;)Lcom/android/email/service/IEmailService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/service/EmailServiceProxy$4;->val$protocol:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/email/service/EmailServiceProxy$4;->val$host:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/email/service/EmailServiceProxy$4;->val$userName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/email/service/EmailServiceProxy$4;->val$password:Ljava/lang/String;

    iget v5, p0, Lcom/android/email/service/EmailServiceProxy$4;->val$port:I

    iget-boolean v6, p0, Lcom/android/email/service/EmailServiceProxy$4;->val$ssl:Z

    iget-boolean v7, p0, Lcom/android/email/service/EmailServiceProxy$4;->val$trustCertificates:Z

    invoke-interface/range {v0 .. v7}, Lcom/android/email/service/IEmailService;->validate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/android/email/service/EmailServiceProxy;->access$302(Lcom/android/email/service/EmailServiceProxy;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    :goto_0
    return-void

    .line 209
    :catch_0
    move-exception v0

    goto :goto_0
.end method
