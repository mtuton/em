.class Lcom/android/email/mail/store/ImapStore$ImapMessage;
.super Lcom/android/email/mail/internet/MimeMessage;
.source "ImapStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/mail/store/ImapStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ImapMessage"
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/android/email/mail/Folder;)V
    .locals 0
    .parameter "uid"
    .parameter "folder"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1612
    invoke-direct {p0}, Lcom/android/email/mail/internet/MimeMessage;-><init>()V

    .line 1613
    iput-object p1, p0, Lcom/android/email/mail/Message;->mUid:Ljava/lang/String;

    .line 1614
    iput-object p2, p0, Lcom/android/email/mail/Message;->mFolder:Lcom/android/email/mail/Folder;

    .line 1615
    return-void
.end method


# virtual methods
.method public parse(Ljava/io/InputStream;)V
    .locals 0
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1623
    invoke-super {p0, p1}, Lcom/android/email/mail/internet/MimeMessage;->parse(Ljava/io/InputStream;)V

    .line 1624
    return-void
.end method

.method public setFlag(Lcom/android/email/mail/Flag;Z)V
    .locals 4
    .parameter "flag"
    .parameter "set"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1632
    invoke-super {p0, p1, p2}, Lcom/android/email/mail/internet/MimeMessage;->setFlag(Lcom/android/email/mail/Flag;Z)V

    .line 1633
    iget-object v0, p0, Lcom/android/email/mail/Message;->mFolder:Lcom/android/email/mail/Folder;

    new-array v1, v2, [Lcom/android/email/mail/Message;

    aput-object p0, v1, v3

    new-array v2, v2, [Lcom/android/email/mail/Flag;

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2, p2}, Lcom/android/email/mail/Folder;->setFlags([Lcom/android/email/mail/Message;[Lcom/android/email/mail/Flag;Z)V

    .line 1634
    return-void
.end method

.method public setFlagInternal(Lcom/android/email/mail/Flag;Z)V
    .locals 0
    .parameter "flag"
    .parameter "set"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1627
    invoke-super {p0, p1, p2}, Lcom/android/email/mail/internet/MimeMessage;->setFlag(Lcom/android/email/mail/Flag;Z)V

    .line 1628
    return-void
.end method

.method public setSize(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 1618
    iput p1, p0, Lcom/android/email/mail/internet/MimeMessage;->mSize:I

    .line 1619
    return-void
.end method
