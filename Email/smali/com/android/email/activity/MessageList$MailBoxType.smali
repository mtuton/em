.class Lcom/android/email/activity/MessageList$MailBoxType;
.super Ljava/lang/Object;
.source "MessageList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MailBoxType"
.end annotation


# instance fields
.field private _account_key:J

.field private _mailbox_id:J

.field private _name:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/email/activity/MessageList;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/MessageList;JJLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter "accountKey"
    .parameter "mailboxId"
    .parameter "name"

    .prologue
    .line 3718
    iput-object p1, p0, Lcom/android/email/activity/MessageList$MailBoxType;->this$0:Lcom/android/email/activity/MessageList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3719
    iput-wide p2, p0, Lcom/android/email/activity/MessageList$MailBoxType;->_account_key:J

    .line 3720
    iput-wide p4, p0, Lcom/android/email/activity/MessageList$MailBoxType;->_mailbox_id:J

    .line 3721
    iput-object p6, p0, Lcom/android/email/activity/MessageList$MailBoxType;->_name:Ljava/lang/String;

    .line 3722
    return-void
.end method


# virtual methods
.method public getAccountKey()J
    .locals 2

    .prologue
    .line 3725
    iget-wide v0, p0, Lcom/android/email/activity/MessageList$MailBoxType;->_account_key:J

    return-wide v0
.end method

.method public getMailboxId()J
    .locals 2

    .prologue
    .line 3729
    iget-wide v0, p0, Lcom/android/email/activity/MessageList$MailBoxType;->_mailbox_id:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3733
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MailBoxType;->_name:Ljava/lang/String;

    return-object v0
.end method
