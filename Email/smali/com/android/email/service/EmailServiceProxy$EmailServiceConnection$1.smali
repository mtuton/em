.class Lcom/android/email/service/EmailServiceProxy$EmailServiceConnection$1;
.super Ljava/lang/Object;
.source "EmailServiceProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/service/EmailServiceProxy$EmailServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/email/service/EmailServiceProxy$EmailServiceConnection;


# direct methods
.method constructor <init>(Lcom/android/email/service/EmailServiceProxy$EmailServiceConnection;)V
    .locals 0
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/email/service/EmailServiceProxy$EmailServiceConnection$1;->this$1:Lcom/android/email/service/EmailServiceProxy$EmailServiceConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/email/service/EmailServiceProxy$EmailServiceConnection$1;->this$1:Lcom/android/email/service/EmailServiceProxy$EmailServiceConnection;

    iget-object v0, v0, Lcom/android/email/service/EmailServiceProxy$EmailServiceConnection;->this$0:Lcom/android/email/service/EmailServiceProxy;

    invoke-static {v0}, Lcom/android/email/service/EmailServiceProxy;->access$100(Lcom/android/email/service/EmailServiceProxy;)V

    .line 95
    return-void
.end method
