.class Lcom/android/email/activity/MessageView$MailBoxType;
.super Ljava/lang/Object;
.source "MessageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MailBoxType"
.end annotation


# instance fields
.field private _account_key:J

.field private _mailbox_id:J

.field private _name:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/email/activity/MessageView;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/MessageView;JJLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter "accountKey"
    .parameter "mailboxId"
    .parameter "name"

    .prologue
    .line 1958
    iput-object p1, p0, Lcom/android/email/activity/MessageView$MailBoxType;->this$0:Lcom/android/email/activity/MessageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1959
    iput-wide p2, p0, Lcom/android/email/activity/MessageView$MailBoxType;->_account_key:J

    .line 1960
    iput-wide p4, p0, Lcom/android/email/activity/MessageView$MailBoxType;->_mailbox_id:J

    .line 1961
    iput-object p6, p0, Lcom/android/email/activity/MessageView$MailBoxType;->_name:Ljava/lang/String;

    .line 1962
    return-void
.end method


# virtual methods
.method public getAccountKey()J
    .locals 2

    .prologue
    .line 1965
    iget-wide v0, p0, Lcom/android/email/activity/MessageView$MailBoxType;->_account_key:J

    return-wide v0
.end method

.method public getMailboxId()J
    .locals 2

    .prologue
    .line 1969
    iget-wide v0, p0, Lcom/android/email/activity/MessageView$MailBoxType;->_mailbox_id:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1973
    iget-object v0, p0, Lcom/android/email/activity/MessageView$MailBoxType;->_name:Ljava/lang/String;

    return-object v0
.end method
