.class Lcom/android/email/service/EmailServiceProxy$11;
.super Ljava/lang/Object;
.source "EmailServiceProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/service/EmailServiceProxy;->moveConversationAlways(JJ[BI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/service/EmailServiceProxy;

.field final synthetic val$conversationId:[B

.field final synthetic val$ignore:I

.field final synthetic val$messageId:J

.field final synthetic val$toMailboxId:J


# direct methods
.method constructor <init>(Lcom/android/email/service/EmailServiceProxy;JJ[BI)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 305
    iput-object p1, p0, Lcom/android/email/service/EmailServiceProxy$11;->this$0:Lcom/android/email/service/EmailServiceProxy;

    iput-wide p2, p0, Lcom/android/email/service/EmailServiceProxy$11;->val$messageId:J

    iput-wide p4, p0, Lcom/android/email/service/EmailServiceProxy$11;->val$toMailboxId:J

    iput-object p6, p0, Lcom/android/email/service/EmailServiceProxy$11;->val$conversationId:[B

    iput p7, p0, Lcom/android/email/service/EmailServiceProxy$11;->val$ignore:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 308
    :try_start_0
    iget-object v0, p0, Lcom/android/email/service/EmailServiceProxy$11;->this$0:Lcom/android/email/service/EmailServiceProxy;

    invoke-static {v0}, Lcom/android/email/service/EmailServiceProxy;->access$000(Lcom/android/email/service/EmailServiceProxy;)Lcom/android/email/service/IEmailService;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/email/service/EmailServiceProxy$11;->val$messageId:J

    iget-wide v3, p0, Lcom/android/email/service/EmailServiceProxy$11;->val$toMailboxId:J

    iget-object v5, p0, Lcom/android/email/service/EmailServiceProxy$11;->val$conversationId:[B

    iget v6, p0, Lcom/android/email/service/EmailServiceProxy$11;->val$ignore:I

    invoke-interface/range {v0 .. v6}, Lcom/android/email/service/IEmailService;->moveConversationAlways(JJ[BI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    :goto_0
    return-void

    .line 309
    :catch_0
    move-exception v0

    goto :goto_0
.end method
