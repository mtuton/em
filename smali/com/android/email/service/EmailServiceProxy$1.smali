.class Lcom/android/email/service/EmailServiceProxy$1;
.super Ljava/lang/Object;
.source "EmailServiceProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/service/EmailServiceProxy;->loadAttachment(JLjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/service/EmailServiceProxy;

.field final synthetic val$attachmentId:J

.field final synthetic val$contentUriString:Ljava/lang/String;

.field final synthetic val$destinationFile:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/email/service/EmailServiceProxy;JLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 166
    iput-object p1, p0, Lcom/android/email/service/EmailServiceProxy$1;->this$0:Lcom/android/email/service/EmailServiceProxy;

    iput-wide p2, p0, Lcom/android/email/service/EmailServiceProxy$1;->val$attachmentId:J

    iput-object p4, p0, Lcom/android/email/service/EmailServiceProxy$1;->val$destinationFile:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/email/service/EmailServiceProxy$1;->val$contentUriString:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 168
    :try_start_0
    iget-object v0, p0, Lcom/android/email/service/EmailServiceProxy$1;->this$0:Lcom/android/email/service/EmailServiceProxy;

    invoke-static {v0}, Lcom/android/email/service/EmailServiceProxy;->access$200(Lcom/android/email/service/EmailServiceProxy;)Lcom/android/email/service/IEmailServiceCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/service/EmailServiceProxy$1;->this$0:Lcom/android/email/service/EmailServiceProxy;

    invoke-static {v0}, Lcom/android/email/service/EmailServiceProxy;->access$000(Lcom/android/email/service/EmailServiceProxy;)Lcom/android/email/service/IEmailService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/service/EmailServiceProxy$1;->this$0:Lcom/android/email/service/EmailServiceProxy;

    invoke-static {v1}, Lcom/android/email/service/EmailServiceProxy;->access$200(Lcom/android/email/service/EmailServiceProxy;)Lcom/android/email/service/IEmailServiceCallback;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/email/service/IEmailService;->setCallback(Lcom/android/email/service/IEmailServiceCallback;)V

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/android/email/service/EmailServiceProxy$1;->this$0:Lcom/android/email/service/EmailServiceProxy;

    invoke-static {v0}, Lcom/android/email/service/EmailServiceProxy;->access$000(Lcom/android/email/service/EmailServiceProxy;)Lcom/android/email/service/IEmailService;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/email/service/EmailServiceProxy$1;->val$attachmentId:J

    iget-object v3, p0, Lcom/android/email/service/EmailServiceProxy$1;->val$destinationFile:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/email/service/EmailServiceProxy$1;->val$contentUriString:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/email/service/IEmailService;->loadAttachment(JLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :goto_0
    return-void

    .line 170
    :catch_0
    move-exception v0

    goto :goto_0
.end method
