.class Lcom/android/email/mail/store/ImapStore$ImapException;
.super Lcom/android/email/mail/MessagingException;
.source "ImapStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/mail/store/ImapStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImapException"
.end annotation


# instance fields
.field mAlertText:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/email/mail/store/ImapStore;


# direct methods
.method public constructor <init>(Lcom/android/email/mail/store/ImapStore;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "message"
    .parameter "alertText"

    .prologue
    .line 1694
    iput-object p1, p0, Lcom/android/email/mail/store/ImapStore$ImapException;->this$0:Lcom/android/email/mail/store/ImapStore;

    .line 1695
    invoke-direct {p0, p2}, Lcom/android/email/mail/MessagingException;-><init>(Ljava/lang/String;)V

    .line 1696
    iput-object p3, p0, Lcom/android/email/mail/store/ImapStore$ImapException;->mAlertText:Ljava/lang/String;

    .line 1697
    return-void
.end method

.method public constructor <init>(Lcom/android/email/mail/store/ImapStore;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter
    .parameter "message"
    .parameter "alertText"
    .parameter "throwable"

    .prologue
    .line 1689
    iput-object p1, p0, Lcom/android/email/mail/store/ImapStore$ImapException;->this$0:Lcom/android/email/mail/store/ImapStore;

    .line 1690
    invoke-direct {p0, p2, p4}, Lcom/android/email/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1691
    iput-object p3, p0, Lcom/android/email/mail/store/ImapStore$ImapException;->mAlertText:Ljava/lang/String;

    .line 1692
    return-void
.end method


# virtual methods
.method public getAlertText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1700
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore$ImapException;->mAlertText:Ljava/lang/String;

    return-object v0
.end method

.method public setAlertText(Ljava/lang/String;)V
    .locals 0
    .parameter "alertText"

    .prologue
    .line 1704
    iput-object p1, p0, Lcom/android/email/mail/store/ImapStore$ImapException;->mAlertText:Ljava/lang/String;

    .line 1705
    return-void
.end method
