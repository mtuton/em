.class Lcom/android/email/Email$1;
.super Ljava/lang/Thread;
.source "Email.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/Email;->setServicesEnabled(Landroid/content/Context;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$con:Landroid/content/Context;

.field final synthetic val$enable:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 264
    iput-object p1, p0, Lcom/android/email/Email$1;->val$con:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/android/email/Email$1;->val$enable:Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const-string v2, "Email >>"

    .line 265
    const-string v0, "Email >>"

    const-string v0, "THREAD RUN BEFORE <<<<<<<<<<<<<<<<"

    invoke-static {v2, v0}, Lcom/android/email/Email;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 267
    iget-object v0, p0, Lcom/android/email/Email$1;->val$con:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/android/email/Email$1;->val$enable:Z

    invoke-static {v0, v1}, Lcom/android/email/Email;->setServicesEnabled(Landroid/content/Context;Z)V

    .line 268
    const-string v0, "Email >>"

    const-string v0, "THREAD RUN AFTER >>>>>>>>>>>>>>>>>"

    invoke-static {v2, v0}, Lcom/android/email/Email;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    return-void
.end method
