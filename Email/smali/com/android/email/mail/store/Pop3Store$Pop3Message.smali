.class Lcom/android/email/mail/store/Pop3Store$Pop3Message;
.super Lcom/android/email/mail/internet/MimeMessage;
.source "Pop3Store.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/mail/store/Pop3Store;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Pop3Message"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/mail/store/Pop3Store;


# direct methods
.method public constructor <init>(Lcom/android/email/mail/store/Pop3Store;Ljava/lang/String;Lcom/android/email/mail/store/Pop3Store$Pop3Folder;)V
    .locals 1
    .parameter
    .parameter "uid"
    .parameter "folder"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1004
    iput-object p1, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Message;->this$0:Lcom/android/email/mail/store/Pop3Store;

    .line 1005
    invoke-direct {p0}, Lcom/android/email/mail/internet/MimeMessage;-><init>()V

    .line 1006
    iput-object p2, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Message;->mUid:Ljava/lang/String;

    .line 1007
    iput-object p3, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Message;->mFolder:Lcom/android/email/mail/Folder;

    .line 1008
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Message;->mSize:I

    .line 1009
    return-void
.end method


# virtual methods
.method protected parse(Ljava/io/InputStream;)V
    .locals 0
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1016
    invoke-super {p0, p1}, Lcom/android/email/mail/internet/MimeMessage;->parse(Ljava/io/InputStream;)V

    .line 1017
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

    .line 1021
    invoke-super {p0, p1, p2}, Lcom/android/email/mail/internet/MimeMessage;->setFlag(Lcom/android/email/mail/Flag;Z)V

    .line 1022
    iget-object v0, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Message;->mFolder:Lcom/android/email/mail/Folder;

    new-array v1, v2, [Lcom/android/email/mail/Message;

    aput-object p0, v1, v3

    new-array v2, v2, [Lcom/android/email/mail/Flag;

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2, p2}, Lcom/android/email/mail/Folder;->setFlags([Lcom/android/email/mail/Message;[Lcom/android/email/mail/Flag;Z)V

    .line 1023
    return-void
.end method

.method public setSize(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 1012
    iput p1, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Message;->mSize:I

    .line 1013
    return-void
.end method
