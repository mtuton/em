.class public Lcom/android/email/mail/store/LocalStore$LocalAttachmentBodyPart;
.super Lcom/android/email/mail/internet/MimeBodyPart;
.source "LocalStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/mail/store/LocalStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalAttachmentBodyPart"
.end annotation


# instance fields
.field private mAttachmentId:J

.field final synthetic this$0:Lcom/android/email/mail/store/LocalStore;


# direct methods
.method public constructor <init>(Lcom/android/email/mail/store/LocalStore;Lcom/android/email/mail/Body;J)V
    .locals 2
    .parameter
    .parameter "body"
    .parameter "attachmentId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1813
    iput-object p1, p0, Lcom/android/email/mail/store/LocalStore$LocalAttachmentBodyPart;->this$0:Lcom/android/email/mail/store/LocalStore;

    .line 1814
    invoke-direct {p0, p2}, Lcom/android/email/mail/internet/MimeBodyPart;-><init>(Lcom/android/email/mail/Body;)V

    .line 1811
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/email/mail/store/LocalStore$LocalAttachmentBodyPart;->mAttachmentId:J

    .line 1815
    iput-wide p3, p0, Lcom/android/email/mail/store/LocalStore$LocalAttachmentBodyPart;->mAttachmentId:J

    .line 1816
    return-void
.end method


# virtual methods
.method public getAttachmentId()J
    .locals 2

    .prologue
    .line 1823
    iget-wide v0, p0, Lcom/android/email/mail/store/LocalStore$LocalAttachmentBodyPart;->mAttachmentId:J

    return-wide v0
.end method

.method public setAttachmentId(J)V
    .locals 0
    .parameter "attachmentId"

    .prologue
    .line 1827
    iput-wide p1, p0, Lcom/android/email/mail/store/LocalStore$LocalAttachmentBodyPart;->mAttachmentId:J

    .line 1828
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1831
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/email/mail/store/LocalStore$LocalAttachmentBodyPart;->mAttachmentId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
