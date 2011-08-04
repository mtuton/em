.class Lcom/android/email/service/EmailServiceProxy$16;
.super Ljava/lang/Object;
.source "EmailServiceProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/service/EmailServiceProxy;->MoveMessage(Ljava/util/List;JJJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/service/EmailServiceProxy;

.field final synthetic val$accountId:J

.field final synthetic val$curBoxKey:J

.field final synthetic val$mailboxKey:J

.field final synthetic val$messageId:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/android/email/service/EmailServiceProxy;Ljava/util/List;JJJ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 401
    iput-object p1, p0, Lcom/android/email/service/EmailServiceProxy$16;->this$0:Lcom/android/email/service/EmailServiceProxy;

    iput-object p2, p0, Lcom/android/email/service/EmailServiceProxy$16;->val$messageId:Ljava/util/List;

    iput-wide p3, p0, Lcom/android/email/service/EmailServiceProxy$16;->val$accountId:J

    iput-wide p5, p0, Lcom/android/email/service/EmailServiceProxy$16;->val$mailboxKey:J

    iput-wide p7, p0, Lcom/android/email/service/EmailServiceProxy$16;->val$curBoxKey:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 404
    :try_start_0
    iget-object v0, p0, Lcom/android/email/service/EmailServiceProxy$16;->this$0:Lcom/android/email/service/EmailServiceProxy;

    invoke-static {v0}, Lcom/android/email/service/EmailServiceProxy;->access$200(Lcom/android/email/service/EmailServiceProxy;)Lcom/android/email/service/IEmailServiceCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/service/EmailServiceProxy$16;->this$0:Lcom/android/email/service/EmailServiceProxy;

    invoke-static {v0}, Lcom/android/email/service/EmailServiceProxy;->access$000(Lcom/android/email/service/EmailServiceProxy;)Lcom/android/email/service/IEmailService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/service/EmailServiceProxy$16;->this$0:Lcom/android/email/service/EmailServiceProxy;

    invoke-static {v1}, Lcom/android/email/service/EmailServiceProxy;->access$200(Lcom/android/email/service/EmailServiceProxy;)Lcom/android/email/service/IEmailServiceCallback;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/email/service/IEmailService;->setCallback(Lcom/android/email/service/IEmailServiceCallback;)V

    .line 405
    :cond_0
    iget-object v0, p0, Lcom/android/email/service/EmailServiceProxy$16;->this$0:Lcom/android/email/service/EmailServiceProxy;

    invoke-static {v0}, Lcom/android/email/service/EmailServiceProxy;->access$000(Lcom/android/email/service/EmailServiceProxy;)Lcom/android/email/service/IEmailService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/service/EmailServiceProxy$16;->val$messageId:Ljava/util/List;

    iget-wide v2, p0, Lcom/android/email/service/EmailServiceProxy$16;->val$accountId:J

    iget-wide v4, p0, Lcom/android/email/service/EmailServiceProxy$16;->val$mailboxKey:J

    iget-wide v6, p0, Lcom/android/email/service/EmailServiceProxy$16;->val$curBoxKey:J

    invoke-interface/range {v0 .. v7}, Lcom/android/email/service/IEmailService;->MoveMessage(Ljava/util/List;JJJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 408
    :goto_0
    return-void

    .line 406
    :catch_0
    move-exception v0

    goto :goto_0
.end method
