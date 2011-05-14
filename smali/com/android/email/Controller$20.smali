.class Lcom/android/email/Controller$20;
.super Ljava/lang/Thread;
.source "Controller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/Controller;->setMessageFavorite(JZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/Controller;

.field final synthetic val$message:Lcom/android/email/provider/EmailContent$Message;


# direct methods
.method constructor <init>(Lcom/android/email/Controller;Lcom/android/email/provider/EmailContent$Message;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2093
    iput-object p1, p0, Lcom/android/email/Controller$20;->this$0:Lcom/android/email/Controller;

    iput-object p2, p0, Lcom/android/email/Controller$20;->val$message:Lcom/android/email/provider/EmailContent$Message;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2094
    iget-object v0, p0, Lcom/android/email/Controller$20;->this$0:Lcom/android/email/Controller;

    invoke-static {v0}, Lcom/android/email/Controller;->access$300(Lcom/android/email/Controller;)Lcom/android/email/MessagingController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/Controller$20;->val$message:Lcom/android/email/provider/EmailContent$Message;

    iget-wide v1, v1, Lcom/android/email/provider/EmailContent$Message;->mAccountKey:J

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/MessagingController;->processPendingActions(JZ)V

    .line 2095
    return-void
.end method
