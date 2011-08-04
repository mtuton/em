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

.field private _email_address:Ljava/lang/String;

.field private _mailbox_id:J

.field private _name:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/email/activity/MessageView;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/MessageView;JJLjava/lang/String;)V
    .locals 1
    .parameter
    .parameter "accountKey"
    .parameter "mailboxId"
    .parameter "maiboxName"

    .prologue
    .line 2677
    iput-object p1, p0, Lcom/android/email/activity/MessageView$MailBoxType;->this$0:Lcom/android/email/activity/MessageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2678
    iput-wide p2, p0, Lcom/android/email/activity/MessageView$MailBoxType;->_account_key:J

    .line 2679
    iput-wide p4, p0, Lcom/android/email/activity/MessageView$MailBoxType;->_mailbox_id:J

    .line 2680
    iput-object p6, p0, Lcom/android/email/activity/MessageView$MailBoxType;->_name:Ljava/lang/String;

    .line 2681
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageView$MailBoxType;->_email_address:Ljava/lang/String;

    .line 2682
    return-void
.end method

.method public constructor <init>(Lcom/android/email/activity/MessageView;JLjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter "accountKey"
    .parameter "accountName"
    .parameter "accountEmailAddress"

    .prologue
    .line 2684
    iput-object p1, p0, Lcom/android/email/activity/MessageView$MailBoxType;->this$0:Lcom/android/email/activity/MessageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2685
    iput-wide p2, p0, Lcom/android/email/activity/MessageView$MailBoxType;->_account_key:J

    .line 2686
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/email/activity/MessageView$MailBoxType;->_mailbox_id:J

    .line 2687
    iput-object p4, p0, Lcom/android/email/activity/MessageView$MailBoxType;->_name:Ljava/lang/String;

    .line 2688
    iput-object p5, p0, Lcom/android/email/activity/MessageView$MailBoxType;->_email_address:Ljava/lang/String;

    .line 2689
    return-void
.end method

.method public constructor <init>(Lcom/android/email/activity/MessageView;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter "seperatorName"

    .prologue
    const-wide/16 v0, -0x1

    .line 2670
    iput-object p1, p0, Lcom/android/email/activity/MessageView$MailBoxType;->this$0:Lcom/android/email/activity/MessageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2671
    iput-wide v0, p0, Lcom/android/email/activity/MessageView$MailBoxType;->_account_key:J

    .line 2672
    iput-wide v0, p0, Lcom/android/email/activity/MessageView$MailBoxType;->_mailbox_id:J

    .line 2673
    iput-object p2, p0, Lcom/android/email/activity/MessageView$MailBoxType;->_name:Ljava/lang/String;

    .line 2674
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageView$MailBoxType;->_email_address:Ljava/lang/String;

    .line 2675
    return-void
.end method


# virtual methods
.method public getAccountKey()J
    .locals 2

    .prologue
    .line 2692
    iget-wide v0, p0, Lcom/android/email/activity/MessageView$MailBoxType;->_account_key:J

    return-wide v0
.end method

.method public getEmailAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2704
    iget-object v0, p0, Lcom/android/email/activity/MessageView$MailBoxType;->_email_address:Ljava/lang/String;

    return-object v0
.end method

.method public getMailboxId()J
    .locals 2

    .prologue
    .line 2696
    iget-wide v0, p0, Lcom/android/email/activity/MessageView$MailBoxType;->_mailbox_id:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2700
    iget-object v0, p0, Lcom/android/email/activity/MessageView$MailBoxType;->_name:Ljava/lang/String;

    return-object v0
.end method
