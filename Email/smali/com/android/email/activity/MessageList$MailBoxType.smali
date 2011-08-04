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

.field private _email_address:Ljava/lang/String;

.field private _mailbox_id:J

.field private _name:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/email/activity/MessageList;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/MessageList;JJLjava/lang/String;)V
    .locals 1
    .parameter
    .parameter "accountKey"
    .parameter "mailboxId"
    .parameter "maiboxName"

    .prologue
    .line 4817
    iput-object p1, p0, Lcom/android/email/activity/MessageList$MailBoxType;->this$0:Lcom/android/email/activity/MessageList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4818
    iput-wide p2, p0, Lcom/android/email/activity/MessageList$MailBoxType;->_account_key:J

    .line 4819
    iput-wide p4, p0, Lcom/android/email/activity/MessageList$MailBoxType;->_mailbox_id:J

    .line 4820
    iput-object p6, p0, Lcom/android/email/activity/MessageList$MailBoxType;->_name:Ljava/lang/String;

    .line 4821
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageList$MailBoxType;->_email_address:Ljava/lang/String;

    .line 4822
    return-void
.end method

.method public constructor <init>(Lcom/android/email/activity/MessageList;JLjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter "accountKey"
    .parameter "accountName"
    .parameter "accountEmailAddress"

    .prologue
    .line 4824
    iput-object p1, p0, Lcom/android/email/activity/MessageList$MailBoxType;->this$0:Lcom/android/email/activity/MessageList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4825
    iput-wide p2, p0, Lcom/android/email/activity/MessageList$MailBoxType;->_account_key:J

    .line 4826
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/email/activity/MessageList$MailBoxType;->_mailbox_id:J

    .line 4827
    iput-object p4, p0, Lcom/android/email/activity/MessageList$MailBoxType;->_name:Ljava/lang/String;

    .line 4828
    iput-object p5, p0, Lcom/android/email/activity/MessageList$MailBoxType;->_email_address:Ljava/lang/String;

    .line 4829
    return-void
.end method

.method public constructor <init>(Lcom/android/email/activity/MessageList;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter "seperatorName"

    .prologue
    const-wide/16 v0, -0x1

    .line 4810
    iput-object p1, p0, Lcom/android/email/activity/MessageList$MailBoxType;->this$0:Lcom/android/email/activity/MessageList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4811
    iput-wide v0, p0, Lcom/android/email/activity/MessageList$MailBoxType;->_account_key:J

    .line 4812
    iput-wide v0, p0, Lcom/android/email/activity/MessageList$MailBoxType;->_mailbox_id:J

    .line 4813
    iput-object p2, p0, Lcom/android/email/activity/MessageList$MailBoxType;->_name:Ljava/lang/String;

    .line 4814
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageList$MailBoxType;->_email_address:Ljava/lang/String;

    .line 4815
    return-void
.end method


# virtual methods
.method public getAccountKey()J
    .locals 2

    .prologue
    .line 4832
    iget-wide v0, p0, Lcom/android/email/activity/MessageList$MailBoxType;->_account_key:J

    return-wide v0
.end method

.method public getEmailAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4844
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MailBoxType;->_email_address:Ljava/lang/String;

    return-object v0
.end method

.method public getMailboxId()J
    .locals 2

    .prologue
    .line 4836
    iget-wide v0, p0, Lcom/android/email/activity/MessageList$MailBoxType;->_mailbox_id:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4840
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MailBoxType;->_name:Ljava/lang/String;

    return-object v0
.end method
