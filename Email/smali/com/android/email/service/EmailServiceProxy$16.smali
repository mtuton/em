.class Lcom/android/email/service/EmailServiceProxy$16;
.super Ljava/lang/Object;
.source "EmailServiceProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/service/EmailServiceProxy;->sendRecoveryPassword(JLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/service/EmailServiceProxy;

.field final synthetic val$accountId:J

.field final synthetic val$password:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/email/service/EmailServiceProxy;JLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 404
    iput-object p1, p0, Lcom/android/email/service/EmailServiceProxy$16;->this$0:Lcom/android/email/service/EmailServiceProxy;

    iput-wide p2, p0, Lcom/android/email/service/EmailServiceProxy$16;->val$accountId:J

    iput-object p4, p0, Lcom/android/email/service/EmailServiceProxy$16;->val$password:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 406
    :try_start_0
    iget-object v0, p0, Lcom/android/email/service/EmailServiceProxy$16;->this$0:Lcom/android/email/service/EmailServiceProxy;

    invoke-static {v0}, Lcom/android/email/service/EmailServiceProxy;->access$000(Lcom/android/email/service/EmailServiceProxy;)Lcom/android/email/service/IEmailService;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/email/service/EmailServiceProxy$16;->val$accountId:J

    iget-object v3, p0, Lcom/android/email/service/EmailServiceProxy$16;->val$password:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/email/service/IEmailService;->sendRecoveryPassword(JLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 409
    :goto_0
    return-void

    .line 407
    :catch_0
    move-exception v0

    goto :goto_0
.end method
