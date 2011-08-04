.class Lcom/android/email/mail/store/ImapStore$ImapException;
.super Lcom/android/email/mail/MessagingException;
.source "ImapStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/mail/store/ImapStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ImapException"
.end annotation


# instance fields
.field mAlertText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "message"
    .parameter "alertText"

    .prologue
    .line 1646
    invoke-direct {p0, p1}, Lcom/android/email/mail/MessagingException;-><init>(Ljava/lang/String;)V

    .line 1647
    iput-object p2, p0, Lcom/android/email/mail/store/ImapStore$ImapException;->mAlertText:Ljava/lang/String;

    .line 1648
    return-void
.end method


# virtual methods
.method public getAlertText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1651
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore$ImapException;->mAlertText:Ljava/lang/String;

    return-object v0
.end method
