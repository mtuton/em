.class Lcom/android/email/mail/store/ImapStore$ImapBodyPart;
.super Lcom/android/email/mail/internet/MimeBodyPart;
.source "ImapStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/mail/store/ImapStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImapBodyPart"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/mail/store/ImapStore;


# direct methods
.method public constructor <init>(Lcom/android/email/mail/store/ImapStore;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1677
    iput-object p1, p0, Lcom/android/email/mail/store/ImapStore$ImapBodyPart;->this$0:Lcom/android/email/mail/store/ImapStore;

    .line 1678
    invoke-direct {p0}, Lcom/android/email/mail/internet/MimeBodyPart;-><init>()V

    .line 1679
    return-void
.end method
