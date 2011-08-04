.class Lcom/android/email/service/EmailServiceProxy$8;
.super Ljava/lang/Object;
.source "EmailServiceProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/service/EmailServiceProxy;->setCallback(Lcom/android/email/service/IEmailServiceCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/service/EmailServiceProxy;

.field final synthetic val$cb:Lcom/android/email/service/IEmailServiceCallback;


# direct methods
.method constructor <init>(Lcom/android/email/service/EmailServiceProxy;Lcom/android/email/service/IEmailServiceCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 270
    iput-object p1, p0, Lcom/android/email/service/EmailServiceProxy$8;->this$0:Lcom/android/email/service/EmailServiceProxy;

    iput-object p2, p0, Lcom/android/email/service/EmailServiceProxy$8;->val$cb:Lcom/android/email/service/IEmailServiceCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 273
    :try_start_0
    iget-object v0, p0, Lcom/android/email/service/EmailServiceProxy$8;->this$0:Lcom/android/email/service/EmailServiceProxy;

    invoke-static {v0}, Lcom/android/email/service/EmailServiceProxy;->access$000(Lcom/android/email/service/EmailServiceProxy;)Lcom/android/email/service/IEmailService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/service/EmailServiceProxy$8;->val$cb:Lcom/android/email/service/IEmailServiceCallback;

    invoke-interface {v0, v1}, Lcom/android/email/service/IEmailService;->setCallback(Lcom/android/email/service/IEmailServiceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    :goto_0
    return-void

    .line 274
    :catch_0
    move-exception v0

    goto :goto_0
.end method
