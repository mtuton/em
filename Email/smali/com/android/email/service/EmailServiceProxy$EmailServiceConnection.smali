.class Lcom/android/email/service/EmailServiceProxy$EmailServiceConnection;
.super Ljava/lang/Object;
.source "EmailServiceProxy.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/service/EmailServiceProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EmailServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/service/EmailServiceProxy;


# direct methods
.method constructor <init>(Lcom/android/email/service/EmailServiceProxy;)V
    .locals 0
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/email/service/EmailServiceProxy$EmailServiceConnection;->this$0:Lcom/android/email/service/EmailServiceProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "name"
    .parameter "binder"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/email/service/EmailServiceProxy$EmailServiceConnection;->this$0:Lcom/android/email/service/EmailServiceProxy;

    invoke-static {p2}, Lcom/android/email/service/IEmailService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/email/service/IEmailService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/service/EmailServiceProxy;->access$002(Lcom/android/email/service/EmailServiceProxy;Lcom/android/email/service/IEmailService;)Lcom/android/email/service/IEmailService;

    .line 92
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/email/service/EmailServiceProxy$EmailServiceConnection$1;

    invoke-direct {v1, p0}, Lcom/android/email/service/EmailServiceProxy$EmailServiceConnection$1;-><init>(Lcom/android/email/service/EmailServiceProxy$EmailServiceConnection;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 96
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 102
    return-void
.end method
