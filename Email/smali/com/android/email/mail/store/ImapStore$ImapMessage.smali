.class Lcom/android/email/mail/store/ImapStore$ImapMessage;
.super Lcom/android/email/mail/internet/MimeMessage;
.source "ImapStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/mail/store/ImapStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImapMessage"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/mail/store/ImapStore;


# direct methods
.method constructor <init>(Lcom/android/email/mail/store/ImapStore;Ljava/lang/String;Lcom/android/email/mail/Folder;)V
    .locals 0
    .parameter
    .parameter "uid"
    .parameter "folder"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1650
    iput-object p1, p0, Lcom/android/email/mail/store/ImapStore$ImapMessage;->this$0:Lcom/android/email/mail/store/ImapStore;

    .line 1651
    invoke-direct {p0}, Lcom/android/email/mail/internet/MimeMessage;-><init>()V

    .line 1652
    iput-object p2, p0, Lcom/android/email/mail/store/ImapStore$ImapMessage;->mUid:Ljava/lang/String;

    .line 1653
    iput-object p3, p0, Lcom/android/email/mail/store/ImapStore$ImapMessage;->mFolder:Lcom/android/email/mail/Folder;

    .line 1654
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
    .line 1662
    invoke-super {p0, p1}, Lcom/android/email/mail/internet/MimeMessage;->parse(Ljava/io/InputStream;)V

    .line 1663
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

    .line 1671
    invoke-super {p0, p1, p2}, Lcom/android/email/mail/internet/MimeMessage;->setFlag(Lcom/android/email/mail/Flag;Z)V

    .line 1672
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore$ImapMessage;->mFolder:Lcom/android/email/mail/Folder;

    new-array v1, v2, [Lcom/android/email/mail/Message;

    aput-object p0, v1, v3

    new-array v2, v2, [Lcom/android/email/mail/Flag;

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2, p2}, Lcom/android/email/mail/Folder;->setFlags([Lcom/android/email/mail/Message;[Lcom/android/email/mail/Flag;Z)V

    .line 1673
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
    .line 1666
    invoke-super {p0, p1, p2}, Lcom/android/email/mail/internet/MimeMessage;->setFlag(Lcom/android/email/mail/Flag;Z)V

    .line 1667
    return-void
.end method

.method public setSize(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 1657
    iput p1, p0, Lcom/android/email/mail/store/ImapStore$ImapMessage;->mSize:I

    .line 1658
    return-void
.end method
