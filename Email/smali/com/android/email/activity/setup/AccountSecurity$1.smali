.class Lcom/android/email/activity/setup/AccountSecurity$1;
.super Ljava/lang/Thread;
.source "AccountSecurity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountSecurity;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSecurity;

.field final synthetic val$accountId:J


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSecurity;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSecurity$1;->this$0:Lcom/android/email/activity/setup/AccountSecurity;

    iput-wide p2, p0, Lcom/android/email/activity/setup/AccountSecurity$1;->val$accountId:J

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSecurity$1;->this$0:Lcom/android/email/activity/setup/AccountSecurity;

    invoke-static {v0}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/email/activity/setup/AccountSecurity$1;->val$accountId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/email/SecurityPolicy;->policiesRequired(J)V

    .line 122
    return-void
.end method
